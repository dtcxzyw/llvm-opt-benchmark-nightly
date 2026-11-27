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
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8
  %i.o = add i64 %i.n, 1
  %i.p = tail call ptr @bench_malloc(i64 noundef %i.o) #7 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.p, ptr %i.q, align 8, !tbaa !15
  %i.r = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) %0) #7 ; 0 uses
  %i.s = tail call ptr @__ctype_tolower_loc() #9
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.093 = phi i32 [ 0, %bb.a ], [ %.093.be, %.backedge ] ; 12 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %.0.be, %.backedge ] ; 3 uses
  %i.u = load i8, ptr %.0, align 1, !tbaa !16
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !17
  switch i32 %i.x, label %bb.n [
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
  store i32 1, ptr %2, align 4, !tbaa !33
  br label %.backedge

.backedge:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.093.be = phi i32 [ %.093, %bb.c ], [ %.093, %bb.d ], [ %.093, %bb.e ], [ %.093, %bb.f ], [ %.093, %bb.g ], [ %.093, %bb.h ], [ %.093, %bb.i ], [ %.093, %bb.j ], [ %.093, %bb.k ], [ %.093, %bb.m ], [ %.093, %bb.l ], [ 1, %bb.b ]
  %.0.be = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !33
  br label %.backedge

bb.e:                                             ; preds = %bb.b
  store i32 1, ptr %i.h, align 8, !tbaa !34
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  store i32 1, ptr %i.i, align 4, !tbaa !35
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
  store i32 1, ptr %i.k, align 8, !tbaa !36
  br label %.backedge

bb.m:                                             ; preds = %bb.b
  store i32 1, ptr %i.j, align 4, !tbaa !37
  br label %.backedge

bb.n:                                             ; preds = %bb.b
  %i.y = load i32, ptr %i.c, align 8, !tbaa !29
  %i.z = icmp eq i32 %i.y, 2
  %i.aa = select i1 %i.z, ptr %i.d, ptr null
  %i.ab = call fastcc ptr @parsetensor(ptr noundef nonnull %.0, ptr noundef %i.a, ptr noundef %i.aa) ; 4 uses
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !29
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !30
  %i.af = icmp slt i32 %i.ae, 0                   ; 2 uses
  %i.ag = load i32, ptr %2, align 4, !tbaa !33
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = load i32, ptr @always_pad_real, align 4
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = select i1 %i.ah, i1 true, i1 %i.aj
  %i.al = zext i1 %i.ak to i32                    ; 2 uses
  %. = select i1 %i.af, i32 %i.al, i32 2
  %.174 = select i1 %i.af, i32 2, i32 %i.al
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.095 = phi i32 [ %., %bb.o ], [ 0, %bb.n ]     ; 5 uses
  %.094 = phi i32 [ %.174, %bb.o ], [ 0, %bb.n ]  ; 5 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !18  ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !20 ; 4 uses
  %i.ap = load i32, ptr %i.am, align 8, !tbaa !38 ; 5 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [12 x i8], ptr %i.ao, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -12 ; 10 uses
  %i.at = load i8, ptr %i.ab, align 1, !tbaa !16
  switch i8 %i.at, label %bb.bc [
    i8 42, label %bb.q
    i8 118, label %bb.aj
    i8 86, label %bb.aj
  ]

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.av = add i32 %i.ap, -2147483647
  %or.cond.i = icmp ult i32 %i.av, -2147483646
  br i1 %or.cond.i, label %dwim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.aw = zext nneg i32 %i.ap to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.z, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.z ] ; 2 uses
  %.037.i = phi ptr [ %1, %.lr.ph.i ], [ %i.ax, %bb.z ] ; 6 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %indvars.iv.next.i ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !39
  %.not30.i = icmp eq i32 %i.az, 0
  br i1 %.not30.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %.037.i, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !39
  %i.bc = load i32, ptr %.037.i, align 4, !tbaa !40 ; 3 uses
  %i.bd = icmp eq ptr %.037.i, %i.as
  %i.be = select i1 %i.bd, i32 %.095, i32 0
  switch i32 %i.be, label %default.unreachable [
    i32 0, label %transform_n.exit.i
    i32 1, label %bb.t
    i32 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bf = sdiv i32 %i.bc, 2
  %i.bg = shl nsw i32 %i.bf, 1
  %i.bh = add i32 %i.bg, 2
  br label %transform_n.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bi = sdiv i32 %i.bc, 2
  %i.bj = add nsw i32 %i.bi, 1
  br label %transform_n.exit.i

default.unreachable:                              ; preds = %bb.ap, %bb.al, %bb.ay, %bb.au, %bb.w, %bb.s, %bb.af, %bb.ab, %bb.bi, %bb.be
  unreachable

transform_n.exit.i:                               ; preds = %bb.u, %bb.t, %bb.s
  %.0.i.i = phi i32 [ %i.bj, %bb.u ], [ %i.bh, %bb.t ], [ %i.bc, %bb.s ]
  %i.bk = mul nsw i32 %.0.i.i, %i.bb
  store i32 %i.bk, ptr %i.ay, align 4, !tbaa !39
  br label %bb.v

bb.v:                                             ; preds = %transform_n.exit.i, %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22
  %.not31.i = icmp eq i32 %i.bm, 0
  br i1 %.not31.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %.037.i, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !22
  %i.bp = load i32, ptr %.037.i, align 4, !tbaa !40 ; 3 uses
  %i.bq = icmp eq ptr %.037.i, %i.as
  %i.br = select i1 %i.bq, i32 %.094, i32 0
  switch i32 %i.br, label %default.unreachable [
    i32 0, label %transform_n.exit34.i
    i32 1, label %bb.x
    i32 2, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bs = sdiv i32 %i.bp, 2
  %i.bt = shl nsw i32 %i.bs, 1
  %i.bu = add i32 %i.bt, 2
  br label %transform_n.exit34.i

bb.y:                                             ; preds = %bb.w
  %i.bv = sdiv i32 %i.bp, 2
  %i.bw = add nsw i32 %i.bv, 1
  br label %transform_n.exit34.i

transform_n.exit34.i:                             ; preds = %bb.y, %bb.x, %bb.w
  %.0.i32.i = phi i32 [ %i.bw, %bb.y ], [ %i.bu, %bb.x ], [ %i.bp, %bb.w ]
  %i.bx = mul nsw i32 %.0.i32.i, %i.bo
  store i32 %i.bx, ptr %i.bl, align 4, !tbaa !22
  br label %bb.z

bb.z:                                             ; preds = %transform_n.exit34.i, %bb.v
  %i.by = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.by, label %bb.r, label %dwim.exit, !llvm.loop !28

dwim.exit:                                        ; preds = %bb.z, %bb.q
  %.0164 = phi ptr [ %1, %bb.q ], [ %i.ao, %bb.z ]
  store ptr %i.am, ptr %i.m, align 8, !tbaa !41
  %i.bz = call fastcc ptr @parsetensor(ptr noundef nonnull %i.au, ptr noundef %i.a, ptr noundef null)
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !18  ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !38 ; 2 uses
  %i.cc = add i32 %i.cb, -2147483647
  %or.cond.i101 = icmp ult i32 %i.cc, -2147483646
  br i1 %or.cond.i101, label %dwim.exit114, label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %dwim.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !20
  %i.cf = zext nneg i32 %i.cb to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ai, %.lr.ph.i102
  %indvars.iv.i103 = phi i64 [ %i.cf, %.lr.ph.i102 ], [ %indvars.iv.next.i105, %bb.ai ] ; 2 uses
  %.037.i104 = phi ptr [ %.0164, %.lr.ph.i102 ], [ %i.cg, %bb.ai ] ; 6 uses
  %indvars.iv.next.i105 = add nsw i64 %indvars.iv.i103, -1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %indvars.iv.next.i105 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !39
  %.not30.i106 = icmp eq i32 %i.ci, 0
  br i1 %.not30.i106, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %.037.i104, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !39
  %i.cl = load i32, ptr %.037.i104, align 4, !tbaa !40 ; 3 uses
  %i.cm = icmp eq ptr %.037.i104, %i.as
  %i.cn = select i1 %i.cm, i32 %.095, i32 0
  switch i32 %i.cn, label %default.unreachable [
    i32 0, label %transform_n.exit.i112
    i32 1, label %bb.ac
    i32 2, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.co = sdiv i32 %i.cl, 2
  %i.cp = shl nsw i32 %i.co, 1
  %i.cq = add i32 %i.cp, 2
  br label %transform_n.exit.i112

bb.ad:                                            ; preds = %bb.ab
  %i.cr = sdiv i32 %i.cl, 2
  %i.cs = add nsw i32 %i.cr, 1
  br label %transform_n.exit.i112

transform_n.exit.i112:                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.0.i.i113 = phi i32 [ %i.cs, %bb.ad ], [ %i.cq, %bb.ac ], [ %i.cl, %bb.ab ]
  %i.ct = mul nsw i32 %.0.i.i113, %i.ck
  store i32 %i.ct, ptr %i.ch, align 4, !tbaa !39
  br label %bb.ae

bb.ae:                                            ; preds = %transform_n.exit.i112, %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !22
  %.not31.i107 = icmp eq i32 %i.cv, 0
  br i1 %.not31.i107, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %.037.i104, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !22
  %i.cy = load i32, ptr %.037.i104, align 4, !tbaa !40 ; 3 uses
  %i.cz = icmp eq ptr %.037.i104, %i.as
  %i.da = select i1 %i.cz, i32 %.094, i32 0
  switch i32 %i.da, label %default.unreachable [
    i32 0, label %transform_n.exit34.i109
    i32 1, label %bb.ag
    i32 2, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.db = sdiv i32 %i.cy, 2
  %i.dc = shl nsw i32 %i.db, 1
  %i.dd = add i32 %i.dc, 2
  br label %transform_n.exit34.i109

bb.ah:                                            ; preds = %bb.af
  %i.de = sdiv i32 %i.cy, 2
  %i.df = add nsw i32 %i.de, 1
  br label %transform_n.exit34.i109

transform_n.exit34.i109:                          ; preds = %bb.ah, %bb.ag, %bb.af
  %.0.i32.i110 = phi i32 [ %i.df, %bb.ah ], [ %i.dd, %bb.ag ], [ %i.cy, %bb.af ]
  %i.dg = mul nsw i32 %.0.i32.i110, %i.cx
  store i32 %i.dg, ptr %i.cu, align 4, !tbaa !22
  br label %bb.ai

bb.ai:                                            ; preds = %transform_n.exit34.i109, %bb.ae
  %i.dh = icmp samesign ugt i64 %indvars.iv.i103, 1
  br i1 %i.dh, label %bb.aa, label %dwim.exit114, !llvm.loop !28

dwim.exit114:                                     ; preds = %bb.ai, %dwim.exit
  store ptr %i.ca, ptr %i.l, align 8, !tbaa !42
  br label %bb.bm

bb.aj:                                            ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.di = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.dj = call fastcc ptr @parsetensor(ptr noundef nonnull %i.di, ptr noundef %i.b, ptr noundef null)
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !18  ; 4 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !38 ; 2 uses
  %i.dm = add i32 %i.dl, -2147483647
  %or.cond.i115 = icmp ult i32 %i.dm, -2147483646
  br i1 %or.cond.i115, label %dwim.exit128, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %bb.aj
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !20 ; 2 uses
  %i.dp = zext nneg i32 %i.dl to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.as, %.lr.ph.i116
  %indvars.iv.i117 = phi i64 [ %i.dp, %.lr.ph.i116 ], [ %indvars.iv.next.i119, %bb.as ] ; 2 uses
  %.037.i118 = phi ptr [ %1, %.lr.ph.i116 ], [ %i.dq, %bb.as ] ; 6 uses
  %indvars.iv.next.i119 = add nsw i64 %indvars.iv.i117, -1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %i.do, i64 %indvars.iv.next.i119 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !39
  %.not30.i120 = icmp eq i32 %i.ds, 0
  br i1 %.not30.i120, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.dt = getelementptr inbounds nuw i8, ptr %.037.i118, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !39
  %i.dv = load i32, ptr %.037.i118, align 4, !tbaa !40 ; 3 uses
  %i.dw = icmp eq ptr %.037.i118, %i.as
  %i.dx = select i1 %i.dw, i32 %.095, i32 0
  switch i32 %i.dx, label %default.unreachable [
    i32 0, label %transform_n.exit.i126
    i32 1, label %bb.am
    i32 2, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.dy = sdiv i32 %i.dv, 2
  %i.dz = shl nsw i32 %i.dy, 1
  %i.ea = add i32 %i.dz, 2
  br label %transform_n.exit.i126

bb.an:                                            ; preds = %bb.al
  %i.eb = sdiv i32 %i.dv, 2
  %i.ec = add nsw i32 %i.eb, 1
  br label %transform_n.exit.i126

transform_n.exit.i126:                            ; preds = %bb.an, %bb.am, %bb.al
  %.0.i.i127 = phi i32 [ %i.ec, %bb.an ], [ %i.ea, %bb.am ], [ %i.dv, %bb.al ]
  %i.ed = mul nsw i32 %.0.i.i127, %i.du
  store i32 %i.ed, ptr %i.dr, align 4, !tbaa !39
  br label %bb.ao

bb.ao:                                            ; preds = %transform_n.exit.i126, %bb.ak
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !22
  %.not31.i121 = icmp eq i32 %i.ef, 0
  br i1 %.not31.i121, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.eg = getelementptr inbounds nuw i8, ptr %.037.i118, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !22
  %i.ei = load i32, ptr %.037.i118, align 4, !tbaa !40 ; 3 uses
  %i.ej = icmp eq ptr %.037.i118, %i.as
  %i.ek = select i1 %i.ej, i32 %.094, i32 0
  switch i32 %i.ek, label %default.unreachable [
    i32 0, label %transform_n.exit34.i123
    i32 1, label %bb.aq
    i32 2, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.el = sdiv i32 %i.ei, 2
  %i.em = shl nsw i32 %i.el, 1
  %i.en = add i32 %i.em, 2
  br label %transform_n.exit34.i123

bb.ar:                                            ; preds = %bb.ap
  %i.eo = sdiv i32 %i.ei, 2
  %i.ep = add nsw i32 %i.eo, 1
  br label %transform_n.exit34.i123

transform_n.exit34.i123:                          ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0.i32.i124 = phi i32 [ %i.ep, %bb.ar ], [ %i.en, %bb.aq ], [ %i.ei, %bb.ap ]
  %i.eq = mul nsw i32 %.0.i32.i124, %i.eh
  store i32 %i.eq, ptr %i.ee, align 4, !tbaa !22
  br label %bb.as

bb.as:                                            ; preds = %transform_n.exit34.i123, %bb.ao
  %i.er = icmp samesign ugt i64 %indvars.iv.i117, 1
  br i1 %i.er, label %bb.ak, label %dwim.exit128, !llvm.loop !28

dwim.exit128:                                     ; preds = %bb.as, %bb.aj
  %.1165 = phi ptr [ %1, %bb.aj ], [ %i.do, %bb.as ]
  store ptr %i.dk, ptr %i.l, align 8, !tbaa !42
  %i.es = load i32, ptr %i.am, align 8, !tbaa !38 ; 2 uses
  %i.et = add i32 %i.es, -2147483647
  %or.cond.i129 = icmp ult i32 %i.et, -2147483646
  br i1 %or.cond.i129, label %dwim.exit142, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %dwim.exit128
  %i.eu = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.ev = zext nneg i32 %i.es to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.bb, %.lr.ph.i130
  %indvars.iv.i131 = phi i64 [ %i.ev, %.lr.ph.i130 ], [ %indvars.iv.next.i133, %bb.bb ] ; 2 uses
  %.037.i132 = phi ptr [ %.1165, %.lr.ph.i130 ], [ %i.ew, %bb.bb ] ; 6 uses
  %indvars.iv.next.i133 = add nsw i64 %indvars.iv.i131, -1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [12 x i8], ptr %i.eu, i64 %indvars.iv.next.i133 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !39
  %.not30.i134 = icmp eq i32 %i.ey, 0
  br i1 %.not30.i134, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.ez = getelementptr inbounds nuw i8, ptr %.037.i132, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !39
  %i.fb = load i32, ptr %.037.i132, align 4, !tbaa !40 ; 3 uses
  %i.fc = icmp eq ptr %.037.i132, %i.as
  %i.fd = select i1 %i.fc, i32 %.095, i32 0
  switch i32 %i.fd, label %default.unreachable [
    i32 0, label %transform_n.exit.i140
    i32 1, label %bb.av
    i32 2, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.fe = sdiv i32 %i.fb, 2
  %i.ff = shl nsw i32 %i.fe, 1
  %i.fg = add i32 %i.ff, 2
  br label %transform_n.exit.i140

bb.aw:                                            ; preds = %bb.au
  %i.fh = sdiv i32 %i.fb, 2
  %i.fi = add nsw i32 %i.fh, 1
  br label %transform_n.exit.i140

transform_n.exit.i140:                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0.i.i141 = phi i32 [ %i.fi, %bb.aw ], [ %i.fg, %bb.av ], [ %i.fb, %bb.au ]
  %i.fj = mul nsw i32 %.0.i.i141, %i.fa
  store i32 %i.fj, ptr %i.ex, align 4, !tbaa !39
  br label %bb.ax

bb.ax:                                            ; preds = %transform_n.exit.i140, %bb.at
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !22
  %.not31.i135 = icmp eq i32 %i.fl, 0
  br i1 %.not31.i135, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.fm = getelementptr inbounds nuw i8, ptr %.037.i132, i64 8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !22
  %i.fo = load i32, ptr %.037.i132, align 4, !tbaa !40 ; 3 uses
  %i.fp = icmp eq ptr %.037.i132, %i.as
  %i.fq = select i1 %i.fp, i32 %.094, i32 0
  switch i32 %i.fq, label %default.unreachable [
    i32 0, label %transform_n.exit34.i137
    i32 1, label %bb.az
    i32 2, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.fr = sdiv i32 %i.fo, 2
  %i.fs = shl nsw i32 %i.fr, 1
  %i.ft = add i32 %i.fs, 2
  br label %transform_n.exit34.i137

bb.ba:                                            ; preds = %bb.ay
  %i.fu = sdiv i32 %i.fo, 2
  %i.fv = add nsw i32 %i.fu, 1
  br label %transform_n.exit34.i137

transform_n.exit34.i137:                          ; preds = %bb.ba, %bb.az, %bb.ay
  %.0.i32.i138 = phi i32 [ %i.fv, %bb.ba ], [ %i.ft, %bb.az ], [ %i.fo, %bb.ay ]
  %i.fw = mul nsw i32 %.0.i32.i138, %i.fn
  store i32 %i.fw, ptr %i.fk, align 4, !tbaa !22
  br label %bb.bb

bb.bb:                                            ; preds = %transform_n.exit34.i137, %bb.ax
  %i.fx = icmp samesign ugt i64 %indvars.iv.i131, 1
  br i1 %i.fx, label %bb.at, label %dwim.exit142, !llvm.loop !28

dwim.exit142:                                     ; preds = %bb.bb, %dwim.exit128
  store ptr %i.am, ptr %i.m, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.bm

bb.bc:                                            ; preds = %bb.p
  %i.fy = add i32 %i.ap, -2147483647
  %or.cond.i143 = icmp ult i32 %i.fy, -2147483646
  br i1 %or.cond.i143, label %dwim.exit156, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.bc
  %i.fz = zext nneg i32 %i.ap to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bl, %.lr.ph.i144
  %indvars.iv.i145 = phi i64 [ %i.fz, %.lr.ph.i144 ], [ %indvars.iv.next.i147, %bb.bl ] ; 2 uses
  %.037.i146 = phi ptr [ %1, %.lr.ph.i144 ], [ %i.ga, %bb.bl ] ; 6 uses
  %indvars.iv.next.i147 = add nsw i64 %indvars.iv.i145, -1 ; 2 uses
  %i.ga = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %indvars.iv.next.i147 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !39
  %.not30.i148 = icmp eq i32 %i.gc, 0
  br i1 %.not30.i148, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.gd = getelementptr inbounds nuw i8, ptr %.037.i146, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !39
  %i.gf = load i32, ptr %.037.i146, align 4, !tbaa !40 ; 3 uses
  %i.gg = icmp eq ptr %.037.i146, %i.as
  %i.gh = select i1 %i.gg, i32 %.095, i32 0
  switch i32 %i.gh, label %default.unreachable [
    i32 0, label %transform_n.exit.i154
    i32 1, label %bb.bf
    i32 2, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.gi = sdiv i32 %i.gf, 2
  %i.gj = shl nsw i32 %i.gi, 1
  %i.gk = add i32 %i.gj, 2
  br label %transform_n.exit.i154

bb.bg:                                            ; preds = %bb.be
  %i.gl = sdiv i32 %i.gf, 2
  %i.gm = add nsw i32 %i.gl, 1
  br label %transform_n.exit.i154

transform_n.exit.i154:                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.0.i.i155 = phi i32 [ %i.gm, %bb.bg ], [ %i.gk, %bb.bf ], [ %i.gf, %bb.be ]
  %i.gn = mul nsw i32 %.0.i.i155, %i.ge
  store i32 %i.gn, ptr %i.gb, align 4, !tbaa !39
  br label %bb.bh

bb.bh:                                            ; preds = %transform_n.exit.i154, %bb.bd
  %i.go = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !22
  %.not31.i149 = icmp eq i32 %i.gp, 0
  br i1 %.not31.i149, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.gq = getelementptr inbounds nuw i8, ptr %.037.i146, i64 8
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !22
  %i.gs = load i32, ptr %.037.i146, align 4, !tbaa !40 ; 3 uses
  %i.gt = icmp eq ptr %.037.i146, %i.as
  %i.gu = select i1 %i.gt, i32 %.094, i32 0
  switch i32 %i.gu, label %default.unreachable [
    i32 0, label %transform_n.exit34.i151
    i32 1, label %bb.bj
    i32 2, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.gv = sdiv i32 %i.gs, 2
  %i.gw = shl nsw i32 %i.gv, 1
  %i.gx = add i32 %i.gw, 2
  br label %transform_n.exit34.i151

bb.bk:                                            ; preds = %bb.bi
  %i.gy = sdiv i32 %i.gs, 2
  %i.gz = add nsw i32 %i.gy, 1
  br label %transform_n.exit34.i151

transform_n.exit34.i151:                          ; preds = %bb.bk, %bb.bj, %bb.bi
  %.0.i32.i152 = phi i32 [ %i.gz, %bb.bk ], [ %i.gx, %bb.bj ], [ %i.gs, %bb.bi ]
  %i.ha = mul nsw i32 %.0.i32.i152, %i.gr
  store i32 %i.ha, ptr %i.go, align 4, !tbaa !22
  br label %bb.bl

bb.bl:                                            ; preds = %transform_n.exit34.i151, %bb.bh
  %i.hb = icmp samesign ugt i64 %indvars.iv.i145, 1
  br i1 %i.hb, label %bb.bd, label %dwim.exit156, !llvm.loop !28

dwim.exit156:                                     ; preds = %bb.bl, %bb.bc
  store ptr %i.am, ptr %i.m, align 8, !tbaa !41
  %i.hc = call ptr @mktensor(i32 noundef 0) #7    ; 2 uses
  store ptr %i.hc, ptr %i.l, align 8, !tbaa !42
  br label %bb.bm

bb.bm:                                            ; preds = %dwim.exit142, %dwim.exit156, %dwim.exit114
  %i.hd = phi ptr [ %i.ca, %dwim.exit114 ], [ %i.dk, %dwim.exit142 ], [ %i.hc, %dwim.exit156 ] ; 3 uses
  %.1 = phi ptr [ %i.bz, %dwim.exit114 ], [ %i.dj, %dwim.exit142 ], [ %i.ab, %dwim.exit156 ]
  %.not = icmp eq i32 %.093, 0
  br i1 %.not, label %transpose_tensor.exit159, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.he = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !38
  %i.hg = add i32 %i.hf, -2147483647
  %or.cond.i157 = icmp ult i32 %i.hg, -2147483645
  br i1 %or.cond.i157, label %transpose_tensor.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !20 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 20 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !22 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !22
  %i.hm = load i32, ptr %i.hi, align 4, !tbaa !40
  %i.hn = mul nsw i32 %i.hm, %i.hk
  store i32 %i.hn, ptr %i.hj, align 4, !tbaa !22
  br label %transpose_tensor.exit

transpose_tensor.exit:                            ; preds = %bb.bn, %bb.bo
  %i.ho = load i32, ptr %i.hd, align 8, !tbaa !38
  %i.hp = add i32 %i.ho, -2147483647
  %or.cond.i158 = icmp ult i32 %i.hp, -2147483645
  br i1 %or.cond.i158, label %transpose_tensor.exit159, label %bb.bp

bb.bp:                                            ; preds = %transpose_tensor.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !20 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 20 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !22 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !22
  %i.hv = load i32, ptr %i.hr, align 4, !tbaa !40
  %i.hw = mul nsw i32 %i.hv, %i.ht
  store i32 %i.hw, ptr %i.hs, align 4, !tbaa !22
  br label %transpose_tensor.exit159

transpose_tensor.exit159:                         ; preds = %bb.bp, %transpose_tensor.exit, %bb.bm
  %i.hx = load i32, ptr %2, align 4, !tbaa !33
  %.not97 = icmp eq i32 %i.hx, 0
  br i1 %.not97, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %transpose_tensor.exit159
  %i.hy = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8388608
  store ptr %i.hz, ptr %i.f, align 8, !tbaa !44
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %transpose_tensor.exit159
  %i.ia = load ptr, ptr %i.m, align 8, !tbaa !41
  %.not98 = icmp eq ptr %i.ia, null
  %.not99 = icmp eq ptr %i.hd, null
  %or.cond = select i1 %.not98, i1 true, i1 %.not99
  br i1 %or.cond, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @bench_assertion_failed(ptr noundef nonnull @.str, i32 noundef 315, ptr noundef nonnull @.str.1) #7
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.ib = load i8, ptr %.1, align 1, !tbaa !16
  %.not100 = icmp eq i8 %i.ib, 0
  br i1 %.not100, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @bench_assertion_failed(ptr noundef nonnull @.str.2, i32 noundef 316, ptr noundef nonnull @.str.1) #7
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @bench_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @parsetensor(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.ap, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ap ], [ 0, %bb.a ] ; 3 uses
  %.087 = phi ptr [ %i.cx, %bb.ap ], [ %0, %bb.a ] ; 4 uses
  %.085 = phi ptr [ %i.a, %bb.ap ], [ null, %bb.a ]
  %.083 = phi i32 [ %i.c, %bb.ap ], [ 0, %bb.a ]
  %i.a = tail call ptr @bench_malloc(i64 noundef 24) #7 ; 26 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.085, ptr %i.b, align 8, !tbaa !49
  %i.c = add nuw nsw i32 %.083, 1                 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !17
  %i.d = load i8, ptr %.087, align 1, !tbaa !16
  switch i8 %i.d, label %bb.e [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.087, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.087, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.021.i = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %.087, %bb.b ] ; 4 uses
  %.0.i = phi i32 [ -1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.b ]
  %i.g = tail call ptr @__ctype_b_loc() #9        ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %i.i = load i8, ptr %.021.i, align 1, !tbaa !16 ; 2 uses
  %i.j = sext i8 %i.i to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !27
  %i.m = and i16 %i.l, 2048
  %.not.i = icmp eq i16 %i.m, 0
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.7, i32 noundef 96, ptr noundef nonnull @.str.1) #7
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !25 ; 2 uses
  %.pre28.i = load i8, ptr %.021.i, align 1, !tbaa !16 ; 2 uses
  %.phi.trans.insert.i = sext i8 %.pre28.i to i64
  %.phi.trans.insert29.i = getelementptr inbounds [2 x i8], ptr %.pre.i, i64 %.phi.trans.insert.i
  %.pre30.i = load i16, ptr %.phi.trans.insert29.i, align 2, !tbaa !27
  %.pre31.pre.i = load i32, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %.pre33.i = and i16 %.pre30.i, 2048
  %i.n = icmp eq i16 %.pre33.i, 0
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %.pre.i, %bb.f ], [ %i.h, %bb.e ]
  %i.p = phi i8 [ %.pre28.i, %bb.f ], [ %i.i, %bb.e ]
  %.pre3138.i = phi i32 [ %.pre31.pre.i, %bb.f ], [ 0, %bb.e ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %i.q = phi i32 [ %.pre3138.i, %.lr.ph.i ], [ %i.v, %bb.g ]
  %i.r = phi i8 [ %i.p, %.lr.ph.i ], [ %i.x, %bb.g ]
  %.127.i = phi ptr [ %.021.i, %.lr.ph.i ], [ %i.w, %bb.g ]
  %i.s = sext i8 %i.r to i32
  %i.t = mul nsw i32 %i.q, 10
  %i.u = add i32 %i.t, -48
  %i.v = add i32 %i.u, %i.s                       ; 3 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %.127.i, i64 1 ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16    ; 2 uses
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !27
  %i.ab = and i16 %i.aa, 2048
  %.not25.i = icmp eq i16 %i.ab, 0
  br i1 %.not25.i, label %._crit_edge.i, label %bb.g, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %i.ac = phi i32 [ %.pre31.pre.i, %bb.f ], [ %i.v, %bb.g ]
  %.1.lcssa.i = phi ptr [ %.021.i, %bb.f ], [ %i.w, %bb.g ] ; 3 uses
  %i.ad = mul nsw i32 %i.ac, %.0.i                ; 3 uses
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !17
  %i.ae = load i8, ptr %.1.lcssa.i, align 1, !tbaa !16 ; 2 uses
  switch i8 %i.ae, label %bb.i [
    i8 107, label %bb.h
    i8 75, label %bb.h
  ]

bb.h:                                             ; preds = %._crit_edge.i, %._crit_edge.i
  %i.af = shl nsw i32 %i.ad, 10                   ; 2 uses
  store i32 %i.af, ptr %i.a, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.ag, align 1, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.ah = phi i32 [ %i.ad, %._crit_edge.i ], [ %i.af, %bb.h ]
  %i.ai = phi i8 [ %i.ae, %._crit_edge.i ], [ %.pr.i, %bb.h ] ; 2 uses
  %.2.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %i.ag, %bb.h ] ; 2 uses
  switch i8 %i.ai, label %parseint.exit [
    i8 109, label %bb.j
    i8 77, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.aj = shl nsw i32 %i.ah, 20
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.ak, align 1, !tbaa !16
  br label %parseint.exit

parseint.exit:                                    ; preds = %bb.i, %bb.j
  %i.al = phi i8 [ %.pre, %bb.j ], [ %i.ai, %bb.i ]
  %.3.i = phi ptr [ %i.ak, %bb.j ], [ %.2.i, %bb.i ] ; 2 uses
  %i.am = icmp eq i8 %i.al, 58
  br i1 %i.am, label %bb.k, label %bb.n

bb.k:                                             ; preds = %parseint.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ap = tail call fastcc ptr @parseint(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao) ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = icmp eq i8 %i.aq, 58
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.au = tail call fastcc ptr @parseint(ptr noundef nonnull %i.at, ptr noundef nonnull %i.as)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.av = load i32, ptr %i.ao, align 4, !tbaa !50
  store i32 %i.av, ptr %i.as, align 8, !tbaa !51
  br label %bb.o

bb.n:                                             ; preds = %parseint.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !51
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %.188 = phi ptr [ %i.au, %bb.l ], [ %i.ap, %bb.m ], [ %.3.i, %bb.n ] ; 8 uses
  %i.ay = load i8, ptr %.188, align 1, !tbaa !16  ; 2 uses
  switch i8 %i.ay, label %bb.an [
    i8 102, label %bb.p
    i8 70, label %bb.p
    i8 98, label %bb.q
    i8 66, label %bb.q
    i8 104, label %bb.r
    i8 72, label %bb.r
    i8 101, label %bb.s
    i8 69, label %bb.s
end_hunk_0
begin_hunk_1_@parsetensor:bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !22
  tail call void @bench_free(ptr noundef nonnull %.186128) #7
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, -1
  %i.dt = icmp sgt i64 %indvars.iv138, 0
  br i1 %i.dt, label %bb.av, label %bb.ay, !llvm.loop !46

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.dj, ptr %1, align 8, !tbaa !18
  ret ptr %.2
}

declare ptr @mktensor(i32 noundef) local_unnamed_addr #2

declare void @bench_assertion_failed(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @problem_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.3, i32 noundef 322, ptr noundef nonnull @.str.1) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @problem_free(ptr noundef %0) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void @bench_free0(ptr noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  tail call void @bench_free0(ptr noundef %i.d) #7
  tail call void @bench_free(ptr noundef %0) #7
  ret void
}

declare void @problem_free(ptr noundef) local_unnamed_addr #2

declare void @bench_free0(ptr noundef) local_unnamed_addr #2

declare void @bench_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parseint(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) unnamed_addr #0 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !17
  %i.a = load i8, ptr %0, align 1, !tbaa !16
  switch i8 %i.a, label %bb.d [
    i8 45, label %bb.b
    i8 43, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.021 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %0, %bb.a ] ; 4 uses
  %.0 = phi i32 [ -1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.a ]
  %i.d = tail call ptr @__ctype_b_loc() #9        ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = load i8, ptr %.021, align 1, !tbaa !16   ; 2 uses
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !27
  %i.j = and i16 %i.i, 2048
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.7, i32 noundef 96, ptr noundef nonnull @.str.1) #7
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %.pre28 = load i8, ptr %.021, align 1, !tbaa !16 ; 2 uses
  %.phi.trans.insert = sext i8 %.pre28 to i64
  %.phi.trans.insert29 = getelementptr inbounds [2 x i8], ptr %.pre, i64 %.phi.trans.insert
  %.pre30 = load i16, ptr %.phi.trans.insert29, align 2, !tbaa !27
  %.pre31.pre = load i32, ptr %1, align 4, !tbaa !17 ; 2 uses
  %.pre33 = and i16 %.pre30, 2048
  %i.k = icmp eq i16 %.pre33, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.l = phi ptr [ %.pre, %bb.e ], [ %i.e, %bb.d ]
  %i.m = phi i8 [ %.pre28, %bb.e ], [ %i.f, %bb.d ]
  %.pre3138 = phi i32 [ %.pre31.pre, %bb.e ], [ 0, %bb.d ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.n = phi i32 [ %.pre3138, %.lr.ph ], [ %i.s, %bb.f ]
  %i.o = phi i8 [ %i.m, %.lr.ph ], [ %i.u, %bb.f ]
  %.127 = phi ptr [ %.021, %.lr.ph ], [ %i.t, %bb.f ]
  %i.p = sext i8 %i.o to i32
  %i.q = mul nsw i32 %i.n, 10
  %i.r = add nsw i32 %i.p, -48
  %i.s = add nsw i32 %i.r, %i.q                   ; 3 uses
  store i32 %i.s, ptr %1, align 4, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %.127, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16    ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27
  %i.y = and i16 %i.x, 2048
  %.not25 = icmp eq i16 %i.y, 0
  br i1 %.not25, label %._crit_edge, label %bb.f, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.z = phi i32 [ %.pre31.pre, %bb.e ], [ %i.s, %bb.f ]
  %.1.lcssa = phi ptr [ %.021, %bb.e ], [ %i.t, %bb.f ] ; 3 uses
  %i.aa = mul nsw i32 %i.z, %.0                   ; 3 uses
  store i32 %i.aa, ptr %1, align 4, !tbaa !17
  %i.ab = load i8, ptr %.1.lcssa, align 1, !tbaa !16 ; 2 uses
  switch i8 %i.ab, label %bb.h [
    i8 107, label %bb.g
    i8 75, label %bb.g
  ]

bb.g:                                             ; preds = %._crit_edge, %._crit_edge
  %i.ac = shl nsw i32 %i.aa, 10                   ; 2 uses
  store i32 %i.ac, ptr %1, align 4, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.ad, align 1, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.ae = phi i32 [ %i.aa, %._crit_edge ], [ %i.ac, %bb.g ]
  %i.af = phi i8 [ %i.ab, %._crit_edge ], [ %.pr, %bb.g ]
  %.2 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.ad, %bb.g ] ; 2 uses
  switch i8 %i.af, label %bb.j [
    i8 109, label %bb.i
    i8 77, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ag = shl nsw i32 %i.ae, 20
  store i32 %i.ag, ptr %1, align 4, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.3 = phi ptr [ %i.ah, %bb.i ], [ %.2, %bb.h ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !23}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !7, i64 80, !7, i64 84, !11, i64 88, !10, i64 96, !7, i64 104, !7, i64 108, !10, i64 112, !10, i64 120, !12, i64 128}
!14 = !{!13, !10, i64 8}
!15 = !{!13, !11, i64 88}
!16 = !{!6, !6, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!10, !10, i64 0}
!19 = !{!"", !7, i64 0, !10, i64 8}
!20 = !{!19, !10, i64 8}
!21 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!22 = !{!21, !7, i64 8}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"p1 short", !10, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"short", !6, i64 0}
!27 = !{!26, !26, i64 0}
!28 = distinct !{!28, !23}
!29 = !{!13, !7, i64 0}
!30 = !{!13, !7, i64 32}
!31 = !{!"p1 int", !10, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!13, !7, i64 36}
!34 = !{!13, !7, i64 40}
!35 = !{!13, !7, i64 44}
!36 = !{!13, !7, i64 104}
!37 = !{!13, !7, i64 108}
!38 = !{!19, !7, i64 0}
!39 = !{!21, !7, i64 4}
!40 = !{!21, !7, i64 0}
!41 = !{!13, !10, i64 16}
!42 = !{!13, !10, i64 24}
!43 = !{!13, !10, i64 48}
!44 = !{!13, !10, i64 56}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
!47 = !{!"p1 _ZTS7dimlist", !10, i64 0}
!48 = !{!"dimlist", !21, i64 0, !7, i64 12, !47, i64 16}
!49 = !{!48, !47, i64 16}
!50 = !{!48, !7, i64 4}
!51 = !{!48, !7, i64 8}
!52 = !{!48, !7, i64 12}
end_hunk_1
