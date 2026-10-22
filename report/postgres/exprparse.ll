Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/exprparse?download=true
inline.NumInlined: 42
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.2 = type { ptr, i32, i32 }
%union.YYSTYPE = type { i64 }

@yypact = internal unnamed_addr constant [88 x i16] [i16 64, i16 -33, i16 -33, i16 -33, i16 -33, i16 -33, i16 -33, i16 64, i16 -19, i16 64, i16 64, i16 46, i16 64, i16 13, i16 205, i16 -33, i16 -22, i16 258, i16 64, i16 -6, i16 11, i16 -33, i16 -33, i16 -33, i16 92, i16 -33, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 3, i16 -33, i16 -33, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 121, i16 64, i16 64, i16 -33, i16 -33, i16 258, i16 233, i16 283, i16 283, i16 283, i16 11, i16 11, i16 -33, i16 -33, i16 5, i16 283, i16 283, i16 283, i16 11, i16 11, i16 11, i16 -9, i16 -9, i16 -33, i16 -33, i16 -33, i16 -32, i16 205, i16 64, i16 149, i16 177, i16 -33, i16 -33, i16 64, i16 -33, i16 205, i16 64, i16 -33, i16 205, i16 205], align 16
@yytranslate = internal unnamed_addr constant [282 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\1E\02%\1F\02()#!'\22\02$\02\02\02\02\02\02\02\02\02\02\02\02\1A\1C\1B\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\1D\02 \02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19&", align 16
@yycheck = internal unnamed_addr constant [321 x i8] c"\07\14\09\0A\0B\0C\03'\03)\07\12\07\00\14\0C\16\17(\1A\1B\1C\1D\1E\1F #$%$%&'()*+,-./\FF12!\22#$%\03\04\05\06\07\08\09\FF\FF\0C\FF\FF\FF\FF\FF\FF\13\FF\03\04L\06\07\08\09Q\FF\0CT !\22\FF\FF\13\FF\FF(\FF\FF\FF\FF\FF\FF\FF\FF\FF !\22\FF\FF\FF\0A\0B(\0D\0E\0F\10\11\12\FF\FF\FF\FF\FF\18\19\1A\1B\1C\1D\1E\1F\FF!\22#$%\FF\0A\0B)\0D\0E\0F\10\11\12\FF\FF\15\FF\FF\18\19\1A\1B\1C\1D\1E\1F\FF!\22#$%\0A\0B\FF\0D\0E\0F\10\11\12\FF\FF\15\FF\FF\18\19\1A\1B\1C\1D\1E\1F\FF!\22#$%\0A\0B\FF\0D\0E\0F\10\11\12\FF\FF\FF\FF\17\18\19\1A\1B\1C\1D\1E\1F\FF!\22#$%\0A\0B\FF\0D\0E\0F\10\11\12\FF\FF\FF\FF\FF\18\19\1A\1B\1C\1D\1E\1F\FF!\22#$%\0A\FF\FF\0D\0E\0F\10\11\12\FF\FF\FF\FF\FF\18\19\1A\1B\1C\1D\1E\1F\FF!\22#$%\0D\0E\0F\10\11\12\FF\FF\FF\FF\FF\18\19\1A\1B\1C\1D\1E\1F\FF!\22#$%\0D\0E\0F\10\11\FF\FF\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F\FF!\22#$%", align 16
@yytable = internal unnamed_addr constant [321 x i8] c"\11\12\14\15\17\18<QOR=0P\191>23/56789:;,-.?@ABCDEFGHIK\00MN*+,-.\01\02\16\03\04\05\06\00\00\07\00\00\00\00\00\00\08\00\01\02S\03\04\05\06V\00\07W\09\0A\0B\00\00\08\00\00\0C\00\00\00\00\00\00\00\00\00\09\0A\0B\00\00\00\1A\1B\0C\1C\1D\1E\1F !\00\00\00\00\00\22#$%&'()\00*+,-.\00\1A\1B4\1C\1D\1E\1F !\00\00L\00\00\22#$%&'()\00*+,-.\1A\1B\00\1C\1D\1E\1F !\00\00T\00\00\22#$%&'()\00*+,-.\1A\1B\00\1C\1D\1E\1F !\00\00\00\00U\22#$%&'()\00*+,-.\1A\1B\00\1C\1D\1E\1F !\00\00\00\00\00\22#$%&'()\00*+,-.\1A\00\00\1C\1D\1E\1F !\00\00\00\00\00\22#$%&'()\00*+,-.\1C\1D\1E\1F !\00\00\00\00\00\22#$%&'()\00*+,-.\FF\FF\FF\1F \00\00\00\00\00\00\00\00\FF\FF\FF'()\00*+,-.", align 16
@yydefact = internal unnamed_addr constant [88 x i8] c"\00$&'%(/\00\00\00\00\00\00\00\02*\00\0B\00\00\0A\07\09\08\00\01\00\00\00\00\00\00\00\00\1E\1F\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00-\06\1C\1D\16\12\14\1A\1B \22\00\11\13\15\18\19\17\0C\0D\0E\0F\10\00\04\00\00\00!#\00),\00.\05+", align 16
@yyr2 = internal unnamed_addr constant [48 x i8] c"\00\02\01\00\01\03\03\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\03\04\03\04\01\01\01\01\01\04\01\05\04\03\05\01", align 16
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!not\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"!and\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"!or\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"!is\00", align 1
@yyr1 = internal unnamed_addr constant [48 x i8] c"\00*+,,,-------------------------------------..//0", align 16
@yypgoto = internal unnamed_addr constant [7 x i8] c"\DF\DF\DF\F9\DF\DF\DF", align 1
@yydefgoto = internal unnamed_addr constant [7 x i8] c"\00\0DJ\0E\13\0F\10", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@PGBENCH_FUNCTIONS = internal unnamed_addr constant [40 x %struct.anon.2] [%struct.anon.2 { ptr @.str.3, i32 2, i32 0 }, %struct.anon.2 { ptr @.str, i32 2, i32 1 }, %struct.anon.2 { ptr @.str.4, i32 2, i32 2 }, %struct.anon.2 { ptr @.str.5, i32 2, i32 3 }, %struct.anon.2 { ptr @.str.6, i32 2, i32 4 }, %struct.anon.2 { ptr @.str.26, i32 1, i32 6 }, %struct.anon.2 { ptr @.str.27, i32 -1, i32 7 }, %struct.anon.2 { ptr @.str.28, i32 -1, i32 8 }, %struct.anon.2 { ptr @.str.29, i32 1, i32 5 }, %struct.anon.2 { ptr @.str.30, i32 0, i32 11 }, %struct.anon.2 { ptr @.str.31, i32 1, i32 12 }, %struct.anon.2 { ptr @.str.32, i32 1, i32 13 }, %struct.anon.2 { ptr @.str.33, i32 1, i32 14 }, %struct.anon.2 { ptr @.str.34, i32 1, i32 9 }, %struct.anon.2 { ptr @.str.35, i32 1, i32 10 }, %struct.anon.2 { ptr @.str.36, i32 2, i32 15 }, %struct.anon.2 { ptr @.str.37, i32 3, i32 16 }, %struct.anon.2 { ptr @.str.38, i32 3, i32 17 }, %struct.anon.2 { ptr @.str.39, i32 3, i32 18 }, %struct.anon.2 { ptr @.str.40, i32 2, i32 19 }, %struct.anon.2 { ptr @.str.41, i32 2, i32 19 }, %struct.anon.2 { ptr @.str.15, i32 2, i32 20 }, %struct.anon.2 { ptr @.str.16, i32 2, i32 21 }, %struct.anon.2 { ptr @.str.2, i32 1, i32 22 }, %struct.anon.2 { ptr @.str.11, i32 2, i32 23 }, %struct.anon.2 { ptr @.str.12, i32 2, i32 24 }, %struct.anon.2 { ptr @.str.1, i32 2, i32 25 }, %struct.anon.2 { ptr @.str.13, i32 2, i32 26 }, %struct.anon.2 { ptr @.str.14, i32 2, i32 27 }, %struct.anon.2 { ptr @.str.9, i32 2, i32 28 }, %struct.anon.2 { ptr @.str.10, i32 2, i32 29 }, %struct.anon.2 { ptr @.str.8, i32 2, i32 30 }, %struct.anon.2 { ptr @.str.7, i32 2, i32 31 }, %struct.anon.2 { ptr @.str.17, i32 2, i32 32 }, %struct.anon.2 { ptr @.str.42, i32 -2, i32 33 }, %struct.anon.2 { ptr @.str.43, i32 -3, i32 35 }, %struct.anon.2 { ptr @.str.44, i32 -3, i32 35 }, %struct.anon.2 { ptr @.str.45, i32 -3, i32 34 }, %struct.anon.2 { ptr @.str.46, i32 -4, i32 36 }, %struct.anon.2 zeroinitializer], align 16
@.str.25 = private unnamed_addr constant [25 x i8] c"unexpected function name\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"least\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"greatest\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"random_gaussian\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"random_exponential\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"random_zipfian\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"!case_end\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"hash_murmur2\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"hash_fnv1a\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"permute\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"at least one argument expected\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"odd and >= 3 number of arguments expected\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"case control structure\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"unexpected number of arguments\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"default_seed\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @expr_yyparse(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %union.YYSTYPE, align 8             ; 6 uses
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %3 = alloca [200 x %union.YYSTYPE], align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  br label %bb.c

bb.b:                                             ; preds = %28, %bb.dk, %bb.u
  %.0299 = phi i32 [ %29, %28 ], [ %i.pa, %bb.dk ], [ %i.as, %bb.u ]
  %.0296 = phi i32 [ 3, %28 ], [ %.1297, %bb.dk ], [ %spec.select, %bb.u ]
  %.0279 = phi ptr [ %.4283, %28 ], [ %i.oh, %bb.dk ], [ %.3282, %bb.u ]
  %.0267 = phi ptr [ %30, %28 ], [ %i.oi, %bb.dk ], [ %i.aw, %bb.u ]
  %.0260 = phi i32 [ %.7, %28 ], [ %.5, %bb.dk ], [ -2, %bb.u ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0279, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1300 = phi i32 [ 0, %bb.a ], [ %.0299, %bb.b ] ; 3 uses
  %.1297 = phi i32 [ 0, %bb.a ], [ %.0296, %bb.b ] ; 3 uses
  %.0293 = phi i64 [ 200, %bb.a ], [ %.2295, %bb.b ] ; 4 uses
  %.0287 = phi ptr [ %i.a, %bb.a ], [ %.3290, %bb.b ] ; 6 uses
  %.1280 = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ] ; 4 uses
  %.0275 = phi ptr [ %3, %bb.a ], [ %.3278, %bb.b ] ; 2 uses
  %.1268 = phi ptr [ %3, %bb.a ], [ %.0267, %bb.b ]
  %.1261 = phi i32 [ -2, %bb.a ], [ %.0260, %bb.b ] ; 3 uses
  %i.c = trunc nsw i32 %.1300 to i8
  store i8 %i.c, ptr %.1280, align 1
  %i.d = getelementptr inbounds i8, ptr %.0287, i64 %.0293
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1
  %.not = icmp ugt ptr %i.e, %.1280
  br i1 %.not, label %.thread360, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %.1280 to i64
  %i.g = ptrtoint ptr %.0287 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = icmp sgt i64 %.0293, 9999
  br i1 %i.j, label %bb.dm, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl i64 %.0293, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.k, i64 10000) ; 4 uses
  %i.l = mul i64 %spec.store.select, 9
  %i.m = add i64 %i.l, 7
  %i.n = call noalias ptr @malloc(i64 noundef %i.m) #9 ; 6 uses
  %.not314.not = icmp eq ptr %i.n, null
  br i1 %.not314.not, label %bb.dm, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %.0287, i64 %i.i, i1 false)
  %i.o = add nsw i64 %spec.store.select, 7
  %i.p = sdiv i64 %i.o, 8
  %i.q = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = shl i64 %i.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %.0275, i64 %i.r, i1 false)
  %.not315 = icmp eq ptr %.0287, %i.a
  br i1 %.not315, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.0287) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %i.h
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = add nsw i64 %spec.store.select, -1
  %.not316 = icmp sgt i64 %i.v, %i.h
  br i1 %.not316, label %.thread360, label %.thread387.thread

.thread360:                                       ; preds = %bb.h, %bb.c
  %.2295 = phi i64 [ %.0293, %bb.c ], [ %spec.store.select, %bb.h ]
  %.3290 = phi ptr [ %.0287, %bb.c ], [ %i.n, %bb.h ] ; 4 uses
  %.3282 = phi ptr [ %.1280, %bb.c ], [ %i.s, %bb.h ] ; 3 uses
  %.3278 = phi ptr [ %.0275, %bb.c ], [ %i.q, %bb.h ]
  %.3270 = phi ptr [ %.1268, %bb.c ], [ %i.u, %bb.h ] ; 74 uses
  %i.w = icmp eq i32 %.1300, 25
  br i1 %i.w, label %.thread387, label %bb.i

bb.i:                                             ; preds = %.thread360
  %i.x = sext i32 %.1300 to i64                   ; 2 uses
  %i.y = getelementptr inbounds [2 x i8], ptr @yypact, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2              ; 3 uses
  %i.aa = sext i16 %i.z to i32
  %i.ab = icmp eq i16 %i.z, -33
  br i1 %i.ab, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp eq i32 %.1261, -2
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = call i32 @expr_yylex(ptr noundef nonnull %2, ptr noundef %1) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i32 [ %i.ad, %bb.k ], [ %.1261, %bb.j ] ; 6 uses
  %i.ae = icmp slt i32 %.2, 1
  br i1 %i.ae, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = icmp eq i32 %.2, 256
  br i1 %i.af, label %8, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp samesign ult i32 %.2, 282
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = zext nneg i32 %.2 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = sext i8 %i.aj to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.0264 = phi i32 [ 0, %bb.l ], [ %i.ak, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.l ], [ %.2, %bb.o ], [ %.2, %bb.n ] ; 4 uses
  %i.al = add nsw i32 %.0264, %i.aa               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.al, 320
  br i1 %or.cond3, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = sext i8 %i.ao to i32
  %.not317 = icmp eq i32 %.0264, %i.ap
  br i1 %.not317, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.am
  %i.ar = load i8, ptr %i.aq, align 1             ; 3 uses
  %i.as = sext i8 %i.ar to i32                    ; 2 uses
  %i.at = icmp slt i8 %i.ar, 1
  br i1 %i.at, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.au = icmp eq i8 %i.ar, -1
  br i1 %i.au, label %.thread367, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = sub nsw i32 0, %i.as
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.1297, i32 1)
  %i.aw = getelementptr inbounds nuw i8, ptr %.3270, i64 8 ; 2 uses
  %i.ax = load i64, ptr %2, align 8
  store i64 %i.ax, ptr %i.aw, align 8
  br label %bb.b

bb.v:                                             ; preds = %bb.p, %bb.q, %bb.i
  %.4 = phi i32 [ %.1261, %bb.i ], [ %.3, %bb.p ], [ %.3, %bb.q ] ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr @yydefact, i64 %i.x
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %i.ba = sext i8 %i.az to i32
  %i.bb = icmp eq i8 %i.az, 0
  br i1 %i.bb, label %.thread367, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.0266 = phi i32 [ %i.ba, %bb.v ], [ %i.av, %bb.t ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.v ], [ %.3, %bb.t ]
  %i.bc = sext i32 %.0266 to i64                  ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr @yyr2, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = sext i8 %i.be to i64                    ; 2 uses
  %i.bg = sub nsw i64 1, %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %.3270, i64 %i.bg
  %.sroa.0.0.copyload = load i64, ptr %i.bh, align 8 ; 2 uses
  switch i32 %.0266, label %bb.dg [
    i32 2, label %bb.x
    i32 3, label %bb.y
    i32 4, label %bb.z
    i32 5, label %bb.ac
    i32 6, label %bb.ah
    i32 7, label %bb.ai
    i32 8, label %bb.aj
    i32 9, label %bb.ak
    i32 10, label %bb.al
    i32 11, label %bb.am
    i32 12, label %bb.as
    i32 13, label %bb.at
    i32 14, label %bb.au
    i32 15, label %bb.av
    i32 16, label %bb.aw
    i32 17, label %bb.ax
    i32 18, label %bb.ay
    i32 19, label %bb.az
    i32 20, label %bb.ba
    i32 21, label %bb.bb
    i32 22, label %bb.bc
    i32 23, label %bb.bd
    i32 24, label %bb.be
    i32 25, label %bb.bf
    i32 26, label %bb.bg
    i32 27, label %bb.bh
    i32 28, label %bb.bi
    i32 29, label %bb.bj
    i32 30, label %bb.bk
    i32 31, label %bb.bl
    i32 32, label %bb.br
    i32 33, label %bb.bs
    i32 34, label %bb.by
    i32 35, label %bb.bz
    i32 36, label %bb.cf
    i32 37, label %bb.cg
    i32 38, label %bb.ch
    i32 39, label %bb.ci
    i32 40, label %bb.cj
    i32 41, label %bb.ck
    i32 42, label %bb.cl
    i32 43, label %bb.cm
    i32 44, label %bb.cu
    i32 45, label %bb.da
    i32 46, label %bb.db
    i32 47, label %bb.dc
  ]

bb.x:                                             ; preds = %bb.w
  %i.bi = load ptr, ptr %.3270, align 8
  store ptr %i.bi, ptr %0, align 8
  br label %bb.dg

bb.y:                                             ; preds = %bb.w
  br label %bb.dg

bb.z:                                             ; preds = %bb.w
  %i.bj = load ptr, ptr %.3270, align 8
  %i.bk = call ptr @pg_malloc(i64 noundef 16) #8  ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.bl = call ptr @pg_malloc(i64 noundef 16) #8  ; 5 uses
  store ptr %i.bj, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr null, ptr %i.bm, align 8
  %i.bn = load ptr, ptr %i.bk, align 8
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr %i.bl, ptr %i.bk, align 8
  br label %make_elist.exit

bb.ab:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bl, ptr %i.br, align 8
  br label %make_elist.exit

make_elist.exit:                                  ; preds = %bb.aa, %bb.ab
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bs, align 8
  %i.bt = ptrtoint ptr %i.bk to i64
  br label %bb.dg

bb.ac:                                            ; preds = %bb.w
  %i.bu = load ptr, ptr %.3270, align 8
  %i.bv = getelementptr inbounds i8, ptr %.3270, i64 -16
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.by = call ptr @pg_malloc(i64 noundef 16) #8  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0.i = phi ptr [ %i.by, %bb.ad ], [ %i.bw, %bb.ac ] ; 5 uses
  %i.bz = call ptr @pg_malloc(i64 noundef 16) #8  ; 5 uses
  store ptr %i.bu, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr null, ptr %i.ca, align 8
  %i.cb = load ptr, ptr %.0.i, align 8
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr %i.bz, ptr %.0.i, align 8
  br label %make_elist.exit323

bb.ag:                                            ; preds = %bb.ae
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.bz, ptr %i.cf, align 8
  br label %make_elist.exit323

make_elist.exit323:                               ; preds = %bb.af, %bb.ag
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.bz, ptr %i.cg, align 8
  %i.ch = ptrtoint ptr %.0.i to i64
  br label %bb.dg

bb.ah:                                            ; preds = %bb.w
  %i.ci = getelementptr inbounds i8, ptr %.3270, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  br label %bb.dg

bb.ai:                                            ; preds = %bb.w
  %i.cl = load ptr, ptr %.3270, align 8
  %i.cm = ptrtoint ptr %i.cl to i64
  br label %bb.dg

bb.aj:                                            ; preds = %bb.w
  %i.cn = call ptr @pg_malloc(i64 noundef 24) #8  ; 4 uses
  store i32 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i32 2, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 0, ptr %i.cp, align 8
  %i.cq = load ptr, ptr %.3270, align 8
  %i.cr = call fastcc ptr @make_op(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.cn, ptr noundef %i.cq)
  %i.cs = ptrtoint ptr %i.cr to i64
  br label %bb.dg

bb.ak:                                            ; preds = %bb.w
  %i.ct = call ptr @pg_malloc(i64 noundef 24) #8  ; 4 uses
  store i32 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 2, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 -9223372036854775808, ptr %i.cv, align 8
  %i.cw = ptrtoint ptr %i.ct to i64
  br label %bb.dg

bb.al:                                            ; preds = %bb.w
  %i.cx = call ptr @pg_malloc(i64 noundef 24) #8  ; 4 uses
  store i32 0, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 2, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 -1, ptr %i.cz, align 8
  %i.da = load ptr, ptr %.3270, align 8
  %i.db = call fastcc ptr @make_op(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.cx, ptr noundef %i.da)
  %i.dc = ptrtoint ptr %i.db to i64
  br label %bb.dg

bb.am:                                            ; preds = %bb.w
  %i.dd = load ptr, ptr %.3270, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %indvars.iv.i.i = phi i64 [ 0, %bb.am ], [ %indvars.iv.next.i.i, %bb.ao ] ; 3 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr @PGBENCH_FUNCTIONS, i64 %indvars.iv.i.i
  %i.df = load ptr, ptr %i.de, align 16
  %i.dg = call i32 @pg_strcasecmp(ptr noundef nonnull @.str.2, ptr noundef %i.df) #8
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %find_func.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 39
  br i1 %.not.i.i, label %bb.ap, label %bb.an, !llvm.loop !0

bb.ap:                                            ; preds = %bb.ao
  call void @expr_yyerror_more(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2) #10
end_hunk_0
begin_hunk_1_@expr_yyparse:bb.a
  %i.lx = load ptr, ptr %.3270, align 8
  %i.ly = getelementptr inbounds i8, ptr %.3270, i64 -16
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = getelementptr inbounds i8, ptr %.3270, i64 -32
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.md = call ptr @pg_malloc(i64 noundef 16) #8  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.md, i8 0, i64 16, i1 false)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.0.i339 = phi ptr [ %i.md, %bb.cn ], [ %i.mb, %bb.cm ] ; 7 uses
  %i.me = call ptr @pg_malloc(i64 noundef 16) #8  ; 5 uses
  store ptr %i.lz, ptr %i.me, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store ptr null, ptr %i.mf, align 8
  %i.mg = load ptr, ptr %.0.i339, align 8
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store ptr %i.me, ptr %.0.i339, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.mi = getelementptr inbounds nuw i8, ptr %.0.i339, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store ptr %i.me, ptr %i.mk, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i339, i64 8 ; 3 uses
  store ptr %i.me, ptr %i.ml, align 8
  %i.mm = call ptr @pg_malloc(i64 noundef 16) #8  ; 5 uses
  store ptr %i.lx, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store ptr null, ptr %i.mn, align 8
  %i.mo = load ptr, ptr %.0.i339, align 8
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.mm, ptr %.0.i339, align 8
  br label %make_elist.exit342

bb.ct:                                            ; preds = %bb.cr
  %i.mq = load ptr, ptr %i.ml, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store ptr %i.mm, ptr %i.mr, align 8
  br label %make_elist.exit342

make_elist.exit342:                               ; preds = %bb.cs, %bb.ct
  store ptr %i.mm, ptr %i.ml, align 8
  %i.ms = ptrtoint ptr %.0.i339 to i64
  br label %bb.dg

bb.cu:                                            ; preds = %bb.w
  %i.mt = load ptr, ptr %.3270, align 8
  %i.mu = getelementptr inbounds i8, ptr %.3270, i64 -16
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = call ptr @pg_malloc(i64 noundef 16) #8  ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mw, i8 0, i64 16, i1 false)
  %i.mx = call ptr @pg_malloc(i64 noundef 16) #8  ; 5 uses
  store ptr %i.mv, ptr %i.mx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store ptr null, ptr %i.my, align 8
  %i.mz = load ptr, ptr %i.mw, align 8
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store ptr %i.mx, ptr %i.mw, align 8
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store ptr %i.mx, ptr %i.nd, align 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 3 uses
  store ptr %i.mx, ptr %i.ne, align 8
  %i.nf = call ptr @pg_malloc(i64 noundef 16) #8  ; 5 uses
  store ptr %i.mt, ptr %i.nf, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store ptr null, ptr %i.ng, align 8
  %i.nh = load ptr, ptr %i.mw, align 8
  %i.ni = icmp eq ptr %i.nh, null
  br i1 %i.ni, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.nf, ptr %i.mw, align 8
  br label %make_elist.exit346

bb.cz:                                            ; preds = %bb.cx
  %i.nj = load ptr, ptr %i.ne, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  store ptr %i.nf, ptr %i.nk, align 8
  br label %make_elist.exit346

make_elist.exit346:                               ; preds = %bb.cy, %bb.cz
  store ptr %i.nf, ptr %i.ne, align 8
  %i.nl = ptrtoint ptr %i.mw to i64
  br label %bb.dg

bb.da:                                            ; preds = %bb.w
  %i.nm = getelementptr inbounds i8, ptr %.3270, i64 -8
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = call ptr @pg_malloc(i64 noundef 24) #8  ; 4 uses
  store i32 0, ptr %i.no, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store i32 1, ptr %i.np, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  store i64 0, ptr %i.nq, align 8
  %i.nr = call fastcc ptr @make_case(ptr noundef %1, ptr noundef %i.nn, ptr noundef nonnull %i.no)
  %i.ns = ptrtoint ptr %i.nr to i64
  br label %bb.dg

bb.db:                                            ; preds = %bb.w
  %i.nt = getelementptr inbounds i8, ptr %.3270, i64 -24
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = getelementptr inbounds i8, ptr %.3270, i64 -8
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = call fastcc ptr @make_case(ptr noundef %1, ptr noundef %i.nu, ptr noundef %i.nw)
  %i.ny = ptrtoint ptr %i.nx to i64
  br label %bb.dg

bb.dc:                                            ; preds = %bb.w
  %i.nz = load ptr, ptr %.3270, align 8           ; 2 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.de, %bb.dc
  %indvars.iv.i = phi i64 [ 0, %bb.dc ], [ %indvars.iv.next.i, %bb.de ] ; 3 uses
  %i.oa = getelementptr inbounds nuw [16 x i8], ptr @PGBENCH_FUNCTIONS, i64 %indvars.iv.i
  %i.ob = load ptr, ptr %i.oa, align 16
  %i.oc = call i32 @pg_strcasecmp(ptr noundef %i.nz, ptr noundef %i.ob) #8
  %i.od = icmp eq i32 %i.oc, 0
  br i1 %i.od, label %find_func.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, 39
  br i1 %.not.i, label %bb.df, label %bb.dd, !llvm.loop !0

bb.df:                                            ; preds = %bb.de
  call void @expr_yyerror_more(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef %i.nz) #10
  unreachable

find_func.exit:                                   ; preds = %bb.dd
  %i.oe = load ptr, ptr %.3270, align 8
  call void @pg_free(ptr noundef %i.oe) #8
  br label %bb.dg

bb.dg:                                            ; preds = %bb.w, %find_func.exit, %bb.db, %bb.da, %make_elist.exit346, %make_elist.exit342, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %make_uop.exit338, %bb.by, %make_uop.exit333, %bb.br, %make_uop.exit328, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %make_uop.exit, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %make_elist.exit323, %make_elist.exit, %bb.y, %bb.x
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.w ], [ %.sroa.0.0.copyload, %bb.x ], [ 0, %bb.y ], [ %i.bt, %make_elist.exit ], [ %i.ch, %make_elist.exit323 ], [ %i.ck, %bb.ah ], [ %i.cm, %bb.ai ], [ %i.cs, %bb.aj ], [ %i.cw, %bb.ak ], [ %i.dc, %bb.al ], [ %i.dt, %make_uop.exit ], [ %i.dy, %bb.as ], [ %i.ed, %bb.at ], [ %i.ei, %bb.au ], [ %i.en, %bb.av ], [ %i.es, %bb.aw ], [ %i.ex, %bb.ax ], [ %i.fc, %bb.ay ], [ %i.fh, %bb.az ], [ %i.fm, %bb.ba ], [ %i.fr, %bb.bb ], [ %i.fw, %bb.bc ], [ %i.gb, %bb.bd ], [ %i.gg, %bb.be ], [ %i.gl, %bb.bf ], [ %i.gq, %bb.bg ], [ %i.gv, %bb.bh ], [ %i.ha, %bb.bi ], [ %i.hf, %bb.bj ], [ %i.hm, %bb.bk ], [ %i.ii, %make_uop.exit328 ], [ %i.ip, %bb.br ], [ %i.jl, %make_uop.exit333 ], [ %i.jt, %bb.by ], [ %i.kq, %make_uop.exit338 ], [ %i.ku, %bb.cf ], [ %i.kz, %bb.cg ], [ %i.le, %bb.ch ], [ %i.lj, %bb.ci ], [ %i.ln, %bb.cj ], [ %i.lu, %bb.ck ], [ %i.lw, %bb.cl ], [ %i.ms, %make_elist.exit342 ], [ %i.nl, %make_elist.exit346 ], [ %i.ns, %bb.da ], [ %i.ny, %bb.db ], [ %indvars.iv.i, %find_func.exit ]
  %i.of = sub nsw i64 0, %i.bf                    ; 2 uses
  %i.og = getelementptr inbounds [8 x i8], ptr %.3270, i64 %i.of
  %i.oh = getelementptr inbounds i8, ptr %.3282, i64 %i.of ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 2 uses
  store i64 %.sroa.0.0, ptr %i.oi, align 8
  %i.oj = getelementptr inbounds i8, ptr @yyr1, i64 %i.bc
  %i.ok = load i8, ptr %i.oj, align 1
  %i.ol = sext i8 %i.ok to i64
  %i.om = add nsw i64 %i.ol, -42                  ; 2 uses
  %i.on = getelementptr inbounds i8, ptr @yypgoto, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = sext i8 %i.oo to i32
  %i.oq = load i8, ptr %i.oh, align 1             ; 2 uses
  %i.or = sext i8 %i.oq to i32
  %i.os = add nsw i32 %i.or, %i.op                ; 2 uses
  %i.ot = icmp sgt i32 %i.os, -1
  br i1 %i.ot, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %i.ou = zext nneg i32 %i.os to i64              ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = icmp eq i8 %i.ow, %i.oq
  br i1 %i.ox, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.oy = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.ou
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh, %bb.dg
  %i.oz = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.om
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.in.in = phi ptr [ %i.oy, %bb.di ], [ %i.oz, %bb.dj ]
  %.in = load i8, ptr %.in.in, align 1
  %i.pa = sext i8 %.in to i32
  br label %bb.b

.thread367:                                       ; preds = %bb.v, %bb.s
  %.6370 = phi i32 [ %.3, %bb.s ], [ %.4, %bb.v ] ; 4 uses
  switch i32 %.1297, label %8 [
    i32 0, label %bb.dl
    i32 3, label %4
  ]

bb.dl:                                            ; preds = %.thread367
  call void @expr_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.18) #10
  unreachable

4:                                                ; preds = %.thread367
  %5 = icmp slt i32 %.6370, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = icmp eq i32 %.6370, 0
  br i1 %7, label %.thread387, label %8

8:                                                ; preds = %4, %.thread367, %bb.m, %6
  %.7 = phi i32 [ %.6370, %6 ], [ 257, %bb.m ], [ %.6370, %.thread367 ], [ -2, %4 ]
  br label %9

9:                                                ; preds = %24, %8
  %10 = phi i16 [ %i.z, %8 ], [ %.pre, %24 ]      ; 2 uses
  %.4283 = phi ptr [ %.3282, %8 ], [ %26, %24 ]   ; 3 uses
  %.4271 = phi ptr [ %.3270, %8 ], [ %25, %24 ]   ; 2 uses
  %11 = icmp sgt i16 %10, -2
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = sext i16 %10 to i64
  %14 = add nsw i64 %13, 1                        ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr @yycheck, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds nuw i8, ptr @yytable, i64 %14
  %20 = load i8, ptr %19, align 1                 ; 2 uses
  %21 = icmp sgt i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %12, %18, %9
  %23 = icmp eq ptr %.4283, %.3290
  br i1 %23, label %.thread387, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %.4271, i64 -8
  %26 = getelementptr inbounds i8, ptr %.4283, i64 -1 ; 2 uses
  %27 = load i8, ptr %26, align 1
  %.phi.trans.insert = sext i8 %27 to i64
  %.phi.trans.insert436 = getelementptr inbounds [2 x i8], ptr @yypact, i64 %.phi.trans.insert
  %.pre = load i16, ptr %.phi.trans.insert436, align 2
  br label %9

28:                                               ; preds = %18
  %29 = zext nneg i8 %20 to i32
  %30 = getelementptr inbounds nuw i8, ptr %.4271, i64 8 ; 2 uses
  %31 = load i64, ptr %2, align 8
  store i64 %31, ptr %30, align 8
  br label %bb.b

bb.dm:                                            ; preds = %bb.d, %bb.e
  call void @expr_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.21) #10
  unreachable

.thread387:                                       ; preds = %.thread360, %6, %22
  %.0265385 = phi i32 [ 1, %22 ], [ 0, %.thread360 ], [ 1, %6 ] ; 2 uses
  %.not322 = icmp eq ptr %.3290, %i.a
  br i1 %.not322, label %bb.dn, label %.thread387.thread

.thread387.thread:                                ; preds = %bb.h, %.thread387
  %.5292379449 = phi ptr [ %.3290, %.thread387 ], [ %i.n, %bb.h ]
  %.0265385447 = phi i32 [ %.0265385, %.thread387 ], [ 1, %bb.h ]
  call void @free(ptr noundef %.5292379449) #8
  br label %bb.dn

bb.dn:                                            ; preds = %.thread387, %.thread387.thread
  %.0265385448 = phi i32 [ %.0265385, %.thread387 ], [ %.0265385447, %.thread387.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0265385448
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @expr_yylex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_op(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr @PGBENCH_FUNCTIONS, i64 %indvars.iv.i
  %i.b = load ptr, ptr %i.a, align 16
  %i.c = tail call i32 @pg_strcasecmp(ptr noundef %1, ptr noundef %i.b) #8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %find_func.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, 39
  br i1 %.not.i, label %bb.d, label %bb.b, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  tail call void @expr_yyerror_more(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %1) #10
  unreachable

find_func.exit:                                   ; preds = %bb.b
  %i.e = tail call ptr @pg_malloc(i64 noundef 16) #8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = tail call ptr @pg_malloc(i64 noundef 16) #8 ; 5 uses
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.g, align 8
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %find_func.exit
  store ptr %i.f, ptr %i.e, align 8
  br label %bb.g

bb.f:                                             ; preds = %find_func.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.f, ptr %i.l, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.m, align 8
  %i.n = tail call ptr @pg_malloc(i64 noundef 16) #8 ; 5 uses
  store ptr %3, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr null, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.n, ptr %i.e, align 8
  br label %make_elist.exit5

bb.i:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.m, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.n, ptr %i.s, align 8
  br label %make_elist.exit5

make_elist.exit5:                                 ; preds = %bb.h, %bb.i
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  store ptr %i.n, ptr %i.m, align 8
  %i.u = tail call fastcc ptr @make_func(ptr noundef %0, i32 noundef %i.t, ptr noundef nonnull %i.e)
  ret ptr %i.u
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null                  ; 4 uses
  br i1 %.not.i, label %elist_length.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %.not78.i = icmp eq ptr %i.a, null
  br i1 %.not78.i, label %elist_length.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.010.i = phi i32 [ %i.b, %.lr.ph.i ], [ 0, %bb.b ]
  %.059.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.a, %bb.b ]
  %i.b = add i32 %.010.i, 1                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.059.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.d, null
  br i1 %.not7.i, label %elist_length.exit, label %.lr.ph.i, !llvm.loop !8

elist_length.exit:                                ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.b, %.lr.ph.i ] ; 8 uses
  %i.e = tail call ptr @pg_malloc(i64 noundef 24) #8 ; 7 uses
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [16 x i8], ptr @PGBENCH_FUNCTIONS, i64 %i.f ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  switch i32 %i.i, label %bb.w [
    i32 -1, label %bb.c
    i32 -2, label %bb.e
    i32 -3, label %bb.g
    i32 -4, label %bb.o
  ]

bb.c:                                             ; preds = %elist_length.exit
  %i.j = icmp eq i32 %.0.lcssa.i, 0
  br i1 %i.j, label %bb.d, label %bb.y

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 16
  tail call void @expr_yyerror_more(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %i.k) #10
  unreachable

bb.e:                                             ; preds = %elist_length.exit
  %i.l = icmp slt i32 %.0.lcssa.i, 3
  %i.m = and i32 %.0.lcssa.i, 1
  %.not.not = icmp eq i32 %i.m, 0
  %or.cond39 = or i1 %i.l, %.not.not
  br i1 %or.cond39, label %bb.f, label %bb.y

bb.f:                                             ; preds = %bb.e
  tail call void @expr_yyerror_more(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #10
  unreachable

bb.g:                                             ; preds = %elist_length.exit
  %i.n = add i32 %.0.lcssa.i, -3
  %or.cond = icmp ult i32 %i.n, -2
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.g, align 16
  tail call void @expr_yyerror_more(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %i.o) #10
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = icmp eq i32 %.0.lcssa.i, 1
  br i1 %i.p, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.q = tail call noundef ptr @pg_malloc(i64 noundef 24) #8 ; 3 uses
  store i32 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @.str.51, ptr %i.r, align 8
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @pg_malloc(i64 noundef 16) #8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i = phi ptr [ %i.s, %bb.k ], [ %2, %bb.j ]  ; 5 uses
  %i.t = tail call ptr @pg_malloc(i64 noundef 16) #8 ; 6 uses
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr null, ptr %i.u, align 8
  %i.v = load ptr, ptr %.0.i, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.t, ptr %.0.i, align 8
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.t, ptr %i.z, align 8
  br label %.thread

bb.o:                                             ; preds = %elist_length.exit
  %i.aa = add i32 %.0.lcssa.i, -4
  %or.cond3 = icmp ult i32 %i.aa, -2
  br i1 %or.cond3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ab = load ptr, ptr %i.g, align 16
  tail call void @expr_yyerror_more(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %i.ab) #10
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ac = icmp eq i32 %.0.lcssa.i, 2
  br i1 %i.ac, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.ad = tail call noundef ptr @pg_malloc(i64 noundef 24) #8 ; 3 uses
  store i32 1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @.str.51, ptr %i.ae, align 8
  br i1 %.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.af = tail call ptr @pg_malloc(i64 noundef 16) #8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i40 = phi ptr [ %i.af, %bb.s ], [ %2, %bb.r ] ; 5 uses
  %i.ag = tail call ptr @pg_malloc(i64 noundef 16) #8 ; 6 uses
  store ptr %i.ad, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr null, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %.0.i40, align 8
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.ag, ptr %.0.i40, align 8
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i40, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ag, ptr %i.am, align 8
  br label %.thread

bb.w:                                             ; preds = %elist_length.exit
  %.not = icmp eq i32 %i.i, %.0.lcssa.i
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.an = load ptr, ptr %i.g, align 16
  tail call void @expr_yyerror_more(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %i.an) #10
  unreachable

.thread:                                          ; preds = %bb.v, %bb.u, %bb.n, %bb.m
  %.0.i.sink = phi ptr [ %.0.i, %bb.n ], [ %.0.i, %bb.m ], [ %.0.i40, %bb.u ], [ %.0.i40, %bb.v ] ; 2 uses
  %.sink = phi ptr [ %i.t, %bb.n ], [ %i.t, %bb.m ], [ %i.ag, %bb.u ], [ %i.ag, %bb.v ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.sink, i64 8
  store ptr %.sink, ptr %i.ao, align 8
  store i32 2, ptr %i.e, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.aq, ptr %i.ar, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.e, %bb.w, %bb.q, %bb.i, %bb.c
  store i32 2, ptr %i.e, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.at, ptr %i.au, align 8
  br i1 %.not.i, label %.critedge, label %bb.z

bb.z:                                             ; preds = %.thread, %bb.y
  %.044 = phi ptr [ %.0.i.sink, %.thread ], [ %2, %bb.y ] ; 2 uses
  %i.av = load ptr, ptr %.044, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.av, ptr %i.aw, align 8
  tail call void @pg_free(ptr noundef nonnull %.044) #8
  br label %bb.aa

.critedge:                                        ; preds = %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.ax, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge, %bb.z
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_case(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr @PGBENCH_FUNCTIONS, i64 %indvars.iv.i
  %i.b = load ptr, ptr %i.a, align 16
  %i.c = tail call i32 @pg_strcasecmp(ptr noundef nonnull @.str.42, ptr noundef %i.b) #8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %find_func.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, 39
  br i1 %.not.i, label %bb.d, label %bb.b, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  tail call void @expr_yyerror_more(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.42) #10
  unreachable

find_func.exit:                                   ; preds = %bb.b
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %find_func.exit
  %i.f = tail call ptr @pg_malloc(i64 noundef 16) #8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %find_func.exit
  %.0.i = phi ptr [ %i.f, %bb.e ], [ %1, %find_func.exit ] ; 5 uses
  %i.g = tail call ptr @pg_malloc(i64 noundef 16) #8 ; 5 uses
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr null, ptr %i.h, align 8
  %i.i = load ptr, ptr %.0.i, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.g, ptr %.0.i, align 8
  br label %make_elist.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.g, ptr %i.m, align 8
  br label %make_elist.exit

make_elist.exit:                                  ; preds = %bb.g, %bb.h
  %i.n = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.g, ptr %i.o, align 8
  %i.p = tail call fastcc ptr @make_func(ptr noundef %0, i32 noundef %i.n, ptr noundef nonnull %.0.i)
  ret ptr %i.p
}

declare void @pg_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @expr_yyerror(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @pg_malloc(i64 noundef) local_unnamed_addr #4

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @expr_yyerror_more(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !5}
end_hunk_1
