// Copyright 2012 Gary Burd
//
// Licensed under the Apache License, Version 2.0 (the "License"): you may
// not use this file except in compliance with the License. You may obtain
// a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
// License for the specific language governing permissions and limitations
// under the License.

package redis

// Error represents an error returned in a command reply.
type Error string

func (err Error) Error() string { return string(err) }

// Conn represents a connection to a Redis server.
type Conn interface {
	// Close closes the connection.
	Close() error

	// Err returns a non-nil value when the connection is not usable.
	Err() error

	// Do sends a command to the server and returns the received reply.
	Do(commandName string, args ...interface{}) (reply interface{}, err error)

	// Send writes the command to the client's output buffer.
	Send(commandName string, args ...interface{}) error

	// Flush flushes the output buffer to the Redis server.
	Flush() error

	// Receive receives a single reply from the Redis server
	Receive() (reply interface{}, err error)
}

// Argument is implemented by types which want to control how their value is
// interpreted when used as an argument to a redis command.
type Argument interface {
	// RedisArg returns the interface that represents the value to be used
	// in redis commands.
	RedisArg() interface{}
}

// Scanner is implemented by types which want to control how their value is
// interpreted when read from redis.
type Scanner interface {
	// RedisScan assigns a value from a redis value.
	//
	// An error should be returned if the value cannot be stored without
	// loss of information.
	RedisScan(src interface{}) error
}
