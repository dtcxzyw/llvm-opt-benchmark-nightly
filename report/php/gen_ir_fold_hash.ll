begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ir_strtab = type { ptr, i32, i32, i32, i32, ptr, i32, i32 }
%struct._ir_strtab_bucket = type { i32, i32, ptr, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"static const uint32_t _ir_fold_hash[%d] = {\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\090x%08x,\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\090x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"#define IR_FOLD_SEMI_PERFECT_HASH\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [89 x i8] c"static uint32_t _ir_fold_hashkey(uint32_t h)\0A{\0A\09return (((h << %d) - h) << %d) %% %d;\0A}\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"static uint32_t _ir_fold_hashkey(uint32_t h)\0A{\0A\09return 0;\0A}\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@strtab = internal global %struct._ir_strtab zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"NOP\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"C_BOOL\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"C_U8\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"C_U16\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"C_U32\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"C_U64\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"C_ADDR\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"C_CHAR\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"C_I8\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"C_I16\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"C_I32\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"C_I64\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"C_DOUBLE\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"C_FLOAT\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"EQ\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"NE\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"LT\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"GE\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"LE\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"GT\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"ULT\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"UGE\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"ULE\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"UGT\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"ORDERED\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"UNORDERED\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"DIV\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"MOD\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"NEG\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"ABS\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"SEXT\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"ZEXT\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"TRUNC\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"BITCAST\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"INT2FP\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"FP2INT\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"FP2FP\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"PROTO\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"ADD_OV\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"SUB_OV\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"MUL_OV\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"OVERFLOW\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"XOR\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"SHL\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"SHR\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"SAR\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"ROL\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"ROR\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"BSWAP\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"CTPOP\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"CTLZ\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"CTTZ\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"MAX\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"COND\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"VADDR\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"FRAME_ADDR\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"PHI\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"PI\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"ARGVAL\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"PARAM\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"VAR\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"FUNC_ADDR\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"FUNC\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"SYM\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"LABEL\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"STR\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"CALL\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"TAILCALL\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"ALLOCA\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"AFREE\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"BLOCK_BEGIN\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"BLOCK_END\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"VLOAD\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"VLOAD_v\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"VSTORE\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"VSTORE_v\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"RLOAD\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"RSTORE\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"LOAD_v\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"STORE\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"STORE_v\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"TLS\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"TRAP\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"VA_START\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"VA_END\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"VA_COPY\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"VA_ARG\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"GUARD\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"GUARD_NOT\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"SNAPSHOT\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"IF_TRUE\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"IF_FALSE\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"CASE_VAL\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"CASE_RANGE\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"CASE_DEFAULT\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"MERGE\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"LOOP_BEGIN\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"LOOP_END\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"IF\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"SWITCH\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"IGOTO\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"IJMP\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"RETURN\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"UNREACHABLE\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"ASM\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"ASM_OUT\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"ASM_GOTO\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"EXITCALL\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"C_INTPTR\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"C_UINTPTR\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"IR_FOLD(\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.131 = private unnamed_addr constant [23 x i8] c"ERROR: Too many rules\0A\00", align 1
@.str.132 = private unnamed_addr constant [39 x i8] c"ERROR: Incorrect '%s' rule on line %d\0A\00", align 1
@.str.133 = private unnamed_addr constant [62 x i8] c"/* This file is generated from \22ir_fold.h\22. Do not edit! */\0A\0A\00", align 1
@.str.134 = private unnamed_addr constant [33 x i8] c"typedef enum _ir_fold_rule_id {\0A\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"\09IR_RULE_%d,\0A\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"\09_IR_RULE_LAST\0A\00", align 1
@.str.137 = private unnamed_addr constant [21 x i8] c"} ir_fold_rule_id;\0A\0A\00", align 1
@.str.138 = private unnamed_addr constant [41 x i8] c"ERROR: Cannot find a good hash function\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ir_strtab_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  store i32 %2, ptr %i.c, align 4
  %i.f = load i32, ptr %i.b, align 4
  %3 = call fastcc i32 @ir_strtab_hash_size(i32 noundef %i.f)
  store i32 %3, ptr %i.d, align 4
  %i.g = load i32, ptr %i.d, align 4
  %i.h = zext i32 %i.g to i64
  %i.i = mul nuw nsw i64 %i.h, 4
  %i.j = load i32, ptr %i.b, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw nsw i64 %i.k, 24
  %i.m = add nuw nsw i64 %i.i, %i.l
  %i.n = call noalias ptr @malloc(i64 noundef %i.m) #8
  store ptr %i.n, ptr %i.e, align 8
  %i.o = load ptr, ptr %i.e, align 8
  %i.p = load i32, ptr %i.d, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.q, 4
  call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 -1, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load i32, ptr %i.d, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.x, i32 0, i32 0
  store ptr %i.w, ptr %4, align 8
  %i.y = load i32, ptr %i.d, align 4
  %i.z = sub nsw i32 0, %i.y
  %i.aa = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.aa, i32 0, i32 1
  store i32 %i.z, ptr %5, align 8
  %i.ab = load i32, ptr %i.b, align 4
  %i.ac = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.ac, i32 0, i32 2
  store i32 %i.ab, ptr %6, align 4
  %i.ad = load ptr, ptr %i.a, align 8
  %7 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.ad, i32 0, i32 3
  store i32 0, ptr %7, align 8
  %i.ae = load ptr, ptr %i.a, align 8
  %8 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.ae, i32 0, i32 4
  store i32 0, ptr %8, align 4
  %i.af = load i32, ptr %i.c, align 4
  %i.ag = icmp ne i32 %i.af, 0
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ah = load i32, ptr %i.c, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = call noalias ptr @malloc(i64 noundef %i.ai) #8
  %i.ak = load ptr, ptr %i.a, align 8
  %9 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.ak, i32 0, i32 5
  store ptr %i.aj, ptr %9, align 8
  %i.al = load i32, ptr %i.c, align 4
  %i.am = load ptr, ptr %i.a, align 8
  %10 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.am, i32 0, i32 6
  store i32 %i.al, ptr %10, align 8
  %i.an = load ptr, ptr %i.a, align 8
  %11 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.an, i32 0, i32 7
  store i32 0, ptr %11, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ao = load ptr, ptr %i.a, align 8
  %12 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.ao, i32 0, i32 5
  store ptr null, ptr %12, align 8
  %i.ap = load ptr, ptr %i.a, align 8
  %13 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.ap, i32 0, i32 6
  store i32 0, ptr %13, align 8
  %i.aq = load ptr, ptr %i.a, align 8
  %14 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.aq, i32 0, i32 7
  store i32 0, ptr %14, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i32 @ir_strtab_hash_size(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 19 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sub i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4
  %i.d = load i32, ptr %i.a, align 4
  %i.e = lshr i32 %i.d, 1
  %i.f = load i32, ptr %i.a, align 4
  %i.g = or i32 %i.f, %i.e
  store i32 %i.g, ptr %i.a, align 4
  %i.h = load i32, ptr %i.a, align 4
  %i.i = lshr i32 %i.h, 2
  %i.j = load i32, ptr %i.a, align 4
  %i.k = or i32 %i.j, %i.i
  store i32 %i.k, ptr %i.a, align 4
  %i.l = load i32, ptr %i.a, align 4
  %i.m = lshr i32 %i.l, 4
  %i.n = load i32, ptr %i.a, align 4
  %i.o = or i32 %i.n, %i.m
  store i32 %i.o, ptr %i.a, align 4
  %i.p = load i32, ptr %i.a, align 4
  %i.q = lshr i32 %i.p, 8
  %i.r = load i32, ptr %i.a, align 4
  %i.s = or i32 %i.r, %i.q
  store i32 %i.s, ptr %i.a, align 4
  %i.t = load i32, ptr %i.a, align 4
  %i.u = lshr i32 %i.t, 16
  %i.v = load i32, ptr %i.a, align 4
  %i.w = or i32 %i.v, %i.u
  store i32 %i.w, ptr %i.a, align 4
  %i.x = load i32, ptr %i.a, align 4
  %i.y = add i32 %i.x, 1
  ret i32 %i.y
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ir_strtab_find(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store i32 %2, ptr %i.d, align 4
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = load i32, ptr %i.d, align 4
  %i.k = zext i32 %i.j to i64
  %3 = call fastcc i32 @ir_str_hash(ptr noundef %i.i, i64 noundef %i.k)
  store i32 %3, ptr %i.e, align 4
  %i.l = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.l, i32 0, i32 0
  %i.m = load ptr, ptr %4, align 8
  store ptr %i.m, ptr %i.f, align 8
  %i.n = load ptr, ptr %i.f, align 8
  %i.o = load i32, ptr %i.e, align 4
  %i.p = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.p, i32 0, i32 1
  %i.q = load i32, ptr %5, align 8
  %i.r = or i32 %i.o, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i32, ptr %i.n, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4
  store i32 %i.u, ptr %i.g, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.v = load i32, ptr %i.g, align 4
  %i.w = icmp ne i32 %i.v, -1
  br i1 %i.w, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = load i32, ptr %i.g, align 4
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  store ptr %i.aa, ptr %i.h, align 8
  %i.ab = load ptr, ptr %i.h, align 8
  %6 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.ab, i32 0, i32 0
  %i.ac = load i32, ptr %6, align 8
  %i.ad = load i32, ptr %i.e, align 4
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.h, align 8
  %7 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.af, i32 0, i32 1
  %i.ag = load i32, ptr %7, align 4
  %i.ah = load i32, ptr %i.d, align 4
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.h, align 8
  %8 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.aj, i32 0, i32 2
  %i.ak = load ptr, ptr %8, align 8
  %i.al = load ptr, ptr %i.c, align 8
  %i.am = load i32, ptr %i.d, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = call i32 @memcmp(ptr noundef %i.ak, ptr noundef %i.al, i64 noundef %i.an) #9
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.h, align 8
  %9 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.aq, i32 0, i32 4
  %i.ar = load i32, ptr %9, align 4
  store i32 %i.ar, ptr %i.a, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.as = load ptr, ptr %i.h, align 8
  %10 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.as, i32 0, i32 3
  %i.at = load i32, ptr %10, align 8
  store i32 %i.at, ptr %i.g, align 4
  br label %bb.b, !llvm.loop !5

bb.h:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.au = load i32, ptr %i.a, align 4
  ret i32 %i.au
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc range(i32 268435456, 0) i32 @ir_str_hash(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store i64 %1, ptr %i.b, align 8
  store i32 5381, ptr %i.d, align 4
  store i64 0, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = load i64, ptr %i.b, align 8
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 4
  %i.i = shl i32 %i.h, 5
  %i.j = load i32, ptr %i.d, align 4
  %i.k = add i32 %i.i, %i.j
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = load i8, ptr %i.l, align 1
  %i.n = sext i8 %i.m to i32
  %i.o = add i32 %i.k, %i.n
  store i32 %i.o, ptr %i.d, align 4
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i32 1
  store ptr %i.q, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.c, align 8
  br label %bb.b, !llvm.loop !7

bb.e:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.d, align 4
  %i.u = or i32 %i.t, 268435456
  ret i32 %i.u
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ir_strtab_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 22 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca ptr, align 8                      ; 12 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store i32 %2, ptr %i.d, align 4
  store i32 %3, ptr %i.e, align 4
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load i32, ptr %i.d, align 4
  %i.l = zext i32 %i.k to i64
  %4 = call fastcc i32 @ir_str_hash(ptr noundef %i.j, i64 noundef %i.l)
  store i32 %4, ptr %i.f, align 4
  %i.m = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.m, i32 0, i32 0
  %i.n = load ptr, ptr %5, align 8
  store ptr %i.n, ptr %i.g, align 8
  %i.o = load ptr, ptr %i.g, align 8
  %i.p = load i32, ptr %i.f, align 4
  %i.q = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.q, i32 0, i32 1
  %i.r = load i32, ptr %6, align 8
  %i.s = or i32 %i.p, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i32, ptr %i.o, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  store i32 %i.v, ptr %i.h, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.w = load i32, ptr %i.h, align 4
  %i.x = icmp ne i32 %i.w, -1
  br i1 %i.x, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.g, align 8
  %i.z = load i32, ptr %i.h, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  store ptr %i.ab, ptr %i.i, align 8
  %i.ac = load ptr, ptr %i.i, align 8
  %7 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.ac, i32 0, i32 0
  %i.ad = load i32, ptr %7, align 8
  %i.ae = load i32, ptr %i.f, align 4
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.i, align 8
  %8 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.ag, i32 0, i32 1
  %i.ah = load i32, ptr %8, align 4
  %i.ai = load i32, ptr %i.d, align 4
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.i, align 8
  %9 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.ak, i32 0, i32 2
  %i.al = load ptr, ptr %9, align 8
  %i.am = load ptr, ptr %i.c, align 8
  %i.an = load i32, ptr %i.d, align 4
  %i.ao = zext i32 %i.an to i64
  %i.ap = call i32 @memcmp(ptr noundef %i.al, ptr noundef %i.am, i64 noundef %i.ao) #9
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.i, align 8
  %10 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.ar, i32 0, i32 4
  %i.as = load i32, ptr %10, align 4
  store i32 %i.as, ptr %i.a, align 4
  br label %bb.o

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.at = load ptr, ptr %i.i, align 8
  %11 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.at, i32 0, i32 3
  %i.au = load i32, ptr %11, align 8
  store i32 %i.au, ptr %i.h, align 4
  br label %bb.b, !llvm.loop !8

bb.h:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %i.b, align 8
  %12 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.av, i32 0, i32 3
  %i.aw = load i32, ptr %12, align 8
  %i.ax = load ptr, ptr %i.b, align 8
  %13 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.ax, i32 0, i32 2
  %i.ay = load i32, ptr %13, align 4
  %i.az = icmp uge i32 %i.aw, %i.ay
  %i.ba = xor i1 %i.az, true
  %i.bb = xor i1 %i.ba, true
  %i.bc = zext i1 %i.bb to i32
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = icmp ne i64 %i.bd, 0
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.b, align 8
  call fastcc void @ir_strtab_resize(ptr noundef %i.bf)
  %i.bg = load ptr, ptr %i.b, align 8
  %14 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.bg, i32 0, i32 0
  %i.bh = load ptr, ptr %14, align 8
  store ptr %i.bh, ptr %i.g, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = load ptr, ptr %i.b, align 8
  %15 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.bi, i32 0, i32 5
  %i.bj = load ptr, ptr %15, align 8
  %i.bk = icmp ne ptr %i.bj, null
  br i1 %i.bk, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.b, align 8
  %16 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.bl, i32 0, i32 6
  %i.bm = load i32, ptr %16, align 8
  %i.bn = load ptr, ptr %i.b, align 8
  %17 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.bn, i32 0, i32 7
  %i.bo = load i32, ptr %17, align 4
  %i.bp = sub i32 %i.bm, %i.bo
  %i.bq = load i32, ptr %i.d, align 4
  %i.br = add i32 %i.bq, 1
  %i.bs = icmp ult i32 %i.bp, %i.br
  %i.bt = xor i1 %i.bs, true
  %i.bu = xor i1 %i.bt, true
  %i.bv = zext i1 %i.bu to i32
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = icmp ne i64 %i.bw, 0
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = load ptr, ptr %i.b, align 8
  %i.bz = load i32, ptr %i.d, align 4
  %i.ca = add i32 %i.bz, 1
  call fastcc void @ir_strtab_grow_buf(ptr noundef %i.by, i32 noundef %i.ca)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cb = load ptr, ptr %i.b, align 8
  %18 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.cb, i32 0, i32 5
  %i.cc = load ptr, ptr %18, align 8
  %i.cd = load ptr, ptr %i.b, align 8
  %19 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.cd, i32 0, i32 7
  %i.ce = load i32, ptr %19, align 4
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  %i.ch = load ptr, ptr %i.c, align 8
  %i.ci = load i32, ptr %i.d, align 4
  %i.cj = zext i32 %i.ci to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.ch, i64 %i.cj, i1 false)
  %i.ck = load ptr, ptr %i.b, align 8
  %20 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.ck, i32 0, i32 5
  %i.cl = load ptr, ptr %20, align 8
  %i.cm = load ptr, ptr %i.b, align 8
  %21 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.cm, i32 0, i32 7
  %i.cn = load i32, ptr %21, align 4
  %i.co = load i32, ptr %i.d, align 4
  %i.cp = add i32 %i.cn, %i.co
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cq
  store i8 0, ptr %i.cr, align 1
  %i.cs = load ptr, ptr %i.b, align 8
  %22 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.cs, i32 0, i32 5
  %i.ct = load ptr, ptr %22, align 8
  %i.cu = load ptr, ptr %i.b, align 8
  %23 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.cu, i32 0, i32 7
  %i.cv = load i32, ptr %23, align 4
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw
  store ptr %i.cx, ptr %i.c, align 8
  %i.cy = load i32, ptr %i.d, align 4
  %i.cz = add i32 %i.cy, 1
  %i.da = load ptr, ptr %i.b, align 8
  %24 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.da, i32 0, i32 7 ; 2 uses
  %i.db = load i32, ptr %24, align 4
  %i.dc = add i32 %i.db, %i.cz
  store i32 %i.dc, ptr %24, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.dd = load ptr, ptr %i.b, align 8
  %25 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.dd, i32 0, i32 4
  %i.de = load i32, ptr %25, align 4
  store i32 %i.de, ptr %i.h, align 4
  %i.df = load ptr, ptr %i.b, align 8
  %26 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.df, i32 0, i32 4 ; 2 uses
  %i.dg = load i32, ptr %26, align 4
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nuw nsw i64 %i.dh, 24
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %26, align 4
  %i.dk = load ptr, ptr %i.b, align 8
  %27 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.dk, i32 0, i32 3 ; 2 uses
  %i.dl = load i32, ptr %27, align 8
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %27, align 8
  %i.dn = load ptr, ptr %i.g, align 8
  %i.do = load i32, ptr %i.h, align 4
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp
  store ptr %i.dq, ptr %i.i, align 8
  %i.dr = load i32, ptr %i.f, align 4
  %i.ds = load ptr, ptr %i.i, align 8
  %28 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.ds, i32 0, i32 0
  store i32 %i.dr, ptr %28, align 8
  %i.dt = load i32, ptr %i.d, align 4
  %i.du = load ptr, ptr %i.i, align 8
  %29 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.du, i32 0, i32 1
  store i32 %i.dt, ptr %29, align 4
  %i.dv = load ptr, ptr %i.c, align 8
  %i.dw = load ptr, ptr %i.i, align 8
  %30 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.dw, i32 0, i32 2
  store ptr %i.dv, ptr %30, align 8
  %i.dx = load ptr, ptr %i.b, align 8
  %31 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.dx, i32 0, i32 1
  %i.dy = load i32, ptr %31, align 8
  %i.dz = load i32, ptr %i.f, align 4
  %i.ea = or i32 %i.dz, %i.dy
  store i32 %i.ea, ptr %i.f, align 4
  %i.eb = load ptr, ptr %i.g, align 8
  %i.ec = load i32, ptr %i.f, align 4
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i32, ptr %i.eb, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = load ptr, ptr %i.i, align 8
  %32 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.eg, i32 0, i32 3
  store i32 %i.ef, ptr %32, align 8
  %i.eh = load i32, ptr %i.h, align 4
  %i.ei = load ptr, ptr %i.g, align 8
  %i.ej = load i32, ptr %i.f, align 4
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i32, ptr %i.ei, i64 %i.ek
  store i32 %i.eh, ptr %i.el, align 4
  %i.em = load i32, ptr %i.e, align 4
  %i.en = load ptr, ptr %i.i, align 8
  %33 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.en, i32 0, i32 4
  store i32 %i.em, ptr %33, align 4
  %i.eo = load i32, ptr %i.e, align 4
  store i32 %i.eo, ptr %i.a, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %i.ep = load i32, ptr %i.a, align 4
  ret i32 %i.ep
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @ir_strtab_resize(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca i32, align 4                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.k = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.k, i32 0, i32 1
  %i.l = load i32, ptr %1, align 8
  %i.m = sub nsw i32 0, %i.l
  store i32 %i.m, ptr %i.b, align 4
  %i.n = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.n, i32 0, i32 0
  %i.o = load ptr, ptr %2, align 8
  store ptr %i.o, ptr %i.c, align 8
  %i.p = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.p, i32 0, i32 2
  %i.q = load i32, ptr %3, align 4
  %i.r = mul i32 %i.q, 2
  store i32 %i.r, ptr %i.d, align 4
  %i.s = load i32, ptr %i.d, align 4
  %4 = call fastcc i32 @ir_strtab_hash_size(i32 noundef %i.s)
  store i32 %4, ptr %i.e, align 4
  %i.t = load i32, ptr %i.e, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 4
  %i.w = load i32, ptr %i.d, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.x, 24
  %i.z = add nuw nsw i64 %i.v, %i.y
  %i.aa = call noalias ptr @malloc(i64 noundef %i.z) #8
  store ptr %i.aa, ptr %i.f, align 8
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = load i32, ptr %i.e, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 4
  call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 -1, i64 %i.ae, i1 false)
  %i.af = load ptr, ptr %i.f, align 8
  %i.ag = load i32, ptr %i.e, align 4
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw nsw i64 %i.ah, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  %i.ak = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.ak, i32 0, i32 0
  store ptr %i.aj, ptr %5, align 8
  %i.al = load i32, ptr %i.e, align 4
  %i.am = sub nsw i32 0, %i.al
  %i.an = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.an, i32 0, i32 1
  store i32 %i.am, ptr %6, align 8
  %i.ao = load i32, ptr %i.d, align 4
  %i.ap = load ptr, ptr %i.a, align 8
  %7 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.ap, i32 0, i32 2
  store i32 %i.ao, ptr %7, align 4
  %i.aq = load ptr, ptr %i.a, align 8
  %8 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.aq, i32 0, i32 0
  %i.ar = load ptr, ptr %8, align 8
  %i.as = load ptr, ptr %i.c, align 8
  %i.at = load ptr, ptr %i.a, align 8
  %9 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.at, i32 0, i32 3
  %i.au = load i32, ptr %9, align 8
  %i.av = zext i32 %i.au to i64
  %i.aw = mul nuw nsw i64 %i.av, 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.as, i64 %i.aw, i1 false)
  %i.ax = load ptr, ptr %i.c, align 8
  %i.ay = load i32, ptr %i.b, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw nsw i64 %i.az, 4
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 %i.bb
  call void @free(ptr noundef %i.bc) #10
  %i.bd = load ptr, ptr %i.a, align 8
  %10 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.bd, i32 0, i32 3
  %i.be = load i32, ptr %10, align 8
  store i32 %i.be, ptr %i.i, align 4
  store i32 0, ptr %i.h, align 4
  %i.bf = load ptr, ptr %i.a, align 8
  %11 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.bf, i32 0, i32 0
  %i.bg = load ptr, ptr %11, align 8
  store ptr %i.bg, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.bh = load ptr, ptr %i.g, align 8
  %12 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.bh, i32 0, i32 0
  %i.bi = load i32, ptr %12, align 8
  %i.bj = load ptr, ptr %i.a, align 8
  %13 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.bj, i32 0, i32 1
  %i.bk = load i32, ptr %13, align 8
  %i.bl = or i32 %i.bi, %i.bk
  store i32 %i.bl, ptr %i.j, align 4
  %i.bm = load ptr, ptr %i.a, align 8
  %14 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.bm, i32 0, i32 0
  %i.bn = load ptr, ptr %14, align 8
  %i.bo = load i32, ptr %i.j, align 4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i32, ptr %i.bn, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = load ptr, ptr %i.g, align 8
  %15 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.bs, i32 0, i32 3
  store i32 %i.br, ptr %15, align 8
  %i.bt = load i32, ptr %i.h, align 4
  %i.bu = load ptr, ptr %i.a, align 8
  %16 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.bu, i32 0, i32 0
  %i.bv = load ptr, ptr %16, align 8
  %i.bw = load i32, ptr %i.j, align 4
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i32, ptr %i.bv, i64 %i.bx
  store i32 %i.bt, ptr %i.by, align 4
  %i.bz = load i32, ptr %i.h, align 4
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 24
  %i.cc = trunc i64 %i.cb to i32
  store i32 %i.cc, ptr %i.h, align 4
  %i.cd = load ptr, ptr %i.g, align 8
  %17 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.cd, i32 1
  store ptr %17, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ce = load i32, ptr %i.i, align 4
  %i.cf = add i32 %i.ce, -1                       ; 2 uses
  store i32 %i.cf, ptr %i.i, align 4
  %i.cg = icmp ne i32 %i.cf, 0
  br i1 %i.cg, label %bb.b, label %bb.d, !llvm.loop !9

bb.d:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @ir_strtab_grow_buf(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  %i.g = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.g, i32 0, i32 5
  %i.h = load ptr, ptr %2, align 8
  %i.i = ptrtoint ptr %i.h to i64
  store i64 %i.i, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.j = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.j, i32 0, i32 6 ; 2 uses
  %i.k = load i32, ptr %3, align 8
  %i.l = mul i32 %i.k, 2
  store i32 %i.l, ptr %3, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.m, i32 0, i32 6
  %i.n = load i32, ptr %4, align 8
  %i.o = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.o, i32 0, i32 7
  %i.p = load i32, ptr %5, align 4
  %i.q = sub i32 %i.n, %i.p
  %i.r = load i32, ptr %i.b, align 4
  %i.s = add i32 %i.r, 1
  %i.t = icmp ult i32 %i.q, %i.s
  %i.u = xor i1 %i.t, true
  %i.v = xor i1 %i.u, true
  %i.w = zext i1 %i.v to i32
  %i.x = zext nneg i32 %i.w to i64
  %i.y = icmp ne i64 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.d, !llvm.loop !10

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.z, i32 0, i32 5
  %i.aa = load ptr, ptr %6, align 8
  %i.ab = load ptr, ptr %i.a, align 8
  %7 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.ab, i32 0, i32 6
  %i.ac = load i32, ptr %7, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = call ptr @realloc(ptr noundef %i.aa, i64 noundef %i.ad) #11
  %i.af = load ptr, ptr %i.a, align 8
  %8 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.af, i32 0, i32 5
  store ptr %i.ae, ptr %8, align 8
  %i.ag = load ptr, ptr %i.a, align 8
  %9 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.ag, i32 0, i32 5
  %i.ah = load ptr, ptr %9, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = load i64, ptr %i.c, align 8
  %i.ak = icmp ne i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.a, align 8
  %10 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.al, i32 0, i32 5
  %i.am = load ptr, ptr %10, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = load i64, ptr %i.c, align 8
  %i.ap = sub nsw i64 %i.an, %i.ao
  store i64 %i.ap, ptr %i.d, align 8
  %i.aq = load ptr, ptr %i.a, align 8
  %11 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.aq, i32 0, i32 0
  %i.ar = load ptr, ptr %11, align 8
  store ptr %i.ar, ptr %i.e, align 8
  %i.as = load ptr, ptr %i.a, align 8
  %12 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.as, i32 0, i32 3
  %i.at = load i32, ptr %12, align 8
  store i32 %i.at, ptr %i.f, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.au = load i32, ptr %i.f, align 4
  %i.av = icmp ugt i32 %i.au, 0
  br i1 %i.av, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.d, align 8
  %i.ax = load ptr, ptr %i.e, align 8
  %13 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.ax, i32 0, i32 2 ; 2 uses
  %i.ay = load ptr, ptr %13, align 8
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aw
  store ptr %i.az, ptr %13, align 8
  %i.ba = load ptr, ptr %i.e, align 8
  %14 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.ba, i32 1
  store ptr %14, ptr %i.e, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load i32, ptr %i.f, align 4
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr %i.f, align 4
  br label %bb.f, !llvm.loop !11

bb.i:                                             ; preds = %bb.f
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ir_strtab_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store i32 %2, ptr %i.d, align 4
  store i32 %3, ptr %i.e, align 4
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load i32, ptr %i.d, align 4
  %i.l = zext i32 %i.k to i64
  %4 = call fastcc i32 @ir_str_hash(ptr noundef %i.j, i64 noundef %i.l)
  store i32 %4, ptr %i.f, align 4
  %i.m = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.m, i32 0, i32 0
  %i.n = load ptr, ptr %5, align 8
  store ptr %i.n, ptr %i.g, align 8
  %i.o = load ptr, ptr %i.g, align 8
  %i.p = load i32, ptr %i.f, align 4
  %i.q = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.q, i32 0, i32 1
  %i.r = load i32, ptr %6, align 8
  %i.s = or i32 %i.p, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i32, ptr %i.o, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  store i32 %i.v, ptr %i.h, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.w = load i32, ptr %i.h, align 4
  %i.x = icmp ne i32 %i.w, -1
  br i1 %i.x, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.g, align 8
  %i.z = load i32, ptr %i.h, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  store ptr %i.ab, ptr %i.i, align 8
  %i.ac = load ptr, ptr %i.i, align 8
  %7 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.ac, i32 0, i32 0
  %i.ad = load i32, ptr %7, align 8
  %i.ae = load i32, ptr %i.f, align 4
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.i, align 8
  %8 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.ag, i32 0, i32 1
  %i.ah = load i32, ptr %8, align 4
  %i.ai = load i32, ptr %i.d, align 4
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.i, align 8
  %9 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.ak, i32 0, i32 2
  %i.al = load ptr, ptr %9, align 8
  %i.am = load ptr, ptr %i.c, align 8
  %i.an = load i32, ptr %i.d, align 4
  %i.ao = zext i32 %i.an to i64
  %i.ap = call i32 @memcmp(ptr noundef %i.al, ptr noundef %i.am, i64 noundef %i.ao) #9
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %i.e, align 4             ; 2 uses
  %i.as = load ptr, ptr %i.i, align 8
  %10 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.as, i32 0, i32 4
  store i32 %i.ar, ptr %10, align 4
  store i32 %i.ar, ptr %i.a, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.at = load ptr, ptr %i.i, align 8
  %11 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.at, i32 0, i32 3
  %i.au = load i32, ptr %11, align 8
  store i32 %i.au, ptr %i.h, align 4
  br label %bb.b, !llvm.loop !12

bb.h:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.av = load i32, ptr %i.a, align 4
  ret i32 %i.av
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @ir_strtab_str(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  %i.c = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.c, i32 0, i32 0
  %i.d = load ptr, ptr %2, align 8
  %i.e = load i32, ptr %i.b, align 4
  %i.f = sext i32 %i.e to i64
  %3 = getelementptr inbounds %struct._ir_strtab_bucket, ptr %i.d, i64 %i.f
  %4 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %3, i32 0, i32 2
  %i.g = load ptr, ptr %4, align 8
  ret ptr %i.g
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @ir_strtab_strl(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  store ptr %2, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.e, i32 0, i32 0
  %i.f = load ptr, ptr %3, align 8
  %i.g = load i32, ptr %i.b, align 4
  %i.h = sext i32 %i.g to i64
  %4 = getelementptr inbounds %struct._ir_strtab_bucket, ptr %i.f, i64 %i.h
  store ptr %4, ptr %i.d, align 8
  %i.i = load ptr, ptr %i.d, align 8
  %5 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.i, i32 0, i32 1
  %i.j = load i32, ptr %5, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.c, align 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %i.d, align 8
  %6 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.m, i32 0, i32 2
  %i.n = load ptr, ptr %6, align 8
  ret ptr %i.n
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ir_strtab_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.d, i32 0, i32 1
  %i.e = load i32, ptr %1, align 8
  %i.f = sub nsw i32 0, %i.e
  store i32 %i.f, ptr %i.b, align 4
  %i.g = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.g, i32 0, i32 0
  %i.h = load ptr, ptr %2, align 8
  %i.i = load i32, ptr %i.b, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = mul nuw nsw i64 %i.j, 4
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l
  store ptr %i.m, ptr %i.c, align 8
  %i.n = load ptr, ptr %i.c, align 8
  call void @free(ptr noundef %i.n) #10
  %i.o = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.o, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %i.p = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.p, i32 0, i32 5
  %i.q = load ptr, ptr %4, align 8
  %i.r = icmp ne ptr %i.q, null
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.s, i32 0, i32 5
  %i.t = load ptr, ptr %5, align 8
  call void @free(ptr noundef %i.t) #10
  %i.u = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.u, i32 0, i32 5
  store ptr null, ptr %6, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ir_strtab_apply(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store i32 0, ptr %i.c, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.e = load i32, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.f, i32 0, i32 3
  %i.g = load i32, ptr %2, align 8
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.i, i32 0, i32 0
  %i.j = load ptr, ptr %3, align 8
  %i.k = load i32, ptr %i.c, align 4
  %i.l = zext i32 %i.k to i64
  %4 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.j, i64 %i.l
  store ptr %4, ptr %i.d, align 8
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = load ptr, ptr %i.d, align 8
  %5 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.n, i32 0, i32 2
  %i.o = load ptr, ptr %5, align 8
  %i.p = load ptr, ptr %i.d, align 8
  %6 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.p, i32 0, i32 1
  %i.q = load i32, ptr %6, align 4
  %i.r = load ptr, ptr %i.d, align 8
  %7 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.r, i32 0, i32 4
  %i.s = load i32, ptr %7, align 4
  call void %i.m(ptr noundef %i.o, i32 noundef %i.q, i32 noundef %i.s)
  br label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.c, align 4
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.c, align 4
  br label %bb.b, !llvm.loop !13

bb.e:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_hash(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  %i.d = load i32, ptr %i.b, align 4
  %i.e = add i32 %i.d, 1
  %i.f = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %i.e) ; 0 uses
  store i32 0, ptr %i.c, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = load i32, ptr %i.c, align 4
  %i.h = load i32, ptr %i.b, align 4
  %i.i = icmp ult i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load i32, ptr %i.c, align 4
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i32, ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4
  %i.o = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %i.n) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.c, align 4
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.c, align 4
  br label %bb.b, !llvm.loop !14

bb.e:                                             ; preds = %bb.b
  %i.r = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 0) ; 0 uses
  %i.s = call i32 (ptr, ...) @printf(ptr noundef @.str.3) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_hash(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [8192 x i32], align 16            ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca i32, align 4                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  store i32 %1, ptr %i.c, align 4
  %i.k = load i32, ptr %i.c, align 4
  %i.l = or i32 %i.k, 1
  store i32 %i.l, ptr %i.e, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.x, %bb.a
  %i.m = load i32, ptr %i.e, align 4
  %i.n = icmp ult i32 %i.m, 8192
  br i1 %i.n, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.j, align 4
  store i32 0, ptr %i.f, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.v, %bb.c
  %i.o = load i32, ptr %i.f, align 4
  %i.p = icmp ult i32 %i.o, 31
  br i1 %i.p, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.t, %bb.e
  %i.q = load i32, ptr %i.g, align 4
  %i.r = icmp ult i32 %i.q, 32
  br i1 %i.r, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 0
  %i.t = load i32, ptr %i.e, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 4
  call void @llvm.memset.p0.i64(ptr align 16 %i.s, i8 0, i64 %i.v, i1 false)
  store i32 0, ptr %i.h, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %i.w = load i32, ptr %i.h, align 4
  %i.x = load i32, ptr %i.c, align 4
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = load i32, ptr %i.h, align 4
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i32, ptr %i.z, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 2097151
  %i.af = load i32, ptr %i.f, align 4
  %i.ag = load i32, ptr %i.g, align 4
  %2 = call fastcc i32 @hash_shl2(i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ag)
  %i.ah = load i32, ptr %i.e, align 4
  %i.ai = urem i32 %2, %i.ah
  store i32 %i.ai, ptr %i.i, align 4
  %i.aj = load i32, ptr %i.i, align 4
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp ne i32 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ao = load i32, ptr %i.i, align 4
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.i, align 4
  %i.aq = load i32, ptr %i.i, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp ne i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.b, align 8
  %i.aw = load i32, ptr %i.h, align 4
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i32, ptr %i.av, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = load i32, ptr %i.i, align 4
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 %i.bb
  store i32 %i.az, ptr %i.bc, align 4
  store i32 1, ptr %i.j, align 4
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.b, align 8
  %i.be = load i32, ptr %i.h, align 4
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i32, ptr %i.bd, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = load i32, ptr %i.i, align 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 %i.bj
  store i32 %i.bh, ptr %i.bk, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.bl = load i32, ptr %i.h, align 4
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.h, align 4
  br label %bb.h, !llvm.loop !15

bb.o:                                             ; preds = %bb.l, %bb.h
  %i.bn = load i32, ptr %i.h, align 4
  %i.bo = load i32, ptr %i.c, align 4
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 0
  %i.br = load i32, ptr %i.e, align 4
  call void @print_hash(ptr noundef %i.bq, i32 noundef %i.br)
  %i.bs = load i32, ptr %i.j, align 4
  %i.bt = icmp ne i32 %i.bs, 0
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef @.str.4) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bv = load i32, ptr %i.f, align 4
  %i.bw = load i32, ptr %i.g, align 4
  %i.bx = load i32, ptr %i.e, align 4
  %i.by = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %i.bv, i32 noundef %i.bw, i32 noundef %i.bx) ; 0 uses
  store i32 1, ptr %i.a, align 4
  br label %bb.z

bb.s:                                             ; preds = %bb.o
  br label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = load i32, ptr %i.g, align 4
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.g, align 4
  br label %bb.f, !llvm.loop !16

bb.u:                                             ; preds = %bb.f
  br label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = load i32, ptr %i.f, align 4
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.f, align 4
  br label %bb.d, !llvm.loop !17

bb.w:                                             ; preds = %bb.d
  br label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = load i32, ptr %i.e, align 4
  %i.ce = add i32 %i.cd, 2
  store i32 %i.ce, ptr %i.e, align 4
  br label %bb.b, !llvm.loop !18

bb.y:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 0
  store i32 0, ptr %i.cf, align 16
  %i.cg = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 0
  call void @print_hash(ptr noundef %i.cg, i32 noundef 1)
  %i.ch = call i32 (ptr, ...) @printf(ptr noundef @.str.6) ; 0 uses
  store i32 0, ptr %i.a, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r
  %i.ci = load i32, ptr %i.a, align 4
  ret i32 %i.ci
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i32 @hash_shl2(i32 noundef range(i32 0, 2097152) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4
  store i32 %1, ptr %i.b, align 4
  store i32 %2, ptr %i.c, align 4
  %i.d = load i32, ptr %i.a, align 4
  %i.e = load i32, ptr %i.b, align 4
  %i.f = shl i32 %i.d, %i.e
  %i.g = load i32, ptr %i.a, align 4
  %i.h = sub i32 %i.f, %i.g
  %i.i = load i32, ptr %i.c, align 4
  %i.j = shl i32 %i.h, %i.i
  ret i32 %i.j
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4
  %i.c = alloca ptr, align 8
  %i.d = alloca [4096 x i8], align 16             ; 8 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca [2048 x i32], align 16            ; 2 uses
  %i.j = alloca [2048 x i32], align 16            ; 2 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  store i32 0, ptr %i.a, align 4
  store i32 %0, ptr %i.b, align 4
  store ptr %1, ptr %i.c, align 8
  %i.l = load ptr, ptr @stdin, align 8
  store ptr %i.l, ptr %i.e, align 8
  store i32 0, ptr %i.f, align 4
  store i32 0, ptr %i.g, align 4
  call void @ir_strtab_init(ptr noundef @strtab, i32 noundef 121, i32 noundef 0)
  %i.m = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.7, i32 noundef 3, i32 noundef 1) ; 0 uses
  %i.n = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.8, i32 noundef 6, i32 noundef 2) ; 0 uses
  %i.o = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.9, i32 noundef 4, i32 noundef 3) ; 0 uses
  %i.p = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.10, i32 noundef 5, i32 noundef 4) ; 0 uses
  %i.q = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.11, i32 noundef 5, i32 noundef 5) ; 0 uses
  %i.r = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.12, i32 noundef 5, i32 noundef 6) ; 0 uses
  %i.s = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.13, i32 noundef 6, i32 noundef 7) ; 0 uses
  %i.t = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.14, i32 noundef 6, i32 noundef 8) ; 0 uses
  %i.u = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.15, i32 noundef 4, i32 noundef 9) ; 0 uses
  %i.v = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.16, i32 noundef 5, i32 noundef 10) ; 0 uses
  %i.w = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.17, i32 noundef 5, i32 noundef 11) ; 0 uses
  %i.x = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.18, i32 noundef 5, i32 noundef 12) ; 0 uses
  %i.y = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.19, i32 noundef 8, i32 noundef 13) ; 0 uses
  %i.z = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.20, i32 noundef 7, i32 noundef 14) ; 0 uses
  %i.aa = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.21, i32 noundef 2, i32 noundef 15) ; 0 uses
  %i.ab = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.22, i32 noundef 2, i32 noundef 16) ; 0 uses
  %i.ac = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.23, i32 noundef 2, i32 noundef 17) ; 0 uses
  %i.ad = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.24, i32 noundef 2, i32 noundef 18) ; 0 uses
  %i.ae = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.25, i32 noundef 2, i32 noundef 19) ; 0 uses
  %i.af = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.26, i32 noundef 2, i32 noundef 20) ; 0 uses
  %i.ag = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.27, i32 noundef 3, i32 noundef 21) ; 0 uses
  %i.ah = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.28, i32 noundef 3, i32 noundef 22) ; 0 uses
  %i.ai = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.29, i32 noundef 3, i32 noundef 23) ; 0 uses
  %i.aj = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.30, i32 noundef 3, i32 noundef 24) ; 0 uses
  %i.ak = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.31, i32 noundef 7, i32 noundef 25) ; 0 uses
  %i.al = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.32, i32 noundef 9, i32 noundef 26) ; 0 uses
  %i.am = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.33, i32 noundef 3, i32 noundef 27) ; 0 uses
  %i.an = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.34, i32 noundef 3, i32 noundef 28) ; 0 uses
  %i.ao = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.35, i32 noundef 3, i32 noundef 29) ; 0 uses
  %i.ap = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.36, i32 noundef 3, i32 noundef 30) ; 0 uses
  %i.aq = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.37, i32 noundef 3, i32 noundef 31) ; 0 uses
  %i.ar = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.38, i32 noundef 3, i32 noundef 32) ; 0 uses
  %i.as = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.39, i32 noundef 3, i32 noundef 33) ; 0 uses
  %i.at = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.40, i32 noundef 4, i32 noundef 34) ; 0 uses
  %i.au = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.41, i32 noundef 4, i32 noundef 35) ; 0 uses
  %i.av = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.42, i32 noundef 5, i32 noundef 36) ; 0 uses
  %i.aw = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.43, i32 noundef 7, i32 noundef 37) ; 0 uses
  %i.ax = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.44, i32 noundef 6, i32 noundef 38) ; 0 uses
  %i.ay = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.45, i32 noundef 6, i32 noundef 39) ; 0 uses
  %i.az = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.46, i32 noundef 5, i32 noundef 40) ; 0 uses
  %i.ba = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.47, i32 noundef 5, i32 noundef 41) ; 0 uses
  %i.bb = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.48, i32 noundef 6, i32 noundef 42) ; 0 uses
  %i.bc = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.49, i32 noundef 6, i32 noundef 43) ; 0 uses
  %i.bd = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.50, i32 noundef 6, i32 noundef 44) ; 0 uses
  %i.be = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.51, i32 noundef 8, i32 noundef 45) ; 0 uses
  %i.bf = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.52, i32 noundef 3, i32 noundef 46) ; 0 uses
  %i.bg = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.53, i32 noundef 2, i32 noundef 47) ; 0 uses
  %i.bh = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.54, i32 noundef 3, i32 noundef 48) ; 0 uses
  %i.bi = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.55, i32 noundef 3, i32 noundef 49) ; 0 uses
  %i.bj = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.56, i32 noundef 3, i32 noundef 50) ; 0 uses
  %i.bk = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.57, i32 noundef 3, i32 noundef 51) ; 0 uses
  %i.bl = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.58, i32 noundef 3, i32 noundef 52) ; 0 uses
  %i.bm = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.59, i32 noundef 3, i32 noundef 53) ; 0 uses
  %i.bn = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.60, i32 noundef 3, i32 noundef 54) ; 0 uses
  %i.bo = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.61, i32 noundef 5, i32 noundef 55) ; 0 uses
  %i.bp = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.62, i32 noundef 5, i32 noundef 56) ; 0 uses
  %i.bq = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.63, i32 noundef 4, i32 noundef 57) ; 0 uses
  %i.br = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.64, i32 noundef 4, i32 noundef 58) ; 0 uses
  %i.bs = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.65, i32 noundef 3, i32 noundef 59) ; 0 uses
  %i.bt = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.66, i32 noundef 3, i32 noundef 60) ; 0 uses
  %i.bu = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.67, i32 noundef 4, i32 noundef 61) ; 0 uses
  %i.bv = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.68, i32 noundef 5, i32 noundef 62) ; 0 uses
  %i.bw = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.69, i32 noundef 10, i32 noundef 63) ; 0 uses
  %i.bx = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.70, i32 noundef 3, i32 noundef 64) ; 0 uses
  %i.by = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.71, i32 noundef 4, i32 noundef 65) ; 0 uses
  %i.bz = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.72, i32 noundef 2, i32 noundef 66) ; 0 uses
  %i.ca = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.73, i32 noundef 6, i32 noundef 67) ; 0 uses
  %i.cb = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.74, i32 noundef 5, i32 noundef 68) ; 0 uses
  %i.cc = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.75, i32 noundef 3, i32 noundef 69) ; 0 uses
  %i.cd = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.76, i32 noundef 9, i32 noundef 70) ; 0 uses
  %i.ce = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.77, i32 noundef 4, i32 noundef 71) ; 0 uses
  %i.cf = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.78, i32 noundef 3, i32 noundef 72) ; 0 uses
  %i.cg = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.79, i32 noundef 5, i32 noundef 73) ; 0 uses
  %i.ch = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.80, i32 noundef 3, i32 noundef 74) ; 0 uses
  %i.ci = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.81, i32 noundef 4, i32 noundef 75) ; 0 uses
  %i.cj = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.82, i32 noundef 8, i32 noundef 76) ; 0 uses
  %i.ck = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.83, i32 noundef 6, i32 noundef 77) ; 0 uses
  %i.cl = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.84, i32 noundef 5, i32 noundef 78) ; 0 uses
  %i.cm = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.85, i32 noundef 11, i32 noundef 79) ; 0 uses
  %i.cn = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.86, i32 noundef 9, i32 noundef 80) ; 0 uses
  %i.co = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.87, i32 noundef 5, i32 noundef 81) ; 0 uses
  %i.cp = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.88, i32 noundef 7, i32 noundef 82) ; 0 uses
  %i.cq = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.89, i32 noundef 6, i32 noundef 83) ; 0 uses
  %i.cr = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.90, i32 noundef 8, i32 noundef 84) ; 0 uses
  %i.cs = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.91, i32 noundef 5, i32 noundef 85) ; 0 uses
  %i.ct = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.92, i32 noundef 6, i32 noundef 86) ; 0 uses
  %i.cu = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.93, i32 noundef 4, i32 noundef 87) ; 0 uses
  %i.cv = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.94, i32 noundef 6, i32 noundef 88) ; 0 uses
  %i.cw = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.95, i32 noundef 5, i32 noundef 89) ; 0 uses
  %i.cx = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.96, i32 noundef 7, i32 noundef 90) ; 0 uses
  %i.cy = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.97, i32 noundef 3, i32 noundef 91) ; 0 uses
  %i.cz = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.98, i32 noundef 4, i32 noundef 92) ; 0 uses
  %i.da = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.99, i32 noundef 8, i32 noundef 93) ; 0 uses
  %i.db = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.100, i32 noundef 6, i32 noundef 94) ; 0 uses
  %i.dc = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.101, i32 noundef 7, i32 noundef 95) ; 0 uses
  %i.dd = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.102, i32 noundef 6, i32 noundef 96) ; 0 uses
  %i.de = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.103, i32 noundef 5, i32 noundef 97) ; 0 uses
  %i.df = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.104, i32 noundef 9, i32 noundef 98) ; 0 uses
  %i.dg = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.105, i32 noundef 8, i32 noundef 99) ; 0 uses
  %i.dh = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.106, i32 noundef 5, i32 noundef 100) ; 0 uses
  %i.di = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.107, i32 noundef 5, i32 noundef 101) ; 0 uses
  %i.dj = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.108, i32 noundef 5, i32 noundef 102) ; 0 uses
  %i.dk = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.109, i32 noundef 7, i32 noundef 103) ; 0 uses
  %i.dl = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.110, i32 noundef 8, i32 noundef 104) ; 0 uses
  %i.dm = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.111, i32 noundef 8, i32 noundef 105) ; 0 uses
  %i.dn = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.112, i32 noundef 10, i32 noundef 106) ; 0 uses
  %i.do = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.113, i32 noundef 12, i32 noundef 107) ; 0 uses
  %i.dp = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.114, i32 noundef 5, i32 noundef 108) ; 0 uses
  %i.dq = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.115, i32 noundef 10, i32 noundef 109) ; 0 uses
  %i.dr = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.116, i32 noundef 3, i32 noundef 110) ; 0 uses
  %i.ds = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.117, i32 noundef 8, i32 noundef 111) ; 0 uses
  %i.dt = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.118, i32 noundef 2, i32 noundef 112) ; 0 uses
  %i.du = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.119, i32 noundef 6, i32 noundef 113) ; 0 uses
  %i.dv = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.120, i32 noundef 5, i32 noundef 114) ; 0 uses
  %i.dw = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.121, i32 noundef 4, i32 noundef 115) ; 0 uses
  %i.dx = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.122, i32 noundef 6, i32 noundef 116) ; 0 uses
  %i.dy = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.123, i32 noundef 11, i32 noundef 117) ; 0 uses
  %i.dz = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.124, i32 noundef 3, i32 noundef 118) ; 0 uses
  %i.ea = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.125, i32 noundef 7, i32 noundef 119) ; 0 uses
  %i.eb = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.126, i32 noundef 8, i32 noundef 120) ; 0 uses
  %i.ec = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.127, i32 noundef 8, i32 noundef 121) ; 0 uses
  %i.ed = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.128, i32 noundef 8, i32 noundef 12) ; 0 uses
  %i.ee = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.129, i32 noundef 9, i32 noundef 6) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %i.ef = getelementptr inbounds nuw [4096 x i8], ptr %i.d, i64 0, i64 0
  %i.eg = load ptr, ptr %i.e, align 8
  %i.eh = call ptr @fgets(ptr noundef %i.ef, i32 noundef 4095, ptr noundef %i.eg)
  %i.ei = icmp ne ptr %i.eh, null
  br i1 %i.ei, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.ej = getelementptr inbounds nuw [4096 x i8], ptr %i.d, i64 0, i64 0
  %i.ek = call i64 @strlen(ptr noundef %i.ej) #9
  store i64 %i.ek, ptr %i.k, align 8
  %i.el = load i64, ptr %i.k, align 8
  %i.em = icmp ugt i64 %i.el, 0
  br i1 %i.em, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.en = load i64, ptr %i.k, align 8
  %i.eo = sub i64 %i.en, 1
  %i.ep = getelementptr inbounds nuw [4096 x i8], ptr %i.d, i64 0, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = sext i8 %i.eq to i32
  %i.es = icmp eq i32 %i.er, 13
  br i1 %i.es, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.et = load i64, ptr %i.k, align 8
  %i.eu = sub i64 %i.et, 1
  %i.ev = getelementptr inbounds nuw [4096 x i8], ptr %i.d, i64 0, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = sext i8 %i.ew to i32
  %i.ey = icmp eq i32 %i.ex, 10
  br i1 %i.ey, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ez = load i64, ptr %i.k, align 8
  %i.fa = sub i64 %i.ez, 1
  %i.fb = getelementptr inbounds nuw [4096 x i8], ptr %i.d, i64 0, i64 %i.fa
  store i8 0, ptr %i.fb, align 1
  %i.fc = load i64, ptr %i.k, align 8
  %i.fd = add i64 %i.fc, -1
  store i64 %i.fd, ptr %i.k, align 8
  %i.fe = load i32, ptr %i.f, align 4
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.f, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.fg = load i64, ptr %i.k, align 8
  %i.fh = icmp uge i64 %i.fg, 8
  br i1 %i.fh, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.fi = getelementptr inbounds nuw [4096 x i8], ptr %i.d, i64 0, i64 0
  %i.fj = call i32 @memcmp(ptr noundef %i.fi, ptr noundef @.str.130, i64 noundef 8) #9
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.fl = load i32, ptr %i.g, align 4
  %i.fm = icmp sge i32 %i.fl, 2048
  br i1 %i.fm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fn = load ptr, ptr @stderr, align 8
  %i.fo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fn, ptr noundef @.str.131) #10 ; 0 uses
  store i32 1, ptr %i.a, align 4
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.fp = getelementptr inbounds nuw [4096 x i8], ptr %i.d, i64 0, i64 0
  %2 = call fastcc i32 @parse_rule(ptr noundef %i.fp)
  store i32 %2, ptr %i.h, align 4
  %i.fq = load i32, ptr %i.h, align 4
  %i.fr = icmp ne i32 %i.fq, 0
  br i1 %i.fr, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fs = load ptr, ptr @stderr, align 8
  %i.ft = getelementptr inbounds nuw [4096 x i8], ptr %i.d, i64 0, i64 0
  %i.fu = load i32, ptr %i.f, align 4
  %i.fv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fs, ptr noundef @.str.132, ptr noundef %i.ft, i32 noundef %i.fu) #10 ; 0 uses
  store i32 1, ptr %i.a, align 4
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.fw = load i32, ptr %i.f, align 4
  %i.fx = load i32, ptr %i.g, align 4
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [2048 x i32], ptr %i.j, i64 0, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4
  %i.ga = load i32, ptr %i.h, align 4
  %i.gb = load i32, ptr %i.g, align 4
  %i.gc = shl i32 %i.gb, 21
  %i.gd = or i32 %i.ga, %i.gc
  %i.ge = load i32, ptr %i.g, align 4
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [2048 x i32], ptr %i.i, i64 0, i64 %i.gf
  store i32 %i.gd, ptr %i.gg, align 4
  %i.gh = load i32, ptr %i.g, align 4
  %i.gi = add nsw i32 %i.gh, 1
  store i32 %i.gi, ptr %i.g, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h, %bb.g
  br label %bb.b, !llvm.loop !19

bb.o:                                             ; preds = %bb.b
  call void @ir_strtab_free(ptr noundef @strtab)
  %i.gj = call i32 (ptr, ...) @printf(ptr noundef @.str.133) ; 0 uses
  %i.gk = call i32 (ptr, ...) @printf(ptr noundef @.str.134) ; 0 uses
  store i32 0, ptr %i.h, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.gl = load i32, ptr %i.h, align 4
  %i.gm = load i32, ptr %i.g, align 4
  %i.gn = icmp slt i32 %i.gl, %i.gm
  br i1 %i.gn, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.go = load i32, ptr %i.h, align 4
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [2048 x i32], ptr %i.j, i64 0, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = call i32 (ptr, ...) @printf(ptr noundef @.str.135, i32 noundef %i.gr) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gt = load i32, ptr %i.h, align 4
  %i.gu = add nsw i32 %i.gt, 1
  store i32 %i.gu, ptr %i.h, align 4
  br label %bb.p, !llvm.loop !20

bb.s:                                             ; preds = %bb.p
  %i.gv = call i32 (ptr, ...) @printf(ptr noundef @.str.136) ; 0 uses
  %i.gw = call i32 (ptr, ...) @printf(ptr noundef @.str.137) ; 0 uses
  %i.gx = getelementptr inbounds nuw [2048 x i32], ptr %i.i, i64 0, i64 0
  %i.gy = load i32, ptr %i.g, align 4
  %i.gz = call i32 @find_hash(ptr noundef %i.gx, i32 noundef %i.gy)
  %i.ha = icmp ne i32 %i.gz, 0
  br i1 %i.ha, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hb = load ptr, ptr @stderr, align 8
  %i.hc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hb, ptr noundef @.str.138) #10 ; 0 uses
  store i32 1, ptr %i.a, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store i32 0, ptr %i.a, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.l, %bb.j
  %i.hd = load i32, ptr %i.a, align 4
  ret i32 %i.hd
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i32 @parse_rule(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 34 uses
  %i.d = alloca ptr, align 8                      ; 55 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  store ptr %0, ptr %i.b, align 8
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -1
  store ptr %i.i, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load i8, ptr %i.j, align 1
  %i.l = sext i8 %i.k to i32
  %i.m = icmp eq i32 %i.l, 32
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = load i8, ptr %i.n, align 1
  %i.p = sext i8 %i.o to i32
  %i.q = icmp eq i32 %i.p, 9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i1 [ true, %bb.b ], [ %i.q, %bb.c ]
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i32 1
  store ptr %i.t, ptr %i.c, align 8
  br label %bb.b, !llvm.loop !21

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i32
  %i.x = icmp slt i32 %i.w, 65
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  %i.ab = icmp sgt i32 %i.aa, 90
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 0, ptr %i.a, align 4
  br label %bb.ct

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.d, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %bb.i
  %i.ae = load ptr, ptr %i.d, align 8
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = sext i8 %i.af to i32
  %i.ah = icmp sge i32 %i.ag, 65
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.d, align 8
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = sext i8 %i.aj to i32
  %i.al = icmp sle i32 %i.ak, 90
  br i1 %i.al, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = load ptr, ptr %i.d, align 8
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = sext i8 %i.an to i32
  %i.ap = icmp sge i32 %i.ao, 48
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %i.d, align 8
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = sext i8 %i.ar to i32
  %i.at = icmp sle i32 %i.as, 57
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = load ptr, ptr %i.d, align 8
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = sext i8 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 95
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.ay = phi i1 [ true, %bb.m ], [ true, %bb.k ], [ %i.ax, %bb.n ]
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = load ptr, ptr %i.d, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i32 1
  store ptr %i.ba, ptr %i.d, align 8
  br label %bb.j, !llvm.loop !22

bb.q:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = load ptr, ptr %i.d, align 8
  %i.bd = load ptr, ptr %i.c, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %1 = call fastcc i32 @find_op(ptr noundef %i.bb, i64 noundef %i.bg)
  store i32 %1, ptr %i.e, align 4
  %i.bh = load i32, ptr %i.e, align 4
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.a, align 4
  br label %bb.ct

bb.s:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.e, align 4
  store i32 %i.bj, ptr %i.f, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.s
  %i.bk = load ptr, ptr %i.d, align 8
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = sext i8 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 32
  br i1 %i.bn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %i.d, align 8
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = sext i8 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bs = phi i1 [ true, %bb.t ], [ %i.br, %bb.u ]
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = load ptr, ptr %i.d, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i32 1
  store ptr %i.bu, ptr %i.d, align 8
  br label %bb.t, !llvm.loop !23

bb.x:                                             ; preds = %bb.v
  %i.bv = load ptr, ptr %i.d, align 8
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = sext i8 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 41
  br i1 %i.by, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bz = load i32, ptr %i.f, align 4
  store i32 %i.bz, ptr %i.a, align 4
  br label %bb.ct

bb.z:                                             ; preds = %bb.x
  %i.ca = load ptr, ptr %i.d, align 8
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = sext i8 %i.cb to i32
  %i.cd = icmp ne i32 %i.cc, 40
  br i1 %i.cd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.a, align 4
  br label %bb.ct

bb.ab:                                            ; preds = %bb.z
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = load ptr, ptr %i.d, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store ptr %i.cf, ptr %i.c, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %bb.ac
  %i.cg = load ptr, ptr %i.c, align 8
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = sext i8 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 32
  br i1 %i.cj, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = load ptr, ptr %i.c, align 8
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.co = phi i1 [ true, %bb.ad ], [ %i.cn, %bb.ae ]
  br i1 %i.co, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cp = load ptr, ptr %i.c, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i32 1
  store ptr %i.cq, ptr %i.c, align 8
  br label %bb.ad, !llvm.loop !24

bb.ah:                                            ; preds = %bb.af
  %i.cr = load ptr, ptr %i.c, align 8
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = sext i8 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 95
  br i1 %i.cu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cv = load ptr, ptr %i.c, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store ptr %i.cw, ptr %i.d, align 8
  br label %bb.ay

bb.aj:                                            ; preds = %bb.ah
  %i.cx = load ptr, ptr %i.c, align 8
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = sext i8 %i.cy to i32
  %i.da = icmp sge i32 %i.cz, 65
  br i1 %i.da, label %bb.ak, label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  %i.db = load ptr, ptr %i.c, align 8
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = sext i8 %i.dc to i32
  %i.de = icmp sle i32 %i.dd, 90
  br i1 %i.de, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %bb.ak
  %i.df = load ptr, ptr %i.c, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store ptr %i.dg, ptr %i.d, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.as, %bb.al
  %i.dh = load ptr, ptr %i.d, align 8
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = sext i8 %i.di to i32
  %i.dk = icmp sge i32 %i.dj, 65
  br i1 %i.dk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dl = load ptr, ptr %i.d, align 8
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = sext i8 %i.dm to i32
  %i.do = icmp sle i32 %i.dn, 90
  br i1 %i.do, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dp = load ptr, ptr %i.d, align 8
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = sext i8 %i.dq to i32
  %i.ds = icmp sge i32 %i.dr, 48
  br i1 %i.ds, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dt = load ptr, ptr %i.d, align 8
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = sext i8 %i.du to i32
  %i.dw = icmp sle i32 %i.dv, 57
  br i1 %i.dw, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dx = load ptr, ptr %i.d, align 8
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = sext i8 %i.dy to i32
  %i.ea = icmp eq i32 %i.dz, 95
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an
  %i.eb = phi i1 [ true, %bb.ap ], [ true, %bb.an ], [ %i.ea, %bb.aq ]
  br i1 %i.eb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ec = load ptr, ptr %i.d, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i32 1
  store ptr %i.ed, ptr %i.d, align 8
  br label %bb.am, !llvm.loop !25

bb.at:                                            ; preds = %bb.ar
  %i.ee = load ptr, ptr %i.c, align 8
  %i.ef = load ptr, ptr %i.d, align 8
  %i.eg = load ptr, ptr %i.c, align 8
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %2 = call fastcc i32 @find_op(ptr noundef %i.ee, i64 noundef %i.ej)
  store i32 %2, ptr %i.e, align 4
  %i.ek = load i32, ptr %i.e, align 4
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.a, align 4
  br label %bb.ct

bb.av:                                            ; preds = %bb.at
  %i.em = load i32, ptr %i.e, align 4
  %i.en = shl i32 %i.em, 7
  %i.eo = load i32, ptr %i.f, align 4
  %i.ep = or i32 %i.eo, %i.en
  store i32 %i.ep, ptr %i.f, align 4
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ak, %bb.aj
  store i32 0, ptr %i.a, align 4
  br label %bb.ct

bb.ax:                                            ; preds = %bb.av
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ai
  br label %bb.az

bb.az:                                            ; preds = %bb.bc, %bb.ay
  %i.eq = load ptr, ptr %i.d, align 8
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = sext i8 %i.er to i32
  %i.et = icmp eq i32 %i.es, 32
  br i1 %i.et, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eu = load ptr, ptr %i.d, align 8
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = sext i8 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 9
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ey = phi i1 [ true, %bb.az ], [ %i.ex, %bb.ba ]
  br i1 %i.ey, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ez = load ptr, ptr %i.d, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i32 1
  store ptr %i.fa, ptr %i.d, align 8
  br label %bb.az, !llvm.loop !26

bb.bd:                                            ; preds = %bb.bb
  %i.fb = load ptr, ptr %i.d, align 8
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = sext i8 %i.fc to i32
  %i.fe = icmp eq i32 %i.fd, 41
  br i1 %i.fe, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ff = load i32, ptr %i.f, align 4
  store i32 %i.ff, ptr %i.a, align 4
  br label %bb.ct

bb.bf:                                            ; preds = %bb.bd
  %i.fg = load ptr, ptr %i.d, align 8
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = sext i8 %i.fh to i32
  %i.fj = icmp ne i32 %i.fi, 44
  br i1 %i.fj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.a, align 4
  br label %bb.ct

bb.bh:                                            ; preds = %bb.bf
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fk = load ptr, ptr %i.d, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  store ptr %i.fl, ptr %i.c, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bm, %bb.bi
  %i.fm = load ptr, ptr %i.c, align 8
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = sext i8 %i.fn to i32
  %i.fp = icmp eq i32 %i.fo, 32
  br i1 %i.fp, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fq = load ptr, ptr %i.c, align 8
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = sext i8 %i.fr to i32
  %i.ft = icmp eq i32 %i.fs, 9
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fu = phi i1 [ true, %bb.bj ], [ %i.ft, %bb.bk ]
  br i1 %i.fu, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fv = load ptr, ptr %i.c, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i32 1
  store ptr %i.fw, ptr %i.c, align 8
  br label %bb.bj, !llvm.loop !27

bb.bn:                                            ; preds = %bb.bl
  %i.fx = load ptr, ptr %i.c, align 8
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = sext i8 %i.fy to i32
  %i.ga = icmp eq i32 %i.fz, 95
  br i1 %i.ga, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.gb = load ptr, ptr %i.c, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store ptr %i.gc, ptr %i.d, align 8
  br label %bb.ce

bb.bp:                                            ; preds = %bb.bn
  %i.gd = load ptr, ptr %i.c, align 8
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = sext i8 %i.ge to i32
  %i.gg = icmp sge i32 %i.gf, 65
  br i1 %i.gg, label %bb.bq, label %bb.cc

bb.bq:                                            ; preds = %bb.bp
  %i.gh = load ptr, ptr %i.c, align 8
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = sext i8 %i.gi to i32
  %i.gk = icmp sle i32 %i.gj, 90
  br i1 %i.gk, label %bb.br, label %bb.cc

bb.br:                                            ; preds = %bb.bq
  %i.gl = load ptr, ptr %i.c, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  store ptr %i.gm, ptr %i.d, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.by, %bb.br
  %i.gn = load ptr, ptr %i.d, align 8
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = sext i8 %i.go to i32
  %i.gq = icmp sge i32 %i.gp, 65
  br i1 %i.gq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gr = load ptr, ptr %i.d, align 8
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = sext i8 %i.gs to i32
  %i.gu = icmp sle i32 %i.gt, 90
  br i1 %i.gu, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.gv = load ptr, ptr %i.d, align 8
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = sext i8 %i.gw to i32
  %i.gy = icmp sge i32 %i.gx, 48
  br i1 %i.gy, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.gz = load ptr, ptr %i.d, align 8
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = sext i8 %i.ha to i32
  %i.hc = icmp sle i32 %i.hb, 57
  br i1 %i.hc, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.hd = load ptr, ptr %i.d, align 8
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = sext i8 %i.he to i32
  %i.hg = icmp eq i32 %i.hf, 95
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bt
  %i.hh = phi i1 [ true, %bb.bv ], [ true, %bb.bt ], [ %i.hg, %bb.bw ]
  br i1 %i.hh, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.hi = load ptr, ptr %i.d, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i32 1
  store ptr %i.hj, ptr %i.d, align 8
  br label %bb.bs, !llvm.loop !28

bb.bz:                                            ; preds = %bb.bx
  %i.hk = load ptr, ptr %i.c, align 8
  %i.hl = load ptr, ptr %i.d, align 8
  %i.hm = load ptr, ptr %i.c, align 8
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %3 = call fastcc i32 @find_op(ptr noundef %i.hk, i64 noundef %i.hp)
  store i32 %3, ptr %i.e, align 4
  %i.hq = load i32, ptr %i.e, align 4
  %i.hr = icmp slt i32 %i.hq, 0
  br i1 %i.hr, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.a, align 4
  br label %bb.ct

bb.cb:                                            ; preds = %bb.bz
  %i.hs = load i32, ptr %i.e, align 4
  %i.ht = shl i32 %i.hs, 14
  %i.hu = load i32, ptr %i.f, align 4
  %i.hv = or i32 %i.hu, %i.ht
  store i32 %i.hv, ptr %i.f, align 4
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bq, %bb.bp
  store i32 0, ptr %i.a, align 4
  br label %bb.ct

bb.cd:                                            ; preds = %bb.cb
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bo
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ci, %bb.ce
  %i.hw = load ptr, ptr %i.d, align 8
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = sext i8 %i.hx to i32
  %i.hz = icmp eq i32 %i.hy, 32
  br i1 %i.hz, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ia = load ptr, ptr %i.d, align 8
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = sext i8 %i.ib to i32
  %i.id = icmp eq i32 %i.ic, 9
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ie = phi i1 [ true, %bb.cf ], [ %i.id, %bb.cg ]
  br i1 %i.ie, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.if = load ptr, ptr %i.d, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i32 1
  store ptr %i.ig, ptr %i.d, align 8
  br label %bb.cf, !llvm.loop !29

bb.cj:                                            ; preds = %bb.ch
  %i.ih = load ptr, ptr %i.d, align 8
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = sext i8 %i.ii to i32
  %i.ik = icmp ne i32 %i.ij, 41
  br i1 %i.ik, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i32 0, ptr %i.a, align 4
  br label %bb.ct

bb.cl:                                            ; preds = %bb.cj
  %i.il = load ptr, ptr %i.d, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i32 1
  store ptr %i.im, ptr %i.d, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cp, %bb.cl
  %i.in = load ptr, ptr %i.d, align 8
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = sext i8 %i.io to i32
  %i.iq = icmp eq i32 %i.ip, 32
  br i1 %i.iq, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ir = load ptr, ptr %i.d, align 8
  %i.is = load i8, ptr %i.ir, align 1
  %i.it = sext i8 %i.is to i32
  %i.iu = icmp eq i32 %i.it, 9
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.iv = phi i1 [ true, %bb.cm ], [ %i.iu, %bb.cn ]
  br i1 %i.iv, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.iw = load ptr, ptr %i.d, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i32 1
  store ptr %i.ix, ptr %i.d, align 8
  br label %bb.cm, !llvm.loop !30

bb.cq:                                            ; preds = %bb.co
  %i.iy = load ptr, ptr %i.d, align 8
  %i.iz = load i8, ptr %i.iy, align 1
  %i.ja = sext i8 %i.iz to i32
  %i.jb = icmp ne i32 %i.ja, 41
  br i1 %i.jb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.a, align 4
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.jc = load i32, ptr %i.f, align 4
  store i32 %i.jc, ptr %i.a, align 4
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.ck, %bb.cc, %bb.ca, %bb.bg, %bb.be, %bb.aw, %bb.au, %bb.aa, %bb.y, %bb.r, %bb.h
  %i.jd = load i32, ptr %i.a, align 4
  ret i32 %i.jd
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @find_op(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store i64 %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load i64, ptr %i.b, align 8
  %i.e = trunc i64 %i.d to i8
  %i.f = zext i8 %i.e to i32
  %i.g = call i32 @ir_strtab_find(ptr noundef @strtab, ptr noundef %i.c, i32 noundef %i.f)
  %i.h = sub nsw i32 %i.g, 1
  ret i32 %i.h
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
end_hunk_0
