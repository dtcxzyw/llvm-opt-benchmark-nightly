Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/repl_gram?download=true
inline.NumInlined: 20
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.YYSTYPE = type { ptr }

@yypact = internal unnamed_addr constant [109 x i8] c"\11\E7\DC\1F\1F\172345\DC9 \DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\FC\DC\1E\1E:+)0#\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\E2\DC%>1\DC=\DC\1B\DC\FC\DC\FC\DC\DC\DC\DC?6(D\10\DC,F\DC\FC\DC\0D(\DCE\DC\DC\13\DC\DC\DC\DC\DC\DC\DCI\15\DC\DC\DC\DC\DCE\DC", align 16
@yytranslate = internal unnamed_addr constant [283 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\1E\1F\02\02 \02\1D\02\02\02\02\02\02\02\02\02\02\02\02\1C\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B", align 16
@yycheck = internal unnamed_addr constant [81 x i8] c"\04\1F \07\08\1E\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\07\08\09\0A\0B\0C\0D\0E\0FD\15\04\17\18\19\1A\03\04\05\14\1B\12\13\1F T\1F \1F \04\04\04\00\05\1D\1C\12\04\16\10\1E\04\06\13\06\1E\11\04\04\1E\05\03W\04kF", align 16
@yytable = internal unnamed_addr constant [81 x i8] c"%EF&'\18()*+,-./0123456789\01\02\03\04\05\06\07\08\09O]\19^_`aGHI\1C\0AMNXF\\gFjk\1E\1F \22!=#?>ACDJLKQTRWdY[hc\1BlP", align 16
@yydefact = internal unnamed_addr constant [109 x i8] c"\00\16\10\00\00.\00\00\00\00(\00\04\05\0C\0E\06\09\0A\0B\07\08\0D\0F\00\13\11\12\00*,\22\00'\01\03\02>?@ABCDEFGHIJKLMNOPQR\009:\00-)\00+\00#\00\15\00<;=\14\000\1C\00\0082\00%\00\17\1A\1C$\00&/\00 !\1D\1E\1F\1B\187\003\19651\004", align 16
@yyr2 = internal unnamed_addr constant [83 x i8] c"\00\02\02\01\00\01\01\01\01\01\01\01\01\01\01\01\01\02\02\01\03\04\01\05\06\03\01\02\00\01\01\01\01\01\02\03\05\05\06\02\01\01\00\01\00\02\00\02\00\03\00\01\03\02\01\00\03\01\01\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nothing\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"reserve_wal\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"two_phase\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"invalid timeline %u\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"repl_gram.y\00", align 1
@__func__.replication_yyparse = private unnamed_addr constant [20 x i8] c"replication_yyparse\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"base_backup\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"identify_system\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"start_replication\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"create_replication_slot\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"drop_replication_slot\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"alter_replication_slot\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"timeline_history\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"timeline\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"slot\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"temporary\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"export_snapshot\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"noexport_snapshot\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"use_snapshot\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"upload_manifest\00", align 1
@yyr1 = internal unnamed_addr constant [83 x i8] c"\00!\22##$$$$$$$$$$$%&'(())**++,,-----../0123445566778899:;;<<====>>>>>>>>>>>>>>>>>>>>>", align 16
@yypgoto = internal unnamed_addr constant [30 x i8] c"\DC\DC\DC\DC\DC\DC\DCJ\DC\DC\F6\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\E4\DC\DD\0A\DC", align 16
@yydefgoto = internal unnamed_addr constant [30 x i8] c"\00\0B$\0C\0D\0E\0F\1A\10\11UVb\12\13\14\15\16\17@B\1DSZefi:;<", align 16
@.str.27 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @replication_yyparse(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %union.YYSTYPE, align 8             ; 6 uses
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %3 = alloca [200 x %union.YYSTYPE], align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  br label %bb.c

bb.b:                                             ; preds = %29, %bb.cn, %bb.r
  %.0286 = phi ptr [ %30, %29 ], [ %i.hi, %bb.cn ], [ %i.as, %bb.r ]
  %.0274 = phi ptr [ %.4278, %29 ], [ %i.hh, %bb.cn ], [ %.3277, %bb.r ]
  %.0262 = phi i32 [ 3, %29 ], [ %.1263, %bb.cn ], [ %.2264, %bb.r ]
  %.0259.in = phi i8 [ %21, %29 ], [ %.in, %bb.cn ], [ %i.ar, %bb.r ]
  %.0258 = phi i32 [ %.6, %29 ], [ %.4, %bb.cn ], [ -2, %bb.r ]
  %.0259 = sext i8 %.0259.in to i32
  %i.b = getelementptr inbounds nuw i8, ptr %.0274, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1287 = phi ptr [ %3, %bb.a ], [ %.0286, %bb.b ]
  %.0282 = phi ptr [ %3, %bb.a ], [ %.3285, %bb.b ] ; 2 uses
  %.1275 = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ] ; 4 uses
  %.0268 = phi ptr [ %i.a, %bb.a ], [ %.3271, %bb.b ] ; 6 uses
  %.0265 = phi i64 [ 200, %bb.a ], [ %.2267, %bb.b ] ; 4 uses
  %.1263 = phi i32 [ 0, %bb.a ], [ %.0262, %bb.b ] ; 3 uses
  %.1260 = phi i32 [ 0, %bb.a ], [ %.0259, %bb.b ] ; 3 uses
  %.1 = phi i32 [ -2, %bb.a ], [ %.0258, %bb.b ]  ; 3 uses
  %i.c = trunc nsw i32 %.1260 to i8
  store i8 %i.c, ptr %.1275, align 1
  %i.d = getelementptr inbounds i8, ptr %.0268, i64 %.0265
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1
  %.not = icmp ugt ptr %i.e, %.1275
  br i1 %.not, label %.thread336, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %.1275 to i64
  %i.g = ptrtoint ptr %.0268 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = icmp sgt i64 %.0265, 9999
  br i1 %i.j, label %bb.cp, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl i64 %.0265, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.k, i64 10000) ; 4 uses
  %i.l = mul i64 %spec.store.select, 9
  %i.m = add i64 %i.l, 7
  %i.n = call ptr @palloc(i64 noundef %i.m) #6    ; 6 uses
  %.not314.not = icmp eq ptr %i.n, null
  br i1 %.not314.not, label %bb.cp, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %.0268, i64 %i.i, i1 false)
  %i.o = add nsw i64 %spec.store.select, 7
  %i.p = sdiv i64 %i.o, 8
  %i.q = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = shl i64 %i.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %.0282, i64 %i.r, i1 false)
  %.not315 = icmp eq ptr %.0268, %i.a
  br i1 %.not315, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @pfree(ptr noundef %.0268) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %i.h
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = add nsw i64 %spec.store.select, -1
  %.not316 = icmp sgt i64 %i.v, %i.h
  br i1 %.not316, label %.thread336, label %.thread359

.thread336:                                       ; preds = %bb.h, %bb.c
  %.3289 = phi ptr [ %.1287, %bb.c ], [ %i.u, %bb.h ] ; 56 uses
  %.3285 = phi ptr [ %.0282, %bb.c ], [ %i.q, %bb.h ]
  %.3277 = phi ptr [ %.1275, %bb.c ], [ %i.s, %bb.h ] ; 3 uses
  %.3271 = phi ptr [ %.0268, %bb.c ], [ %i.n, %bb.h ] ; 5 uses
  %.2267 = phi i64 [ %.0265, %bb.c ], [ %spec.store.select, %bb.h ]
  %i.w = icmp eq i32 %.1260, 34
  br i1 %i.w, label %.thread359, label %bb.i

bb.i:                                             ; preds = %.thread336
  %i.x = sext i32 %.1260 to i64                   ; 2 uses
  %i.y = getelementptr inbounds i8, ptr @yypact, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1               ; 3 uses
  %i.aa = sext i8 %i.z to i32
  %i.ab = icmp eq i8 %i.z, -36
  br i1 %i.ab, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp eq i32 %.1, -2
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = call i32 @replication_yylex(ptr noundef nonnull %2, ptr noundef %1) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i32 [ %i.ad, %bb.k ], [ %.1, %bb.j ]  ; 6 uses
  %i.ae = icmp slt i32 %.2, 1
  br i1 %i.ae, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = icmp eq i32 %.2, 256
  br i1 %i.af, label %9, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp samesign ult i32 %.2, 283
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = zext nneg i32 %.2 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = sext i8 %i.aj to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.0296 = phi i32 [ 0, %bb.l ], [ %i.ak, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.l ], [ %.2, %bb.o ], [ %.2, %bb.n ] ; 2 uses
  %i.al = add nsw i32 %.0296, %i.aa               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.al, 80
  br i1 %or.cond3, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = sext i8 %i.ao to i32
  %.not317 = icmp eq i32 %.0296, %i.ap
  br i1 %.not317, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.am
  %i.ar = load i8, ptr %i.aq, align 1
  %.2264 = call i32 @llvm.usub.sat.i32(i32 %.1263, i32 1)
  %i.as = getelementptr inbounds nuw i8, ptr %.3289, i64 8 ; 2 uses
  %i.at = load i64, ptr %2, align 8
  store i64 %i.at, ptr %i.as, align 8
  br label %bb.b

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.i
  %.4 = phi i32 [ %.1, %bb.i ], [ %.3, %bb.p ], [ %.3, %bb.q ] ; 5 uses
  %i.au = getelementptr inbounds i8, ptr @yydefact, i64 %i.x
  %i.av = load i8, ptr %i.au, align 1             ; 3 uses
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %4, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = sext i8 %i.av to i64                    ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr @yyr2, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = sext i8 %i.az to i64                    ; 2 uses
  %i.bb = sub nsw i64 1, %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %.3289, i64 %i.bb
  %.sroa.079.0.copyload = load ptr, ptr %i.bc, align 8 ; 6 uses
  switch i8 %i.av, label %bb.cj [
    i8 2, label %bb.u
    i8 16, label %bb.v
    i8 17, label %bb.w
    i8 18, label %bb.x
    i8 19, label %bb.y
    i8 20, label %bb.z
    i8 21, label %bb.aa
    i8 22, label %bb.ab
    i8 23, label %bb.ac
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %bb.af
    i8 27, label %bb.ag
    i8 28, label %bb.ah
    i8 29, label %bb.ai
    i8 30, label %bb.aj
    i8 31, label %bb.ak
    i8 32, label %bb.al
    i8 33, label %bb.am
    i8 34, label %bb.an
    i8 35, label %bb.ao
    i8 36, label %bb.ap
    i8 37, label %bb.aq
    i8 38, label %bb.ar
    i8 39, label %bb.as
    i8 40, label %bb.av
    i8 43, label %bb.aw
    i8 44, label %bb.ax
    i8 45, label %bb.ay
    i8 46, label %bb.ah
    i8 47, label %bb.az
    i8 48, label %bb.bc
    i8 49, label %bb.bd
    i8 50, label %bb.ah
    i8 51, label %bb.be
    i8 52, label %bb.bf
    i8 53, label %bb.bg
    i8 54, label %bb.bh
    i8 55, label %bb.ah
    i8 56, label %bb.bi
    i8 57, label %bb.bj
    i8 58, label %bb.bk
    i8 59, label %bb.bl
    i8 60, label %bb.bm
    i8 61, label %bb.bn
    i8 62, label %bb.bo
    i8 63, label %bb.bp
    i8 64, label %bb.bq
    i8 65, label %bb.br
    i8 66, label %bb.bs
    i8 67, label %bb.bt
    i8 68, label %bb.bu
    i8 69, label %bb.bv
    i8 70, label %bb.bw
    i8 71, label %bb.bx
    i8 72, label %bb.by
    i8 73, label %bb.bz
    i8 74, label %bb.ca
    i8 75, label %bb.cb
    i8 76, label %bb.cc
    i8 77, label %bb.cd
    i8 78, label %bb.ce
    i8 79, label %bb.cf
    i8 80, label %bb.cg
    i8 81, label %bb.ch
    i8 82, label %bb.ci
  ]

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds i8, ptr %.3289, i64 -8
  %i.be = load ptr, ptr %i.bd, align 8
  store ptr %i.be, ptr %0, align 8
  br label %bb.cj

bb.v:                                             ; preds = %bb.t
  %i.bf = call noundef ptr @palloc0(i64 noundef 4) #6 ; 2 uses
  store i32 469, ptr %i.bf, align 4
  br label %bb.cj

bb.w:                                             ; preds = %bb.t
  %i.bg = call noundef ptr @palloc0(i64 noundef 16) #6 ; 3 uses
  store i32 475, ptr %i.bg, align 4
  %i.bh = load ptr, ptr %.3289, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.bi, align 8
  br label %bb.cj

bb.x:                                             ; preds = %bb.t
  %i.bj = call noundef ptr @palloc0(i64 noundef 16) #6 ; 3 uses
  store i32 167, ptr %i.bj, align 4
  %i.bk = load ptr, ptr %.3289, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  br label %bb.cj

bb.y:                                             ; preds = %bb.t
  %i.bm = load ptr, ptr %.3289, align 8
  br label %bb.cj

bb.z:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds i8, ptr %.3289, i64 -16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %.3289, align 8
  %i.bq = call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str, ptr noundef %i.bo, ptr noundef %i.bp) #6
  br label %bb.cj

bb.aa:                                            ; preds = %bb.t
  %i.br = call noundef ptr @palloc0(i64 noundef 16) #6 ; 3 uses
  store i32 470, ptr %i.br, align 4
  %i.bs = getelementptr inbounds i8, ptr %.3289, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bt, ptr %i.bu, align 8
  br label %bb.cj

bb.ab:                                            ; preds = %bb.t
  %i.bv = call noundef ptr @palloc0(i64 noundef 16) #6 ; 2 uses
  store i32 470, ptr %i.bv, align 4
  br label %bb.cj

bb.ac:                                            ; preds = %bb.t
  %i.bw = call noundef ptr @palloc0(i64 noundef 48) #6 ; 6 uses
  store i32 471, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i32 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds i8, ptr %.3289, i64 -24
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds i8, ptr %.3289, i64 -16
  %i.cc = load i8, ptr %i.cb, align 8, !range !4, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i8 %i.cc, ptr %i.cd, align 8
  %i.ce = load ptr, ptr %.3289, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store ptr %i.ce, ptr %i.cf, align 8
  br label %bb.cj

bb.ad:                                            ; preds = %bb.t
  %i.cg = call noundef ptr @palloc0(i64 noundef 48) #6 ; 7 uses
  store i32 471, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i32 1, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds i8, ptr %.3289, i64 -32
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.cj, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds i8, ptr %.3289, i64 -24
  %i.cm = load i8, ptr %i.cl, align 8, !range !4, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i8 %i.cm, ptr %i.cn, align 8
  %i.co = getelementptr inbounds i8, ptr %.3289, i64 -8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cr = load ptr, ptr %.3289, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr %i.cr, ptr %i.cs, align 8
  br label %bb.cj

bb.ae:                                            ; preds = %bb.t
  %i.ct = getelementptr inbounds i8, ptr %.3289, i64 -8
  %i.cu = load ptr, ptr %i.ct, align 8
  br label %bb.cj

bb.af:                                            ; preds = %bb.t
  %i.cv = load ptr, ptr %.3289, align 8
  br label %bb.cj

bb.ag:                                            ; preds = %bb.t
  %i.cw = getelementptr inbounds i8, ptr %.3289, i64 -8
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = load ptr, ptr %.3289, align 8
  %i.cz = call ptr @lappend(ptr noundef %i.cx, ptr noundef %i.cy) #6
  br label %bb.cj

bb.ah:                                            ; preds = %bb.t, %bb.t, %bb.t, %bb.t
  br label %bb.cj

bb.ai:                                            ; preds = %bb.t
  %i.da = call ptr @makeString(ptr noundef nonnull @.str.2) #6
  %i.db = call ptr @makeDefElem(ptr noundef nonnull @.str.1, ptr noundef %i.da, i32 noundef -1) #6
  br label %bb.cj

bb.aj:                                            ; preds = %bb.t
  %i.dc = call ptr @makeString(ptr noundef nonnull @.str.3) #6
  %i.dd = call ptr @makeDefElem(ptr noundef nonnull @.str.1, ptr noundef %i.dc, i32 noundef -1) #6
  br label %bb.cj

bb.ak:                                            ; preds = %bb.t
end_hunk_0
begin_hunk_1_@replication_yyparse:bb.a
  %i.fj = load i32, ptr %.3289, align 8           ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.fm = call i32 @errcode(i32 noundef 16801924) #6 ; 0 uses
  %i.fn = load i32, ptr %.3289, align 8
  %i.fo = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i32 noundef %i.fn) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.8, i32 noundef 363, ptr noundef nonnull @__func__.replication_yyparse) #6
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.fp = ptrtoint ptr %.sroa.079.0.copyload to i64
  %.sroa.079.0.insert.ext = zext i32 %i.fj to i64
  %.sroa.079.0.insert.mask = and i64 %i.fp, -4294967296
  %.sroa.079.0.insert.insert = or disjoint i64 %.sroa.079.0.insert.mask, %.sroa.079.0.insert.ext
  %i.fq = inttoptr i64 %.sroa.079.0.insert.insert to ptr
  br label %bb.cj

bb.bc:                                            ; preds = %bb.t
  %i.fr = ptrtoint ptr %.sroa.079.0.copyload to i64
  %.sroa.079.0.insert.mask81 = and i64 %i.fr, -4294967296
  %i.fs = inttoptr i64 %.sroa.079.0.insert.mask81 to ptr
  br label %bb.cj

bb.bd:                                            ; preds = %bb.t
  %i.ft = getelementptr inbounds i8, ptr %.3289, i64 -8
  %i.fu = load ptr, ptr %i.ft, align 8
  br label %bb.cj

bb.be:                                            ; preds = %bb.t
  %i.fv = load ptr, ptr %.3289, align 8
  %i.fw = call ptr @list_make1_impl(i32 noundef 1, ptr %i.fv) #6
  br label %bb.cj

bb.bf:                                            ; preds = %bb.t
  %i.fx = getelementptr inbounds i8, ptr %.3289, i64 -16
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = load ptr, ptr %.3289, align 8
  %i.ga = call ptr @lappend(ptr noundef %i.fy, ptr noundef %i.fz) #6
  br label %bb.cj

bb.bg:                                            ; preds = %bb.t
  %i.gb = getelementptr inbounds i8, ptr %.3289, i64 -8
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = load ptr, ptr %.3289, align 8
  %i.ge = call ptr @makeDefElem(ptr noundef %i.gc, ptr noundef %i.gd, i32 noundef -1) #6
  br label %bb.cj

bb.bh:                                            ; preds = %bb.t
  %i.gf = load ptr, ptr %.3289, align 8
  %i.gg = call ptr @makeString(ptr noundef %i.gf) #6
  br label %bb.cj

bb.bi:                                            ; preds = %bb.t
  %i.gh = getelementptr inbounds i8, ptr %.3289, i64 -16
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = load ptr, ptr %.3289, align 8
  %i.gk = call ptr @lappend(ptr noundef %i.gi, ptr noundef %i.gj) #6
  br label %bb.cj

bb.bj:                                            ; preds = %bb.t
  %i.gl = load ptr, ptr %.3289, align 8
  %i.gm = call ptr @list_make1_impl(i32 noundef 1, ptr %i.gl) #6
  br label %bb.cj

bb.bk:                                            ; preds = %bb.t
  %i.gn = load ptr, ptr %.3289, align 8
  %i.go = call ptr @makeDefElem(ptr noundef %i.gn, ptr noundef null, i32 noundef -1) #6
  br label %bb.cj

bb.bl:                                            ; preds = %bb.t
  %i.gp = getelementptr inbounds i8, ptr %.3289, i64 -8
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = load ptr, ptr %.3289, align 8
  %i.gs = call ptr @makeString(ptr noundef %i.gr) #6
  %i.gt = call ptr @makeDefElem(ptr noundef %i.gq, ptr noundef %i.gs, i32 noundef -1) #6
  br label %bb.cj

bb.bm:                                            ; preds = %bb.t
  %i.gu = getelementptr inbounds i8, ptr %.3289, i64 -8
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = load ptr, ptr %.3289, align 8
  %i.gx = call ptr @makeString(ptr noundef %i.gw) #6
  %i.gy = call ptr @makeDefElem(ptr noundef %i.gv, ptr noundef %i.gx, i32 noundef -1) #6
  br label %bb.cj

bb.bn:                                            ; preds = %bb.t
  %i.gz = getelementptr inbounds i8, ptr %.3289, i64 -8
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = load i32, ptr %.3289, align 8
  %i.hc = call ptr @makeInteger(i32 noundef %i.hb) #6
  %i.hd = call ptr @makeDefElem(ptr noundef %i.ha, ptr noundef %i.hc, i32 noundef -1) #6
  br label %bb.cj

bb.bo:                                            ; preds = %bb.t
  %i.he = load ptr, ptr %.3289, align 8
  br label %bb.cj

bb.bp:                                            ; preds = %bb.t
  br label %bb.cj

bb.bq:                                            ; preds = %bb.t
  br label %bb.cj

bb.br:                                            ; preds = %bb.t
  br label %bb.cj

bb.bs:                                            ; preds = %bb.t
  br label %bb.cj

bb.bt:                                            ; preds = %bb.t
  br label %bb.cj

bb.bu:                                            ; preds = %bb.t
  br label %bb.cj

bb.bv:                                            ; preds = %bb.t
  br label %bb.cj

bb.bw:                                            ; preds = %bb.t
  br label %bb.cj

bb.bx:                                            ; preds = %bb.t
  br label %bb.cj

bb.by:                                            ; preds = %bb.t
  br label %bb.cj

bb.bz:                                            ; preds = %bb.t
  br label %bb.cj

bb.ca:                                            ; preds = %bb.t
  br label %bb.cj

bb.cb:                                            ; preds = %bb.t
  br label %bb.cj

bb.cc:                                            ; preds = %bb.t
  br label %bb.cj

bb.cd:                                            ; preds = %bb.t
  br label %bb.cj

bb.ce:                                            ; preds = %bb.t
  br label %bb.cj

bb.cf:                                            ; preds = %bb.t
  br label %bb.cj

bb.cg:                                            ; preds = %bb.t
  br label %bb.cj

bb.ch:                                            ; preds = %bb.t
  br label %bb.cj

bb.ci:                                            ; preds = %bb.t
  br label %bb.cj

bb.cj:                                            ; preds = %bb.t, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.079.0 = phi ptr [ %.sroa.079.0.copyload, %bb.t ], [ %.sroa.079.0.copyload, %bb.u ], [ %i.bf, %bb.v ], [ %i.bg, %bb.w ], [ %i.bj, %bb.x ], [ %i.bm, %bb.y ], [ %i.bq, %bb.z ], [ %i.br, %bb.aa ], [ %i.bv, %bb.ab ], [ %i.bw, %bb.ac ], [ %i.cg, %bb.ad ], [ %i.cu, %bb.ae ], [ %i.cv, %bb.af ], [ %i.cz, %bb.ag ], [ null, %bb.ah ], [ %i.db, %bb.ai ], [ %i.dd, %bb.aj ], [ %i.df, %bb.ak ], [ %i.dh, %bb.al ], [ %i.dj, %bb.am ], [ %i.dk, %bb.an ], [ %i.do, %bb.ao ], [ %i.dt, %bb.ap ], [ %i.ea, %bb.aq ], [ %i.ek, %bb.ar ], [ %i.fa, %bb.au ], [ %i.fd, %bb.av ], [ %i.ff, %bb.aw ], [ %i.fh, %bb.ax ], [ %i.fi, %bb.ay ], [ @.str.26, %bb.ci ], [ %i.fq, %bb.bb ], [ %i.fs, %bb.bc ], [ %i.fu, %bb.bd ], [ @.str.25, %bb.ch ], [ %i.fw, %bb.be ], [ %i.ga, %bb.bf ], [ %i.ge, %bb.bg ], [ %i.gg, %bb.bh ], [ @.str.24, %bb.cg ], [ %i.gk, %bb.bi ], [ %i.gm, %bb.bj ], [ %i.go, %bb.bk ], [ %i.gt, %bb.bl ], [ %i.gy, %bb.bm ], [ %i.hd, %bb.bn ], [ %i.he, %bb.bo ], [ @.str.9, %bb.bp ], [ @.str.10, %bb.bq ], [ @.str.11, %bb.br ], [ @.str.12, %bb.bs ], [ @.str.13, %bb.bt ], [ @.str.14, %bb.bu ], [ @.str.15, %bb.bv ], [ @.str.16, %bb.bw ], [ @.str.17, %bb.bx ], [ @.str.18, %bb.by ], [ @.str.19, %bb.bz ], [ @.str.20, %bb.ca ], [ @.str.21, %bb.cb ], [ @.str.5, %bb.cc ], [ @.str.22, %bb.cd ], [ @.str.6, %bb.ce ], [ @.str.23, %bb.cf ]
  %i.hf = sub nsw i64 0, %i.ba                    ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %.3289, i64 %i.hf
  %i.hh = getelementptr inbounds i8, ptr %.3277, i64 %i.hf ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  store ptr %.sroa.079.0, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds i8, ptr @yyr1, i64 %i.ax
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = sext i8 %i.hk to i64
  %i.hm = add nsw i64 %i.hl, -33                  ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr @yypgoto, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = sext i8 %i.ho to i32
  %i.hq = load i8, ptr %i.hh, align 1             ; 2 uses
  %i.hr = sext i8 %i.hq to i32
  %i.hs = add nsw i32 %i.hr, %i.hp                ; 2 uses
  %or.cond5 = icmp ult i32 %i.hs, 81
  br i1 %or.cond5, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.ht = zext nneg i32 %i.hs to i64              ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1
  %i.hw = icmp eq i8 %i.hv, %i.hq
  br i1 %i.hw, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.hx = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.ht
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.hy = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.hm
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.in.in = phi ptr [ %i.hx, %bb.cl ], [ %i.hy, %bb.cm ]
  %.in = load i8, ptr %.in.in, align 1
  br label %bb.b

4:                                                ; preds = %bb.s
  switch i32 %.1263, label %9 [
    i32 0, label %bb.co
    i32 3, label %5
  ]

bb.co:                                            ; preds = %4
  call void @replication_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.27) #8
  unreachable

5:                                                ; preds = %4
  %6 = icmp slt i32 %.4, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = icmp eq i32 %.4, 0
  br i1 %8, label %.thread359, label %9

9:                                                ; preds = %5, %4, %bb.m, %7
  %.6 = phi i32 [ %.4, %7 ], [ 257, %bb.m ], [ %.4, %4 ], [ -2, %5 ]
  br label %10

10:                                               ; preds = %25, %9
  %11 = phi i8 [ %i.z, %9 ], [ %.pre, %25 ]       ; 2 uses
  %.4290 = phi ptr [ %.3289, %9 ], [ %26, %25 ]   ; 2 uses
  %.4278 = phi ptr [ %.3277, %9 ], [ %27, %25 ]   ; 3 uses
  %12 = icmp sgt i8 %11, -2
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = sext i8 %11 to i64
  %15 = add nsw i64 %14, 1                        ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr @yycheck, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr @yytable, i64 %15
  %21 = load i8, ptr %20, align 1                 ; 2 uses
  %22 = icmp sgt i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %13, %19, %10
  %24 = icmp eq ptr %.4278, %.3271
  br i1 %24, label %.thread359, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %.4290, i64 -8
  %27 = getelementptr inbounds i8, ptr %.4278, i64 -1 ; 2 uses
  %28 = load i8, ptr %27, align 1
  %.phi.trans.insert = sext i8 %28 to i64
  %.phi.trans.insert396 = getelementptr inbounds i8, ptr @yypact, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert396, align 1
  br label %10

29:                                               ; preds = %19
  %30 = getelementptr inbounds nuw i8, ptr %.4290, i64 8 ; 2 uses
  %31 = load i64, ptr %2, align 8
  store i64 %31, ptr %30, align 8
  br label %bb.b

bb.cp:                                            ; preds = %bb.d, %bb.e
  call void @replication_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.30) #8
  unreachable

.thread359:                                       ; preds = %.thread336, %bb.h, %7, %23
  %.5273357 = phi ptr [ %.3271, %23 ], [ %i.n, %bb.h ], [ %.3271, %.thread336 ], [ %.3271, %7 ] ; 2 uses
  %.0295351 = phi i32 [ 1, %23 ], [ 1, %bb.h ], [ 0, %.thread336 ], [ 1, %7 ]
  %.not322 = icmp eq ptr %.5273357, %i.a
  br i1 %.not322, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.thread359
  call void @pfree(ptr noundef %.5273357) #6
  br label %bb.cr

bb.cr:                                            ; preds = %.thread359, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.0295351
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare i32 @replication_yylex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @psprintf(ptr noundef, ...) local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @makeDefElem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @makeString(ptr noundef) local_unnamed_addr #2

declare ptr @makeBoolean(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #2

declare ptr @makeInteger(i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @replication_yyerror(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
end_hunk_1
