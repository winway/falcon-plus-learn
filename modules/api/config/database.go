package config

import (
	"database/sql"
	"fmt"

	_ "github.com/go-sql-driver/mysql"
	"github.com/jinzhu/gorm"
	"github.com/spf13/viper"
)

type DBPool struct {
	Falcon    *gorm.DB
	Graph     *gorm.DB
	Uic       *gorm.DB
	Dashboard *gorm.DB
	Alarm     *gorm.DB
}

var (
	dbp DBPool
)

func Con() DBPool {
	return dbp
}

func SetLogLevel(loggerlevel bool) {
	dbp.Uic.LogMode(loggerlevel)
	dbp.Graph.LogMode(loggerlevel)
	dbp.Falcon.LogMode(loggerlevel)
	dbp.Dashboard.LogMode(loggerlevel)
	dbp.Alarm.LogMode(loggerlevel)
}

func InitDB(loggerlevel bool) (err error) {
	var p *sql.DB
	portal, err := gorm.Open("mysql", viper.GetString("db.falcon_portal"))
	portal.Dialect().SetDB(p)
	portal.LogMode(loggerlevel)
	if err != nil {
		return fmt.Errorf("connect to falcon_portal: %s", err.Error())
	}
	portal.SingularTable(true)
	dbp.Falcon = portal

	var g *sql.DB
	graphd, err := gorm.Open("mysql", viper.GetString("db.graph"))
	graphd.Dialect().SetDB(g)
	graphd.LogMode(loggerlevel)
	if err != nil {
		return fmt.Errorf("connect to graph: %s", err.Error())
	}
	graphd.SingularTable(true)
	dbp.Graph = graphd

	var u *sql.DB
	uicd, err := gorm.Open("mysql", viper.GetString("db.uic"))
	uicd.Dialect().SetDB(u)
	uicd.LogMode(loggerlevel)
	if err != nil {
		return fmt.Errorf("connect to uic: %s", err.Error())
	}
	uicd.SingularTable(true)
	dbp.Uic = uicd

	var d *sql.DB
	dashd, err := gorm.Open("mysql", viper.GetString("db.dashboard"))
	dashd.Dialect().SetDB(d)
	dashd.LogMode(loggerlevel)
	if err != nil {
		return fmt.Errorf("connect to dashboard: %s", err.Error())
	}
	dashd.SingularTable(true)
	dbp.Dashboard = dashd

	var alm *sql.DB
	almd, err := gorm.Open("mysql", viper.GetString("db.alarms"))
	almd.Dialect().SetDB(alm)
	almd.LogMode(loggerlevel)
	if err != nil {
		return fmt.Errorf("connect to alarms: %s", err.Error())
	}
	almd.SingularTable(true)
	dbp.Alarm = almd

	SetLogLevel(loggerlevel)
	return
}

func CloseDB() (err error) {
	err = dbp.Falcon.Close()
	if err != nil {
		return
	}
	err = dbp.Graph.Close()
	if err != nil {
		return
	}
	err = dbp.Uic.Close()
	if err != nil {
		return
	}
	err = dbp.Dashboard.Close()
	if err != nil {
		return
	}
	err = dbp.Alarm.Close()
	if err != nil {
		return
	}
	return
}
