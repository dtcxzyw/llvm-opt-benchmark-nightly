inline.NumInlined: 287
inline.NumDeleted: 62
begin_hunk_0
@.str.517 = private unnamed_addr constant [15 x i8] c"AI_NUMERICHOST\00", align 1
@.str.518 = private unnamed_addr constant [15 x i8] c"AI_NUMERICSERV\00", align 1
@.str.519 = private unnamed_addr constant [7 x i8] c"AI_ALL\00", align 1
@.str.520 = private unnamed_addr constant [14 x i8] c"AI_ADDRCONFIG\00", align 1
@.str.521 = private unnamed_addr constant [12 x i8] c"AI_V4MAPPED\00", align 1
@.str.522 = private unnamed_addr constant [11 x i8] c"NI_MAXHOST\00", align 1
@.str.523 = private unnamed_addr constant [11 x i8] c"NI_MAXSERV\00", align 1
@.str.524 = private unnamed_addr constant [10 x i8] c"NI_NOFQDN\00", align 1
@.str.525 = private unnamed_addr constant [15 x i8] c"NI_NUMERICHOST\00", align 1
@.str.526 = private unnamed_addr constant [12 x i8] c"NI_NAMEREQD\00", align 1
@.str.527 = private unnamed_addr constant [15 x i8] c"NI_NUMERICSERV\00", align 1
@.str.528 = private unnamed_addr constant [9 x i8] c"NI_DGRAM\00", align 1
@.str.529 = private unnamed_addr constant [7 x i8] c"NI_IDN\00", align 1
@.str.530 = private unnamed_addr constant [8 x i8] c"SHUT_RD\00", align 1
@.str.531 = private unnamed_addr constant [8 x i8] c"SHUT_WR\00", align 1
@.str.532 = private unnamed_addr constant [10 x i8] c"SHUT_RDWR\00", align 1
@.str.533 = private unnamed_addr constant [15 x i8] c"_socket.socket\00", align 1
@sock_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.533, i32 56, i32 0, i32 17664, [4 x i8] zeroinitializer, ptr @sock_slots }, align 8
@sock_doc = internal constant [2133 x i8] c"socket(family=AF_INET, type=SOCK_STREAM, proto=0) -> socket object\0Asocket(family=-1, type=-1, proto=-1, fileno=None) -> socket object\0A\0AOpen a socket of the given type.  The family argument specifies the\0Aaddress family; it defaults to AF_INET.  The type argument specifies\0Awhether this is a stream (SOCK_STREAM, this is the default)\0Aor datagram (SOCK_DGRAM) socket.  The protocol argument defaults to 0,\0Aspecifying the default protocol.  Keyword arguments are accepted.\0AThe socket is created as non-inheritable.\0A\0AWhen a fileno is passed in, family, type and proto are auto-detected,\0Aunless they are explicitly set.\0A\0AA socket object represents one endpoint of a network connection.\0A\0AMethods of socket objects (keyword arguments not allowed):\0A\0A_accept() -- accept connection, returning new socket fd and client address\0Abind(addr) -- bind the socket to a local address\0Aclose() -- close the socket\0Aconnect(addr) -- connect the socket to a remote address\0Aconnect_ex(addr) -- connect, return an error code instead of an exception\0Adup() -- return a new socket fd duplicated from fileno()\0Afileno() -- return underlying file descriptor\0Agetpeername() -- return remote address [*]\0Agetsockname() -- return local address\0Agetsockopt(level, optname[, buflen]) -- get socket options\0Agettimeout() -- return timeout or None\0Alisten([n]) -- start listening for incoming connections\0Arecv(buflen[, flags]) -- receive data\0Arecv_into(buffer[, nbytes[, flags]]) -- receive data (into a buffer)\0Arecvfrom(buflen[, flags]) -- receive data and sender's address\0Arecvfrom_into(buffer[, nbytes, [, flags])\0A  -- receive data and sender's address (into a buffer)\0Asendall(data[, flags]) -- send all data\0Asend(data[, flags]) -- send data, may not send all of it\0Asendto(data[, flags], addr) -- send data to a given address\0Asetblocking(bool) -- set or clear the blocking I/O flag\0Agetblocking() -- return True if socket is blocking, False if non-blocking\0Asetsockopt(level, optname, value[, optlen]) -- set socket options\0Asettimeout(None | float) -- set or clear the timeout\0Ashutdown(how) -- shut down traffic in one or both directions\0A\0A [*] not available on all platforms!\00", align 16
@sock_getsetlist = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.119, ptr @sock_gettimeout_getter, ptr null, ptr @.str.668, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@sock_slots = internal global [11 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @sock_dealloc }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @_PyObject_VisitType }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @sock_repr }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @sock_doc }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @sock_methods }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @sock_memberlist }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @sock_getsetlist }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @sock_initobj }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @sock_new }, { i32, [4 x i8], ptr } { i32 80, [4 x i8] zeroinitializer, ptr @sock_finalize }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.536 = private unnamed_addr constant [54 x i8] c"<socket object, fd=%ld, family=%d, type=%d, proto=%d>\00", align 1
@.str.537 = private unnamed_addr constant [8 x i8] c"_accept\00", align 1
@accept_doc = internal constant [229 x i8] c"_accept() -> (integer, address info)\0A\0AWait for an incoming connection.  Return a new socket file descriptor\0Arepresenting the connection, and the address of the client.\0AFor IP sockets, the address info is a pair (hostaddr, port).\00", align 16
@.str.538 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@bind_doc = internal constant [234 x i8] c"bind(address)\0A\0ABind the socket to a local address.  For IP sockets, the address is a\0Apair (host, port); the host must refer to the local host. For raw packet\0Asockets the address is a tuple (ifname, proto [,pkttype [,hatype [,addr]]])\00", align 16
@_socket_socket_close__doc__ = internal constant [83 x i8] c"close($self, /)\0A--\0A\0Aclose()\0A\0AClose the socket.  It cannot be used after this call.\00", align 16
@.str.539 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@connect_doc = internal constant [111 x i8] c"connect(address)\0A\0AConnect the socket to a remote address.  For IP sockets, the address\0Ais a pair (host, port).\00", align 16
@.str.540 = private unnamed_addr constant [11 x i8] c"connect_ex\00", align 1
@connect_ex_doc = internal constant [159 x i8] c"connect_ex(address) -> errno\0A\0AThis is like connect(address), but returns an error code (the errno value)\0Ainstead of raising an exception when an error occurs.\00", align 16
@.str.541 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@detach_doc = internal constant [217 x i8] c"detach()\0A\0AClose the socket object without closing the underlying file descriptor.\0AThe object cannot be used after this call, but the file descriptor\0Acan be reused for other purposes.  The file descriptor is returned.\00", align 16
@.str.542 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@fileno_doc = internal constant [71 x i8] c"fileno() -> integer\0A\0AReturn the integer file descriptor of the socket.\00", align 16
@.str.543 = private unnamed_addr constant [12 x i8] c"getpeername\00", align 1
@getpeername_doc = internal constant [136 x i8] c"getpeername() -> address info\0A\0AReturn the address of the remote endpoint.  For IP sockets, the address\0Ainfo is a pair (hostaddr, port).\00", align 16
@.str.544 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@getsockname_doc = internal constant [264 x i8] c"getsockname() -> address info\0A\0AReturn the address of the local endpoint. The format depends on the\0Aaddress family. For IPv4 sockets, the address info is a pair\0A(hostaddr, port). For IPv6 sockets, the address info is a 4-tuple\0A(hostaddr, port, flowinfo, scope_id).\00", align 16
@.str.545 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@getsockopt_doc = internal constant [230 x i8] c"getsockopt(level, option[, buffersize]) -> value\0A\0AGet a socket option.  See the Unix manual for level and option.\0AIf a nonzero buffersize argument is given, the return value is a\0Astring of that length; otherwise it is an integer.\00", align 16
@.str.546 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@listen_doc = internal constant [306 x i8] c"listen([backlog])\0A\0AEnable a server to accept connections.  If backlog is specified, it must be\0Aat least 0 (if it is lower, it is set to 0); it specifies the number of\0Aunaccepted connections that the system will allow before refusing new\0Aconnections. If not specified, a default reasonable value is chosen.\00", align 16
@.str.547 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@recv_doc = internal constant [322 x i8] c"recv(buffersize[, flags]) -> data\0A\0AReceive up to buffersize bytes from the socket.  For the optional flags\0Aargument, see the Unix manual.  When no data is available, block until\0Aat least one byte is available or until the remote end is closed.  When\0Athe remote end is closed and all data is read, return the empty string.\00", align 16
@.str.548 = private unnamed_addr constant [10 x i8] c"recv_into\00", align 1
@recv_into_doc = internal constant [333 x i8] c"recv_into(buffer, [nbytes[, flags]]) -> nbytes_read\0A\0AA version of recv() that stores its data into a buffer rather than creating\0Aa new string.  Receive up to buffersize bytes from the socket.  If buffersize\0Ais not specified (or 0), receive up to the size available in the given buffer.\0A\0ASee recv() for documentation about the flags.\00", align 16
@.str.549 = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@recvfrom_doc = internal constant [127 x i8] c"recvfrom(buffersize[, flags]) -> (data, address info)\0A\0ALike recv(buffersize, flags) but also return the sender's address info.\00", align 16
@.str.550 = private unnamed_addr constant [14 x i8] c"recvfrom_into\00", align 1
@recvfrom_into_doc = internal constant [153 x i8] c"recvfrom_into(buffer[, nbytes[, flags]]) -> (nbytes, address info)\0A\0ALike recv_into(buffer[, nbytes[, flags]]) but also return the sender's address info.\00", align 16
@.str.551 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@_socket_socket_send__doc__ = internal constant [212 x i8] c"send($self, data, flags=0, /)\0A--\0A\0ASend a data string to the socket.\0A\0AFor the optional flags argument, see the Unix manual.\0AReturn the number of bytes sent; this may be less than len(data) if the network is busy.\00", align 16
@.str.552 = private unnamed_addr constant [8 x i8] c"sendall\00", align 1
@_socket_socket_sendall__doc__ = internal constant [252 x i8] c"sendall($self, data, flags=0, /)\0A--\0A\0ASend a data string to the socket.\0A\0AFor the optional flags argument, see the Unix manual.\0AThis calls send() repeatedly until all data is sent.\0AIf an error occurs, it's impossible to tell how much data has been sent.\00", align 16
@.str.553 = private unnamed_addr constant [7 x i8] c"sendto\00", align 1
@sendto_doc = internal constant [167 x i8] c"sendto(data[, flags], address) -> count\0A\0ALike send(data, flags) but allows specifying the destination address.\0AFor IP sockets, the address is a pair (hostaddr, port).\00", align 16
@.str.554 = private unnamed_addr constant [12 x i8] c"setblocking\00", align 1
@setblocking_doc = internal constant [192 x i8] c"setblocking(flag)\0A\0ASet the socket to blocking (flag is true) or non-blocking (false).\0Asetblocking(True) is equivalent to settimeout(None);\0Asetblocking(False) is equivalent to settimeout(0.0).\00", align 16
@.str.555 = private unnamed_addr constant [12 x i8] c"getblocking\00", align 1
@getblocking_doc = internal constant [99 x i8] c"getblocking()\0A\0AReturns True if socket is in blocking mode, or False if it\0Ais in non-blocking mode.\00", align 16
@.str.556 = private unnamed_addr constant [11 x i8] c"settimeout\00", align 1
@settimeout_doc = internal constant [262 x i8] c"settimeout(timeout)\0A\0ASet a timeout on socket operations.  'timeout' can be a float,\0Agiving in seconds, or None.  Setting a timeout of None disables\0Athe timeout feature and is equivalent to setblocking(1).\0ASetting a timeout of zero is the same as setblocking(0).\00", align 16
@.str.557 = private unnamed_addr constant [11 x i8] c"gettimeout\00", align 1
@gettimeout_doc = internal constant [176 x i8] c"gettimeout() -> timeout\0A\0AReturns the timeout in seconds (float) associated with socket\0Aoperations. A timeout of None indicates that timeouts on socket\0Aoperations are disabled.\00", align 16
@.str.558 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@setsockopt_doc = internal constant [268 x i8] c"setsockopt(level, option, value: int)\0Asetsockopt(level, option, value: buffer)\0Asetsockopt(level, option, None, optlen: int)\0A\0ASet a socket option.  See the Unix manual for level and option.\0AThe value argument can either be an integer, a string buffer, or\0ANone, optlen.\00", align 16
@.str.559 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@shutdown_doc = internal constant [160 x i8] c"shutdown(flag)\0A\0AShut down the reading side of the socket (flag == SHUT_RD), the writing side\0Aof the socket (flag == SHUT_WR), or both ends (flag == SHUT_RDWR).\00", align 16
@.str.560 = private unnamed_addr constant [8 x i8] c"recvmsg\00", align 1
@recvmsg_doc = internal constant [1477 x i8] c"recvmsg(bufsize[, ancbufsize[, flags]]) -> (data, ancdata, msg_flags, address)\0A\0AReceive normal data (up to bufsize bytes) and ancillary data from the\0Asocket.  The ancbufsize argument sets the size in bytes of the\0Ainternal buffer used to receive the ancillary data; it defaults to 0,\0Ameaning that no ancillary data will be received.  Appropriate buffer\0Asizes for ancillary data can be calculated using CMSG_SPACE() or\0ACMSG_LEN(), and items which do not fit into the buffer might be\0Atruncated or discarded.  The flags argument defaults to 0 and has the\0Asame meaning as for recv().\0A\0AThe return value is a 4-tuple: (data, ancdata, msg_flags, address).\0AThe data item is a bytes object holding the non-ancillary data\0Areceived.  The ancdata item is a list of zero or more tuples\0A(cmsg_level, cmsg_type, cmsg_data) representing the ancillary data\0A(control messages) received: cmsg_level and cmsg_type are integers\0Aspecifying the protocol level and protocol-specific type respectively,\0Aand cmsg_data is a bytes object holding the associated data.  The\0Amsg_flags item is the bitwise OR of various flags indicating\0Aconditions on the received message; see your system documentation for\0Adetails.  If the receiving socket is unconnected, address is the\0Aaddress of the sending socket, if available; otherwise, its value is\0Aunspecified.\0A\0AIf recvmsg() raises an exception after the system call returns, it\0Awill first attempt to close any file descriptors received via the\0ASCM_RIGHTS mechanism.\00", align 16
@.str.561 = private unnamed_addr constant [13 x i8] c"recvmsg_into\00", align 1
@recvmsg_into_doc = internal constant [1787 x i8] c"recvmsg_into(buffers[, ancbufsize[, flags]]) -> (nbytes, ancdata, msg_flags, address)\0A\0AReceive normal data and ancillary data from the socket, scattering the\0Anon-ancillary data into a series of buffers.  The buffers argument\0Amust be an iterable of objects that export writable buffers\0A(e.g. bytearray objects); these will be filled with successive chunks\0Aof the non-ancillary data until it has all been written or there are\0Ano more buffers.  The ancbufsize argument sets the size in bytes of\0Athe internal buffer used to receive the ancillary data; it defaults to\0A0, meaning that no ancillary data will be received.  Appropriate\0Abuffer sizes for ancillary data can be calculated using CMSG_SPACE()\0Aor CMSG_LEN(), and items which do not fit into the buffer might be\0Atruncated or discarded.  The flags argument defaults to 0 and has the\0Asame meaning as for recv().\0A\0AThe return value is a 4-tuple: (nbytes, ancdata, msg_flags, address).\0AThe nbytes item is the total number of bytes of non-ancillary data\0Awritten into the buffers.  The ancdata item is a list of zero or more\0Atuples (cmsg_level, cmsg_type, cmsg_data) representing the ancillary\0Adata (control messages) received: cmsg_level and cmsg_type are\0Aintegers specifying the protocol level and protocol-specific type\0Arespectively, and cmsg_data is a bytes object holding the associated\0Adata.  The msg_flags item is the bitwise OR of various flags\0Aindicating conditions on the received message; see your system\0Adocumentation for details.  If the receiving socket is unconnected,\0Aaddress is the address of the sending socket, if available; otherwise,\0Aits value is unspecified.\0A\0AIf recvmsg_into() raises an exception after the system call returns,\0Ait will first attempt to close any file descriptors received via the\0ASCM_RIGHTS mechanism.\00", align 16
@.str.562 = private unnamed_addr constant [8 x i8] c"sendmsg\00", align 1
@_socket_socket_sendmsg__doc__ = internal constant [919 x i8] c"sendmsg($self, buffers, ancdata=<unrepresentable>, flags=0,\0A        address=<unrepresentable>, /)\0A--\0A\0ASend normal and ancillary data to the socket.\0A\0AIt gathering the non-ancillary data from a series of buffers\0Aand concatenating it into a single message.\0AThe buffers argument specifies the non-ancillary\0Adata as an iterable of bytes-like objects (e.g. bytes objects).\0AThe ancdata argument specifies the ancillary data (control messages)\0Aas an iterable of zero or more tuples (cmsg_level, cmsg_type,\0Acmsg_data), where cmsg_level and cmsg_type are integers specifying the\0Aprotocol level and protocol-specific type respectively, and cmsg_data\0Ais a bytes-like object holding the associated data.  The flags\0Aargument defaults to 0 and has the same meaning as for send().  If\0Aaddress is supplied and not None, it sets a destination address for\0Athe message.  The return value is the number of bytes of non-ancillary\0Adata sent.\00", align 16
@.str.563 = private unnamed_addr constant [14 x i8] c"sendmsg_afalg\00", align 1
@sendmsg_afalg_doc = internal constant [150 x i8] c"sendmsg_afalg([msg], *, op[, iv[, assoclen[, flags=MSG_MORE]]])\0A\0ASet operation mode, IV and length of associated data for an AF_ALG\0Aoperation socket.\00", align 16
@sock_methods = internal global [29 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.537, ptr @sock_accept, i32 4, [4 x i8] zeroinitializer, ptr @accept_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.538, ptr @sock_bind, i32 8, [4 x i8] zeroinitializer, ptr @bind_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.9, ptr @_socket_socket_close, i32 4, [4 x i8] zeroinitializer, ptr @_socket_socket_close__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.539, ptr @sock_connect, i32 8, [4 x i8] zeroinitializer, ptr @connect_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.540, ptr @sock_connect_ex, i32 8, [4 x i8] zeroinitializer, ptr @connect_ex_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.541, ptr @sock_detach, i32 4, [4 x i8] zeroinitializer, ptr @detach_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.542, ptr @sock_fileno, i32 4, [4 x i8] zeroinitializer, ptr @fileno_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.543, ptr @sock_getpeername, i32 4, [4 x i8] zeroinitializer, ptr @getpeername_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.544, ptr @sock_getsockname, i32 4, [4 x i8] zeroinitializer, ptr @getsockname_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.545, ptr @sock_getsockopt, i32 1, [4 x i8] zeroinitializer, ptr @getsockopt_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.546, ptr @sock_listen, i32 1, [4 x i8] zeroinitializer, ptr @listen_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.547, ptr @sock_recv, i32 1, [4 x i8] zeroinitializer, ptr @recv_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.548, ptr @sock_recv_into, i32 3, [4 x i8] zeroinitializer, ptr @recv_into_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.549, ptr @sock_recvfrom, i32 1, [4 x i8] zeroinitializer, ptr @recvfrom_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.550, ptr @sock_recvfrom_into, i32 3, [4 x i8] zeroinitializer, ptr @recvfrom_into_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.551, ptr @_socket_socket_send, i32 128, [4 x i8] zeroinitializer, ptr @_socket_socket_send__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.552, ptr @_socket_socket_sendall, i32 128, [4 x i8] zeroinitializer, ptr @_socket_socket_sendall__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.553, ptr @sock_sendto, i32 1, [4 x i8] zeroinitializer, ptr @sendto_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.554, ptr @sock_setblocking, i32 8, [4 x i8] zeroinitializer, ptr @setblocking_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.555, ptr @sock_getblocking, i32 4, [4 x i8] zeroinitializer, ptr @getblocking_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.556, ptr @sock_settimeout, i32 8, [4 x i8] zeroinitializer, ptr @settimeout_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.557, ptr @sock_gettimeout_method, i32 4, [4 x i8] zeroinitializer, ptr @gettimeout_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.558, ptr @sock_setsockopt, i32 1, [4 x i8] zeroinitializer, ptr @setsockopt_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.559, ptr @sock_shutdown, i32 8, [4 x i8] zeroinitializer, ptr @shutdown_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.560, ptr @sock_recvmsg, i32 1, [4 x i8] zeroinitializer, ptr @recvmsg_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.561, ptr @sock_recvmsg_into, i32 1, [4 x i8] zeroinitializer, ptr @recvmsg_into_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.562, ptr @_socket_socket_sendmsg, i32 128, [4 x i8] zeroinitializer, ptr @_socket_socket_sendmsg__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.563, ptr @sock_sendmsg_afalg, i32 3, [4 x i8] zeroinitializer, ptr @sendmsg_afalg_doc }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@accept4_works = internal unnamed_addr global i32 -1, align 4
@.str.565 = private unnamed_addr constant [27 x i8] c"getsockaddrlen: bad family\00", align 1
@.str.566 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@.str.567 = private unnamed_addr constant [12 x i8] c"socket.bind\00", align 1
@.str.568 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.569 = private unnamed_addr constant [3 x i8] c"y*\00", align 1
@.str.570 = private unnamed_addr constant [22 x i8] c"AF_UNIX path too long\00", align 1
@.str.571 = private unnamed_addr constant [51 x i8] c"%s(): AF_NETLINK address must be tuple, not %.500s\00", align 1
@.str.572 = private unnamed_addr constant [51 x i8] c"II;AF_NETLINK address must be a pair (pid, groups)\00", align 1
@.str.573 = private unnamed_addr constant [61 x i8] c"getsockaddrarg: AF_QIPCRTR address must be tuple, not %.500s\00", align 1
@.str.574 = private unnamed_addr constant [18 x i8] c"II:getsockaddrarg\00", align 1
@.str.575 = private unnamed_addr constant [59 x i8] c"getsockaddrarg: AF_VSOCK address must be tuple, not %.500s\00", align 1
@.str.576 = private unnamed_addr constant [48 x i8] c"%s(): AF_INET address must be tuple, not %.500s\00", align 1
@.str.577 = private unnamed_addr constant [48 x i8] c"O&i;AF_INET address must be a pair (host, port)\00", align 1
@.str.578 = private unnamed_addr constant [28 x i8] c"%s(): port must be 0-65535.\00", align 1
@.str.579 = private unnamed_addr constant [49 x i8] c"%s(): AF_INET6 address must be tuple, not %.500s\00", align 1
@.str.580 = private unnamed_addr constant [76 x i8] c"O&i|II;AF_INET6 address must be a tuple (host, port[, flowinfo[, scopeid]])\00", align 1
@.str.581 = private unnamed_addr constant [34 x i8] c"%s(): flowinfo must be 0-1048575.\00", align 1
@.str.582 = private unnamed_addr constant [50 x i8] c"%s(): AF_PACKET address must be tuple, not %.500s\00", align 1
@.str.583 = private unnamed_addr constant [66 x i8] c"si|iiy*;AF_PACKET address must be a tuple of two to five elements\00", align 1
@.str.584 = private unnamed_addr constant [36 x i8] c"%s(): address argument out of range\00", align 1
@.str.585 = private unnamed_addr constant [41 x i8] c"Hardware address must be 8 bytes or less\00", align 1
@.str.586 = private unnamed_addr constant [29 x i8] c"%s(): proto must be 0-65535.\00", align 1
@.str.587 = private unnamed_addr constant [48 x i8] c"%s(): AF_TIPC address must be tuple, not %.500s\00", align 1
@.str.588 = private unnamed_addr constant [72 x i8] c"IIII|I;AF_TIPC address must be a tuple (addr_type, v1, v2, v3[, scope])\00", align 1
@.str.589 = private unnamed_addr constant [47 x i8] c"%s(): AF_CAN address must be tuple, not %.500s\00", align 1
@.str.590 = private unnamed_addr constant [48 x i8] c"O&;AF_CAN address must be a tuple (interface, )\00", align 1
@.str.591 = private unnamed_addr constant [31 x i8] c"AF_CAN interface name too long\00", align 1
@.str.592 = private unnamed_addr constant [31 x i8] c"%s(): unsupported CAN protocol\00", align 1
@.str.593 = private unnamed_addr constant [47 x i8] c"%s(): AF_ALG address must be tuple, not %.500s\00", align 1
@.str.594 = private unnamed_addr constant [66 x i8] c"ss|HH;AF_ALG address must be a tuple (type, name[, feat[, mask]])\00", align 1
@.str.595 = private unnamed_addr constant [22 x i8] c"AF_ALG type too long.\00", align 1
@.str.596 = private unnamed_addr constant [22 x i8] c"AF_ALG name too long.\00", align 1
@.str.597 = private unnamed_addr constant [17 x i8] c"%s(): bad family\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@.str.598 = private unnamed_addr constant [28 x i8] c"encoding of hostname failed\00", align 1
@.str.599 = private unnamed_addr constant [41 x i8] c"str, bytes or bytearray expected, not %s\00", align 1
@.str.600 = private unnamed_addr constant [42 x i8] c"host name must not contain null character\00", align 1
@.str.601 = private unnamed_addr constant [15 x i8] c"socket.connect\00", align 1
@.str.602 = private unnamed_addr constant [16 x i8] c"ii|i:getsockopt\00", align 1
@.str.603 = private unnamed_addr constant [37 x i8] c"getsockopt string buffer not allowed\00", align 1
@.str.604 = private unnamed_addr constant [31 x i8] c"getsockopt buflen out of range\00", align 1
@.str.605 = private unnamed_addr constant [10 x i8] c"|i:listen\00", align 1
@.str.606 = private unnamed_addr constant [9 x i8] c"n|i:recv\00", align 1
@.str.607 = private unnamed_addr constant [28 x i8] c"negative buffersize in recv\00", align 1
@sock_recv_into.kwlist = internal global [4 x ptr] [ptr @.str.608, ptr @.str.609, ptr @.str.78, ptr null], align 16
@.str.608 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.609 = private unnamed_addr constant [7 x i8] c"nbytes\00", align 1
@.str.610 = private unnamed_addr constant [16 x i8] c"w*|ni:recv_into\00", align 1
@.str.611 = private unnamed_addr constant [33 x i8] c"negative buffersize in recv_into\00", align 1
@.str.612 = private unnamed_addr constant [37 x i8] c"buffer too small for requested bytes\00", align 1
@.str.613 = private unnamed_addr constant [13 x i8] c"n|i:recvfrom\00", align 1
@.str.614 = private unnamed_addr constant [32 x i8] c"negative buffersize in recvfrom\00", align 1
@sock_recvfrom_into.kwlist = internal global [4 x ptr] [ptr @.str.608, ptr @.str.609, ptr @.str.78, ptr null], align 16
@.str.615 = private unnamed_addr constant [20 x i8] c"w*|ni:recvfrom_into\00", align 1
@.str.616 = private unnamed_addr constant [37 x i8] c"negative buffersize in recvfrom_into\00", align 1
@.str.617 = private unnamed_addr constant [48 x i8] c"nbytes is greater than the length of the buffer\00", align 1
@.str.618 = private unnamed_addr constant [3 x i8] c"nN\00", align 1
@.str.619 = private unnamed_addr constant [11 x i8] c"y*O:sendto\00", align 1
@.str.620 = private unnamed_addr constant [12 x i8] c"y*iO:sendto\00", align 1
@.str.621 = private unnamed_addr constant [44 x i8] c"sendto() takes 2 or 3 arguments (%zd given)\00", align 1
@.str.622 = private unnamed_addr constant [14 x i8] c"socket.sendto\00", align 1
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.623 = private unnamed_addr constant [17 x i8] c"iiO|I:setsockopt\00", align 1
@.str.624 = private unnamed_addr constant [66 x i8] c"setsockopt() requires 4 arguments when the third argument is None\00", align 1
@.str.625 = private unnamed_addr constant [77 x i8] c"setsockopt() only takes 4 arguments when the third argument is None (got %T)\00", align 1
@.str.626 = private unnamed_addr constant [61 x i8] c"setsockopt() argument 3 for AF_VSOCK must be an int (got %T)\00", align 1
@.str.627 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.628 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.629 = private unnamed_addr constant [64 x i8] c"socket option should be int, bytes-like object or None (got %T)\00", align 1
@.str.630 = private unnamed_addr constant [13 x i8] c"n|ni:recvmsg\00", align 1
@.str.631 = private unnamed_addr constant [34 x i8] c"negative buffer size in recvmsg()\00", align 1
@.str.632 = private unnamed_addr constant [37 x i8] c"invalid ancillary data buffer length\00", align 1
@PyExc_RuntimeWarning = external local_unnamed_addr global ptr, align 8
@.str.633 = private unnamed_addr constant [58 x i8] c"received malformed or improperly-truncated ancillary data\00", align 1
@.str.634 = private unnamed_addr constant [25 x i8] c"control message too long\00", align 1
@.str.635 = private unnamed_addr constant [4 x i8] c"iiN\00", align 1
@.str.636 = private unnamed_addr constant [5 x i8] c"NOiN\00", align 1
@.str.637 = private unnamed_addr constant [18 x i8] c"O|ni:recvmsg_into\00", align 1
@.str.638 = private unnamed_addr constant [46 x i8] c"recvmsg_into() argument 1 must be an iterable\00", align 1
@.str.639 = private unnamed_addr constant [38 x i8] c"recvmsg_into() argument 1 is too long\00", align 1
@.str.640 = private unnamed_addr constant [86 x i8] c"w*;recvmsg_into() argument 1 must be an iterable of single-segment read-write buffers\00", align 1
@.str.641 = private unnamed_addr constant [15 x i8] c"socket.sendmsg\00", align 1
@.str.642 = private unnamed_addr constant [41 x i8] c"sendmsg() argument 2 must be an iterable\00", align 1
@.str.643 = private unnamed_addr constant [40 x i8] c"(iiy*):[sendmsg() ancillary data items]\00", align 1
@.str.644 = private unnamed_addr constant [30 x i8] c"ancillary data item too large\00", align 1
@.str.645 = private unnamed_addr constant [24 x i8] c"too much ancillary data\00", align 1
@PyExc_RuntimeError = external local_unnamed_addr global ptr, align 8
@.str.646 = private unnamed_addr constant [33 x i8] c"unexpected NULL result from %s()\00", align 1
@.str.647 = private unnamed_addr constant [14 x i8] c"CMSG_FIRSTHDR\00", align 1
@.str.648 = private unnamed_addr constant [12 x i8] c"CMSG_NXTHDR\00", align 1
@.str.649 = private unnamed_addr constant [38 x i8] c"item size out of range for CMSG_LEN()\00", align 1
@.str.650 = private unnamed_addr constant [48 x i8] c"ancillary data does not fit in calculated space\00", align 1
@.str.651 = private unnamed_addr constant [41 x i8] c"sendmsg() argument 1 must be an iterable\00", align 1
@.str.652 = private unnamed_addr constant [33 x i8] c"sendmsg() argument 1 is too long\00", align 1
@sock_sendmsg_afalg.keywords = internal global [6 x ptr] [ptr @.str.653, ptr @.str.654, ptr @.str.655, ptr @.str.656, ptr @.str.78, ptr null], align 16
@.str.653 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.654 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.655 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@.str.656 = private unnamed_addr constant [9 x i8] c"assoclen\00", align 1
@.str.657 = private unnamed_addr constant [36 x i8] c"algset is only supported for AF_ALG\00", align 1
@.str.658 = private unnamed_addr constant [25 x i8] c"|O$O!y*O!i:sendmsg_afalg\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@.str.659 = private unnamed_addr constant [33 x i8] c"Invalid or missing argument 'op'\00", align 1
@.str.660 = private unnamed_addr constant [26 x i8] c"assoclen must be positive\00", align 1
@.str.661 = private unnamed_addr constant [42 x i8] c"unexpected NULL result from CMSG_FIRSTHDR\00", align 1
@.str.662 = private unnamed_addr constant [44 x i8] c"unexpected NULL result from CMSG_NXTHDR(iv)\00", align 1
@.str.663 = private unnamed_addr constant [47 x i8] c"unexpected NULL result from CMSG_NXTHDR(assoc)\00", align 1
@.str.664 = private unnamed_addr constant [18 x i8] c"the socket family\00", align 1
@.str.665 = private unnamed_addr constant [16 x i8] c"the socket type\00", align 1
@.str.666 = private unnamed_addr constant [20 x i8] c"the socket protocol\00", align 1
@sock_memberlist = internal global [4 x { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.75, i32 1, [4 x i8] zeroinitializer, i64 20, i32 1, [4 x i8] zeroinitializer, ptr @.str.664 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.76, i32 1, [4 x i8] zeroinitializer, i64 24, i32 1, [4 x i8] zeroinitializer, ptr @.str.665 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.77, i32 1, [4 x i8] zeroinitializer, i64 28, i32 1, [4 x i8] zeroinitializer, ptr @.str.666 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.668 = private unnamed_addr constant [19 x i8] c"the socket timeout\00", align 1
@sock_initobj._keywords = internal constant [5 x ptr] [ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.542, ptr null], align 16
@sock_initobj._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @sock_initobj._keywords, ptr @.str.669, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.669 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.670 = private unnamed_addr constant [15 x i8] c"socket.__new__\00", align 1
@.str.671 = private unnamed_addr constant [5 x i8] c"Oiii\00", align 1
@.str.672 = private unnamed_addr constant [25 x i8] c"negative file descriptor\00", align 1
@.str.673 = private unnamed_addr constant [12 x i8] c"unclosed %R\00", align 1
@PyExc_Warning = external local_unnamed_addr global ptr, align 8
@.str.674 = private unnamed_addr constant [45 x i8] c"Exception ignored while finalizing socket %R\00", align 1
@switch.table.sock_getsockname.33 = private unnamed_addr constant [42 x i64] [i64 110, i64 16, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 28, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 12, i64 20, i64 poison, i64 poison, i64 poison, i64 16, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 24, i64 16, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 88, i64 poison, i64 16, i64 poison, i64 12], align 8
@switch.table.sock_recvmsg_guts = private unnamed_addr constant [42 x i32] [i32 110, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 20, i32 poison, i32 poison, i32 poison, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 88, i32 poison, i32 16, i32 poison, i32 12], align 4

; Function Attrs: nounwind uwtable
define hidden ptr @unicode_fsdecode(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef %0) #11
  ret ptr %i.a
}

declare ptr @PyUnicode_DecodeFSDefault(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @PyInit__socket() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @socketmodule) #11
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @socket_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !10  ; 3 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !18  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #11 ; 2 uses
  %.not31 = icmp eq i32 %i.c, 0
  br i1 %.not31, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not32 = icmp eq ptr %i.e, null
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #11 ; 2 uses
  %.not33 = icmp eq i32 %i.f, 0
  br i1 %.not33, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %.val, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #11 ; 2 uses
  %.not35 = icmp eq i32 %i.i, 0
  br i1 %.not35, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.5 = phi i32 [ 0, %bb.g ], [ %i.i, %bb.f ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @socket_clear(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !10  ; 4 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !22  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %.val, align 8, !tbaa !22
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i22 = icmp sgt i32 %i.c, -1
  br i1 %.not.i22, label %bb.c, label %Py_DECREF.exit23

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !23
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit23

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #11
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 8       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 4 uses
  %.not18 = icmp eq ptr %i.g, null
  br i1 %.not18, label %Py_DECREF.exit21, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit23
  store ptr null, ptr %i.f, align 8, !tbaa !24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.not.i20 = icmp sgt i32 %i.h, -1
  br i1 %.not.i20, label %bb.f, label %Py_DECREF.exit21

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit21

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #11
  br label %Py_DECREF.exit21

Py_DECREF.exit21:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit23
  %i.k = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 4 uses
  %.not19 = icmp eq ptr %i.l, null
  br i1 %.not19, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit21
  store ptr null, ptr %i.k, align 8, !tbaa !24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !23
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @socket_free(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !10 ; 4 uses
  %i.b = load ptr, ptr %.val.i, align 8, !tbaa !22 ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %Py_DECREF.exit23.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %.val.i, align 8, !tbaa !22
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i22.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i22.i, label %bb.c, label %Py_DECREF.exit23.i

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !23
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit23.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #11
  br label %Py_DECREF.exit23.i

Py_DECREF.exit23.i:                               ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %.val.i, i64 8     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 4 uses
  %.not18.i = icmp eq ptr %i.g, null
  br i1 %.not18.i, label %Py_DECREF.exit21.i, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit23.i
  store ptr null, ptr %i.f, align 8, !tbaa !24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.not.i20.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i20.i, label %bb.f, label %Py_DECREF.exit21.i

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit21.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #11
  br label %Py_DECREF.exit21.i

Py_DECREF.exit21.i:                               ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit23.i
  %i.k = getelementptr i8, ptr %.val.i, i64 16    ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 4 uses
  %.not19.i = icmp eq ptr %i.l, null
  br i1 %.not19.i, label %socket_clear.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit21.i
  store ptr null, ptr %i.k, align 8, !tbaa !24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i, label %bb.i, label %socket_clear.exit

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !23
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %socket_clear.exit
end_hunk_0
begin_hunk_1_@sock_initobj:bb.a
  call void @PyEval_RestoreThread(ptr noundef %i.bx) #11, !inline_history !130
  br label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.ce = tail call ptr @__errno_location() #12, !inline_history !130
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !6
  %i.cg = icmp eq i32 %i.cf, 22
  br i1 %i.cg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store atomic i32 0, ptr @sock_cloexec_works monotonic, align 4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.am, %bb.ai
  %i.ch = call i32 @socket(i32 noundef %spec.store.select.i, i32 noundef %spec.store.select5.i, i32 noundef %spec.store.select4.i) #11, !inline_history !130
  br label %bb.an

bb.an:                                            ; preds = %.sink.split.i, %bb.al, %bb.aj
  %.064.i = phi i32 [ %i.ca, %bb.al ], [ %i.ca, %bb.aj ], [ %i.ch, %.sink.split.i ] ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.bx) #11, !inline_history !130
  %i.ci = icmp eq i32 %.064.i, -1
  br i1 %i.ci, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cj = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.ck = call ptr @PyErr_SetFromErrno(ptr noundef %i.cj) #11, !inline_history !130 ; 0 uses
  br label %sock_initobj_impl.exit

bb.ap:                                            ; preds = %bb.an, %.thread80.i
  %.06482.i = phi i32 [ %i.ca, %.thread80.i ], [ %.064.i, %bb.an ] ; 3 uses
  %i.cl = call i32 @_Py_set_inheritable(i32 noundef %.06482.i, i32 noundef 0, ptr noundef nonnull @sock_cloexec_works) #11, !inline_history !130
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cn = call i32 @close(i32 noundef %.06482.i) #11, !inline_history !130 ; 0 uses
  br label %sock_initobj_impl.exit

bb.ar:                                            ; preds = %bb.ap, %bb.ah
  %.165.i = phi i32 [ %i.au, %bb.ah ], [ %.06482.i, %bb.ap ] ; 2 uses
  %.363.i = phi i32 [ %.262.i, %bb.ah ], [ %spec.store.select4.i, %bb.ap ]
  %.359.i = phi i32 [ %.157.i, %bb.ah ], [ %spec.store.select5.i, %bb.ap ] ; 2 uses
  %.252.i = phi i32 [ %.050.i, %bb.ah ], [ %spec.store.select.i, %bb.ap ]
  %i.co = getelementptr i8, ptr %0, i64 16        ; 2 uses
  store atomic i32 %.165.i, ptr %i.co monotonic, align 8
  %i.cp = getelementptr i8, ptr %0, i64 20
  store i32 %.252.i, ptr %i.cp, align 4, !tbaa !87
  %i.cq = getelementptr i8, ptr %0, i64 24
  %i.cr = and i32 %.359.i, -526337
  store i32 %i.cr, ptr %i.cq, align 8, !tbaa !90
  %i.cs = getelementptr i8, ptr %0, i64 28
  store i32 %.363.i, ptr %i.cs, align 4, !tbaa !91
  %i.ct = getelementptr i8, ptr %0, i64 32
  store ptr @set_error, ptr %i.ct, align 8, !tbaa !92
  %i.cu = and i32 %.359.i, 2048
  %.not.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cv = getelementptr i8, ptr %0, i64 40
  store i64 0, ptr %i.cv, align 8, !tbaa !93
  br label %init_sockobject.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.cw = getelementptr i8, ptr %.val.i.i, i64 24
  %i.cx = load atomic i64, ptr %i.cw monotonic, align 8 ; 2 uses
  %i.cy = getelementptr i8, ptr %0, i64 40
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !93
  %i.cz = icmp sgt i64 %i.cx, -1
  br i1 %i.cz, label %bb.au, label %init_sockobject.exit.i

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.da = call ptr @PyEval_SaveThread() #11, !inline_history !130
  store i32 1, ptr %i.a, align 4, !tbaa !6
  %i.db = load atomic i32, ptr %i.co monotonic, align 8
  %i.dc = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.db, i64 noundef 21537, ptr noundef nonnull %i.a) #11, !inline_history !130
  %.not4.i.i.i = icmp eq i32 %i.dc, -1
  call void @PyEval_RestoreThread(ptr noundef %i.da) #11, !inline_history !130
  br i1 %.not4.i.i.i, label %bb.av, label %internal_setblocking.exit.i.i

internal_setblocking.exit.i.i:                    ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %init_sockobject.exit.i

init_sockobject.exit.i:                           ; preds = %internal_setblocking.exit.i.i, %bb.at, %bb.as
  %i.dd = getelementptr i8, ptr %0, i64 48
  store ptr %.val.i.i, ptr %i.dd, align 8, !tbaa !94
  br label %sock_initobj_impl.exit

bb.av:                                            ; preds = %bb.au
  %i.de = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.df = call ptr @PyErr_SetFromErrno(ptr noundef %i.de) #11, !inline_history !130 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dg = call i32 @close(i32 noundef %.165.i) #11, !inline_history !130 ; 0 uses
  br label %sock_initobj_impl.exit

.critedge.i:                                      ; preds = %bb.ag, %bb.ad, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %sock_initobj_impl.exit

sock_initobj_impl.exit:                           ; preds = %.critedge.i, %bb.av, %init_sockobject.exit.i, %bb.aq, %bb.ao, %.thread.i, %bb.t, %bb.q, %bb.n, %bb.j, %bb.f, %bb.c
  %.046 = phi i32 [ -1, %bb.f ], [ -1, %bb.j ], [ -1, %bb.n ], [ -1, %bb.c ], [ -1, %bb.aq ], [ -1, %bb.q ], [ -1, %.thread.i ], [ -1, %bb.av ], [ -1, %bb.t ], [ -1, %.critedge.i ], [ -1, %bb.ao ], [ 0, %init_sockobject.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  ret i32 %.046
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_new(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = tail call ptr %i.b(ptr noundef %0, i64 noundef 0) #11 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 16
  store i32 -1, ptr %i.d, align 8, !tbaa !131
  %i.e = tail call i64 @_PyTime_FromSeconds(i32 noundef -1) #11
  %i.f = getelementptr i8, ptr %i.c, i64 40
  store i64 %i.e, ptr %i.f, align 8, !tbaa !93
  %i.g = getelementptr i8, ptr %i.c, i64 32
  store ptr @set_error, ptr %i.g, align 8, !tbaa !92
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal void @sock_finalize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyErr_GetRaisedException() #11
  %i.b = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, i64, ptr, ...) @PyErr_ResourceWarning(ptr noundef nonnull %0, i64 noundef 1, ptr noundef nonnull @.str.673, ptr noundef nonnull %0) #11
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_Warning, align 8, !tbaa !24
  %i.f = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.e) #11
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.674, ptr noundef nonnull %0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.g = load atomic i32, ptr %i.b monotonic, align 4
  store atomic i32 -1, ptr %i.b monotonic, align 4
  %i.h = tail call ptr @PyEval_SaveThread() #11
  %i.i = tail call i32 @close(i32 noundef %i.g) #11 ; 0 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.h) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call void @PyErr_SetRaisedException(ptr noundef %i.a) #11
  ret void
}

declare i32 @PyObject_CallFinalizerFromDealloc(ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @sock_accept(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %union.sock_addr, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.sock_accept, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.b = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.b, align 4, !tbaa !87
  %switch.tableidx = add i32 %.val, -1            ; 4 uses
  %i.c = icmp ult i32 %switch.tableidx, 42
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 2887024476675, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %getsockaddrlen.exit

getsockaddrlen.exit:                              ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.565) #11
  br label %Py_XDECREF.exit25

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sock_recvmsg_guts, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep42 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sock_getsockname.33, i64 %i.f
  %switch.load43 = load i64, ptr %switch.gep42, align 8
  store i32 %switch.load, ptr %i.a, align 4, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, i8 0, i64 %switch.load43, i1 false)
  store ptr %i.a, ptr %3, align 8, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !136
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 -1, ptr %i.h, align 8, !tbaa !137
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !93
  %i.k = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @sock_accept_impl, ptr noundef nonnull %3, i32 noundef 0, ptr noundef null, i64 noundef %i.j)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %Py_XDECREF.exit25, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  %i.m = load i32, ptr %i.h, align 8, !tbaa !137  ; 4 uses
  %i.n = load atomic i32, ptr @accept4_works monotonic, align 4
  %.not22 = icmp eq i32 %i.n, 0
  br i1 %.not22, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = call i32 @_Py_set_inheritable(i32 noundef %i.m, i32 noundef 0, ptr noundef null) #11
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @close(i32 noundef %i.m) #11    ; 0 uses
  br label %Py_XDECREF.exit25

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.r = sext i32 %i.m to i64
  %i.s = call ptr @PyLong_FromLong(i64 noundef %i.r) #11 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = call i32 @close(i32 noundef %i.m) #11    ; 0 uses
  br label %Py_XDECREF.exit25

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %0, i64 16
  %i.w = load atomic i32, ptr %i.v monotonic, align 8
  %i.x = load i32, ptr %i.a, align 4, !tbaa !6
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr i8, ptr %0, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !91
  %i.ab = call fastcc ptr @makesockaddr(i32 noundef %i.w, ptr noundef nonnull %2, i64 noundef %i.y, i32 noundef %i.aa) ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null                 ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.s, ptr noundef nonnull %i.ab) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi ptr [ %i.ad, %bb.h ], [ null, %bb.g ] ; 4 uses
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !23  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i, label %bb.j, label %Py_XDECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.s, align 8, !tbaa !23
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.s) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.i, %bb.j, %bb.k
  br i1 %i.ac, label %Py_XDECREF.exit25, label %bb.l

bb.l:                                             ; preds = %Py_XDECREF.exit
  %i.ah = load i32, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %.not.i.i24 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i.i24, label %bb.m, label %Py_XDECREF.exit25

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ab, align 8, !tbaa !23
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.n, label %Py_XDECREF.exit25

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #11
  br label %Py_XDECREF.exit25

Py_XDECREF.exit25:                                ; preds = %bb.f, %bb.d, %bb.n, %bb.m, %bb.l, %Py_XDECREF.exit, %getsockaddrlen.exit, %switch.lookup
  %.018 = phi ptr [ null, %getsockaddrlen.exit ], [ null, %switch.lookup ], [ %.0, %bb.n ], [ %.0, %Py_XDECREF.exit ], [ %.0, %bb.l ], [ %.0, %bb.m ], [ null, %bb.d ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.018
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_bind(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %union.sock_addr, align 8           ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call fastcc i32 @getsockaddrarg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.a, ptr noundef nonnull @.str.538)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.567, ptr noundef nonnull @.str.568, ptr noundef %0, ptr noundef %1) #11
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @PyEval_SaveThread() #11
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = load i32, ptr %i.a, align 4, !tbaa !6
  %i.i = call i32 @bind(i32 noundef %i.g, ptr nonnull %2, i32 noundef %i.h) #11
  call void @PyEval_RestoreThread(ptr noundef %i.e) #11
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = call ptr %i.l() #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ %i.m, %bb.d ], [ null, %bb.b ], [ @_Py_NoneStruct, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_socket_socket_close(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %_socket_socket_close_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store atomic i32 -1, ptr %i.a monotonic, align 4
  %i.c = tail call ptr @PyEval_SaveThread() #11
  %i.d = tail call i32 @close(i32 noundef %i.b) #11
  tail call void @PyEval_RestoreThread(ptr noundef %i.c) #11
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_socket_socket_close_impl.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !6
  %.not8.i = icmp eq i32 %i.g, 104
  br i1 %.not8.i, label %_socket_socket_close_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = tail call ptr %i.i() #11, !inline_history !138
  br label %_socket_socket_close_impl.exit

_socket_socket_close_impl.exit:                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.d ], [ @_Py_NoneStruct, %bb.b ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_connect(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %union.sock_addr, align 8           ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call fastcc i32 @getsockaddrarg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.a, ptr noundef nonnull @.str.539)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.601, ptr noundef nonnull @.str.568, ptr noundef %0, ptr noundef %1) #11
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 4, !tbaa !6
  %i.f = call fastcc i32 @internal_connect(ptr noundef %0, ptr noundef %2, i32 noundef %i.e, i32 noundef 1)
  %i.g = icmp slt i32 %i.f, 0
  %._Py_NoneStruct = select i1 %i.g, ptr null, ptr @_Py_NoneStruct
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %._Py_NoneStruct, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_connect_ex(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %union.sock_addr, align 8           ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call fastcc i32 @getsockaddrarg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.a, ptr noundef nonnull @.str.540)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.601, ptr noundef nonnull @.str.568, ptr noundef %0, ptr noundef %1) #11
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 4, !tbaa !6
  %i.f = call fastcc i32 @internal_connect(ptr noundef %0, ptr noundef %2, i32 noundef %i.e, i32 noundef 0) ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @PyErr_Occurred() #11
  %.not8 = icmp eq ptr %i.h, null
  br i1 %.not8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = sext i32 %i.f to i64
  %i.j = call ptr @PyLong_FromLong(i64 noundef %i.i) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.j, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_detach(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  store atomic i32 -1, ptr %i.a monotonic, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef %i.c) #11
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_fileno(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef %i.c) #11
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_getpeername(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %union.sock_addr, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.b, align 4, !tbaa !87
  %switch.tableidx = add i32 %.val, -1            ; 4 uses
  %i.c = icmp ult i32 %switch.tableidx, 42
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 2887024476675, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %getsockaddrlen.exit

getsockaddrlen.exit:                              ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.565) #11
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sock_recvmsg_guts, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep10 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sock_getsockname.33, i64 %i.f
  %switch.load11 = load i64, ptr %switch.gep10, align 8
  store i32 %switch.load, ptr %i.a, align 4, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, i8 0, i64 %switch.load11, i1 false)
  %i.g = tail call ptr @PyEval_SaveThread() #11
  %i.h = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = call i32 @getpeername(i32 noundef %i.i, ptr nonnull %2, ptr noundef nonnull %i.a) #11
  call void @PyEval_RestoreThread(ptr noundef %i.g) #11
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %switch.lookup
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92
  %i.n = call ptr %i.m() #11
  br label %bb.d

bb.c:                                             ; preds = %switch.lookup
  %i.o = load atomic i32, ptr %i.h monotonic, align 4
  %i.p = load i32, ptr %i.a, align 4, !tbaa !6
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !91
  %i.t = call fastcc ptr @makesockaddr(i32 noundef %i.o, ptr noundef nonnull %2, i64 noundef %i.q, i32 noundef %i.s)
  br label %bb.d

bb.d:                                             ; preds = %getsockaddrlen.exit, %bb.c, %bb.b
  %.0 = phi ptr [ %i.n, %bb.b ], [ %i.t, %bb.c ], [ null, %getsockaddrlen.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_getsockname(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %union.sock_addr, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.b, align 4, !tbaa !87
  %switch.tableidx = add i32 %.val, -1            ; 4 uses
  %i.c = icmp ult i32 %switch.tableidx, 42
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 2887024476675, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %getsockaddrlen.exit

getsockaddrlen.exit:                              ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.565) #11
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sock_recvmsg_guts, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep10 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sock_getsockname.33, i64 %i.f
  %switch.load11 = load i64, ptr %switch.gep10, align 8
  store i32 %switch.load, ptr %i.a, align 4, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, i8 0, i64 %switch.load11, i1 false)
  %i.g = tail call ptr @PyEval_SaveThread() #11
  %i.h = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = call i32 @getsockname(i32 noundef %i.i, ptr nonnull %2, ptr noundef nonnull %i.a) #11
  call void @PyEval_RestoreThread(ptr noundef %i.g) #11
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %switch.lookup
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92
  %i.n = call ptr %i.m() #11
  br label %bb.d

bb.c:                                             ; preds = %switch.lookup
  %i.o = load atomic i32, ptr %i.h monotonic, align 4
  %i.p = load i32, ptr %i.a, align 4, !tbaa !6
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !91
  %i.t = call fastcc ptr @makesockaddr(i32 noundef %i.o, ptr noundef nonnull %2, i64 noundef %i.q, i32 noundef %i.s)
  br label %bb.d

bb.d:                                             ; preds = %getsockaddrlen.exit, %bb.c, %bb.b
  %.0 = phi ptr [ %i.n, %bb.b ], [ %i.t, %bb.c ], [ null, %getsockaddrlen.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_getsockopt(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.c, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.g = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.602, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.c, align 4, !tbaa !6    ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !87
  %i.l = icmp eq i32 %i.k, 40                     ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store i64 0, ptr %i.f, align 8, !tbaa !51
  store i32 8, ptr %i.e, align 4, !tbaa !6
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load atomic i32, ptr %i.m monotonic, align 4
  %i.o = load i32, ptr %i.a, align 4, !tbaa !6
  %i.p = load i32, ptr %i.b, align 4, !tbaa !6
  %i.q = call i32 @getsockopt(i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #11
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92
  %i.u = call ptr %i.t() #11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.f, align 8, !tbaa !51
  %i.w = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.v) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi ptr [ %i.u, %bb.e ], [ %i.w, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %bb.s

bb.h:                                             ; preds = %bb.c
  store i32 4, ptr %i.e, align 4, !tbaa !6
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = load atomic i32, ptr %i.x monotonic, align 4
  %i.z = load i32, ptr %i.a, align 4, !tbaa !6
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !6
  %i.ab = call i32 @getsockopt(i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #11
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !92
  %i.af = call ptr %i.ae() #11
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !6
  %i.ah = sext i32 %i.ag to i64
  %i.ai = call ptr @PyLong_FromLong(i64 noundef %i.ah) #11
  br label %bb.s

bb.k:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.aj, ptr noundef nonnull @.str.603) #11
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.ak = icmp ugt i32 %i.h, 1024
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull @.str.604) #11
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.am = zext nneg i32 %i.h to i64
  %i.an = call ptr @PyBytesWriter_Create(i64 noundef %i.am) #11 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr i8, ptr %0, i64 16
  %i.aq = load atomic i32, ptr %i.ap monotonic, align 4
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !6
  %i.as = load i32, ptr %i.b, align 4, !tbaa !6
  %i.at = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.an) #11
  %i.au = call i32 @getsockopt(i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef %i.at, ptr noundef nonnull %i.c) #11
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.an) #11
  %i.aw = getelementptr i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !92
  %i.ay = call ptr %i.ax() #11
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.az = load i32, ptr %i.c, align 4, !tbaa !6
  %i.ba = zext i32 %i.az to i64
  %i.bb = call ptr @PyBytesWriter_FinishWithSize(ptr noundef nonnull %i.an, i64 noundef %i.ba) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o, %bb.a, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  %.2 = phi ptr [ %.0, %bb.g ], [ %i.af, %bb.i ], [ %i.ai, %bb.j ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.a ], [ %i.bb, %bb.r ], [ %i.ay, %bb.q ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_listen(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 128, ptr %i.a, align 4, !tbaa !6
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.605, ptr noundef nonnull %i.a) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @PyEval_SaveThread() #11
  %i.d = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !tbaa !6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
  %i.i = call i32 @listen(i32 noundef %i.h, i32 noundef %i.f) #11
  call void @PyEval_RestoreThread(ptr noundef %i.c) #11
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = call ptr %i.l() #11
end_hunk_1
begin_hunk_2_@idna_converter:bb.a
idna_cleanup.exit:                                ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.o, %Py_DECREF.exit, %bb.n, %bb.l
  %.0 = phi i32 [ 131072, %bb.o ], [ 0, %Py_DECREF.exit ], [ 0, %bb.n ], [ 0, %bb.l ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

declare i64 @PyBytes_Size(ptr noundef) local_unnamed_addr #1

declare ptr @PyByteArray_AsString(ptr noundef) local_unnamed_addr #1

declare i64 @PyByteArray_Size(ptr noundef) local_unnamed_addr #1

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @internal_connect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = tail call ptr @PyEval_SaveThread() #11
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = tail call i32 @connect(i32 noundef %i.d, ptr nonnull %1, i32 noundef %2) #11
  tail call void @PyEval_RestoreThread(ptr noundef %i.b) #11
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #12    ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !6    ; 5 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !6
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @PyErr_CheckSignals() #11
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !93   ; 2 uses
  %.not21 = icmp eq i64 %i.k, 0
  br i1 %.not21, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !93   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  %i.o = icmp eq i32 %i.g, 115
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.not19 = icmp eq i32 %3, 0
  br i1 %.not19, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.g, ptr %i.f, align 4, !tbaa !6
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.r = tail call ptr %i.q() #11                 ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %i.k, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %.not20 = icmp eq i32 %3, 0
  br i1 %.not20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call fastcc i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @sock_connect_impl, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef %i.s)
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.v = call fastcc i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @sock_connect_impl, ptr noundef null, i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.s)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr %i.a, align 4, !tbaa !6
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.i, %bb.c, %bb.a, %bb.l, %bb.k, %bb.g
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.c ], [ 0, %bb.l ], [ %i.x, %bb.k ], [ -1, %bb.g ], [ -1, %bb.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

declare i32 @connect(i32 noundef, ptr, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_connect_impl(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 4, ptr %i.b, align 4, !tbaa !6
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = call i32 @getsockopt(i32 noundef %i.d, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  switch i32 %i.f, label %bb.c [
    i32 106, label %bb.d
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #12
  store i32 %i.f, ptr %i.g, align 4, !tbaa !6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr, ptr noundef) local_unnamed_addr #4

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #1

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_FinishWithSize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_recv_impl(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((24, 32)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = load ptr, ptr %1, align 8, !tbaa !139
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !141
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !142
  %i.h = tail call i64 @recv(i32 noundef %i.b, ptr noundef %i.c, i64 noundef %i.e, i32 noundef %i.g) #11 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 24
  store i64 %i.h, ptr %i.i, align 8, !tbaa !143
  %i.j = icmp sgt i64 %i.h, -1
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @sock_recvfrom_guts(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %union.sock_addr, align 8           ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.sock_recvfrom, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr null, ptr %4, align 8, !tbaa !24
  %i.b = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.b, align 4, !tbaa !87
  %switch.tableidx = add i32 %.val, -1            ; 3 uses
  %i.c = icmp ult i32 %switch.tableidx, 42
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 2887024476675, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %getsockaddrlen.exit

getsockaddrlen.exit:                              ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.565) #11
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sock_recvmsg_guts, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  store i32 %switch.load, ptr %i.a, align 4, !tbaa !6
  store ptr %1, ptr %6, align 8, !tbaa !212
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.f, align 8, !tbaa !214
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %3, ptr %i.g, align 8, !tbaa !215
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %5, ptr %i.h, align 8, !tbaa !216
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.a, ptr %i.i, align 8, !tbaa !217
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !93
  %i.l = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @sock_recvfrom_impl, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null, i64 noundef %i.k)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load atomic i32, ptr %i.n monotonic, align 8
  %i.p = load i32, ptr %i.a, align 4, !tbaa !6
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !91
  %i.t = call fastcc ptr @makesockaddr(i32 noundef %i.o, ptr noundef nonnull %5, i64 noundef %i.q, i32 noundef %i.s) ; 2 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !24
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !218
  br label %bb.d

bb.d:                                             ; preds = %getsockaddrlen.exit, %bb.b, %switch.lookup, %bb.c
  %.0 = phi i64 [ -1, %getsockaddrlen.exit ], [ -1, %switch.lookup ], [ %i.w, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_recvfrom_impl(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((40, 48)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216
  %i.c = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6
  %i.f = zext i32 %i.e to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.f, i1 false)
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
  %i.i = load ptr, ptr %1, align 8, !tbaa !212
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !214
  %i.l = getelementptr i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !215
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !216
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !217
  %i.p = tail call i64 @recvfrom(i32 noundef %i.h, ptr noundef %i.i, i64 noundef %i.k, i32 noundef %i.m, ptr %i.n, ptr noundef %i.o) #11 ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !218
  %i.r = icmp sgt i64 %i.p, -1
  %i.s = zext i1 %i.r to i32
  ret i32 %i.s
}

declare i64 @recvfrom(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, ptr noundef) local_unnamed_addr #1

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_send_impl(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((24, 32)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = load ptr, ptr %1, align 8, !tbaa !144
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !146
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !147
  %i.h = tail call i64 @send(i32 noundef %i.b, ptr noundef %i.c, i64 noundef %i.e, i32 noundef %i.g) #11 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 24
  store i64 %i.h, ptr %i.i, align 8, !tbaa !148
  %i.j = icmp sgt i64 %i.h, -1
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @PyTuple_Size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_sendto_impl(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((32, 40)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = load ptr, ptr %1, align 8, !tbaa !152
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !154
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !155
  %i.h = getelementptr i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !157
  %i.j = getelementptr i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !156
  %i.l = tail call i64 @sendto(i32 noundef %i.b, ptr noundef %i.c, i64 noundef %i.e, i32 noundef %i.g, ptr %i.i, i32 noundef %i.k) #11 ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 32
  store i64 %i.l, ptr %i.m, align 8, !tbaa !158
  %i.n = icmp sgt i64 %i.l, -1
  %i.o = zext i1 %i.n to i32
  ret i32 %i.o
}

declare i64 @sendto(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, i32 noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @PyObject_CheckBuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sock_recvmsg_guts(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %union.sock_addr, align 8           ; 6 uses
  %8 = alloca %struct.msghdr, align 8             ; 11 uses
  %9 = alloca %struct.sock_recvmsg, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.b = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.b, align 4, !tbaa !87
  %switch.tableidx = add i32 %.val, -1            ; 3 uses
  %i.c = icmp ult i32 %switch.tableidx, 42
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 2887024476675, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond189 = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond189, label %switch.lookup, label %getsockaddrlen.exit

getsockaddrlen.exit:                              ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.565) #11
  br label %bb.ab

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sock_recvmsg_guts, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4 ; 3 uses
  %i.f = zext nneg i32 %switch.load to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, i8 0, i64 %i.f, i1 false)
  store i16 0, ptr %7, align 8, !tbaa !23
  %or.cond = icmp ugt i64 %4, 2147483647
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %switch.lookup
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.632) #11
  br label %bb.ab

bb.c:                                             ; preds = %switch.lookup
  %.not63 = icmp eq i64 %4, 0
  br i1 %.not63, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyMem_Malloc(i64 noundef %4) #11 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @PyErr_NoMemory() #11
  br label %bb.ab

bb.f:                                             ; preds = %bb.d, %bb.c
  %.054 = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ] ; 2 uses
  store ptr %7, ptr %8, align 8, !tbaa !170
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %switch.load, ptr %i.k, align 8, !tbaa !173
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !188
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !219
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 7 uses
  store ptr %.054, ptr %i.o, align 8, !tbaa !176
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 9 uses
  store i64 %4, ptr %i.p, align 8, !tbaa !177
  store ptr %8, ptr %9, align 8, !tbaa !220
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %3, ptr %i.q, align 8, !tbaa !222
  %i.r = getelementptr i8, ptr %0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93
  %i.t = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @sock_recvmsg_impl, ptr noundef nonnull %9, i32 noundef 0, ptr noundef null, i64 noundef %i.s)
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %Py_XDECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = call ptr @PyList_New(i64 noundef 0) #11  ; 6 uses
  %i.w = icmp eq ptr %i.v, null                   ; 2 uses
  br i1 %i.w, label %.thread118, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.p, align 8, !tbaa !177
  %i.y = icmp ult i64 %i.x, 16
  %i.z = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not65139171 = icmp eq ptr %i.z, null
  %.not65139 = select i1 %i.y, i1 true, i1 %.not65139171
  br i1 %.not65139, label %.thread121, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %.val75181 = load i64, ptr %i.p, align 8
  br label %cmsg_min_space.exit.i

.lr.phthread-pre-split:                           ; preds = %__cmsg_nxthdr.exit
  %.val74.pr = load ptr, ptr %i.o, align 8, !tbaa !176 ; 2 uses
  %.val75 = load i64, ptr %i.p, align 8
  %i.aa = icmp eq ptr %.val74.pr, null
  br i1 %i.aa, label %get_cmsg_data_len.exit.thread, label %cmsg_min_space.exit.i

cmsg_min_space.exit.i:                            ; preds = %.lr.ph.preheader, %.lr.phthread-pre-split
  %.val75184 = phi i64 [ %.val75181, %.lr.ph.preheader ], [ %.val75, %.lr.phthread-pre-split ] ; 3 uses
  %.052141183 = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.bz, %.lr.phthread-pre-split ] ; 9 uses
  %.val74182 = phi ptr [ %i.z, %.lr.ph.preheader ], [ %.val74.pr, %.lr.phthread-pre-split ]
  %i.ab = ptrtoint ptr %.052141183 to i64
  %i.ac = ptrtoint ptr %.val74182 to i64          ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ad, -17
  %i.ae = add i64 %i.ad, 16
  %i.af = icmp ugt i64 %i.ae, %.val75184
  %narrow.i.not.i = select i1 %.not.i.i, i1 true, i1 %i.af
  br i1 %narrow.i.not.i, label %get_cmsg_data_len.exit.thread, label %bb.i

bb.i:                                             ; preds = %cmsg_min_space.exit.i
  %i.ag = load i64, ptr %.052141183, align 8, !tbaa !51 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  br i1 %i.ah, label %get_cmsg_data_len.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = add i64 %i.ag, -16                      ; 2 uses
  %i.aj = getelementptr i8, ptr %.052141183, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %get_cmsg_data_len.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.al, %i.ac                    ; 2 uses
  %i.an = icmp ugt i64 %i.am, %.val75184
  br i1 %i.an, label %get_cmsg_data_len.exit.thread, label %get_cmsg_data_len.exit

get_cmsg_data_len.exit:                           ; preds = %bb.k
  %i.ao = sub nuw i64 %.val75184, %i.am           ; 2 uses
  %.not14.i.not.not = icmp ult i64 %i.ao, %i.ai   ; 2 uses
  %..i = call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.ai) ; 2 uses
  br i1 %.not14.i.not.not, label %get_cmsg_data_len.exit.thread.thread, label %.thread

get_cmsg_data_len.exit.thread:                    ; preds = %.lr.phthread-pre-split, %bb.i, %bb.k, %bb.j, %cmsg_min_space.exit.i
  %i.ap = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !24
  %i.aq = call i32 @PyErr_WarnEx(ptr noundef %i.ap, ptr noundef nonnull @.str.633, i64 noundef 1) #11
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %.thread118, label %.thread121

get_cmsg_data_len.exit.thread.thread:             ; preds = %get_cmsg_data_len.exit
  %i.as = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !24
  %i.at = call i32 @PyErr_WarnEx(ptr noundef %i.as, ptr noundef nonnull @.str.633, i64 noundef 1) #11
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %.thread118, label %.thread

.thread:                                          ; preds = %get_cmsg_data_len.exit.thread.thread, %get_cmsg_data_len.exit
  %i.av = icmp slt i64 %..i, 0
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  %i.aw = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.aw, ptr noundef nonnull @.str.634) #11
  br label %.thread118

bb.m:                                             ; preds = %.thread
  %i.ax = getelementptr i8, ptr %.052141183, i64 16
  %i.ay = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.ax, i64 noundef %..i) #11
  %i.az = getelementptr i8, ptr %.052141183, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !6
  %i.bb = getelementptr i8, ptr %.052141183, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !6
  %i.bd = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.635, i32 noundef %i.ba, i32 noundef %i.bc, ptr noundef %i.ay) #11 ; 5 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.thread118, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = call i32 @PyList_Append(ptr noundef nonnull %i.v, ptr noundef nonnull %i.bd) #11
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp sgt i32 %i.bg, -1
  br i1 %.not.i, label %bb.o, label %Py_DECREF.exit

bb.o:                                             ; preds = %bb.n
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.bd, align 8, !tbaa !23
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.bd) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.n, %bb.o, %bb.p
  %.not67 = icmp eq i32 %i.bf, 0
  br i1 %.not67, label %bb.q, label %.thread118

bb.q:                                             ; preds = %Py_DECREF.exit
  br i1 %.not14.i.not.not, label %.thread121, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i64, ptr %.052141183, align 8, !tbaa !51 ; 4 uses
  %i.bk = icmp ult i64 %i.bj, 16
  br i1 %i.bk, label %.thread121, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = sub i64 0, %i.bj
  %i.bm = and i64 %i.bl, 7
  %i.bn = or disjoint i64 %i.bm, 16               ; 2 uses
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !176
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !177
  %i.bq = getelementptr i8, ptr %i.bo, i64 %i.bp
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.052141183 to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bn
  %i.bv = sub nuw i64 %i.bt, %i.bn
  %i.bw = icmp ult i64 %i.bv, %i.bj
  %or.cond.i = select i1 %i.bu, i1 true, i1 %i.bw
  br i1 %or.cond.i, label %.thread121, label %__cmsg_nxthdr.exit

__cmsg_nxthdr.exit:                               ; preds = %bb.s
  %i.bx = add nuw i64 %i.bj, 7
  %i.by = and i64 %i.bx, -8
  %i.bz = getelementptr i8, ptr %.052141183, i64 %i.by ; 2 uses
  %.not65 = icmp eq ptr %i.bz, null
  br i1 %.not65, label %.thread121, label %.lr.phthread-pre-split, !llvm.loop !223

.thread121:                                       ; preds = %bb.s, %bb.r, %__cmsg_nxthdr.exit, %bb.q, %get_cmsg_data_len.exit.thread, %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !224
  %i.cc = call ptr %5(i64 noundef %i.cb, ptr noundef %6) #11, !callees !225
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !226
  %i.cf = getelementptr i8, ptr %0, i64 16
  %i.cg = load atomic i32, ptr %i.cf monotonic, align 8
  %i.ch = load i32, ptr %i.k, align 8, !tbaa !173
  %i.ci = call i32 @llvm.umin.i32(i32 %i.ch, i32 %switch.load)
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr i8, ptr %0, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !91
  %i.cm = call fastcc ptr @makesockaddr(i32 noundef %i.cg, ptr noundef nonnull %7, i64 noundef %i.cj, i32 noundef %i.cl)
  %i.cn = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.636, ptr noundef %i.cc, ptr noundef nonnull %i.v, i32 noundef %i.ce, ptr noundef %i.cm) #11 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.thread118, label %.thread129

get_cmsg_data_len.exit88.thread:                  ; preds = %bb.aa, %bb.z, %.loopexit, %__cmsg_nxthdr.exit91, %cmsg_min_space.exit.i80, %bb.w, %bb.x, %bb.v, %.lr.ph149thread-pre-split, %.thread118
  br i1 %i.w, label %Py_XDECREF.exit, label %.thread129

.thread129:                                       ; preds = %.thread121, %get_cmsg_data_len.exit88.thread
  %.050133 = phi ptr [ null, %get_cmsg_data_len.exit88.thread ], [ %i.cn, %.thread121 ] ; 3 uses
  %i.cp = load i32, ptr %i.v, align 8, !tbaa !23  ; 2 uses
  %.not.i.i79 = icmp sgt i32 %i.cp, -1
  br i1 %.not.i.i79, label %bb.t, label %Py_XDECREF.exit

bb.t:                                             ; preds = %.thread129
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  store i32 %i.cq, ptr %i.v, align 8, !tbaa !23
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.u, label %Py_XDECREF.exit

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %i.v) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.f, %get_cmsg_data_len.exit88.thread, %.thread129, %bb.t, %bb.u
  %.050128 = phi ptr [ %.050133, %bb.u ], [ null, %get_cmsg_data_len.exit88.thread ], [ %.050133, %.thread129 ], [ %.050133, %bb.t ], [ null, %bb.f ]
  call void @PyMem_Free(ptr noundef %.054) #11
  br label %bb.ab

.thread118:                                       ; preds = %bb.m, %Py_DECREF.exit, %get_cmsg_data_len.exit.thread.thread, %get_cmsg_data_len.exit.thread, %bb.l, %.thread121, %bb.g
  %i.cs = load i64, ptr %i.p, align 8, !tbaa !177
  %i.ct = icmp ult i64 %i.cs, 16
  %i.cu = load ptr, ptr %i.o, align 8             ; 3 uses
  %.not69147172 = icmp eq ptr %i.cu, null
  %.not69147 = select i1 %i.ct, i1 true, i1 %.not69147172
  br i1 %.not69147, label %get_cmsg_data_len.exit88.thread, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %.thread118
  %.val73185 = load i64, ptr %i.p, align 8
  br label %cmsg_min_space.exit.i80

.lr.ph149thread-pre-split:                        ; preds = %__cmsg_nxthdr.exit91
  %.val72.pr = load ptr, ptr %i.o, align 8, !tbaa !176 ; 2 uses
  %.val73 = load i64, ptr %i.p, align 8
  %i.cv = icmp eq ptr %.val72.pr, null
  br i1 %i.cv, label %get_cmsg_data_len.exit88.thread, label %cmsg_min_space.exit.i80

cmsg_min_space.exit.i80:                          ; preds = %.lr.ph149.preheader, %.lr.ph149thread-pre-split
  %.val73188 = phi i64 [ %.val73185, %.lr.ph149.preheader ], [ %.val73, %.lr.ph149thread-pre-split ] ; 3 uses
  %.153148187 = phi ptr [ %i.cu, %.lr.ph149.preheader ], [ %i.ek, %.lr.ph149thread-pre-split ] ; 7 uses
  %.val72186 = phi ptr [ %i.cu, %.lr.ph149.preheader ], [ %.val72.pr, %.lr.ph149thread-pre-split ]
  %i.cw = ptrtoint ptr %.153148187 to i64         ; 2 uses
  %i.cx = ptrtoint ptr %.val72186 to i64          ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 2 uses
  %.not.i.i81 = icmp ugt i64 %i.cy, -17
  %i.cz = add i64 %i.cy, 16
  %i.da = icmp ugt i64 %i.cz, %.val73188
  %narrow.i.not.i82 = select i1 %.not.i.i81, i1 true, i1 %i.da
  br i1 %narrow.i.not.i82, label %get_cmsg_data_len.exit88.thread, label %bb.v

bb.v:                                             ; preds = %cmsg_min_space.exit.i80
  %i.db = load i64, ptr %.153148187, align 8, !tbaa !51 ; 2 uses
  %i.dc = icmp ult i64 %i.db, 16
  br i1 %i.dc, label %get_cmsg_data_len.exit88.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = add i64 %i.db, -16                      ; 2 uses
  %i.de = getelementptr i8, ptr %.153148187, i64 16 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %get_cmsg_data_len.exit88.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.dg, %i.cx                    ; 2 uses
  %i.di = icmp ugt i64 %i.dh, %.val73188
  br i1 %i.di, label %get_cmsg_data_len.exit88.thread, label %get_cmsg_data_len.exit88

get_cmsg_data_len.exit88:                         ; preds = %bb.x
  %i.dj = sub nuw i64 %.val73188, %i.dh           ; 2 uses
  %.not14.i84.not = icmp ult i64 %i.dj, %i.dd
  %i.dk = getelementptr i8, ptr %.153148187, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !6
  %i.dm = icmp eq i32 %i.dl, 1
  br i1 %i.dm, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %get_cmsg_data_len.exit88
  %..i85 = call i64 @llvm.umin.i64(i64 %i.dj, i64 %i.dd)
  %i.dn = getelementptr i8, ptr %.153148187, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !6
  %i.dp = icmp ne i32 %i.do, 1
  %i.dq = lshr i64 %..i85, 2                      ; 2 uses
  %.not70143 = icmp eq i64 %i.dq, 0
  %or.cond155 = select i1 %i.dp, i1 true, i1 %.not70143
  br i1 %or.cond155, label %.loopexit, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.y, %.lr.ph146
  %.0145 = phi ptr [ %i.ds, %.lr.ph146 ], [ %i.de, %bb.y ] ; 2 uses
  %.047144 = phi i64 [ %i.dr, %.lr.ph146 ], [ %i.dq, %bb.y ]
  %i.dr = add nsw i64 %.047144, -1                ; 2 uses
  %i.ds = getelementptr i8, ptr %.0145, i64 4
  %i.dt = load i32, ptr %.0145, align 4, !tbaa !6
  %i.du = call i32 @close(i32 noundef %i.dt) #11  ; 0 uses
  %.not70 = icmp eq i64 %i.dr, 0
  br i1 %.not70, label %.loopexit, label %.lr.ph146, !llvm.loop !227

.loopexit:                                        ; preds = %.lr.ph146, %bb.y, %get_cmsg_data_len.exit88
  br i1 %.not14.i84.not, label %get_cmsg_data_len.exit88.thread, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.dv = load i64, ptr %.153148187, align 8, !tbaa !51 ; 4 uses
  %i.dw = icmp ult i64 %i.dv, 16
  br i1 %i.dw, label %get_cmsg_data_len.exit88.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = sub i64 0, %i.dv
  %i.dy = and i64 %i.dx, 7
  %i.dz = or disjoint i64 %i.dy, 16               ; 2 uses
  %i.ea = load ptr, ptr %i.o, align 8, !tbaa !176
  %i.eb = load i64, ptr %i.p, align 8, !tbaa !177
  %i.ec = getelementptr i8, ptr %i.ea, i64 %i.eb
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cw                    ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.dz
  %i.eg = sub nuw i64 %i.ee, %i.dz
  %i.eh = icmp ult i64 %i.eg, %i.dv
  %or.cond.i89 = select i1 %i.ef, i1 true, i1 %i.eh
  br i1 %or.cond.i89, label %get_cmsg_data_len.exit88.thread, label %__cmsg_nxthdr.exit91

__cmsg_nxthdr.exit91:                             ; preds = %bb.aa
  %i.ei = add nuw i64 %i.dv, 7
  %i.ej = and i64 %i.ei, -8
  %i.ek = getelementptr i8, ptr %.153148187, i64 %i.ej ; 2 uses
  %.not69 = icmp eq ptr %i.ek, null
  br i1 %.not69, label %get_cmsg_data_len.exit88.thread, label %.lr.ph149thread-pre-split, !llvm.loop !228

bb.ab:                                            ; preds = %getsockaddrlen.exit, %Py_XDECREF.exit, %bb.e, %bb.b
  %.048 = phi ptr [ null, %bb.b ], [ %i.j, %bb.e ], [ %.050128, %Py_XDECREF.exit ], [ null, %getsockaddrlen.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret ptr %.048
}

; Function Attrs: nounwind uwtable
define internal ptr @makeval_recvmsg(i64 noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !159
  %i.b = tail call ptr @PyBytesWriter_FinishWithSize(ptr noundef %i.a, i64 noundef %0) #11
  store ptr null, ptr %1, align 8, !tbaa !159
  ret ptr %i.b
}

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_recvmsg_impl(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((16, 24)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = load ptr, ptr %1, align 8, !tbaa !220
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !222
  %i.f = tail call i64 @recvmsg(i32 noundef %i.b, ptr noundef %i.c, i32 noundef %i.e) #11 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 16
  store i64 %i.f, ptr %i.g, align 8, !tbaa !224
  %i.h = icmp sgt i64 %i.f, -1
  %i.i = zext i1 %i.h to i32
  ret i32 %i.i
}

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @recvmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PySequence_Fast(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @makeval_recvmsg_into(i64 noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyLong_FromSsize_t(i64 noundef %0) #11
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @sock_sendmsg_iovec(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PySequence_Fast(ptr noundef %0, ptr noundef nonnull @.str.651) #11 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %.in6 = getelementptr i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %.in6, align 8, !tbaa !67  ; 7 uses
  %i.e = icmp sgt i64 %i.d, 2147483647
end_hunk_2
