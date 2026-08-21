Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-iso8583?download=true
inline.NumInlined: 24
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0
@.str.123 = private unnamed_addr constant [56 x i8] c"Endian of the length field. Big endian or Little endian\00", align 1
@len_byte_order = internal global i32 2, align 4
@.str.124 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str.125 = private unnamed_addr constant [20 x i8] c"Charset for numbers\00", align 1
@.str.126 = private unnamed_addr constant [21 x i8] c" charset for numbers\00", align 1
@charset_pref = internal global i32 1, align 4
@.str.127 = private unnamed_addr constant [10 x i8] c"binencode\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"Binary encode\00", align 1
@.str.129 = private unnamed_addr constant [28 x i8] c" binary data representation\00", align 1
@bin_encode_pref = internal global i32 1, align 4
@.str.130 = private unnamed_addr constant [9 x i8] c"tcp.port\00", align 1
@iso_1987 = internal unnamed_addr constant [128 x %struct.iso_type] [%struct.iso_type { i32 9, i32 0, i32 0 }, %struct.iso_type { i32 2, i32 19, i32 2 }, %struct.iso_type { i32 2, i32 6, i32 0 }, %struct.iso_type { i32 2, i32 12, i32 0 }, %struct.iso_type { i32 2, i32 12, i32 0 }, %struct.iso_type { i32 2, i32 12, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 8, i32 0 }, %struct.iso_type { i32 2, i32 8, i32 0 }, %struct.iso_type { i32 2, i32 8, i32 0 }, %struct.iso_type { i32 2, i32 6, i32 0 }, %struct.iso_type { i32 2, i32 6, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 2, i32 0 }, %struct.iso_type { i32 2, i32 2, i32 0 }, %struct.iso_type { i32 2, i32 1, i32 0 }, %struct.iso_type { i32 3, i32 9, i32 0 }, %struct.iso_type { i32 3, i32 9, i32 0 }, %struct.iso_type { i32 3, i32 9, i32 0 }, %struct.iso_type { i32 3, i32 9, i32 0 }, %struct.iso_type { i32 2, i32 11, i32 2 }, %struct.iso_type { i32 2, i32 11, i32 2 }, %struct.iso_type { i32 8, i32 28, i32 2 }, %struct.iso_type { i32 10, i32 37, i32 2 }, %struct.iso_type { i32 6, i32 104, i32 3 }, %struct.iso_type { i32 6, i32 12, i32 0 }, %struct.iso_type { i32 6, i32 6, i32 0 }, %struct.iso_type { i32 6, i32 2, i32 0 }, %struct.iso_type { i32 7, i32 3, i32 0 }, %struct.iso_type { i32 7, i32 8, i32 0 }, %struct.iso_type { i32 7, i32 15, i32 0 }, %struct.iso_type { i32 7, i32 40, i32 0 }, %struct.iso_type { i32 7, i32 25, i32 2 }, %struct.iso_type { i32 7, i32 76, i32 2 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 3, i32 0 }, %struct.iso_type { i32 6, i32 3, i32 0 }, %struct.iso_type { i32 6, i32 3, i32 0 }, %struct.iso_type { i32 9, i32 8, i32 0 }, %struct.iso_type { i32 2, i32 8, i32 0 }, %struct.iso_type { i32 6, i32 120, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 9, i32 8, i32 0 }, %struct.iso_type { i32 9, i32 0, i32 0 }, %struct.iso_type { i32 2, i32 1, i32 0 }, %struct.iso_type { i32 2, i32 2, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 6, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 12, i32 0 }, %struct.iso_type { i32 2, i32 12, i32 0 }, %struct.iso_type { i32 2, i32 12, i32 0 }, %struct.iso_type { i32 2, i32 12, i32 0 }, %struct.iso_type { i32 2, i32 15, i32 0 }, %struct.iso_type { i32 2, i32 15, i32 0 }, %struct.iso_type { i32 2, i32 15, i32 0 }, %struct.iso_type { i32 2, i32 15, i32 0 }, %struct.iso_type { i32 2, i32 42, i32 0 }, %struct.iso_type { i32 7, i32 1, i32 0 }, %struct.iso_type { i32 2, i32 2, i32 0 }, %struct.iso_type { i32 2, i32 5, i32 0 }, %struct.iso_type { i32 7, i32 7, i32 0 }, %struct.iso_type { i32 7, i32 42, i32 0 }, %struct.iso_type { i32 9, i32 8, i32 0 }, %struct.iso_type { i32 3, i32 17, i32 0 }, %struct.iso_type { i32 7, i32 25, i32 0 }, %struct.iso_type { i32 2, i32 11, i32 2 }, %struct.iso_type { i32 2, i32 11, i32 2 }, %struct.iso_type { i32 7, i32 17, i32 2 }, %struct.iso_type { i32 7, i32 28, i32 2 }, %struct.iso_type { i32 7, i32 28, i32 2 }, %struct.iso_type { i32 7, i32 100, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 9, i32 8, i32 0 }], align 16
@iso_1993 = internal unnamed_addr constant [128 x %struct.iso_type] [%struct.iso_type { i32 9, i32 0, i32 0 }, %struct.iso_type { i32 2, i32 19, i32 2 }, %struct.iso_type { i32 2, i32 6, i32 0 }, %struct.iso_type { i32 2, i32 12, i32 0 }, %struct.iso_type { i32 2, i32 12, i32 0 }, %struct.iso_type { i32 2, i32 12, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 8, i32 0 }, %struct.iso_type { i32 2, i32 8, i32 0 }, %struct.iso_type { i32 2, i32 8, i32 0 }, %struct.iso_type { i32 2, i32 6, i32 0 }, %struct.iso_type { i32 2, i32 12, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 6, i32 12, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 4, i32 0 }, %struct.iso_type { i32 2, i32 1, i32 0 }, %struct.iso_type { i32 2, i32 6, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 24, i32 0 }, %struct.iso_type { i32 7, i32 99, i32 2 }, %struct.iso_type { i32 2, i32 11, i32 2 }, %struct.iso_type { i32 2, i32 11, i32 2 }, %struct.iso_type { i32 8, i32 28, i32 2 }, %struct.iso_type { i32 10, i32 37, i32 2 }, %struct.iso_type { i32 10, i32 104, i32 3 }, %struct.iso_type { i32 6, i32 12, i32 0 }, %struct.iso_type { i32 6, i32 6, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 7, i32 8, i32 0 }, %struct.iso_type { i32 7, i32 15, i32 0 }, %struct.iso_type { i32 7, i32 99, i32 2 }, %struct.iso_type { i32 7, i32 99, i32 2 }, %struct.iso_type { i32 7, i32 76, i32 2 }, %struct.iso_type { i32 7, i32 204, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 6, i32 3, i32 0 }, %struct.iso_type { i32 6, i32 3, i32 0 }, %struct.iso_type { i32 6, i32 3, i32 0 }, %struct.iso_type { i32 9, i32 8, i32 0 }, %struct.iso_type { i32 9, i32 48, i32 0 }, %struct.iso_type { i32 7, i32 120, i32 3 }, %struct.iso_type { i32 9, i32 255, i32 3 }, %struct.iso_type { i32 2, i32 35, i32 2 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 11, i32 2 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 9, i32 8, i32 0 }, %struct.iso_type { i32 9, i32 0, i32 0 }, %struct.iso_type { i32 7, i32 204, i32 3 }, %struct.iso_type { i32 2, i32 2, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 6, i32 0 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 2, i32 6, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 16, i32 0 }, %struct.iso_type { i32 2, i32 16, i32 0 }, %struct.iso_type { i32 2, i32 16, i32 0 }, %struct.iso_type { i32 2, i32 16, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 3, i32 0 }, %struct.iso_type { i32 2, i32 11, i32 2 }, %struct.iso_type { i32 2, i32 11, i32 2 }, %struct.iso_type { i32 7, i32 99, i32 2 }, %struct.iso_type { i32 9, i32 999, i32 3 }, %struct.iso_type { i32 3, i32 17, i32 0 }, %struct.iso_type { i32 7, i32 25, i32 0 }, %struct.iso_type { i32 6, i32 11, i32 2 }, %struct.iso_type { i32 2, i32 11, i32 2 }, %struct.iso_type { i32 7, i32 17, i32 2 }, %struct.iso_type { i32 7, i32 28, i32 2 }, %struct.iso_type { i32 7, i32 28, i32 2 }, %struct.iso_type { i32 7, i32 100, i32 3 }, %struct.iso_type { i32 2, i32 16, i32 0 }, %struct.iso_type { i32 2, i32 16, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 2, i32 10, i32 0 }, %struct.iso_type { i32 7, i32 84, i32 2 }, %struct.iso_type { i32 7, i32 84, i32 2 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 7, i32 999, i32 3 }, %struct.iso_type { i32 9, i32 8, i32 0 }], align 16
@.str.131 = private unnamed_addr constant [13 x i8] c"ISO 8583-1%s\00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c" Unknown VERSION\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"Type %s - %s\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"Unknown type\00", align 1
@.str.135 = private unnamed_addr constant [16 x i8] c":  Type %s - %s\00", align 1
@g_ascii_table = external local_unnamed_addr constant ptr, align 8
@.str.136 = private unnamed_addr constant [6 x i8] c":1987\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c":1993\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c":2003\00", align 1
@packetversionnames = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.136 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.137 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.138 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.140 = private unnamed_addr constant [16 x i8] c"Reserved by ISO\00", align 1
@.str.141 = private unnamed_addr constant [22 x i8] c"Authorization Message\00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"Financial Messages\00", align 1
@.str.143 = private unnamed_addr constant [21 x i8] c"File Actions Message\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"Reversal and Chargeback\00", align 1
@.str.145 = private unnamed_addr constant [23 x i8] c"Reconciliation Message\00", align 1
@.str.146 = private unnamed_addr constant [23 x i8] c"Administrative Message\00", align 1
@.str.147 = private unnamed_addr constant [24 x i8] c"Fee Collection Messages\00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"Network Management\00", align 1
@packettypenames = internal constant [11 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.140 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.141 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.142 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.143 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.144 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.145 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.146 }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.147 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.148 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.140 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.150 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.151 = private unnamed_addr constant [13 x i8] c" %s. cod: %s\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"Proc\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"Net\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"bigendian\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"Big endian\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"littleendian\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"Little endian\00", align 1
@enumendians = internal constant [3 x { ptr, ptr, i32, [4 x i8] }] [{ ptr, ptr, i32, [4 x i8] } { ptr @.str.154, ptr @.str.155, i32 1, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.156, ptr @.str.157, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.159 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.160 = private unnamed_addr constant [39 x i8] c"Digits represented as ASCII Characters\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"bcd\00", align 1
@.str.162 = private unnamed_addr constant [30 x i8] c"Digits represented in nibbles\00", align 1
@enum_charset = internal constant [3 x { ptr, ptr, i32, [4 x i8] }] [{ ptr, ptr, i32, [4 x i8] } { ptr @.str.159, ptr @.str.160, i32 1, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.161, ptr @.str.162, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.164 = private unnamed_addr constant [45 x i8] c"Bin data represented as Hex Ascii characters\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"bin\00", align 1
@.str.166 = private unnamed_addr constant [21 x i8] c"Bin data not encoded\00", align 1
@enum_bin_encode = internal constant [3 x { ptr, ptr, i32, [4 x i8] }] [{ ptr, ptr, i32, [4 x i8] } { ptr @.str.159, ptr @.str.164, i32 1, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.165, ptr @.str.166, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } zeroinitializer], align 16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_iso8583() local_unnamed_addr #0 {
.peel.next:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118) ; 2 uses
  store i32 %i.a, ptr @proto_iso8583, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_iso8583.hf, i32 noundef 4)
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 -1>, ptr getelementptr inbounds nuw (i8, ptr @proto_register_iso8583.hf_data, i64 56), align 8
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @proto_register_iso8583.hf_data, i64 72), align 8
  store ptr @iso8583_data_bit, ptr @proto_register_iso8583.hf_data, align 16
  %i.b = tail call ptr @wmem_epan_scope()
  %i.c = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.b, ptr noundef nonnull @.str.119, i32 noundef 1)
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @proto_register_iso8583.hf_data, i64 8), align 8
  %i.d = tail call ptr @wmem_epan_scope()
  %i.e = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.d, ptr noundef nonnull @.str.120, i32 noundef 1)
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @proto_register_iso8583.hf_data, i64 16), align 16
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @proto_register_iso8583.hf_data, i64 24), align 8
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @proto_register_iso8583.hf_data, i64 28), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @proto_register_iso8583.hf_data, i64 32), i8 0, i64 16, i1 false)
  store ptr @.str.12, ptr getelementptr inbounds nuw (i8, ptr @proto_register_iso8583.hf_data, i64 48), align 16
  br label %bb.a

bb.a:                                             ; preds = %.peel.next, %bb.a
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.a ] ; 4 uses
  %i.f = getelementptr [80 x i8], ptr @proto_register_iso8583.hf_data, i64 %indvars.iv ; 8 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = getelementptr i8, ptr %i.f, i64 56
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 -1>, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 72
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr [4 x i8], ptr @iso8583_data_bit, i64 %indvars.iv
  store ptr %i.j, ptr %i.f, align 16
  %i.k = tail call ptr @wmem_epan_scope()
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.l = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %i.m = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.k, ptr noundef nonnull @.str.119, i32 noundef %i.l)
  store ptr %i.m, ptr %i.g, align 8
  %i.n = tail call ptr @wmem_epan_scope()
  %i.o = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.n, ptr noundef nonnull @.str.120, i32 noundef %i.l)
  %i.p = getelementptr i8, ptr %i.f, i64 16
  store ptr %i.o, ptr %i.p, align 16
  %i.q = getelementptr i8, ptr %i.f, i64 24
  store i32 26, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.f, i64 28
  %i.s = getelementptr [8 x i8], ptr @proto_register_iso8583.hf_data_blurb, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.f, i64 48
  store ptr %i.t, ptr %i.u, align 16
  %exitcond.not = icmp eq i64 %indvars.iv.next, 128
  br i1 %exitcond.not, label %.loopexit, label %bb.a, !llvm.loop !6

.loopexit:                                        ; preds = %bb.a
  %i.v = load i32, ptr @proto_iso8583, align 4
  tail call void @proto_register_field_array(i32 noundef %i.v, ptr noundef nonnull @proto_register_iso8583.hf_data, i32 noundef 128)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_iso8583.ett, i32 noundef 1)
  %i.w = load i32, ptr @proto_iso8583, align 4
  %i.x = tail call ptr @expert_register_protocol(i32 noundef %i.w)
  tail call void @expert_register_field_array(ptr noundef %i.x, ptr noundef nonnull @proto_register_iso8583.ei, i32 noundef 1)
  %i.y = load i32, ptr @proto_iso8583, align 4
  %i.z = tail call ptr @register_dissector(ptr noundef nonnull @.str.118, ptr noundef nonnull @dissect_iso8583, i32 noundef %i.y)
  store ptr %i.z, ptr @iso8583_handle, align 8
  %i.aa = load i32, ptr @proto_iso8583, align 4
  %i.ab = tail call ptr @prefs_register_protocol(i32 noundef %i.aa, ptr noundef null) ; 3 uses
  tail call void @prefs_register_enum_preference(ptr noundef %i.ab, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, ptr noundef nonnull @len_byte_order, ptr noundef nonnull @enumendians, i1 noundef zeroext true)
  tail call void @prefs_register_enum_preference(ptr noundef %i.ab, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, ptr noundef nonnull @charset_pref, ptr noundef nonnull @enum_charset, i1 noundef zeroext true)
  tail call void @prefs_register_enum_preference(ptr noundef %i.ab, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, ptr noundef nonnull @bin_encode_pref, ptr noundef nonnull @enum_bin_encode, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_epan_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_iso8583(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, i32 noundef 2, ptr noundef nonnull @get_iso8583_msg_len, ptr noundef nonnull @dissect_iso8583_msg, ptr noundef %3)
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_enum_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_iso8583() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @iso8583_handle, align 8
  tail call void @dissector_add_for_decode_as_with_preference(ptr noundef nonnull @.str.130, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as_with_preference(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 2, 65538) i32 @get_iso8583_msg_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @len_byte_order, align 4
  %i.b = icmp eq i32 %i.a, 1
  %i.c = select i1 %i.b, i32 0, i32 -2147483648
  %i.d = tail call zeroext i16 @tvb_get_uint16(ptr noundef %1, i32 noundef %2, i32 noundef %i.c)
  %i.e = zext i16 %i.d to i32
  %i.f = add nuw nsw i32 %i.e, 2
  ret i32 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_iso8583_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 11 uses
  %i.b = alloca i32, align 4                      ; 21 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  %i.d = alloca [3 x i64], align 16               ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.f = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.g = icmp ult i32 %i.f, 22
  %indvars.iv.i.sroa.gep161 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br i1 %i.g, label %dissect_databits.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @charset_pref, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 416
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr @tvb_get_string_enc(ptr noundef %i.k, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0)
  br label %bb.d

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 2, i64 noundef 2) ; 0 uses
  %i.n = getelementptr i8, ptr %1, i64 416
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call ptr @wmem_strbuf_new_sized(ptr noundef %i.o, i64 noundef 4) ; 5 uses
  %i.q = load i8, ptr %i.c, align 16              ; 2 uses
  %i.r = lshr i8 %i.q, 4                          ; 2 uses
  %i.s = icmp ugt i8 %i.q, -97
  %i.t = add nuw nsw i8 %i.r, 55
  %i.u = or disjoint i8 %i.r, 48
  %i.v = select i1 %i.s, i8 %i.t, i8 %i.u
  call void @wmem_strbuf_append_c(ptr noundef %i.p, i8 noundef signext %i.v)
  %i.w = load i8, ptr %i.c, align 16
  %i.x = and i8 %i.w, 15                          ; 3 uses
  %i.y = icmp samesign ugt i8 %i.x, 9
  %i.z = add nuw nsw i8 %i.x, 55
  %i.aa = or disjoint i8 %i.x, 48
  %i.ab = select i1 %i.y, i8 %i.z, i8 %i.aa
  call void @wmem_strbuf_append_c(ptr noundef %i.p, i8 noundef signext %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %i.ae = lshr i8 %i.ad, 4                        ; 2 uses
  %i.af = icmp ugt i8 %i.ad, -97
  %i.ag = add nuw nsw i8 %i.ae, 55
  %i.ah = or disjoint i8 %i.ae, 48
  %i.ai = select i1 %i.af, i8 %i.ag, i8 %i.ah
  call void @wmem_strbuf_append_c(ptr noundef %i.p, i8 noundef signext %i.ai)
  %i.aj = load i8, ptr %i.ac, align 1
  %i.ak = and i8 %i.aj, 15                        ; 3 uses
  %i.al = icmp samesign ugt i8 %i.ak, 9
  %i.am = add nuw nsw i8 %i.ak, 55
  %i.an = or disjoint i8 %i.ak, 48
  %i.ao = select i1 %i.al, i8 %i.am, i8 %i.an
  call void @wmem_strbuf_append_c(ptr noundef %i.p, i8 noundef signext %i.ao)
  %i.ap = call ptr @wmem_strbuf_finalize(ptr noundef %i.p) ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %dissect_databits.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i, %bb.c
  %.0113 = phi ptr [ %i.l, %bb.c ], [ %i.ap, %.lr.ph.i ] ; 13 uses
  %i.ar = call i64 @strlen(ptr noundef %.0113) #8
  %i.as = icmp eq i64 %i.ar, 4
  br i1 %i.as, label %bb.e, label %isnum_str.exit.thread170

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr i8, ptr %.0113, i64 4
  %i.au = icmp ult ptr %.0113, %i.at
  br i1 %i.au, label %.lr.ph.i125, label %dissect_databits.exit

.lr.ph.i125:                                      ; preds = %bb.e
  %i.av = load ptr, ptr @g_ascii_table, align 8   ; 4 uses
  %i.aw = load i8, ptr %.0113, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr [2 x i8], ptr %i.av, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = and i16 %i.az, 8
  %.not.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i, label %dissect_databits.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i125
  %i.bb = getelementptr i8, ptr %.0113, i64 1
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr [2 x i8], ptr %i.av, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = and i16 %i.bf, 8
  %.not.i.1 = icmp eq i16 %i.bg, 0
  br i1 %.not.i.1, label %dissect_databits.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr i8, ptr %.0113, i64 2
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr [2 x i8], ptr %i.av, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = and i16 %i.bl, 8
  %.not.i.2 = icmp eq i16 %i.bm, 0
  br i1 %.not.i.2, label %dissect_databits.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr i8, ptr %.0113, i64 3
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr [2 x i8], ptr %i.av, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = and i16 %i.br, 8
  %.not.i.3 = icmp eq i16 %i.bs, 0
  br i1 %.not.i.3, label %dissect_databits.exit, label %isnum_str.exit.thread170

isnum_str.exit.thread170:                         ; preds = %bb.h, %bb.d
  %i.bt = load i32, ptr @bin_encode_pref, align 4
  %i.bu = icmp eq i32 %i.bt, 2
  br i1 %i.bu, label %bb.i, label %.lr.ph.i126

bb.i:                                             ; preds = %isnum_str.exit.thread170
  %i.bv = getelementptr i8, ptr %1, i64 416
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call ptr @tvb_get_string_enc(ptr noundef %i.bw, ptr noundef %0, i32 noundef 6, i32 noundef 16, i32 noundef 0)
  br label %bb.j

.lr.ph.i126:                                      ; preds = %isnum_str.exit.thread170
  %i.by = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 6, i64 noundef 8) ; 0 uses
  %i.bz = getelementptr i8, ptr %1, i64 416
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call ptr @wmem_strbuf_new_sized(ptr noundef %i.ca, i64 noundef 8) ; 9 uses
  %i.cc = load i8, ptr %i.c, align 16             ; 2 uses
  %i.cd = lshr i8 %i.cc, 4                        ; 2 uses
  %i.ce = icmp ugt i8 %i.cc, -97
  %i.cf = add nuw nsw i8 %i.cd, 55
  %i.cg = or disjoint i8 %i.cd, 48
  %i.ch = select i1 %i.ce, i8 %i.cf, i8 %i.cg
  call void @wmem_strbuf_append_c(ptr noundef %i.cb, i8 noundef signext %i.ch)
  %i.ci = load i8, ptr %i.c, align 16
  %i.cj = and i8 %i.ci, 15                        ; 3 uses
  %i.ck = icmp samesign ugt i8 %i.cj, 9
  %i.cl = add nuw nsw i8 %i.cj, 55
  %i.cm = or disjoint i8 %i.cj, 48
  %i.cn = select i1 %i.ck, i8 %i.cl, i8 %i.cm
  call void @wmem_strbuf_append_c(ptr noundef %i.cb, i8 noundef signext %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1             ; 2 uses
  %i.cq = lshr i8 %i.cp, 4                        ; 2 uses
  %i.cr = icmp ugt i8 %i.cp, -97
  %i.cs = add nuw nsw i8 %i.cq, 55
  %i.ct = or disjoint i8 %i.cq, 48
  %i.cu = select i1 %i.cr, i8 %i.cs, i8 %i.ct
  call void @wmem_strbuf_append_c(ptr noundef %i.cb, i8 noundef signext %i.cu)
  %i.cv = load i8, ptr %i.co, align 1
  %i.cw = and i8 %i.cv, 15                        ; 3 uses
  %i.cx = icmp samesign ugt i8 %i.cw, 9
  %i.cy = add nuw nsw i8 %i.cw, 55
  %i.cz = or disjoint i8 %i.cw, 48
  %i.da = select i1 %i.cx, i8 %i.cy, i8 %i.cz
  call void @wmem_strbuf_append_c(ptr noundef %i.cb, i8 noundef signext %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 2             ; 2 uses
  %i.dd = lshr i8 %i.dc, 4                        ; 2 uses
  %i.de = icmp ugt i8 %i.dc, -97
  %i.df = add nuw nsw i8 %i.dd, 55
  %i.dg = or disjoint i8 %i.dd, 48
  %i.dh = select i1 %i.de, i8 %i.df, i8 %i.dg
  call void @wmem_strbuf_append_c(ptr noundef %i.cb, i8 noundef signext %i.dh)
  %i.di = load i8, ptr %i.db, align 2
  %i.dj = and i8 %i.di, 15                        ; 3 uses
  %i.dk = icmp samesign ugt i8 %i.dj, 9
  %i.dl = add nuw nsw i8 %i.dj, 55
  %i.dm = or disjoint i8 %i.dj, 48
  %i.dn = select i1 %i.dk, i8 %i.dl, i8 %i.dm
  call void @wmem_strbuf_append_c(ptr noundef %i.cb, i8 noundef signext %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1             ; 2 uses
  %i.dq = lshr i8 %i.dp, 4                        ; 2 uses
  %i.dr = icmp ugt i8 %i.dp, -97
  %i.ds = add nuw nsw i8 %i.dq, 55
  %i.dt = or disjoint i8 %i.dq, 48
  %i.du = select i1 %i.dr, i8 %i.ds, i8 %i.dt
  call void @wmem_strbuf_append_c(ptr noundef %i.cb, i8 noundef signext %i.du)
  %i.dv = load i8, ptr %i.do, align 1
  %i.dw = and i8 %i.dv, 15                        ; 3 uses
  %i.dx = icmp samesign ugt i8 %i.dw, 9
  %i.dy = add nuw nsw i8 %i.dw, 55
  %i.dz = or disjoint i8 %i.dw, 48
  %i.ea = select i1 %i.dx, i8 %i.dy, i8 %i.dz
  call void @wmem_strbuf_append_c(ptr noundef %i.cb, i8 noundef signext %i.ea)
  %i.eb = call ptr @wmem_strbuf_finalize(ptr noundef %i.cb) ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %dissect_databits.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i126, %bb.i
  %.0112 = phi ptr [ %i.bx, %bb.i ], [ %i.eb, %.lr.ph.i126 ] ; 19 uses
  %i.ed = call i64 @strlen(ptr noundef %.0112) #8
  %i.ee = icmp eq i64 %i.ed, 16
  br i1 %i.ee, label %bb.k, label %ishex_str.exit.thread175

bb.k:                                             ; preds = %bb.j
  %i.ef = getelementptr i8, ptr %.0112, i64 16
  %i.eg = icmp ult ptr %.0112, %i.ef
  br i1 %i.eg, label %.lr.ph.i132, label %dissect_databits.exit

.lr.ph.i132:                                      ; preds = %bb.k
  %i.eh = load ptr, ptr @g_ascii_table, align 8   ; 16 uses
  %i.ei = load i8, ptr %.0112, align 1
end_hunk_0
begin_hunk_1_@dissect_iso8583_msg:bb.a
  %i.tr = zext i8 %i.tq to i64
  %i.ts = getelementptr [2 x i8], ptr %i.jh, i64 %i.tr
  %i.tt = load i16, ptr %i.ts, align 2
  %i.tu = and i16 %i.tt, 1024
  %.not.i140.10 = icmp eq i16 %i.tu, 0
  br i1 %.not.i140.10, label %ishex_str.exit142.thread, label %.lr.ph.i138.11

.lr.ph.i138.11:                                   ; preds = %.lr.ph.i138.10
  %i.tv = getelementptr i8, ptr %i.rf, i64 11
  %i.tw = load i8, ptr %i.tv, align 1
  %i.tx = zext i8 %i.tw to i64
  %i.ty = getelementptr [2 x i8], ptr %i.jh, i64 %i.tx
  %i.tz = load i16, ptr %i.ty, align 2
  %i.ua = and i16 %i.tz, 1024
  %.not.i140.11 = icmp eq i16 %i.ua, 0
  br i1 %.not.i140.11, label %ishex_str.exit142.thread, label %.lr.ph.i138.12

.lr.ph.i138.12:                                   ; preds = %.lr.ph.i138.11
  %i.ub = getelementptr i8, ptr %i.rf, i64 12
  %i.uc = load i8, ptr %i.ub, align 1
  %i.ud = zext i8 %i.uc to i64
  %i.ue = getelementptr [2 x i8], ptr %i.jh, i64 %i.ud
  %i.uf = load i16, ptr %i.ue, align 2
  %i.ug = and i16 %i.uf, 1024
  %.not.i140.12 = icmp eq i16 %i.ug, 0
  br i1 %.not.i140.12, label %ishex_str.exit142.thread, label %.lr.ph.i138.13

.lr.ph.i138.13:                                   ; preds = %.lr.ph.i138.12
  %i.uh = getelementptr i8, ptr %i.rf, i64 13
  %i.ui = load i8, ptr %i.uh, align 1
  %i.uj = zext i8 %i.ui to i64
  %i.uk = getelementptr [2 x i8], ptr %i.jh, i64 %i.uj
  %i.ul = load i16, ptr %i.uk, align 2
  %i.um = and i16 %i.ul, 1024
  %.not.i140.13 = icmp eq i16 %i.um, 0
  br i1 %.not.i140.13, label %ishex_str.exit142.thread, label %.lr.ph.i138.14

.lr.ph.i138.14:                                   ; preds = %.lr.ph.i138.13
  %i.un = getelementptr i8, ptr %i.rf, i64 14
  %i.uo = load i8, ptr %i.un, align 1
  %i.up = zext i8 %i.uo to i64
  %i.uq = getelementptr [2 x i8], ptr %i.jh, i64 %i.up
  %i.ur = load i16, ptr %i.uq, align 2
  %i.us = and i16 %i.ur, 1024
  %.not.i140.14 = icmp eq i16 %i.us, 0
  br i1 %.not.i140.14, label %ishex_str.exit142.thread, label %.lr.ph.i138.15

.lr.ph.i138.15:                                   ; preds = %.lr.ph.i138.14
  %i.ut = getelementptr i8, ptr %i.rf, i64 15
  %i.uu = load i8, ptr %i.ut, align 1
  %i.uv = zext i8 %i.uu to i64
  %i.uw = getelementptr [2 x i8], ptr %i.jh, i64 %i.uv
  %i.ux = load i16, ptr %i.uw, align 2
  %i.uy = and i16 %i.ux, 1024
  %.not.i140.15 = icmp eq i16 %i.uy, 0
  br i1 %.not.i140.15, label %ishex_str.exit142.thread, label %ishex_str.exit142.thread180

ishex_str.exit142.thread:                         ; preds = %.lr.ph.i138.preheader, %.lr.ph.i138.1, %.lr.ph.i138.2, %.lr.ph.i138.3, %.lr.ph.i138.4, %.lr.ph.i138.5, %.lr.ph.i138.6, %.lr.ph.i138.7, %.lr.ph.i138.8, %.lr.ph.i138.9, %.lr.ph.i138.10, %.lr.ph.i138.11, %.lr.ph.i138.12, %.lr.ph.i138.13, %.lr.ph.i138.14, %.lr.ph.i138.15, %bb.bs
  %i.uz = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.rd, ptr noundef nonnull @ei_iso8583_MALFORMED) ; 0 uses
  %i.va = or disjoint i32 %.0114, 16
  br label %dissect_databits.exit

bb.bt:                                            ; preds = %get_bitmap.exit.thread
  %i.vb = load ptr, ptr %i.jg, align 8
  %i.vc = call ptr @tvb_bytes_to_str(ptr noundef %i.vb, ptr noundef %0, i32 noundef %.0114, i32 noundef 8)
  %i.vd = load i32, ptr @hf_iso8583_bitmap1, align 4
  %i.ve = call ptr @proto_tree_add_string(ptr noundef %i.is, i32 noundef %i.vd, ptr noundef %0, i32 noundef %.0114, i32 noundef 8, ptr noundef %i.vc) ; 0 uses
  br label %ishex_str.exit142.thread180

ishex_str.exit142.thread180:                      ; preds = %.lr.ph.i138.15, %bb.bt
  %.1 = phi i32 [ 8, %bb.bt ], [ 16, %.lr.ph.i138.15 ] ; 8 uses
  %i.vf = or disjoint i32 %.1, %.0114             ; 7 uses
  %i.vg = icmp sgt i32 %.2167248, 1
  br i1 %i.vg, label %bb.bu, label %.thread

bb.bu:                                            ; preds = %ishex_str.exit142.thread180
  %i.vh = load i32, ptr @bin_encode_pref, align 4
  %i.vi = icmp eq i32 %i.vh, 1
  br i1 %i.vi, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.vj = load i32, ptr @hf_iso8583_bitmap2, align 4
  %i.vk = call ptr @proto_tree_add_item(ptr noundef %i.is, i32 noundef %i.vj, ptr noundef %0, i32 noundef %i.vf, i32 noundef %.1, i32 noundef 0) ; 3 uses
  %i.vl = load ptr, ptr %i.jg, align 8
  %i.vm = call ptr @tvb_get_string_enc(ptr noundef %i.vl, ptr noundef %0, i32 noundef %i.vf, i32 noundef %.1, i32 noundef 0) ; 4 uses
  %i.vn = zext nneg i32 %.1 to i64
  %i.vo = getelementptr i8, ptr %i.vm, i64 %i.vn  ; 3 uses
  %i.vp = icmp ult ptr %i.vm, %i.vo
  br i1 %i.vp, label %.lr.ph.i145, label %ishex_str.exit149

.lr.ph.i145:                                      ; preds = %bb.bv, %bb.bw
  %.09.i146 = phi ptr [ %i.wn, %bb.bw ], [ %i.vm, %bb.bv ] ; 9 uses
  %i.vq = load i8, ptr %.09.i146, align 1
  %i.vr = zext i8 %i.vq to i64
  %i.vs = getelementptr [2 x i8], ptr %i.jh, i64 %i.vr
  %i.vt = load i16, ptr %i.vs, align 2
  %i.vu = and i16 %i.vt, 1024
  %.not.i147 = icmp eq i16 %i.vu, 0
  br i1 %.not.i147, label %ishex_str.exit149, label %.lr.ph.i145.1

.lr.ph.i145.1:                                    ; preds = %.lr.ph.i145
  %i.vv = getelementptr i8, ptr %.09.i146, i64 1
  %i.vw = load i8, ptr %i.vv, align 1
  %i.vx = zext i8 %i.vw to i64
  %i.vy = getelementptr [2 x i8], ptr %i.jh, i64 %i.vx
  %i.vz = load i16, ptr %i.vy, align 2
  %i.wa = and i16 %i.vz, 1024
  %.not.i147.1 = icmp eq i16 %i.wa, 0
  br i1 %.not.i147.1, label %ishex_str.exit149.loopexit.split.loop.exit308, label %.lr.ph.i145.2

.lr.ph.i145.2:                                    ; preds = %.lr.ph.i145.1
  %i.wb = getelementptr i8, ptr %.09.i146, i64 2
  %i.wc = load i8, ptr %i.wb, align 1
  %i.wd = zext i8 %i.wc to i64
  %i.we = getelementptr [2 x i8], ptr %i.jh, i64 %i.wd
  %i.wf = load i16, ptr %i.we, align 2
  %i.wg = and i16 %i.wf, 1024
  %.not.i147.2 = icmp eq i16 %i.wg, 0
  br i1 %.not.i147.2, label %ishex_str.exit149.loopexit.split.loop.exit306, label %.lr.ph.i145.3

.lr.ph.i145.3:                                    ; preds = %.lr.ph.i145.2
  %i.wh = getelementptr i8, ptr %.09.i146, i64 3
  %i.wi = load i8, ptr %i.wh, align 1
  %i.wj = zext i8 %i.wi to i64
  %i.wk = getelementptr [2 x i8], ptr %i.jh, i64 %i.wj
  %i.wl = load i16, ptr %i.wk, align 2
  %i.wm = and i16 %i.wl, 1024
  %.not.i147.3 = icmp eq i16 %i.wm, 0
  br i1 %.not.i147.3, label %ishex_str.exit149.loopexit.split.loop.exit, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i145.3
  %i.wn = getelementptr i8, ptr %.09.i146, i64 4  ; 2 uses
  %exitcond.not.i148.3 = icmp eq ptr %i.wn, %i.vo
  br i1 %exitcond.not.i148.3, label %ishex_str.exit149.thread, label %.lr.ph.i145, !llvm.loop !9

ishex_str.exit149.loopexit.split.loop.exit:       ; preds = %.lr.ph.i145.3
  %i.wo = getelementptr i8, ptr %.09.i146, i64 3
  br label %ishex_str.exit149

ishex_str.exit149.loopexit.split.loop.exit306:    ; preds = %.lr.ph.i145.2
  %i.wp = getelementptr i8, ptr %.09.i146, i64 2
  br label %ishex_str.exit149

ishex_str.exit149.loopexit.split.loop.exit308:    ; preds = %.lr.ph.i145.1
  %i.wq = getelementptr i8, ptr %.09.i146, i64 1
  br label %ishex_str.exit149

ishex_str.exit149:                                ; preds = %ishex_str.exit149.loopexit.split.loop.exit, %ishex_str.exit149.loopexit.split.loop.exit306, %ishex_str.exit149.loopexit.split.loop.exit308, %.lr.ph.i145, %bb.bv
  %.0.lcssa.i144 = phi ptr [ %i.vm, %bb.bv ], [ %i.wq, %ishex_str.exit149.loopexit.split.loop.exit308 ], [ %i.wp, %ishex_str.exit149.loopexit.split.loop.exit306 ], [ %i.wo, %ishex_str.exit149.loopexit.split.loop.exit ], [ %.09.i146, %.lr.ph.i145 ]
  %.not190 = icmp eq ptr %.0.lcssa.i144, %i.vo
  br i1 %.not190, label %ishex_str.exit149.thread, label %bb.bx

bb.bx:                                            ; preds = %ishex_str.exit149
  %i.wr = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.vk, ptr noundef nonnull @ei_iso8583_MALFORMED) ; 0 uses
  %i.ws = add nuw nsw i32 %i.vf, %.1
  br label %dissect_databits.exit

bb.by:                                            ; preds = %bb.bu
  %i.wt = load ptr, ptr %i.jg, align 8
  %i.wu = call ptr @tvb_bytes_to_str(ptr noundef %i.wt, ptr noundef %0, i32 noundef %i.vf, i32 noundef %.1)
  %i.wv = load i32, ptr @hf_iso8583_bitmap2, align 4
  %i.ww = call ptr @proto_tree_add_string(ptr noundef %i.is, i32 noundef %i.wv, ptr noundef %0, i32 noundef %i.vf, i32 noundef %.1, ptr noundef %i.wu)
  br label %ishex_str.exit149.thread

ishex_str.exit149.thread:                         ; preds = %bb.bw, %bb.by, %ishex_str.exit149
  %.1117 = phi ptr [ %i.vk, %ishex_str.exit149 ], [ %i.ww, %bb.by ], [ %i.vk, %bb.bw ]
  %i.wx = add nuw nsw i32 %i.vf, %.1              ; 2 uses
  %.not191 = icmp eq i32 %.2167248, 2
  br i1 %.not191, label %.thread, label %bb.bz

bb.bz:                                            ; preds = %ishex_str.exit149.thread
  %i.wy = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.1117, ptr noundef nonnull @ei_iso8583_MALFORMED) ; 0 uses
  br label %dissect_databits.exit

.thread:                                          ; preds = %ishex_str.exit142.thread180, %ishex_str.exit149.thread
  %.0115187 = phi i32 [ %i.wx, %ishex_str.exit149.thread ], [ %i.vf, %ishex_str.exit142.thread180 ]
  %i.wz = load i32, ptr %i.e, align 4             ; 7 uses
  %i.xa = shl i32 %.2167248, 6                    ; 2 uses
  %.not.i150 = icmp eq ptr %1, null
  br i1 %.not.i150, label %dissect_databits.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.thread
  %i.xb = icmp sgt i32 %i.xa, 0
  br i1 %i.xb, label %.lr.ph.i151, label %._crit_edge.i

.lr.ph.i151:                                      ; preds = %.preheader.i
  %.not124.i.i = icmp eq ptr %i.is, null          ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.xa to i64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ed, %.lr.ph.i151
  %indvars.iv.i152 = phi i64 [ 0, %.lr.ph.i151 ], [ %indvars.iv.next.i, %bb.ed ] ; 7 uses
  %.04483.i = phi i32 [ undef, %.lr.ph.i151 ], [ %.1.i, %bb.ed ] ; 3 uses
  %.04882.i = phi i32 [ %.0115187, %.lr.ph.i151 ], [ %.149.i, %bb.ed ] ; 12 uses
  %i.xc = trunc nuw nsw i64 %indvars.iv.i152 to i32 ; 2 uses
  %.urem.i = and i32 %i.xc, 63                    ; 2 uses
  %.not36.i = icmp eq i32 %.urem.i, 0
  br i1 %.not36.i, label %bb.ed, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.udiv125.i = lshr i64 %indvars.iv.i152, 6
  %i.xd = and i64 %.udiv125.i, 67108863
  %4 = getelementptr [8 x i8], ptr %i.d, i64 %i.xd
  %i.xe = load i64, ptr %4, align 8
  %narrow.i = xor i32 %.urem.i, 63
  %i.xf = zext nneg i32 %narrow.i to i64
  %i.xg = shl nuw nsw i64 1, %i.xf
  %i.xh = and i64 %i.xe, %i.xg
  %.not37.i = icmp eq i64 %i.xh, 0
  br i1 %.not37.i, label %bb.ed, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.xi = getelementptr [12 x i8], ptr %.0111, i64 %indvars.iv.i152 ; 5 uses
  %i.xj = getelementptr [4 x i8], ptr @iso8583_data_bit, i64 %indvars.iv.i152
  %i.xk = load i32, ptr %i.xj, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.xl = getelementptr i8, ptr %i.xi, i64 8
  %i.xm = load i32, ptr %i.xl, align 4            ; 9 uses
  %i.xn = icmp eq i32 %i.xm, 0
  br i1 %i.xn, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.xo = getelementptr i8, ptr %i.xi, i64 4
  %i.xp = load i32, ptr %i.xo, align 4            ; 2 uses
  store i32 %i.xp, ptr %i.b, align 4
  br label %bb.cl

bb.ce:                                            ; preds = %bb.cc
  store i32 %i.xm, ptr %i.b, align 4
  %i.xq = load i32, ptr @charset_pref, align 4
  switch i32 %i.xq, label %.thread.i.i [
    i32 1, label %bb.cf
    i32 2, label %bb.ch
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.xr = add i32 %.04882.i, -2
  %i.xs = add i32 %i.xr, %i.xm
  %i.xt = icmp ugt i32 %i.xs, %i.wz
  br i1 %i.xt, label %.thread.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.xu = add i32 %i.xm, %.04882.i                ; 2 uses
  %i.xv = call zeroext i1 @tvb_get_string_uint(ptr noundef %0, i32 noundef %i.xu, i32 noundef %i.xm, i32 noundef 67108864, ptr noundef nonnull %i.b, ptr noundef null)
  br i1 %i.xv, label %thread-pre-split.i.i, label %.thread.i

bb.ch:                                            ; preds = %bb.ce
  %i.xw = and i32 %i.xm, 1
  %.not.i.i153 = icmp eq i32 %i.xw, 0
  br i1 %.not.i.i153, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.xx = add i32 %i.xm, 1                        ; 2 uses
  store i32 %i.xx, ptr %i.b, align 4
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.xy = phi i32 [ %i.xx, %bb.ci ], [ %i.xm, %bb.ch ]
  %i.xz = zext i32 %i.xy to i64
  %i.ya = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %.04882.i, i64 noundef %i.xz) ; 0 uses
  %i.yb = add i32 %.04882.i, -2
  %i.yc = load i32, ptr %i.b, align 4             ; 3 uses
  %i.yd = lshr i32 %i.yc, 1                       ; 2 uses
  %i.ye = add i32 %i.yb, %i.yd
  %.not106.i.i = icmp ugt i32 %i.ye, %i.wz
  br i1 %.not106.i.i, label %.thread.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.yf = add i32 %i.yd, %.04882.i
  %.not105126.i.i = icmp eq i32 %i.yc, 0
  br i1 %.not105126.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ck
  %i.yg = add i32 %i.yc, -2                       ; 2 uses
  %i.yh = lshr i32 %i.yg, 1                       ; 2 uses
  %i.yi = add nuw i32 %i.yh, 1                    ; 2 uses
  %i.yj = icmp eq i32 %i.yh, 0
  br i1 %i.yj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.yi, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.0128.i.i = phi ptr [ %i.a, %.lr.ph.i.i.preheader.new ], [ %i.zb, %.lr.ph.i.i ] ; 3 uses
  %.084127.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.za, %.lr.ph.i.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.yk = mul i32 %.084127.i.i, 100
  %i.yl = load i8, ptr %.0128.i.i, align 1
  %i.ym = zext i8 %i.yl to i32                    ; 2 uses
  %i.yn = lshr i32 %i.ym, 4
  %i.yo = mul nuw nsw i32 %i.yn, 10
  %i.yp = and i32 %i.ym, 15
  %i.yq = add i32 %i.yp, %i.yk
  %i.yr = add i32 %i.yq, %i.yo
  %i.ys = getelementptr i8, ptr %.0128.i.i, i64 1
  %i.yt = mul i32 %i.yr, 100
  %i.yu = load i8, ptr %i.ys, align 1
  %i.yv = zext i8 %i.yu to i32                    ; 2 uses
  %i.yw = lshr i32 %i.yv, 4
  %i.yx = mul nuw nsw i32 %i.yw, 10
  %i.yy = and i32 %i.yv, 15
  %i.yz = add i32 %i.yy, %i.yt
  %i.za = add i32 %i.yz, %i.yx                    ; 3 uses
  %i.zb = getelementptr i8, ptr %.0128.i.i, i64 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !10

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %i.zc = and i32 %i.yg, 2
  %lcmp.mod.not.not = icmp eq i32 %i.zc, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %._crit_edge.i.i

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.0128.i.i.epil.init = phi ptr [ %i.a, %.lr.ph.i.i.preheader ], [ %i.zb, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.084127.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.za, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod265 = trunc i32 %i.yi to i1
  call void @llvm.assume(i1 %lcmp.mod265)
  %i.zd = mul i32 %.084127.i.i.epil.init, 100
  %i.ze = load i8, ptr %.0128.i.i.epil.init, align 1
  %i.zf = zext i8 %i.ze to i32                    ; 2 uses
  %i.zg = lshr i32 %i.zf, 4
  %i.zh = mul nuw nsw i32 %i.zg, 10
  %i.zi = and i32 %i.zf, 15
  %i.zj = add i32 %i.zi, %i.zd
  %i.zk = add i32 %i.zj, %i.zh
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.ck
  %.084.lcssa.i.i = phi i32 [ 0, %bb.ck ], [ %i.za, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.zk, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  store i32 %.084.lcssa.i.i, ptr %i.b, align 4
  br label %bb.cl

thread-pre-split.i.i:                             ; preds = %bb.cg
  %.pr109.i.i = load i32, ptr %i.b, align 4
  br label %bb.cl

bb.cl:                                            ; preds = %thread-pre-split.i.i, %._crit_edge.i.i, %bb.cd
  %i.zl = phi i32 [ %.pr109.i.i, %thread-pre-split.i.i ], [ %.084.lcssa.i.i, %._crit_edge.i.i ], [ %i.xp, %bb.cd ] ; 2 uses
  %.189.i.i = phi i32 [ %i.xu, %thread-pre-split.i.i ], [ %i.yf, %._crit_edge.i.i ], [ %.04882.i, %bb.cd ] ; 2 uses
  %.not107.i.i = icmp eq i32 %i.zl, 0
  br i1 %.not107.i.i, label %..sink.split.i_crit_edge, label %.thread.i.i

..sink.split.i_crit_edge:                         ; preds = %bb.cl
  %.pre.pre = load i32, ptr %i.xi, align 4
  br label %.sink.split.i

.thread.i.i:                                      ; preds = %bb.cl, %bb.ce
  %.250.i = phi i32 [ %.189.i.i, %bb.cl ], [ %.04882.i, %bb.ce ] ; 22 uses
  %i.zm = phi i32 [ %i.zl, %bb.cl ], [ %i.xm, %bb.ce ] ; 12 uses
  %i.zn = getelementptr i8, ptr %i.xi, i64 4
  %i.zo = load i32, ptr %i.zn, align 4
  %i.zp = icmp ugt i32 %i.zm, %i.zo
  br i1 %i.zp, label %.thread.i, label %bb.cm

bb.cm:                                            ; preds = %.thread.i.i
  %i.zq = load i32, ptr %i.xi, align 4            ; 4 uses
  switch i32 %i.zq, label %bb.db [
    i32 2, label %bb.cn
    i32 3, label %bb.cn
    i32 9, label %bb.ct
    i32 10, label %bb.ct
  ]

bb.cn:                                            ; preds = %bb.cm, %bb.cm
  %i.zr = load i32, ptr @charset_pref, align 4
  switch i32 %i.zr, label %.thread117.i.i [
    i32 1, label %bb.co
    i32 2, label %bb.cq
  ]

bb.co:                                            ; preds = %bb.cn
  %i.zs = add i32 %.250.i, -2
  %i.zt = add i32 %i.zs, %i.zm
  %i.zu = icmp ugt i32 %i.zt, %i.wz
  br i1 %i.zu, label %.thread.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.zv = load ptr, ptr %i.jg, align 8
  %i.zw = call ptr @tvb_get_string_enc(ptr noundef %i.zv, ptr noundef %0, i32 noundef %.250.i, i32 noundef %i.zm, i32 noundef 0)
  %i.zx = load i32, ptr %i.b, align 4             ; 2 uses
  br label %.thread117.i.i

bb.cq:                                            ; preds = %bb.cn
  %i.zy = and i32 %i.zm, 1
  %i.zz = lshr i32 %i.zm, 1
  %i.aaa = add nuw i32 %i.zz, %i.zy               ; 4 uses
  %i.aab = add i32 %.250.i, -2
  %i.aac = add i32 %i.aab, %i.aaa
  %i.aad = icmp ugt i32 %i.aac, %i.wz
  br i1 %i.aad, label %.thread.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.aae = zext i32 %i.aaa to i64
  %i.aaf = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %.250.i, i64 noundef %i.aae) ; 0 uses
  %i.aag = load ptr, ptr %i.jg, align 8
  %i.aah = load i32, ptr %i.b, align 4
  %i.aai = call fastcc ptr @bin2hex(ptr noundef %i.aag, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.aah) ; 3 uses
  %i.aaj = icmp eq ptr %i.aai, null
  br i1 %i.aaj, label %.thread.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
end_hunk_1
begin_hunk_2_@dissect_iso8583_msg:bb.a
  %i.aex = icmp ne i32 %.665.i, 0
  %i.aey = icmp eq ptr %.0.lcssa.i40.i.i, %i.aep
  %i.aez = and i1 %i.aex, %i.aey
  br i1 %i.aez, label %bb.eb, label %isstrtype_ok.exit.thread.i

bb.dr:                                            ; preds = %bb.dg
  %i.afa = zext i32 %.665.i to i64
  %i.afb = getelementptr i8, ptr %.3.i66.i, i64 %i.afa ; 4 uses
  %i.afc = icmp ult ptr %.3.i66.i, %i.afb
  br i1 %i.afc, label %.lr.ph.i46.i.i, label %isalnumspec_str.exit.i.i

.lr.ph.i46.i.i:                                   ; preds = %bb.dr, %.critedge2.i49.i.i
  %.016.i47.i.i = phi ptr [ %i.afi, %.critedge2.i49.i.i ], [ %.3.i66.i, %bb.dr ] ; 3 uses
  %i.afd = load i8, ptr %.016.i47.i.i, align 1
  %i.afe = zext i8 %i.afd to i64
  %i.aff = getelementptr [2 x i8], ptr %i.jh, i64 %i.afe
  %i.afg = load i16, ptr %i.aff, align 2
  %i.afh = and i16 %i.afg, 385
  %or.cond15.i48.i.i = icmp eq i16 %i.afh, 0
  br i1 %or.cond15.i48.i.i, label %isalnumspec_str.exit.i.i, label %.critedge2.i49.i.i

.critedge2.i49.i.i:                               ; preds = %.lr.ph.i46.i.i
  %i.afi = getelementptr i8, ptr %.016.i47.i.i, i64 1 ; 2 uses
  %exitcond.not.i50.i.i = icmp eq ptr %i.afi, %i.afb
  br i1 %exitcond.not.i50.i.i, label %isalnumspec_str.exit.i.i, label %.lr.ph.i46.i.i, !llvm.loop !17

isalnumspec_str.exit.i.i:                         ; preds = %.critedge2.i49.i.i, %.lr.ph.i46.i.i, %bb.dr
  %.0.lcssa.i45.i.i = phi ptr [ %.3.i66.i, %bb.dr ], [ %i.afb, %.critedge2.i49.i.i ], [ %.016.i47.i.i, %.lr.ph.i46.i.i ]
  %i.afj = icmp ne i32 %.665.i, 0
  %i.afk = icmp eq ptr %.0.lcssa.i45.i.i, %i.afb
  %i.afl = and i1 %i.afj, %i.afk
  br i1 %i.afl, label %bb.eb, label %isstrtype_ok.exit.thread.i

bb.ds:                                            ; preds = %bb.dg
  %i.afm = zext i32 %.665.i to i64
  %i.afn = getelementptr i8, ptr %.3.i66.i, i64 %i.afm ; 4 uses
  %i.afo = icmp ult ptr %.3.i66.i, %i.afn
  br i1 %i.afo, label %.lr.ph.i52.i.i, label %isnumspec_str.exit.i.i

.lr.ph.i52.i.i:                                   ; preds = %bb.ds, %.critedge2.i55.i.i
  %.016.i53.i.i = phi ptr [ %i.afu, %.critedge2.i55.i.i ], [ %.3.i66.i, %bb.ds ] ; 3 uses
  %i.afp = load i8, ptr %.016.i53.i.i, align 1
  %i.afq = zext i8 %i.afp to i64
  %i.afr = getelementptr [2 x i8], ptr %i.jh, i64 %i.afq
  %i.afs = load i16, ptr %i.afr, align 2
  %i.aft = and i16 %i.afs, 392
  %or.cond15.i54.i.i = icmp eq i16 %i.aft, 0
  br i1 %or.cond15.i54.i.i, label %isnumspec_str.exit.i.i, label %.critedge2.i55.i.i

.critedge2.i55.i.i:                               ; preds = %.lr.ph.i52.i.i
  %i.afu = getelementptr i8, ptr %.016.i53.i.i, i64 1 ; 2 uses
  %exitcond.not.i56.i.i = icmp eq ptr %i.afu, %i.afn
  br i1 %exitcond.not.i56.i.i, label %isnumspec_str.exit.i.i, label %.lr.ph.i52.i.i, !llvm.loop !18

isnumspec_str.exit.i.i:                           ; preds = %.critedge2.i55.i.i, %.lr.ph.i52.i.i, %bb.ds
  %.0.lcssa.i51.i.i = phi ptr [ %.3.i66.i, %bb.ds ], [ %i.afn, %.critedge2.i55.i.i ], [ %.016.i53.i.i, %.lr.ph.i52.i.i ]
  %i.afv = icmp ne i32 %.665.i, 0
  %i.afw = icmp eq ptr %.0.lcssa.i51.i.i, %i.afn
  %i.afx = and i1 %i.afv, %i.afw
  br i1 %i.afx, label %bb.eb, label %isstrtype_ok.exit.thread.i

bb.dt:                                            ; preds = %bb.dg
  %i.afy = zext i32 %.665.i to i64
  %i.afz = getelementptr i8, ptr %.3.i66.i, i64 %i.afy ; 4 uses
  %i.aga = icmp ult ptr %.3.i66.i, %i.afz
  br i1 %i.aga, label %.lr.ph.i58.i.i, label %ishex_str.exit62.i.i

.lr.ph.i58.i.i:                                   ; preds = %bb.dt, %bb.du
  %.09.i59.i.i = phi ptr [ %i.agg, %bb.du ], [ %.3.i66.i, %bb.dt ] ; 3 uses
  %i.agb = load i8, ptr %.09.i59.i.i, align 1
  %i.agc = zext i8 %i.agb to i64
  %i.agd = getelementptr [2 x i8], ptr %i.jh, i64 %i.agc
  %i.age = load i16, ptr %i.agd, align 2
  %i.agf = and i16 %i.age, 1024
  %.not.i60.i.i = icmp eq i16 %i.agf, 0
  br i1 %.not.i60.i.i, label %ishex_str.exit62.i.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i58.i.i
  %i.agg = getelementptr i8, ptr %.09.i59.i.i, i64 1 ; 2 uses
  %exitcond.not.i61.i.i = icmp eq ptr %i.agg, %i.afz
  br i1 %exitcond.not.i61.i.i, label %ishex_str.exit62.i.i, label %.lr.ph.i58.i.i, !llvm.loop !9

ishex_str.exit62.i.i:                             ; preds = %bb.du, %.lr.ph.i58.i.i, %bb.dt
  %.0.lcssa.i57.i.i = phi ptr [ %.3.i66.i, %bb.dt ], [ %.09.i59.i.i, %.lr.ph.i58.i.i ], [ %i.afz, %bb.du ]
  %i.agh = icmp ne i32 %.665.i, 0
  %i.agi = icmp eq ptr %.0.lcssa.i57.i.i, %i.afz
  %i.agj = and i1 %i.agh, %i.agi
  br i1 %i.agj, label %bb.eb, label %isstrtype_ok.exit.thread.i

bb.dv:                                            ; preds = %bb.dg
  %i.agk = load i32, ptr @charset_pref, align 4
  %i.agl = icmp eq i32 %i.agk, 1
  %i.agm = zext i32 %.665.i to i64
  %i.agn = getelementptr i8, ptr %.3.i66.i, i64 %i.agm ; 7 uses
  %i.ago = icmp ult ptr %.3.i66.i, %i.agn         ; 2 uses
  br i1 %i.agl, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.ago, label %.lr.ph.i64.i.i, label %isalnumspec_str.exit69.i.i

.lr.ph.i64.i.i:                                   ; preds = %bb.dw, %.critedge2.i67.i.i
  %.016.i65.i.i = phi ptr [ %i.agu, %.critedge2.i67.i.i ], [ %.3.i66.i, %bb.dw ] ; 3 uses
  %i.agp = load i8, ptr %.016.i65.i.i, align 1
  %i.agq = zext i8 %i.agp to i64
  %i.agr = getelementptr [2 x i8], ptr %i.jh, i64 %i.agq
  %i.ags = load i16, ptr %i.agr, align 2
  %i.agt = and i16 %i.ags, 385
  %or.cond15.i66.i.i = icmp eq i16 %i.agt, 0
  br i1 %or.cond15.i66.i.i, label %isalnumspec_str.exit69.i.i, label %.critedge2.i67.i.i

.critedge2.i67.i.i:                               ; preds = %.lr.ph.i64.i.i
  %i.agu = getelementptr i8, ptr %.016.i65.i.i, i64 1 ; 2 uses
  %exitcond.not.i68.i.i = icmp eq ptr %i.agu, %i.agn
  br i1 %exitcond.not.i68.i.i, label %isalnumspec_str.exit69.i.i, label %.lr.ph.i64.i.i, !llvm.loop !17

isalnumspec_str.exit69.i.i:                       ; preds = %.critedge2.i67.i.i, %.lr.ph.i64.i.i, %bb.dw
  %.0.lcssa.i63.i.i = phi ptr [ %.3.i66.i, %bb.dw ], [ %i.agn, %.critedge2.i67.i.i ], [ %.016.i65.i.i, %.lr.ph.i64.i.i ]
  %i.agv = icmp ne i32 %.665.i, 0
  %i.agw = icmp eq ptr %.0.lcssa.i63.i.i, %i.agn
  %i.agx = and i1 %i.agv, %i.agw
  br i1 %i.agx, label %bb.eb, label %isstrtype_ok.exit.thread.i

bb.dx:                                            ; preds = %bb.dv
  br i1 %i.ago, label %.lr.ph.i71.i.i, label %ishex_str.exit75.i.i

.lr.ph.i71.i.i:                                   ; preds = %bb.dx, %bb.dy
  %.09.i72.i.i = phi ptr [ %i.ahd, %bb.dy ], [ %.3.i66.i, %bb.dx ] ; 3 uses
  %i.agy = load i8, ptr %.09.i72.i.i, align 1
  %i.agz = zext i8 %i.agy to i64
  %i.aha = getelementptr [2 x i8], ptr %i.jh, i64 %i.agz
  %i.ahb = load i16, ptr %i.aha, align 2
  %i.ahc = and i16 %i.ahb, 1024
  %.not.i73.i.i = icmp eq i16 %i.ahc, 0
  br i1 %.not.i73.i.i, label %ishex_str.exit75.i.i, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i71.i.i
  %i.ahd = getelementptr i8, ptr %.09.i72.i.i, i64 1 ; 2 uses
  %exitcond.not.i74.i.i = icmp eq ptr %i.ahd, %i.agn
  br i1 %exitcond.not.i74.i.i, label %ishex_str.exit75.i.i, label %.lr.ph.i71.i.i, !llvm.loop !9

ishex_str.exit75.i.i:                             ; preds = %bb.dy, %.lr.ph.i71.i.i, %bb.dx
  %.0.lcssa.i70.i.i = phi ptr [ %.3.i66.i, %bb.dx ], [ %.09.i72.i.i, %.lr.ph.i71.i.i ], [ %i.agn, %bb.dy ]
  %i.ahe = icmp ne i32 %.665.i, 0
  %i.ahf = icmp eq ptr %.0.lcssa.i70.i.i, %i.agn
  %i.ahg = and i1 %i.ahe, %i.ahf
  br i1 %i.ahg, label %bb.eb, label %isstrtype_ok.exit.thread.i

isstrtype_ok.exit.i:                              ; preds = %bb.di, %.lr.ph.i.i39.i, %bb.dh
  %.0.lcssa.i.i.i = phi ptr [ %.3.i66.i, %bb.dh ], [ %.09.i.i.i, %.lr.ph.i.i39.i ], [ %i.ack, %bb.di ]
  %i.ahh = icmp ne i32 %.665.i, 0
  %i.ahi = icmp eq ptr %.0.lcssa.i.i.i, %i.ack
  %i.ahj = and i1 %i.ahh, %i.ahi
  br i1 %i.ahj, label %bb.eb, label %isstrtype_ok.exit.thread.i

isstrtype_ok.exit.thread.i:                       ; preds = %isstrtype_ok.exit.i, %ishex_str.exit75.i.i, %isalnumspec_str.exit69.i.i, %ishex_str.exit62.i.i, %isnumspec_str.exit.i.i, %isalnumspec_str.exit.i.i, %isalnum_str.exit.i.i, %isalspec_str.exit.i.i, %isspec_str.exit.i.i, %ishex_str.exit.i.i, %isnum_str.exit.i.i, %bb.dg, %get_bit.exit.i
  %.24757.i = phi ptr [ %.24764.i, %isnum_str.exit.i.i ], [ %.24764.i, %isstrtype_ok.exit.i ], [ %.146.i, %get_bit.exit.i ], [ %.24764.i, %ishex_str.exit.i.i ], [ %.24764.i, %ishex_str.exit75.i.i ], [ %.24764.i, %isalnumspec_str.exit69.i.i ], [ %.24764.i, %ishex_str.exit62.i.i ], [ %.24764.i, %isnumspec_str.exit.i.i ], [ %.24764.i, %isalnumspec_str.exit.i.i ], [ %.24764.i, %isalnum_str.exit.i.i ], [ %.24764.i, %isalspec_str.exit.i.i ], [ %.24764.i, %isspec_str.exit.i.i ], [ %.24764.i, %bb.dg ] ; 2 uses
  %.35156.i = phi i32 [ %.35163.i, %isnum_str.exit.i.i ], [ %.35163.i, %isstrtype_ok.exit.i ], [ %i.acg, %get_bit.exit.i ], [ %.35163.i, %ishex_str.exit.i.i ], [ %.35163.i, %ishex_str.exit75.i.i ], [ %.35163.i, %isalnumspec_str.exit69.i.i ], [ %.35163.i, %ishex_str.exit62.i.i ], [ %.35163.i, %isnumspec_str.exit.i.i ], [ %.35163.i, %isalnumspec_str.exit.i.i ], [ %.35163.i, %isalnum_str.exit.i.i ], [ %.35163.i, %isalspec_str.exit.i.i ], [ %.35163.i, %isspec_str.exit.i.i ], [ %.35163.i, %bb.dg ] ; 2 uses
  %.not38.i154 = icmp eq ptr %.24757.i, null
  br i1 %.not38.i154, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %isstrtype_ok.exit.thread.i, %.thread.i
  %.3515676.i = phi i32 [ %.351.ph.i, %.thread.i ], [ %.35156.i, %isstrtype_ok.exit.thread.i ] ; 2 uses
  %i.ahk = getelementptr [4 x i8], ptr @iso8583_data_bit, i64 %indvars.iv.i152
  %i.ahl = load i32, ptr %i.ahk, align 4
  %i.ahm = call ptr @proto_tree_add_string(ptr noundef %i.is, i32 noundef %i.ahl, ptr noundef %0, i32 noundef %.3515676.i, i32 noundef 0, ptr noundef nonnull @.str.150)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %isstrtype_ok.exit.thread.i
  %.3515677.i = phi i32 [ %.3515676.i, %bb.dz ], [ %.35156.i, %isstrtype_ok.exit.thread.i ]
  %.045.i = phi ptr [ %i.ahm, %bb.dz ], [ %.24757.i, %isstrtype_ok.exit.thread.i ]
  %i.ahn = call ptr @expert_add_info(ptr noundef nonnull %1, ptr noundef %.045.i, ptr noundef nonnull @ei_iso8583_MALFORMED) ; 0 uses
  br label %dissect_databits.exit

bb.eb:                                            ; preds = %isstrtype_ok.exit.i, %ishex_str.exit75.i.i, %isalnumspec_str.exit69.i.i, %ishex_str.exit62.i.i, %isnumspec_str.exit.i.i, %isalnumspec_str.exit.i.i, %isalnum_str.exit.i.i, %isalspec_str.exit.i.i, %isspec_str.exit.i.i, %ishex_str.exit.i.i, %isnum_str.exit.i.i
  switch i32 %i.xc, label %bb.ed [
    i32 69, label %bb.ec
    i32 2, label %bb.ec
  ]

bb.ec:                                            ; preds = %bb.eb, %bb.eb
  %i.aho = icmp eq i64 %indvars.iv.i152, 2
  %i.ahp = load ptr, ptr %i.ia, align 8
  %i.ahq = select i1 %i.aho, ptr @.str.152, ptr @.str.153
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ahp, i32 noundef 25, ptr noundef nonnull @.str.151, ptr noundef nonnull %i.ahq, ptr noundef nonnull %.3.i66.i)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.cb, %bb.ca
  %.149.i = phi i32 [ %.04882.i, %bb.ca ], [ %.04882.i, %bb.cb ], [ %.35163.i, %bb.eb ], [ %.35163.i, %bb.ec ]
  %.1.i = phi i32 [ %.04483.i, %bb.ca ], [ %.04483.i, %bb.cb ], [ %.665.i, %bb.eb ], [ %.665.i, %bb.ec ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i152, 1 ; 2 uses
  %exitcond.not.i155 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i155, label %._crit_edge.i, label %bb.ca, !llvm.loop !19

._crit_edge.i:                                    ; preds = %bb.ed, %.preheader.i
  %i.ahr = call i32 @tvb_captured_length(ptr noundef %0)
  br label %dissect_databits.exit

dissect_databits.exit:                            ; preds = %.lr.ph.i132, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %.lr.ph.i125, %bb.f, %bb.g, %bb.h, %bb.k, %bb.e, %._crit_edge.i, %bb.ea, %.thread, %ishex_str.exit.thread175, %.lr.ph.i126, %.lr.ph.i, %bb.a, %bb.bz, %bb.bx, %ishex_str.exit142.thread, %bb.br
  %.0 = phi i32 [ 0, %bb.a ], [ %.0114, %bb.br ], [ %i.wx, %bb.bz ], [ 0, %bb.e ], [ %i.ws, %bb.bx ], [ %i.va, %ishex_str.exit142.thread ], [ 0, %.lr.ph.i125 ], [ 0, %.lr.ph.i126 ], [ 0, %bb.k ], [ 0, %.lr.ph.i ], [ 0, %ishex_str.exit.thread175 ], [ 0, %.thread ], [ %.3515677.i, %bb.ea ], [ %i.ahr, %._crit_edge.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %.lr.ph.i132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_string_enc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @bin2hex(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.a) ; 4 uses
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %3, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %1, align 1
  %i.f = and i8 %i.e, 15                          ; 3 uses
  %i.g = icmp samesign ugt i8 %i.f, 9
  %i.h = add nuw nsw i8 %i.f, 55
  %i.i = or disjoint i8 %i.f, 48
  %i.j = select i1 %i.g, i8 %i.h, i8 %i.i
  tail call void @wmem_strbuf_append_c(ptr noundef %i.b, i8 noundef signext %i.j)
  %i.k = getelementptr i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026 = phi ptr [ %i.k, %bb.c ], [ %1, %bb.b ]
  %i.l = lshr i32 %3, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.127 = phi ptr [ %.026, %bb.d ], [ %1, %bb.a ]
  %.0 = phi i32 [ %i.l, %bb.d ], [ %3, %bb.a ]    ; 2 uses
  %.not3435 = icmp eq i32 %.0, 0
  br i1 %.not3435, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.137 = phi i32 [ %i.m, %.lr.ph ], [ %.0, %bb.e ]
  %.236 = phi ptr [ %i.z, %.lr.ph ], [ %.127, %bb.e ] ; 3 uses
  %i.m = add i32 %.137, -1                        ; 2 uses
  %i.n = load i8, ptr %.236, align 1              ; 2 uses
  %i.o = lshr i8 %i.n, 4                          ; 2 uses
  %i.p = icmp ugt i8 %i.n, -97
  %i.q = add nuw nsw i8 %i.o, 55
  %i.r = or disjoint i8 %i.o, 48
  %i.s = select i1 %i.p, i8 %i.q, i8 %i.r
  tail call void @wmem_strbuf_append_c(ptr noundef %i.b, i8 noundef signext %i.s)
  %i.t = load i8, ptr %.236, align 1
  %i.u = and i8 %i.t, 15                          ; 3 uses
  %i.v = icmp samesign ugt i8 %i.u, 9
  %i.w = add nuw nsw i8 %i.u, 55
  %i.x = or disjoint i8 %i.u, 48
  %i.y = select i1 %i.v, i8 %i.w, i8 %i.x
  tail call void @wmem_strbuf_append_c(ptr noundef %i.b, i8 noundef signext %i.y)
  %i.z = getelementptr i8, ptr %.236, i64 1
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %i.aa = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.b)
  ret ptr %i.aa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_bytes_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new_sized(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_c(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_finalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_bits64(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare signext i8 @g_ascii_toupper(i8 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_get_string_uint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.peeled.count", i32 1}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
end_hunk_2
