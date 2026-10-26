Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Jacobi?download=true
inline.NumInlined: 2
begin_hunk_0_@Jacobi:bb.a

.preheader.preheader:                             ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %i.g = add nsw i64 %i.f, -8
  %i.h = mul i32 %1, 3
  %i.i = zext i32 %i.h to i64
  %i.j = sub nsw i32 1, %1
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i32 0, %1
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw i32 %1, 1
  %i.o = zext i32 %i.n to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge75
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge75 ] ; 7 uses
  %indvars.iv = phi i64 [ %i.e, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge75 ] ; 10 uses
  %i.p = shl i64 %indvar, 1
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %indvar to i32                 ; 2 uses
  %i.s = mul nsw i64 %indvar, -8                  ; 2 uses
  %i.t = add i64 %i.g, %i.s
  %i.u = add i64 %i.f, %i.s                       ; 2 uses
  %i.v = mul i64 %indvar, 4294967293
  %i.w = add i64 %i.v, %i.i
  %i.x = add i64 %indvar, %i.k
  %i.y = add i64 %indvar, %i.m
  %i.z = sub nsw i64 51, %indvars.iv              ; 3 uses
  %i.aa = icmp samesign ult i64 %indvars.iv, 51
  br i1 %i.aa, label %.lr.ph.i.lr.ph, label %._crit_edge75

.lr.ph.i.lr.ph:                                   ; preds = %.preheader
  %i.ab = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %invariant.op = add nsw i32 %i.ac, -1
  %i.ad = add i32 %i.r, 1
  %i.ae = sub i32 %i.r, %1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %._crit_edge
  %indvars.iv83 = phi i64 [ 0, %.lr.ph.i.lr.ph ], [ %indvars.iv.next84, %._crit_edge ] ; 17 uses
  %indvars.iv78 = phi i64 [ %indvars.iv, %.lr.ph.i.lr.ph ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %i.af = trunc i64 %indvars.iv83 to i32          ; 3 uses
  %i.ag = shl nuw nsw i64 %indvars.iv83, 3        ; 3 uses
  %i.ah = add i64 %i.t, %i.ag
  %i.ai = add i64 %i.u, %i.ag
  %i.aj = add i64 %i.w, %indvars.iv83
  %i.ak = sub i64 %i.x, %indvars.iv83
  %indvars86 = trunc i64 %indvars.iv83 to i32
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv83
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !11 ; 2 uses
  %i.an = add nuw nsw i64 %indvars.iv83, %indvars.iv ; 6 uses
  %i.ao = add nsw i64 %i.an, -1                   ; 3 uses
  %.reass = add i32 %invariant.op, %indvars86
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.as = load double, ptr %i.ar, align 8, !tbaa !13
  call void @Givens(double noundef %i.aq, double noundef %i.as, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.at = load double, ptr %i.a, align 8, !tbaa !13 ; 5 uses
  %i.au = load double, ptr %i.b, align 8, !tbaa !13 ; 5 uses
  %i.av = add nuw nsw i64 %indvars.iv83, %i.ab
  %i.aw = trunc nsw i64 %i.av to i32
  %i.ax = call i32 @llvm.umin.i32(i32 %i.aw, i32 50) ; 3 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11 ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.an
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 4 uses
  %i.bc = add nuw nsw i32 %i.ax, 1                ; 2 uses
  %i.bd = sub i32 %i.ax, %i.af
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check111 = icmp eq i32 %i.ax, %i.af
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i
  %i.bg = shl nuw nsw i64 %indvars.iv83, 3        ; 2 uses
  %i.bh = add nuw i64 %i.bg, 8
  %i.bi = add i64 %i.q, %indvars.iv83
  %i.bj = trunc i64 %i.bi to i32
  %umin = call i32 @llvm.umin.i32(i32 %i.bj, i32 50)
  %i.bk = trunc i64 %indvars.iv83 to i32
  %i.bl = sub i32 %umin, %i.bk
  %i.bm = zext i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add i64 %i.bh, %i.bn                    ; 2 uses
  %scevgep103.a = getelementptr nuw i8, ptr %i.az, i64 %i.ag
  %scevgep104.a = getelementptr i8, ptr %i.az, i64 %i.bo
  %scevgep105 = getelementptr nuw i8, ptr %i.bb, i64 %i.bg
  %scevgep106 = getelementptr i8, ptr %i.bb, i64 %i.bo
  %bound0107 = icmp ult ptr %scevgep103.a, %scevgep106
  %bound1108 = icmp ult ptr %scevgep105, %scevgep104.a
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %scalar.ph110.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck102
  %n.vec113 = and i64 %i.bf, 8589934590           ; 3 uses
  %i.bp = add nuw i64 %indvars.iv83, %n.vec113
  %broadcast.splatinsert114.a = insertelement <2 x double> poison, double %i.at, i64 0
  %broadcast.splat115.a = shufflevector <2 x double> %broadcast.splatinsert114.a, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %i.au, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph112
  %index119 = phi i64 [ 0, %vector.ph112 ], [ %index.next122, %vector.body118 ] ; 2 uses
  %i.bq = add nuw i64 %indvars.iv83, %index119    ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bq ; 2 uses
  %wide.load120 = load <2 x double>, ptr %i.br, align 8, !tbaa !13, !alias.scope !37, !noalias !38 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bq ; 2 uses
  %wide.load121 = load <2 x double>, ptr %i.bs, align 8, !tbaa !13, !alias.scope !38 ; 2 uses
  %i.bt = fneg <2 x double> %wide.load121
  %i.bu = fmul <2 x double> %broadcast.splat115.a, %i.bt
  %i.bv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat117, <2 x double> %wide.load120, <2 x double> %i.bu)
  store <2 x double> %i.bv, ptr %i.br, align 8, !tbaa !13, !alias.scope !37, !noalias !38
  %i.bw = fmul <2 x double> %broadcast.splat117, %wide.load121
  %i.bx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat115.a, <2 x double> %wide.load120, <2 x double> %i.bw)
  store <2 x double> %i.bx, ptr %i.bs, align 8, !tbaa !13, !alias.scope !38
  %index.next122 = add nuw i64 %index119, 2       ; 2 uses
  %i.by = icmp eq i64 %index.next122, %n.vec113
  br i1 %i.by, label %middle.block123, label %vector.body118, !llvm.loop !27

middle.block123:                                  ; preds = %vector.body118
  %cmp.n124 = icmp eq i64 %i.bf, %n.vec113
  br i1 %cmp.n124, label %.lr.ph53.i.preheader, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %vector.memcheck102, %.lr.ph.i, %middle.block123
  %indvars.iv.i.ph = phi i64 [ %indvars.iv83, %vector.memcheck102 ], [ %indvars.iv83, %.lr.ph.i ], [ %i.bp, %middle.block123 ]
  %i.bz = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.at, i64 1
  %i.cb = insertelement <2 x double> poison, double %i.at, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.au, i64 1
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph110 ], [ %indvars.iv.i.ph, %scalar.ph110.preheader ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !13 ; 2 uses
  %i.ch = fneg double %i.cg
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.ch, i64 1
  %i.ck = fmul <2 x double> %i.ca, %i.cj
  %i.cl = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cm, <2 x double> %i.ck) ; 2 uses
  %i.co = extractelement <2 x double> %i.cn, i64 1
  store double %i.co, ptr %i.cd, align 8, !tbaa !13
  %i.cp = extractelement <2 x double> %i.cn, i64 0
  store double %i.cp, ptr %i.cf, align 8, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bc, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.lr.ph53.i.preheader, label %scalar.ph110, !llvm.loop !28

.lr.ph53.i.preheader:                             ; preds = %scalar.ph110, %middle.block123
  %i.cq = insertelement <2 x double> poison, double %i.at, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.au, i64 1
  %i.cs = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.at, i64 1
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %.lr.ph53.i ], [ %indvars.iv83, %.lr.ph53.i.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv55.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !11 ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ao ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.an
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !13 ; 2 uses
  %i.da = fneg double %i.cz
  %i.db = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.cz, i64 1
  %i.dd = fmul <2 x double> %i.cr, %i.dc
  %i.de = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.df, <2 x double> %i.dd)
  store <2 x double> %i.dg, ptr %i.cw, align 8, !tbaa !13
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %lftr.wideiv58.i = trunc i64 %indvars.iv.next56.i to i32
  %exitcond59.not.i = icmp eq i32 %i.bc, %lftr.wideiv58.i
  br i1 %exitcond59.not.i, label %ApplyGivens.exit.loopexit, label %.lr.ph53.i, !llvm.loop !0

ApplyGivens.exit.loopexit:                        ; preds = %.lr.ph53.i
  %i.dh = load double, ptr %i.a, align 8, !tbaa !13
  %i.di = load double, ptr %i.b, align 8, !tbaa !13
  %i.dj = trunc nsw i64 %i.an to i32
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.dh, double noundef %i.di, i32 noundef %.reass, i32 noundef %i.dj) #5
  %i.dk = icmp slt i64 %i.an, %i.z
  br i1 %i.dk, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %ApplyGivens.exit.loopexit
  %i.dl = add i32 %1, %i.af
  %i.dm = sub i32 %i.ad, %i.dl
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ApplyGivens.exit72
  %indvar94 = phi i64 [ %indvar.next95, %ApplyGivens.exit72 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %ApplyGivens.exit72 ], [ %indvars.iv78, %.lr.ph.preheader ] ; 3 uses
  %2 = mul i64 %i.u, %indvar94                    ; 2 uses
  %i.dn = add i64 %i.ah, %2                       ; 2 uses
  %3 = add i64 %i.ai, %2
  %4 = mul i64 %indvars.iv, %indvar94
  %i.do = add i64 %i.aj, %4
  %i.dp = trunc i64 %i.do to i32
  %smin = call i32 @llvm.smin.i32(i32 %i.dp, i32 50)
  %5 = mul i64 %i.y, %indvar94
  %i.dq = add i64 %i.ak, %5
  %6 = trunc i64 %i.dq to i32
  %7 = add i32 %smin, %6
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = add i64 %3, %9                            ; 2 uses
  %11 = add nsw i64 %indvars.iv80, -1             ; 7 uses
  %12 = getelementptr inbounds [8 x i8], ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !11     ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, %indvars.iv ; 7 uses
  %indvars = trunc i64 %indvars.iv.next81 to i32  ; 2 uses
  %14 = add nsw i64 %indvars.iv.next81, -1        ; 3 uses
  %15 = add nsw i32 %indvars, -1
  %i.dr = getelementptr inbounds [8 x i8], ptr %13, i64 %14
  %16 = load double, ptr %i.dr, align 8, !tbaa !13
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv.next81
  %17 = load double, ptr %i.ds, align 8, !tbaa !13
  call void @Givens(double noundef %16, double noundef %17, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %18 = load double, ptr %i.a, align 8, !tbaa !13 ; 6 uses
  %19 = load double, ptr %i.b, align 8, !tbaa !13 ; 6 uses
  %20 = add nuw nsw i64 %indvars.iv80, %i.ab
  %21 = trunc nsw i64 %20 to i32
  %22 = call i32 @llvm.smin.i32(i32 %21, i32 50)  ; 3 uses
  %23 = sext i32 %22 to i64
  %.not49.i61 = icmp sgt i64 %11, %23
  br i1 %.not49.i61, label %ApplyGivens.exit72, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph
  %24 = trunc i64 %indvar94 to i32
  %25 = getelementptr inbounds [8 x i8], ptr %0, i64 %14
  %26 = load ptr, ptr %25, align 8, !tbaa !11     ; 4 uses
  %27 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next81
  %28 = load ptr, ptr %27, align 8, !tbaa !11     ; 4 uses
  %29 = add nuw nsw i32 %22, 1                    ; 2 uses
  %30 = mul i32 %i.ae, %24
  %31 = add i32 %i.dm, %30
  %i.dt = add i32 %22, %31                        ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.dt, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i62
  %scevgep = getelementptr i8, ptr %26, i64 %i.dn
  %scevgep96 = getelementptr i8, ptr %26, i64 %10
  %scevgep97 = getelementptr i8, ptr %28, i64 %i.dn
  %scevgep98 = getelementptr i8, ptr %28, i64 %10
  %bound0 = icmp ult ptr %scevgep, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dv, 8589934590              ; 3 uses
  %i.dw = add i64 %11, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %18, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert99 = insertelement <2 x double> poison, double %19, i64 0
  %broadcast.splat100 = shufflevector <2 x double> %broadcast.splatinsert99, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dx = add i64 %11, %index                     ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %26, i64 %i.dx ; 2 uses
  %wide.load = load <2 x double>, ptr %i.dy, align 8, !tbaa !13, !alias.scope !39, !noalias !40 ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %28, i64 %i.dx ; 2 uses
  %wide.load101 = load <2 x double>, ptr %i.dz, align 8, !tbaa !13, !alias.scope !40 ; 2 uses
  %i.ea = fneg <2 x double> %wide.load101
  %i.eb = fmul <2 x double> %broadcast.splat, %i.ea
  %i.ec = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat100, <2 x double> %wide.load, <2 x double> %i.eb)
  store <2 x double> %i.ec, ptr %i.dy, align 8, !tbaa !13, !alias.scope !39, !noalias !40
  %i.ed = fmul <2 x double> %broadcast.splat100, %wide.load101
  %i.ee = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.ed)
  store <2 x double> %i.ee, ptr %i.dz, align 8, !tbaa !13, !alias.scope !40
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %.lr.ph53.i67.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i62, %middle.block
  %indvars.iv.i63.ph = phi i64 [ %11, %vector.memcheck ], [ %11, %.lr.ph.i62 ], [ %i.dw, %middle.block ]
  %i.eg = insertelement <2 x double> poison, double %19, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %18, i64 1
  %i.ei = insertelement <2 x double> poison, double %18, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %19, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %scalar.ph ], [ %indvars.iv.i63.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %26, i64 %indvars.iv.i63 ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !13
  %i.em = getelementptr inbounds [8 x i8], ptr %28, i64 %indvars.iv.i63 ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !13 ; 2 uses
  %i.eo = fneg double %i.en
  %i.ep = insertelement <2 x double> poison, double %i.en, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eo, i64 1
  %i.er = fmul <2 x double> %i.eh, %i.eq
  %i.es = insertelement <2 x double> poison, double %i.el, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.et, <2 x double> %i.er) ; 2 uses
  %i.ev = extractelement <2 x double> %i.eu, i64 1
  store double %i.ev, ptr %i.ek, align 8, !tbaa !13
  %i.ew = extractelement <2 x double> %i.eu, i64 0
  store double %i.ew, ptr %i.em, align 8, !tbaa !13
  %indvars.iv.next.i64 = add nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %lftr.wideiv.i65 = trunc i64 %indvars.iv.next.i64 to i32
  %exitcond.not.i66 = icmp eq i32 %29, %lftr.wideiv.i65
  br i1 %exitcond.not.i66, label %.lr.ph53.i67.preheader, label %scalar.ph, !llvm.loop !33

.lr.ph53.i67.preheader:                           ; preds = %scalar.ph, %middle.block
  %i.ex = insertelement <2 x double> poison, double %18, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %19, i64 1
  %i.ez = insertelement <2 x double> poison, double %19, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %18, i64 1
  br label %.lr.ph53.i67

.lr.ph53.i67:                                     ; preds = %.lr.ph53.i67.preheader, %.lr.ph53.i67
  %indvars.iv55.i68 = phi i64 [ %indvars.iv.next56.i69, %.lr.ph53.i67 ], [ %11, %.lr.ph53.i67.preheader ] ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55.i68
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !11 ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %14 ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !13
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.next81
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !13 ; 2 uses
  %i.fh = fneg double %i.fg
  %i.fi = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fj = insertelement <2 x double> %i.fi, double %i.fg, i64 1
  %i.fk = fmul <2 x double> %i.ey, %i.fj
  %i.fl = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fm, <2 x double> %i.fk)
  store <2 x double> %i.fn, ptr %i.fd, align 8, !tbaa !13
  %indvars.iv.next56.i69 = add nsw i64 %indvars.iv55.i68, 1 ; 2 uses
  %lftr.wideiv58.i70 = trunc i64 %indvars.iv.next56.i69 to i32
  %exitcond59.not.i71 = icmp eq i32 %29, %lftr.wideiv58.i70
  br i1 %exitcond59.not.i71, label %ApplyGivens.exit72.loopexit, label %.lr.ph53.i67, !llvm.loop !0

ApplyGivens.exit72.loopexit:                      ; preds = %.lr.ph53.i67
  %.pre = load double, ptr %i.a, align 8, !tbaa !13
  %.pre89 = load double, ptr %i.b, align 8, !tbaa !13
  br label %ApplyGivens.exit72

ApplyGivens.exit72:                               ; preds = %ApplyGivens.exit72.loopexit, %.lr.ph
  %32 = phi double [ %.pre89, %ApplyGivens.exit72.loopexit ], [ %19, %.lr.ph ]
  %33 = phi double [ %.pre, %ApplyGivens.exit72.loopexit ], [ %18, %.lr.ph ]
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %33, double noundef %32, i32 noundef %15, i32 noundef %indvars) #5
  %i.fo = icmp slt i64 %indvars.iv.next81, %i.z
  %indvar.next95 = add i64 %indvar94, 1
  br i1 %i.fo, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %ApplyGivens.exit72, %ApplyGivens.exit.loopexit
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.fp = icmp slt i64 %indvars.iv.next84, %i.z
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br i1 %i.fp, label %.lr.ph.i, label %._crit_edge75, !llvm.loop !35

._crit_edge75:                                    ; preds = %._crit_edge, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fq = icmp sgt i64 %indvars.iv, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fq, label %.preheader, label %._crit_edge77, !llvm.loop !36

._crit_edge77:                                    ; preds = %._crit_edge75, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %i.c
}

declare ptr @newIdMatrix() local_unnamed_addr #3

declare void @Givens(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ApplyRGivens(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !14}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, i1 false, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !14, !15, !16}
!21 = distinct !{!21, !14, !15}
!22 = !{!18}
!23 = !{!19}
!24 = distinct !{!24, i1 false, !"LVerDomain"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !14, !15, !16}
!28 = distinct !{!28, !14, !15}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !14, !15, !16}
!33 = distinct !{!33, !14, !15}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = !{!25}
!38 = !{!26}
!39 = !{!30}
!40 = !{!31}
end_hunk_0
