Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/bootparse?download=true
inline.NumInlined: 29
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.YYSTYPE = type { ptr }

@yypact = internal unnamed_addr constant [110 x i16] [i16 -4, i16 142, i16 142, i16 142, i16 -53, i16 2, i16 -14, i16 25, i16 -4, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 142, i16 20, i16 142, i16 13, i16 142, i16 -53, i16 -53, i16 -53, i16 6, i16 -53, i16 117, i16 142, i16 142, i16 142, i16 -53, i16 8, i16 -53, i16 92, i16 -53, i16 -53, i16 14, i16 142, i16 17, i16 -53, i16 9, i16 117, i16 -53, i16 -53, i16 142, i16 19, i16 142, i16 142, i16 29, i16 -53, i16 21, i16 142, i16 -53, i16 -53, i16 -53, i16 142, i16 22, i16 142, i16 30, i16 142, i16 35, i16 -53, i16 37, i16 142, i16 34, i16 142, i16 36, i16 142, i16 10, i16 -53, i16 142, i16 142, i16 -53, i16 -53, i16 23, i16 142, i16 -53, i16 -53, i16 11, i16 -3, i16 -53, i16 -53, i16 -53, i16 18, i16 -53, i16 -53], align 16
@yytranslate = internal unnamed_addr constant [283 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B", align 16
@yycheck = internal unnamed_addr constant [170 x i8] c"\01\02\03,\12\09\0A\0B\0C\0D395\11\04\04\0E\07\07A=\13\14\1A\1B\00\06\0E\16\0FG\17\0F\18\0F\06\06\10\10\04\06*\05\07_\1B\08c\192Y4\FF\FF\FF\FF9\FF\FF\FF\FF\FF\FF\FFA\FF\FFD\FFF\FF\FF\FF\FFK\FF\FF\FFO\FFQ\FFS\FF\FF\FFW\FFY\FF[\FF\FF^_\03\04\FFc\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\03\FF\FF\FF\FF\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\03\FF\FF\FF\FF\FF\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B", align 16
@yytable = internal unnamed_addr constant [170 x i8] c"&'(5-\01\02\03\04\05<C>\06cc*djIE+,kl.246DM?FGKNWOSY_3[afm/ig;`=\00\00\00\00;\00\00\00\00\00\00\00;\00\00J\00L\00\00\00\00P\00\00\00R\00V\00X\00\00\00^\00V\00b\00\00e^\12A\00^B8\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%\12\00\00\00\008\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%\12\00\00\00\00\00\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%", align 16
@yydefact = internal unnamed_addr constant [110 x i8] c"\03\00\00\00\13\00\00\00\02\04\06\07\08\09\0A\0B\0C\0D./0123456789:;<=>?@A\0E\0F\00\00\00\00\00\18\01\05\1D(\00\00\00\00\1C\1F-\00),\00\00\00\1E!\00\14*\00\00\00\00\00+\00\00\17 \10\00\00\00\00\00\11\22\00\00\00\00\00\00\00\1A\00\00#\12'\00\15\1B\00\00$\19\16\00&%", align 16
@yyr2 = internal unnamed_addr constant [66 x i8] c"\00\02\01\00\01\02\01\01\01\01\01\01\01\01\02\02\00\00\0B\00\05\0B\0C\06\02\03\01\02\01\00\01\00\02\00\01\03\04\03\02\00\01\01\02\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@numattr = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [28 x i8] c"creating%s%s relation %s %u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" bootstrap\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" shared\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"bootparse.y\00", align 1
@__func__.boot_yyparse = private unnamed_addr constant [13 x i8] c"boot_yyparse\00", align 1
@attrtypes = external global [40 x ptr], align 16
@boot_reldesc = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [63 x i8] c"create bootstrap: warning, open relation exists, closing first\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"bootstrap relation created\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"relation created with OID %u\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"inserting row\00", align 1
@num_columns_read = internal unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [57 x i8] c"incorrect number of columns in row (expected %d, got %d)\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"relation not open\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"creating index \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"creating unique index \22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"creating toast table for table \22%s\22\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"too many columns\00", align 1
@yyr1 = internal unnamed_addr constant [66 x i8] c"\00\1C\1D\1D\1E\1E\1F\1F\1F\1F\1F\1F\1F\1F !#$\22&%'()*++,--..//00122234445566666666666666666666", align 16
@yypgoto = internal unnamed_addr constant [27 x i8] c"\CB\CB\CB&\CB\CB\CB\CB\CB\CB\CB\CB\CB\CB\CB\CD\CC\CB\CB\CB\CB\D9\CB\D7\CB\D2\FF", align 16
@yydefgoto = internal unnamed_addr constant [27 x i8] c"\00\07\08\09\0A\0B\0CQZ\0D)\0E\0F\10\11\\]7@HTUh09:1", align 16
@.str.15 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@per_line_ctx = internal unnamed_addr global ptr null, align 8
@CurTransactionContext = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [30 x i8] c"bootstrap per-line processing\00", align 1
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@InterruptPending = external global i32, align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"bootstrap> \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @boot_yyparse(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.YYSTYPE, align 8             ; 5 uses
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %2 = alloca [200 x %union.YYSTYPE], align 16    ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  br label %bb.c

bb.b:                                             ; preds = %bb.ed, %bb.t
  %.0345 = phi ptr [ %i.ax, %bb.t ], [ %i.nu, %bb.ed ]
  %.0333 = phi ptr [ %.3336, %bb.t ], [ %i.nt, %bb.ed ]
  %.0321 = phi i32 [ %spec.select, %bb.t ], [ %.1322, %bb.ed ]
  %.0318 = phi i32 [ %i.au, %bb.t ], [ %i.ol, %bb.ed ]
  %.0317 = phi i32 [ -2, %bb.t ], [ %.5, %bb.ed ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0333, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1346 = phi ptr [ %2, %bb.a ], [ %.0345, %bb.b ]
  %.0341 = phi ptr [ %2, %bb.a ], [ %.3344, %bb.b ] ; 2 uses
  %.1334 = phi ptr [ %i.a, %bb.a ], [ %i.d, %bb.b ] ; 4 uses
  %.0327 = phi ptr [ %i.a, %bb.a ], [ %.3330, %bb.b ] ; 6 uses
  %.0324 = phi i64 [ 200, %bb.a ], [ %.2326, %bb.b ] ; 4 uses
  %.1322 = phi i32 [ 0, %bb.a ], [ %.0321, %bb.b ] ; 3 uses
  %.1319 = phi i32 [ 0, %bb.a ], [ %.0318, %bb.b ] ; 3 uses
  %.1 = phi i32 [ -2, %bb.a ], [ %.0317, %bb.b ]  ; 3 uses
  %i.e = trunc nsw i32 %.1319 to i8
  store i8 %i.e, ptr %.1334, align 1
  %i.f = getelementptr inbounds i8, ptr %.0327, i64 %.0324
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -1
  %.not = icmp ugt ptr %i.g, %.1334
  br i1 %.not, label %.thread430, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %.1334 to i64
  %i.i = ptrtoint ptr %.0327 to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  %i.l = icmp sgt i64 %.0324, 9999
  br i1 %i.l, label %bb.ei, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = shl i64 %.0324, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.m, i64 10000) ; 4 uses
  %i.n = mul i64 %spec.store.select, 9
  %i.o = add i64 %i.n, 7
  %i.p = call ptr @palloc(i64 noundef %i.o) #9    ; 6 uses
  %.not372.not = icmp eq ptr %i.p, null
  br i1 %.not372.not, label %bb.ei, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 1 %.0327, i64 %i.k, i1 false)
  %i.q = add nsw i64 %spec.store.select, 7
  %i.r = sdiv i64 %i.q, 8
  %i.s = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.r ; 3 uses
  %i.t = shl i64 %i.k, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %.0341, i64 %i.t, i1 false)
  %.not373 = icmp eq ptr %.0327, %i.a
  br i1 %.not373, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @pfree(ptr noundef %.0327) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.j
  %i.v = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.k
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.x = add nsw i64 %spec.store.select, -1
  %.not374 = icmp sgt i64 %i.x, %i.j
  br i1 %.not374, label %.thread430, label %.thread453

.thread430:                                       ; preds = %bb.h, %bb.c
  %.3348 = phi ptr [ %.1346, %bb.c ], [ %i.w, %bb.h ] ; 63 uses
  %.3344 = phi ptr [ %.0341, %bb.c ], [ %i.s, %bb.h ]
  %.3336 = phi ptr [ %.1334, %bb.c ], [ %i.u, %bb.h ] ; 3 uses
  %.3330 = phi ptr [ %.0327, %bb.c ], [ %i.p, %bb.h ] ; 5 uses
  %.2326 = phi i64 [ %.0324, %bb.c ], [ %spec.store.select, %bb.h ]
  %i.y = icmp eq i32 %.1319, 46
  br i1 %i.y, label %.thread453, label %bb.i

bb.i:                                             ; preds = %.thread430
  %i.z = sext i32 %.1319 to i64                   ; 2 uses
  %i.aa = getelementptr inbounds [2 x i8], ptr @yypact, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  %i.ac = sext i16 %i.ab to i32
  %i.ad = icmp eq i16 %i.ab, -53
  br i1 %i.ad, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp eq i32 %.1, -2
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = call i32 @boot_yylex(ptr noundef nonnull %1, ptr noundef %0) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i32 [ %i.af, %bb.k ], [ %.1, %bb.j ]  ; 6 uses
  %i.ag = icmp slt i32 %.2, 1
  br i1 %i.ag, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = icmp eq i32 %.2, 256
  br i1 %i.ah, label %.lr.ph.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = icmp samesign ult i32 %.2, 283
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = zext nneg i32 %.2 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = sext i8 %i.al to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.0357 = phi i32 [ 0, %bb.l ], [ %i.am, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.l ], [ %.2, %bb.o ], [ %.2, %bb.n ] ; 3 uses
  %i.an = add nsw i32 %.0357, %i.ac               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.an, 169
  br i1 %or.cond3, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = sext i8 %i.aq to i32
  %.not375 = icmp eq i32 %.0357, %i.ar
  br i1 %.not375, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.ao
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %i.au = sext i8 %i.at to i32                    ; 2 uses
  %i.av = icmp slt i8 %i.at, 1
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = sub nsw i32 0, %i.au
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.1322, i32 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %.3348, i64 8 ; 2 uses
  %i.ay = load i64, ptr %1, align 8
  store i64 %i.ay, ptr %i.ax, align 8
  br label %bb.b

bb.u:                                             ; preds = %bb.p, %bb.q, %bb.i
  %.4 = phi i32 [ %.1, %bb.i ], [ %.3, %bb.p ], [ %.3, %bb.q ] ; 2 uses
  %i.az = getelementptr inbounds i8, ptr @yydefact, i64 %i.z
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %i.bb = sext i8 %i.ba to i32
  %i.bc = icmp eq i8 %i.ba, 0
  br i1 %i.bc, label %bb.ee, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0353 = phi i32 [ %i.bb, %bb.u ], [ %i.aw, %bb.s ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.u ], [ %.3, %bb.s ]
  %i.bd = sext i32 %.0353 to i64                  ; 2 uses
  %i.be = getelementptr inbounds i8, ptr @yyr2, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = sext i8 %i.bf to i64                    ; 2 uses
  %i.bh = sub nsw i64 1, %i.bg
  %i.bi = getelementptr inbounds [8 x i8], ptr %.3348, i64 %i.bh
  %.sroa.0118.0.copyload = load ptr, ptr %i.bi, align 8 ; 35 uses
  switch i32 %.0353, label %do_end.exit [
    i32 14, label %bb.w
    i32 15, label %bb.ab
    i32 16, label %bb.ag
    i32 17, label %bb.aj
    i32 18, label %bb.an
    i32 19, label %bb.bc
    i32 20, label %bb.bg
    i32 21, label %bb.bo
    i32 22, label %bb.bv
    i32 23, label %bb.cc
    i32 24, label %bb.cj
    i32 25, label %bb.co
    i32 26, label %bb.cp
    i32 27, label %bb.cq
    i32 28, label %bb.cr
    i32 29, label %bb.cs
    i32 30, label %bb.ct
    i32 31, label %bb.cu
    i32 32, label %bb.cv
    i32 33, label %bb.cw
    i32 36, label %bb.cx
    i32 37, label %bb.da
    i32 38, label %bb.db
    i32 39, label %bb.dc
    i32 40, label %bb.dd
    i32 44, label %bb.de
    i32 45, label %bb.df
    i32 46, label %bb.dg
    i32 47, label %bb.dh
    i32 48, label %bb.di
    i32 49, label %bb.dj
    i32 50, label %bb.dk
    i32 51, label %bb.dl
    i32 52, label %bb.dm
    i32 53, label %bb.dn
    i32 54, label %bb.do
    i32 55, label %bb.dp
    i32 56, label %bb.dq
    i32 57, label %bb.dr
    i32 58, label %bb.ds
    i32 59, label %bb.dt
    i32 60, label %bb.du
    i32 61, label %bb.dv
    i32 62, label %bb.dw
    i32 63, label %bb.dx
    i32 64, label %bb.dy
    i32 65, label %bb.dz
  ]

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr @per_line_ctx, align 8    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.x, label %do_start.exit

bb.x:                                             ; preds = %bb.w
  %i.bl = load ptr, ptr @CurTransactionContext, align 8
  %i.bm = call ptr @AllocSetContextCreateInternal(ptr noundef %i.bl, ptr noundef nonnull @.str.21, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #9 ; 2 uses
  store ptr %i.bm, ptr @per_line_ctx, align 8
  br label %do_start.exit

do_start.exit:                                    ; preds = %bb.w, %bb.x
  %i.bn = phi ptr [ %i.bm, %bb.x ], [ %i.bj, %bb.w ]
  store ptr %i.bn, ptr @CurrentMemoryContext, align 8
  %i.bo = load ptr, ptr %.3348, align 8
  call void @boot_openrel(ptr noundef %i.bo) #9
  %i.bp = load ptr, ptr @CurTransactionContext, align 8
  store ptr %i.bp, ptr @CurrentMemoryContext, align 8
  %i.bq = load ptr, ptr @per_line_ctx, align 8
  call void @MemoryContextReset(ptr noundef %i.bq) #9
  %i.br = load volatile i32, ptr @InterruptPending, align 4
  %.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i, label %bb.z, label %bb.y, !prof !4

bb.y:                                             ; preds = %do_start.exit
  call void @ProcessInterrupts() #9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %do_start.exit
  %i.bs = call i32 @isatty(i32 noundef 0) #9
  %.not1.i = icmp eq i32 %i.bs, 0
  br i1 %.not1.i, label %do_end.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.22) #9 ; 0 uses
  %i.bu = load ptr, ptr @stdout, align 8
  %i.bv = call i32 @fflush(ptr noundef %i.bu)     ; 0 uses
  br label %do_end.exit

bb.ab:                                            ; preds = %bb.v
  %i.bw = load ptr, ptr @per_line_ctx, align 8    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ac, label %do_start.exit385

bb.ac:                                            ; preds = %bb.ab
  %i.by = load ptr, ptr @CurTransactionContext, align 8
  %i.bz = call ptr @AllocSetContextCreateInternal(ptr noundef %i.by, ptr noundef nonnull @.str.21, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #9 ; 2 uses
  store ptr %i.bz, ptr @per_line_ctx, align 8
  br label %do_start.exit385

do_start.exit385:                                 ; preds = %bb.ab, %bb.ac
  %i.ca = phi ptr [ %i.bz, %bb.ac ], [ %i.bw, %bb.ab ]
  store ptr %i.ca, ptr @CurrentMemoryContext, align 8
  %i.cb = load ptr, ptr %.3348, align 8
  call void @closerel(ptr noundef %i.cb) #9
  %i.cc = load ptr, ptr @CurTransactionContext, align 8
  store ptr %i.cc, ptr @CurrentMemoryContext, align 8
  %i.cd = load ptr, ptr @per_line_ctx, align 8
  call void @MemoryContextReset(ptr noundef %i.cd) #9
  %i.ce = load volatile i32, ptr @InterruptPending, align 4
  %.not.i386 = icmp eq i32 %i.ce, 0
  br i1 %.not.i386, label %bb.ae, label %bb.ad, !prof !4

bb.ad:                                            ; preds = %do_start.exit385
  call void @ProcessInterrupts() #9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %do_start.exit385
  %i.cf = call i32 @isatty(i32 noundef 0) #9
  %.not1.i387 = icmp eq i32 %i.cf, 0
  br i1 %.not1.i387, label %do_end.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.22) #9 ; 0 uses
  %i.ch = load ptr, ptr @stdout, align 8
  %i.ci = call i32 @fflush(ptr noundef %i.ch)     ; 0 uses
  br label %do_end.exit

bb.ag:                                            ; preds = %bb.v
  %i.cj = load ptr, ptr @per_line_ctx, align 8    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.ah, label %do_start.exit389

bb.ah:                                            ; preds = %bb.ag
  %i.cl = load ptr, ptr @CurTransactionContext, align 8
  %i.cm = call ptr @AllocSetContextCreateInternal(ptr noundef %i.cl, ptr noundef nonnull @.str.21, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #9 ; 2 uses
  store ptr %i.cm, ptr @per_line_ctx, align 8
  br label %do_start.exit389

do_start.exit389:                                 ; preds = %bb.ag, %bb.ah
  %i.cn = phi ptr [ %i.cm, %bb.ah ], [ %i.cj, %bb.ag ]
  store ptr %i.cn, ptr @CurrentMemoryContext, align 8
  store i32 0, ptr @numattr, align 4
  %i.co = call zeroext i1 @errstart(i32 noundef 11, ptr noundef null) #9
  br i1 %i.co, label %bb.ai, label %do_end.exit

bb.ai:                                            ; preds = %do_start.exit389
  %i.cp = getelementptr inbounds i8, ptr %.3348, i64 -24
  %i.cq = load i32, ptr %i.cp, align 8
  %.not379 = icmp eq i32 %i.cq, 0
  %i.cr = select i1 %.not379, ptr @.str.2, ptr @.str.1
  %i.cs = getelementptr inbounds i8, ptr %.3348, i64 -16
  %i.ct = load i32, ptr %i.cs, align 8
  %.not380 = icmp eq i32 %i.ct, 0
  %i.cu = select i1 %.not380, ptr @.str.2, ptr @.str.3
  %i.cv = getelementptr inbounds i8, ptr %.3348, i64 -40
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds i8, ptr %.3348, i64 -32
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cu, ptr noundef %i.cw, i32 noundef %i.cy) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 166, ptr noundef nonnull @__func__.boot_yyparse) #9
  br label %do_end.exit

bb.aj:                                            ; preds = %bb.v
  %i.da = load ptr, ptr @CurTransactionContext, align 8
  store ptr %i.da, ptr @CurrentMemoryContext, align 8
  %i.db = load ptr, ptr @per_line_ctx, align 8
  call void @MemoryContextReset(ptr noundef %i.db) #9
  %i.dc = load volatile i32, ptr @InterruptPending, align 4
  %.not.i390 = icmp eq i32 %i.dc, 0
  br i1 %.not.i390, label %bb.al, label %bb.ak, !prof !4

bb.ak:                                            ; preds = %bb.aj
  call void @ProcessInterrupts() #9
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dd = call i32 @isatty(i32 noundef 0) #9
  %.not1.i391 = icmp eq i32 %i.dd, 0
  br i1 %.not1.i391, label %do_end.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.de = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.22) #9 ; 0 uses
  %i.df = load ptr, ptr @stdout, align 8
end_hunk_0
begin_hunk_1_@boot_yyparse:bb.a
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.lk = getelementptr inbounds i8, ptr %.3348, i64 -24
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = getelementptr inbounds i8, ptr %.3348, i64 -8
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = load i32, ptr %.3348, align 8
  call void @DefineAttr(ptr noundef %i.ll, ptr noundef %i.ln, i32 noundef %i.lf, i32 noundef %i.lo) #9
  br label %do_end.exit

bb.da:                                            ; preds = %bb.v
  %i.lp = ptrtoint ptr %.sroa.0118.0.copyload to i64
  %.sroa.0118.0.insert.mask135 = and i64 %i.lp, -4294967296
  %.sroa.0118.0.insert.insert136 = or disjoint i64 %.sroa.0118.0.insert.mask135, 3
  %i.lq = inttoptr i64 %.sroa.0118.0.insert.insert136 to ptr
  br label %do_end.exit

bb.db:                                            ; preds = %bb.v
  %i.lr = ptrtoint ptr %.sroa.0118.0.copyload to i64
  %.sroa.0118.0.insert.mask138 = and i64 %i.lr, -4294967296
  %.sroa.0118.0.insert.insert139 = or disjoint i64 %.sroa.0118.0.insert.mask138, 2
  %i.ls = inttoptr i64 %.sroa.0118.0.insert.insert139 to ptr
  br label %do_end.exit

bb.dc:                                            ; preds = %bb.v
  %i.lt = ptrtoint ptr %.sroa.0118.0.copyload to i64
  %.sroa.0118.0.insert.mask141 = and i64 %i.lt, -4294967296
  %.sroa.0118.0.insert.insert142 = or disjoint i64 %.sroa.0118.0.insert.mask141, 1
  %i.lu = inttoptr i64 %.sroa.0118.0.insert.insert142 to ptr
  br label %do_end.exit

bb.dd:                                            ; preds = %bb.v
  %i.lv = load ptr, ptr %.3348, align 8
  %i.lw = call i64 @__isoc23_strtoul(ptr noundef %i.lv, ptr noundef null, i32 noundef 10) #9
  %i.lx = ptrtoint ptr %.sroa.0118.0.copyload to i64
  %.sroa.0118.0.insert.ext144 = and i64 %i.lw, 4294967295
  %.sroa.0118.0.insert.mask145 = and i64 %i.lx, -4294967296
  %.sroa.0118.0.insert.insert146 = or disjoint i64 %.sroa.0118.0.insert.ext144, %.sroa.0118.0.insert.mask145
  %i.ly = inttoptr i64 %.sroa.0118.0.insert.insert146 to ptr
  br label %do_end.exit

bb.de:                                            ; preds = %bb.v
  %i.lz = load ptr, ptr %.3348, align 8
  %i.ma = load i32, ptr @num_columns_read, align 4 ; 2 uses
  %i.mb = add i32 %i.ma, 1
  store i32 %i.mb, ptr @num_columns_read, align 4
  call void @InsertOneValue(ptr noundef %i.lz, i32 noundef %i.ma) #9
  br label %do_end.exit

bb.df:                                            ; preds = %bb.v
  %i.mc = load i32, ptr @num_columns_read, align 4 ; 2 uses
  %i.md = add i32 %i.mc, 1
  store i32 %i.md, ptr @num_columns_read, align 4
  call void @InsertOneNull(i32 noundef %i.mc) #9
  br label %do_end.exit

bb.dg:                                            ; preds = %bb.v
  %i.me = load ptr, ptr %.3348, align 8
  br label %do_end.exit

bb.dh:                                            ; preds = %bb.v
  %i.mf = load ptr, ptr %.3348, align 8
  %i.mg = call ptr @pstrdup(ptr noundef %i.mf) #9
  br label %do_end.exit

bb.di:                                            ; preds = %bb.v
  %i.mh = load ptr, ptr %.3348, align 8
  %i.mi = call ptr @pstrdup(ptr noundef %i.mh) #9
  br label %do_end.exit

bb.dj:                                            ; preds = %bb.v
  %i.mj = load ptr, ptr %.3348, align 8
  %i.mk = call ptr @pstrdup(ptr noundef %i.mj) #9
  br label %do_end.exit

bb.dk:                                            ; preds = %bb.v
  %i.ml = load ptr, ptr %.3348, align 8
  %i.mm = call ptr @pstrdup(ptr noundef %i.ml) #9
  br label %do_end.exit

bb.dl:                                            ; preds = %bb.v
  %i.mn = load ptr, ptr %.3348, align 8
  %i.mo = call ptr @pstrdup(ptr noundef %i.mn) #9
  br label %do_end.exit

bb.dm:                                            ; preds = %bb.v
  %i.mp = load ptr, ptr %.3348, align 8
  %i.mq = call ptr @pstrdup(ptr noundef %i.mp) #9
  br label %do_end.exit

bb.dn:                                            ; preds = %bb.v
  %i.mr = load ptr, ptr %.3348, align 8
  %i.ms = call ptr @pstrdup(ptr noundef %i.mr) #9
  br label %do_end.exit

bb.do:                                            ; preds = %bb.v
  %i.mt = load ptr, ptr %.3348, align 8
  %i.mu = call ptr @pstrdup(ptr noundef %i.mt) #9
  br label %do_end.exit

bb.dp:                                            ; preds = %bb.v
  %i.mv = load ptr, ptr %.3348, align 8
  %i.mw = call ptr @pstrdup(ptr noundef %i.mv) #9
  br label %do_end.exit

bb.dq:                                            ; preds = %bb.v
  %i.mx = load ptr, ptr %.3348, align 8
  %i.my = call ptr @pstrdup(ptr noundef %i.mx) #9
  br label %do_end.exit

bb.dr:                                            ; preds = %bb.v
  %i.mz = load ptr, ptr %.3348, align 8
  %i.na = call ptr @pstrdup(ptr noundef %i.mz) #9
  br label %do_end.exit

bb.ds:                                            ; preds = %bb.v
  %i.nb = load ptr, ptr %.3348, align 8
  %i.nc = call ptr @pstrdup(ptr noundef %i.nb) #9
  br label %do_end.exit

bb.dt:                                            ; preds = %bb.v
  %i.nd = load ptr, ptr %.3348, align 8
  %i.ne = call ptr @pstrdup(ptr noundef %i.nd) #9
  br label %do_end.exit

bb.du:                                            ; preds = %bb.v
  %i.nf = load ptr, ptr %.3348, align 8
  %i.ng = call ptr @pstrdup(ptr noundef %i.nf) #9
  br label %do_end.exit

bb.dv:                                            ; preds = %bb.v
  %i.nh = load ptr, ptr %.3348, align 8
  %i.ni = call ptr @pstrdup(ptr noundef %i.nh) #9
  br label %do_end.exit

bb.dw:                                            ; preds = %bb.v
  %i.nj = load ptr, ptr %.3348, align 8
  %i.nk = call ptr @pstrdup(ptr noundef %i.nj) #9
  br label %do_end.exit

bb.dx:                                            ; preds = %bb.v
  %i.nl = load ptr, ptr %.3348, align 8
  %i.nm = call ptr @pstrdup(ptr noundef %i.nl) #9
  br label %do_end.exit

bb.dy:                                            ; preds = %bb.v
  %i.nn = load ptr, ptr %.3348, align 8
  %i.no = call ptr @pstrdup(ptr noundef %i.nn) #9
  br label %do_end.exit

bb.dz:                                            ; preds = %bb.v
  %i.np = load ptr, ptr %.3348, align 8
  %i.nq = call ptr @pstrdup(ptr noundef %i.np) #9
  br label %do_end.exit

do_end.exit:                                      ; preds = %bb.cn, %bb.cm, %bb.ci, %bb.ch, %bb.cb, %bb.ca, %bb.bu, %bb.bt, %bb.bn, %bb.bm, %bb.bb, %bb.ba, %bb.am, %bb.al, %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.v, %do_start.exit389, %bb.ai, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.bf
  %.sroa.0118.0 = phi ptr [ %.sroa.0118.0.copyload, %bb.v ], [ %i.nq, %bb.dz ], [ %.sroa.0118.0.copyload, %bb.aa ], [ %.sroa.0118.0.copyload, %bb.ai ], [ %.sroa.0118.0.copyload, %do_start.exit389 ], [ %.sroa.0118.0.copyload, %bb.af ], [ %.sroa.0118.0.copyload, %bb.am ], [ %.sroa.0118.0.copyload, %bb.bf ], [ %.sroa.0118.0.copyload, %bb.bb ], [ %.sroa.0118.0.copyload, %bb.bn ], [ %.sroa.0118.0.copyload, %bb.bu ], [ %.sroa.0118.0.copyload, %bb.cb ], [ %.sroa.0118.0.copyload, %bb.ci ], [ %i.kd, %bb.co ], [ %i.kf, %bb.cp ], [ %i.kg, %bb.cq ], [ %i.kt, %bb.cr ], [ %i.kv, %bb.cs ], [ %i.kx, %bb.ct ], [ %i.kz, %bb.cu ], [ %i.lc, %bb.cv ], [ %i.le, %bb.cw ], [ %.sroa.0118.0.copyload, %bb.cz ], [ %i.lq, %bb.da ], [ %i.ls, %bb.db ], [ %i.lu, %bb.dc ], [ %i.ly, %bb.dd ], [ %.sroa.0118.0.copyload, %bb.de ], [ %.sroa.0118.0.copyload, %bb.df ], [ %i.me, %bb.dg ], [ %i.mg, %bb.dh ], [ %i.mi, %bb.di ], [ %i.mk, %bb.dj ], [ %i.mm, %bb.dk ], [ %i.mo, %bb.dl ], [ %i.mq, %bb.dm ], [ %i.ms, %bb.dn ], [ %i.mu, %bb.do ], [ %i.mw, %bb.dp ], [ %i.my, %bb.dq ], [ %i.na, %bb.dr ], [ %i.nc, %bb.ds ], [ %i.ne, %bb.dt ], [ %i.ng, %bb.du ], [ %i.ni, %bb.dv ], [ %i.nk, %bb.dw ], [ %i.nm, %bb.dx ], [ %i.no, %bb.dy ], [ %.sroa.0118.0.copyload, %bb.z ], [ %.sroa.0118.0.copyload, %bb.ae ], [ %.sroa.0118.0.copyload, %bb.al ], [ %.sroa.0118.0.copyload, %bb.ba ], [ %.sroa.0118.0.copyload, %bb.bm ], [ %.sroa.0118.0.copyload, %bb.bt ], [ %.sroa.0118.0.copyload, %bb.ca ], [ %.sroa.0118.0.copyload, %bb.ch ], [ %.sroa.0118.0.copyload, %bb.cm ], [ %.sroa.0118.0.copyload, %bb.cn ]
  %i.nr = sub nsw i64 0, %i.bg                    ; 2 uses
  %i.ns = getelementptr inbounds [8 x i8], ptr %.3348, i64 %i.nr
  %i.nt = getelementptr inbounds i8, ptr %.3336, i64 %i.nr ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 2 uses
  store ptr %.sroa.0118.0, ptr %i.nu, align 8
  %i.nv = getelementptr inbounds i8, ptr @yyr1, i64 %i.bd
  %i.nw = load i8, ptr %i.nv, align 1
  %i.nx = sext i8 %i.nw to i64
  %i.ny = add nsw i64 %i.nx, -28                  ; 2 uses
  %i.nz = getelementptr inbounds i8, ptr @yypgoto, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1
  %i.ob = sext i8 %i.oa to i32
  %i.oc = load i8, ptr %i.nt, align 1             ; 2 uses
  %i.od = sext i8 %i.oc to i32
  %i.oe = add nsw i32 %i.od, %i.ob                ; 2 uses
  %or.cond5 = icmp ult i32 %i.oe, 170
  br i1 %or.cond5, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %do_end.exit
  %i.of = zext nneg i32 %i.oe to i64              ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1
  %i.oi = icmp eq i8 %i.oh, %i.oc
  br i1 %i.oi, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.oj = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.of
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea, %do_end.exit
  %i.ok = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.ny
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.in.in = phi ptr [ %i.oj, %bb.eb ], [ %i.ok, %bb.ec ]
  %.in = load i8, ptr %.in.in, align 1
  %i.ol = sext i8 %.in to i32
  br label %bb.b

bb.ee:                                            ; preds = %bb.u
  switch i32 %.1322, label %.lr.ph.preheader [
    i32 0, label %bb.ef
    i32 3, label %bb.eg
  ]

bb.ef:                                            ; preds = %bb.ee
  call void @boot_yyerror(ptr noundef %0, ptr noundef nonnull @.str.15) #11
  unreachable

bb.eg:                                            ; preds = %bb.ee
  %i.om = icmp eq i32 %.4, 0
  br i1 %i.om, label %.thread453, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m, %bb.ee, %bb.eg
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.eh
  %.4337515 = phi ptr [ %i.oo, %bb.eh ], [ %.3336, %.lr.ph.preheader ] ; 2 uses
  %i.on = icmp eq ptr %.4337515, %.3330
  br i1 %i.on, label %.thread453, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph
  %i.oo = getelementptr inbounds i8, ptr %.4337515, i64 -1
  br label %.lr.ph

bb.ei:                                            ; preds = %bb.d, %bb.e
  call void @boot_yyerror(ptr noundef %0, ptr noundef nonnull @.str.18) #11
  unreachable

.thread453:                                       ; preds = %.thread430, %bb.h, %.lr.ph, %bb.eg
  %.5332451 = phi ptr [ %.3330, %bb.eg ], [ %.3330, %.lr.ph ], [ %i.p, %bb.h ], [ %.3330, %.thread430 ] ; 2 uses
  %.0356445 = phi i32 [ 1, %bb.eg ], [ 1, %.lr.ph ], [ 1, %bb.h ], [ 0, %.thread430 ]
  %.not384 = icmp eq ptr %.5332451, %i.a
  br i1 %.not384, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %.thread453
  call void @pfree(ptr noundef %.5332451) #9
  br label %bb.ek

bb.ek:                                            ; preds = %.thread453, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i32 %.0356445
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare i32 @boot_yylex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @boot_openrel(ptr noundef) local_unnamed_addr #2

declare void @closerel(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CreateTupleDesc(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @heap_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef signext, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @heap_create_with_catalog(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef signext, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @InsertOneTuple() local_unnamed_addr #2

declare ptr @makeRangeVar(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RangeVarGetRelidExtended(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare { i64, i32 } @DefineIndex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @BootstrapToastTable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @build_indices() local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #2

declare ptr @makeString(ptr noundef) local_unnamed_addr #2

declare void @DefineAttr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @InsertOneValue(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @InsertOneNull(i32 noundef) local_unnamed_addr #2

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @boot_yyerror(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @MemoryContextReset(ptr noundef) local_unnamed_addr #2

declare void @ProcessInterrupts() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #4

declare i32 @pg_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
