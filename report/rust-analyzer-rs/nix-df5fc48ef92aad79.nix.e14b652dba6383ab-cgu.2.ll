Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/nix-df5fc48ef92aad79.nix.e14b652dba6383ab-cgu.2?download=true
inline.NumInlined: 164
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [96 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nix-0.31.3/src/sys/wait.rs\00", align 1
@1 = private unnamed_addr constant [8 x i8] c"fd != -1", align 1
@2 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nix-0.31.3/src/sys/signalfd.rs\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@4 = private unnamed_addr constant [25 x i8] c"overflow in Duration::new", align 1
@5 = private unnamed_addr constant [73 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/time.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"H\00\00\00\00\00\00\00\C9\00\00\00\12\00\00\00" }>, align 8
@7 = private unnamed_addr constant [92 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nix-0.31.3/src/poll.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"[\00\00\00\00\00\00\00W\00\00\002\00\00\00" }>, align 8
@9 = private unnamed_addr constant [66 x i8] c"internal error: entered unreachable code: partial read on signalfd", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"c\00\00\00\00\00\00\00|\00\00\00\16\00\00\00" }>, align 8
@11 = private unnamed_addr constant [81 x i8] c"internal error: entered unreachable code: This variant could never be constructed", align 1
@12 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nix-0.31.3/src/sys/signal.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"a\00\00\00\00\00\00\00\82\05\00\001\00\00\00" }>, align 8
@14 = private unnamed_addr constant [4 x i8] c"\11\00\00\00", align 4
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\FD\00\00\00\09\00\00\00" }>, align 8
@16 = private unnamed_addr constant [35 x i8] c"assertion failed: continued(status)", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\E1\00\00\00\0D\00\00\00" }>, align 8
@18 = private unnamed_addr constant [6 x i8] c"POLLIN", align 1
@19 = private unnamed_addr constant [7 x i8] c"POLLPRI", align 1
@20 = private unnamed_addr constant [7 x i8] c"POLLOUT", align 1
@21 = private unnamed_addr constant [10 x i8] c"POLLRDNORM", align 1
@22 = private unnamed_addr constant [10 x i8] c"POLLWRNORM", align 1
@23 = private unnamed_addr constant [10 x i8] c"POLLRDBAND", align 1
@24 = private unnamed_addr constant [10 x i8] c"POLLWRBAND", align 1
@25 = private unnamed_addr constant [7 x i8] c"POLLERR", align 1
@26 = private unnamed_addr constant [7 x i8] c"POLLHUP", align 1
@27 = private unnamed_addr constant [8 x i8] c"POLLNVAL", align 1
@28 = private unnamed_addr constant <{ ptr, [10 x i8], [6 x i8], ptr, [10 x i8], [6 x i8], ptr, [10 x i8], [6 x i8], ptr, [10 x i8], [6 x i8], ptr, [10 x i8], [6 x i8], ptr, [10 x i8], [6 x i8], ptr, [10 x i8], [6 x i8], ptr, [10 x i8], [6 x i8], ptr, [10 x i8], [6 x i8], ptr, [10 x i8], [6 x i8] }> <{ ptr @18, [10 x i8] c"\06\00\00\00\00\00\00\00\01\00", [6 x i8] undef, ptr @19, [10 x i8] c"\07\00\00\00\00\00\00\00\02\00", [6 x i8] undef, ptr @20, [10 x i8] c"\07\00\00\00\00\00\00\00\04\00", [6 x i8] undef, ptr @21, [10 x i8] c"\0A\00\00\00\00\00\00\00@\00", [6 x i8] undef, ptr @22, [10 x i8] c"\0A\00\00\00\00\00\00\00\00\01", [6 x i8] undef, ptr @23, [10 x i8] c"\0A\00\00\00\00\00\00\00\80\00", [6 x i8] undef, ptr @24, [10 x i8] c"\0A\00\00\00\00\00\00\00\00\02", [6 x i8] undef, ptr @25, [10 x i8] c"\07\00\00\00\00\00\00\00\08\00", [6 x i8] undef, ptr @26, [10 x i8] c"\07\00\00\00\00\00\00\00\10\00", [6 x i8] undef, ptr @27, [10 x i8] c"\08\00\00\00\00\00\00\00 \00", [6 x i8] undef }>, align 8
@29 = private unnamed_addr constant [13 x i8] c"Unknown errno", align 1
@30 = private unnamed_addr constant [23 x i8] c"Operation not permitted", align 1
@31 = private unnamed_addr constant [25 x i8] c"No such file or directory", align 1
@32 = private unnamed_addr constant [15 x i8] c"No such process", align 1
@33 = private unnamed_addr constant [23 x i8] c"Interrupted system call", align 1
@34 = private unnamed_addr constant [9 x i8] c"I/O error", align 1
@35 = private unnamed_addr constant [25 x i8] c"No such device or address", align 1
@36 = private unnamed_addr constant [22 x i8] c"Argument list too long", align 1
@37 = private unnamed_addr constant [17 x i8] c"Exec format error", align 1
@38 = private unnamed_addr constant [15 x i8] c"Bad file number", align 1
@39 = private unnamed_addr constant [18 x i8] c"No child processes", align 1
@40 = private unnamed_addr constant [9 x i8] c"Try again", align 1
@41 = private unnamed_addr constant [13 x i8] c"Out of memory", align 1
@42 = private unnamed_addr constant [17 x i8] c"Permission denied", align 1
@43 = private unnamed_addr constant [11 x i8] c"Bad address", align 1
@44 = private unnamed_addr constant [21 x i8] c"Block device required", align 1
@45 = private unnamed_addr constant [23 x i8] c"Device or resource busy", align 1
@46 = private unnamed_addr constant [11 x i8] c"File exists", align 1
@47 = private unnamed_addr constant [17 x i8] c"Cross-device link", align 1
@48 = private unnamed_addr constant [14 x i8] c"No such device", align 1
@49 = private unnamed_addr constant [15 x i8] c"Not a directory", align 1
@50 = private unnamed_addr constant [14 x i8] c"Is a directory", align 1
@51 = private unnamed_addr constant [16 x i8] c"Invalid argument", align 1
@52 = private unnamed_addr constant [19 x i8] c"File table overflow", align 1
@53 = private unnamed_addr constant [19 x i8] c"Too many open files", align 1
@54 = private unnamed_addr constant [16 x i8] c"Not a typewriter", align 1
@55 = private unnamed_addr constant [14 x i8] c"Text file busy", align 1
@56 = private unnamed_addr constant [14 x i8] c"File too large", align 1
@57 = private unnamed_addr constant [23 x i8] c"No space left on device", align 1
@58 = private unnamed_addr constant [12 x i8] c"Illegal seek", align 1
@59 = private unnamed_addr constant [21 x i8] c"Read-only file system", align 1
@60 = private unnamed_addr constant [14 x i8] c"Too many links", align 1
@61 = private unnamed_addr constant [11 x i8] c"Broken pipe", align 1
@62 = private unnamed_addr constant [35 x i8] c"Math argument out of domain of func", align 1
@63 = private unnamed_addr constant [29 x i8] c"Math result not representable", align 1
@64 = private unnamed_addr constant [29 x i8] c"Resource deadlock would occur", align 1
@65 = private unnamed_addr constant [18 x i8] c"File name too long", align 1
@66 = private unnamed_addr constant [25 x i8] c"No record locks available", align 1
@67 = private unnamed_addr constant [24 x i8] c"Function not implemented", align 1
@68 = private unnamed_addr constant [19 x i8] c"Directory not empty", align 1
@69 = private unnamed_addr constant [35 x i8] c"Too many symbolic links encountered", align 1
@70 = private unnamed_addr constant [26 x i8] c"No message of desired type", align 1
@71 = private unnamed_addr constant [18 x i8] c"Identifier removed", align 1
@72 = private unnamed_addr constant [27 x i8] c"Channel number out of range", align 1
@73 = private unnamed_addr constant [24 x i8] c"Level 2 not synchronized", align 1
@74 = private unnamed_addr constant [14 x i8] c"Level 3 halted", align 1
@75 = private unnamed_addr constant [13 x i8] c"Level 3 reset", align 1
@76 = private unnamed_addr constant [24 x i8] c"Link number out of range", align 1
@77 = private unnamed_addr constant [28 x i8] c"Protocol driver not attached", align 1
@78 = private unnamed_addr constant [26 x i8] c"No CSI structure available", align 1
@79 = private unnamed_addr constant [14 x i8] c"Level 2 halted", align 1
@80 = private unnamed_addr constant [16 x i8] c"Invalid exchange", align 1
@81 = private unnamed_addr constant [26 x i8] c"Invalid request descriptor", align 1
@82 = private unnamed_addr constant [13 x i8] c"Exchange full", align 1
@83 = private unnamed_addr constant [8 x i8] c"No anode", align 1
@84 = private unnamed_addr constant [20 x i8] c"Invalid request code", align 1
@85 = private unnamed_addr constant [12 x i8] c"Invalid slot", align 1
@86 = private unnamed_addr constant [20 x i8] c"Bad font file format", align 1
@87 = private unnamed_addr constant [19 x i8] c"Device not a stream", align 1
@88 = private unnamed_addr constant [17 x i8] c"No data available", align 1
@89 = private unnamed_addr constant [13 x i8] c"Timer expired", align 1
@90 = private unnamed_addr constant [24 x i8] c"Out of streams resources", align 1
@91 = private unnamed_addr constant [29 x i8] c"Machine is not on the network", align 1
@92 = private unnamed_addr constant [21 x i8] c"Package not installed", align 1
@93 = private unnamed_addr constant [16 x i8] c"Object is remote", align 1
@94 = private unnamed_addr constant [21 x i8] c"Link has been severed", align 1
@95 = private unnamed_addr constant [15 x i8] c"Advertise error", align 1
@96 = private unnamed_addr constant [13 x i8] c"Srmount error", align 1
@97 = private unnamed_addr constant [27 x i8] c"Communication error on send", align 1
@98 = private unnamed_addr constant [14 x i8] c"Protocol error", align 1
@99 = private unnamed_addr constant [18 x i8] c"Multihop attempted", align 1
@100 = private unnamed_addr constant [18 x i8] c"RFS specific error", align 1
@101 = private unnamed_addr constant [18 x i8] c"Not a data message", align 1
@102 = private unnamed_addr constant [37 x i8] c"Value too large for defined data type", align 1
@103 = private unnamed_addr constant [26 x i8] c"Name not unique on network", align 1
@104 = private unnamed_addr constant [28 x i8] c"File descriptor in bad state", align 1
@105 = private unnamed_addr constant [22 x i8] c"Remote address changed", align 1
@106 = private unnamed_addr constant [38 x i8] c"Can not access a needed shared library", align 1
@107 = private unnamed_addr constant [36 x i8] c"Accessing a corrupted shared library", align 1
@108 = private unnamed_addr constant [31 x i8] c".lib section in a.out corrupted", align 1
@109 = private unnamed_addr constant [47 x i8] c"Attempting to link in too many shared libraries", align 1
@110 = private unnamed_addr constant [37 x i8] c"Cannot exec a shared library directly", align 1
@111 = private unnamed_addr constant [21 x i8] c"Illegal byte sequence", align 1
@112 = private unnamed_addr constant [43 x i8] c"Interrupted system call should be restarted", align 1
@113 = private unnamed_addr constant [18 x i8] c"Streams pipe error", align 1
@114 = private unnamed_addr constant [14 x i8] c"Too many users", align 1
@115 = private unnamed_addr constant [30 x i8] c"Socket operation on non-socket", align 1
@116 = private unnamed_addr constant [28 x i8] c"Destination address required", align 1
@117 = private unnamed_addr constant [16 x i8] c"Message too long", align 1
@118 = private unnamed_addr constant [30 x i8] c"Protocol wrong type for socket", align 1
@119 = private unnamed_addr constant [22 x i8] c"Protocol not available", align 1
@120 = private unnamed_addr constant [22 x i8] c"Protocol not supported", align 1
@121 = private unnamed_addr constant [25 x i8] c"Socket type not supported", align 1
@122 = private unnamed_addr constant [45 x i8] c"Operation not supported on transport endpoint", align 1
@123 = private unnamed_addr constant [29 x i8] c"Protocol family not supported", align 1
@124 = private unnamed_addr constant [40 x i8] c"Address family not supported by protocol", align 1
@125 = private unnamed_addr constant [22 x i8] c"Address already in use", align 1
@126 = private unnamed_addr constant [31 x i8] c"Cannot assign requested address", align 1
@127 = private unnamed_addr constant [15 x i8] c"Network is down", align 1
@128 = private unnamed_addr constant [22 x i8] c"Network is unreachable", align 1
@129 = private unnamed_addr constant [43 x i8] c"Network dropped connection because of reset", align 1
@130 = private unnamed_addr constant [32 x i8] c"Software caused connection abort", align 1
@131 = private unnamed_addr constant [24 x i8] c"Connection reset by peer", align 1
@132 = private unnamed_addr constant [25 x i8] c"No buffer space available", align 1
@133 = private unnamed_addr constant [39 x i8] c"Transport endpoint is already connected", align 1
@134 = private unnamed_addr constant [35 x i8] c"Transport endpoint is not connected", align 1
@135 = private unnamed_addr constant [45 x i8] c"Cannot send after transport endpoint shutdown", align 1
@136 = private unnamed_addr constant [34 x i8] c"Too many references: cannot splice", align 1
@137 = private unnamed_addr constant [20 x i8] c"Connection timed out", align 1
@138 = private unnamed_addr constant [18 x i8] c"Connection refused", align 1
@139 = private unnamed_addr constant [12 x i8] c"Host is down", align 1
@140 = private unnamed_addr constant [16 x i8] c"No route to host", align 1
@141 = private unnamed_addr constant [29 x i8] c"Operation already in progress", align 1
@142 = private unnamed_addr constant [25 x i8] c"Operation now in progress", align 1
@143 = private unnamed_addr constant [17 x i8] c"Stale file handle", align 1
@144 = private unnamed_addr constant [24 x i8] c"Structure needs cleaning", align 1
@145 = private unnamed_addr constant [27 x i8] c"Not a XENIX named type file", align 1
@146 = private unnamed_addr constant [29 x i8] c"No XENIX semaphores available", align 1
@147 = private unnamed_addr constant [20 x i8] c"Is a named type file", align 1
@148 = private unnamed_addr constant [16 x i8] c"Remote I/O error", align 1
@149 = private unnamed_addr constant [14 x i8] c"Quota exceeded", align 1
@150 = private unnamed_addr constant [15 x i8] c"No medium found", align 1
@151 = private unnamed_addr constant [17 x i8] c"Wrong medium type", align 1
@152 = private unnamed_addr constant [18 x i8] c"Operation canceled", align 1
@153 = private unnamed_addr constant [26 x i8] c"Required key not available", align 1
@154 = private unnamed_addr constant [15 x i8] c"Key has expired", align 1
@155 = private unnamed_addr constant [20 x i8] c"Key has been revoked", align 1
@156 = private unnamed_addr constant [27 x i8] c"Key was rejected by service", align 1
@157 = private unnamed_addr constant [10 x i8] c"Owner died", align 1
@158 = private unnamed_addr constant [21 x i8] c"State not recoverable", align 1
@159 = private unnamed_addr constant [37 x i8] c"Operation not possible due to RF-kill", align 1
@160 = private unnamed_addr constant [30 x i8] c"Memory page has hardware error", align 1
@161 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00p\01\00\00\0D\00\00\00" }>, align 8
@162 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"[\00\00\00\00\00\00\00v\00\00\00\12\00\00\00" }>, align 8
@163 = private unnamed_addr constant [2 x i8] zeroinitializer, align 2
@164 = private unnamed_addr constant [6 x i8] c"\C1 \00\80`\00", align 1
@165 = private unnamed_addr constant [4 x i8] zeroinitializer, align 4
@166 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@167 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@168 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@169 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@170 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@171 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@172 = private unnamed_addr constant [7 x i8] c"WNOHANG", align 1
@173 = private unnamed_addr constant [9 x i8] c"WUNTRACED", align 1
@174 = private unnamed_addr constant [7 x i8] c"WEXITED", align 1
@175 = private unnamed_addr constant [10 x i8] c"WCONTINUED", align 1
@176 = private unnamed_addr constant [8 x i8] c"WSTOPPED", align 1
@177 = private unnamed_addr constant [7 x i8] c"WNOWAIT", align 1
@178 = private unnamed_addr constant [11 x i8] c"__WNOTHREAD", align 1
@179 = private unnamed_addr constant [6 x i8] c"__WALL", align 1
@180 = private unnamed_addr constant [8 x i8] c"__WCLONE", align 1
@181 = private unnamed_addr constant <{ ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8] }> <{ ptr @172, [12 x i8] c"\07\00\00\00\00\00\00\00\01\00\00\00", [4 x i8] undef, ptr @173, [12 x i8] c"\09\00\00\00\00\00\00\00\02\00\00\00", [4 x i8] undef, ptr @174, [12 x i8] c"\07\00\00\00\00\00\00\00\04\00\00\00", [4 x i8] undef, ptr @175, [12 x i8] c"\0A\00\00\00\00\00\00\00\08\00\00\00", [4 x i8] undef, ptr @176, [12 x i8] c"\08\00\00\00\00\00\00\00\02\00\00\00", [4 x i8] undef, ptr @177, [12 x i8] c"\07\00\00\00\00\00\00\00\00\00\00\01", [4 x i8] undef, ptr @178, [12 x i8] c"\0B\00\00\00\00\00\00\00\00\00\00 ", [4 x i8] undef, ptr @179, [12 x i8] c"\06\00\00\00\00\00\00\00\00\00\00@", [4 x i8] undef, ptr @180, [12 x i8] c"\08\00\00\00\00\00\00\00\00\00\00\80", [4 x i8] undef }>, align 8
@182 = private unnamed_addr constant [12 x i8] c"SFD_NONBLOCK", align 1
@183 = private unnamed_addr constant [11 x i8] c"SFD_CLOEXEC", align 1
@184 = private unnamed_addr constant <{ ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8] }> <{ ptr @182, [12 x i8] c"\0C\00\00\00\00\00\00\00\00\08\00\00", [4 x i8] undef, ptr @183, [12 x i8] c"\0B\00\00\00\00\00\00\00\00\00\08\00", [4 x i8] undef }>, align 8
@switch.table._RNvNtCsjleIA2Nr5aN_3nix5errno4desc = private unnamed_addr constant [256 x i8] [i8 20, i8 27, i8 10, i8 21, i8 37, i8 30, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 13, i8 23, i8 25, i8 15, i8 23, i8 9, i8 25, i8 22, i8 17, i8 15, i8 18, i8 9, i8 13, i8 17, i8 11, i8 21, i8 23, i8 11, i8 17, i8 14, i8 15, i8 14, i8 16, i8 19, i8 19, i8 16, i8 14, i8 14, i8 23, i8 12, i8 21, i8 14, i8 11, i8 35, i8 29, i8 29, i8 18, i8 25, i8 24, i8 19, i8 35, i8 poison, i8 26, i8 18, i8 27, i8 24, i8 14, i8 13, i8 24, i8 28, i8 26, i8 14, i8 16, i8 26, i8 13, i8 8, i8 20, i8 12, i8 poison, i8 20, i8 19, i8 17, i8 13, i8 24, i8 29, i8 21, i8 16, i8 21, i8 15, i8 13, i8 27, i8 14, i8 18, i8 18, i8 18, i8 37, i8 26, i8 28, i8 22, i8 38, i8 36, i8 31, i8 47, i8 37, i8 21, i8 43, i8 18, i8 14, i8 30, i8 28, i8 16, i8 30, i8 22, i8 22, i8 25, i8 45, i8 29, i8 40, i8 22, i8 31, i8 15, i8 22, i8 43, i8 32, i8 24, i8 25, i8 39, i8 35, i8 45, i8 34, i8 20, i8 18, i8 12, i8 16, i8 29, i8 25, i8 17, i8 24, i8 27, i8 29, i8 20, i8 16, i8 14, i8 15, i8 17, i8 18, i8 26, i8 15], align 8
@switch.table._RNvNtCsjleIA2Nr5aN_3nix5errno4desc.24 = private unnamed_addr constant [256 x ptr] [ptr @155, ptr @156, ptr @157, ptr @158, ptr @159, ptr @160, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @29, ptr @30, ptr @31, ptr @32, ptr @33, ptr @34, ptr @35, ptr @36, ptr @37, ptr @38, ptr @39, ptr @40, ptr @41, ptr @42, ptr @43, ptr @44, ptr @45, ptr @46, ptr @47, ptr @48, ptr @49, ptr @50, ptr @51, ptr @52, ptr @53, ptr @54, ptr @55, ptr @56, ptr @57, ptr @58, ptr @59, ptr @60, ptr @61, ptr @62, ptr @63, ptr @64, ptr @65, ptr @66, ptr @67, ptr @68, ptr @69, ptr poison, ptr @70, ptr @71, ptr @72, ptr @73, ptr @74, ptr @75, ptr @76, ptr @77, ptr @78, ptr @79, ptr @80, ptr @81, ptr @82, ptr @83, ptr @84, ptr @85, ptr poison, ptr @86, ptr @87, ptr @88, ptr @89, ptr @90, ptr @91, ptr @92, ptr @93, ptr @94, ptr @95, ptr @96, ptr @97, ptr @98, ptr @99, ptr @100, ptr @101, ptr @102, ptr @103, ptr @104, ptr @105, ptr @106, ptr @107, ptr @108, ptr @109, ptr @110, ptr @111, ptr @112, ptr @113, ptr @114, ptr @115, ptr @116, ptr @117, ptr @118, ptr @119, ptr @120, ptr @121, ptr @122, ptr @123, ptr @124, ptr @125, ptr @126, ptr @127, ptr @128, ptr @129, ptr @130, ptr @131, ptr @132, ptr @133, ptr @134, ptr @135, ptr @136, ptr @137, ptr @138, ptr @139, ptr @140, ptr @141, ptr @142, ptr @143, ptr @144, ptr @145, ptr @146, ptr @147, ptr @148, ptr @149, ptr @150, ptr @151, ptr @152, ptr @153, ptr @154], align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsjleIA2Nr5aN_3nix = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsjleIA2Nr5aN_3nix.25 = private unnamed_addr constant [6 x ptr] [ptr @166, ptr @167, ptr @168, ptr @169, ptr @170, ptr @171], align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXsf_NtCslRtAOKA59qD_8bitflags6traitssNtNtB8_6parser8WriteHex9write_hexQNtNtCshzWfHUSfYae_4core3fmt9FormatterECsjleIA2Nr5aN_3nix(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXNtCshzWfHUSfYae_4core3fmtQNtB2_9FormatterNtB2_5Write9write_fmtCsjleIA2Nr5aN_3nix.exit:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1o_NtCshzWfHUSfYae_4core3fmtRsNtB6_8LowerHex3fmtCsjleIA2Nr5aN_3nix, ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %.val.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i, ptr noundef nonnull @3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXsm_NtCslRtAOKA59qD_8bitflags6traitsmNtNtB8_6parser8WriteHex9write_hexQNtNtCshzWfHUSfYae_4core3fmt9FormatterECsjleIA2Nr5aN_3nix(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXNtCshzWfHUSfYae_4core3fmtQNtB2_9FormatterNtB2_5Write9write_fmtCsjleIA2Nr5aN_3nix.exit:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1o_NtCshzWfHUSfYae_4core3fmtRmNtB6_8LowerHex3fmtCsjleIA2Nr5aN_3nix, ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %.val.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i, ptr noundef nonnull @3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXsn_NtCslRtAOKA59qD_8bitflags6traitslNtNtB8_6parser8WriteHex9write_hexQNtNtCshzWfHUSfYae_4core3fmt9FormatterECsjleIA2Nr5aN_3nix(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXNtCshzWfHUSfYae_4core3fmtQNtB2_9FormatterNtB2_5Write9write_fmtCsjleIA2Nr5aN_3nix.exit:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1o_NtCshzWfHUSfYae_4core3fmtRlNtB6_8LowerHex3fmtCsjleIA2Nr5aN_3nix, ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %.val.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i, ptr noundef nonnull @3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXsu_NtCslRtAOKA59qD_8bitflags6traitsyNtNtB8_6parser8WriteHex9write_hexQNtNtCshzWfHUSfYae_4core3fmt9FormatterECsjleIA2Nr5aN_3nix(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXNtCshzWfHUSfYae_4core3fmtQNtB2_9FormatterNtB2_5Write9write_fmtCsjleIA2Nr5aN_3nix.exit:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1o_NtCshzWfHUSfYae_4core3fmtRyNtB6_8LowerHex3fmtCsjleIA2Nr5aN_3nix, ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %.val.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i, ptr noundef nonnull @3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsjleIA2Nr5aN_3nix(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvMNtCsjleIA2Nr5aN_3nix4pollNtB2_6PollFd3all(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i16, ptr %i.a, align 2, !alias.scope !14, !noundef !4 ; 2 uses
  %i.c = icmp ult i16 %i.b, 1024
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i16, ptr %i.d, align 4, !alias.scope !15, !noundef !4 ; 3 uses
  %i.f = icmp ult i16 %i.e, 1024
  br i1 %i.f, label %_RNvMNtCsjleIA2Nr5aN_3nix4pollNtB2_6PollFd6events.exit4, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19, !noalias !15
  unreachable

_RNvMNtCsjleIA2Nr5aN_3nix4pollNtB2_6PollFd6events.exit4: ; preds = %bb.b
  %i.g = and i16 %i.e, %i.b
  %i.h = icmp eq i16 %i.g, %i.e
  %i.i = zext i1 %i.h to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMNtCsjleIA2Nr5aN_3nix4pollNtB2_6PollFd6events.exit4
  %.sroa.0.0 = phi i8 [ %i.i, %_RNvMNtCsjleIA2Nr5aN_3nix4pollNtB2_6PollFd6events.exit4 ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 0, 3) i8 @_RNvMNtCsjleIA2Nr5aN_3nix4pollNtB2_6PollFd3any(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i16, ptr %i.a, align 2, !alias.scope !18, !noundef !4 ; 2 uses
  %i.c = icmp ult i16 %i.b, 1024
  %i.d = icmp ne i16 %i.b, 0
  %i.e = zext i1 %i.d to i8
  %.sroa.0.0 = select i1 %i.c, i8 %i.e, i8 2
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i16 0, 1024) i16 @_RNvMNtCsjleIA2Nr5aN_3nix4pollNtB2_6PollFd6events(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i16, ptr %i.a, align 4, !noundef !4 ; 2 uses
  %i.c = icmp ult i16 %i.b, 1024
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i16 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i16, i16 } @_RNvMNtCsjleIA2Nr5aN_3nix4pollNtB2_6PollFd7revents(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i16, ptr %i.a, align 2, !noundef !4 ; 2 uses
  %i.c = icmp ult i16 %i.b, 1024
  %. = zext i1 %i.c to i16
  %i.d = insertvalue { i16, i16 } poison, i16 %., 0
  %i.e = insertvalue { i16, i16 } %i.d, i16 %i.b, 1
  ret { i16, i16 } %i.e
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMNtNtCsjleIA2Nr5aN_3nix3sys8signalfdNtB2_8SignalFd10with_flags(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i32 @signalfd(i32 noundef -1, ptr noundef nonnull readonly align 8 dereferenceable(128) %0, i32 noundef %1) #20 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1                     ; 2 uses
  br i1 %i.b, label %_RINvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB3_6consts5Errno6resultlEB5_.exit.thread.i, label %_RINvNtNtCsjleIA2Nr5aN_3nix3sys8signalfd9__signalfdNtNtNtNtCscAsMj0W7j8b_3std2os2fd5owned7OwnedFdEB6_.exit

_RINvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB3_6consts5Errno6resultlEB5_.exit.thread.i: ; preds = %bb.a
  %i.c = tail call noundef i32 @_RNvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB2_6consts5Errno4last()
  br label %_RINvNtNtCsjleIA2Nr5aN_3nix3sys8signalfd9__signalfdNtNtNtNtCscAsMj0W7j8b_3std2os2fd5owned7OwnedFdEB6_.exit

_RINvNtNtCsjleIA2Nr5aN_3nix3sys8signalfd9__signalfdNtNtNtNtCscAsMj0W7j8b_3std2os2fd5owned7OwnedFdEB6_.exit: ; preds = %bb.a, %_RINvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB3_6consts5Errno6resultlEB5_.exit.thread.i
  %.sroa.3.0.i6.i = phi i32 [ %i.c, %_RINvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB3_6consts5Errno6resultlEB5_.exit.thread.i ], [ %i.a, %bb.a ]
  %. = zext i1 %i.b to i32
  %i.d = insertvalue { i32, i32 } poison, i32 %., 0
  %i.e = insertvalue { i32, i32 } %i.d, i32 %.sroa.3.0.i6.i, 1
  ret { i32, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsjleIA2Nr5aN_3nix3sys8signalfdNtB2_8SignalFd11read_signal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %1, align 4, !range !6, !noundef !4
  %i.c = call noundef i64 @read(i32 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 128) #20
  switch i64 %i.c, label %bb.d [
    i64 -1, label %bb.b
    i64 128, label %bb.c
  ], !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_RNvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB2_6consts5Errno4last(), !noalias !21 ; 2 uses
  %i.e = icmp eq i32 %i.d, 11
  br i1 %i.e, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
end_hunk_0
begin_hunk_1_@_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjleIA2Nr5aN_3nix:bb.a
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !25
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  br i1 %2, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.j, %bb.k, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.j ], [ 0, %bb.k ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %bb.h ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.k:                                             ; preds = %bb.i
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsjleIA2Nr5aN_3nix3sys4waitNtB4_10WaitStatus8from_raw(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 127                          ; 3 uses
  switch i32 %i.a, label %bb.e [
    i32 0, label %bb.b
    i32 127, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %2, 8
  %i.c = and i32 %i.b, 255
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.o, %bb.b
  %.sroa.11.0 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.o ], [ undef, %bb.f ]
  %.sroa.7.0 = phi i8 [ undef, %bb.b ], [ %i.w, %bb.o ], [ undef, %bb.f ]
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.o ], [ 5, %bb.f ]
  store i8 %.sroa.0.0, ptr %0, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.81.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %.sroa.81.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 4
  br label %_RNvNvMs_NtNtCsjleIA2Nr5aN_3nix3sys4waitNtB6_10WaitStatus8from_raw14decode_stopped.exit

bb.d:                                             ; preds = %bb.a
  %i.d = and i32 %2, 255
  %i.e = icmp eq i32 %i.d, 127
  br i1 %i.e, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.a, -32
  %i.g = icmp ult i32 %i.f, -31
  br i1 %i.g, label %bb.n, label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq i32 %2, 65535
  br i1 %i.h, label %bb.c, label %bb.m, !prof !5

bb.g:                                             ; preds = %bb.d
  %i.i = ashr i32 %2, 16                          ; 2 uses
  %i.j = and i32 %2, 65280
  %i.k = icmp eq i32 %i.j, 34048
  br i1 %i.k, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = icmp eq i32 %i.i, 0
  %i.m = lshr i32 %2, 8                           ; 3 uses
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -32
  %i.o = icmp ult i32 %i.n, -31
  br i1 %i.o, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.p = and i32 %i.m, 255                        ; 2 uses
  %i.q = add nsw i32 %i.p, -32
  %i.r = icmp ult i32 %i.q, -31
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 22, ptr %i.s, align 4, !alias.scope !28
  store i8 -1, ptr %0, align 4, !alias.scope !28
  br label %_RNvNvMs_NtNtCsjleIA2Nr5aN_3nix3sys4waitNtB6_10WaitStatus8from_raw14decode_stopped.exit

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.sroa.12.0.i = phi i32 [ undef, %bb.i ], [ undef, %bb.g ], [ %i.p, %bb.j ]
  %.sroa.10.0.i = phi i32 [ %i.m, %bb.i ], [ undef, %bb.g ], [ %i.i, %bb.j ]
  %.sroa.0.0.i = phi i8 [ 2, %bb.i ], [ 4, %bb.g ], [ 3, %bb.j ]
  store i8 %.sroa.0.0.i, ptr %0, align 4, !alias.scope !28
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %.sroa.71.0..sroa_idx.i, align 4, !alias.scope !28
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !28
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.12.0.i, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !28
  br label %_RNvNvMs_NtNtCsjleIA2Nr5aN_3nix3sys4waitNtB6_10WaitStatus8from_raw14decode_stopped.exit

bb.m:                                             ; preds = %bb.f
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
  unreachable

bb.n:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 22, ptr %i.t, align 4
  store i8 -1, ptr %0, align 4
  br label %_RNvNvMs_NtNtCsjleIA2Nr5aN_3nix3sys4waitNtB6_10WaitStatus8from_raw14decode_stopped.exit

bb.o:                                             ; preds = %bb.e
  %i.u = and i32 %2, 128
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i8
  br label %bb.c

_RNvNvMs_NtNtCsjleIA2Nr5aN_3nix3sys4waitNtB6_10WaitStatus8from_raw14decode_stopped.exit: ; preds = %bb.l, %bb.k, %bb.n, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvNtCsjleIA2Nr5aN_3nix4poll5ppoll(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(136) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %2, align 8, !range !29, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = load i64, ptr %3, align 8, !range !29, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.01.0 = select i1 %i.e, ptr %i.f, ptr null
  %i.g = tail call noundef i32 @ppoll(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %.sroa.0.0, ptr noundef %.sroa.01.0) #20 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RINvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB3_6consts5Errno6resultlEB5_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_RNvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB2_6consts5Errno4last()
  br label %_RINvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB3_6consts5Errno6resultlEB5_.exit

_RINvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB3_6consts5Errno6resultlEB5_.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i32 [ %i.i, %bb.b ], [ %i.g, %bb.a ]
  %.sroa.0.0.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.j = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.k = insertvalue { i32, i32 } %i.j, i32 %.sroa.3.0.i, 1
  ret { i32, i32 } %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef ptr @_RNvNtCsjleIA2Nr5aN_3nix5errno14errno_location() unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @__errno_location() #20
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvNtCsjleIA2Nr5aN_3nix5errno4desc(i32 noundef range(i32 0, 134) %0) unnamed_addr #3 {
switch.lookup:
  %trunc = trunc nuw i32 %0 to i8
  %switch.tableidx = xor i8 %trunc, -128          ; 2 uses
  %i.a = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCsjleIA2Nr5aN_3nix5errno4desc, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtCsjleIA2Nr5aN_3nix5errno4desc.24, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.c = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %switch.ext, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvNtCsjleIA2Nr5aN_3nix5errno5errno() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB2_6consts5Errno8last_raw()
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsjleIA2Nr5aN_3nix3sys4wait4wait(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  store i32 0, ptr %i.a, align 4, !noalias !36
  %i.b = call noundef i32 @waitpid(i32 noundef -1, ptr noundef nonnull %i.a, i32 noundef 0) #20, !noalias !36 ; 3 uses
  switch i32 %i.b, label %bb.d [
    i32 -1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i32 @_RNvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB2_6consts5Errno4last(), !noalias !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.d, align 4, !alias.scope !36
  store i8 -1, ptr %0, align 4, !alias.scope !36
  br label %_RINvNtNtCsjleIA2Nr5aN_3nix3sys4wait7waitpidINtNtCshzWfHUSfYae_4core6option6OptionNtNtB6_6unistd3PidEEB6_.exit

bb.c:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 4, !alias.scope !36
  br label %_RINvNtNtCsjleIA2Nr5aN_3nix3sys4wait7waitpidINtNtCshzWfHUSfYae_4core6option6OptionNtNtB6_6unistd3PidEEB6_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !noalias !36, !noundef !4 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.f = and i32 %i.e, 127                        ; 3 uses
  switch i32 %i.f, label %bb.h [
    i32 0, label %bb.e
    i32 127, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = lshr i32 %i.e, 8
  %i.h = and i32 %i.g, 255
  br label %bb.f

bb.f:                                             ; preds = %bb.r, %bb.i, %bb.e
  %.sroa.11.0.i.i = phi i32 [ %i.h, %bb.e ], [ %i.f, %bb.r ], [ undef, %bb.i ]
  %.sroa.7.0.i.i = phi i8 [ undef, %bb.e ], [ %i.ab, %bb.r ], [ undef, %bb.i ]
  %.sroa.0.0.i14.i = phi i8 [ 0, %bb.e ], [ 1, %bb.r ], [ 5, %bb.i ]
  store i8 %.sroa.0.0.i14.i, ptr %0, align 4, !alias.scope !38
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 1, !alias.scope !38
  %.sroa.81.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %.sroa.81.0..sroa_idx.i.i, align 4, !alias.scope !38
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.11.0.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !alias.scope !38
  br label %_RINvNtNtCsjleIA2Nr5aN_3nix3sys4wait7waitpidINtNtCshzWfHUSfYae_4core6option6OptionNtNtB6_6unistd3PidEEB6_.exit

bb.g:                                             ; preds = %bb.d
  %i.i = and i32 %i.e, 255
  %i.j = icmp eq i32 %i.i, 127
  br i1 %i.j, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.f, -32
  %i.l = icmp ult i32 %i.k, -31
  br i1 %i.l, label %bb.q, label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.m = icmp eq i32 %i.e, 65535
  br i1 %i.m, label %bb.f, label %bb.p, !prof !5

bb.j:                                             ; preds = %bb.g
  %i.n = ashr i32 %i.e, 16                        ; 2 uses
  %i.o = and i32 %i.e, 65280
  %i.p = icmp eq i32 %i.o, 34048
  br i1 %i.p, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = icmp eq i32 %i.n, 0
  %i.r = lshr i32 %i.e, 8                         ; 3 uses
  br i1 %i.q, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -32
  %i.t = icmp ult i32 %i.s, -31
  br i1 %i.t, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.u = and i32 %i.r, 255                        ; 2 uses
  %i.v = add nsw i32 %i.u, -32
  %i.w = icmp ult i32 %i.v, -31
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 22, ptr %i.x, align 4, !alias.scope !39
  store i8 -1, ptr %0, align 4, !alias.scope !39
  br label %_RINvNtNtCsjleIA2Nr5aN_3nix3sys4wait7waitpidINtNtCshzWfHUSfYae_4core6option6OptionNtNtB6_6unistd3PidEEB6_.exit

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.j
  %.sroa.12.0.i.i.i = phi i32 [ undef, %bb.l ], [ undef, %bb.j ], [ %i.u, %bb.m ]
  %.sroa.10.0.i.i.i = phi i32 [ %i.r, %bb.l ], [ undef, %bb.j ], [ %i.n, %bb.m ]
  %.sroa.0.0.i.i.i = phi i8 [ 2, %bb.l ], [ 4, %bb.j ], [ 3, %bb.m ]
  store i8 %.sroa.0.0.i.i.i, ptr %0, align 4, !alias.scope !39
  %.sroa.71.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %.sroa.71.0..sroa_idx.i.i.i, align 4, !alias.scope !39
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.10.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !alias.scope !39
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.12.0.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 4, !alias.scope !39
  br label %_RINvNtNtCsjleIA2Nr5aN_3nix3sys4wait7waitpidINtNtCshzWfHUSfYae_4core6option6OptionNtNtB6_6unistd3PidEEB6_.exit

bb.p:                                             ; preds = %bb.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19, !noalias !38
  unreachable

bb.q:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 22, ptr %i.y, align 4, !alias.scope !38
  store i8 -1, ptr %0, align 4, !alias.scope !38
  br label %_RINvNtNtCsjleIA2Nr5aN_3nix3sys4wait7waitpidINtNtCshzWfHUSfYae_4core6option6OptionNtNtB6_6unistd3PidEEB6_.exit

bb.r:                                             ; preds = %bb.h
  %i.z = and i32 %i.e, 128
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i8
  br label %bb.f

_RINvNtNtCsjleIA2Nr5aN_3nix3sys4wait7waitpidINtNtCshzWfHUSfYae_4core6option6OptionNtNtB6_6unistd3PidEEB6_.exit: ; preds = %bb.b, %bb.c, %bb.f, %bb.n, %bb.o, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsjleIA2Nr5aN_3nix3sys4wait6waitid(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 5) %1, i32 %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 6 uses
  %i.b = alloca [128 x i8], align 8               ; 8 uses
  switch i32 %1, label %default.unreachable16 [
    i32 0, label %bb.e
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
  ], !prof !43

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %2, -1
  tail call void @llvm.assume(i1 %i.c)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #19
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.04.0 = phi i32 [ %2, %bb.c ], [ %2, %bb.b ], [ %1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.d = call noundef i32 @waitid(i32 noundef %1, i32 noundef %.sroa.04.0, ptr noundef nonnull %i.a, i32 noundef %3) #20
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = call noundef i32 @_RNvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB2_6consts5Errno4last()
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.g, align 4
  store i8 -1, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs_NtNtCsjleIA2Nr5aN_3nix3sys4waitNtB4_10WaitStatus12from_siginfo.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !45, !noalias !44, !noundef !4 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 6, ptr %0, align 4, !alias.scope !44, !noalias !45
  br label %_RNvMs_NtNtCsjleIA2Nr5aN_3nix3sys4waitNtB4_10WaitStatus12from_siginfo.exit

bb.i:                                             ; preds = %bb.g
  %i.k = load i32, ptr %i.b, align 8, !alias.scope !45, !noalias !44, !noundef !4
  %i.l = icmp eq i32 %i.k, 17
  br i1 %i.l, label %bb.j, label %bb.k, !prof !5
end_hunk_1
