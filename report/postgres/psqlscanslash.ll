Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/psqlscanslash?download=true
inline.NumInlined: 43
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

%struct.PQExpBufferData = type { ptr, i64, i64 }

@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@yy_nxt = internal unnamed_addr constant [79 x [22 x i16]] [[22 x i16] zeroinitializer, [22 x i16] [i16 19, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [22 x i16] [i16 19, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [22 x i16] [i16 19, i16 21, i16 22, i16 23, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 22, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21], [22 x i16] [i16 19, i16 21, i16 22, i16 23, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 22, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21], [22 x i16] [i16 19, i16 24, i16 25, i16 26, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 27, i16 24], [22 x i16] [i16 19, i16 24, i16 25, i16 26, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 27, i16 24], [22 x i16] [i16 19, i16 28, i16 29, i16 30, i16 31, i16 32, i16 28, i16 28, i16 33, i16 28, i16 28, i16 29, i16 34, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28], [22 x i16] [i16 19, i16 28, i16 29, i16 30, i16 31, i16 32, i16 28, i16 28, i16 33, i16 28, i16 28, i16 29, i16 34, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28], [22 x i16] [i16 19, i16 35, i16 35, i16 35, i16 35, i16 36, i16 35, i16 35, i16 35, i16 35, i16 35, i16 37, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35], [22 x i16] [i16 19, i16 35, i16 35, i16 35, i16 35, i16 36, i16 35, i16 35, i16 35, i16 35, i16 35, i16 37, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35], [22 x i16] [i16 19, i16 38, i16 38, i16 38, i16 38, i16 38, i16 38, i16 38, i16 39, i16 38, i16 38, i16 38, i16 40, i16 38, i16 38, i16 38, i16 38, i16 38, i16 38, i16 38, i16 38, i16 38], [22 x i16] [i16 19, i16 38, i16 38, i16 38, i16 38, i16 38, i16 38, i16 38, i16 39, i16 38, i16 38, i16 38, i16 40, i16 38, i16 38, i16 38, i16 38, i16 38, i16 38, i16 38, i16 38, i16 38], [22 x i16] [i16 19, i16 41, i16 41, i16 41, i16 42, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41], [22 x i16] [i16 19, i16 41, i16 41, i16 41, i16 42, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41, i16 41], [22 x i16] [i16 19, i16 43, i16 44, i16 45, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43], [22 x i16] [i16 19, i16 43, i16 44, i16 45, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43], [22 x i16] [i16 19, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 47, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46], [22 x i16] [i16 19, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 47, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46], [22 x i16] [i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19], [22 x i16] [i16 19, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20], [22 x i16] [i16 19, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21], [22 x i16] [i16 19, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22], [22 x i16] [i16 19, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23], [22 x i16] [i16 19, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24], [22 x i16] [i16 19, i16 -25, i16 48, i16 48, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25], [22 x i16] [i16 19, i16 -26, i16 48, i16 48, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26], [22 x i16] [i16 19, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27], [22 x i16] [i16 19, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28], [22 x i16] [i16 19, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29], [22 x i16] [i16 19, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30], [22 x i16] [i16 19, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31], [22 x i16] [i16 19, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32], [22 x i16] [i16 19, i16 -33, i16 -33, i16 -33, i16 49, i16 50, i16 51, i16 51, i16 -33, i16 -33, i16 51, i16 -33, i16 -33, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 52, i16 -33, i16 -33], [22 x i16] [i16 19, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34], [22 x i16] [i16 19, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35], [22 x i16] [i16 19, i16 -36, i16 -36, i16 -36, i16 -36, i16 53, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36], [22 x i16] [i16 19, i16 54, i16 54, i16 -37, i16 54, i16 54, i16 55, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 54, i16 54, i16 54], [22 x i16] [i16 19, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38], [22 x i16] [i16 19, i16 -39, i16 -39, i16 -39, i16 -39, i16 62, i16 63, i16 63, i16 -39, i16 -39, i16 63, i16 -39, i16 -39, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 -39, i16 -39, i16 -39], [22 x i16] [i16 19, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40], [22 x i16] [i16 19, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41], [22 x i16] [i16 19, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42], [22 x i16] [i16 19, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43], [22 x i16] [i16 19, i16 -44, i16 64, i16 64, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44], [22 x i16] [i16 19, i16 -45, i16 64, i16 64, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45], [22 x i16] [i16 19, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46], [22 x i16] [i16 19, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47, i16 65, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47], [22 x i16] [i16 19, i16 -48, i16 48, i16 48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48], [22 x i16] [i16 19, i16 -49, i16 -49, i16 -49, i16 -49, i16 -49, i16 66, i16 66, i16 -49, i16 -49, i16 66, i16 -49, i16 -49, i16 66, i16 66, i16 66, i16 66, i16 66, i16 66, i16 -49, i16 -49, i16 -49], [22 x i16] [i16 19, i16 -50, i16 -50, i16 -50, i16 -50, i16 -50, i16 67, i16 67, i16 -50, i16 -50, i16 67, i16 -50, i16 -50, i16 67, i16 67, i16 67, i16 67, i16 67, i16 67, i16 -50, i16 -50, i16 -50], [22 x i16] [i16 19, i16 -51, i16 -51, i16 -51, i16 -51, i16 -51, i16 51, i16 51, i16 -51, i16 -51, i16 51, i16 -51, i16 -51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 -51, i16 -51, i16 -51], [22 x i16] [i16 19, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52, i16 68, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52], [22 x i16] [i16 19, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53], [22 x i16] [i16 19, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54], [22 x i16] [i16 19, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55, i16 69, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55], [22 x i16] [i16 19, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56], [22 x i16] [i16 19, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57], [22 x i16] [i16 19, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58], [22 x i16] [i16 19, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59], [22 x i16] [i16 19, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60], [22 x i16] [i16 19, i16 -61, i16 -61, i16 -61, i16 -61, i16 -61, i16 70, i16 70, i16 -61, i16 -61, i16 -61, i16 -61, i16 -61, i16 70, i16 70, i16 -61, i16 -61, i16 -61, i16 -61, i16 -61, i16 -61, i16 -61], [22 x i16] [i16 19, i16 -62, i16 -62, i16 -62, i16 -62, i16 -62, i16 71, i16 71, i16 -62, i16 -62, i16 71, i16 -62, i16 -62, i16 71, i16 71, i16 71, i16 71, i16 71, i16 71, i16 -62, i16 -62, i16 -62], [22 x i16] [i16 19, i16 -63, i16 -63, i16 -63, i16 -63, i16 -63, i16 63, i16 63, i16 -63, i16 -63, i16 63, i16 -63, i16 -63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 -63, i16 -63, i16 -63], [22 x i16] [i16 19, i16 -64, i16 64, i16 64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64], [22 x i16] [i16 19, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65], [22 x i16] [i16 19, i16 -66, i16 -66, i16 -66, i16 72, i16 -66, i16 66, i16 66, i16 -66, i16 -66, i16 66, i16 -66, i16 -66, i16 66, i16 66, i16 66, i16 66, i16 66, i16 66, i16 -66, i16 -66, i16 -66], [22 x i16] [i16 19, i16 -67, i16 -67, i16 -67, i16 -67, i16 73, i16 67, i16 67, i16 -67, i16 -67, i16 67, i16 -67, i16 -67, i16 67, i16 67, i16 67, i16 67, i16 67, i16 67, i16 -67, i16 -67, i16 -67], [22 x i16] [i16 19, i16 -68, i16 -68, i16 -68, i16 -68, i16 -68, i16 74, i16 74, i16 -68, i16 -68, i16 74, i16 -68, i16 -68, i16 74, i16 74, i16 74, i16 74, i16 74, i16 74, i16 -68, i16 -68, i16 -68], [22 x i16] [i16 19, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 75, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69], [22 x i16] [i16 19, i16 -70, i16 -70, i16 -70, i16 -70, i16 -70, i16 76, i16 76, i16 -70, i16 -70, i16 -70, i16 -70, i16 -70, i16 76, i16 76, i16 -70, i16 -70, i16 -70, i16 -70, i16 -70, i16 -70, i16 -70], [22 x i16] [i16 19, i16 -71, i16 -71, i16 -71, i16 -71, i16 77, i16 71, i16 71, i16 -71, i16 -71, i16 71, i16 -71, i16 -71, i16 71, i16 71, i16 71, i16 71, i16 71, i16 71, i16 -71, i16 -71, i16 -71], [22 x i16] [i16 19, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72], [22 x i16] [i16 19, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73], [22 x i16] [i16 19, i16 -74, i16 -74, i16 -74, i16 -74, i16 -74, i16 74, i16 74, i16 -74, i16 -74, i16 74, i16 -74, i16 -74, i16 74, i16 74, i16 74, i16 74, i16 74, i16 74, i16 -74, i16 -74, i16 78], [22 x i16] [i16 19, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75], [22 x i16] [i16 19, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76], [22 x i16] [i16 19, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77], [22 x i16] [i16 19, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78]], align 16
@yy_ec = internal unnamed_addr constant [256 x i8] c"\00\01\01\01\01\01\01\01\01\02\03\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\04\01\01\01\01\05\01\01\01\01\01\01\01\01\06\06\06\06\06\06\06\06\07\07\08\01\01\01\01\09\01\07\07\07\07\07\07\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\01\0B\01\01\0A\0C\07\0D\07\07\07\0E\0A\0A\0A\0A\0A\0A\0A\0F\0A\0A\0A\10\0A\11\0A\0A\0A\12\0A\0A\13\14\15\01\01\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A", align 16
@yy_accept = internal unnamed_addr constant [79 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 43, i16 1, i16 3, i16 2, i16 2, i16 6, i16 4, i16 4, i16 5, i16 19, i16 7, i16 7, i16 10, i16 8, i16 19, i16 9, i16 30, i16 20, i16 30, i16 35, i16 35, i16 31, i16 37, i16 36, i16 39, i16 38, i16 38, i16 41, i16 41, i16 4, i16 16, i16 15, i16 11, i16 18, i16 21, i16 29, i16 27, i16 24, i16 26, i16 22, i16 25, i16 23, i16 29, i16 34, i16 32, i16 38, i16 40, i16 16, i16 15, i16 17, i16 27, i16 28, i16 34, i16 13, i16 12, i16 17, i16 27, i16 28, i16 33, i16 14], align 16
@option_type = internal unnamed_addr global i32 0, align 4
@option_quote = internal unnamed_addr global ptr null, align 8
@unquoted_option_chars = internal unnamed_addr global i32 0, align 4
@backtick_start_offset = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"flex scanner jammed\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in yy_create_buffer()\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"out of dynamic memory in yy_scan_buffer()\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"out of dynamic memory in yy_scan_bytes()\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"bad buffer in yy_scan_bytes()\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"yyset_lineno called with no buffer\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"yyset_column called with no buffer\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"unterminated quoted string\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"invalid YY_START\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"input in flex scanner failed\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"out of dynamic memory in yy_get_next_buffer()\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"out of dynamic memory in yyensure_buffer_stack()\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"%s: out of memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @slash_yylex(ptr noundef %0, ptr nofree noundef initializes((144, 152)) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.PQExpBufferData, align 8    ; 8 uses
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not402 = icmp eq i32 %i.f, 0
  br i1 %.not402, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not403 = icmp eq ptr %i.h, null
  br i1 %.not403, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @stdin, align 8            ; 2 uses
  store ptr %i.i, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.i, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not404 = icmp eq ptr %i.l, null
  br i1 %.not404, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @stdout, align 8
  store ptr %i.m, ptr %i.k, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %.not405 = icmp eq ptr %i.o, null
  br i1 %.not405, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not406 = icmp eq ptr %i.s, null
  br i1 %.not406, label %bb.m, label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.t = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #26 ; 3 uses
  store ptr %i.t, ptr %i.n, align 8
  %.not28.i = icmp eq ptr %i.t, null
  br i1 %.not28.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.14) #27
  unreachable

bb.l:                                             ; preds = %bb.j
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.v, align 8
  br label %slash_yyensure_buffer_stack.exit

bb.m:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = add i64 %i.x, -1
  %.not29.i = icmp ult i64 %i.q, %i.y
  br i1 %.not29.i, label %slash_yyensure_buffer_stack.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = add i64 %i.x, 8                          ; 2 uses
  %i.aa = shl i64 %i.z, 3
  %i.ab = tail call noalias noundef ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.aa) #28 ; 3 uses
  store ptr %i.ab, ptr %i.n, align 8
  %.not30.i = icmp eq ptr %i.ab, null
  br i1 %.not30.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.14) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ac = load i64, ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i8 0, i64 64, i1 false)
  store i64 %i.z, ptr %i.w, align 8
  %.pre = load ptr, ptr %i.g, align 8
  br label %slash_yyensure_buffer_stack.exit

slash_yyensure_buffer_stack.exit:                 ; preds = %bb.l, %bb.m, %bb.p
  %i.ae = phi ptr [ %i.j, %bb.l ], [ %i.j, %bb.m ], [ %.pre, %bb.p ]
  %i.af = tail call ptr @slash_yy_create_buffer(ptr noundef %i.ae, i32 noundef 16384, ptr noundef nonnull %1)
  %i.ag = load ptr, ptr %i.n, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  store ptr %i.af, ptr %i.aj, align 8
  %.pre839.a = load ptr, ptr %i.n, align 8        ; 2 uses
  %.pre840 = load i64, ptr %i.ah, align 8         ; 2 uses
  %.phi.trans.insert841 = getelementptr inbounds nuw [8 x i8], ptr %.pre839.a, i64 %.pre840
  %.pre842.a = load ptr, ptr %.phi.trans.insert841, align 8
  br label %bb.q

bb.q:                                             ; preds = %slash_yyensure_buffer_stack.exit, %bb.i
  %i.ak = phi ptr [ %.pre842.a, %slash_yyensure_buffer_stack.exit ], [ %i.s, %bb.i ]
  %i.al = phi i64 [ %.pre840, %slash_yyensure_buffer_stack.exit ], [ %i.q, %bb.i ]
  %i.am = phi ptr [ %.pre839.a, %slash_yyensure_buffer_stack.exit ], [ %i.o, %bb.i ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = load ptr, ptr %i.an, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.at, ptr %i.av, align 8
  %i.aw = load ptr, ptr %i.an, align 8
  %i.ax = load ptr, ptr %i.aw, align 8
  store ptr %i.ax, ptr %i.g, align 8
  %i.ay = load i8, ptr %i.at, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 %i.ay, ptr %i.az, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.a
  %i.ba = load ptr, ptr %1, align 8               ; 34 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 88 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = shl i32 %i.be, 1
  %i.bg = or disjoint i32 %i.bf, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 16 uses
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 26 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 19 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 40 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 35 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 17 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 17 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 12 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 136 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 144 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.r
  %i.bx = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.by = load i8, ptr %i.bj, align 8
  store i8 %i.by, ptr %i.bx, align 1
  %i.bz = load i32, ptr %i.bh, align 4
  br label %.loopexit452

.loopexit452:                                     ; preds = %.loopexit452.backedge, %.loopexit
  %.0387 = phi ptr [ %i.bx, %.loopexit ], [ %.0387.be, %.loopexit452.backedge ]
  %.0381 = phi ptr [ %i.bx, %.loopexit ], [ %.0381.be, %.loopexit452.backedge ]
  %.0380 = phi i32 [ %i.bz, %.loopexit ], [ %.0380.be, %.loopexit452.backedge ]
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.loopexit452
  %.1382 = phi ptr [ %.0381, %.loopexit452 ], [ %i.cl, %bb.s ] ; 3 uses
  %.1 = phi i32 [ %.0380, %.loopexit452 ], [ %i.cj, %bb.s ]
  %i.ca = sext i32 %.1 to i64
  %i.cb = getelementptr inbounds [44 x i8], ptr @yy_nxt, i64 %i.ca
  %i.cc = load i8, ptr %.1382, align 1
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2            ; 2 uses
  %i.cj = sext i16 %i.ci to i32                   ; 2 uses
  %i.ck = icmp sgt i16 %i.ci, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %.1382, i64 1
  br i1 %i.ck, label %bb.s, label %bb.t, !llvm.loop !5

bb.t:                                             ; preds = %bb.s
  %i.cm = sub nsw i32 0, %i.cj
  br label %.loopexit453

.loopexit453:                                     ; preds = %.loopexit453.backedge, %bb.t
  %.1388 = phi ptr [ %.0387, %bb.t ], [ %.1388.be, %.loopexit453.backedge ] ; 27 uses
  %.2383 = phi ptr [ %.1382, %bb.t ], [ %.2383.be, %.loopexit453.backedge ] ; 15 uses
  %.2 = phi i32 [ %i.cm, %bb.t ], [ %.2.be, %.loopexit453.backedge ]
  %i.cn = sext i32 %.2 to i64
  %i.co = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = sext i16 %i.cp to i32
  store ptr %.1388, ptr %i.bk, align 8
  %i.cr = ptrtoint ptr %.2383 to i64
  %i.cs = ptrtoint ptr %.1388 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = trunc i64 %i.ct to i32
  store i32 %i.cu, ptr %i.bl, align 8
  %i.cv = load i8, ptr %.2383, align 1
  store i8 %i.cv, ptr %i.bj, align 8
  store i8 0, ptr %.2383, align 1
  store ptr %.2383, ptr %i.bi, align 8
  br label %bb.u

bb.u:                                             ; preds = %yy_get_previous_state.exit429, %.loopexit453
  %.0391 = phi i32 [ %i.cq, %.loopexit453 ], [ %i.xj, %yy_get_previous_state.exit429 ]
  switch i32 %.0391, label %bb.ea [
    i32 1, label %bb.v
    i32 2, label %.sink.split
    i32 3, label %bb.w
    i32 4, label %.loopexit.backedge
    i32 5, label %bb.x
    i32 6, label %bb.aa
    i32 7, label %.sink.split
    i32 8, label %bb.ab
    i32 9, label %bb.ac
    i32 10, label %bb.ad
    i32 11, label %bb.ae
    i32 12, label %bb.al
    i32 13, label %bb.am
    i32 14, label %bb.an
    i32 15, label %bb.ao
    i32 16, label %bb.ap
    i32 17, label %bb.aq
    i32 18, label %bb.ar
    i32 19, label %bb.as
    i32 20, label %bb.at
    i32 21, label %bb.au
    i32 22, label %bb.av
    i32 23, label %bb.aw
    i32 24, label %bb.ax
    i32 25, label %bb.ay
    i32 26, label %bb.az
    i32 27, label %bb.ba
    i32 28, label %bb.bb
    i32 29, label %bb.bc
    i32 30, label %bb.bd
    i32 31, label %bb.be
    i32 32, label %bb.bq
    i32 33, label %bb.bv
    i32 34, label %bb.bw
    i32 35, label %bb.bx
    i32 36, label %bb.by
    i32 37, label %bb.bz
    i32 38, label %bb.ca
    i32 39, label %bb.cc
    i32 40, label %.loopexit1090
    i32 41, label %.sink.split
    i32 44, label %bb.cd
    i32 45, label %bb.cd
    i32 46, label %bb.cd
    i32 47, label %bb.cd
    i32 48, label %bb.cd
    i32 49, label %bb.cd
    i32 50, label %bb.cd
    i32 51, label %bb.cd
    i32 52, label %bb.cd
    i32 42, label %bb.cf
    i32 43, label %bb.cg
  ]

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %i.bk, align 8
  %i.cx = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.cw, i32 noundef %i.cx) #29
  br label %.loopexit.backedge

bb.w:                                             ; preds = %bb.u
  %i.cy = load ptr, ptr %i.bk, align 8
  %i.cz = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.cy, i32 noundef %i.cz) #29
  br label %.loopexit.backedge

bb.x:                                             ; preds = %bb.u
  %i.da = load i32, ptr @option_type, align 4
  %i.db = icmp eq i32 %i.da, 3
  br i1 %i.db, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dc = load ptr, ptr %i.bk, align 8
  %i.dd = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.dc, i32 noundef %i.dd) #29
  store i32 15, ptr %i.bh, align 4
  br label %.loopexit.backedge

bb.z:                                             ; preds = %bb.x
  %i.de = load i8, ptr %i.bj, align 8
  store i8 %i.de, ptr %.2383, align 1
  store ptr %.1388, ptr %i.bi, align 8
  store ptr %.1388, ptr %i.bk, align 8
  store i32 0, ptr %i.bl, align 8
  %i.df = load i8, ptr %.1388, align 1
  store i8 %i.df, ptr %i.bj, align 8
  store i8 0, ptr %.1388, align 1
  store ptr %.1388, ptr %i.bi, align 8
  store i32 7, ptr %i.bh, align 4
  br label %.loopexit.backedge

bb.aa:                                            ; preds = %bb.u
  %i.dg = load i8, ptr %i.bj, align 8
  store i8 %i.dg, ptr %.2383, align 1
  store ptr %.1388, ptr %i.bi, align 8
  store ptr %.1388, ptr %i.bk, align 8
  store i32 0, ptr %i.bl, align 8
  %i.dh = load i8, ptr %.1388, align 1
  store i8 %i.dh, ptr %i.bj, align 8
  store i8 0, ptr %.1388, align 1
  store ptr %.1388, ptr %i.bi, align 8
  store i32 7, ptr %i.bh, align 4
  br label %.loopexit.backedge

bb.ab:                                            ; preds = %bb.u
  %i.di = load ptr, ptr @option_quote, align 8
  store i8 39, ptr %i.di, align 1
  store i32 0, ptr @unquoted_option_chars, align 4
  store i32 9, ptr %i.bh, align 4
  br label %.loopexit.backedge

bb.ac:                                            ; preds = %bb.u
  %i.dj = load i64, ptr %i.bs, align 8
  %i.dk = trunc i64 %i.dj to i32
  store i32 %i.dk, ptr @backtick_start_offset, align 4
  %i.dl = load ptr, ptr @option_quote, align 8
  store i8 96, ptr %i.dl, align 1
  store i32 0, ptr @unquoted_option_chars, align 4
  store i32 11, ptr %i.bh, align 4
  br label %.loopexit.backedge

bb.ad:                                            ; preds = %bb.u
  %i.dm = load ptr, ptr %i.bk, align 8
  %i.dn = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.dm, i32 noundef %i.dn) #29
  %i.do = load ptr, ptr @option_quote, align 8
  store i8 34, ptr %i.do, align 1
  store i32 0, ptr @unquoted_option_chars, align 4
  store i32 13, ptr %i.bh, align 4
  br label %.loopexit.backedge

bb.ae:                                            ; preds = %bb.u
  %i.dp = load ptr, ptr %i.bt, align 8
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = icmp eq ptr %i.dq, null
  %i.ds = load ptr, ptr %i.bk, align 8            ; 2 uses
  br i1 %i.dr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dt = load i32, ptr %i.bl, align 8
end_hunk_0
begin_hunk_1_@slash_yylex:bb.a
  %i.eb = call ptr %i.dz(ptr noundef %i.dx, i32 noundef 0, ptr noundef %i.ea) #29 ; 3 uses
  call void @free(ptr noundef %i.dx) #29
  %.not411 = icmp eq ptr %i.eb, null
  br i1 %.not411, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @appendPQExpBufferStr(ptr noundef %i.bc, ptr noundef nonnull %i.eb) #29
  call void @free(ptr noundef nonnull %i.eb) #29
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ec = load ptr, ptr %i.bk, align 8
  %i.ed = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef nonnull %i.ba, ptr noundef %i.ec, i32 noundef %i.ed) #29
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ee = load ptr, ptr @option_quote, align 8
  store i8 58, ptr %i.ee, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  store i32 0, ptr @unquoted_option_chars, align 4
  br label %.loopexit.backedge

bb.al:                                            ; preds = %bb.u
  %i.ef = load ptr, ptr %i.bk, align 8
  %i.eg = load i32, ptr %i.bl, align 8
  call void @psqlscan_escape_variable(ptr noundef %i.ba, ptr noundef %i.ef, i32 noundef %i.eg, i32 noundef 1) #29
  %i.eh = load ptr, ptr @option_quote, align 8
  store i8 58, ptr %i.eh, align 1
  store i32 0, ptr @unquoted_option_chars, align 4
  br label %.loopexit.backedge

bb.am:                                            ; preds = %bb.u
  %i.ei = load ptr, ptr %i.bk, align 8
  %i.ej = load i32, ptr %i.bl, align 8
  call void @psqlscan_escape_variable(ptr noundef %i.ba, ptr noundef %i.ei, i32 noundef %i.ej, i32 noundef 2) #29
  %i.ek = load ptr, ptr @option_quote, align 8
  store i8 58, ptr %i.ek, align 1
  store i32 0, ptr @unquoted_option_chars, align 4
  br label %.loopexit.backedge

bb.an:                                            ; preds = %bb.u
  %i.el = load ptr, ptr %i.bk, align 8
  %i.em = load i32, ptr %i.bl, align 8
  call void @psqlscan_test_variable(ptr noundef %i.ba, ptr noundef %i.el, i32 noundef %i.em) #29
  br label %.loopexit.backedge

bb.ao:                                            ; preds = %bb.u
  %i.en = load i8, ptr %i.bj, align 8
  store i8 %i.en, ptr %.2383, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %.1388, i64 1 ; 4 uses
  store ptr %i.eo, ptr %i.bi, align 8
  store ptr %.1388, ptr %i.bk, align 8
  store i32 1, ptr %i.bl, align 8
  %i.ep = load i8, ptr %i.eo, align 1
  store i8 %i.ep, ptr %i.bj, align 8
  store i8 0, ptr %i.eo, align 1
  store ptr %i.eo, ptr %i.bi, align 8
  %i.eq = load i32, ptr @unquoted_option_chars, align 4
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr @unquoted_option_chars, align 4
  %i.es = load ptr, ptr %i.bk, align 8
  %i.et = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.es, i32 noundef %i.et) #29
  br label %.loopexit.backedge

bb.ap:                                            ; preds = %bb.u
  %i.eu = load i8, ptr %i.bj, align 8
  store i8 %i.eu, ptr %.2383, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %.1388, i64 1 ; 4 uses
  store ptr %i.ev, ptr %i.bi, align 8
  store ptr %.1388, ptr %i.bk, align 8
  store i32 1, ptr %i.bl, align 8
  %i.ew = load i8, ptr %i.ev, align 1
  store i8 %i.ew, ptr %i.bj, align 8
  store i8 0, ptr %i.ev, align 1
  store ptr %i.ev, ptr %i.bi, align 8
  %i.ex = load i32, ptr @unquoted_option_chars, align 4
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr @unquoted_option_chars, align 4
  %i.ez = load ptr, ptr %i.bk, align 8
  %i.fa = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.ez, i32 noundef %i.fa) #29
  br label %.loopexit.backedge

bb.aq:                                            ; preds = %bb.u
  %i.fb = load i8, ptr %i.bj, align 8
  store i8 %i.fb, ptr %.2383, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.1388, i64 1 ; 4 uses
  store ptr %i.fc, ptr %i.bi, align 8
  store ptr %.1388, ptr %i.bk, align 8
  store i32 1, ptr %i.bl, align 8
  %i.fd = load i8, ptr %i.fc, align 1
  store i8 %i.fd, ptr %i.bj, align 8
  store i8 0, ptr %i.fc, align 1
  store ptr %i.fc, ptr %i.bi, align 8
  %i.fe = load i32, ptr @unquoted_option_chars, align 4
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr @unquoted_option_chars, align 4
  %i.fg = load ptr, ptr %i.bk, align 8
  %i.fh = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.fg, i32 noundef %i.fh) #29
  br label %.loopexit.backedge

bb.ar:                                            ; preds = %bb.u
  %i.fi = load i8, ptr %i.bj, align 8
  store i8 %i.fi, ptr %.2383, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.1388, i64 1 ; 4 uses
  store ptr %i.fj, ptr %i.bi, align 8
  store ptr %.1388, ptr %i.bk, align 8
  store i32 1, ptr %i.bl, align 8
  %i.fk = load i8, ptr %i.fj, align 1
  store i8 %i.fk, ptr %i.bj, align 8
  store i8 0, ptr %i.fj, align 1
  store ptr %i.fj, ptr %i.bi, align 8
  %i.fl = load i32, ptr @unquoted_option_chars, align 4
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr @unquoted_option_chars, align 4
  %i.fn = load ptr, ptr %i.bk, align 8
  %i.fo = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.fn, i32 noundef %i.fo) #29
  br label %.loopexit.backedge

bb.as:                                            ; preds = %bb.u
  %i.fp = load i32, ptr @unquoted_option_chars, align 4
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr @unquoted_option_chars, align 4
  %i.fr = load ptr, ptr %i.bk, align 8
  %i.fs = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.fr, i32 noundef %i.fs) #29
  br label %.loopexit.backedge

bb.at:                                            ; preds = %bb.u
  store i32 7, ptr %i.bh, align 4
  br label %.loopexit.backedge

bb.au:                                            ; preds = %bb.u
  call void @appendPQExpBufferChar(ptr noundef %i.bc, i8 noundef signext 39) #29
  br label %.loopexit.backedge

bb.av:                                            ; preds = %bb.u
  call void @appendPQExpBufferChar(ptr noundef %i.bc, i8 noundef signext 10) #29
  br label %.loopexit.backedge

bb.aw:                                            ; preds = %bb.u
  call void @appendPQExpBufferChar(ptr noundef %i.bc, i8 noundef signext 9) #29
  br label %.loopexit.backedge

bb.ax:                                            ; preds = %bb.u
  call void @appendPQExpBufferChar(ptr noundef %i.bc, i8 noundef signext 8) #29
  br label %.loopexit.backedge

bb.ay:                                            ; preds = %bb.u
  call void @appendPQExpBufferChar(ptr noundef %i.bc, i8 noundef signext 13) #29
  br label %.loopexit.backedge

bb.az:                                            ; preds = %bb.u
  call void @appendPQExpBufferChar(ptr noundef %i.bc, i8 noundef signext 12) #29
  br label %.loopexit.backedge

bb.ba:                                            ; preds = %bb.u
  %i.ft = load ptr, ptr %i.bk, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  %i.fv = call i64 @__isoc23_strtol(ptr noundef nonnull %i.fu, ptr noundef null, i32 noundef 8) #29
  %i.fw = trunc i64 %i.fv to i8
  call void @appendPQExpBufferChar(ptr noundef %i.bc, i8 noundef signext %i.fw) #29
  br label %.loopexit.backedge

bb.bb:                                            ; preds = %bb.u
  %i.fx = load ptr, ptr %i.bk, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %i.fz = call i64 @__isoc23_strtol(ptr noundef nonnull %i.fy, ptr noundef null, i32 noundef 16) #29
  %i.ga = trunc i64 %i.fz to i8
  call void @appendPQExpBufferChar(ptr noundef %i.bc, i8 noundef signext %i.ga) #29
  br label %.loopexit.backedge

bb.bc:                                            ; preds = %bb.u
  %i.gb = load ptr, ptr %i.bk, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef nonnull %i.gc, i32 noundef 1) #29
  br label %.loopexit.backedge

bb.bd:                                            ; preds = %bb.u
  %i.gd = load ptr, ptr %i.bk, align 8
  %i.ge = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.gd, i32 noundef %i.ge) #29
  br label %.loopexit.backedge

bb.be:                                            ; preds = %bb.u
  %i.gf = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gh = call zeroext i1 @conditional_active(ptr noundef nonnull %i.gf) #29
  br i1 %i.gh, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.val = load ptr, ptr %i.bb, align 8            ; 10 uses
  %i.gi = load ptr, ptr %.val, align 8
  %i.gj = load i32, ptr @backtick_start_offset, align 4
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %i.gi, i64 %i.gk ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @initPQExpBuffer(ptr noundef nonnull %2) #29
  %i.gm = call i32 @fflush(ptr noundef null)      ; 0 uses
  %i.gn = call noalias ptr @popen(ptr noundef %i.gl, ptr noundef nonnull @.str.16) ; 5 uses
  %.not.i412 = icmp eq ptr %i.gn, null
  br i1 %.not.i412, label %bb.bj, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bg, %bb.bi
  %i.go = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 512, ptr noundef nonnull %i.gn)
  %i.gp = call i32 @ferror(ptr noundef nonnull %i.gn) #29
  %.not27.not.not.not.i.not = icmp eq i32 %i.gp, 0 ; 2 uses
  br i1 %.not27.not.not.not.i.not, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.preheader.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef %i.gl) #29
  br label %.loopexit.i

bb.bi:                                            ; preds = %.preheader.i
  call void @appendBinaryPQExpBuffer(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i64 noundef %i.go) #29
  %i.gq = call i32 @feof(ptr noundef nonnull %i.gn) #29
  %.not28.i413 = icmp eq i32 %i.gq, 0
  br i1 %.not28.i413, label %.preheader.i, label %.loopexit.i, !llvm.loop !6

.loopexit.i:                                      ; preds = %bb.bi, %bb.bh
  %i.gr = call i32 @pclose(ptr noundef nonnull %i.gn) ; 4 uses
  %i.gs = icmp eq i32 %i.gr, -1
  br i1 %i.gs, label %.thread438, label %3

3:                                                ; preds = %.loopexit.i
  %4 = load i64, ptr %i.bv, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %.thread7.i, label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef %i.gl) #29
  %i.gt = load i64, ptr %i.bv, align 8
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %.thread7.i, label %.thread27.i

.thread27.i:                                      ; preds = %bb.bj
  %6 = load i32, ptr @backtick_start_offset, align 4
  %7 = sext i32 %6 to i64                         ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store i64 %7, ptr %8, align 8
  %9 = load ptr, ptr %.val, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %7
  store i8 0, ptr %10, align 1
  br label %evaluate_backtick.exit

.thread438:                                       ; preds = %.loopexit.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef %i.gl) #29
  %i.gv = load i64, ptr %i.bv, align 8
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %.thread7.i, label %.thread445

.thread445:                                       ; preds = %.thread438
  %i.gx = load i32, ptr @backtick_start_offset, align 4
  %i.gy = sext i32 %i.gx to i64                   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store i64 %i.gy, ptr %i.gz, align 8
  %i.ha = load ptr, ptr %.val, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gy
  store i8 0, ptr %i.hb, align 1
  br label %evaluate_backtick.exit

.thread7.i:                                       ; preds = %.thread438, %bb.bj, %3
  %.113.i = phi i32 [ -1, %.thread438 ], [ %i.gr, %3 ], [ -1, %bb.bj ]
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %i.gl) #29
  %i.hc = load i32, ptr @backtick_start_offset, align 4
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store i64 %i.hd, ptr %i.he, align 8
  %i.hf = load ptr, ptr %.val, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hd
  store i8 0, ptr %i.hg, align 1
  br label %evaluate_backtick.exit

bb.bk:                                            ; preds = %3
  %i.hh = load i32, ptr @backtick_start_offset, align 4
  %i.hi = sext i32 %i.hh to i64                   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store i64 %i.hi, ptr %i.hj, align 8
  %i.hk = load ptr, ptr %.val, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hi
  store i8 0, ptr %i.hl, align 1
  br i1 %.not27.not.not.not.i.not, label %bb.bl, label %evaluate_backtick.exit

bb.bl:                                            ; preds = %bb.bk
  %i.hm = load i64, ptr %i.bw, align 8            ; 4 uses
  %.not29.i414 = icmp eq i64 %i.hm, 0
  %.pre.i = load ptr, ptr %2, align 8             ; 2 uses
  br i1 %.not29.i414, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hn = getelementptr i8, ptr %.pre.i, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -1
  %i.hp = load i8, ptr %i.ho, align 1
  %i.hq = icmp eq i8 %i.hp, 10
  br i1 %i.hq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.hr = add i64 %i.hm, -1                       ; 2 uses
  store i64 %i.hr, ptr %i.bw, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.hs = phi i64 [ %i.hr, %bb.bn ], [ %i.hm, %bb.bm ], [ 0, %bb.bl ]
  call void @appendBinaryPQExpBuffer(ptr noundef nonnull %.val, ptr noundef %.pre.i, i64 noundef %i.hs) #29
  br label %evaluate_backtick.exit

evaluate_backtick.exit:                           ; preds = %.thread27.i, %.thread445, %.thread7.i, %bb.bk, %bb.bo
  %.111.i = phi i32 [ %.113.i, %.thread7.i ], [ %i.gr, %bb.bo ], [ %i.gr, %bb.bk ], [ -1, %.thread445 ], [ -1, %.thread27.i ]
  call void @SetShellResultVariables(i32 noundef %.111.i) #29
  call void @termPQExpBuffer(ptr noundef nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.bp

bb.bp:                                            ; preds = %evaluate_backtick.exit, %bb.bf
  store i32 7, ptr %i.bh, align 4
  br label %.loopexit.backedge

bb.bq:                                            ; preds = %bb.u
  %i.ht = load ptr, ptr %i.bt, align 8
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = icmp eq ptr %i.hu, null
  %i.hw = load ptr, ptr %i.bk, align 8            ; 2 uses
  br i1 %i.hv, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.hx = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef nonnull %i.ba, ptr noundef %i.hw, i32 noundef %i.hx) #29
  br label %.loopexit.backedge

bb.bs:                                            ; preds = %bb.bq
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.hz = load i32, ptr %i.bl, align 8
  %i.ia = add i32 %i.hz, -1
  %i.ib = call ptr @psqlscan_extract_substring(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.hy, i32 noundef %i.ia) #29 ; 2 uses
  %i.ic = load ptr, ptr %i.bt, align 8
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = load ptr, ptr %i.bu, align 8
  %i.if = call ptr %i.id(ptr noundef %i.ib, i32 noundef 0, ptr noundef %i.ie) #29 ; 3 uses
  call void @free(ptr noundef %i.ib) #29
  %.not410 = icmp eq ptr %i.if, null
  br i1 %.not410, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @appendPQExpBufferStr(ptr noundef %i.bc, ptr noundef nonnull %i.if) #29
  call void @free(ptr noundef nonnull %i.if) #29
  br label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %bb.u, %bb.bt, %bb.bu, %bb.ca, %bb.cb, %bb.br, %bb.y, %bb.z, %bb.ce, %bb.cc, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bp, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.w, %bb.v
  br label %.loopexit

bb.bu:                                            ; preds = %bb.bs
  %i.ig = load ptr, ptr %i.bk, align 8
  %i.ih = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef nonnull %i.ba, ptr noundef %i.ig, i32 noundef %i.ih) #29
  br label %.loopexit.backedge

bb.bv:                                            ; preds = %bb.u
  %i.ii = load ptr, ptr %i.bk, align 8
  %i.ij = load i32, ptr %i.bl, align 8
  call void @psqlscan_escape_variable(ptr noundef %i.ba, ptr noundef %i.ii, i32 noundef %i.ij, i32 noundef 3) #29
  br label %.loopexit.backedge

bb.bw:                                            ; preds = %bb.u
  %i.ik = load i8, ptr %i.bj, align 8
  store i8 %i.ik, ptr %.2383, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %.1388, i64 1 ; 4 uses
  store ptr %i.il, ptr %i.bi, align 8
  store ptr %.1388, ptr %i.bk, align 8
  store i32 1, ptr %i.bl, align 8
  %i.im = load i8, ptr %i.il, align 1
  store i8 %i.im, ptr %i.bj, align 8
  store i8 0, ptr %i.il, align 1
  store ptr %i.il, ptr %i.bi, align 8
  %i.in = load ptr, ptr %i.bk, align 8
  %i.io = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.in, i32 noundef %i.io) #29
  br label %.loopexit.backedge

bb.bx:                                            ; preds = %bb.u
  %i.ip = load ptr, ptr %i.bk, align 8
  %i.iq = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.ip, i32 noundef %i.iq) #29
  br label %.loopexit.backedge

bb.by:                                            ; preds = %bb.u
  %i.ir = load ptr, ptr %i.bk, align 8
  %i.is = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.ir, i32 noundef %i.is) #29
  store i32 7, ptr %i.bh, align 4
  br label %.loopexit.backedge

bb.bz:                                            ; preds = %bb.u
  %i.it = load ptr, ptr %i.bk, align 8
  %i.iu = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.it, i32 noundef %i.iu) #29
  br label %.loopexit.backedge

bb.ca:                                            ; preds = %bb.u
  %i.iv = load i64, ptr %i.bs, align 8
  %.not409 = icmp eq i64 %i.iv, 0
  br i1 %.not409, label %.loopexit.backedge, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.iw = load ptr, ptr %i.bk, align 8
  %i.ix = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.iw, i32 noundef %i.ix) #29
  br label %.loopexit.backedge

bb.cc:                                            ; preds = %bb.u
  %i.iy = load ptr, ptr %i.bk, align 8
  %i.iz = load i32, ptr %i.bl, align 8
  call void @psqlscan_emit(ptr noundef %i.ba, ptr noundef %i.iy, i32 noundef %i.iz) #29
  br label %.loopexit.backedge

bb.cd:                                            ; preds = %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  %i.ja = load ptr, ptr %i.br, align 8
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %.loopexit1090, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @psqlscan_pop_buffer_stack(ptr noundef nonnull %i.ba) #29
  call void @psqlscan_select_top_buffer(ptr noundef nonnull %i.ba) #29
  br label %.loopexit.backedge

bb.cf:                                            ; preds = %bb.u
  call fastcc void @yy_fatal_error(ptr noundef nonnull @.str) #27
  unreachable

bb.cg:                                            ; preds = %bb.u
  %i.jc = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.jd = load i8, ptr %i.bj, align 8
  store i8 %i.jd, ptr %.2383, align 1
  %i.je = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.jf = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jf ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8            ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 56
  %i.jj = load i32, ptr %i.ji, align 8
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 28
  %i.jm = load i32, ptr %i.jl, align 4
  store i32 %i.jm, ptr %i.bo, align 4
  %i.jn = load ptr, ptr %i.bp, align 8
  %i.jo = load ptr, ptr %i.jg, align 8
  store ptr %i.jn, ptr %i.jo, align 8
  %i.jp = load ptr, ptr %i.bm, align 8
  %i.jq = load i64, ptr %i.bn, align 8
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 56
  store i32 1, ptr %i.jt, align 8
  %.pre843.a = load ptr, ptr %i.bm, align 8       ; 2 uses
  %.pre844 = load i64, ptr %i.bn, align 8         ; 2 uses
  %.phi.trans.insert845 = getelementptr inbounds nuw [8 x i8], ptr %.pre843.a, i64 %.pre844
  %.pre846 = load ptr, ptr %.phi.trans.insert845, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ju = phi ptr [ %.pre846, %bb.ch ], [ %i.jh, %bb.cg ] ; 3 uses
  %i.jv = phi i64 [ %.pre844, %bb.ch ], [ %i.jf, %bb.cg ]
  %i.jw = phi ptr [ %.pre843.a, %bb.ch ], [ %i.je, %bb.cg ]
  %i.jx = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8            ; 9 uses
  %i.ka = ptrtoaddr ptr %i.jz to i64
  %i.kb = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.jz, i64 %i.kc
  %.not407 = icmp ugt ptr %i.jx, %i.kd
  br i1 %.not407, label %bb.cp, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ke = ptrtoint ptr %.2383 to i64
  %i.kf = ptrtoint ptr %i.jc to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = trunc i64 %i.kg to i32
  %i.ki = add i32 %i.kh, -1                       ; 4 uses
  %i.kj = load ptr, ptr %i.bk, align 8            ; 6 uses
  %i.kk = sext i32 %i.ki to i64
  %i.kl = getelementptr inbounds i8, ptr %i.kj, i64 %i.kk ; 4 uses
  store ptr %i.kl, ptr %i.bi, align 8
  %i.km = load i32, ptr %i.bh, align 4            ; 3 uses
  %i.kn = icmp sgt i32 %i.ki, 0
  br i1 %i.kn, label %.lr.ph.i.preheader, label %yy_get_previous_state.exit

.lr.ph.i.preheader:                               ; preds = %bb.cj
  %i.ko = and i32 %i.ki, 1
  %lcmp.mod.not = icmp eq i32 %i.ko, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.kp = sext i32 %i.km to i64
  %i.kq = getelementptr inbounds [44 x i8], ptr @yy_nxt, i64 %i.kp
  %i.kr = load i8, ptr %i.kj, align 1             ; 2 uses
  %.not.i415.prol = icmp eq i8 %i.kr, 0
  br i1 %.not.i415.prol, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.prol
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1
  %i.kv = zext i8 %i.ku to i64
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.ck, %.lr.ph.i.prol
end_hunk_1
