package main

type contact struct {
    userID       string // 16 bytes (string header)
    sendingLimit int32  // 4 bytes
    age          int32  // 4 bytes
    // total: 24 bytes, no padding needed
}

type perms struct {
    permissionLevel int  // 8 bytes on 64-bit systems
    canSend         bool // 1 byte
    canReceive      bool // 1 byte
    canManage       bool // 1 byte
    _               [5]byte // padding to align to 16 bytes total
}