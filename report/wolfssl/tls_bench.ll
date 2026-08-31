Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls_bench?download=true
inline.NumInlined: 42
inline.NumDeleted: 17
begin_hunk_0

%struct.timeval = type { i64, i64 }
%struct.stats_t = type { double, double, double, i32, i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.func_args = type { i32, ptr, i32, ptr, ptr }

@myoptind = dso_local local_unnamed_addr global i32 0, align 4
@myoptarg = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"?udeil:p:t:vT:sch:P:mS:g\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid packet size %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Running TLS Benchmarks...\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Cipher: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"TLS13\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s L%d error %d for \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/wolfssl/wolfssl/examples/benchmark/tls_bench.c\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"wolfSSL_CondInit(&info->to_server.cond)\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"thread call failed\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"wolfSSL_CondInit(&info->to_client.cond)\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"wolfSSL_NewThreadNoJoin(server_thread, info)\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"wolfSSL_NewThreadNoJoin(client_thread, info)\00", align 1
@__const.bench_tls.tv = private unnamed_addr constant %struct.timeval { i64 1, i64 0 }, align 8
@.str.14 = private unnamed_addr constant [32 x i8] c"select for XSELECT_WAIT failed.\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Shutdown complete\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"\0AThread %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Client\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Totals for %d Threads\0A\00", align 1
@.str.20 = private unnamed_addr constant [63 x i8] c"%-6s  %-33s  %-25s  %11s  %9s  %9s  %9s  %9s  %9s  %17s  %15s\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Side\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Cipher\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Total Bytes\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"Num Conns\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Rx ms\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Tx ms\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Rx MB/s\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Tx MB/s\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Connect Total ms\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Connect Avg ms\00", align 1
@mygetopt.next = internal unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [62 x i8] c"tls_bench 5.9.2 NOTE: All files relative to wolfSSL home dir\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"-?          Help, print this usage\0A\00", align 1
@.str.36 = private unnamed_addr constant [63 x i8] c"-c          Run as client only, no threading and uses sockets\0A\00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"-s          Run as server only, no threading and uses sockets\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"-h          Host (default %s)\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"-P          Port (default %d)\0A\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"-e          List Every cipher suite available\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"-i          Show peer info\0A\00", align 1
@.str.42 = private unnamed_addr constant [71 x i8] c"-g          Run through each of the TLS 1.3 groups that are available\0A\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"-l <str>    Cipher suite list (: delimited)\0A\00", align 1
@.str.44 = private unnamed_addr constant [64 x i8] c"-t <num>    Time <num> (seconds) to run each test (default %d)\0A\00", align 1
@.str.45 = private unnamed_addr constant [66 x i8] c"-p <num>    The packet size <num> in bytes [1-16kB] (default %d)\0A\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"-S <num>    The total size <num> in bytes (default %d)\0A\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"-v          Show verbose output\0A\00", align 1
@.str.48 = private unnamed_addr constant [65 x i8] c"-T <num>    Number of threaded server/client pairs (default %d)\0A\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"-m          Use local memory, not socket\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"Will benchmark the following group: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c"Will NOT benchmark the following group: %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"ERROR: failed to create the socket\0A\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"setsockopt SO_REUSEADDR failed\0A\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"ERROR: failed to bind\0A\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"ERROR: failed to listen\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"ECC_SECP160K1\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"ECC_SECP160R1\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"ECC_SECP160R2\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"ECC_SECP192K1\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"ECC_SECP192R1\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"ECC_SECP224K1\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"ECC_SECP224R1\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"ECC_SECP256K1\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"ECC_SECP256R1\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"ECC_SECP384R1\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"ECC_SECP521R1\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"ECC_BRAINPOOLP256R1\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"ECC_BRAINPOOLP384R1\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"ECC_BRAINPOOLP512R1\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"ECC_X25519\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"ECC_X448\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"ECC_BRAINPOOLP256R1TLS13\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"ECC_BRAINPOOLP384R1TLS13\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"ECC_BRAINPOOLP512R1TLS13\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"FFDHE_2048\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"FFDHE_3072\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"FFDHE_4096\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"FFDHE_6144\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"FFDHE_8192\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"SecP256r1MLKEM768\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"SecP384r1MLKEM1024\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"X25519MLKEM768\00", align 1
@groups = internal unnamed_addr global [28 x { i16, [6 x i8], ptr }] [{ i16, [6 x i8], ptr } { i16 15, [6 x i8] zeroinitializer, ptr @.str.57 }, { i16, [6 x i8], ptr } { i16 16, [6 x i8] zeroinitializer, ptr @.str.58 }, { i16, [6 x i8], ptr } { i16 17, [6 x i8] zeroinitializer, ptr @.str.59 }, { i16, [6 x i8], ptr } { i16 18, [6 x i8] zeroinitializer, ptr @.str.60 }, { i16, [6 x i8], ptr } { i16 19, [6 x i8] zeroinitializer, ptr @.str.61 }, { i16, [6 x i8], ptr } { i16 20, [6 x i8] zeroinitializer, ptr @.str.62 }, { i16, [6 x i8], ptr } { i16 21, [6 x i8] zeroinitializer, ptr @.str.63 }, { i16, [6 x i8], ptr } { i16 22, [6 x i8] zeroinitializer, ptr @.str.64 }, { i16, [6 x i8], ptr } { i16 23, [6 x i8] zeroinitializer, ptr @.str.65 }, { i16, [6 x i8], ptr } { i16 24, [6 x i8] zeroinitializer, ptr @.str.66 }, { i16, [6 x i8], ptr } { i16 25, [6 x i8] zeroinitializer, ptr @.str.67 }, { i16, [6 x i8], ptr } { i16 26, [6 x i8] zeroinitializer, ptr @.str.68 }, { i16, [6 x i8], ptr } { i16 27, [6 x i8] zeroinitializer, ptr @.str.69 }, { i16, [6 x i8], ptr } { i16 28, [6 x i8] zeroinitializer, ptr @.str.70 }, { i16, [6 x i8], ptr } { i16 29, [6 x i8] zeroinitializer, ptr @.str.71 }, { i16, [6 x i8], ptr } { i16 30, [6 x i8] zeroinitializer, ptr @.str.72 }, { i16, [6 x i8], ptr } { i16 31, [6 x i8] zeroinitializer, ptr @.str.73 }, { i16, [6 x i8], ptr } { i16 32, [6 x i8] zeroinitializer, ptr @.str.74 }, { i16, [6 x i8], ptr } { i16 33, [6 x i8] zeroinitializer, ptr @.str.75 }, { i16, [6 x i8], ptr } { i16 256, [6 x i8] zeroinitializer, ptr @.str.76 }, { i16, [6 x i8], ptr } { i16 257, [6 x i8] zeroinitializer, ptr @.str.77 }, { i16, [6 x i8], ptr } { i16 258, [6 x i8] zeroinitializer, ptr @.str.78 }, { i16, [6 x i8], ptr } { i16 259, [6 x i8] zeroinitializer, ptr @.str.79 }, { i16, [6 x i8], ptr } { i16 260, [6 x i8] zeroinitializer, ptr @.str.80 }, { i16, [6 x i8], ptr } { i16 4587, [6 x i8] zeroinitializer, ptr @.str.81 }, { i16, [6 x i8], ptr } { i16 4589, [6 x i8] zeroinitializer, ptr @.str.82 }, { i16, [6 x i8], ptr } { i16 4588, [6 x i8] zeroinitializer, ptr @.str.83 }, { i16, [6 x i8], ptr } zeroinitializer], align 16
@.str.85 = private unnamed_addr constant [20 x i8] c"error creating ctx\0A\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"ECDSA\00", align 1
@ca_ecc_cert_der_256 = internal constant [664 x i8] c"0\82\02\940\82\02;\A0\03\02\01\02\02\14)f\97+\07]\F1[7\1E\E8_\10\1C\C4\E9\AA\99\B7s0\0A\06\08*\86H\CE=\04\03\020\81\971\0B0\09\06\03U\04\06\13\02US1\130\11\06\03U\04\08\0C\0AWashington1\100\0E\06\03U\04\07\0C\07Seattle1\100\0E\06\03U\04\0A\0C\07wolfSSL1\140\12\06\03U\04\0B\0C\0BDevelopment1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0\1E\17\0D251113204112Z\17\0D280809204112Z0\81\971\0B0\09\06\03U\04\06\13\02US1\130\11\06\03U\04\08\0C\0AWashington1\100\0E\06\03U\04\07\0C\07Seattle1\100\0E\06\03U\04\0A\0C\07wolfSSL1\140\12\06\03U\04\0B\0C\0BDevelopment1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0Y0\13\06\07*\86H\CE=\02\01\06\08*\86H\CE=\03\01\07\03B\00\04\02\D3\D9n\D6\01\8EE\C8\B9\901\E5\C0L\E3\9E\AD)8\98\BA\10\D6\E9\09*\80\A9.\17*\B9\8A\BF3\83F\E3\95\0B\E4w@\B5;CE3\0FaS|7D\C1\CB\FC\80\CA\E8C\EA\A7\A3c0a0\1D\06\03U\1D\0E\04\16\04\14V\8E\9A\C3\F0B\DE\18\B9EUn\F9\93\CF\EA\C3\F3\A5!0\1F\06\03U\1D#\04\180\16\80\14V\8E\9A\C3\F0B\DE\18\B9EUn\F9\93\CF\EA\C3\F3\A5!0\0F\06\03U\1D\13\01\01\FF\04\050\03\01\01\FF0\0E\06\03U\1D\0F\01\01\FF\04\04\03\02\01\860\0A\06\08*\86H\CE=\04\03\02\03G\000D\02 @UpFz\A1\EB\B5\C8S\A7x\B3\F3\B7\16\92\C5\9B4\90\D5Dh\A7\03\9B\9F\DBx\F0Q\02 a\A8:\C9\FF\FF\E9c\C7\A7\14\D4\19\D2\9EwUG\93\D1zhP\86H\8F;\97\87P\F5B", align 16
@ca_cert_der_2048 = internal constant [1283 x i8] c"0\82\04\FF0\82\03\E7\A0\03\02\01\02\02\14?)\11 Wq\E7\8E\F9\18\0D\CApM[\15*C\D6$0\0D\06\09*\86H\86\F7\0D\01\01\0B\05\000\81\941\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\110\0F\06\03U\04\0A\0C\08Sawtooth1\130\11\06\03U\04\0B\0C\0AConsulting1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0\1E\17\0D251113204111Z\17\0D280809204111Z0\81\941\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\110\0F\06\03U\04\0A\0C\08Sawtooth1\130\11\06\03U\04\0B\0C\0AConsulting1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0\82\01\220\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\03\82\01\0F\000\82\01\0A\02\82\01\01\00\BF\0C\CA-\14\B2\1E\84B[\CD8\1FJ\F2Mu\10\F1\B65\9F\DF\CA}\03\98\D3\AC\DE\03f\EE*\F1\D8\B0}n\07T\0B\10\98!M\80\CB\12 \E7\CCO\DEE}\C9rw2\EA\CA\90\BBiR\10\03/\A8\F3\95\C5\F1\8BbV\1B\EFgo\A4\10A\95\AD\0A\9B\E3\A5\C0\B0\D2pvP0[\A8\E8\08,|\ED\A7\A2z\8D8)\1C\AC\C7\ED\F2|\95\B0\95\82}I\\8\CDw%\EF\BD\80uS\94<=\CAc[\9F\15\B5\D3\1D\13/\19\D1<\DBv:\CC\B8}\C9\E5\C2\D7\DA@o\D8!\DCs\1BB-S\9C\FE\1A\FC}\ABz6?\98\DE\84|\05g\CEj\148\87\A9\F1\8C\B5h\CBh\7Fq +\F5\A0c\F5V/\A3&\D2\B7o\B1Z\17\D78\99\08\FE\93Xo\FE\C3\13I\08\16\0B\A7Mg\00R1g#N\98\EDQE\1D\B9\04\D9\0B\EC\D8(\B3K\BD\ED6y\02\03\01\00\01\A3\82\01E0\82\01A0\1D\06\03U\1D\0E\04\16\04\14'\8Eg\11t\C3&\1D?\ED3c\B3\A4\D8\1D0\E5\E8\D50\81\D4\06\03U\1D#\04\81\CC0\81\C9\80\14'\8Eg\11t\C3&\1D?\ED3c\B3\A4\D8\1D0\E5\E8\D5\A1\81\9A\A4\81\970\81\941\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\110\0F\06\03U\04\0A\0C\08Sawtooth1\130\11\06\03U\04\0B\0C\0AConsulting1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com\82\14?)\11 Wq\E7\8E\F9\18\0D\CApM[\15*C\D6$0\0C\06\03U\1D\13\04\050\03\01\01\FF0\1C\06\03U\1D\11\04\150\13\82\0Bexample.com\87\04\7F\00\00\010\1D\06\03U\1D%\04\160\14\06\08+\06\01\05\05\07\03\01\06\08+\06\01\05\05\07\03\020\0D\06\09*\86H\86\F7\0D\01\01\0B\05\00\03\82\01\01\00\0F\AE\89\D5h\E4A\F8\9B\E0\C5a\06W\FF\A0\92\0F\B2\ED\D3\99[\99^2~\97\C7\AFl\FE\8C\A6\AE2\A1\0D\CA\CD\FC\18\E5\D1\F8 [Z8\81F[H\87\A5?;{\C7\EA\F55)1\1598]H\E6\01\81\\^|\10\F5\16\E3Y\AFD\C8\B5\8D\C12#\B3\B8\12n\\\8D\E6\C2\D2A\03\EB\17B\E2\7F\BC\00]\A51\EF\C6H\EE\DB\CC\E0\F1V\F5\D4\CAE\A1Y\B5\E4\D7`\9CW\E0\A7Z\F25\1E\A0\22\DB^\1C\0Ca\BD\A1\C5{\9Fi\F2\D5\95\E2\BCR\B9\1D\9C,\DA\B6suJ\84\E5\94\B8\19M\DDp\BD\7FL\B9\17jX\16\89\22D7WU&B\E3\B7\E5\C7+@\0C\E9\E4\7FRu\DF\06\C9\FB\01D4\AC <\B4\BE+>\EF\858\96[\9B\1E%\86\18L\A4\06p\06j\C8Ko_\C4\05\1F\03b0\11a\BC\C1@1f\DCd\F0Ok\B9\EC\C8)", align 16
@.str.87 = private unnamed_addr constant [18 x i8] c"error loading CA\0A\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"error setting cipher suite\0A\00", align 1
@.str.89 = private unnamed_addr constant [35 x i8] c"Error setting minimum DH key size\0A\00", align 1
@.str.90 = private unnamed_addr constant [33 x i8] c"failed to allocate write memory\0A\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"failed to allocate read memory\0A\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"error creating client object\0A\00", align 1
@.str.93 = private unnamed_addr constant [33 x i8] c"error setting client key share.\0A\00", align 1
@.str.94 = private unnamed_addr constant [25 x i8] c"error connecting client\0A\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"Sending shutdown\0A\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"error on client write\0A\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"error on client read\0A\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"echo check failed!\0A\00", align 1
@.str.99 = private unnamed_addr constant [23 x i8] c"Client Error: %d (%s)\0A\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"gettimeofday(&tv, 0)\00", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"library/system call failed\00", align 1
@.str.102 = private unnamed_addr constant [41 x i8] c"wolfSSL_CondStart(&info->to_server.cond)\00", align 1
@.str.103 = private unnamed_addr constant [33 x i8] c"ClientMemSend overflow %d %d %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [39 x i8] c"wolfSSL_CondEnd(&info->to_server.cond)\00", align 1
@.str.105 = private unnamed_addr constant [42 x i8] c"wolfSSL_CondSignal(&info->to_server.cond)\00", align 1
@.str.106 = private unnamed_addr constant [41 x i8] c"wolfSSL_CondStart(&info->to_client.cond)\00", align 1
@.str.107 = private unnamed_addr constant [40 x i8] c"wolfSSL_CondWait(&info->to_client.cond)\00", align 1
@.str.108 = private unnamed_addr constant [39 x i8] c"wolfSSL_CondEnd(&info->to_client.cond)\00", align 1
@.str.109 = private unnamed_addr constant [33 x i8] c"Waiting for server to listen...\0A\00", align 1
@__const.SetupSocketAndConnect.tv = private unnamed_addr constant %struct.timeval { i64 0, i64 1000 }, align 8
@.str.110 = private unnamed_addr constant [33 x i8] c"ERROR: server side has shutdown\0A\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"ERROR: failed to connect\0A\00", align 1
@.str.112 = private unnamed_addr constant [28 x i8] c"Connected to %s on port %d\0A\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"%s %d bits\0A\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"SSL version is\00", align 1
@.str.116 = private unnamed_addr constant [20 x i8] c"SSL cipher suite is\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"SSL curve name is\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"SSL DH size is\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"SSL reused session\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.131 = private unnamed_addr constant [4535 x i8] c"Biodiesel cupidatat marfa, cliche aute put a bird on it incididunt elit\0Apolaroid. Sunt tattooed bespoke reprehenderit. Sint twee organic id\0Amarfa. Commodo veniam ad esse gastropub. 3 wolf moon sartorial vero,\0Aplaid delectus biodiesel squid +1 vice. Post-ironic keffiyeh leggings\0Aselfies cray fap hoodie, forage anim. Carles cupidatat shoreditch, VHS\0Asmall batch meggings kogi dolore food truck bespoke gastropub.\0A\0ATerry richardson adipisicing actually typewriter tumblr, twee whatever\0Afour loko you probably haven't heard of them high life. Messenger bag\0Awhatever tattooed deep v mlkshk. Brooklyn pinterest assumenda chillwave\0Aet, banksy ullamco messenger bag umami pariatur direct trade forage.\0ATypewriter culpa try-hard, pariatur sint brooklyn meggings. Gentrify\0Afood truck next level, tousled irony non semiotics PBR ethical anim cred\0Areadymade. Mumblecore brunch lomo odd future, portland organic terry\0Arichardson elit leggings adipisicing ennui raw denim banjo hella. Godard\0Amixtape polaroid, pork belly readymade organic cray typewriter helvetica\0Afour loko whatever street art yr farm-to-table.\0A\0AVinyl keytar vice tofu. Locavore you probably haven't heard of them pug\0Apickled, hella tonx labore truffaut DIY mlkshk elit cosby sweater sint\0Aet mumblecore. Elit swag semiotics, reprehenderit DIY sartorial nisi ugh\0Anesciunt pug pork belly wayfarers selfies delectus. Ethical hoodie\0Aseitan fingerstache kale chips. Terry richardson artisan williamsburg,\0Aeiusmod fanny pack irony tonx ennui lo-fi incididunt tofu YOLO\0Areadymade. 8-bit sed ethnic beard officia. Pour-over iphone DIY butcher,\0Aethnic art party qui letterpress nisi proident jean shorts mlkshk\0Alocavore.\0A\0ANarwhal flexitarian letterpress, do gluten-free voluptate next level\0Abanh mi tonx incididunt carles DIY. Odd future nulla 8-bit beard ut\0Acillum pickled velit, YOLO officia you probably haven't heard of them\0Atrust fund gastropub. Nisi adipisicing tattooed, Austin mlkshk 90's\0Asmall batch american apparel. Put a bird on it cosby sweater before they\0Asold out pork belly kogi hella. Street art mollit sustainable polaroid,\0ADIY ethnic ea pug beard dreamcatcher cosby sweater magna scenester nisi.\0ASed pork belly skateboard mollit, labore proident eiusmod. Sriracha\0Aexcepteur cosby sweater, anim deserunt laborum eu aliquip ethical et\0Aneutra PBR selvage.\0A\0ARaw denim pork belly truffaut, irony plaid sustainable put a bird on it\0Anext level jean shorts exercitation. Hashtag keytar whatever, nihil\0Aauthentic aliquip disrupt laborum. Tattooed selfies deserunt trust fund\0Awayfarers. 3 wolf moon synth church-key sartorial, gastropub leggings\0Atattooed. Labore high life commodo, meggings raw denim fingerstache pug\0Atrust fund leggings seitan forage. Nostrud ullamco duis, reprehenderit\0Aincididunt flannel sustainable helvetica pork belly pug banksy you\0Aprobably haven't heard of them nesciunt farm-to-table. Disrupt nostrud\0Amollit magna, sriracha sartorial helvetica.\0A\0ANulla kogi reprehenderit, skateboard sustainable duis adipisicing viral\0Aad fanny pack salvia. Fanny pack trust fund you probably haven't heard\0Aof them YOLO vice nihil. Keffiyeh cray lo-fi pinterest cardigan aliqua,\0Areprehenderit aute. Culpa tousled williamsburg, marfa lomo actually anim\0Askateboard. Iphone aliqua ugh, semiotics pariatur vero readymade\0Aorganic. Marfa squid nulla, in laborum disrupt laboris irure gastropub.\0AVeniam sunt food truck leggings, sint vinyl fap.\0A\0AHella dolore pork belly, truffaut carles you probably haven't heard of\0Athem PBR helvetica in sapiente. Fashion axe ugh bushwick american\0Aapparel. Fingerstache sed iphone, jean shorts blue bottle nisi bushwick\0Aflexitarian officia veniam plaid bespoke fap YOLO lo-fi. Blog\0Aletterpress mumblecore, food truck id cray brooklyn cillum ad sed.\0AAssumenda chambray wayfarers vinyl mixtape sustainable. VHS vinyl\0Adelectus, culpa williamsburg polaroid cliche swag church-key synth kogi\0Amagna pop-up literally. Swag thundercats ennui shoreditch vegan\0Apitchfork neutra truffaut etsy, sed single-origin coffee craft beer.\0A\0AOdio letterpress brooklyn elit. Nulla single-origin coffee in occaecat\0Ameggings. Irony meggings 8-bit, chillwave lo-fi adipisicing cred\0Adreamcatcher veniam. Put a bird on it irony umami, trust fund bushwick\0Alocavore kale chips. Sriracha swag thundercats, chillwave disrupt\0Atousled beard mollit mustache leggings portland next level. Nihil esse\0Aest, skateboard art party etsy thundercats sed dreamcatcher ut iphone\0Aswag consectetur et. Irure skateboard banjo, nulla deserunt messenger\0Abag dolor terry richardson sapiente.\0A\00", align 1
@.str.132 = private unnamed_addr constant [27 x i8] c"error creating server ctx\0A\00", align 1
@ecc_key_der_256 = internal constant [121 x i8] c"0w\02\01\01\04 E\B6i\02s\9Cl\85\A18[r\E8\E8\C7\AC\C4\03\8DS5\04\FAl(\DC4\8D\E1\A8\09\8C\A0\0A\06\08*\86H\CE=\03\01\07\A1D\03B\00\04\BB3\ACL'PJ\C6J\A5\04\C3<\DE\9F6\DBr-\CE\94\EA+\FA\CB \099,\16\E8a\02\E9\AFM\D3\02\93\9A1[\97\92!\7F\F0\CF\18\DA\91\11\024\86\E8 X3\0B\804\89\D8", align 16
@server_key_der_2048 = internal constant [1193 x i8] c"0\82\04\A5\02\01\00\02\82\01\01\00\C0\95\08\E1WA\F2qm\B7\D2EA'\01e\C6E\AE\F2\BC$0\B8\95\CE/N\D6\F6\1C\88\BC|\9F\FB\A8g\7F\FE\\\9CQu\F7\8A\CA\07\E75/\8F\E1\BD{\C0/|\ABd\A8\17\FC\CA]{\BA\E0!\E5r.o.\86\D8\95s\DA\AC\1BS\B9_?\D7\19\0D%O\E1ccQ\8B\0Bd?\ADC\B8\A5\1C\\4\B3\AE\00\A0c\C5\F6\7F\0BYhxs\A6\8C\18\A9\02m\AF\C3\19\01.\B8\10\E3\C6\CC@\B4i\A3F3i\87n\C4\BB\17\A6\F3\E8\DD\ADs\BC{/!\B5\FDfQ\0C\BDT\B3\E1m_\1C\BC#s\D1\09\03\89\14\D2\10\B9d\C3*\D0\A1\96J\BC\E1\D4\1A[\C7\A0\C0\C1cx\0FD702\96\802#\95\A1w\BA\13\D2\97s\E2]%\C9j\0D\C39`\A4\B4\B0iBB\09\E9\D8\08\BC3 \B3X\22\A7\AA\EB\C4\E1\E6a\83\C5\D2\96\DF\D9\D0O\AD\D7\02\03\01\00\01\02\82\01\01\00\9A\D04\0FRb\05P\01\EF\9F\EDdn\C2\C4\DA\1A\F2\84\D7\92\10H\92\C4\E9j\EB\8Bul\C6y8\F2\C9rJ\86dT\95w\CB\C3\9A\9D\B7\D4\1D\A4\00\C8\9EN\E4\DD\C7\BAg\16\C1t\BC\A9\D6\94\8F+0\1A\FB\ED\DF!\05#\D9J9\BD\98ke\9A\B8\DC\C4}\EE\A6C\15.=\BE\1D\22`*s0\D5>\D8\A2\AC\86C.\C4\F5d^?\89u\0F\11\D8Q%N\9F\D8\AA\A3\CE`\B3\E2\8A\D9~\1B\F0d\CA\9A[\05\0B[\AA\CB\E5\E3?n2\22\05\F3\D0\FA\EFtR\81\E2_t\D3\BD\FF1\83Eu\FAcz\97.\D6\B6\19\C6\92&\E4(\06PP\0Ex.\A9x\0D\14\97\B4\12\D81@\AB\A1\01A\C20\F8\07_\16\E4aw\D2`\F2\9F\8D\E8\F4\BA\EBc\DE*\97\81\EFLl\E6U4Q+(4\F4S\1C\C4X\0A?\BB\AF\B5\F7J\85C-<\F1XX\81\02\81\81\00\F2,Tv9#c\C9\102\B7\93\AD\AF\BE\19u\96\81d\E6\B5\B8\89BA\D1m\D0\1C\1B\F8\1B\ACi\CB6<d}\DC\F4\19\B8\C3`\B1WH_ROY:U\7F2\C0\19CP?\AE\CEo\17\F3\0E\9F@\CAN\AD\15;\C9y\E9\C0Y8sp\9C\0A|\C9:H2\A7\D8Iu\0A\85\C2\C2\FD\15s\DA\99\09*i\9A\9F\0Aq\BF\B0\04\A6\8CzZoHZT;\C6\B1S\17\DF\E7\02\81\81\00\CB\93\DEw\15]\B7\\\\|\D8\90\A9\98-\D6i\0Ec\B3\A3\DC\A6\CC\8Bj\A4\A2\12\8C\8E{H,\B2K7\DC\06\18}\EA\FEv\A1\D4\A1\E9?\0D\CD\1B_\AF_\9E\96[[\0F\A1|\AF\B3\9B\90\DBWs:\ED\B0#D\AEAO\1F\07B\13#L\CB\FA\F4\14\A4\D5\F7\9E6|[\9F\A8<\C1\85_t\D29-\FF\D0\84\DF\FB\B3 z.\9B\17\AE\E6\BA\0B\AE_S\A4R\ED\1B\C4\91\02\81\81\00\EC\98\DA\BB\D5\FE\F9RJ}\02UIoUnR/\84\A3+\B3\86b\B3T\D2cR\DA\E3\88v\A0\EF\8B\15\A5\D3\18\14rw^\C7\A3\04\1F\9E\19b\B5\1B\1B\9E\C3\F2\B52\F9L\C1\AA\EB\0C&}\D4_JQ\\\A4E\06pD\A7V\C0\D4\22\14v\9E\D8cP\89\90\D3\E2\BF\81\95\921A\879\1AC\0B\18\A5S\1F9\1A_\1FC\BC\87j\DFn\D3\22\00\FE\22\98pN\1A\19)\02\81\81\00\8AAV(Q\9E_\D4\9E\0B;\98\A3T\F2lV\D4\AA\E9i3\85$\0C\DA\D4\0C-\C4\BFO\02i8|\D4\E6\DCL\ED\D7\16\11\C3>\00\E7\C3&\C0Q\02\DE\BBu\9CoV\9Cz\F3\8E\EF\CF\8A\C5+\D2\DA\06jD\C9s\FEn\99\87\F8[\BE\F1|\E6e\B5Ol\F0\C9\C5\FF\16\CA\8B\1B\17\E2X=\A27\AB\01\BC\BF@\CES\8C\8E\ED\EF\EEY\9D\E0c\E6|^\F5\8EK\F1;\C1\02\81\80ME\F9@\8C\C5[\F4*\1A\8A\B4\F2\1C\ACk\E9\0CV6\B7Nr\96\D5\E5\8A\D2\E2\FF\F1\F1\18\13=\86\09\B8\D8v\A7\C9\1CqR\940C\E0\F1xt\FDa\1BL\09\CC\E6h*q\AD\1C\DFC\BCV\DB\A5\A4\BE5p\A4^\CFO\FC\00U\99:=#\CFgZ\F5\22\F8\B5)\D0D\11\EB5.F\BE\FD\8E\18\B2_\A8\BF\192\A1\F5\DC\03\E6|\9A\1F\0C|\A9\B0\0E!7;\F1\B0", align 16
@.str.133 = private unnamed_addr constant [26 x i8] c"error loading server key\0A\00", align 1
@serv_ecc_der_256 = internal constant [679 x i8] c"0\82\02\A30\82\02H\A0\03\02\01\02\02\01\030\0A\06\08*\86H\CE=\04\03\020\81\971\0B0\09\06\03U\04\06\13\02US1\130\11\06\03U\04\08\0C\0AWashington1\100\0E\06\03U\04\07\0C\07Seattle1\100\0E\06\03U\04\0A\0C\07wolfSSL1\140\12\06\03U\04\0B\0C\0BDevelopment1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0\1E\17\0D251113204115Z\17\0D280809204115Z0\81\901\0B0\09\06\03U\04\06\13\02US1\130\11\06\03U\04\08\0C\0AWashington1\100\0E\06\03U\04\07\0C\07Seattle1\110\0F\06\03U\04\0A\0C\08Elliptic1\0C0\0A\06\03U\04\0B\0C\03ECC1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0Y0\13\06\07*\86H\CE=\02\01\06\08*\86H\CE=\03\01\07\03B\00\04\BB3\ACL'PJ\C6J\A5\04\C3<\DE\9F6\DBr-\CE\94\EA+\FA\CB \099,\16\E8a\02\E9\AFM\D3\02\93\9A1[\97\92!\7F\F0\CF\18\DA\91\11\024\86\E8 X3\0B\804\89\D8\A3\81\890\81\860\1D\06\03U\1D\0E\04\16\04\14]]&\EF\AC~6\F9\9Bv\15+J%\02#\EF\B2\8900\1F\06\03U\1D#\04\180\16\80\14V\8E\9A\C3\F0B\DE\18\B9EUn\F9\93\CF\EA\C3\F3\A5!0\0C\06\03U\1D\13\01\01\FF\04\020\000\0E\06\03U\1D\0F\01\01\FF\04\04\03\02\03\A80\13\06\03U\1D%\04\0C0\0A\06\08+\06\01\05\05\07\03\010\11\06\09`\86H\01\86\F8B\01\01\04\04\03\02\06@0\0A\06\08*\86H\CE=\04\03\02\03I\000F\02!\00\F8/\F49\99\19\97\117\9F\D8\D7\7F\04\A6\CAtY\9A\FE0[M\E51\06U\9C\E8\F6\B4q\02!\00\A1R\C9r\89\C6O\22\E7\BF\97h\DC\FF}\97\15\05\9D\D8V)\F5\DF\DE\A7-\90\D1\C5'0", align 16
@server_cert_der_2048 = internal constant [1260 x i8] c"0\82\04\E80\82\03\D0\A0\03\02\01\02\02\01\010\0D\06\09*\86H\86\F7\0D\01\01\0B\05\000\81\941\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\110\0F\06\03U\04\0A\0C\08Sawtooth1\130\11\06\03U\04\0B\0C\0AConsulting1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0\1E\17\0D251113204113Z\17\0D280809204113Z0\81\901\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\100\0E\06\03U\04\0A\0C\07wolfSSL1\100\0E\06\03U\04\0B\0C\07Support1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com0\82\01\220\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\03\82\01\0F\000\82\01\0A\02\82\01\01\00\C0\95\08\E1WA\F2qm\B7\D2EA'\01e\C6E\AE\F2\BC$0\B8\95\CE/N\D6\F6\1C\88\BC|\9F\FB\A8g\7F\FE\\\9CQu\F7\8A\CA\07\E75/\8F\E1\BD{\C0/|\ABd\A8\17\FC\CA]{\BA\E0!\E5r.o.\86\D8\95s\DA\AC\1BS\B9_?\D7\19\0D%O\E1ccQ\8B\0Bd?\ADC\B8\A5\1C\\4\B3\AE\00\A0c\C5\F6\7F\0BYhxs\A6\8C\18\A9\02m\AF\C3\19\01.\B8\10\E3\C6\CC@\B4i\A3F3i\87n\C4\BB\17\A6\F3\E8\DD\ADs\BC{/!\B5\FDfQ\0C\BDT\B3\E1m_\1C\BC#s\D1\09\03\89\14\D2\10\B9d\C3*\D0\A1\96J\BC\E1\D4\1A[\C7\A0\C0\C1cx\0FD702\96\802#\95\A1w\BA\13\D2\97s\E2]%\C9j\0D\C39`\A4\B4\B0iBB\09\E9\D8\08\BC3 \B3X\22\A7\AA\EB\C4\E1\E6a\83\C5\D2\96\DF\D9\D0O\AD\D7\02\03\01\00\01\A3\82\01E0\82\01A0\1D\06\03U\1D\0E\04\16\04\14\B3\112\C9\92\98\84\E2\C9\F8\D0;n\03B\CA\1F\0E\8E<0\81\D4\06\03U\1D#\04\81\CC0\81\C9\80\14'\8Eg\11t\C3&\1D?\ED3c\B3\A4\D8\1D0\E5\E8\D5\A1\81\9A\A4\81\970\81\941\0B0\09\06\03U\04\06\13\02US1\100\0E\06\03U\04\08\0C\07Montana1\100\0E\06\03U\04\07\0C\07Bozeman1\110\0F\06\03U\04\0A\0C\08Sawtooth1\130\11\06\03U\04\0B\0C\0AConsulting1\180\16\06\03U\04\03\0C\0Fwww.wolfssl.com1\1F0\1D\06\09*\86H\86\F7\0D\01\09\01\16\10info@wolfssl.com\82\14?)\11 Wq\E7\8E\F9\18\0D\CApM[\15*C\D6$0\0C\06\03U\1D\13\04\050\03\01\01\FF0\1C\06\03U\1D\11\04\150\13\82\0Bexample.com\87\04\7F\00\00\010\1D\06\03U\1D%\04\160\14\06\08+\06\01\05\05\07\03\01\06\08+\06\01\05\05\07\03\020\0D\06\09*\86H\86\F7\0D\01\01\0B\05\00\03\82\01\01\00\BB\DE\9B\8D\EBk\17B\A4\DE\1F\9Da\80\80}\F3:^\C1\B9\A2\B4\0D(Z\92N\D6\02G/\99\1AC\FA\A4\8B\D8VE\22\C3\BB\F3}\D4\07\DB\9B\99\0B\015\04\D3\13\D9\ADn\88\B9\89\DB5\ED\E4\BF\12nf\BD\C2\A6\8F\0A\95\8D\F7nnL\FF\FC\D0\B4\D7\EE\C9_\C3D\EF*\9Bo\FAi\FE.\D6\10d\DA\9F\9B3\F0_I\E3o\E1\9E\D5\F7J*\1DL\C8\D0\82\D0\C7\A6T\C0W\F1\A8\E8\D2$\C9Y}\DC<!\CF-\FF6]\14\ED<KtS\F6:%/B\9Dv\FB\DC`,(\EB-\C55e\B5\BC\F1\DCp]\FDv\CE\8C\B6\DA\BB\DE\D7\B1\FF\F0V\DB\1F{A\E8o<K\92M\ED/#F\91\AA|s\98\C1\BF(n\7FP0\E8\B5Q<\AC\CE\B4\B4\C8\836\B7@oh\D0\8F\12c\93\D5\A4B\B9\C5\C6\93U3\ED\84\C1\FC\19\ADp\98\15h\03\9Ee\C9", align 16
@.str.134 = private unnamed_addr constant [27 x i8] c"error loading server cert\0A\00", align 1
@.str.135 = private unnamed_addr constant [30 x i8] c"error creating server object\0A\00", align 1
@.str.136 = private unnamed_addr constant [33 x i8] c"error setting server key share.\0A\00", align 1
@dhp = internal constant [256 x i8] c"\B0\A1\08\06\9C\08\13\BAY\06<\BC0\D5\F5\00\C1OD\A7\D6\EFJ\C6%'\1C\E8\D2\96S\0A\\\91\DD\A2\C2\94\84\BF}\B2D\9F\9B\D2\C1\8A\C5\BEr\\\A7\E7\91\E6\D4\9Fs\07\85[fH\C7p\FA\B4\EE\02\C9=\9AJ\DA=\C1F>\19i\D1\17F\07\A3M\9F+\96\179m0\8D*\F3\94\D3u\CF\A0u\E6\F2\92\1F\1Ap\05\AA\04\83W0\FB\DAv\938P\E8'\FDc\EE<\E5\B7\C8\09\AEoP5\8E\84\CEJ\00\E9\12~Z1\D73\FC!\13v\CC\160\DB\0C\FC\C5b\A75\B8\EF\B7\B0\AC\C06\F6\D9\C9FH\F9@\90\00+\1B\AAl\E3\1A\C3\0B\03\9E\1B\C2F\E4HN\22so\C3_\D4\9A\D60\07H\D6\8C\90\AB\D4\F6\F1\E3H\D3XK\A6\B9\CD)\BFh\1F\08Kc\86/\\k\D6\B6\06e\F7\A6\DC\00gk\BB\C3\A9A\83\FB\C7\FA\C8\E2\1E~\AF\00?\93", align 16
@dhg = internal constant [1 x i8] c"\02", align 1
@.str.137 = private unnamed_addr constant [24 x i8] c"error on server accept\0A\00", align 1
@.str.138 = private unnamed_addr constant [22 x i8] c"Server shutdown done\0A\00", align 1
@.str.139 = private unnamed_addr constant [22 x i8] c"error on server read\0A\00", align 1
@.str.140 = private unnamed_addr constant [23 x i8] c"error on server write\0A\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"Server Error: %d (%s)\0A\00", align 1
@.str.142 = private unnamed_addr constant [24 x i8] c"ServerMemSend overflow\0A\00", align 1
@.str.143 = private unnamed_addr constant [42 x i8] c"wolfSSL_CondSignal(&info->to_client.cond)\00", align 1
@.str.144 = private unnamed_addr constant [40 x i8] c"wolfSSL_CondWait(&info->to_server.cond)\00", align 1
@.str.145 = private unnamed_addr constant [40 x i8] c"ERROR: failed to accept the connection\0A\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"Got client %d\0A\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"wolfSSL error: %s\0A\00", align 1
@.str.148 = private unnamed_addr constant [235 x i8] c"wolfSSL %s Benchmark on %s with group %s:\0A\09Total       : %9d bytes\0A\09Num Conns   : %9d\0A\09Rx Total    : %9.3f ms\0A\09Tx Total    : %9.3f ms\0A\09Rx          : %9.3f MB/s\0A\09Tx          : %9.3f MB/s\0A\09Connect     : %9.3f ms\0A\09Connect Avg : %9.3f ms\0A\00", align 1
@.str.149 = private unnamed_addr constant [75 x i8] c"%-6s  %-33s  %-25s  %11d  %9d  %9.3f  %9.3f  %9.3f  %9.3f  %17.3f  %15.3f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @bench_tls(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  %1 = alloca %struct.stats_t, align 8            ; 9 uses
  %2 = alloca %struct.stats_t, align 8            ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %3 = alloca %struct.timeval, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 -1, ptr %i.b, align 4, !tbaa !9
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %.thread669, label %bb.b

.thread669:                                       ; preds = %bb.a
  %i.c = tail call i32 @wolfSSL_Init() #16        ; 0 uses
  br label %mygetopt.exit.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.g, align 8, !tbaa !18
  %i.h = tail call i32 @wolfSSL_Init() #16        ; 0 uses
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %mygetopt.exit.thread.thread, label %.lr.ph

mygetopt.exit.thread.thread:                      ; preds = %bb.b, %.thread669
  store ptr null, ptr @myoptarg, align 8, !tbaa !19
  store i32 0, ptr @myoptind, align 4, !tbaa !9
  br label %bb.ao

.lr.ph:                                           ; preds = %bb.b, %.lr.ph.backedge
  %.0169422 = phi i32 [ %.0169422.be, %.lr.ph.backedge ], [ 0, %bb.b ] ; 16 uses
  %.0171421 = phi i32 [ %.0171421.be, %.lr.ph.backedge ], [ 0, %bb.b ] ; 20 uses
  %.0175420 = phi i32 [ %.0175420.be, %.lr.ph.backedge ], [ 0, %bb.b ] ; 15 uses
  %.0177419 = phi i32 [ %.0177419.be, %.lr.ph.backedge ], [ 11112, %bb.b ] ; 16 uses
  %.0179418 = phi ptr [ %.0179418.be, %.lr.ph.backedge ], [ @.str, %bb.b ] ; 16 uses
  %.0181417 = phi i32 [ %.0181417.be, %.lr.ph.backedge ], [ 0, %bb.b ] ; 20 uses
  %.0183416 = phi i32 [ %.0183416.be, %.lr.ph.backedge ], [ 0, %bb.b ] ; 16 uses
  %.0185415 = phi i32 [ %.0185415.be, %.lr.ph.backedge ], [ 0, %bb.b ] ; 16 uses
  %.0187414 = phi i32 [ %.0187414.be, %.lr.ph.backedge ], [ 1, %bb.b ] ; 16 uses
  %.0189413 = phi i32 [ %.0189413.be, %.lr.ph.backedge ], [ 131072, %bb.b ] ; 15 uses
  %.0191412 = phi i32 [ %.0191412.be, %.lr.ph.backedge ], [ 16384, %bb.b ] ; 15 uses
  %.0193411 = phi ptr [ %.0193411.be, %.lr.ph.backedge ], [ null, %bb.b ] ; 16 uses
  %.0195410 = phi i32 [ %.0195410.be, %.lr.ph.backedge ], [ 1, %bb.b ] ; 15 uses
  %i.j = load i32, ptr @myoptind, align 4, !tbaa !9 ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.pr.i = load ptr, ptr @mygetopt.next, align 8, !tbaa !19 ; 3 uses
  %i.l = icmp eq ptr %.pr.i, null
  br i1 %i.l, label %.thread1.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %.pr.i, align 1, !tbaa !21  ; 2 uses
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.thread1.i, label %bb.l

bb.e:                                             ; preds = %.lr.ph
  store ptr null, ptr @mygetopt.next, align 8, !tbaa !19
  store i32 1, ptr @myoptind, align 4, !tbaa !9
  br label %.thread1.i

.thread1.i:                                       ; preds = %bb.e, %bb.d, %bb.c
  %i.o = phi i32 [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ 1, %bb.e ] ; 4 uses
  %.not.i = icmp slt i32 %i.o, %i.d
  br i1 %.not.i, label %bb.f, label %mygetopt.exit.thread.sink.split

bb.f:                                             ; preds = %.thread1.i
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.r, align 1, !tbaa !21
  %.not45.i = icmp eq i8 %i.t, 45
  br i1 %.not45.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !21
  switch i8 %i.v, label %.tail.thread.i [
    i8 0, label %bb.i
    i8 45, label %.tail.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.w = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.p
  store ptr null, ptr @myoptarg, align 8, !tbaa !19
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  br label %mygetopt.exit.thread.sink.split

.tail.i:                                          ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.j, label %.tail.thread.i

bb.j:                                             ; preds = %.tail.i
  %i.ab = add nsw i32 %i.o, 1                     ; 2 uses
  store ptr null, ptr @myoptarg, align 8, !tbaa !19
  %i.ac = icmp slt i32 %i.ab, %i.d
  br i1 %i.ac, label %bb.k, label %mygetopt.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  br label %mygetopt.exit.thread.sink.split

.tail.thread.i:                                   ; preds = %.tail.i, %bb.h
  %i.ag = add nsw i32 %i.o, 1                     ; 2 uses
  store i32 %i.ag, ptr @myoptind, align 4, !tbaa !9
  %.pre.i = load i8, ptr %i.u, align 1, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %.tail.thread.i, %bb.d
  %i.ah = phi i32 [ %i.ag, %.tail.thread.i ], [ %i.j, %bb.d ] ; 6 uses
  %i.ai = phi i8 [ %.pre.i, %.tail.thread.i ], [ %i.m, %bb.d ] ; 3 uses
  %i.aj = phi ptr [ %i.u, %.tail.thread.i ], [ %.pr.i, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 5 uses
  store ptr %i.ak, ptr @mygetopt.next, align 8, !tbaa !19
  %i.al = sext i8 %i.ai to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.1, i32 %i.al, i64 25) ; 2 uses
  %i.am = icmp eq ptr %memchr.i, null
  %i.an = and i8 %i.ai, -2
  %i.ao = icmp eq i8 %i.an, 58
  %or.cond5.i = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %or.cond5.i, label %mygetopt.exit.thread256, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %memchr.i, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !21
  switch i8 %i.aq, label %mygetopt.exit [
    i8 58, label %bb.n
    i8 59, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.ar = load i8, ptr %i.ak, align 1, !tbaa !21
  %.not49.i = icmp eq i8 %i.ar, 0
  br i1 %.not49.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.ak, ptr @myoptarg, align 8, !tbaa !19
  store ptr null, ptr @mygetopt.next, align 8, !tbaa !19
  br label %mygetopt.exit

bb.p:                                             ; preds = %bb.n
  %i.as = icmp slt i32 %i.ah, %i.d
  br i1 %i.as, label %bb.q, label %mygetopt.exit.thread256

bb.q:                                             ; preds = %bb.p
  %i.at = sext i32 %i.ah to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19
  store ptr %i.av, ptr @myoptarg, align 8, !tbaa !19
  %i.aw = add nsw i32 %i.ah, 1
  store i32 %i.aw, ptr @myoptind, align 4, !tbaa !9
  br label %mygetopt.exit

bb.r:                                             ; preds = %bb.m
  store ptr @.str.33, ptr @myoptarg, align 8, !tbaa !19
  %i.ax = load i8, ptr %i.ak, align 1, !tbaa !21
  %.not46.i = icmp eq i8 %i.ax, 0
  br i1 %.not46.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.ak, ptr @myoptarg, align 8, !tbaa !19
  store ptr null, ptr @mygetopt.next, align 8, !tbaa !19
  br label %mygetopt.exit

bb.t:                                             ; preds = %bb.r
  %i.ay = icmp slt i32 %i.ah, %i.d
  br i1 %i.ay, label %bb.u, label %mygetopt.exit

bb.u:                                             ; preds = %bb.t
  %i.az = sext i32 %i.ah to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19 ; 3 uses
  %.not47.i = icmp eq ptr %i.bb, null
  br i1 %.not47.i, label %mygetopt.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !21
  %.not48.i = icmp eq i8 %i.bc, 45
  br i1 %.not48.i, label %mygetopt.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.bb, ptr @myoptarg, align 8, !tbaa !19
  %i.bd = add nsw i32 %i.ah, 1
  store i32 %i.bd, ptr @myoptind, align 4, !tbaa !9
  br label %mygetopt.exit

mygetopt.exit:                                    ; preds = %bb.m, %bb.o, %bb.q, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  switch i8 %i.ai, label %bb.an [
    i8 -1, label %mygetopt.exit.thread
    i8 63, label %mygetopt.exit.thread256
    i8 115, label %bb.x
    i8 99, label %bb.y
    i8 104, label %bb.z
    i8 80, label %bb.aa
    i8 100, label %.lr.ph.backedge
    i8 101, label %bb.ab
    i8 103, label %bb.ad
    i8 105, label %bb.ae
    i8 108, label %bb.af
    i8 112, label %bb.ag
    i8 83, label %bb.ai
    i8 116, label %bb.aj
    i8 118, label %bb.ak
    i8 84, label %bb.al
    i8 109, label %bb.am
    i8 117, label %.lr.ph.backedge
  ]

.lr.ph.backedge:                                  ; preds = %mygetopt.exit, %mygetopt.exit, %bb.ag, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af, %bb.ae, %bb.ad, %bb.aa, %bb.z, %bb.y, %bb.x
  %.0169422.be = phi i32 [ %.0169422, %mygetopt.exit ], [ %.0169422, %bb.x ], [ %.0169422, %bb.y ], [ %.0169422, %bb.z ], [ %.0169422, %bb.aa ], [ 1, %bb.ad ], [ %.0169422, %bb.ae ], [ %.0169422, %bb.af ], [ %.0169422, %bb.ag ], [ %.0169422, %bb.ai ], [ %.0169422, %bb.aj ], [ %.0169422, %bb.ak ], [ %.0169422, %bb.al ], [ %.0169422, %bb.am ], [ %.0169422, %mygetopt.exit ]
  %.0171421.be = phi i32 [ %.0171421, %mygetopt.exit ], [ %.0171421, %bb.x ], [ %.0171421, %bb.y ], [ %.0171421, %bb.z ], [ %.0171421, %bb.aa ], [ %.0171421, %bb.ad ], [ %.0171421, %bb.ae ], [ %.0171421, %bb.af ], [ %.0171421, %bb.ag ], [ %.0171421, %bb.ai ], [ %.0171421, %bb.aj ], [ %.0171421, %bb.ak ], [ %.0171421, %bb.al ], [ 1, %bb.am ], [ %.0171421, %mygetopt.exit ]
  %.0175420.be = phi i32 [ %.0175420, %mygetopt.exit ], [ %.0175420, %bb.x ], [ %.0175420, %bb.y ], [ %.0175420, %bb.z ], [ %.0175420, %bb.aa ], [ %.0175420, %bb.ad ], [ 1, %bb.ae ], [ %.0175420, %bb.af ], [ %.0175420, %bb.ag ], [ %.0175420, %bb.ai ], [ %.0175420, %bb.aj ], [ %.0175420, %bb.ak ], [ %.0175420, %bb.al ], [ %.0175420, %bb.am ], [ %.0175420, %mygetopt.exit ]
  %.0177419.be = phi i32 [ %.0177419, %mygetopt.exit ], [ %.0177419, %bb.x ], [ %.0177419, %bb.y ], [ %.0177419, %bb.z ], [ %i.bh, %bb.aa ], [ %.0177419, %bb.ad ], [ %.0177419, %bb.ae ], [ %.0177419, %bb.af ], [ %.0177419, %bb.ag ], [ %.0177419, %bb.ai ], [ %.0177419, %bb.aj ], [ %.0177419, %bb.ak ], [ %.0177419, %bb.al ], [ %.0177419, %bb.am ], [ %.0177419, %mygetopt.exit ]
  %.0179418.be = phi ptr [ %.0179418, %mygetopt.exit ], [ %.0179418, %bb.x ], [ %.0179418, %bb.y ], [ %i.be, %bb.z ], [ %.0179418, %bb.aa ], [ %.0179418, %bb.ad ], [ %.0179418, %bb.ae ], [ %.0179418, %bb.af ], [ %.0179418, %bb.ag ], [ %.0179418, %bb.ai ], [ %.0179418, %bb.aj ], [ %.0179418, %bb.ak ], [ %.0179418, %bb.al ], [ %.0179418, %bb.am ], [ %.0179418, %mygetopt.exit ]
  %.0181417.be = phi i32 [ %.0181417, %mygetopt.exit ], [ 1, %bb.x ], [ %.0181417, %bb.y ], [ %.0181417, %bb.z ], [ %.0181417, %bb.aa ], [ %.0181417, %bb.ad ], [ %.0181417, %bb.ae ], [ %.0181417, %bb.af ], [ %.0181417, %bb.ag ], [ %.0181417, %bb.ai ], [ %.0181417, %bb.aj ], [ %.0181417, %bb.ak ], [ %.0181417, %bb.al ], [ %.0181417, %bb.am ], [ %.0181417, %mygetopt.exit ]
  %.0183416.be = phi i32 [ %.0183416, %mygetopt.exit ], [ %.0183416, %bb.x ], [ 1, %bb.y ], [ %.0183416, %bb.z ], [ %.0183416, %bb.aa ], [ %.0183416, %bb.ad ], [ %.0183416, %bb.ae ], [ %.0183416, %bb.af ], [ %.0183416, %bb.ag ], [ %.0183416, %bb.ai ], [ %.0183416, %bb.aj ], [ %.0183416, %bb.ak ], [ %.0183416, %bb.al ], [ %.0183416, %bb.am ], [ %.0183416, %mygetopt.exit ]
  %.0185415.be = phi i32 [ %.0185415, %mygetopt.exit ], [ %.0185415, %bb.x ], [ %.0185415, %bb.y ], [ %.0185415, %bb.z ], [ %.0185415, %bb.aa ], [ %.0185415, %bb.ad ], [ %.0185415, %bb.ae ], [ %.0185415, %bb.af ], [ %.0185415, %bb.ag ], [ %.0185415, %bb.ai ], [ %.0185415, %bb.aj ], [ 1, %bb.ak ], [ %.0185415, %bb.al ], [ %.0185415, %bb.am ], [ %.0185415, %mygetopt.exit ]
  %.0187414.be = phi i32 [ %.0187414, %mygetopt.exit ], [ %.0187414, %bb.x ], [ %.0187414, %bb.y ], [ %.0187414, %bb.z ], [ %.0187414, %bb.aa ], [ %.0187414, %bb.ad ], [ %.0187414, %bb.ae ], [ %.0187414, %bb.af ], [ %.0187414, %bb.ag ], [ %.0187414, %bb.ai ], [ %.0187414, %bb.aj ], [ %.0187414, %bb.ak ], [ %i.cb, %bb.al ], [ %.0187414, %bb.am ], [ %.0187414, %mygetopt.exit ]
  %.0189413.be = phi i32 [ %.0189413, %mygetopt.exit ], [ %.0189413, %bb.x ], [ %.0189413, %bb.y ], [ %.0189413, %bb.z ], [ %.0189413, %bb.aa ], [ %.0189413, %bb.ad ], [ %.0189413, %bb.ae ], [ %.0189413, %bb.af ], [ %.0189413, %bb.ag ], [ %i.bv, %bb.ai ], [ %.0189413, %bb.aj ], [ %.0189413, %bb.ak ], [ %.0189413, %bb.al ], [ %.0189413, %bb.am ], [ %.0189413, %mygetopt.exit ]
  %.0191412.be = phi i32 [ %.0191412, %mygetopt.exit ], [ %.0191412, %bb.x ], [ %.0191412, %bb.y ], [ %.0191412, %bb.z ], [ %.0191412, %bb.aa ], [ %.0191412, %bb.ad ], [ %.0191412, %bb.ae ], [ %.0191412, %bb.af ], [ %i.bp, %bb.ag ], [ %.0191412, %bb.ai ], [ %.0191412, %bb.aj ], [ %.0191412, %bb.ak ], [ %.0191412, %bb.al ], [ %.0191412, %bb.am ], [ %.0191412, %mygetopt.exit ]
  %.0193411.be = phi ptr [ %.0193411, %mygetopt.exit ], [ %.0193411, %bb.x ], [ %.0193411, %bb.y ], [ %.0193411, %bb.z ], [ %.0193411, %bb.aa ], [ %.0193411, %bb.ad ], [ %.0193411, %bb.ae ], [ %i.bm, %bb.af ], [ %.0193411, %bb.ag ], [ %.0193411, %bb.ai ], [ %.0193411, %bb.aj ], [ %.0193411, %bb.ak ], [ %.0193411, %bb.al ], [ %.0193411, %bb.am ], [ %.0193411, %mygetopt.exit ]
  %.0195410.be = phi i32 [ %.0195410, %mygetopt.exit ], [ %.0195410, %bb.x ], [ %.0195410, %bb.y ], [ %.0195410, %bb.z ], [ %.0195410, %bb.aa ], [ %.0195410, %bb.ad ], [ %.0195410, %bb.ae ], [ %.0195410, %bb.af ], [ %.0195410, %bb.ag ], [ %.0195410, %bb.ai ], [ %i.by, %bb.aj ], [ %.0195410, %bb.ak ], [ %.0195410, %bb.al ], [ %.0195410, %bb.am ], [ %.0195410, %mygetopt.exit ]
  br label %.lr.ph

mygetopt.exit.thread256:                          ; preds = %bb.p, %bb.l, %mygetopt.exit
  tail call fastcc void @Usage()
  br label %.critedge

bb.x:                                             ; preds = %mygetopt.exit
  br label %.lr.ph.backedge

bb.y:                                             ; preds = %mygetopt.exit
  br label %.lr.ph.backedge

bb.z:                                             ; preds = %mygetopt.exit
  %i.be = load ptr, ptr @myoptarg, align 8, !tbaa !19
  br label %.lr.ph.backedge

bb.aa:                                            ; preds = %mygetopt.exit
  %i.bf = load ptr, ptr @myoptarg, align 8, !tbaa !19
  %i.bg = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.bf, ptr noundef null, i32 noundef 10) #16, !inline_history !22
  %i.bh = trunc i64 %i.bg to i32
  br label %.lr.ph.backedge

bb.ab:                                            ; preds = %mygetopt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bi = call i32 @wolfSSL_get_ciphers(ptr noundef nonnull %i.a, i32 noundef 4096) #16
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.ac, label %ShowCiphers.exit

bb.ac:                                            ; preds = %bb.ab
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.a) #17 ; 0 uses
  br label %ShowCiphers.exit

ShowCiphers.exit:                                 ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.critedge

bb.ad:                                            ; preds = %mygetopt.exit
  br label %.lr.ph.backedge

bb.ae:                                            ; preds = %mygetopt.exit
  br label %.lr.ph.backedge

bb.af:                                            ; preds = %mygetopt.exit
  %i.bm = load ptr, ptr @myoptarg, align 8, !tbaa !19
  br label %.lr.ph.backedge

bb.ag:                                            ; preds = %mygetopt.exit
  %i.bn = load ptr, ptr @myoptarg, align 8, !tbaa !19
  %i.bo = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.bn, ptr noundef null, i32 noundef 10) #16, !inline_history !22
  %i.bp = trunc i64 %i.bo to i32                  ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 16384
  br i1 %i.bq, label %bb.ah, label %.lr.ph.backedge

bb.ah:                                            ; preds = %bb.ag
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.2, i32 noundef %i.bp) #17 ; 0 uses
  tail call fastcc void @Usage()
  br label %.critedge

bb.ai:                                            ; preds = %mygetopt.exit
  %i.bt = load ptr, ptr @myoptarg, align 8, !tbaa !19
  %i.bu = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.bt, ptr noundef null, i32 noundef 10) #16, !inline_history !22
  %i.bv = trunc i64 %i.bu to i32
  br label %.lr.ph.backedge

bb.aj:                                            ; preds = %mygetopt.exit
  %i.bw = load ptr, ptr @myoptarg, align 8, !tbaa !19
  %i.bx = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.bw, ptr noundef null, i32 noundef 10) #16, !inline_history !22
  %i.by = trunc i64 %i.bx to i32
  br label %.lr.ph.backedge

bb.ak:                                            ; preds = %mygetopt.exit
  br label %.lr.ph.backedge

bb.al:                                            ; preds = %mygetopt.exit
  %i.bz = load ptr, ptr @myoptarg, align 8, !tbaa !19
  %i.ca = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.bz, ptr noundef null, i32 noundef 10) #16, !inline_history !22
  %i.cb = trunc i64 %i.ca to i32
  br label %.lr.ph.backedge

bb.am:                                            ; preds = %mygetopt.exit
  br label %.lr.ph.backedge

bb.an:                                            ; preds = %mygetopt.exit
  tail call fastcc void @Usage()
  br label %.critedge

mygetopt.exit.thread.sink.split:                  ; preds = %.thread1.i, %bb.i, %bb.k
  %.sink = phi ptr [ %i.af, %bb.k ], [ %i.x, %bb.i ], [ null, %.thread1.i ]
  store ptr %.sink, ptr @myoptarg, align 8, !tbaa !19
  br label %mygetopt.exit.thread

mygetopt.exit.thread:                             ; preds = %mygetopt.exit, %mygetopt.exit.thread.sink.split, %bb.j
  store i32 0, ptr @myoptind, align 4, !tbaa !9
  %.not229.a = icmp eq ptr %.0193411, null
  %i.cc = insertelement <4 x i32> poison, i32 %.0191412, i64 0
  %i.cd = insertelement <4 x i32> %i.cc, i32 %.0189413, i64 1
  %i.ce = insertelement <4 x i32> %i.cd, i32 %.0195410, i64 2
  %i.cf = insertelement <4 x i32> %i.ce, i32 %.0175420, i64 3 ; 2 uses
  br i1 %.not229.a, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %mygetopt.exit.thread.thread, %mygetopt.exit.thread
  %.0169296710 = phi i32 [ 0, %mygetopt.exit.thread.thread ], [ %.0169422, %mygetopt.exit.thread ]
  %.0171305708 = phi i32 [ 0, %mygetopt.exit.thread.thread ], [ %.0171421, %mygetopt.exit.thread ] ; 2 uses
  %.0177324704 = phi i32 [ 11112, %mygetopt.exit.thread.thread ], [ %.0177419, %mygetopt.exit.thread ]
  %.0179333702 = phi ptr [ @.str, %mygetopt.exit.thread.thread ], [ %.0179418, %mygetopt.exit.thread ]
  %.0181342700 = phi i32 [ 0, %mygetopt.exit.thread.thread ], [ %.0181417, %mygetopt.exit.thread ] ; 2 uses
  %.0183352698 = phi i32 [ 0, %mygetopt.exit.thread.thread ], [ %.0183416, %mygetopt.exit.thread ]
  %.0185361695 = phi i32 [ 0, %mygetopt.exit.thread.thread ], [ %.0185415, %mygetopt.exit.thread ]
  %.0187371693 = phi i32 [ 1, %mygetopt.exit.thread.thread ], [ %.0187414, %mygetopt.exit.thread ]
  %i.cg = phi <4 x i32> [ <i32 16384, i32 131072, i32 1, i32 0>, %mygetopt.exit.thread.thread ], [ %i.cf, %mygetopt.exit.thread ]
  %i.ch = tail call ptr @wolfSSL_Malloc(i64 noundef 4096) #16 ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cj = tail call i32 @wolfSSL_get_ciphers(ptr noundef nonnull %i.ch, i32 noundef 4096) #16 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %mygetopt.exit.thread, %bb.ap
  %.0169296709 = phi i32 [ %.0169296710, %bb.ap ], [ %.0169422, %mygetopt.exit.thread ]
  %.0171305707 = phi i32 [ %.0171305708, %bb.ap ], [ %.0171421, %mygetopt.exit.thread ] ; 6 uses
  %.0177324703 = phi i32 [ %.0177324704, %bb.ap ], [ %.0177419, %mygetopt.exit.thread ] ; 2 uses
  %.0179333701 = phi ptr [ %.0179333702, %bb.ap ], [ %.0179418, %mygetopt.exit.thread ]
  %.0181342699 = phi i32 [ %.0181342700, %bb.ap ], [ %.0181417, %mygetopt.exit.thread ] ; 8 uses
  %.0183352697 = phi i32 [ %.0183352698, %bb.ap ], [ %.0183416, %mygetopt.exit.thread ] ; 3 uses
  %.0185361694 = phi i32 [ %.0185361695, %bb.ap ], [ %.0185415, %mygetopt.exit.thread ] ; 3 uses
  %.0187371692 = phi i32 [ %.0187371693, %bb.ap ], [ %.0187414, %mygetopt.exit.thread ]
  %.0201 = phi ptr [ %i.ch, %bb.ap ], [ %.0193411, %mygetopt.exit.thread ]
  %.0199 = phi ptr [ %i.ch, %bb.ap ], [ null, %mygetopt.exit.thread ] ; 5 uses
  %i.ck = phi <4 x i32> [ %i.cg, %bb.ap ], [ %i.cf, %mygetopt.exit.thread ]
  %.not230 = icmp eq i32 %.0169296709, 0          ; 4 uses
  br i1 %.not230, label %bb.bf, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cl = tail call ptr @wolfTLSv1_3_client_method() #16
  %i.cm = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.cl) #16 ; 3 uses
  %.not.i252 = icmp eq ptr %i.cm, null            ; 2 uses
  br i1 %.not.i252, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cn = tail call ptr @wolfSSL_new(ptr noundef nonnull %i.cm) #16 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  %spec.select36.i = sext i1 %i.co to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.023.i = phi ptr [ null, %bb.ar ], [ %i.cn, %bb.as ] ; 4 uses
  %.1.i = phi i32 [ -1, %bb.ar ], [ %spec.select36.i, %bb.as ] ; 3 uses
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @groups, i64 8), align 8, !tbaa !25
  %.not3137.i = icmp eq ptr %i.cp, null
  br i1 %.not3137.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.at
  %.not34.i = icmp eq i32 %.0185361694, 0
  br i1 %.not34.i, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.i, %bb.ax
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i, %bb.ax ], [ 0, %.lr.ph.i ] ; 2 uses
  %.239.us.us.i = phi i32 [ %.4.us.us.i, %bb.ax ], [ %.1.i, %.lr.ph.i ]
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr @groups, i64 %indvars.iv50.i ; 2 uses
  %i.cr = icmp eq i32 %.239.us.us.i, 0
  br i1 %i.cr, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %.lr.ph.split.us.split.us.i
  %i.cs = load i16, ptr %i.cq, align 16, !tbaa !28
  %i.ct = tail call i32 @wolfSSL_UseKeyShare(ptr noundef %.023.i, i16 noundef zeroext %i.cs) #16 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cv = and i32 %i.ct, -2
  %or.cond.us.us.i = icmp eq i32 %i.cv, -174
  br i1 %or.cond.us.us.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i16 0, ptr %i.cq, align 16, !tbaa !28
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %.lr.ph.split.us.split.us.i
  %.4.us.us.i = phi i32 [ -1, %.lr.ph.split.us.split.us.i ], [ 0, %bb.aw ], [ -1, %bb.av ], [ 0, %bb.au ] ; 2 uses
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr @groups, i64 %indvars.iv.next51.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !25
  %.not31.us.us.i = icmp eq ptr %i.cy, null
  br i1 %.not31.us.us.i, label %._crit_edge.i, label %.lr.ph.split.us.split.us.i, !llvm.loop !29

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %bb.bb
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bb ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.cz = phi ptr [ %i.dj, %bb.bb ], [ getelementptr inbounds nuw (i8, ptr @groups, i64 8), %.lr.ph.i ]
  %.239.i = phi i32 [ %.4.i, %bb.bb ], [ %.1.i, %.lr.ph.i ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr @groups, i64 %indvars.iv.i ; 2 uses
  %i.db = icmp eq i32 %.239.i, 0
  br i1 %i.db, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %.lr.ph.split.split.i
  %i.dc = load i16, ptr %i.da, align 16, !tbaa !28
  %i.dd = tail call i32 @wolfSSL_UseKeyShare(ptr noundef %.023.i, i16 noundef zeroext %i.dc) #16 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %.sink.split.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.df = and i32 %i.dd, -2
  %or.cond.i = icmp eq i32 %i.df, -174
  br i1 %or.cond.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i16 0, ptr %i.da, align 16, !tbaa !28
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ba, %bb.ay
  %.str.51.sink.i = phi ptr [ @.str.52, %bb.ba ], [ @.str.51, %bb.ay ]
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !25
  %i.dh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.51.sink.i, ptr noundef %i.dg) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split.i, %bb.az, %.lr.ph.split.split.i
  %.4.i = phi i32 [ -1, %.lr.ph.split.split.i ], [ -1, %bb.az ], [ 0, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr @groups, i64 %indvars.iv.next.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !25
  %.not31.i = icmp eq ptr %i.dk, null
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %bb.bb, %bb.ax, %bb.at
  %.2.lcssa.i = phi i32 [ %.1.i, %bb.at ], [ %.4.us.us.i, %bb.ax ], [ %.4.i, %bb.bb ]
  %.not32.i = icmp eq ptr %.023.i, null
  br i1 %.not32.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i
  tail call void @wolfSSL_free(ptr noundef nonnull %.023.i) #16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %._crit_edge.i
  br i1 %.not.i252, label %SetupSupportedGroups.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.cm) #16
  br label %SetupSupportedGroups.exit

SetupSupportedGroups.exit:                        ; preds = %bb.bd, %bb.be
  %.not231.a = icmp eq i32 %.2.lcssa.i, 0
  br i1 %.not231.a, label %bb.bf, label %.critedge

bb.bf:                                            ; preds = %SetupSupportedGroups.exit, %bb.aq
  %.not1000 = icmp eq i32 %.0181342699, 0         ; 3 uses
  %.not1001 = icmp eq i32 %.0183352697, 0         ; 3 uses
  %i.dl = or i32 %.0181342699, %.0183352697
  %or.cond.not = icmp eq i32 %i.dl, 0
  %spec.select = select i1 %or.cond.not, i32 %.0187371692, i32 1 ; 8 uses
  %i.dm = sext i32 %spec.select to i64
  %i.dn = mul nsw i64 %i.dm, 33368                ; 2 uses
  %i.do = tail call ptr @wolfSSL_Malloc(i64 noundef %i.dn) #16 ; 13 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.critedge, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.do, i8 0, i64 %i.dn, i1 false)
  %i.dq = icmp eq i32 %.0181342699, 0
  %i.dr = icmp ne i32 %.0171305707, 0
  %or.cond3 = or i1 %i.dq, %i.dr
  br i1 %or.cond3, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ds = call fastcc i32 @SetupSocketAndListen(ptr noundef nonnull %i.b, i32 noundef %.0177324703)
  %.not232.a = icmp eq i32 %i.ds, 0
  br i1 %.not232.a, label %bb.bi, label %.critedge

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.du = tail call i64 @fwrite(ptr nonnull @.str.3, i64 26, i64 1, ptr %i.dt) #18 ; 0 uses
  %.not236 = icmp eq i32 %.0185361694, 0          ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dw = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.dx = or i32 %.0181342699, %.0183352697
  %or.cond5.not = icmp eq i32 %i.dx, 0            ; 2 uses
  %i.dy = icmp slt i32 %spec.select, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count = zext nneg i32 %spec.select to i64
  %wide.trip.count628 = zext nneg i32 %spec.select to i64
  %brmerge = or i1 %.not236, %i.dy
  %wide.trip.count633 = zext nneg i32 %spec.select to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count638 = zext nneg i32 %spec.select to i64
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.thread
  %.1202490 = phi ptr [ %.0201, %bb.bi ], [ %i.iz, %.thread ] ; 6 uses
  %.1208489 = phi i32 [ 0, %bb.bi ], [ %.6, %.thread ] ; 3 uses
  %i.ej = load i8, ptr %.1202490, align 1, !tbaa !21
  %.not234.a = icmp eq i8 %i.ej, 0
  br i1 %.not234.a, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ek = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1202490, i32 noundef 58) #19 ; 3 uses
  %.not235 = icmp eq ptr %i.ek, null              ; 2 uses
  br i1 %.not235, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %.1202490 to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = getelementptr inbounds i8, ptr %.1202490, i64 %i.en
  store i8 0, ptr %i.eo, align 1, !tbaa !21
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %.not236, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.4, ptr noundef nonnull %.1202490) #17 ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @groups, i64 8), align 8, !tbaa !25 ; 2 uses
  %.not237479 = icmp eq ptr %i.er, null
  br i1 %.not237479, label %.thread, label %.lr.ph483

.lr.ph483:                                        ; preds = %bb.bo
  %i.es = load i32, ptr %i.b, align 4
  %.pre = load i16, ptr %i.dv, align 8, !tbaa !31
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph483, %bb.da
  %i.et = phi i16 [ %.pre, %.lr.ph483 ], [ %i.iv, %bb.da ] ; 2 uses
  %indvars.iv640 = phi i64 [ 0, %.lr.ph483 ], [ %indvars.iv.next641, %bb.da ] ; 2 uses
  %i.eu = phi ptr [ %i.er, %.lr.ph483 ], [ %i.iy, %bb.da ]
  %.2209480 = phi i32 [ %.1208489, %.lr.ph483 ], [ %.5, %bb.da ] ; 4 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr @groups, i64 %indvars.iv640 ; 2 uses
  %i.ew = icmp eq i16 %i.et, 0
  %spec.select248 = select i1 %i.ew, ptr @.str.5, ptr %i.eu ; 4 uses
  br i1 %.not230, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ex = load i16, ptr %i.ev, align 16, !tbaa !28
  %i.ey = icmp eq i16 %i.ex, 0
  br i1 %i.ey, label %bb.da, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.dw, label %.lr.ph438, label %._crit_edge439.thread

.lr.ph438:                                        ; preds = %bb.br, %bb.cg
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cg ], [ 0, %bb.br ] ; 3 uses
  %.3210435 = phi i32 [ %.4, %bb.cg ], [ %.2209480, %bb.br ]
  %i.ez = getelementptr inbounds nuw [33368 x i8], ptr %i.do, i64 %indvars.iv ; 18 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33360) %i.fa, i8 0, i64 33360, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store ptr %.0179333701, ptr %i.fb, align 8, !tbaa !38
  %i.fc = trunc nuw nsw i64 %indvars.iv to i32
  %i.fd = add i32 %.0177324703, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  store i32 %i.fd, ptr %i.fe, align 8, !tbaa !39
  store ptr %.1202490, ptr %i.ez, align 8, !tbaa !40
  br i1 %.not230, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph438
  %i.ff = load ptr, ptr %i.do, align 8, !tbaa !40
  %i.fg = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ff, ptr noundef nonnull dereferenceable(6) @.str.6, i64 noundef 5) #19
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.fi = load i16, ptr %i.ev, align 16, !tbaa !28
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i16 %i.fi, ptr %i.fj, align 8, !tbaa !31
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph438, %bb.bs, %bb.bt
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 28
  store <4 x i32> %i.ck, ptr %i.fk, align 4, !tbaa !9
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ez, i64 44
  store i32 %.0185361694, ptr %i.fl, align 4, !tbaa !41
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  store i32 %i.es, ptr %i.fm, align 8, !tbaa !42
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  store i32 -1, ptr %i.fn, align 8, !tbaa !43
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 68
  store i32 -1, ptr %i.fo, align 4, !tbaa !44
  br i1 %.not1001, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 33280
  store i32 1, ptr %i.fp, align 8, !tbaa !45
  %i.fq = call fastcc i32 @bench_tls_client(ptr noundef nonnull %i.ez)
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bu
  br i1 %.not1000, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fr = call fastcc i32 @bench_tls_server(ptr noundef nonnull %i.ez)
  br label %bb.cg

bb.by:                                            ; preds = %bb.bw
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ez, i64 76
  store i32 %.0171305707, ptr %i.fs, align 4, !tbaa !46
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ez, i64 16584
  %i.fu = call i32 @wolfSSL_CondInit(ptr noundef nonnull %i.ft) #16 ; 3 uses
  %.not242.a = icmp eq i32 %i.fu, 0
  br i1 %.not242.a, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fv = tail call ptr @__errno_location() #20
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !9
  %i.fw = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.fx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2224, i32 noundef %i.fu, ptr noundef nonnull @.str.9) #17 ; 0 uses
  call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ez, i64 33184
  %i.fz = call i32 @wolfSSL_CondInit(ptr noundef nonnull %i.fy) #16 ; 3 uses
  %.not243.a = icmp eq i32 %i.fz, 0
  br i1 %.not243.a, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ga = tail call ptr @__errno_location() #20
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !9
  %i.gb = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.gc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gb, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2225, i32 noundef %i.fz, ptr noundef nonnull @.str.11) #17 ; 0 uses
  call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.gd = call i32 @wolfSSL_NewThreadNoJoin(ptr noundef nonnull @server_thread, ptr noundef nonnull %i.ez) #16 ; 3 uses
  %.not244.a = icmp eq i32 %i.gd, 0
  br i1 %.not244.a, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ge = tail call ptr @__errno_location() #20
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !9
  %i.gf = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.gg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gf, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2228, i32 noundef %i.gd, ptr noundef nonnull @.str.12) #17 ; 0 uses
  call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.gh = call i32 @wolfSSL_NewThreadNoJoin(ptr noundef nonnull @client_thread, ptr noundef nonnull %i.ez) #16 ; 3 uses
  %.not245 = icmp eq i32 %i.gh, 0
  br i1 %.not245, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gi = tail call ptr @__errno_location() #20
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !9
  %i.gj = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.gk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gj, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2230, i32 noundef %i.gh, ptr noundef nonnull @.str.13) #17 ; 0 uses
  call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.cg:                                            ; preds = %bb.ce, %bb.bv, %bb.bx
  %.4 = phi i32 [ %i.fq, %bb.bv ], [ %i.fr, %bb.bx ], [ %.3210435, %bb.ce ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge439, label %.lr.ph438, !llvm.loop !47

._crit_edge439:                                   ; preds = %bb.cg
  br i1 %or.cond5.not, label %.lr.ph444.us, label %bb.cn

._crit_edge439.thread:                            ; preds = %bb.br
  br i1 %or.cond5.not, label %.split448.us, label %.critedge250.thread

.critedge250.thread:                              ; preds = %._crit_edge439.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, i8 0, i64 32, i1 false)
  br label %bb.cs

.lr.ph444.us:                                     ; preds = %._crit_edge439, %.lr.ph444.us.backedge
  %indvars.iv625 = phi i64 [ %indvars.iv625.be, %.lr.ph444.us.backedge ], [ 0, %._crit_edge439 ] ; 2 uses
  %.0173442.us = phi i32 [ %.0173442.us.be, %.lr.ph444.us.backedge ], [ 1, %._crit_edge439 ]
  %i.gl = getelementptr inbounds nuw [33368 x i8], ptr %i.do, i64 %indvars.iv625 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 33272
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !48
  %.not239.us = icmp eq i32 %i.gn, 0
  br i1 %.not239.us, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph444.us
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 16672
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !49
  %.not240.us = icmp eq i32 %i.gp, 0
  br i1 %.not240.us, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch, %.lr.ph444.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @__const.bench_tls.tv, i64 16, i1 false)
  %i.gq = call i32 @select(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #16
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.gs = tail call ptr @__errno_location() #20
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !9
  %.not241.us = icmp eq i32 %i.gt, 4
  br i1 %.not241.us, label %bb.ck, label %.split.us

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ch
  %.1174.us = phi i32 [ %.0173442.us, %bb.ch ], [ 0, %bb.ck ] ; 2 uses
  %indvars.iv.next626 = add nuw nsw i64 %indvars.iv625, 1 ; 2 uses
  %exitcond629.not = icmp eq i64 %indvars.iv.next626, %wide.trip.count628
  br i1 %exitcond629.not, label %._crit_edge445.us, label %.lr.ph444.us.backedge

.lr.ph444.us.backedge:                            ; preds = %bb.cl, %._crit_edge445.us
  %indvars.iv625.be = phi i64 [ %indvars.iv.next626, %bb.cl ], [ 0, %._crit_edge445.us ]
  %.0173442.us.be = phi i32 [ %.1174.us, %bb.cl ], [ 1, %._crit_edge445.us ]
  br label %.lr.ph444.us, !llvm.loop !50

._crit_edge445.us:                                ; preds = %bb.cl
  %.not238.us = icmp eq i32 %.1174.us, 0
  br i1 %.not238.us, label %.lr.ph444.us.backedge, label %.split448.us

.split.us:                                        ; preds = %bb.cj
  call fastcc void @err_sys(ptr noundef nonnull @.str.14) #21
  unreachable

.split448.us:                                     ; preds = %._crit_edge445.us, %._crit_edge439.thread
  %.3210.lcssa714716 = phi i32 [ %.2209480, %._crit_edge439.thread ], [ %.4, %._crit_edge445.us ] ; 2 uses
  br i1 %.not236, label %.critedge250, label %bb.cm

bb.cm:                                            ; preds = %.split448.us
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.gv = call i64 @fwrite(ptr nonnull @.str.15, i64 18, i64 1, ptr %i.gu) #18 ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %._crit_edge439
  %.3210.lcssa713 = phi i32 [ %.4, %._crit_edge439 ], [ %.3210.lcssa714716, %bb.cm ] ; 2 uses
  br i1 %brmerge, label %.critedge250, label %.lr.ph450

.lr.ph450:                                        ; preds = %bb.cn, %bb.cr
  %indvars.iv630 = phi i64 [ %indvars.iv.next631, %bb.cr ], [ 0, %bb.cn ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [33368 x i8], ptr %i.do, i64 %indvars.iv630 ; 4 uses
  %i.gx = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.gy = trunc nuw nsw i64 %indvars.iv630 to i32
  %i.gz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gx, ptr noundef nonnull @.str.16, i32 noundef %i.gy) #17 ; 0 uses
  br i1 %.not1001, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.lr.ph450
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 33288
  %i.hb = load ptr, ptr %i.gw, align 8, !tbaa !40
  call fastcc void @print_stats(ptr noundef %i.ha, ptr noundef nonnull @.str.17, ptr noundef %i.hb, ptr noundef nonnull %spec.select248, i32 noundef 1)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.lr.ph450
  br i1 %.not1000, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
end_hunk_0
