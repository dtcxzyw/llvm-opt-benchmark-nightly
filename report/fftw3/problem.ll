Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/problem?download=true
inline.NumInlined: 11
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bench_iodim = type { i32, i32, i32 }

@always_pad_real = dso_local local_unnamed_addr global i32 0, align 4
@__const.problem_parse.last_iodim0 = private unnamed_addr constant %struct.bench_iodim { i32 1, i32 1, i32 1 }, align 4
@.str = private unnamed_addr constant [18 x i8] c"p->sz && p->vecsz\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"problem.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"!*s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"isdigit(*s)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @problem_parse(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.bench_iodim, align 4        ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) @__const.problem_parse.last_iodim0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = tail call ptr @bench_malloc(i64 noundef 136) #7 ; 20 uses
  store i32 0, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  store i32 -1, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.h, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8
  %i.q = add i64 %i.p, 1
  %i.r = tail call ptr @bench_malloc(i64 noundef %i.q) #7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.r, ptr %i.s, align 8, !tbaa !15
  %i.t = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) %0) #7 ; 0 uses
  %i.u = tail call ptr @__ctype_tolower_loc() #9
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.093 = phi i32 [ 0, %bb.a ], [ %.093.be, %.backedge ] ; 12 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %.0.be, %.backedge ] ; 3 uses
  %i.w = load i8, ptr %.0, align 1, !tbaa !16
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17
  switch i32 %i.z, label %bb.n [
    i32 105, label %bb.c
    i32 111, label %bb.d
    i32 100, label %bb.e
    i32 47, label %bb.f
    i32 102, label %bb.g
    i32 45, label %bb.g
    i32 98, label %bb.h
    i32 43, label %bb.h
    i32 114, label %bb.i
    i32 99, label %bb.j
    i32 107, label %bb.k
    i32 116, label %.backedge
    i32 91, label %bb.l
    i32 93, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.h, align 4, !tbaa !33
  br label %.backedge

.backedge:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.093.be = phi i32 [ %.093, %bb.c ], [ %.093, %bb.d ], [ %.093, %bb.e ], [ %.093, %bb.f ], [ %.093, %bb.g ], [ %.093, %bb.h ], [ %.093, %bb.i ], [ %.093, %bb.j ], [ %.093, %bb.k ], [ %.093, %bb.m ], [ %.093, %bb.l ], [ 1, %bb.b ]
  %.0.be = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 4, !tbaa !33
  br label %.backedge

bb.e:                                             ; preds = %bb.b
  store i32 1, ptr %i.i, align 8, !tbaa !34
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  store i32 1, ptr %i.j, align 4, !tbaa !35
  br label %.backedge

bb.g:                                             ; preds = %bb.b, %bb.b
  store i32 -1, ptr %i.e, align 8, !tbaa !30
  br label %.backedge

bb.h:                                             ; preds = %bb.b, %bb.b
  store i32 1, ptr %i.e, align 8, !tbaa !30
  br label %.backedge

bb.i:                                             ; preds = %bb.b
  store i32 1, ptr %i.c, align 8, !tbaa !29
  br label %.backedge

bb.j:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !29
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  store i32 2, ptr %i.c, align 8, !tbaa !29
  br label %.backedge

bb.l:                                             ; preds = %bb.b
  store i32 1, ptr %i.m, align 8, !tbaa !36
  br label %.backedge

bb.m:                                             ; preds = %bb.b
  store i32 1, ptr %i.l, align 4, !tbaa !37
  br label %.backedge

bb.n:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !29
  %i.ab = icmp eq i32 %i.aa, 2
  %i.ac = select i1 %i.ab, ptr %i.d, ptr null
  %i.ad = call fastcc ptr @parsetensor(ptr noundef nonnull %.0, ptr noundef %i.a, ptr noundef %i.ac) ; 4 uses
  %i.ae = load i32, ptr %i.c, align 8, !tbaa !29
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = load i32, ptr %i.e, align 8, !tbaa !30
  %i.ah = icmp slt i32 %i.ag, 0                   ; 2 uses
  %i.ai = load i32, ptr %i.h, align 4, !tbaa !33
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = load i32, ptr @always_pad_real, align 4
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = select i1 %i.aj, i1 true, i1 %i.al
  %i.an = zext i1 %i.am to i32                    ; 2 uses
  %. = select i1 %i.ah, i32 %i.an, i32 2
  %.176 = select i1 %i.ah, i32 2, i32 %i.an
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.095 = phi i32 [ %., %bb.o ], [ 0, %bb.n ]     ; 5 uses
  %.094 = phi i32 [ %.176, %bb.o ], [ 0, %bb.n ]  ; 5 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !18  ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 3 uses
  %i.ar = load i32, ptr %i.ao, align 8, !tbaa !38 ; 5 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [12 x i8], ptr %i.aq, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -12 ; 10 uses
  %i.av = load i8, ptr %i.ad, align 1, !tbaa !16
  switch i8 %i.av, label %bb.bc [
    i8 42, label %bb.q
    i8 118, label %bb.aj
    i8 86, label %bb.aj
  ]

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ax = add i32 %i.ar, -2147483647
  %or.cond.i = icmp ult i32 %i.ax, -2147483646
  br i1 %or.cond.i, label %dwim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.ay = zext nneg i32 %i.ar to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.z, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ay, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.z ] ; 2 uses
  %.037.i = phi ptr [ %1, %.lr.ph.i ], [ %i.az, %bb.z ] ; 6 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %indvars.iv.next.i ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !39
  %.not30.i = icmp eq i32 %i.bb, 0
  br i1 %.not30.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %.037.i, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !39
  %i.be = load i32, ptr %.037.i, align 4, !tbaa !40 ; 3 uses
  %i.bf = icmp eq ptr %.037.i, %i.au
  %i.bg = select i1 %i.bf, i32 %.095, i32 0
  switch i32 %i.bg, label %default.unreachable [
    i32 0, label %transform_n.exit.i
    i32 1, label %bb.t
    i32 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bh = sdiv i32 %i.be, 2
  %i.bi = shl nsw i32 %i.bh, 1
  %i.bj = add i32 %i.bi, 2
  br label %transform_n.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bk = sdiv i32 %i.be, 2
  %i.bl = add nsw i32 %i.bk, 1
  br label %transform_n.exit.i

default.unreachable:                              ; preds = %bb.ap, %bb.al, %bb.ay, %bb.au, %bb.w, %bb.s, %bb.af, %bb.ab, %bb.bi, %bb.be
  unreachable

transform_n.exit.i:                               ; preds = %bb.u, %bb.t, %bb.s
  %.0.i.i = phi i32 [ %i.bl, %bb.u ], [ %i.bj, %bb.t ], [ %i.be, %bb.s ]
  %i.bm = mul nsw i32 %.0.i.i, %i.bd
  store i32 %i.bm, ptr %i.ba, align 4, !tbaa !39
  br label %bb.v

bb.v:                                             ; preds = %transform_n.exit.i, %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !22
  %.not31.i = icmp eq i32 %i.bo, 0
  br i1 %.not31.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %.037.i, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !22
  %i.br = load i32, ptr %.037.i, align 4, !tbaa !40 ; 3 uses
  %i.bs = icmp eq ptr %.037.i, %i.au
  %i.bt = select i1 %i.bs, i32 %.094, i32 0
  switch i32 %i.bt, label %default.unreachable [
    i32 0, label %transform_n.exit34.i
    i32 1, label %bb.x
    i32 2, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bu = sdiv i32 %i.br, 2
  %i.bv = shl nsw i32 %i.bu, 1
  %i.bw = add i32 %i.bv, 2
  br label %transform_n.exit34.i

bb.y:                                             ; preds = %bb.w
  %i.bx = sdiv i32 %i.br, 2
  %i.by = add nsw i32 %i.bx, 1
  br label %transform_n.exit34.i

transform_n.exit34.i:                             ; preds = %bb.y, %bb.x, %bb.w
  %.0.i32.i = phi i32 [ %i.by, %bb.y ], [ %i.bw, %bb.x ], [ %i.br, %bb.w ]
  %i.bz = mul nsw i32 %.0.i32.i, %i.bq
  store i32 %i.bz, ptr %i.bn, align 4, !tbaa !22
  br label %bb.z

bb.z:                                             ; preds = %transform_n.exit34.i, %bb.v
  %i.ca = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ca, label %bb.r, label %dwim.exit, !llvm.loop !28

dwim.exit:                                        ; preds = %bb.z, %bb.q
  %.0164 = phi ptr [ %1, %bb.q ], [ %i.az, %bb.z ]
  store ptr %i.ao, ptr %i.o, align 8, !tbaa !41
  %i.cb = call fastcc ptr @parsetensor(ptr noundef nonnull %i.aw, ptr noundef %i.a, ptr noundef null)
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !18  ; 4 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !38 ; 2 uses
  %i.ce = add i32 %i.cd, -2147483647
  %or.cond.i101 = icmp ult i32 %i.ce, -2147483646
  br i1 %or.cond.i101, label %dwim.exit114, label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %dwim.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !20
  %i.ch = zext nneg i32 %i.cd to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ai, %.lr.ph.i102
  %indvars.iv.i103 = phi i64 [ %i.ch, %.lr.ph.i102 ], [ %indvars.iv.next.i105, %bb.ai ] ; 2 uses
  %.037.i104 = phi ptr [ %.0164, %.lr.ph.i102 ], [ %i.ci, %bb.ai ] ; 6 uses
  %indvars.iv.next.i105 = add nsw i64 %indvars.iv.i103, -1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %indvars.iv.next.i105 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !39
  %.not30.i106 = icmp eq i32 %i.ck, 0
  br i1 %.not30.i106, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %.037.i104, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !39
  %i.cn = load i32, ptr %.037.i104, align 4, !tbaa !40 ; 3 uses
  %i.co = icmp eq ptr %.037.i104, %i.au
  %i.cp = select i1 %i.co, i32 %.095, i32 0
  switch i32 %i.cp, label %default.unreachable [
    i32 0, label %transform_n.exit.i112
    i32 1, label %bb.ac
    i32 2, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sdiv i32 %i.cn, 2
  %i.cr = shl nsw i32 %i.cq, 1
  %i.cs = add i32 %i.cr, 2
  br label %transform_n.exit.i112

bb.ad:                                            ; preds = %bb.ab
  %i.ct = sdiv i32 %i.cn, 2
  %i.cu = add nsw i32 %i.ct, 1
  br label %transform_n.exit.i112

transform_n.exit.i112:                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.0.i.i113 = phi i32 [ %i.cu, %bb.ad ], [ %i.cs, %bb.ac ], [ %i.cn, %bb.ab ]
  %i.cv = mul nsw i32 %.0.i.i113, %i.cm
  store i32 %i.cv, ptr %i.cj, align 4, !tbaa !39
  br label %bb.ae

bb.ae:                                            ; preds = %transform_n.exit.i112, %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !22
  %.not31.i107 = icmp eq i32 %i.cx, 0
  br i1 %.not31.i107, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %.037.i104, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !22
  %i.da = load i32, ptr %.037.i104, align 4, !tbaa !40 ; 3 uses
  %i.db = icmp eq ptr %.037.i104, %i.au
  %i.dc = select i1 %i.db, i32 %.094, i32 0
  switch i32 %i.dc, label %default.unreachable [
    i32 0, label %transform_n.exit34.i109
    i32 1, label %bb.ag
    i32 2, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.dd = sdiv i32 %i.da, 2
  %i.de = shl nsw i32 %i.dd, 1
  %i.df = add i32 %i.de, 2
  br label %transform_n.exit34.i109

bb.ah:                                            ; preds = %bb.af
  %i.dg = sdiv i32 %i.da, 2
  %i.dh = add nsw i32 %i.dg, 1
  br label %transform_n.exit34.i109

transform_n.exit34.i109:                          ; preds = %bb.ah, %bb.ag, %bb.af
  %.0.i32.i110 = phi i32 [ %i.dh, %bb.ah ], [ %i.df, %bb.ag ], [ %i.da, %bb.af ]
  %i.di = mul nsw i32 %.0.i32.i110, %i.cz
  store i32 %i.di, ptr %i.cw, align 4, !tbaa !22
  br label %bb.ai

bb.ai:                                            ; preds = %transform_n.exit34.i109, %bb.ae
  %i.dj = icmp samesign ugt i64 %indvars.iv.i103, 1
  br i1 %i.dj, label %bb.aa, label %dwim.exit114, !llvm.loop !28

dwim.exit114:                                     ; preds = %bb.ai, %dwim.exit
  store ptr %i.cc, ptr %i.n, align 8, !tbaa !42
  br label %bb.bm

bb.aj:                                            ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.dl = call fastcc ptr @parsetensor(ptr noundef nonnull %i.dk, ptr noundef %i.b, ptr noundef null)
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !18  ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !38 ; 2 uses
  %i.do = add i32 %i.dn, -2147483647
  %or.cond.i115 = icmp ult i32 %i.do, -2147483646
  br i1 %or.cond.i115, label %dwim.exit128, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !20
  %i.dr = zext nneg i32 %i.dn to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.as, %.lr.ph.i116
  %indvars.iv.i117 = phi i64 [ %i.dr, %.lr.ph.i116 ], [ %indvars.iv.next.i119, %bb.as ] ; 2 uses
  %.037.i118 = phi ptr [ %1, %.lr.ph.i116 ], [ %i.ds, %bb.as ] ; 6 uses
  %indvars.iv.next.i119 = add nsw i64 %indvars.iv.i117, -1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %i.dq, i64 %indvars.iv.next.i119 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !39
  %.not30.i120 = icmp eq i32 %i.du, 0
  br i1 %.not30.i120, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.dv = getelementptr inbounds nuw i8, ptr %.037.i118, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !39
  %i.dx = load i32, ptr %.037.i118, align 4, !tbaa !40 ; 3 uses
  %i.dy = icmp eq ptr %.037.i118, %i.au
  %i.dz = select i1 %i.dy, i32 %.095, i32 0
  switch i32 %i.dz, label %default.unreachable [
    i32 0, label %transform_n.exit.i126
    i32 1, label %bb.am
    i32 2, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.ea = sdiv i32 %i.dx, 2
  %i.eb = shl nsw i32 %i.ea, 1
  %i.ec = add i32 %i.eb, 2
  br label %transform_n.exit.i126

bb.an:                                            ; preds = %bb.al
  %i.ed = sdiv i32 %i.dx, 2
  %i.ee = add nsw i32 %i.ed, 1
  br label %transform_n.exit.i126

transform_n.exit.i126:                            ; preds = %bb.an, %bb.am, %bb.al
  %.0.i.i127 = phi i32 [ %i.ee, %bb.an ], [ %i.ec, %bb.am ], [ %i.dx, %bb.al ]
  %i.ef = mul nsw i32 %.0.i.i127, %i.dw
  store i32 %i.ef, ptr %i.dt, align 4, !tbaa !39
  br label %bb.ao

bb.ao:                                            ; preds = %transform_n.exit.i126, %bb.ak
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !22
  %.not31.i121 = icmp eq i32 %i.eh, 0
  br i1 %.not31.i121, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ei = getelementptr inbounds nuw i8, ptr %.037.i118, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !22
  %i.ek = load i32, ptr %.037.i118, align 4, !tbaa !40 ; 3 uses
  %i.el = icmp eq ptr %.037.i118, %i.au
  %i.em = select i1 %i.el, i32 %.094, i32 0
  switch i32 %i.em, label %default.unreachable [
    i32 0, label %transform_n.exit34.i123
    i32 1, label %bb.aq
    i32 2, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.en = sdiv i32 %i.ek, 2
  %i.eo = shl nsw i32 %i.en, 1
  %i.ep = add i32 %i.eo, 2
  br label %transform_n.exit34.i123

bb.ar:                                            ; preds = %bb.ap
  %i.eq = sdiv i32 %i.ek, 2
  %i.er = add nsw i32 %i.eq, 1
  br label %transform_n.exit34.i123

transform_n.exit34.i123:                          ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0.i32.i124 = phi i32 [ %i.er, %bb.ar ], [ %i.ep, %bb.aq ], [ %i.ek, %bb.ap ]
  %i.es = mul nsw i32 %.0.i32.i124, %i.ej
  store i32 %i.es, ptr %i.eg, align 4, !tbaa !22
  br label %bb.as

bb.as:                                            ; preds = %transform_n.exit34.i123, %bb.ao
  %i.et = icmp samesign ugt i64 %indvars.iv.i117, 1
  br i1 %i.et, label %bb.ak, label %dwim.exit128, !llvm.loop !28

dwim.exit128:                                     ; preds = %bb.as, %bb.aj
  %.1165 = phi ptr [ %1, %bb.aj ], [ %i.ds, %bb.as ]
  store ptr %i.dm, ptr %i.n, align 8, !tbaa !42
  %i.eu = load i32, ptr %i.ao, align 8, !tbaa !38 ; 2 uses
  %i.ev = add i32 %i.eu, -2147483647
  %or.cond.i129 = icmp ult i32 %i.ev, -2147483646
  br i1 %or.cond.i129, label %dwim.exit142, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %dwim.exit128
  %i.ew = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ex = zext nneg i32 %i.eu to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.bb, %.lr.ph.i130
  %indvars.iv.i131 = phi i64 [ %i.ex, %.lr.ph.i130 ], [ %indvars.iv.next.i133, %bb.bb ] ; 2 uses
  %.037.i132 = phi ptr [ %.1165, %.lr.ph.i130 ], [ %i.ey, %bb.bb ] ; 6 uses
  %indvars.iv.next.i133 = add nsw i64 %indvars.iv.i131, -1 ; 2 uses
  %i.ey = getelementptr inbounds nuw [12 x i8], ptr %i.ew, i64 %indvars.iv.next.i133 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !39
  %.not30.i134 = icmp eq i32 %i.fa, 0
  br i1 %.not30.i134, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.fb = getelementptr inbounds nuw i8, ptr %.037.i132, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !39
  %i.fd = load i32, ptr %.037.i132, align 4, !tbaa !40 ; 3 uses
  %i.fe = icmp eq ptr %.037.i132, %i.au
  %i.ff = select i1 %i.fe, i32 %.095, i32 0
  switch i32 %i.ff, label %default.unreachable [
    i32 0, label %transform_n.exit.i140
    i32 1, label %bb.av
    i32 2, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.fg = sdiv i32 %i.fd, 2
  %i.fh = shl nsw i32 %i.fg, 1
  %i.fi = add i32 %i.fh, 2
  br label %transform_n.exit.i140

bb.aw:                                            ; preds = %bb.au
  %i.fj = sdiv i32 %i.fd, 2
  %i.fk = add nsw i32 %i.fj, 1
  br label %transform_n.exit.i140

transform_n.exit.i140:                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0.i.i141 = phi i32 [ %i.fk, %bb.aw ], [ %i.fi, %bb.av ], [ %i.fd, %bb.au ]
  %i.fl = mul nsw i32 %.0.i.i141, %i.fc
  store i32 %i.fl, ptr %i.ez, align 4, !tbaa !39
  br label %bb.ax

bb.ax:                                            ; preds = %transform_n.exit.i140, %bb.at
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !22
  %.not31.i135 = icmp eq i32 %i.fn, 0
  br i1 %.not31.i135, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.fo = getelementptr inbounds nuw i8, ptr %.037.i132, i64 8
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !22
  %i.fq = load i32, ptr %.037.i132, align 4, !tbaa !40 ; 3 uses
  %i.fr = icmp eq ptr %.037.i132, %i.au
  %i.fs = select i1 %i.fr, i32 %.094, i32 0
  switch i32 %i.fs, label %default.unreachable [
    i32 0, label %transform_n.exit34.i137
    i32 1, label %bb.az
    i32 2, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ft = sdiv i32 %i.fq, 2
  %i.fu = shl nsw i32 %i.ft, 1
  %i.fv = add i32 %i.fu, 2
  br label %transform_n.exit34.i137

bb.ba:                                            ; preds = %bb.ay
  %i.fw = sdiv i32 %i.fq, 2
  %i.fx = add nsw i32 %i.fw, 1
  br label %transform_n.exit34.i137

transform_n.exit34.i137:                          ; preds = %bb.ba, %bb.az, %bb.ay
  %.0.i32.i138 = phi i32 [ %i.fx, %bb.ba ], [ %i.fv, %bb.az ], [ %i.fq, %bb.ay ]
  %i.fy = mul nsw i32 %.0.i32.i138, %i.fp
  store i32 %i.fy, ptr %i.fm, align 4, !tbaa !22
  br label %bb.bb

bb.bb:                                            ; preds = %transform_n.exit34.i137, %bb.ax
  %i.fz = icmp samesign ugt i64 %indvars.iv.i131, 1
  br i1 %i.fz, label %bb.at, label %dwim.exit142, !llvm.loop !28

dwim.exit142:                                     ; preds = %bb.bb, %dwim.exit128
  store ptr %i.ao, ptr %i.o, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.bm

bb.bc:                                            ; preds = %bb.p
  %i.ga = add i32 %i.ar, -2147483647
  %or.cond.i143 = icmp ult i32 %i.ga, -2147483646
  br i1 %or.cond.i143, label %dwim.exit156, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.bc
  %i.gb = zext nneg i32 %i.ar to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bl, %.lr.ph.i144
  %indvars.iv.i145 = phi i64 [ %i.gb, %.lr.ph.i144 ], [ %indvars.iv.next.i147, %bb.bl ] ; 2 uses
  %.037.i146 = phi ptr [ %1, %.lr.ph.i144 ], [ %i.gc, %bb.bl ] ; 6 uses
  %indvars.iv.next.i147 = add nsw i64 %indvars.iv.i145, -1 ; 2 uses
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %indvars.iv.next.i147 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !39
  %.not30.i148 = icmp eq i32 %i.ge, 0
  br i1 %.not30.i148, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.gf = getelementptr inbounds nuw i8, ptr %.037.i146, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !39
  %i.gh = load i32, ptr %.037.i146, align 4, !tbaa !40 ; 3 uses
  %i.gi = icmp eq ptr %.037.i146, %i.au
  %i.gj = select i1 %i.gi, i32 %.095, i32 0
  switch i32 %i.gj, label %default.unreachable [
    i32 0, label %transform_n.exit.i154
    i32 1, label %bb.bf
    i32 2, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.gk = sdiv i32 %i.gh, 2
  %i.gl = shl nsw i32 %i.gk, 1
  %i.gm = add i32 %i.gl, 2
  br label %transform_n.exit.i154

bb.bg:                                            ; preds = %bb.be
  %i.gn = sdiv i32 %i.gh, 2
  %i.go = add nsw i32 %i.gn, 1
  br label %transform_n.exit.i154

transform_n.exit.i154:                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.0.i.i155 = phi i32 [ %i.go, %bb.bg ], [ %i.gm, %bb.bf ], [ %i.gh, %bb.be ]
  %i.gp = mul nsw i32 %.0.i.i155, %i.gg
  store i32 %i.gp, ptr %i.gd, align 4, !tbaa !39
  br label %bb.bh

bb.bh:                                            ; preds = %transform_n.exit.i154, %bb.bd
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !22
  %.not31.i149 = icmp eq i32 %i.gr, 0
  br i1 %.not31.i149, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.gs = getelementptr inbounds nuw i8, ptr %.037.i146, i64 8
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !22
  %i.gu = load i32, ptr %.037.i146, align 4, !tbaa !40 ; 3 uses
  %i.gv = icmp eq ptr %.037.i146, %i.au
  %i.gw = select i1 %i.gv, i32 %.094, i32 0
  switch i32 %i.gw, label %default.unreachable [
    i32 0, label %transform_n.exit34.i151
    i32 1, label %bb.bj
    i32 2, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.gx = sdiv i32 %i.gu, 2
  %i.gy = shl nsw i32 %i.gx, 1
  %i.gz = add i32 %i.gy, 2
  br label %transform_n.exit34.i151

bb.bk:                                            ; preds = %bb.bi
  %i.ha = sdiv i32 %i.gu, 2
  %i.hb = add nsw i32 %i.ha, 1
  br label %transform_n.exit34.i151

transform_n.exit34.i151:                          ; preds = %bb.bk, %bb.bj, %bb.bi
  %.0.i32.i152 = phi i32 [ %i.hb, %bb.bk ], [ %i.gz, %bb.bj ], [ %i.gu, %bb.bi ]
  %i.hc = mul nsw i32 %.0.i32.i152, %i.gt
  store i32 %i.hc, ptr %i.gq, align 4, !tbaa !22
  br label %bb.bl

bb.bl:                                            ; preds = %transform_n.exit34.i151, %bb.bh
  %i.hd = icmp samesign ugt i64 %indvars.iv.i145, 1
  br i1 %i.hd, label %bb.bd, label %dwim.exit156, !llvm.loop !28

dwim.exit156:                                     ; preds = %bb.bl, %bb.bc
  store ptr %i.ao, ptr %i.o, align 8, !tbaa !41
  %i.he = call ptr @mktensor(i32 noundef 0) #7    ; 2 uses
  store ptr %i.he, ptr %i.n, align 8, !tbaa !42
  br label %bb.bm

bb.bm:                                            ; preds = %dwim.exit142, %dwim.exit156, %dwim.exit114
  %i.hf = phi ptr [ %i.cc, %dwim.exit114 ], [ %i.dm, %dwim.exit142 ], [ %i.he, %dwim.exit156 ] ; 3 uses
  %.1 = phi ptr [ %i.cb, %dwim.exit114 ], [ %i.dl, %dwim.exit142 ], [ %i.ad, %dwim.exit156 ]
  %.not = icmp eq i32 %.093, 0
  br i1 %.not, label %transpose_tensor.exit159, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hg = load ptr, ptr %i.o, align 8, !tbaa !41  ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !38
  %i.hi = add i32 %i.hh, -2147483647
  %or.cond.i157 = icmp ult i32 %i.hi, -2147483645
  br i1 %or.cond.i157, label %transpose_tensor.exit, label %bb.bo

end_hunk_0
