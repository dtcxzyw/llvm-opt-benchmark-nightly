Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Jacobi?download=true
inline.NumInlined: 2
begin_hunk_0_@llvm.lifetime.start.p0
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Jacobi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 !guid !38 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca double, align 8                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = tail call ptr @newIdMatrix() #5          ; 3 uses
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge77

.preheader.preheader:                             ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = sub nsw i32 1, %1
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %i.i = add nsw i64 %i.h, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge75
  %indvar101 = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next102, %._crit_edge75 ] ; 3 uses
  %indvar = phi i32 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge75 ] ; 4 uses
  %indvars.iv = phi i64 [ %i.e, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge75 ] ; 9 uses
  %i.j = sub i32 %indvar, %1
  %i.k = add i64 %indvar101, %i.g
  %i.l = mul nsw i64 %indvar101, -8               ; 2 uses
  %i.m = add i64 %i.h, %i.l                       ; 2 uses
  %i.n = add i64 %i.i, %i.l
  %i.o = sub nsw i64 51, %indvars.iv              ; 3 uses
  %i.p = icmp samesign ult i64 %indvars.iv, 51
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %._crit_edge75

.lr.ph.i.lr.ph:                                   ; preds = %.preheader
  %i.q = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %invariant.op = add nsw i32 %i.r, -1
  %i.s = add i32 %indvar, 1
  %i.t = sub i32 %indvar, %1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %._crit_edge
  %indvars.iv83 = phi i64 [ 0, %.lr.ph.i.lr.ph ], [ %indvars.iv.next84, %._crit_edge ] ; 13 uses
  %indvars.iv78 = phi i64 [ %indvars.iv, %.lr.ph.i.lr.ph ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %i.u = trunc i64 %indvars.iv83 to i32           ; 4 uses
  %i.v = sub i64 %i.k, %indvars.iv83
  %i.w = trunc i64 %i.v to i32
  %i.x = shl nuw nsw i64 %indvars.iv83, 3         ; 5 uses
  %i.y = add i64 %i.m, %i.x
  %i.z = add i64 %i.n, %i.x
  %indvars86 = trunc i64 %indvars.iv83 to i32
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv83
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = add nuw nsw i64 %indvars.iv83, %indvars.iv ; 6 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 3 uses
  %.reass = add i32 %invariant.op, %indvars86
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !13
  call void @Givens(double noundef %i.af, double noundef %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.ai = load double, ptr %i.a, align 8, !tbaa !13 ; 5 uses
  %i.aj = load double, ptr %i.b, align 8, !tbaa !13 ; 5 uses
  %i.ak = add nuw nsw i64 %indvars.iv83, %i.q
  %i.al = trunc nsw i64 %i.ak to i32
  %i.am = call i32 @llvm.umin.i32(i32 %i.al, i32 50) ; 4 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11 ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !11 ; 4 uses
  %i.ar = add nuw nsw i32 %i.am, 1                ; 2 uses
  %i.as = sub i32 %i.am, %i.u
  %i.at = zext i32 %i.as to i64
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check114 = icmp eq i32 %i.am, %i.u
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.memcheck115

vector.memcheck115:                               ; preds = %.lr.ph.i
  %i.av = getelementptr nuw i8, ptr %i.ao, i64 %i.x
  %i.aw = add nuw i64 %i.x, 8
  %i.ax = sub i32 %i.am, %i.u
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = add i64 %i.aw, %i.az                    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ao, i64 %i.ba
  %i.bc = getelementptr nuw i8, ptr %i.aq, i64 %i.x
  %i.bd = getelementptr i8, ptr %i.aq, i64 %i.ba
  %bound0116 = icmp ult ptr %i.av, %i.bd
  %bound1117 = icmp ult ptr %i.bc, %i.bb
  %found.conflict118 = and i1 %bound0116, %bound1117
  br i1 %found.conflict118, label %scalar.ph113.preheader, label %vector.ph119

vector.ph119:                                     ; preds = %vector.memcheck115
  %n.vec120 = and i64 %i.au, 8589934590           ; 3 uses
  %i.be = add nuw i64 %indvars.iv83, %n.vec120
  %broadcast.splatinsert121.a = insertelement <2 x double> poison, double %i.ai, i64 0
  %broadcast.splat122.a = shufflevector <2 x double> %broadcast.splatinsert121.a, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert123 = insertelement <2 x double> poison, double %i.aj, i64 0
  %broadcast.splat124 = shufflevector <2 x double> %broadcast.splatinsert123, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph119
  %index126 = phi i64 [ 0, %vector.ph119 ], [ %index.next129, %vector.body125 ] ; 2 uses
  %i.bf = add nuw i64 %indvars.iv83, %index126    ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bf ; 2 uses
  %wide.load127 = load <2 x double>, ptr %i.bg, align 8, !tbaa !13, !alias.scope !39, !noalias !40 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bf ; 2 uses
  %wide.load128 = load <2 x double>, ptr %i.bh, align 8, !tbaa !13, !alias.scope !40 ; 2 uses
  %i.bi = fneg <2 x double> %wide.load128
  %i.bj = fmul <2 x double> %broadcast.splat122.a, %i.bi
  %i.bk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat124, <2 x double> %wide.load127, <2 x double> %i.bj)
  store <2 x double> %i.bk, ptr %i.bg, align 8, !tbaa !13, !alias.scope !39, !noalias !40
  %i.bl = fmul <2 x double> %broadcast.splat124, %wide.load128
  %i.bm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat122.a, <2 x double> %wide.load127, <2 x double> %i.bl)
  store <2 x double> %i.bm, ptr %i.bh, align 8, !tbaa !13, !alias.scope !40
  %index.next129 = add nuw i64 %index126, 2       ; 2 uses
  %i.bn = icmp eq i64 %index.next129, %n.vec120
  br i1 %i.bn, label %middle.block130, label %vector.body125, !llvm.loop !28

middle.block130:                                  ; preds = %vector.body125
  %cmp.n131 = icmp eq i64 %i.au, %n.vec120
  br i1 %cmp.n131, label %.lr.ph53.i.preheader, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %vector.memcheck115, %.lr.ph.i, %middle.block130
  %indvars.iv.i.ph = phi i64 [ %indvars.iv83, %vector.memcheck115 ], [ %indvars.iv83, %.lr.ph.i ], [ %i.be, %middle.block130 ]
  %i.bo = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.ai, i64 1
  %i.bq = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.aj, i64 1
  br label %scalar.ph113

scalar.ph113:                                     ; preds = %scalar.ph113.preheader, %scalar.ph113
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph113 ], [ %indvars.iv.i.ph, %scalar.ph113.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !13 ; 2 uses
  %i.bw = fneg double %i.bv
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1
  %i.bz = fmul <2 x double> %i.bp, %i.by
  %i.ca = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.cb, <2 x double> %i.bz) ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 1
  store double %i.cd, ptr %i.bs, align 8, !tbaa !13
  %i.ce = extractelement <2 x double> %i.cc, i64 0
  store double %i.ce, ptr %i.bu, align 8, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ar, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.lr.ph53.i.preheader, label %scalar.ph113, !llvm.loop !29

.lr.ph53.i.preheader:                             ; preds = %scalar.ph113, %middle.block130
  %i.cf = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.aj, i64 1
  %i.ch = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.ai, i64 1
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %.lr.ph53.i ], [ %indvars.iv83, %.lr.ph53.i.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv55.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.ad ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ac
  %i.co = load double, ptr %i.cn, align 8, !tbaa !13 ; 2 uses
  %i.cp = fneg double %i.co
  %i.cq = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.co, i64 1
  %i.cs = fmul <2 x double> %i.cg, %i.cr
  %i.ct = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.cu, <2 x double> %i.cs)
  store <2 x double> %i.cv, ptr %i.cl, align 8, !tbaa !13
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %lftr.wideiv58.i = trunc i64 %indvars.iv.next56.i to i32
  %exitcond59.not.i = icmp eq i32 %i.ar, %lftr.wideiv58.i
  br i1 %exitcond59.not.i, label %ApplyGivens.exit.loopexit, label %.lr.ph53.i, !llvm.loop !0

ApplyGivens.exit.loopexit:                        ; preds = %.lr.ph53.i
  %i.cw = load double, ptr %i.a, align 8, !tbaa !13
  %i.cx = load double, ptr %i.b, align 8, !tbaa !13
  %i.cy = trunc nsw i64 %i.ac to i32
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.cw, double noundef %i.cx, i32 noundef %.reass, i32 noundef %i.cy) #5
  %i.cz = icmp slt i64 %i.ac, %i.o
  br i1 %i.cz, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %ApplyGivens.exit.loopexit
  %i.da = add i32 %1, %i.u
  %i.db = sub i32 %i.s, %i.da
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ApplyGivens.exit72
  %indvar99 = phi i64 [ %indvar.next100.a, %ApplyGivens.exit72 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %ApplyGivens.exit72 ], [ %indvars.iv78, %.lr.ph.preheader ] ; 3 uses
  %i.dc = trunc i64 %indvar99 to i32              ; 2 uses
  %i.dd = add nsw i64 %indvars.iv80, -1           ; 7 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !11 ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, %indvars.iv ; 7 uses
  %indvars = trunc i64 %indvars.iv.next81 to i32  ; 2 uses
  %i.dg = add nsw i64 %indvars.iv.next81, -1      ; 3 uses
  %i.dh = add nsw i32 %indvars, -1
  %i.di = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  %i.dj = load double, ptr %i.di, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next81
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !13
  call void @Givens(double noundef %i.dj, double noundef %i.dl, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.dm = load double, ptr %i.a, align 8, !tbaa !13 ; 6 uses
  %i.dn = load double, ptr %i.b, align 8, !tbaa !13 ; 6 uses
  %i.do = add nuw nsw i64 %indvars.iv80, %i.q
  %i.dp = trunc nsw i64 %i.do to i32
  %i.dq = call i32 @llvm.smin.i32(i32 %i.dp, i32 50) ; 4 uses
  %2 = sext i32 %i.dq to i64
  %.not49.i61 = icmp sgt i64 %i.dd, %2
  br i1 %.not49.i61, label %ApplyGivens.exit72, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph
  %3 = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dg
  %4 = load ptr, ptr %3, align 8, !tbaa !11       ; 4 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next81
  %6 = load ptr, ptr %5, align 8, !tbaa !11       ; 4 uses
  %7 = add nuw nsw i32 %i.dq, 1                   ; 2 uses
  %8 = mul i32 %i.t, %i.dc
  %9 = add i32 %i.db, %8
  %10 = add i32 %i.dq, %9                         ; 2 uses
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %11, 1                    ; 2 uses
  %min.iters.check = icmp eq i32 %10, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i62
  %i.dr = mul i64 %indvar99, %i.m                 ; 2 uses
  %i.ds = add i64 %i.z, %i.dr                     ; 2 uses
  %i.dt = getelementptr i8, ptr %4, i64 %i.ds
  %i.du = add i64 %i.y, %i.dr
  %i.dv = mul i32 %i.j, %i.dc
  %i.dw = add i32 %i.dv, %i.w
  %i.dx = add i32 %i.dq, %i.dw
  %i.dy = zext i32 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = add i64 %i.du, %i.dz                    ; 2 uses
  %i.eb = getelementptr i8, ptr %4, i64 %i.ea
  %i.ec = getelementptr i8, ptr %6, i64 %i.ds
  %i.ed = getelementptr i8, ptr %6, i64 %i.ea
  %bound0 = icmp ult ptr %i.dt, %i.ed
  %bound1 = icmp ult ptr %i.ec, %i.eb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %12, 8589934590                ; 3 uses
  %i.ee = add i64 %i.dd, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert103 = insertelement <2 x double> poison, double %i.dn, i64 0
  %broadcast.splat104 = shufflevector <2 x double> %broadcast.splatinsert103, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ef = add i64 %i.dd, %index                   ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ef ; 2 uses
  %wide.load = load <2 x double>, ptr %i.eg, align 8, !tbaa !13, !alias.scope !41, !noalias !42 ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ef ; 2 uses
  %wide.load105 = load <2 x double>, ptr %i.eh, align 8, !tbaa !13, !alias.scope !42 ; 2 uses
  %i.ei = fneg <2 x double> %wide.load105
  %i.ej = fmul <2 x double> %broadcast.splat, %i.ei
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat104, <2 x double> %wide.load, <2 x double> %i.ej)
  store <2 x double> %i.ek, ptr %i.eg, align 8, !tbaa !13, !alias.scope !41, !noalias !42
  %i.el = fmul <2 x double> %broadcast.splat104, %wide.load105
  %i.em = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.el)
  store <2 x double> %i.em, ptr %i.eh, align 8, !tbaa !13, !alias.scope !42
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %.lr.ph53.i67.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i62, %middle.block
  %indvars.iv.i63.ph = phi i64 [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i62 ], [ %i.ee, %middle.block ]
  %i.eo = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.dm, i64 1
  %i.eq = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.dn, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %scalar.ph ], [ %indvars.iv.i63.ph, %scalar.ph.preheader ] ; 3 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.i63 ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !13
  %i.eu = getelementptr inbounds [8 x i8], ptr %6, i64 %indvars.iv.i63 ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !13 ; 2 uses
  %i.ew = fneg double %i.ev
  %i.ex = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.ew, i64 1
  %i.ez = fmul <2 x double> %i.ep, %i.ey
  %i.fa = insertelement <2 x double> poison, double %i.et, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %i.fb, <2 x double> %i.ez) ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 1
  store double %i.fd, ptr %i.es, align 8, !tbaa !13
  %i.fe = extractelement <2 x double> %i.fc, i64 0
  store double %i.fe, ptr %i.eu, align 8, !tbaa !13
  %indvars.iv.next.i64 = add nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %lftr.wideiv.i65 = trunc i64 %indvars.iv.next.i64 to i32
  %exitcond.not.i66 = icmp eq i32 %7, %lftr.wideiv.i65
  br i1 %exitcond.not.i66, label %.lr.ph53.i67.preheader, label %scalar.ph, !llvm.loop !34

.lr.ph53.i67.preheader:                           ; preds = %scalar.ph, %middle.block
  %i.ff = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.dn, i64 1
  %i.fh = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.dm, i64 1
  br label %.lr.ph53.i67

.lr.ph53.i67:                                     ; preds = %.lr.ph53.i67.preheader, %.lr.ph53.i67
  %indvars.iv55.i68 = phi i64 [ %indvars.iv.next56.i69, %.lr.ph53.i67 ], [ %i.dd, %.lr.ph53.i67.preheader ] ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55.i68
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !11 ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.dg ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !13
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next81
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !13 ; 2 uses
  %i.fp = fneg double %i.fo
  %i.fq = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fo, i64 1
  %i.fs = fmul <2 x double> %i.fg, %i.fr
  %i.ft = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fu, <2 x double> %i.fs)
  store <2 x double> %i.fv, ptr %i.fl, align 8, !tbaa !13
  %indvars.iv.next56.i69 = add nsw i64 %indvars.iv55.i68, 1 ; 2 uses
  %lftr.wideiv58.i70 = trunc i64 %indvars.iv.next56.i69 to i32
  %exitcond59.not.i71 = icmp eq i32 %7, %lftr.wideiv58.i70
  br i1 %exitcond59.not.i71, label %ApplyGivens.exit72.loopexit, label %.lr.ph53.i67, !llvm.loop !0

ApplyGivens.exit72.loopexit:                      ; preds = %.lr.ph53.i67
  %.pre = load double, ptr %i.a, align 8, !tbaa !13
  %.pre89 = load double, ptr %i.b, align 8, !tbaa !13
  br label %ApplyGivens.exit72

ApplyGivens.exit72:                               ; preds = %ApplyGivens.exit72.loopexit, %.lr.ph
  %13 = phi double [ %.pre89, %ApplyGivens.exit72.loopexit ], [ %i.dn, %.lr.ph ]
  %14 = phi double [ %.pre, %ApplyGivens.exit72.loopexit ], [ %i.dm, %.lr.ph ]
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %14, double noundef %13, i32 noundef %i.dh, i32 noundef %indvars) #5
  %i.fw = icmp slt i64 %indvars.iv.next81, %i.o
  %indvar.next100.a = add i64 %indvar99, 1
  br i1 %i.fw, label %.lr.ph, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %ApplyGivens.exit72, %ApplyGivens.exit.loopexit
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.fx = icmp slt i64 %indvars.iv.next84, %i.o
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br i1 %i.fx, label %.lr.ph.i, label %._crit_edge75, !llvm.loop !36

._crit_edge75:                                    ; preds = %._crit_edge, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fy = icmp sgt i64 %indvars.iv, 2
  %indvar.next = add i32 %indvar, 1
  %indvar.next102 = add i64 %indvar101, 1
  br i1 %i.fy, label %.preheader, label %._crit_edge77, !llvm.loop !37

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
!22 = !{i64 1591506610772493970}
!23 = !{!18}
!24 = !{!19}
!25 = distinct !{!25, i1 false, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !14, !15, !16}
!29 = distinct !{!29, !14, !15}
!30 = distinct !{!30, i1 false, !"LVerDomain"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !14, !15, !16}
!34 = distinct !{!34, !14, !15}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = !{i64 -7782910402512641237}
!39 = !{!26}
!40 = !{!27}
!41 = !{!31}
!42 = !{!32}
end_hunk_0
