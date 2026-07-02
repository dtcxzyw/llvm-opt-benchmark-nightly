inline.NumInlined: 28162
inline.NumDeleted: 8422
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d16ConstantFunctionES8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE:bb.a
bb.s:                                             ; preds = %bb.r
  %i.di = icmp eq ptr %i.db, null
  br i1 %i.di, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %i.dg, ptr %i.cn, align 8, !tbaa !6433
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44

bb.u:                                             ; preds = %bb.s
  %i.dj = icmp eq ptr %i.dh, null
  br i1 %i.dj, label %bb.v, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44

bb.v:                                             ; preds = %bb.u
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !6436
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44: ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %.promoted14.i.i.i.i.i45 = phi ptr [ %.promoted15.i.i.i.i.i41, %bb.q ], [ %.promoted15.i.i.i.i.i41, %bb.r ], [ %i.dg, %bb.t ], [ %.promoted15.i.i.i.i.i41, %bb.u ], [ %.promoted15.i.i.i.i.i41, %bb.v ] ; 2 uses
  %i.dk = phi ptr [ %i.db, %bb.q ], [ %i.db, %bb.r ], [ %i.dg, %bb.t ], [ %i.db, %bb.u ], [ %i.db, %bb.v ]
  %indvars.iv.next.i.i.i.i.i46 = add nuw nsw i64 %indvars.iv.i.i.i.i.i40, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i47 = icmp eq i64 %indvars.iv.next.i.i.i.i.i46, %wide.trip.count.i.i.i.i.i36
  br i1 %exitcond.not.i.i.i.i.i47, label %._crit_edge.i.i.i.i.i48, label %bb.q, !llvm.loop !6437

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51: ; preds = %._crit_edge.i.i.i.i.i48, %.preheader.lr.ph.i.i.i.i.i32, %bb.p, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d16ConstantFunctionESB_EN3CFL10CflFunctorILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !6431 ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not35 = icmp sgt i32 %i.e, %i.m
  br i1 %.not35, label %._crit_edge38.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2332 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2332, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge38.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !6429 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !859  ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 128      ; 3 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6419
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.ae = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.ad ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2989 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6419
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2989 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2989 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 116 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 144 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2989 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 204 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 208
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !6416
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !6419
  %i.bf = load i64, ptr %i.s, align 8, !tbaa !6415
  %i.bg = getelementptr inbounds [88 x i8], ptr %i.be, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2989 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 28 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = zext i32 %i.a to i64                    ; 4 uses
  %i.bm = add i32 %i.g, %i.a
  %i.bn = add i32 %i.i, %i.c
  %i.bo = add i32 %i.k, %i.e
  %i.bp = add i32 %i.g, -1
  %i.bq = load i32, ptr %i.ah, align 4, !tbaa !4  ; 5 uses
  %i.br = load i32, ptr %i.ai, align 8, !tbaa !4  ; 5 uses
  %i.bs = load <2 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.bt = load i32, ptr %i.ar, align 8, !tbaa !4  ; 4 uses
  %i.bu = load i32, ptr %i.aq, align 4, !tbaa !4  ; 4 uses
  %i.bv = load <2 x i32>, ptr %i.av, align 4, !tbaa !4 ; 2 uses
  %i.bw = load <2 x i32>, ptr %i.ba, align 4, !tbaa !4 ; 2 uses
  %i.bx = load <2 x i32>, ptr %i.bj, align 4, !tbaa !4 ; 2 uses
  %i.by = load i32, ptr %i.bk, align 8, !tbaa !4  ; 4 uses
  %i.bz = load i32, ptr %i.bj, align 4, !tbaa !4  ; 4 uses
  %i.ca = mul i32 %i.e, %i.by
  %i.cb = add i32 %i.a, %i.ca
  %i.cc = mul i32 %i.c, %i.bz
  %i.cd = add i32 %i.cb, %i.cc
  %i.ce = mul i32 %i.e, %i.br
  %i.cf = add i32 %i.a, %i.ce
  %i.cg = mul i32 %i.c, %i.bq
  %i.ch = add i32 %i.cf, %i.cg                    ; 2 uses
  %i.ci = add i32 %i.ch, 1
  %i.cj = mul i32 %i.e, %i.bt
  %i.ck = add i32 %i.a, %i.cj
  %i.cl = mul i32 %i.c, %i.bu
  %i.cm = add i32 %i.ck, %i.cl
  %i.cn = add i32 %i.e, 1
  %i.co = add i32 %i.c, 1
  %i.cp = load i32, ptr %i.aw, align 8, !tbaa !4  ; 4 uses
  %i.cq = load i32, ptr %i.av, align 4, !tbaa !4  ; 7 uses
  %i.cr = load i32, ptr %i.bb, align 8, !tbaa !4  ; 7 uses
  %i.cs = load i32, ptr %i.ba, align 4, !tbaa !4  ; 4 uses
  %i.ct = mul i32 %i.e, %i.cr
  %i.cu = mul i32 %i.c, %i.cq
  %i.cv = mul i32 %i.cr, %i.cn
  %i.cw = mul i32 %i.c, %i.cs                     ; 2 uses
  %i.cx = mul i32 %i.cq, %i.co
  %i.cy = mul i32 %i.e, %i.cp
  %i.cz = add i32 %i.a, %i.cw
  %i.da = add i32 %i.a, %i.ct
  %i.db = add i32 %i.a, %i.cy                     ; 2 uses
  %i.dc = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %i.dd = insertelement <4 x i32> %i.dc, i32 %i.db, i64 1
  %i.de = insertelement <4 x i32> %i.dd, i32 %i.da, i64 2
  %i.df = insertelement <4 x i32> %i.de, i32 %i.cz, i64 3
  %i.dg = insertelement <4 x i32> poison, i32 %i.db, i64 0
  %i.dh = insertelement <4 x i32> %i.dg, i32 %i.cx, i64 1
  %i.di = insertelement <4 x i32> %i.dh, i32 %i.cw, i64 2
  %i.dj = insertelement <4 x i32> %i.di, i32 %i.cv, i64 3
  %i.dk = add <4 x i32> %i.df, %i.dj
  %scevgep = getelementptr i8, ptr %i.y, i64 152
  %i.dl = mul i32 %i.e, %i.by
  %i.dm = add i32 %i.a, %i.dl
  %i.dn = mul i32 %i.c, %i.bz
  %i.do = add i32 %i.dm, %i.dn
  %i.dp = add i32 %i.g, -1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 8                ; 8 uses
  %scevgep57 = getelementptr i8, ptr %i.bi, i64 %i.ds
  %scevgep59 = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.dt = mul i32 %i.e, %i.br
  %i.du = add i32 %i.a, %i.dt
  %i.dv = mul i32 %i.c, %i.bq
  %i.dw = add i32 %i.du, %i.dv                    ; 2 uses
  %i.dx = add i32 %i.dw, 1
  %scevgep61 = getelementptr i8, ptr %i.ag, i64 %i.ds
  %scevgep64 = getelementptr i8, ptr %i.ag, i64 %i.ds
  %i.dy = mul i32 %i.e, %i.bt
  %i.dz = add i32 %i.a, %i.dy
  %i.ea = mul i32 %i.c, %i.bu
  %i.eb = add i32 %i.dz, %i.ea
  %scevgep67 = getelementptr i8, ptr %i.ap, i64 %i.ds
  %i.ec = mul i32 %i.e, %i.cp
  %i.ed = add i32 %i.a, %i.ec                     ; 2 uses
  %i.ee = add i32 %i.c, 1
  %i.ef = mul i32 %i.cq, %i.ee
  %i.eg = add i32 %i.ed, %i.ef
  %scevgep70 = getelementptr i8, ptr %i.au, i64 %i.ds
  %i.eh = mul i32 %i.c, %i.cq
  %i.ei = add i32 %i.ed, %i.eh
  %scevgep73 = getelementptr i8, ptr %i.au, i64 %i.ds
  %i.ej = mul i32 %i.c, %i.cs                     ; 2 uses
  %i.ek = add i32 %i.a, %i.ej
  %i.el = add i32 %i.e, 1
  %i.em = mul i32 %i.cr, %i.el
  %i.en = add i32 %i.ek, %i.em
  %scevgep76 = getelementptr i8, ptr %i.az, i64 %i.ds
  %i.eo = mul i32 %i.e, %i.cr
  %i.ep = add i32 %i.a, %i.eo
  %i.eq = add i32 %i.ep, %i.ej
  %scevgep79 = getelementptr i8, ptr %i.az, i64 %i.ds
  %2 = add i32 %i.g, -1                           ; 2 uses
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.er = insertelement <8 x i32> poison, i32 %i.cd, i64 0
  %i.es = insertelement <8 x i32> %i.er, i32 %i.ch, i64 1
  %i.et = insertelement <8 x i32> %i.es, i32 %i.ci, i64 2
  %i.eu = insertelement <8 x i32> %i.et, i32 %i.cm, i64 3
  %i.ev = shufflevector <2 x i32> %i.bv, <2 x i32> %i.bw, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 1, i32 3, i32 3>
  %i.ew = insertelement <8 x i32> %i.ev, i32 %i.br, i64 1
  %i.ex = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ex, <8 x i32> <i32 9, i32 1, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %i.ez = shufflevector <2 x i32> %i.bs, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.fa = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x i32> %i.eu, <8 x i32> %i.fa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.fc = shufflevector <8 x i32> %i.ey, <8 x i32> %i.ez, <8 x i32> <i32 0, i32 1, i32 1, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.fd = shufflevector <2 x i32> %i.bv, <2 x i32> %i.bw, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 0, i32 2, i32 2>
  %i.fe = insertelement <8 x i32> %i.fd, i32 %i.bq, i64 1
  %i.ff = insertelement <8 x i32> poison, i32 %i.bp, i64 0
  %i.fg = shufflevector <8 x i32> %i.ff, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.fh = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fe, <8 x i32> <i32 0, i32 9, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15>
  %min.iters.check = icmp ult i32 %2, 3
  %i.fj = shufflevector <8 x i32> %i.fi, <8 x i32> %i.ez, <8 x i32> <i32 0, i32 1, i32 1, i32 8, i32 4, i32 5, i32 6, i32 7>
  %invariant.op126 = add <8 x i32> %i.fb, %i.fg
  %n.vec = and i64 %4, 8589934590                 ; 3 uses
  %i.fk = add nuw nsw i64 %n.vec, %i.bl
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge34
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge34 ] ; 7 uses
  %.02236 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.gc, %._crit_edge34 ] ; 6 uses
  %i.fl = mul i32 %i.by, %indvar
  %i.fm = add i32 %i.do, %i.fl
  %i.fn = mul i32 %i.br, %indvar                  ; 2 uses
  %i.fo = add i32 %i.dx, %i.fn
  %i.fp = add i32 %i.dw, %i.fn
  %i.fq = mul i32 %i.bt, %indvar
  %i.fr = add i32 %i.eb, %i.fq
  %i.fs = mul i32 %i.cp, %indvar                  ; 2 uses
  %i.ft = add i32 %i.eg, %i.fs
  %i.fu = add i32 %i.ei, %i.fs
  %i.fv = mul i32 %i.cr, %indvar                  ; 2 uses
  %i.fw = add i32 %i.en, %i.fv
  %i.fx = add i32 %i.eq, %i.fv
  %i.fy = insertelement <8 x i32> poison, i32 %indvar, i64 0
  %i.fz = shufflevector <8 x i32> %i.fy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ga = mul <8 x i32> %i.fc, %i.fz              ; 2 uses
  %i.gb = add <8 x i32> %i.fb, %i.ga
  %i.gc = add i32 %.02236, 1                      ; 3 uses
  %i.gd = mul nsw i32 %i.br, %.02236
  %i.ge = mul nsw i32 %i.bt, %.02236
  %i.gf = mul nsw i32 %i.cp, %.02236              ; 2 uses
  %i.gg = mul nsw i32 %i.cr, %.02236              ; 2 uses
  %i.gh = mul nsw i32 %i.cr, %i.gc                ; 2 uses
  %i.gi = mul nsw i32 %i.by, %.02236
  %invariant.op124.reass = add <8 x i32> %i.ga, %invariant.op126
  br label %.preheader

._crit_edge38.split:                              ; preds = %._crit_edge34, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar47 = phi i32 [ 0, %.preheader25 ], [ %indvar.next48, %._crit_edge ] ; 7 uses
  %.02133 = phi i32 [ %i.c, %.preheader25 ], [ %i.hp, %._crit_edge ] ; 6 uses
  %i.gj = mul i32 %i.bz, %indvar47
  %i.gk = add i32 %i.fm, %i.gj
  %i.gl = sext i32 %i.gk to i64
  %i.gm = shl nsw i64 %i.gl, 3                    ; 2 uses
  %scevgep56 = getelementptr i8, ptr %i.bi, i64 %i.gm ; 9 uses
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.gm ; 9 uses
  %i.gn = mul i32 %i.bq, %indvar47                ; 2 uses
  %i.go = add i32 %i.fo, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = shl nsw i64 %i.gp, 3                    ; 2 uses
  %scevgep60 = getelementptr i8, ptr %i.ag, i64 %i.gq
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.gq
  %i.gr = add i32 %i.fp, %i.gn
  %i.gs = sext i32 %i.gr to i64
  %i.gt = shl nsw i64 %i.gs, 3                    ; 2 uses
  %scevgep63 = getelementptr i8, ptr %i.ag, i64 %i.gt
  %scevgep65 = getelementptr i8, ptr %scevgep64, i64 %i.gt
  %i.gu = mul i32 %i.bu, %indvar47
  %i.gv = add i32 %i.fr, %i.gu
  %i.gw = sext i32 %i.gv to i64
  %i.gx = shl nsw i64 %i.gw, 3                    ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.ap, i64 %i.gx
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.gx
  %i.gy = mul i32 %i.cq, %indvar47                ; 2 uses
  %i.gz = add i32 %i.ft, %i.gy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 3                    ; 2 uses
  %scevgep69 = getelementptr i8, ptr %i.au, i64 %i.hb
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %i.hb
  %i.hc = add i32 %i.fu, %i.gy
  %i.hd = sext i32 %i.hc to i64
  %i.he = shl nsw i64 %i.hd, 3                    ; 2 uses
  %scevgep72 = getelementptr i8, ptr %i.au, i64 %i.he
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.he
  %i.hf = mul i32 %i.cs, %indvar47                ; 2 uses
  %i.hg = add i32 %i.fw, %i.hf
  %i.hh = sext i32 %i.hg to i64
  %i.hi = shl nsw i64 %i.hh, 3                    ; 2 uses
  %scevgep75 = getelementptr i8, ptr %i.az, i64 %i.hi
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.hi
  %i.hj = add i32 %i.fx, %i.hf
  %i.hk = sext i32 %i.hj to i64
  %i.hl = shl nsw i64 %i.hk, 3                    ; 2 uses
  %scevgep78 = getelementptr i8, ptr %i.az, i64 %i.hl
  %scevgep80 = getelementptr i8, ptr %scevgep79, i64 %i.hl
  %i.hm = mul nsw i32 %i.bq, %.02133
  %invariant.op = add i32 %i.hm, %i.gd            ; 2 uses
  %i.hn = mul nsw i32 %i.bu, %.02133
  %invariant.op28 = add i32 %i.hn, %i.ge          ; 2 uses
  %i.ho = mul nsw i32 %i.cq, %.02133              ; 2 uses
  %i.hp = add i32 %.02133, 1                      ; 3 uses
  %i.hq = mul nsw i32 %i.cq, %i.hp                ; 2 uses
  %i.hr = mul nsw i32 %i.cs, %.02133              ; 2 uses
  %i.hs = mul nsw i32 %i.bz, %.02133
  %invariant.op30 = add i32 %i.hs, %i.gi          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ht = insertelement <8 x i32> poison, i32 %indvar47, i64 0
  %i.hu = shufflevector <8 x i32> %i.ht, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.hv = mul <8 x i32> %i.fj, %i.hu              ; 2 uses
  %i.hw = add <8 x i32> %i.gb, %i.hv
  %.reass125 = add <8 x i32> %i.hv, %invariant.op124.reass
  %i.hx = icmp slt <8 x i32> %.reass125, %i.hw
  %i.hy = bitcast <8 x i1> %i.hx to i8
  %.not = icmp eq i8 %i.hy, 0
  br i1 %.not, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.z, %scevgep58
  %bound1 = icmp ult ptr %scevgep56, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound081 = icmp ult ptr %.sroa.4.0.copyload, %scevgep58
  %bound182 = icmp ult ptr %scevgep56, %scevgep59
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx = or i1 %found.conflict, %found.conflict83
  %bound084 = icmp ult ptr %scevgep56, %scevgep62
  %bound185 = icmp ult ptr %scevgep60, %scevgep58
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %conflict.rdx, %found.conflict86
  %bound088 = icmp ult ptr %scevgep56, %scevgep65
  %bound189 = icmp ult ptr %scevgep63, %scevgep58
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx87, %found.conflict90
  %bound092 = icmp ult ptr %scevgep56, %scevgep68
  %bound193 = icmp ult ptr %scevgep66, %scevgep58
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx91, %found.conflict94
  %bound096 = icmp ult ptr %scevgep56, %scevgep71
  %bound197 = icmp ult ptr %scevgep69, %scevgep58
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %scevgep56, %scevgep74
  %bound1101 = icmp ult ptr %scevgep72, %scevgep58
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %scevgep56, %scevgep77
  %bound1105 = icmp ult ptr %scevgep75, %scevgep58
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %scevgep56, %scevgep80
  %bound1109 = icmp ult ptr %scevgep78, %scevgep58
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  br i1 %conflict.rdx111, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hz = load double, ptr %i.z, align 8, !tbaa !247, !alias.scope !6438, !noalias !6441
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hz, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = load double, ptr %i.as, align 8, !tbaa !247, !alias.scope !6438, !noalias !6441
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %i.ia, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = load double, ptr %i.ax, align 8, !tbaa !247, !alias.scope !6438, !noalias !6441
  %broadcast.splatinsert122 = insertelement <2 x double> poison, double %i.ib, i64 0
  %broadcast.splat123 = shufflevector <2 x double> %broadcast.splatinsert122, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !6443, !alias.scope !6445, !noalias !6441
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %i.ic, i64 0
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.id = trunc i64 %index to i32
  %i.ie = add i32 %i.a, %i.id                     ; 5 uses
  %i.if = add i32 %invariant.op, %i.ie            ; 2 uses
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ig
  %wide.load = load <2 x double>, ptr %i.ih, align 8, !tbaa !247, !alias.scope !6447
  %i.ii = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load) ; 2 uses
  %i.ij = add i32 %i.if, 1
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ik
  %wide.load112 = load <2 x double>, ptr %i.il, align 8, !tbaa !247, !alias.scope !6449
  %i.im = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load112) ; 2 uses
  %i.in = fcmp olt <2 x double> %i.ii, %i.im
  %i.io = select <2 x i1> %i.in, <2 x double> %i.im, <2 x double> %i.ii
  %i.ip = add i32 %invariant.op28, %i.ie
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.iq
  %wide.load113 = load <2 x double>, ptr %i.ir, align 8, !tbaa !247, !alias.scope !6451 ; 3 uses
  %i.is = fadd <2 x double> %i.io, %wide.load113
  %i.it = fdiv <2 x double> %broadcast.splat, %i.is ; 2 uses
  %i.iu = add i32 %i.gf, %i.ie                    ; 2 uses
  %i.iv = add i32 %i.iu, %i.ho
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.iw
  %wide.load114 = load <2 x double>, ptr %i.ix, align 8, !tbaa !247, !alias.scope !6453
  %i.iy = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load114) ; 2 uses
  %i.iz = add i32 %i.iu, %i.hq
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ja
  %wide.load115 = load <2 x double>, ptr %i.jb, align 8, !tbaa !247, !alias.scope !6455
  %i.jc = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load115) ; 2 uses
  %i.jd = fcmp olt <2 x double> %i.iy, %i.jc
  %i.je = select <2 x i1> %i.jd, <2 x double> %i.jc, <2 x double> %i.iy
end_hunk_0
begin_hunk_1_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EN6Forgas5CentYILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  %i.ag = add i32 %i.ad, %i.y
  %reass.sub.i.2.i.i = sub i32 %i.ag, %i.ab
  %i.ah = add i32 %reass.sub.i.2.i.i, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.ab, ptr %i.ai, align 4, !tbaa !4, !alias.scope !12314
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !4, !alias.scope !12314
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @_ZNK9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EclI8IntervalILi3EEEEN5View1IS9_T_E6Type_tERKSE_(ptr dead_on_unwind nonnull writable sret(%struct.MultiArg4.666) align 8 %8, ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 4 dereferenceable(24) %7)
  %i.ak = load i64, ptr %1, align 8
  %i.al = call noalias noundef nonnull dereferenceable(720) ptr @_Znwm(i64 noundef 720) #45 ; 19 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !2607
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ap, align 8, !tbaa !2854
  %i.aq = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2856
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas5CentYILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(576) %i.as, ptr noundef nonnull align 8 dereferenceable(576) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 608
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 616
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 620
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 624
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 628
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 632
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 636
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 640 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 680
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %i.al, ptr %5, align 8, !tbaa !6328
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %5, ptr %6, align 8, !tbaa !6330
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #47, !inline_history !12315
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #47, !inline_history !12315
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #47
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #47
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bl) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas5CentYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas5CentYILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %1, ptr %2, align 8, !tbaa !6427
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6187 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #47
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.x) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas5CentYILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas5CentYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 720) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas5CentYILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !4    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.e = load i32, ptr %i.d, align 8, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.g = load i32, ptr %i.f, align 8, !tbaa !4    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = add i32 %i.i, %i.g                       ; 2 uses
  %i.k = add i32 %i.j, -1
  %.not31.i.i.i = icmp sgt i32 %i.g, %i.k
  br i1 %.not31.i.i.i, label %_ZNK15EvaluateLocLoopIN6Forgas5CentYILi3EEELi3EEclI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESE_SE_SE_EEEvRT_.exit, label %.preheader25.lr.ph.i.i.i

.preheader25.lr.ph.i.i.i:                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4    ; 5 uses
  %i.p = add i32 %i.m, %i.e                       ; 2 uses
  %i.q = add i32 %i.p, -1
  %i.r = add i32 %i.o, %i.c                       ; 2 uses
  %i.s = add i32 %i.r, -1
  %.not2328.i.i.i = icmp sgt i32 %i.e, %i.q
  %.not2426.i.i.i = icmp sgt i32 %i.c, %i.s
  %brmerge.i.i.i = select i1 %.not2328.i.i.i, i1 true, i1 %.not2426.i.i.i
  br i1 %brmerge.i.i.i, label %_ZNK15EvaluateLocLoopIN6Forgas5CentYILi3EEELi3EEclI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESE_SE_SE_EEEvRT_.exit, label %.preheader25.lr.ph.split.split.i.i.i

.preheader25.lr.ph.split.split.i.i.i:             ; preds = %.preheader25.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !859, !noalias !12316 ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 112      ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 136 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4, !noalias !12316
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !6419
  %i.ae = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.af = getelementptr inbounds [88 x i8], ptr %i.ad, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2989 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4  ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4  ; 4 uses
  %i.am = zext i32 %i.c to i64                    ; 4 uses
  %i.an = add i32 %i.o, -1                        ; 2 uses
  %i.ao = mul i32 %i.g, %i.al
  %i.ap = add i32 %i.c, %i.ao
  %i.aq = mul i32 %i.e, %i.aj
  %i.ar = add i32 %i.ap, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.an to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %scevgep7 = getelementptr i8, ptr %i.au, i64 8
  %scevgep9 = getelementptr i8, ptr %i.w, i64 144
  %i.av = add i32 %i.o, -1                        ; 2 uses
  %1 = zext i32 %i.av to i64
  %2 = add nuw nsw i64 %1, 1                      ; 2 uses
  %3 = add i32 %i.o, %i.c
  %4 = add i32 %i.o, %i.c
  %min.iters.check = icmp ult i32 %i.av, 3
  %n.vec = and i64 %2, 8589934588                 ; 3 uses
  %i.aw = add nuw nsw i64 %n.vec, %i.am
  %cmp.n = icmp eq i64 %2, %n.vec
  br label %.preheader25.i.i.i

.preheader25.i.i.i:                               ; preds = %._crit_edge30.i.i.i, %.preheader25.lr.ph.split.split.i.i.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge30.i.i.i ], [ 0, %.preheader25.lr.ph.split.split.i.i.i ] ; 3 uses
  %.02232.i.i.i = phi i32 [ %i.cn, %._crit_edge30.i.i.i ], [ %i.g, %.preheader25.lr.ph.split.split.i.i.i ] ; 2 uses
  %i.ax = mul i32 %i.al, %indvar
  %i.ay = add i32 %i.ar, %i.ax
  %i.az = mul i32 %i.al, %indvar
  %i.ba = add i32 %i.ar, %i.az
  %i.bb = mul nsw i32 %.02232.i.i.i, %i.al
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader25.i.i.i
  %indvar5 = phi i32 [ %indvar.next6, %._crit_edge.i.i.i ], [ 0, %.preheader25.i.i.i ] ; 3 uses
  %.02129.i.i.i = phi i32 [ %i.co, %._crit_edge.i.i.i ], [ %i.e, %.preheader25.i.i.i ] ; 3 uses
  %i.bc = mul i32 %i.aj, %indvar5
  %i.bd = add i32 %i.ay, %i.bc
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ah, i64 %i.bf ; 2 uses
  %scevgep8 = getelementptr i8, ptr %scevgep7, i64 %i.bf ; 2 uses
  %i.bg = sub nsw i32 %.02129.i.i.i, %i.aa
  %i.bh = sitofp i32 %i.bg to double              ; 4 uses
  %i.bi = mul nsw i32 %.02129.i.i.i, %i.aj
  %invariant.op.i.i.i = add i32 %i.bi, %i.bb      ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i.i.i
  %i.bj = mul i32 %i.aj, %indvar5
  %i.bk = add i32 %i.ba, %i.bj                    ; 2 uses
  %i.bl = add i32 %i.bk, %i.an
  %i.bm = icmp slt i32 %i.bl, %i.bk
  br i1 %i.bm, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.a, %scevgep8
  %bound1 = icmp ult ptr %scevgep, %i.b
  %found.conflict = and i1 %bound0, %bound1
  %bound010 = icmp ult ptr %i.x, %scevgep8
  %bound111 = icmp ult ptr %scevgep, %scevgep9
  %found.conflict12 = and i1 %bound010, %bound111
  %conflict.rdx = or i1 %found.conflict, %found.conflict12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bn = load <2 x double>, ptr %i.a, align 8
  %broadcast.splat14 = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = fneg <2 x double> %broadcast.splat14
  %i.bp = fmul <2 x double> %broadcast.splat14, %i.bo
  %i.bq = load double, ptr %i.x, align 8, !tbaa !247, !alias.scope !12319, !noalias !12322
  %i.br = load double, ptr %i.y, align 8, !tbaa !247, !alias.scope !12319, !noalias !12322
  %.scalar = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bh, double %i.bq)
  %i.bs = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x double> %i.bp, %i.bt          ; 2 uses
  %invariant.op = add i32 %i.c, %invariant.op.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = trunc i64 %index to i32
  %.reass = add i32 %i.bv, %invariant.op
  %i.bw = sext i32 %.reass to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x double> %i.bu, ptr %i.bx, align 8, !tbaa !247, !alias.scope !12324
  store <2 x double> %i.bu, ptr %i.by, align 8, !tbaa !247, !alias.scope !12324
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !12325

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %vector.scevcheck ], [ %i.am, %.preheader.i.i.i ], [ %i.aw, %middle.block ] ; 4 uses
  %i.ca = trunc i64 %indvars.iv.i.i.i.ph to i32   ; 2 uses
  %i.cb = sub i32 %3, %i.ca
  %.neg = add i32 %i.ca, 1
  %xtraiter = and i32 %i.cb, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cc = load double, ptr %i.a, align 8, !tbaa !12326 ; 2 uses
  %i.cd = fneg double %i.cc
  %i.ce = fmul double %i.cc, %i.cd
  %i.cf = load double, ptr %i.x, align 8, !tbaa !247, !noalias !12316
  %i.cg = load double, ptr %i.y, align 8, !tbaa !247, !noalias !12316
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.bh, double %i.cf)
  %i.ci = fmul double %i.ce, %i.ch
  %i.cj = trunc i64 %indvars.iv.i.i.i.ph to i32
  %.reass.i.i.i.prol = add i32 %invariant.op.i.i.i, %i.cj
  %i.ck = sext i32 %.reass.i.i.i.prol to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ck
  store double %i.ci, ptr %i.cl, align 8, !tbaa !247
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.cm = icmp eq i32 %4, %.neg
  br i1 %i.cm, label %._crit_edge.i.i.i, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op19 = add i32 1, %invariant.op.i.i.i
  br label %scalar.ph

._crit_edge30.i.i.i:                              ; preds = %._crit_edge.i.i.i
  %i.cn = add i32 %.02232.i.i.i, 1                ; 2 uses
  %exitcond38.not.i.i.i = icmp eq i32 %i.cn, %i.j
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond38.not.i.i.i, label %_ZNK15EvaluateLocLoopIN6Forgas5CentYILi3EEELi3EEclI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESE_SE_SE_EEEvRT_.exit, label %.preheader25.i.i.i, !llvm.loop !12328

._crit_edge.i.i.i:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.co = add i32 %.02129.i.i.i, 1                ; 2 uses
  %exitcond37.not.i.i.i = icmp eq i32 %i.co, %i.p
  %indvar.next6 = add i32 %indvar5, 1
  br i1 %exitcond37.not.i.i.i, label %._crit_edge30.i.i.i, label %.preheader.i.i.i, !llvm.loop !12329

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.i.i.i.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.i.i.i.1, %scalar.ph ] ; 3 uses
  %i.cp = load double, ptr %i.a, align 8, !tbaa !12326 ; 2 uses
  %i.cq = fneg double %i.cp
  %i.cr = fmul double %i.cp, %i.cq
  %i.cs = load double, ptr %i.x, align 8, !tbaa !247, !noalias !12316
  %i.ct = load double, ptr %i.y, align 8, !tbaa !247, !noalias !12316
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.bh, double %i.cs)
  %i.cv = fmul double %i.cr, %i.cu
  %i.cw = trunc i64 %indvars.iv.i.i.i to i32
  %.reass.i.i.i = add i32 %invariant.op.i.i.i, %i.cw
  %i.cx = sext i32 %.reass.i.i.i to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.cx
  store double %i.cv, ptr %i.cy, align 8, !tbaa !247
  %i.cz = load double, ptr %i.a, align 8, !tbaa !12326 ; 2 uses
  %i.da = fneg double %i.cz
  %i.db = fmul double %i.cz, %i.da
  %i.dc = load double, ptr %i.x, align 8, !tbaa !247, !noalias !12316
  %i.dd = load double, ptr %i.y, align 8, !tbaa !247, !noalias !12316
  %i.de = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.bh, double %i.dc)
  %i.df = fmul double %i.db, %i.de
  %i.dg = trunc i64 %indvars.iv.i.i.i to i32
  %.reass.i.i.i.1.reass = add i32 %i.dg, %invariant.op19
  %i.dh = sext i32 %.reass.i.i.i.1.reass to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.dh
  store double %i.df, ptr %i.di, align 8, !tbaa !247
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %lftr.wideiv.i.i.i.1 = trunc i64 %indvars.iv.next.i.i.i.1 to i32
  %exitcond.not.i.i.i.1 = icmp eq i32 %i.r, %lftr.wideiv.i.i.i.1
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !12330

_ZNK15EvaluateLocLoopIN6Forgas5CentYILi3EEELi3EEclI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESE_SE_SE_EEEvRT_.exit: ; preds = %._crit_edge30.i.i.i, %bb.a, %.preheader25.lr.ph.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9MultiArg7I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_SD_S0_IS6_d16ConstantFunctionES0_IS6_4ZeroIdESE_ESF_EC2ERKSD_SL_SL_SL_RKSF_RKSI_SN_(ptr noundef nonnull align 8 dereferenceable(1008) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(144) %7) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !894
  store i32 %i.a, ptr %0, align 8, !tbaa !894
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1059
  store i32 %i.f, ptr %i.d, align 8, !tbaa !1059
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1063
  store i64 %i.i, ptr %i.g, align 8, !tbaa !1063
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1064 ; 4 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !1064
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !837
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !837
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !4
  store i32 %i.q, ptr %i.o, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !4
  store i32 %i.w, ptr %i.u, align 8, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !4
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !1065
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !859 ; 4 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !859
  %.not.i.i8.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i8.i.i, label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !837
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !837
  br label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit

_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit: ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = load i32, ptr %2, align 8, !tbaa !894
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !894
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1059
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !1059
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1063
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !1063
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1064 ; 4 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !1064
  %.not.i.i.i.i8 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i8, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i9, label %bb.d

bb.d:                                             ; preds = %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !837
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !837
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i9

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i9: ; preds = %bb.d, %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !4
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !4
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !tbaa.struct !1065
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !859 ; 4 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !859
  %.not.i.i8.i.i10 = icmp eq ptr %i.by, null
  br i1 %.not.i.i8.i.i10, label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit11, label %bb.e

bb.e:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i9
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !837
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !837
  br label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit11

_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit11: ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i9, %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cc = load i32, ptr %3, align 8, !tbaa !894
  store i32 %i.cc, ptr %i.cb, align 8, !tbaa !894
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(56) %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 352
end_hunk_1
begin_hunk_2_@_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg7I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_S3_IS9_d16ConstantFunctionES3_IS9_4ZeroIdESC_ESD_EN6Forgas6TGuessILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE:bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not39 = icmp sgt i32 %i.e, %i.m
  br i1 %.not39, label %._crit_edge42.split, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2336 = icmp sgt i32 %i.c, %i.o
  %.not2428 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2336, i1 true, i1 %.not2428
  br i1 %brmerge, label %._crit_edge42.split, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !12567 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 944
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 936
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 656
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 648
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !6416
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !6419
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !6415
  %i.ai = getelementptr inbounds [88 x i8], ptr %i.ag, i64 %i.ah ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2989 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !859 ; 4 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 128    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2989 ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 116
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 136 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 248
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2989 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 204
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 208
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 144 ; 2 uses
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !6416
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !6419
  %i.bc = load i64, ptr %i.aa, align 8, !tbaa !6415
  %i.bd = getelementptr inbounds [88 x i8], ptr %i.bb, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2989 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !6416
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !6419
  %i.bl = load i64, ptr %i.y, align 8, !tbaa !6415
  %i.bm = getelementptr inbounds [88 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2989 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.br = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !6419
  %i.bu = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.bv = getelementptr inbounds [88 x i8], ptr %i.bt, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2989 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4  ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !4  ; 5 uses
  %i.cc = load ptr, ptr %i.t, align 8, !tbaa !1182
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1185 ; 2 uses
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !1188 ; 2 uses
  %i.cg = getelementptr [56 x i8], ptr %i.ce, i64 %i.cf ; 3 uses
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !1182
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1185 ; 2 uses
  %i.ck = load i64, ptr %i.s, align 8, !tbaa !1188 ; 2 uses
  %i.cl = getelementptr [56 x i8], ptr %i.cj, i64 %i.ck ; 3 uses
  %i.cm = zext i32 %i.a to i64                    ; 4 uses
  %i.cn = add i32 %i.g, %i.a
  %i.co = add i32 %i.i, %i.c
  %i.cp = add i32 %i.k, %i.e
  %i.cq = add i32 %i.g, -1                        ; 2 uses
  %i.cr = add i32 %i.c, 1
  %i.cs = load i32, ptr %i.al, align 4, !tbaa !4  ; 5 uses
  %i.ct = load i32, ptr %i.am, align 8, !tbaa !4  ; 5 uses
  %i.cu = mul i32 %i.e, %i.ct
  %i.cv = add i32 %i.a, %i.cu
  %i.cw = mul i32 %i.c, %i.cs
  %i.cx = load i32, ptr %i.bq, align 8, !tbaa !4  ; 5 uses
  %i.cy = load i32, ptr %i.bp, align 4, !tbaa !4  ; 5 uses
  %i.cz = mul i32 %i.e, %i.cx
  %i.da = add i32 %i.a, %i.cz
  %i.db = mul i32 %i.c, %i.cy
  %i.dc = add i32 %i.e, 1
  %i.dd = load i32, ptr %i.ax, align 8, !tbaa !4  ; 8 uses
  %i.de = load i32, ptr %i.aw, align 4, !tbaa !4  ; 5 uses
  %i.df = load i32, ptr %i.bh, align 8, !tbaa !4  ; 5 uses
  %i.dg = load i32, ptr %i.bg, align 4, !tbaa !4  ; 5 uses
  %i.dh = load i32, ptr %i.as, align 8, !tbaa !4  ; 5 uses
  %i.di = load i32, ptr %i.ar, align 4, !tbaa !4  ; 8 uses
  %i.dj = mul i32 %i.di, %i.cr
  %i.dk = mul i32 %i.e, %i.df
  %i.dl = mul i32 %i.e, %i.dd
  %i.dm = mul i32 %i.e, %i.dh
  %i.dn = mul i32 %i.c, %i.dg
  %i.do = mul i32 %i.c, %i.de                     ; 2 uses
  %i.dp = mul i32 %i.dd, %i.dc
  %i.dq = mul i32 %i.c, %i.di
  %i.dr = add i32 %i.a, %i.dk
  %i.ds = add i32 %i.a, %i.dl
  %i.dt = add i32 %i.a, %i.do
  %i.du = add i32 %i.a, %i.dm                     ; 2 uses
  %i.dv = add i32 %i.da, %i.db
  %i.dw = add i32 %i.cv, %i.cw                    ; 2 uses
  %i.dx = add i32 %i.dw, 1
  %i.dy = add i32 %i.du, %i.dj
  %i.dz = add i32 %i.du, %i.dq
  %i.ea = add i32 %i.dt, %i.dp
  %i.eb = add i32 %i.ds, %i.do
  %i.ec = add i32 %i.dr, %i.dn
  %i.ed = mul i32 %i.e, %i.cb
  %i.ee = add i32 %i.a, %i.ed
  %i.ef = mul i32 %i.c, %i.bz
  %i.eg = add i32 %i.ee, %i.ef
  %i.eh = mul i32 %i.e, %i.cx
  %i.ei = add i32 %i.a, %i.eh
  %i.ej = mul i32 %i.c, %i.cy
  %i.ek = add i32 %i.ei, %i.ej
  %i.el = add i32 %i.g, -1
  %i.em = zext i32 %i.el to i64
  %i.en = shl nuw nsw i64 %i.em, 3
  %i.eo = add nuw nsw i64 %i.en, 8                ; 9 uses
  %scevgep62 = getelementptr i8, ptr %i.bo, i64 %i.eo
  %i.ep = mul i64 %i.cf, 56
  %i.eq = getelementptr i8, ptr %i.ce, i64 %i.ep
  %i.er = mul i64 %i.ck, 56
  %i.es = getelementptr i8, ptr %i.cj, i64 %i.er
  %i.et = insertelement <4 x ptr> poison, ptr %i.an, i64 0
  %i.eu = insertelement <4 x ptr> %i.et, ptr %.sroa.4.0.copyload, i64 1
  %i.ev = insertelement <4 x ptr> %i.eu, ptr %i.eq, i64 2
  %i.ew = insertelement <4 x ptr> %i.ev, ptr %i.es, i64 3 ; 2 uses
  %i.ex = getelementptr i8, <4 x ptr> %i.ew, <4 x i64> <i64 152, i64 8, i64 8, i64 8>
  %i.ey = mul i32 %i.e, %i.ct
  %i.ez = add i32 %i.a, %i.ey
  %i.fa = mul i32 %i.c, %i.cs
  %i.fb = add i32 %i.ez, %i.fa                    ; 2 uses
  %scevgep68 = getelementptr i8, ptr %i.ak, i64 %i.eo
  %i.fc = add i32 %i.fb, 1
  %scevgep71 = getelementptr i8, ptr %i.ak, i64 %i.eo
  %i.fd = mul i32 %i.e, %i.dh
  %i.fe = add i32 %i.a, %i.fd                     ; 2 uses
  %i.ff = mul i32 %i.c, %i.di
  %i.fg = add i32 %i.fe, %i.ff
  %scevgep74 = getelementptr i8, ptr %i.aq, i64 %i.eo
  %i.fh = add i32 %i.c, 1
  %i.fi = mul i32 %i.di, %i.fh
  %i.fj = add i32 %i.fe, %i.fi
  %scevgep77 = getelementptr i8, ptr %i.aq, i64 %i.eo
  %i.fk = mul i32 %i.e, %i.dd
  %i.fl = add i32 %i.a, %i.fk
  %i.fm = mul i32 %i.c, %i.de                     ; 2 uses
  %i.fn = add i32 %i.fl, %i.fm
  %scevgep80 = getelementptr i8, ptr %i.av, i64 %i.eo
  %i.fo = add i32 %i.a, %i.fm
  %i.fp = add i32 %i.e, 1
  %i.fq = mul i32 %i.dd, %i.fp
  %i.fr = add i32 %i.fo, %i.fq
  %scevgep83 = getelementptr i8, ptr %i.av, i64 %i.eo
  %i.fs = mul i32 %i.e, %i.df
  %i.ft = add i32 %i.a, %i.fs
  %i.fu = mul i32 %i.c, %i.dg
  %i.fv = add i32 %i.ft, %i.fu
  %scevgep86 = getelementptr i8, ptr %i.bf, i64 %i.eo
  %i.fw = mul i32 %i.e, %i.cb
  %i.fx = add i32 %i.a, %i.fw
  %i.fy = mul i32 %i.c, %i.bz
  %i.fz = add i32 %i.fx, %i.fy
  %scevgep89 = getelementptr i8, ptr %i.bx, i64 %i.eo
  %2 = add i32 %i.g, -1                           ; 2 uses
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.ga = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %i.gb = insertelement <4 x i32> %i.ga, i32 %i.dx, i64 1
  %i.gc = insertelement <4 x i32> %i.gb, i32 %i.dw, i64 2
  %i.gd = insertelement <4 x i32> %i.gc, i32 %i.dy, i64 3
  %i.ge = insertelement <4 x i32> poison, i32 %i.dz, i64 0
  %i.gf = insertelement <4 x i32> %i.ge, i32 %i.ea, i64 1
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.eb, i64 2
  %i.gh = insertelement <4 x i32> %i.gg, i32 %i.ec, i64 3
  %i.gi = insertelement <4 x ptr> %i.ew, ptr %i.ao, i64 0
  %i.gj = insertelement <4 x ptr> %i.gi, ptr %i.cg, i64 2
  %i.gk = insertelement <4 x ptr> %i.gj, ptr %i.cl, i64 3
  %i.gl = insertelement <8 x i32> poison, i32 %i.cq, i64 0
  %i.gm = shufflevector <8 x i32> %i.gl, <8 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check = icmp eq i32 %2, 0
  %n.vec = and i64 %4, 8589934590                 ; 3 uses
  %i.gn = add nuw nsw i64 %n.vec, %i.cm
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge38
  %indvar = phi i32 [ 0, %.preheader27.lr.ph.split.split ], [ %indvar.next, %._crit_edge38 ] ; 13 uses
  %.02240 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.hu, %._crit_edge38 ] ; 7 uses
  %i.go = mul i32 %i.cx, %indvar
  %i.gp = add i32 %i.ek, %i.go
  %i.gq = mul i32 %i.ct, %indvar                  ; 2 uses
  %i.gr = add i32 %i.fb, %i.gq
  %i.gs = add i32 %i.fc, %i.gq
  %i.gt = mul i32 %i.dh, %indvar                  ; 2 uses
  %i.gu = add i32 %i.fg, %i.gt
  %i.gv = add i32 %i.fj, %i.gt
  %i.gw = mul i32 %i.dd, %indvar                  ; 2 uses
  %i.gx = add i32 %i.fn, %i.gw
  %i.gy = add i32 %i.fr, %i.gw
  %i.gz = mul i32 %i.df, %indvar
  %i.ha = add i32 %i.fv, %i.gz
  %i.hb = mul i32 %i.cb, %indvar
  %i.hc = add i32 %i.fz, %i.hb
  %i.hd = mul i32 %i.cx, %indvar
  %i.he = mul i32 %i.ct, %indvar
  %i.hf = mul i32 %i.dh, %indvar                  ; 2 uses
  %i.hg = insertelement <4 x i32> poison, i32 %i.hd, i64 0
  %i.hh = insertelement <4 x i32> %i.hg, i32 %i.he, i64 1
  %i.hi = insertelement <4 x i32> %i.hh, i32 %i.hf, i64 3
  %i.hj = shufflevector <4 x i32> %i.hi, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.hk = add <4 x i32> %i.gd, %i.hj
  %i.hl = mul i32 %i.dd, %indvar
  %i.hm = mul i32 %i.df, %indvar
  %i.hn = insertelement <4 x i32> poison, i32 %i.hf, i64 0
  %i.ho = insertelement <4 x i32> %i.hn, i32 %i.hl, i64 1
  %i.hp = insertelement <4 x i32> %i.ho, i32 %i.hm, i64 3
  %i.hq = shufflevector <4 x i32> %i.hp, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.hr = add <4 x i32> %i.gh, %i.hq
  %i.hs = mul i32 %i.cb, %indvar
  %i.ht = add i32 %i.eg, %i.hs
  %i.hu = add i32 %.02240, 1                      ; 3 uses
  %i.hv = mul nsw i32 %i.ct, %.02240              ; 3 uses
  %invariant.op = add i32 %i.hv, 1                ; 2 uses
  %i.hw = mul nsw i32 %i.dh, %.02240              ; 2 uses
  %i.hx = mul nsw i32 %i.dd, %i.hu                ; 2 uses
  %i.hy = mul nsw i32 %i.dd, %.02240              ; 2 uses
  %i.hz = mul nsw i32 %i.df, %.02240
  %i.ia = mul nsw i32 %i.cx, %.02240
  %i.ib = mul nsw i32 %i.cb, %.02240
  br label %.preheader

._crit_edge42.split:                              ; preds = %._crit_edge38, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %indvar51 = phi i32 [ 0, %.preheader27 ], [ %indvar.next52, %._crit_edge ] ; 13 uses
  %.02137 = phi i32 [ %i.c, %.preheader27 ], [ %i.jk, %._crit_edge ] ; 7 uses
  %i.ic = mul i32 %i.cy, %indvar51
  %i.id = add i32 %i.gp, %i.ic
  %i.ie = sext i32 %i.id to i64
  %i.if = shl nsw i64 %i.ie, 3                    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.bo, i64 %i.if ; 9 uses
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.if ; 9 uses
  %i.ig = mul i32 %i.cs, %indvar51                ; 2 uses
  %i.ih = add i32 %i.gr, %i.ig
  %i.ii = sext i32 %i.ih to i64
  %i.ij = shl nsw i64 %i.ii, 3                    ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.ak, i64 %i.ij
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.ij
  %i.ik = add i32 %i.gs, %i.ig
  %i.il = sext i32 %i.ik to i64
  %i.im = shl nsw i64 %i.il, 3                    ; 2 uses
  %scevgep70 = getelementptr i8, ptr %i.ak, i64 %i.im
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.im
  %i.in = mul i32 %i.di, %indvar51                ; 2 uses
  %i.io = add i32 %i.gu, %i.in
  %i.ip = sext i32 %i.io to i64
  %i.iq = shl nsw i64 %i.ip, 3                    ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.aq, i64 %i.iq
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.iq
  %i.ir = add i32 %i.gv, %i.in
  %i.is = sext i32 %i.ir to i64
  %i.it = shl nsw i64 %i.is, 3                    ; 2 uses
  %scevgep76 = getelementptr i8, ptr %i.aq, i64 %i.it
  %scevgep78 = getelementptr i8, ptr %scevgep77, i64 %i.it
  %i.iu = mul i32 %i.de, %indvar51                ; 2 uses
  %i.iv = add i32 %i.gx, %i.iu
  %i.iw = sext i32 %i.iv to i64
  %i.ix = shl nsw i64 %i.iw, 3                    ; 2 uses
  %scevgep79 = getelementptr i8, ptr %i.av, i64 %i.ix
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.ix
  %i.iy = add i32 %i.gy, %i.iu
  %i.iz = sext i32 %i.iy to i64
  %i.ja = shl nsw i64 %i.iz, 3                    ; 2 uses
  %scevgep82 = getelementptr i8, ptr %i.av, i64 %i.ja
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ja
  %i.jb = mul i32 %i.dg, %indvar51
  %i.jc = add i32 %i.ha, %i.jb
  %i.jd = sext i32 %i.jc to i64
  %i.je = shl nsw i64 %i.jd, 3                    ; 2 uses
  %scevgep85 = getelementptr i8, ptr %i.bf, i64 %i.je
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.je
  %i.jf = mul i32 %i.bz, %indvar51
  %i.jg = add i32 %i.hc, %i.jf
  %i.jh = sext i32 %i.jg to i64
  %i.ji = shl nsw i64 %i.jh, 3                    ; 2 uses
  %scevgep88 = getelementptr i8, ptr %i.bx, i64 %i.ji
  %scevgep90 = getelementptr i8, ptr %scevgep89, i64 %i.ji
  %i.jj = mul nsw i32 %i.cs, %.02137              ; 2 uses
  %i.jk = add nsw i32 %.02137, 1                  ; 3 uses
  %i.jl = mul nsw i32 %i.di, %i.jk                ; 2 uses
  %i.jm = mul nsw i32 %i.di, %.02137              ; 2 uses
  %i.jn = mul nsw i32 %i.de, %.02137              ; 2 uses
  %i.jo = mul nsw i32 %i.dg, %.02137
  %invariant.op30 = add i32 %i.jo, %i.hz          ; 2 uses
  %i.jp = mul nsw i32 %i.cy, %.02137
  %invariant.op32 = add i32 %i.jp, %i.ia          ; 2 uses
  %i.jq = mul nsw i32 %i.bz, %.02137
  %invariant.op34 = add i32 %i.jq, %i.ib          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.jr = mul i32 %i.bz, %indvar51
  %i.js = add i32 %i.ht, %i.jr                    ; 2 uses
  %i.jt = mul i32 %i.dg, %indvar51
  %i.ju = mul i32 %i.de, %indvar51
  %i.jv = mul i32 %i.di, %indvar51                ; 2 uses
  %i.jw = mul i32 %i.cs, %indvar51
  %i.jx = mul i32 %i.cy, %indvar51
  %i.jy = insertelement <4 x i32> poison, i32 %i.jv, i64 0
  %i.jz = insertelement <4 x i32> %i.jy, i32 %i.ju, i64 1
  %i.ka = insertelement <4 x i32> %i.jz, i32 %i.jt, i64 3
  %i.kb = shufflevector <4 x i32> %i.ka, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.kc = add <4 x i32> %i.hr, %i.kb              ; 2 uses
  %i.kd = insertelement <4 x i32> poison, i32 %i.jx, i64 0
  %i.ke = insertelement <4 x i32> %i.kd, i32 %i.jw, i64 1
  %i.kf = insertelement <4 x i32> %i.ke, i32 %i.jv, i64 3
  %i.kg = shufflevector <4 x i32> %i.kf, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.kh = add <4 x i32> %i.hk, %i.kg              ; 2 uses
  %i.ki = shufflevector <4 x i32> %i.kh, <4 x i32> %i.kc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kj = add <8 x i32> %i.ki, %i.gm
  %i.kk = shufflevector <4 x i32> %i.kh, <4 x i32> %i.kc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kl = icmp slt <8 x i32> %i.kj, %i.kk
  %i.km = add i32 %i.js, %i.cq
  %i.kn = icmp slt i32 %i.km, %i.js
  %i.ko = bitcast <8 x i1> %i.kl to i8
  %i.kp = icmp ne i8 %i.ko, 0
  %op.rdx159 = or i1 %i.kp, %i.kn
  br i1 %op.rdx159, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.kq = insertelement <4 x ptr> poison, ptr %scevgep63, i64 0
  %i.kr = shufflevector <4 x ptr> %i.kq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ks = icmp ult <4 x ptr> %i.gk, %i.kr
  %i.kt = insertelement <4 x ptr> poison, ptr %scevgep61, i64 0
  %i.ku = shufflevector <4 x ptr> %i.kt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.kv = icmp ult <4 x ptr> %i.ku, %i.ex
  %i.kw = and <4 x i1> %i.ks, %i.kv
  %bound0102 = icmp ult ptr %scevgep61, %scevgep69
  %bound1103 = icmp ult ptr %scevgep67, %scevgep63
  %found.conflict104 = and i1 %bound0102, %bound1103
  %bound0106 = icmp ult ptr %scevgep61, %scevgep72
  %bound1107 = icmp ult ptr %scevgep70, %scevgep63
  %found.conflict108 = and i1 %bound0106, %bound1107
  %bound0110 = icmp ult ptr %scevgep61, %scevgep75
  %bound1111 = icmp ult ptr %scevgep73, %scevgep63
  %found.conflict112 = and i1 %bound0110, %bound1111
  %bound0114 = icmp ult ptr %scevgep61, %scevgep78
  %bound1115 = icmp ult ptr %scevgep76, %scevgep63
  %found.conflict116 = and i1 %bound0114, %bound1115
  %bound0118 = icmp ult ptr %scevgep61, %scevgep81
  %bound1119 = icmp ult ptr %scevgep79, %scevgep63
  %found.conflict120 = and i1 %bound0118, %bound1119
  %bound0122 = icmp ult ptr %scevgep61, %scevgep84
  %bound1123 = icmp ult ptr %scevgep82, %scevgep63
  %found.conflict124 = and i1 %bound0122, %bound1123
  %bound0126 = icmp ult ptr %scevgep61, %scevgep87
  %bound1127 = icmp ult ptr %scevgep85, %scevgep63
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0130 = icmp ult ptr %scevgep61, %scevgep90
  %bound1131 = icmp ult ptr %scevgep88, %scevgep63
  %found.conflict132 = and i1 %bound0130, %bound1131
  %i.kx = bitcast <4 x i1> %i.kw to i4
  %i.ky = icmp ne i4 %i.kx, 0
  %op.rdx = or i1 %i.ky, %found.conflict104
  %op.rdx152 = or i1 %found.conflict108, %found.conflict112
  %op.rdx153 = or i1 %found.conflict116, %found.conflict120
  %op.rdx154 = or i1 %found.conflict124, %found.conflict128
  %op.rdx155 = or i1 %op.rdx, %op.rdx152
  %op.rdx156 = or i1 %op.rdx153, %op.rdx154
  %op.rdx157 = or i1 %op.rdx155, %op.rdx156
  %op.rdx158 = or i1 %op.rdx157, %found.conflict132
  br i1 %op.rdx158, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.kz = load double, ptr %i.ao, align 8, !tbaa !247, !alias.scope !12571, !noalias !12574
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kz, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = load double, ptr %i.at, align 8, !tbaa !247, !alias.scope !12571, !noalias !12574
end_hunk_2
begin_hunk_3_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg6IT_T0_T1_T2_T3_T4_ERKT5_RKSt6vectorIbSaIbEE:bb.a
  %.promoted14.i.i.i.i.i111 = phi ptr [ %.promoted15.i.i.i.i.i107, %bb.al ], [ %.promoted15.i.i.i.i.i107, %bb.am ], [ %i.hq, %bb.ao ], [ %.promoted15.i.i.i.i.i107, %bb.ap ], [ %.promoted15.i.i.i.i.i107, %bb.aq ] ; 2 uses
  %i.hu = phi ptr [ %i.hl, %bb.al ], [ %i.hl, %bb.am ], [ %i.hq, %bb.ao ], [ %i.hl, %bb.ap ], [ %i.hl, %bb.aq ]
  %indvars.iv.next.i.i.i.i.i112 = add nuw nsw i64 %indvars.iv.i.i.i.i.i106, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i113 = icmp eq i64 %indvars.iv.next.i.i.i.i.i112, %wide.trip.count.i.i.i.i.i102
  br i1 %exitcond.not.i.i.i.i.i113, label %._crit_edge.i.i.i.i.i114, label %bb.al, !llvm.loop !6437

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit117: ; preds = %._crit_edge.i.i.i.i.i114, %.preheader.lr.ph.i.i.i.i.i98, %bb.ak, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit97
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_SB_SB_EN6Forgas5VXUpdILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12963 ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not35 = icmp sgt i32 %i.e, %i.m
  br i1 %.not35, label %._crit_edge38.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2332 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2332, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge38.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !12961 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 656
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 648
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 800
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 792
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !6416
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !6419
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !6415
  %i.ai = getelementptr inbounds [88 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2989 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 28 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !6416
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6419
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !6415
  %i.ar = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2989 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !859, !noalias !12965 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 128    ; 3 uses
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !6416
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !6419
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !6415
  %i.bc = getelementptr inbounds [88 x i8], ptr %i.ba, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2989 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !6419
  %i.bk = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.bl = getelementptr inbounds [88 x i8], ptr %i.bj, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2989 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !6419
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.bu = getelementptr inbounds [88 x i8], ptr %i.bs, i64 %i.bt ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !2989 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !6416
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !6419
  %i.cc = load i64, ptr %i.s, align 8, !tbaa !6415
  %i.cd = getelementptr inbounds [88 x i8], ptr %i.cb, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2989 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4  ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !4  ; 5 uses
  %i.ck = zext i32 %i.a to i64                    ; 4 uses
  %i.cl = add i32 %i.g, %i.a
  %i.cm = add i32 %i.i, %i.c
  %i.cn = add i32 %i.k, %i.e
  %i.co = add i32 %i.g, -1                        ; 2 uses
  %i.cp = load <2 x i32>, ptr %i.al, align 4, !tbaa !4 ; 2 uses
  %i.cq = load i32, ptr %i.am, align 8, !tbaa !4  ; 4 uses
  %i.cr = load i32, ptr %i.al, align 4, !tbaa !4  ; 4 uses
  %i.cs = load i32, ptr %i.au, align 4, !tbaa !4  ; 5 uses
  %i.ct = load i32, ptr %i.av, align 8, !tbaa !4  ; 5 uses
  %i.cu = load <2 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.cv = load i32, ptr %i.bg, align 8, !tbaa !4  ; 4 uses
  %i.cw = load i32, ptr %i.bf, align 4, !tbaa !4  ; 4 uses
  %i.cx = load i32, ptr %i.bo, align 4, !tbaa !4  ; 5 uses
  %i.cy = load i32, ptr %i.bp, align 8, !tbaa !4  ; 5 uses
  %i.cz = load i32, ptr %i.bx, align 4, !tbaa !4  ; 5 uses
  %i.da = load i32, ptr %i.by, align 8, !tbaa !4  ; 5 uses
  %i.db = mul i32 %i.e, %i.cq
  %i.dc = add i32 %i.a, %i.db
  %i.dd = mul i32 %i.c, %i.cr
  %i.de = add i32 %i.dc, %i.dd
  %i.df = mul i32 %i.e, %i.ct
  %i.dg = add i32 %i.a, %i.df
  %i.dh = mul i32 %i.c, %i.cs
  %i.di = add i32 %i.dg, %i.dh                    ; 2 uses
  %i.dj = add i32 %i.di, -1
  %i.dk = mul i32 %i.e, %i.cv
  %i.dl = add i32 %i.a, %i.dk
  %i.dm = mul i32 %i.c, %i.cw
  %i.dn = add i32 %i.dl, %i.dm
  %i.do = mul i32 %i.e, %i.cy
  %i.dp = add i32 %i.a, %i.do
  %i.dq = mul i32 %i.c, %i.cx
  %i.dr = add i32 %i.dp, %i.dq                    ; 2 uses
  %i.ds = add i32 %i.dr, -1
  %i.dt = mul i32 %i.e, %i.da
  %i.du = add i32 %i.a, %i.dt
  %i.dv = mul i32 %i.c, %i.cz
  %i.dw = add i32 %i.du, %i.dv                    ; 2 uses
  %i.dx = add i32 %i.dw, -1
  %i.dy = mul i32 %i.e, %i.cj
  %i.dz = add i32 %i.a, %i.dy
  %i.ea = mul i32 %i.c, %i.ch
  %i.eb = add i32 %i.dz, %i.ea
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ec = mul i32 %i.e, %i.cq
  %i.ed = add i32 %i.a, %i.ec
  %i.ee = mul i32 %i.c, %i.cr
  %i.ef = add i32 %i.ed, %i.ee
  %i.eg = add i32 %i.g, -1
  %i.eh = zext i32 %i.eg to i64
  %i.ei = shl nuw nsw i64 %i.eh, 3
  %i.ej = add nuw nsw i64 %i.ei, 8                ; 9 uses
  %scevgep58 = getelementptr i8, ptr %i.ak, i64 %i.ej
  %scevgep60 = getelementptr i8, ptr %i.aw, i64 136
  %i.ek = mul i32 %i.e, %i.ct
  %i.el = add i32 %i.a, %i.ek
  %i.em = mul i32 %i.c, %i.cs
  %i.en = add i32 %i.el, %i.em                    ; 2 uses
  %i.eo = add i32 %i.en, -1
  %scevgep62 = getelementptr i8, ptr %i.at, i64 %i.ej
  %scevgep65 = getelementptr i8, ptr %i.at, i64 %i.ej
  %i.ep = mul i32 %i.e, %i.cv
  %i.eq = add i32 %i.a, %i.ep
  %i.er = mul i32 %i.c, %i.cw
  %i.es = add i32 %i.eq, %i.er
  %scevgep68 = getelementptr i8, ptr %i.be, i64 %i.ej
  %i.et = mul i32 %i.e, %i.cy
  %i.eu = add i32 %i.a, %i.et
  %i.ev = mul i32 %i.c, %i.cx
  %i.ew = add i32 %i.eu, %i.ev                    ; 2 uses
  %i.ex = add i32 %i.ew, -1
  %scevgep71 = getelementptr i8, ptr %i.bn, i64 %i.ej
  %scevgep74 = getelementptr i8, ptr %i.bn, i64 %i.ej
  %i.ey = mul i32 %i.e, %i.da
  %i.ez = add i32 %i.a, %i.ey
  %i.fa = mul i32 %i.c, %i.cz
  %i.fb = add i32 %i.ez, %i.fa                    ; 2 uses
  %i.fc = add i32 %i.fb, -1
  %scevgep77 = getelementptr i8, ptr %i.bw, i64 %i.ej
  %scevgep80 = getelementptr i8, ptr %i.bw, i64 %i.ej
  %i.fd = mul i32 %i.e, %i.cj
  %i.fe = add i32 %i.a, %i.fd
  %i.ff = mul i32 %i.c, %i.ch
  %i.fg = add i32 %i.fe, %i.ff
  %scevgep83 = getelementptr i8, ptr %i.cf, i64 %i.ej
  %2 = add i32 %i.g, -1                           ; 2 uses
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.fh = insertelement <8 x i32> poison, i32 %i.de, i64 0
  %i.fi = insertelement <8 x i32> %i.fh, i32 %i.di, i64 1
  %i.fj = insertelement <8 x i32> %i.fi, i32 %i.dj, i64 2
  %i.fk = insertelement <8 x i32> %i.fj, i32 %i.dn, i64 3
  %i.fl = insertelement <8 x i32> %i.fk, i32 %i.dr, i64 4
  %i.fm = insertelement <8 x i32> %i.fl, i32 %i.ds, i64 5
  %i.fn = insertelement <8 x i32> %i.fm, i32 %i.dw, i64 6
  %i.fo = insertelement <8 x i32> %i.fn, i32 %i.dx, i64 7 ; 2 uses
  %i.fp = insertelement <8 x i32> poison, i32 %i.ct, i64 1
  %i.fq = insertelement <8 x i32> %i.fp, i32 %i.cy, i64 4
  %i.fr = insertelement <8 x i32> %i.fq, i32 %i.da, i64 6
  %i.fs = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ft = shufflevector <8 x i32> %i.fr, <8 x i32> %i.fs, <8 x i32> <i32 9, i32 1, i32 poison, i32 poison, i32 4, i32 poison, i32 6, i32 poison>
  %i.fu = shufflevector <2 x i32> %i.cu, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.fv = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fu, <8 x i32> <i32 0, i32 1, i32 1, i32 9, i32 4, i32 4, i32 6, i32 6>
  %i.fw = insertelement <8 x i32> poison, i32 %i.cs, i64 1
  %i.fx = insertelement <8 x i32> %i.fw, i32 %i.cx, i64 4
  %i.fy = insertelement <8 x i32> %i.fx, i32 %i.cz, i64 6
  %i.fz = insertelement <8 x i32> poison, i32 %i.co, i64 0
  %i.ga = shufflevector <8 x i32> %i.fz, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.gb = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gc = shufflevector <8 x i32> %i.gb, <8 x i32> %i.fy, <8 x i32> <i32 0, i32 9, i32 poison, i32 poison, i32 12, i32 poison, i32 14, i32 poison>
  %min.iters.check = icmp ult i32 %2, 3
  %i.gd = shufflevector <8 x i32> %i.gc, <8 x i32> %i.fu, <8 x i32> <i32 0, i32 1, i32 1, i32 8, i32 4, i32 4, i32 6, i32 6>
  %invariant.op132 = add <8 x i32> %i.fo, %i.ga
  %n.vec = and i64 %4, 8589934590                 ; 3 uses
  %i.ge = add nuw nsw i64 %n.vec, %i.ck
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge34
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge34 ] ; 9 uses
  %.02236 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.kz, %._crit_edge34 ] ; 7 uses
  %i.gf = mul i32 %i.cq, %indvar
  %i.gg = add i32 %i.ef, %i.gf
  %i.gh = mul i32 %i.ct, %indvar                  ; 2 uses
  %i.gi = add i32 %i.eo, %i.gh
  %i.gj = add i32 %i.en, %i.gh
  %i.gk = mul i32 %i.cv, %indvar
  %i.gl = add i32 %i.es, %i.gk
  %i.gm = mul i32 %i.cy, %indvar                  ; 2 uses
  %i.gn = add i32 %i.ex, %i.gm
  %i.go = add i32 %i.ew, %i.gm
  %i.gp = mul i32 %i.da, %indvar                  ; 2 uses
  %i.gq = add i32 %i.fc, %i.gp
  %i.gr = add i32 %i.fb, %i.gp
  %i.gs = mul i32 %i.cj, %indvar
  %i.gt = add i32 %i.fg, %i.gs
  %i.gu = insertelement <8 x i32> poison, i32 %indvar, i64 0
  %i.gv = shufflevector <8 x i32> %i.gu, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.gw = mul <8 x i32> %i.fv, %i.gv              ; 2 uses
  %i.gx = add <8 x i32> %i.fo, %i.gw
  %i.gy = mul i32 %i.cj, %indvar
  %i.gz = add i32 %i.eb, %i.gy
  %i.ha = mul nsw i32 %i.cq, %.02236
  %i.hb = mul nsw i32 %i.ct, %.02236
  %i.hc = mul nsw i32 %i.cv, %.02236
  %i.hd = mul nsw i32 %i.cy, %.02236
  %i.he = mul nsw i32 %i.da, %.02236
  %i.hf = mul nsw i32 %i.cj, %.02236
  %invariant.op130.reass = add <8 x i32> %i.gw, %invariant.op132
  br label %.preheader

._crit_edge38.split:                              ; preds = %._crit_edge34, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar47 = phi i32 [ 0, %.preheader25 ], [ %indvar.next48, %._crit_edge ] ; 9 uses
  %.02133 = phi i32 [ %i.c, %.preheader25 ], [ %i.la, %._crit_edge ] ; 7 uses
  %i.hg = mul i32 %i.cr, %indvar47
  %i.hh = add i32 %i.gg, %i.hg
  %i.hi = sext i32 %i.hh to i64
  %i.hj = shl nsw i64 %i.hi, 3                    ; 2 uses
  %scevgep57 = getelementptr i8, ptr %i.ak, i64 %i.hj ; 10 uses
  %scevgep59 = getelementptr i8, ptr %scevgep58, i64 %i.hj ; 10 uses
  %i.hk = mul i32 %i.cs, %indvar47                ; 2 uses
  %i.hl = add i32 %i.gi, %i.hk
  %i.hm = sext i32 %i.hl to i64
  %i.hn = shl nsw i64 %i.hm, 3                    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.at, i64 %i.hn
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.hn
  %i.ho = add i32 %i.gj, %i.hk
  %i.hp = sext i32 %i.ho to i64
  %i.hq = shl nsw i64 %i.hp, 3                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.at, i64 %i.hq
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.hq
  %i.hr = mul i32 %i.cw, %indvar47
  %i.hs = add i32 %i.gl, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = shl nsw i64 %i.ht, 3                    ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.be, i64 %i.hu
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.hu
  %i.hv = mul i32 %i.cx, %indvar47                ; 2 uses
  %i.hw = add i32 %i.gn, %i.hv
  %i.hx = sext i32 %i.hw to i64
  %i.hy = shl nsw i64 %i.hx, 3                    ; 2 uses
  %scevgep70 = getelementptr i8, ptr %i.bn, i64 %i.hy
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.hy
  %i.hz = add i32 %i.go, %i.hv
  %i.ia = sext i32 %i.hz to i64
  %i.ib = shl nsw i64 %i.ia, 3                    ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.bn, i64 %i.ib
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.ib
  %i.ic = mul i32 %i.cz, %indvar47                ; 2 uses
  %i.id = add i32 %i.gq, %i.ic
  %i.ie = sext i32 %i.id to i64
  %i.if = shl nsw i64 %i.ie, 3                    ; 2 uses
  %scevgep76 = getelementptr i8, ptr %i.bw, i64 %i.if
  %scevgep78 = getelementptr i8, ptr %scevgep77, i64 %i.if
  %i.ig = add i32 %i.gr, %i.ic
  %i.ih = sext i32 %i.ig to i64
  %i.ii = shl nsw i64 %i.ih, 3                    ; 2 uses
  %scevgep79 = getelementptr i8, ptr %i.bw, i64 %i.ii
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.ii
  %i.ij = mul i32 %i.ch, %indvar47
  %i.ik = add i32 %i.gt, %i.ij
  %i.il = sext i32 %i.ik to i64
  %i.im = shl nsw i64 %i.il, 3                    ; 2 uses
  %scevgep82 = getelementptr i8, ptr %i.cf, i64 %i.im
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.im
  %i.in = mul nsw i32 %i.cr, %.02133
  %invariant.op = add i32 %i.in, %i.ha            ; 2 uses
  %i.io = mul nsw i32 %i.cs, %.02133
  %i.ip = add i32 %i.hb, %i.io                    ; 4 uses
  %i.iq = mul nsw i32 %i.cw, %.02133
  %invariant.op28 = add i32 %i.iq, %i.hc          ; 2 uses
  %i.ir = mul nsw i32 %i.cx, %.02133
  %i.is = add i32 %i.hd, %i.ir                    ; 4 uses
  %i.it = mul nsw i32 %i.cz, %.02133
  %i.iu = add i32 %i.he, %i.it                    ; 4 uses
  %i.iv = mul nsw i32 %i.ch, %.02133
  %invariant.op30 = add i32 %i.iv, %i.hf          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.iw = mul i32 %i.ch, %indvar47
  %i.ix = add i32 %i.gz, %i.iw                    ; 2 uses
  %i.iy = insertelement <8 x i32> poison, i32 %indvar47, i64 0
  %i.iz = shufflevector <8 x i32> %i.iy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ja = mul <8 x i32> %i.gd, %i.iz              ; 2 uses
  %i.jb = add <8 x i32> %i.gx, %i.ja
  %.reass131 = add <8 x i32> %i.ja, %invariant.op130.reass
  %i.jc = icmp slt <8 x i32> %.reass131, %i.jb
  %i.jd = add i32 %i.ix, %i.co
  %i.je = icmp slt i32 %i.jd, %i.ix
  %i.jf = bitcast <8 x i1> %i.jc to i8
  %i.jg = icmp ne i8 %i.jf, 0
  %op.rdx = or i1 %i.jg, %i.je
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %.sroa.4.0.copyload, %scevgep59
  %bound1 = icmp ult ptr %scevgep57, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound085 = icmp ult ptr %i.ax, %scevgep59
  %bound186 = icmp ult ptr %scevgep57, %scevgep60
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx = or i1 %found.conflict, %found.conflict87
  %bound088 = icmp ult ptr %scevgep57, %scevgep63
  %bound189 = icmp ult ptr %scevgep61, %scevgep59
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx, %found.conflict90
  %bound092 = icmp ult ptr %scevgep57, %scevgep66
  %bound193 = icmp ult ptr %scevgep64, %scevgep59
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx91, %found.conflict94
  %bound096 = icmp ult ptr %scevgep57, %scevgep69
  %bound197 = icmp ult ptr %scevgep67, %scevgep59
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %scevgep57, %scevgep72
  %bound1101 = icmp ult ptr %scevgep70, %scevgep59
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %scevgep57, %scevgep75
  %bound1105 = icmp ult ptr %scevgep73, %scevgep59
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %scevgep57, %scevgep78
  %bound1109 = icmp ult ptr %scevgep76, %scevgep59
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  %bound0112 = icmp ult ptr %scevgep57, %scevgep81
  %bound1113 = icmp ult ptr %scevgep79, %scevgep59
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx111, %found.conflict114
  %bound0116 = icmp ult ptr %scevgep57, %scevgep84
  %bound1117 = icmp ult ptr %scevgep82, %scevgep59
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx115, %found.conflict118
  br i1 %conflict.rdx119, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.jh = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !12968, !alias.scope !12970, !noalias !12973
  %broadcast.splatinsert128 = insertelement <2 x double> poison, double %i.jh, i64 0
  %broadcast.splat129 = shufflevector <2 x double> %broadcast.splatinsert128, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = load double, ptr %i.ax, align 8, !tbaa !247, !alias.scope !12975, !noalias !12977
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ji, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jj = trunc i64 %index to i32
  %i.jk = add i32 %i.a, %i.jj                     ; 7 uses
  %i.jl = add i32 %invariant.op, %i.jk
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.jm ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jn, align 8, !tbaa !247, !alias.scope !12973, !noalias !12978
  %i.jo = add i32 %i.ip, %i.jk
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.jp
  %wide.load120 = load <2 x double>, ptr %i.jq, align 8, !tbaa !247, !alias.scope !12987
  %i.jr = add i32 %i.jk, -1                       ; 3 uses
  %i.js = add i32 %i.ip, %i.jr
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.jt
  %wide.load121 = load <2 x double>, ptr %i.ju, align 8, !tbaa !247, !alias.scope !12988
  %i.jv = fsub <2 x double> %wide.load120, %wide.load121
  %i.jw = add i32 %invariant.op28, %i.jk
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.jx
end_hunk_3
begin_hunk_4_@_ZN14MultiArgKernelI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_S9_S9_E15EvaluateLocLoopIN6Forgas5VYUpdILi3EEELi3EEE3runEv:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_SB_SB_EN6Forgas5VYUpdILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13019 ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not35 = icmp sgt i32 %i.e, %i.m
  br i1 %.not35, label %._crit_edge38.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2332 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2332, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge38.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !12961 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 656
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 648
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 800
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 792
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !6416
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !6419
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !6415
  %i.ai = getelementptr inbounds [88 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2989 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 28 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !6416
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6419
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !6415
  %i.ar = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2989 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 28 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !859, !noalias !13021 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 136    ; 3 uses
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !6416
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !6419
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !6415
  %i.bc = getelementptr inbounds [88 x i8], ptr %i.ba, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2989 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !6419
  %i.bk = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.bl = getelementptr inbounds [88 x i8], ptr %i.bj, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2989 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 28 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !6419
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.bu = getelementptr inbounds [88 x i8], ptr %i.bs, i64 %i.bt ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !2989 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 28 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !6416
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !6419
  %i.cc = load i64, ptr %i.s, align 8, !tbaa !6415
  %i.cd = getelementptr inbounds [88 x i8], ptr %i.cb, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2989 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4  ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !4  ; 5 uses
  %i.ck = zext i32 %i.a to i64                    ; 4 uses
  %i.cl = add i32 %i.g, %i.a
  %i.cm = add i32 %i.i, %i.c
  %i.cn = add i32 %i.k, %i.e
  %i.co = add i32 %i.g, -1                        ; 2 uses
  %i.cp = add i32 %i.c, -1
  %i.cq = load <2 x i32>, ptr %i.al, align 4, !tbaa !4 ; 2 uses
  %i.cr = load i32, ptr %i.am, align 8, !tbaa !4  ; 3 uses
  %i.cs = load i32, ptr %i.al, align 4, !tbaa !4  ; 3 uses
  %i.ct = load <2 x i32>, ptr %i.au, align 4, !tbaa !4 ; 2 uses
  %i.cu = load i32, ptr %i.av, align 8, !tbaa !4  ; 3 uses
  %i.cv = load i32, ptr %i.au, align 4, !tbaa !4  ; 5 uses
  %i.cw = load <2 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.cx = load i32, ptr %i.bg, align 8, !tbaa !4  ; 3 uses
  %i.cy = load i32, ptr %i.bf, align 4, !tbaa !4  ; 3 uses
  %i.cz = load <2 x i32>, ptr %i.bo, align 4, !tbaa !4 ; 2 uses
  %i.da = load i32, ptr %i.bp, align 8, !tbaa !4  ; 3 uses
  %i.db = load i32, ptr %i.bo, align 4, !tbaa !4  ; 5 uses
  %i.dc = load <2 x i32>, ptr %i.bx, align 4, !tbaa !4 ; 2 uses
  %i.dd = load i32, ptr %i.by, align 8, !tbaa !4  ; 3 uses
  %i.de = load i32, ptr %i.bx, align 4, !tbaa !4  ; 5 uses
  %i.df = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %i.dg = shufflevector <8 x i32> %i.df, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dh = shufflevector <2 x i32> %i.cq, <2 x i32> %i.ct, <8 x i32> <i32 1, i32 3, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <2 x i32> %i.cz, <2 x i32> %i.dc, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 1, i32 3, i32 3>
  %i.dj = shufflevector <8 x i32> %i.dh, <8 x i32> %i.di, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 12, i32 13, i32 14, i32 15>
  %i.dk = shufflevector <2 x i32> %i.cw, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.dl = shufflevector <8 x i32> %i.dj, <8 x i32> %i.dk, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.dm = mul <8 x i32> %i.dg, %i.dl
  %i.dn = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.do = shufflevector <8 x i32> %i.dn, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dp = add <8 x i32> %i.do, %i.dm
  %i.dq = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %i.dr = insertelement <8 x i32> %i.dq, i32 %i.cp, i64 1
  %i.ds = shufflevector <2 x i32> %i.dc, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.dt = shufflevector <8 x i32> %i.dr, <8 x i32> %i.ds, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.du = shufflevector <8 x i32> %i.dt, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 2, i32 2>
  %i.dv = shufflevector <2 x i32> %i.cq, <2 x i32> %i.ct, <8 x i32> <i32 0, i32 2, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dx = shufflevector <8 x i32> %i.dw, <8 x i32> %i.dt, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 0, i32 9, i32 8>
  %i.dy = shufflevector <8 x i32> %i.dv, <8 x i32> %i.dx, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dz = shufflevector <8 x i32> %i.dy, <8 x i32> %i.dk, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ea = mul <8 x i32> %i.du, %i.dz
  %i.eb = add <8 x i32> %i.dp, %i.ea              ; 2 uses
  %i.ec = mul i32 %i.e, %i.cj
  %i.ed = add i32 %i.a, %i.ec
  %i.ee = mul i32 %i.c, %i.ch
  %i.ef = add i32 %i.ed, %i.ee
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.eg = mul i32 %i.e, %i.cr
  %i.eh = add i32 %i.a, %i.eg
  %i.ei = mul i32 %i.c, %i.cs
  %i.ej = add i32 %i.eh, %i.ei
  %i.ek = add i32 %i.g, -1
  %i.el = zext i32 %i.ek to i64
  %i.em = shl nuw nsw i64 %i.el, 3
  %i.en = add nuw nsw i64 %i.em, 8                ; 9 uses
  %scevgep58 = getelementptr i8, ptr %i.ak, i64 %i.en
  %scevgep60 = getelementptr i8, ptr %i.aw, i64 144
  %i.eo = mul i32 %i.e, %i.cu
  %i.ep = add i32 %i.a, %i.eo                     ; 2 uses
  %i.eq = add i32 %i.c, -1                        ; 3 uses
  %i.er = mul i32 %i.cv, %i.eq
  %i.es = add i32 %i.ep, %i.er
  %scevgep62 = getelementptr i8, ptr %i.at, i64 %i.en
  %i.et = mul i32 %i.c, %i.cv
  %i.eu = add i32 %i.ep, %i.et
  %scevgep65 = getelementptr i8, ptr %i.at, i64 %i.en
  %i.ev = mul i32 %i.e, %i.cx
  %i.ew = add i32 %i.a, %i.ev
  %i.ex = mul i32 %i.c, %i.cy
  %i.ey = add i32 %i.ew, %i.ex
  %scevgep68 = getelementptr i8, ptr %i.be, i64 %i.en
  %i.ez = mul i32 %i.e, %i.da
  %i.fa = add i32 %i.a, %i.ez                     ; 2 uses
  %i.fb = mul i32 %i.db, %i.eq
  %i.fc = add i32 %i.fa, %i.fb
  %scevgep71 = getelementptr i8, ptr %i.bn, i64 %i.en
  %i.fd = mul i32 %i.c, %i.db
  %i.fe = add i32 %i.fa, %i.fd
  %scevgep74 = getelementptr i8, ptr %i.bn, i64 %i.en
  %i.ff = mul i32 %i.e, %i.dd
  %i.fg = add i32 %i.a, %i.ff                     ; 2 uses
  %i.fh = mul i32 %i.de, %i.eq
  %i.fi = add i32 %i.fg, %i.fh
  %scevgep77 = getelementptr i8, ptr %i.bw, i64 %i.en
  %i.fj = mul i32 %i.c, %i.de
  %i.fk = add i32 %i.fg, %i.fj
  %scevgep80 = getelementptr i8, ptr %i.bw, i64 %i.en
  %i.fl = mul i32 %i.e, %i.cj
  %i.fm = add i32 %i.a, %i.fl
  %i.fn = mul i32 %i.c, %i.ch
  %i.fo = add i32 %i.fm, %i.fn
  %scevgep83 = getelementptr i8, ptr %i.cf, i64 %i.en
  %2 = add i32 %i.g, -1                           ; 2 uses
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %5 = insertelement <8 x i32> poison, i32 %i.co, i64 0
  %6 = shufflevector <8 x i32> %5, <8 x i32> poison, <8 x i32> zeroinitializer
  %7 = shufflevector <8 x i32> %i.dy, <8 x i32> %i.ds, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 4, i32 8, i32 8>
  %8 = shufflevector <8 x i32> %i.dz, <8 x i32> %7, <8 x i32> <i32 0, i32 1, i32 1, i32 3, i32 12, i32 13, i32 14, i32 15>
  %min.iters.check = icmp ult i32 %2, 3
  %invariant.op132 = add <8 x i32> %i.eb, %6
  %n.vec = and i64 %4, 8589934590                 ; 3 uses
  %i.fp = add nuw nsw i64 %n.vec, %i.ck
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge34
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge34 ] ; 9 uses
  %.02236 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.ko, %._crit_edge34 ] ; 7 uses
  %i.fq = mul i32 %i.cr, %indvar
  %i.fr = add i32 %i.ej, %i.fq
  %i.fs = mul i32 %i.cu, %indvar                  ; 2 uses
  %i.ft = add i32 %i.es, %i.fs
  %i.fu = add i32 %i.eu, %i.fs
  %i.fv = mul i32 %i.cx, %indvar
  %i.fw = add i32 %i.ey, %i.fv
  %i.fx = mul i32 %i.da, %indvar                  ; 2 uses
  %i.fy = add i32 %i.fc, %i.fx
  %i.fz = add i32 %i.fe, %i.fx
  %i.ga = mul i32 %i.dd, %indvar                  ; 2 uses
  %i.gb = add i32 %i.fi, %i.ga
  %i.gc = add i32 %i.fk, %i.ga
  %i.gd = mul i32 %i.cj, %indvar
  %i.ge = add i32 %i.fo, %i.gd
  %i.gf = insertelement <8 x i32> poison, i32 %indvar, i64 0
  %i.gg = shufflevector <8 x i32> %i.gf, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.gh = mul <8 x i32> %i.dl, %i.gg              ; 2 uses
  %i.gi = add <8 x i32> %i.eb, %i.gh
  %i.gj = mul i32 %i.cj, %indvar
  %i.gk = add i32 %i.ef, %i.gj
  %i.gl = mul nsw i32 %i.cr, %.02236
  %i.gm = mul nsw i32 %i.cu, %.02236              ; 2 uses
  %i.gn = mul nsw i32 %i.cx, %.02236
  %i.go = mul nsw i32 %i.da, %.02236              ; 2 uses
  %i.gp = mul nsw i32 %i.dd, %.02236              ; 2 uses
  %i.gq = mul nsw i32 %i.cj, %.02236
  %invariant.op130.reass = add <8 x i32> %i.gh, %invariant.op132
  br label %.preheader

._crit_edge38.split:                              ; preds = %._crit_edge34, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar47 = phi i32 [ 0, %.preheader25 ], [ %indvar.next48, %._crit_edge ] ; 9 uses
  %.02133 = phi i32 [ %i.c, %.preheader25 ], [ %i.kp, %._crit_edge ] ; 8 uses
  %i.gr = mul i32 %i.cs, %indvar47
  %i.gs = add i32 %i.fr, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = shl nsw i64 %i.gt, 3                    ; 2 uses
  %scevgep57 = getelementptr i8, ptr %i.ak, i64 %i.gu ; 10 uses
  %scevgep59 = getelementptr i8, ptr %scevgep58, i64 %i.gu ; 10 uses
  %i.gv = mul i32 %i.cv, %indvar47                ; 2 uses
  %i.gw = add i32 %i.ft, %i.gv
  %i.gx = sext i32 %i.gw to i64
  %i.gy = shl nsw i64 %i.gx, 3                    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.at, i64 %i.gy
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.gy
  %i.gz = add i32 %i.fu, %i.gv
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 3                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.at, i64 %i.hb
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.hb
  %i.hc = mul i32 %i.cy, %indvar47
  %i.hd = add i32 %i.fw, %i.hc
  %i.he = sext i32 %i.hd to i64
  %i.hf = shl nsw i64 %i.he, 3                    ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.be, i64 %i.hf
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.hf
  %i.hg = mul i32 %i.db, %indvar47                ; 2 uses
  %i.hh = add i32 %i.fy, %i.hg
  %i.hi = sext i32 %i.hh to i64
  %i.hj = shl nsw i64 %i.hi, 3                    ; 2 uses
  %scevgep70 = getelementptr i8, ptr %i.bn, i64 %i.hj
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.hj
  %i.hk = add i32 %i.fz, %i.hg
  %i.hl = sext i32 %i.hk to i64
  %i.hm = shl nsw i64 %i.hl, 3                    ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.bn, i64 %i.hm
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.hm
  %i.hn = mul i32 %i.de, %indvar47                ; 2 uses
  %i.ho = add i32 %i.gb, %i.hn
  %i.hp = sext i32 %i.ho to i64
  %i.hq = shl nsw i64 %i.hp, 3                    ; 2 uses
  %scevgep76 = getelementptr i8, ptr %i.bw, i64 %i.hq
  %scevgep78 = getelementptr i8, ptr %scevgep77, i64 %i.hq
  %i.hr = add i32 %i.gc, %i.hn
  %i.hs = sext i32 %i.hr to i64
  %i.ht = shl nsw i64 %i.hs, 3                    ; 2 uses
  %scevgep79 = getelementptr i8, ptr %i.bw, i64 %i.ht
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.ht
  %i.hu = mul i32 %i.ch, %indvar47
  %i.hv = add i32 %i.ge, %i.hu
  %i.hw = sext i32 %i.hv to i64
  %i.hx = shl nsw i64 %i.hw, 3                    ; 2 uses
  %scevgep82 = getelementptr i8, ptr %i.cf, i64 %i.hx
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.hx
  %i.hy = mul nsw i32 %i.cs, %.02133
  %invariant.op = add i32 %i.hy, %i.gl            ; 2 uses
  %i.hz = mul nsw i32 %i.cv, %.02133              ; 2 uses
  %i.ia = add nsw i32 %.02133, -1                 ; 3 uses
  %i.ib = mul nsw i32 %i.cv, %i.ia                ; 2 uses
  %i.ic = mul nsw i32 %i.cy, %.02133
  %invariant.op28 = add i32 %i.ic, %i.gn          ; 2 uses
  %i.id = mul nsw i32 %i.db, %.02133              ; 2 uses
  %i.ie = mul nsw i32 %i.db, %i.ia                ; 2 uses
  %i.if = mul nsw i32 %i.de, %.02133              ; 2 uses
  %i.ig = mul nsw i32 %i.de, %i.ia                ; 2 uses
  %i.ih = mul nsw i32 %i.ch, %.02133
  %invariant.op30 = add i32 %i.ih, %i.gq          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ii = mul i32 %i.ch, %indvar47
  %i.ij = add i32 %i.gk, %i.ii                    ; 2 uses
  %i.ik = insertelement <8 x i32> poison, i32 %indvar47, i64 0
  %i.il = shufflevector <8 x i32> %i.ik, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.im = mul <8 x i32> %8, %i.il                 ; 2 uses
  %i.in = add <8 x i32> %i.gi, %i.im
  %.reass131 = add <8 x i32> %i.im, %invariant.op130.reass
  %i.io = icmp slt <8 x i32> %.reass131, %i.in
  %i.ip = add i32 %i.ij, %i.co
  %i.iq = icmp slt i32 %i.ip, %i.ij
  %i.ir = bitcast <8 x i1> %i.io to i8
  %i.is = icmp ne i8 %i.ir, 0
  %op.rdx = or i1 %i.is, %i.iq
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %.sroa.4.0.copyload, %scevgep59
  %bound1 = icmp ult ptr %scevgep57, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound085 = icmp ult ptr %i.ax, %scevgep59
  %bound186 = icmp ult ptr %scevgep57, %scevgep60
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx = or i1 %found.conflict, %found.conflict87
  %bound088 = icmp ult ptr %scevgep57, %scevgep63
  %bound189 = icmp ult ptr %scevgep61, %scevgep59
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx, %found.conflict90
  %bound092 = icmp ult ptr %scevgep57, %scevgep66
  %bound193 = icmp ult ptr %scevgep64, %scevgep59
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx91, %found.conflict94
  %bound096 = icmp ult ptr %scevgep57, %scevgep69
  %bound197 = icmp ult ptr %scevgep67, %scevgep59
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %scevgep57, %scevgep72
  %bound1101 = icmp ult ptr %scevgep70, %scevgep59
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %scevgep57, %scevgep75
  %bound1105 = icmp ult ptr %scevgep73, %scevgep59
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %scevgep57, %scevgep78
  %bound1109 = icmp ult ptr %scevgep76, %scevgep59
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  %bound0112 = icmp ult ptr %scevgep57, %scevgep81
  %bound1113 = icmp ult ptr %scevgep79, %scevgep59
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx111, %found.conflict114
  %bound0116 = icmp ult ptr %scevgep57, %scevgep84
  %bound1117 = icmp ult ptr %scevgep82, %scevgep59
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx115, %found.conflict118
  br i1 %conflict.rdx119, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.it = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13024, !alias.scope !13026, !noalias !13029
  %broadcast.splatinsert128 = insertelement <2 x double> poison, double %i.it, i64 0
  %broadcast.splat129 = shufflevector <2 x double> %broadcast.splatinsert128, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iu = load double, ptr %i.ax, align 8, !tbaa !247, !alias.scope !13031, !noalias !13033
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.iu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iv = trunc i64 %index to i32
  %i.iw = add i32 %i.a, %i.iv                     ; 6 uses
  %i.ix = add i32 %invariant.op, %i.iw
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.iy ; 2 uses
  %wide.load = load <2 x double>, ptr %i.iz, align 8, !tbaa !247, !alias.scope !13029, !noalias !13034
  %i.ja = add i32 %i.gm, %i.iw                    ; 2 uses
  %i.jb = add i32 %i.ja, %i.hz
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.jc
  %wide.load120 = load <2 x double>, ptr %i.jd, align 8, !tbaa !247, !alias.scope !13043
  %i.je = add i32 %i.ja, %i.ib
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.jf
  %wide.load121 = load <2 x double>, ptr %i.jg, align 8, !tbaa !247, !alias.scope !13044
  %i.jh = fsub <2 x double> %wide.load120, %wide.load121
  %i.ji = add i32 %invariant.op28, %i.iw
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.jj
  %wide.load122 = load <2 x double>, ptr %i.jk, align 8, !tbaa !247, !alias.scope !13045
  %i.jl = fdiv <2 x double> %i.jh, %broadcast.splat
  %i.jm = fsub <2 x double> %wide.load122, %i.jl
  %i.jn = add i32 %i.go, %i.iw                    ; 2 uses
  %i.jo = add i32 %i.jn, %i.id
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.jp
  %wide.load123 = load <2 x double>, ptr %i.jq, align 8, !tbaa !247, !alias.scope !13046
  %i.jr = add i32 %i.jn, %i.ie
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.js
  %wide.load124 = load <2 x double>, ptr %i.jt, align 8, !tbaa !247, !alias.scope !13047
  %i.ju = fmul <2 x double> %wide.load124, splat (double 5.000000e-01)
  %i.jv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load123, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ju)
  %i.jw = fdiv <2 x double> %i.jm, %i.jv
  %i.jx = add i32 %i.gp, %i.iw                    ; 2 uses
  %i.jy = add i32 %i.jx, %i.if
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.jz
  %wide.load125 = load <2 x double>, ptr %i.ka, align 8, !tbaa !247, !alias.scope !13048
  %i.kb = add i32 %i.jx, %i.ig
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.kc
  %wide.load126 = load <2 x double>, ptr %i.kd, align 8, !tbaa !247, !alias.scope !13049
  %i.ke = fsub <2 x double> %wide.load125, %wide.load126
  %i.kf = fdiv <2 x double> %i.ke, %broadcast.splat
  %i.kg = fsub <2 x double> %i.jw, %i.kf
  %i.kh = add i32 %invariant.op30, %i.iw
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.ki
  %wide.load127 = load <2 x double>, ptr %i.kj, align 8, !tbaa !247, !alias.scope !13050
  %i.kk = fsub <2 x double> %i.kg, %wide.load127
  %i.kl = fmul <2 x double> %broadcast.splat129, %i.kk
  %i.km = fadd <2 x double> %wide.load, %i.kl
  store <2 x double> %i.km, ptr %i.iz, align 8, !tbaa !247, !alias.scope !13029, !noalias !13034
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kn = icmp eq i64 %index.next, %n.vec
  br i1 %i.kn, label %middle.block, label %vector.body, !llvm.loop !13051

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ck, %vector.memcheck ], [ %i.ck, %vector.scevcheck ], [ %i.ck, %.preheader ], [ %i.fp, %middle.block ]
  br label %scalar.ph

._crit_edge34:                                    ; preds = %._crit_edge
  %i.ko = add i32 %.02236, 1                      ; 2 uses
  %exitcond42.not = icmp eq i32 %i.ko, %i.cn
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond42.not, label %._crit_edge38.split, label %.preheader25, !llvm.loop !13052

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.kp = add i32 %.02133, 1                      ; 2 uses
  %exitcond41.not = icmp eq i32 %i.kp, %i.cm
  %indvar.next48 = add i32 %indvar47, 1
  br i1 %exitcond41.not, label %._crit_edge34, label %.preheader, !llvm.loop !13053

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.kq = trunc i64 %indvars.iv to i32            ; 6 uses
  %.reass = add i32 %invariant.op, %i.kq
  %i.kr = sext i32 %.reass to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.kr ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !247
  %i.ku = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13024
  %i.kv = add i32 %i.gm, %i.kq                    ; 2 uses
  %i.kw = add i32 %i.kv, %i.hz
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.kx
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !247
  %i.la = add i32 %i.kv, %i.ib
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.lb
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !247
  %i.le = fsub double %i.kz, %i.ld
  %i.lf = load double, ptr %i.ax, align 8, !tbaa !247, !noalias !13021 ; 2 uses
  %.reass29 = add i32 %invariant.op28, %i.kq
  %i.lg = sext i32 %.reass29 to i64
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !247
  %i.lj = fdiv double %i.le, %i.lf
  %i.lk = fsub double %i.li, %i.lj
  %i.ll = add i32 %i.go, %i.kq                    ; 2 uses
  %i.lm = add i32 %i.ll, %i.id
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.ln
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !247
  %i.lq = add i32 %i.ll, %i.ie
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.lr
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !247
  %i.lu = fmul double %i.lt, 5.000000e-01
  %i.lv = tail call double @llvm.fmuladd.f64(double %i.lp, double 5.000000e-01, double %i.lu)
  %i.lw = fdiv double %i.lk, %i.lv
  %i.lx = add i32 %i.gp, %i.kq                    ; 2 uses
  %i.ly = add i32 %i.lx, %i.if
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.lz
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !247
  %i.mc = add i32 %i.lx, %i.ig
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.md
  %i.mf = load double, ptr %i.me, align 8, !tbaa !247
  %i.mg = fsub double %i.mb, %i.mf
  %i.mh = fdiv double %i.mg, %i.lf
  %i.mi = fsub double %i.lw, %i.mh
  %.reass31 = add i32 %invariant.op30, %i.kq
  %i.mj = sext i32 %.reass31 to i64
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.mj
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !247
  %i.mm = fsub double %i.mi, %i.ml
  %i.mn = fmul double %i.ku, %i.mm
  %i.mo = fadd double %i.kt, %i.mn
  store double %i.mo, ptr %i.ks, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.cl, %lftr.wideiv
end_hunk_4
begin_hunk_5_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg5IT_T0_T1_T2_T3_ERKT4_RKSt6vectorIbSaIbEE:bb.a

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.ge, ptr %i.fl, align 8, !tbaa !6433
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i87

bb.ai:                                            ; preds = %bb.ag
  %i.gh = icmp eq ptr %i.gf, null
  br i1 %i.gh, label %bb.aj, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i87

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.ge, ptr %i.fm, align 8, !tbaa !6436
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i87

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i87: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae
  %.promoted14.i.i.i.i.i88 = phi ptr [ %.promoted15.i.i.i.i.i84, %bb.ae ], [ %.promoted15.i.i.i.i.i84, %bb.af ], [ %i.ge, %bb.ah ], [ %.promoted15.i.i.i.i.i84, %bb.ai ], [ %.promoted15.i.i.i.i.i84, %bb.aj ] ; 2 uses
  %i.gi = phi ptr [ %i.fz, %bb.ae ], [ %i.fz, %bb.af ], [ %i.ge, %bb.ah ], [ %i.fz, %bb.ai ], [ %i.fz, %bb.aj ]
  %indvars.iv.next.i.i.i.i.i89 = add nuw nsw i64 %indvars.iv.i.i.i.i.i83, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i90 = icmp eq i64 %indvars.iv.next.i.i.i.i.i89, %wide.trip.count.i.i.i.i.i79
  br i1 %exitcond.not.i.i.i.i.i90, label %._crit_edge.i.i.i.i.i91, label %bb.ae, !llvm.loop !6437

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit94: ; preds = %._crit_edge.i.i.i.i.i91, %.preheader.lr.ph.i.i.i.i.i75, %bb.ad, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg5I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_SB_EN6Forgas5VZUpdILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13234 ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2330 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2330, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge36.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !13232 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 656
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 648
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !6416
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !6419
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !6415
  %i.ag = getelementptr inbounds [88 x i8], ptr %i.ae, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2989 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 28 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !6416
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !6419
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !6415
  %i.ap = getelementptr inbounds [88 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2989 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 28 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !859, !noalias !13236 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 144    ; 3 uses
  %i.aw = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !6419
  %i.az = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.ba = getelementptr inbounds [88 x i8], ptr %i.ay, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2989 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 28 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !6419
  %i.bi = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.bj = getelementptr inbounds [88 x i8], ptr %i.bh, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2989 ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 28 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bo = load ptr, ptr %i.r, align 8, !tbaa !6416
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !6419
  %i.br = load i64, ptr %i.s, align 8, !tbaa !6415
  %i.bs = getelementptr inbounds [88 x i8], ptr %i.bq, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2989 ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 28 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bx = zext i32 %i.a to i64                    ; 4 uses
  %i.by = add i32 %i.g, %i.a
  %i.bz = add i32 %i.i, %i.c
  %i.ca = add i32 %i.k, %i.e
  %i.cb = add i32 %i.g, -1
  %i.cc = load <2 x i32>, ptr %i.aj, align 4, !tbaa !4 ; 2 uses
  %i.cd = load i32, ptr %i.ak, align 8, !tbaa !4  ; 3 uses
  %i.ce = load i32, ptr %i.aj, align 4, !tbaa !4  ; 3 uses
  %i.cf = load <2 x i32>, ptr %i.as, align 4, !tbaa !4 ; 2 uses
  %i.cg = load i32, ptr %i.at, align 8, !tbaa !4  ; 5 uses
  %i.ch = load i32, ptr %i.as, align 4, !tbaa !4  ; 3 uses
  %i.ci = load <2 x i32>, ptr %i.bd, align 4, !tbaa !4
  %i.cj = load i32, ptr %i.be, align 8, !tbaa !4  ; 3 uses
  %i.ck = load i32, ptr %i.bd, align 4, !tbaa !4  ; 3 uses
  %i.cl = load <2 x i32>, ptr %i.bm, align 4, !tbaa !4
  %i.cm = load i32, ptr %i.bn, align 8, !tbaa !4  ; 5 uses
  %i.cn = load i32, ptr %i.bm, align 4, !tbaa !4  ; 3 uses
  %i.co = load <2 x i32>, ptr %i.bv, align 4, !tbaa !4
  %i.cp = load i32, ptr %i.bw, align 8, !tbaa !4  ; 5 uses
  %i.cq = load i32, ptr %i.bv, align 4, !tbaa !4  ; 3 uses
  %i.cr = insertelement <2 x i32> poison, i32 %i.c, i64 0
  %i.cs = insertelement <2 x i32> %i.cr, i32 %i.e, i64 1
  %i.ct = add <2 x i32> %i.cs, <i32 0, i32 -1>
  %i.cu = shufflevector <2 x i32> %i.ct, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0>
  %i.cv = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %i.cw = insertelement <8 x i32> %i.cv, i32 %i.c, i64 1
  %i.cx = shufflevector <8 x i32> %i.cw, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0>
  %i.cy = shufflevector <2 x i32> %i.cc, <2 x i32> %i.cf, <8 x i32> <i32 1, i32 3, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cz = shufflevector <2 x i32> %i.cl, <2 x i32> %i.co, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.da = shufflevector <8 x i32> %i.cy, <8 x i32> %i.cz, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 12, i32 13, i32 14, i32 15>
  %i.db = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.dc = shufflevector <8 x i32> %i.da, <8 x i32> %i.db, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.dd = mul <8 x i32> %i.cx, %i.dc
  %i.de = shufflevector <2 x i32> %i.cc, <2 x i32> %i.cf, <8 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.df = shufflevector <8 x i32> %i.de, <8 x i32> %i.dc, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 13, i32 12, i32 15, i32 14>
  %i.dg = shufflevector <8 x i32> %i.df, <8 x i32> %i.db, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.dh = mul <8 x i32> %i.dg, %i.cu
  %i.di = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.dj = shufflevector <8 x i32> %i.di, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dk = add <8 x i32> %i.dj, %i.dd
  %i.dl = add <8 x i32> %i.dk, %i.dh              ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.dm = mul i32 %i.e, %i.cd
  %i.dn = add i32 %i.a, %i.dm
  %i.do = mul i32 %i.c, %i.ce
  %i.dp = add i32 %i.dn, %i.do
  %i.dq = add i32 %i.g, -1
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %i.dt = add nuw nsw i64 %i.ds, 8                ; 8 uses
  %scevgep55 = getelementptr i8, ptr %i.ai, i64 %i.dt
  %scevgep57 = getelementptr i8, ptr %i.au, i64 152
  %i.du = mul i32 %i.c, %i.ch                     ; 2 uses
  %i.dv = add i32 %i.a, %i.du
  %i.dw = add i32 %i.e, -1                        ; 3 uses
  %i.dx = mul i32 %i.cg, %i.dw
  %i.dy = add i32 %i.dv, %i.dx
  %scevgep59 = getelementptr i8, ptr %i.ar, i64 %i.dt
  %i.dz = mul i32 %i.e, %i.cg
  %i.ea = add i32 %i.a, %i.dz
  %i.eb = add i32 %i.ea, %i.du
  %scevgep62 = getelementptr i8, ptr %i.ar, i64 %i.dt
  %i.ec = mul i32 %i.e, %i.cj
  %i.ed = add i32 %i.a, %i.ec
  %i.ee = mul i32 %i.c, %i.ck
  %i.ef = add i32 %i.ed, %i.ee
  %scevgep65 = getelementptr i8, ptr %i.bc, i64 %i.dt
  %i.eg = mul i32 %i.c, %i.cn                     ; 2 uses
  %i.eh = add i32 %i.a, %i.eg
  %i.ei = mul i32 %i.cm, %i.dw
  %i.ej = add i32 %i.eh, %i.ei
  %scevgep68 = getelementptr i8, ptr %i.bl, i64 %i.dt
  %i.ek = mul i32 %i.e, %i.cm
  %i.el = add i32 %i.a, %i.ek
  %i.em = add i32 %i.el, %i.eg
  %scevgep71 = getelementptr i8, ptr %i.bl, i64 %i.dt
  %i.en = mul i32 %i.c, %i.cq                     ; 2 uses
  %i.eo = add i32 %i.a, %i.en
  %i.ep = mul i32 %i.cp, %i.dw
  %i.eq = add i32 %i.eo, %i.ep
  %scevgep74 = getelementptr i8, ptr %i.bu, i64 %i.dt
  %i.er = mul i32 %i.e, %i.cp
  %i.es = add i32 %i.a, %i.er
  %i.et = add i32 %i.es, %i.en
  %scevgep77 = getelementptr i8, ptr %i.bu, i64 %i.dt
  %2 = add i32 %i.g, -1                           ; 2 uses
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %5 = shufflevector <8 x i32> %i.dc, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 3, i32 5, i32 5, i32 7, i32 7>
  %6 = shufflevector <8 x i32> %i.dg, <8 x i32> %i.dc, <8 x i32> <i32 0, i32 1, i32 1, i32 3, i32 12, i32 12, i32 14, i32 14>
  %7 = insertelement <8 x i32> poison, i32 %i.cb, i64 0
  %8 = shufflevector <8 x i32> %7, <8 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %2, 3
  %invariant.op121 = add <8 x i32> %i.dl, %8
  %n.vec = and i64 %4, 8589934590                 ; 3 uses
  %i.eu = add nuw nsw i64 %n.vec, %i.bx
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge32
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge32 ] ; 7 uses
  %.02234 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.ja, %._crit_edge32 ] ; 7 uses
  %i.ev = mul i32 %i.cd, %indvar
  %i.ew = add i32 %i.dp, %i.ev
  %i.ex = mul i32 %i.cg, %indvar                  ; 2 uses
  %i.ey = add i32 %i.dy, %i.ex
  %i.ez = add i32 %i.eb, %i.ex
  %i.fa = mul i32 %i.cj, %indvar
  %i.fb = add i32 %i.ef, %i.fa
  %i.fc = mul i32 %i.cm, %indvar                  ; 2 uses
  %i.fd = add i32 %i.ej, %i.fc
  %i.fe = add i32 %i.em, %i.fc
  %i.ff = mul i32 %i.cp, %indvar                  ; 2 uses
  %i.fg = add i32 %i.eq, %i.ff
  %i.fh = add i32 %i.et, %i.ff
  %i.fi = insertelement <8 x i32> poison, i32 %indvar, i64 0
  %i.fj = shufflevector <8 x i32> %i.fi, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.fk = mul <8 x i32> %5, %i.fj                 ; 2 uses
  %i.fl = add <8 x i32> %i.dl, %i.fk
  %i.fm = add nsw i32 %.02234, -1                 ; 3 uses
  %i.fn = mul nsw i32 %i.cd, %.02234
  %i.fo = mul nsw i32 %i.cg, %.02234              ; 2 uses
  %i.fp = mul nsw i32 %i.cg, %i.fm                ; 2 uses
  %i.fq = mul nsw i32 %i.cj, %.02234
  %i.fr = mul nsw i32 %i.cm, %.02234              ; 2 uses
  %i.fs = mul nsw i32 %i.cm, %i.fm                ; 2 uses
  %i.ft = mul nsw i32 %i.cp, %.02234              ; 2 uses
  %i.fu = mul nsw i32 %i.cp, %i.fm                ; 2 uses
  %invariant.op119.reass = add <8 x i32> %i.fk, %invariant.op121
  br label %.preheader

._crit_edge36.split:                              ; preds = %._crit_edge32, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar45 = phi i32 [ 0, %.preheader25 ], [ %indvar.next46, %._crit_edge ] ; 7 uses
  %.02131 = phi i32 [ %i.c, %.preheader25 ], [ %i.jb, %._crit_edge ] ; 6 uses
  %i.fv = mul i32 %i.ce, %indvar45
  %i.fw = add i32 %i.ew, %i.fv
  %i.fx = sext i32 %i.fw to i64
  %i.fy = shl nsw i64 %i.fx, 3                    ; 2 uses
  %scevgep54 = getelementptr i8, ptr %i.ai, i64 %i.fy ; 9 uses
  %scevgep56 = getelementptr i8, ptr %scevgep55, i64 %i.fy ; 9 uses
  %i.fz = mul i32 %i.ch, %indvar45                ; 2 uses
  %i.ga = add i32 %i.ey, %i.fz
  %i.gb = sext i32 %i.ga to i64
  %i.gc = shl nsw i64 %i.gb, 3                    ; 2 uses
  %scevgep58 = getelementptr i8, ptr %i.ar, i64 %i.gc
  %scevgep60 = getelementptr i8, ptr %scevgep59, i64 %i.gc
  %i.gd = add i32 %i.ez, %i.fz
  %i.ge = sext i32 %i.gd to i64
  %i.gf = shl nsw i64 %i.ge, 3                    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.ar, i64 %i.gf
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.gf
  %i.gg = mul i32 %i.ck, %indvar45
  %i.gh = add i32 %i.fb, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = shl nsw i64 %i.gi, 3                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.bc, i64 %i.gj
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.gj
  %i.gk = mul i32 %i.cn, %indvar45                ; 2 uses
  %i.gl = add i32 %i.fd, %i.gk
  %i.gm = sext i32 %i.gl to i64
  %i.gn = shl nsw i64 %i.gm, 3                    ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.bl, i64 %i.gn
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.gn
  %i.go = add i32 %i.fe, %i.gk
  %i.gp = sext i32 %i.go to i64
  %i.gq = shl nsw i64 %i.gp, 3                    ; 2 uses
  %scevgep70 = getelementptr i8, ptr %i.bl, i64 %i.gq
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.gq
  %i.gr = mul i32 %i.cq, %indvar45                ; 2 uses
  %i.gs = add i32 %i.fg, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = shl nsw i64 %i.gt, 3                    ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.bu, i64 %i.gu
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.gu
  %i.gv = add i32 %i.fh, %i.gr
  %i.gw = sext i32 %i.gv to i64
  %i.gx = shl nsw i64 %i.gw, 3                    ; 2 uses
  %scevgep76 = getelementptr i8, ptr %i.bu, i64 %i.gx
  %scevgep78 = getelementptr i8, ptr %scevgep77, i64 %i.gx
  %i.gy = mul nsw i32 %i.ce, %.02131
  %invariant.op = add i32 %i.gy, %i.fn            ; 2 uses
  %i.gz = mul nsw i32 %i.ch, %.02131              ; 2 uses
  %i.ha = mul nsw i32 %i.ck, %.02131
  %invariant.op28 = add i32 %i.ha, %i.fq          ; 2 uses
  %i.hb = mul nsw i32 %i.cn, %.02131              ; 2 uses
  %i.hc = mul nsw i32 %i.cq, %.02131              ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.hd = insertelement <8 x i32> poison, i32 %indvar45, i64 0
  %i.he = shufflevector <8 x i32> %i.hd, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.hf = mul <8 x i32> %6, %i.he                 ; 2 uses
  %i.hg = add <8 x i32> %i.fl, %i.hf
  %.reass120 = add <8 x i32> %i.hf, %invariant.op119.reass
  %i.hh = icmp slt <8 x i32> %.reass120, %i.hg
  %i.hi = bitcast <8 x i1> %i.hh to i8
  %.not = icmp eq i8 %i.hi, 0
  br i1 %.not, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %.sroa.4.0.copyload, %scevgep56
  %bound1 = icmp ult ptr %scevgep54, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound079 = icmp ult ptr %i.av, %scevgep56
  %bound180 = icmp ult ptr %scevgep54, %scevgep57
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict, %found.conflict81
  %bound082 = icmp ult ptr %scevgep54, %scevgep60
  %bound183 = icmp ult ptr %scevgep58, %scevgep56
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx, %found.conflict84
  %bound086 = icmp ult ptr %scevgep54, %scevgep63
  %bound187 = icmp ult ptr %scevgep61, %scevgep56
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx89 = or i1 %conflict.rdx85, %found.conflict88
  %bound090 = icmp ult ptr %scevgep54, %scevgep66
  %bound191 = icmp ult ptr %scevgep64, %scevgep56
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx93 = or i1 %conflict.rdx89, %found.conflict92
  %bound094 = icmp ult ptr %scevgep54, %scevgep69
  %bound195 = icmp ult ptr %scevgep67, %scevgep56
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx97 = or i1 %conflict.rdx93, %found.conflict96
  %bound098 = icmp ult ptr %scevgep54, %scevgep72
  %bound199 = icmp ult ptr %scevgep70, %scevgep56
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %conflict.rdx97, %found.conflict100
  %bound0102 = icmp ult ptr %scevgep54, %scevgep75
  %bound1103 = icmp ult ptr %scevgep73, %scevgep56
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx105 = or i1 %conflict.rdx101, %found.conflict104
  %bound0106 = icmp ult ptr %scevgep54, %scevgep78
  %bound1107 = icmp ult ptr %scevgep76, %scevgep56
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx109 = or i1 %conflict.rdx105, %found.conflict108
  br i1 %conflict.rdx109, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hj = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13239, !alias.scope !13241, !noalias !13244
  %broadcast.splatinsert117 = insertelement <2 x double> poison, double %i.hj, i64 0
  %broadcast.splat118 = shufflevector <2 x double> %broadcast.splatinsert117, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = load double, ptr %i.av, align 8, !tbaa !247, !alias.scope !13246, !noalias !13248
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hk, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hl = trunc i64 %index to i32
  %i.hm = add i32 %i.a, %i.hl                     ; 5 uses
  %i.hn = add i32 %invariant.op, %i.hm
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ho ; 2 uses
  %wide.load = load <2 x double>, ptr %i.hp, align 8, !tbaa !247, !alias.scope !13244, !noalias !13249
  %i.hq = add i32 %i.gz, %i.hm                    ; 2 uses
  %i.hr = add i32 %i.hq, %i.fo
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.hs
  %wide.load110 = load <2 x double>, ptr %i.ht, align 8, !tbaa !247, !alias.scope !13257
  %i.hu = add i32 %i.hq, %i.fp
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.hv
  %wide.load111 = load <2 x double>, ptr %i.hw, align 8, !tbaa !247, !alias.scope !13258
  %i.hx = fsub <2 x double> %wide.load110, %wide.load111
  %i.hy = add i32 %invariant.op28, %i.hm
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.hz
  %wide.load112 = load <2 x double>, ptr %i.ia, align 8, !tbaa !247, !alias.scope !13259
  %i.ib = fdiv <2 x double> %i.hx, %broadcast.splat
  %i.ic = fsub <2 x double> %wide.load112, %i.ib
  %i.id = add i32 %i.hb, %i.hm                    ; 2 uses
  %i.ie = add i32 %i.id, %i.fr
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.if
  %wide.load113 = load <2 x double>, ptr %i.ig, align 8, !tbaa !247, !alias.scope !13260
  %i.ih = add i32 %i.id, %i.fs
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ii
  %wide.load114 = load <2 x double>, ptr %i.ij, align 8, !tbaa !247, !alias.scope !13261
  %i.ik = fmul <2 x double> %wide.load114, splat (double 5.000000e-01)
  %i.il = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load113, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ik)
  %i.im = fdiv <2 x double> %i.ic, %i.il
  %i.in = add i32 %i.hc, %i.hm                    ; 2 uses
  %i.io = add i32 %i.in, %i.ft
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ip
  %wide.load115 = load <2 x double>, ptr %i.iq, align 8, !tbaa !247, !alias.scope !13262
  %i.ir = add i32 %i.in, %i.fu
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.is
  %wide.load116 = load <2 x double>, ptr %i.it, align 8, !tbaa !247, !alias.scope !13263
  %i.iu = fsub <2 x double> %wide.load115, %wide.load116
  %i.iv = fdiv <2 x double> %i.iu, %broadcast.splat
  %i.iw = fsub <2 x double> %i.im, %i.iv
  %i.ix = fmul <2 x double> %broadcast.splat118, %i.iw
  %i.iy = fadd <2 x double> %wide.load, %i.ix
  store <2 x double> %i.iy, ptr %i.hp, align 8, !tbaa !247, !alias.scope !13244, !noalias !13249
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !13264

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bx, %vector.memcheck ], [ %i.bx, %vector.scevcheck ], [ %i.bx, %.preheader ], [ %i.eu, %middle.block ]
  br label %scalar.ph

._crit_edge32:                                    ; preds = %._crit_edge
  %i.ja = add i32 %.02234, 1                      ; 2 uses
  %exitcond40.not = icmp eq i32 %i.ja, %i.ca
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond40.not, label %._crit_edge36.split, label %.preheader25, !llvm.loop !13265

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.jb = add i32 %.02131, 1                      ; 2 uses
  %exitcond39.not = icmp eq i32 %i.jb, %i.bz
  %indvar.next46 = add i32 %indvar45, 1
  br i1 %exitcond39.not, label %._crit_edge32, label %.preheader, !llvm.loop !13266

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jc = trunc i64 %indvars.iv to i32            ; 5 uses
  %.reass = add i32 %invariant.op, %i.jc
  %i.jd = sext i32 %.reass to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.jd ; 2 uses
  %i.jf = load double, ptr %i.je, align 8, !tbaa !247
  %i.jg = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13239
  %i.jh = add i32 %i.gz, %i.jc                    ; 2 uses
  %i.ji = add i32 %i.jh, %i.fo
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.jj
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !247
  %i.jm = add i32 %i.jh, %i.fp
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.jn
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !247
  %i.jq = fsub double %i.jl, %i.jp
  %i.jr = load double, ptr %i.av, align 8, !tbaa !247, !noalias !13236 ; 2 uses
  %.reass29 = add i32 %invariant.op28, %i.jc
  %i.js = sext i32 %.reass29 to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.js
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !247
  %i.jv = fdiv double %i.jq, %i.jr
  %i.jw = fsub double %i.ju, %i.jv
  %i.jx = add i32 %i.hb, %i.jc                    ; 2 uses
  %i.jy = add i32 %i.jx, %i.fr
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !247
  %i.kc = add i32 %i.jx, %i.fs
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.kd
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !247
  %i.kg = fmul double %i.kf, 5.000000e-01
  %i.kh = tail call double @llvm.fmuladd.f64(double %i.kb, double 5.000000e-01, double %i.kg)
  %i.ki = fdiv double %i.jw, %i.kh
  %i.kj = add i32 %i.hc, %i.jc                    ; 2 uses
  %i.kk = add i32 %i.kj, %i.ft
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.kl
  %i.kn = load double, ptr %i.km, align 8, !tbaa !247
  %i.ko = add i32 %i.kj, %i.fu
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.kp
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !247
  %i.ks = fsub double %i.kn, %i.kr
  %i.kt = fdiv double %i.ks, %i.jr
  %i.ku = fsub double %i.ki, %i.kt
  %i.kv = fmul double %i.jg, %i.ku
  %i.kw = fadd double %i.jf, %i.kv
  store double %i.kw, ptr %i.je, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.by, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !13267
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9MultiArg5I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_S8_EC2ERKS8_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(144) %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !6409
  store i32 %i.a, ptr %0, align 8, !tbaa !6409
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !6414
  store i32 %i.f, ptr %i.d, align 8, !tbaa !6414
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
end_hunk_5
begin_hunk_6_@_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEED2Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %1, ptr %2, align 8, !tbaa !6427
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6187 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 440) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.893, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %i.b, ptr %1, align 8, !tbaa !8575
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13405
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13405 ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2330 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8 ; 2 uses
  %brmerge = select i1 %.not2330, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge36.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8575 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !6416
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !6419
  %i.z = load i64, ptr %i.v, align 8, !tbaa !6415
  %i.aa = getelementptr inbounds [88 x i8], ptr %i.y, i64 %i.z ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2989 ; 16 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2989 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !4  ; 5 uses
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !6416
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6419
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !6415
  %i.ar = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2989 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !4  ; 5 uses
  %i.ay = zext i32 %i.a to i64                    ; 4 uses
  %i.az = add i32 %i.g, %i.a
  %i.ba = add i32 %i.i, %i.c
  %i.bb = add i32 %i.k, %i.e
  %i.bc = add i32 %i.g, -1                        ; 3 uses
  %i.bd = mul i32 %i.e, %i.ax
  %i.be = add i32 %i.a, %i.bd
  %i.bf = mul i32 %i.c, %i.av
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.bi = add i32 %i.a, %i.bh                     ; 2 uses
  %i.bj = mul i32 %i.c, %i.ae                     ; 2 uses
  %i.bk = add i32 %i.c, 1
  %i.bl = add i32 %i.bi, %i.bj
  %i.bm = mul i32 %i.ae, %i.bk                    ; 2 uses
  %i.bn = add i32 %i.bi, %i.bm
  %i.bo = add i32 %i.a, %i.bh                     ; 2 uses
  %i.bp = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %i.bq = insertelement <4 x i32> %i.bp, i32 %i.bn, i64 1
  %i.br = insertelement <4 x i32> %i.bq, i32 %i.bo, i64 2
  %i.bs = insertelement <4 x i32> %i.br, i32 %i.bm, i64 3
  %i.bt = insertelement <4 x i32> <i32 -1, i32 -1, i32 poison, i32 poison>, i32 %i.bj, i64 2
  %i.bu = insertelement <4 x i32> %i.bt, i32 %i.bo, i64 3
  %i.bv = add <4 x i32> %i.bs, %i.bu              ; 2 uses
  %i.bw = mul i32 %i.e, %i.am
  %i.bx = add i32 %i.a, %i.bw
  %i.by = mul i32 %i.c, %i.ak
  %i.bz = add i32 %i.bx, %i.by
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 16
  %i.ca = mul i32 %i.e, %i.ax
  %i.cb = add i32 %i.a, %i.ca
  %i.cc = mul i32 %i.c, %i.av
  %i.cd = add i32 %i.cb, %i.cc
  %i.ce = add i32 %i.g, -1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 8                ; 6 uses
  %scevgep53 = getelementptr i8, ptr %i.at, i64 %i.ch
  %i.ci = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.cj = add i32 %i.a, %i.ci                     ; 2 uses
  %i.ck = add i32 %i.c, 1
  %i.cl = mul i32 %i.ae, %i.ck                    ; 2 uses
  %i.cm = add i32 %i.cj, %i.cl
  %scevgep56 = getelementptr i8, ptr %i.ac, i64 %i.ch
  %i.cn = mul i32 %i.c, %i.ae                     ; 2 uses
  %i.co = add i32 %i.cj, %i.cn
  %scevgep59 = getelementptr i8, ptr %i.ac, i64 %i.ch
  %i.cp = add i32 %i.a, %i.ci                     ; 2 uses
  %i.cq = add i32 %i.cp, %i.cl
  %i.cr = add i32 %i.cq, -1
  %scevgep62 = getelementptr i8, ptr %i.ac, i64 %i.ch
  %i.cs = add i32 %i.cp, %i.cn
  %i.ct = add i32 %i.cs, -1
  %scevgep65 = getelementptr i8, ptr %i.ac, i64 %i.ch
  %i.cu = mul i32 %i.e, %i.am
  %i.cv = add i32 %i.a, %i.cu
  %i.cw = mul i32 %i.c, %i.ak
  %i.cx = add i32 %i.cv, %i.cw
  %scevgep68 = getelementptr i8, ptr %i.ai, i64 %i.ch
  %2 = add i32 %i.g, -1                           ; 2 uses
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %5 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %2, 7
  %invariant.op96 = add <4 x i32> %i.bv, %6
  %n.vec = and i64 %4, 8589934590                 ; 3 uses
  %i.cy = add nuw nsw i64 %n.vec, %i.ay
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge32
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge32 ] ; 7 uses
  %.02234 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.gn, %._crit_edge32 ] ; 4 uses
  %i.cz = mul i32 %i.ax, %indvar
  %i.da = add i32 %i.cd, %i.cz
  %i.db = mul i32 %i.ag, %indvar                  ; 4 uses
  %i.dc = add i32 %i.cm, %i.db
  %i.dd = add i32 %i.co, %i.db
  %i.de = add i32 %i.cr, %i.db
  %i.df = add i32 %i.ct, %i.db
  %i.dg = mul i32 %i.am, %indvar
  %i.dh = add i32 %i.cx, %i.dg
  %i.di = mul i32 %i.ax, %indvar
  %i.dj = add i32 %i.bg, %i.di
  %i.dk = mul i32 %i.ag, %indvar
  %i.dl = insertelement <4 x i32> poison, i32 %i.dk, i64 0
  %i.dm = mul i32 %i.am, %indvar
  %i.dn = add i32 %i.bz, %i.dm
  %i.do = mul nsw i32 %i.ag, %.02234              ; 2 uses
  %i.dp = mul nsw i32 %i.am, %.02234
  %i.dq = mul nsw i32 %i.ax, %.02234
  br label %.preheader

._crit_edge36.split:                              ; preds = %._crit_edge32, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar45 = phi i32 [ 0, %.preheader25 ], [ %indvar.next46, %._crit_edge ] ; 7 uses
  %.02131 = phi i32 [ %i.c, %.preheader25 ], [ %i.en, %._crit_edge ] ; 4 uses
  %i.dr = mul i32 %i.av, %indvar45
  %i.ds = add i32 %i.da, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = shl nsw i64 %i.dt, 3                    ; 2 uses
  %scevgep52 = getelementptr i8, ptr %i.at, i64 %i.du ; 6 uses
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.du ; 6 uses
  %i.dv = mul i32 %i.ae, %indvar45                ; 4 uses
  %i.dw = add i32 %i.dc, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = shl nsw i64 %i.dx, 3                    ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.ac, i64 %i.dy
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.dy
  %i.dz = add i32 %i.dd, %i.dv
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i64 %i.ea, 3                    ; 2 uses
  %scevgep58 = getelementptr i8, ptr %i.ac, i64 %i.eb
  %scevgep60 = getelementptr i8, ptr %scevgep59, i64 %i.eb
  %i.ec = add i32 %i.de, %i.dv
  %i.ed = sext i32 %i.ec to i64
  %i.ee = shl nsw i64 %i.ed, 3                    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.ac, i64 %i.ee
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.ee
  %i.ef = add i32 %i.df, %i.dv
  %i.eg = sext i32 %i.ef to i64
  %i.eh = shl nsw i64 %i.eg, 3                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.ac, i64 %i.eh
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.eh
  %i.ei = mul i32 %i.ak, %indvar45
  %i.ej = add i32 %i.dh, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 3                    ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.ai, i64 %i.el
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.el
  %i.em = mul nsw i32 %i.ae, %.02131              ; 4 uses
  %i.en = add nsw i32 %.02131, 1                  ; 3 uses
  %i.eo = mul nsw i32 %i.ae, %i.en                ; 4 uses
  %i.ep = mul nsw i32 %i.ak, %.02131
  %invariant.op = add i32 %i.ep, %i.dp            ; 2 uses
  %i.eq = mul nsw i32 %i.av, %.02131
  %invariant.op28 = add i32 %i.eq, %i.dq          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.er = mul i32 %i.ak, %indvar45
  %i.es = add i32 %i.dn, %i.er                    ; 2 uses
  %i.et = mul i32 %i.ae, %indvar45
  %i.eu = mul i32 %i.av, %indvar45
  %i.ev = add i32 %i.dj, %i.eu                    ; 2 uses
  %i.ew = add i32 %i.ev, %i.bc
  %i.ex = icmp slt i32 %i.ew, %i.ev
  %i.ey = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.ez = add <4 x i32> %i.ey, %i.dl
  %i.fa = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fb = add <4 x i32> %i.fa, %i.bv
  %.reass97 = add <4 x i32> %i.fa, %invariant.op96
  %i.fc = icmp slt <4 x i32> %.reass97, %i.fb
  %i.fd = add i32 %i.es, %i.bc
  %i.fe = icmp slt i32 %i.fd, %i.es
  %i.ff = bitcast <4 x i1> %i.fc to i4
  %i.fg = icmp ne i4 %i.ff, 0
  %op.rdx = or i1 %i.fg, %i.ex
  %op.rdx95 = or i1 %op.rdx, %i.fe
  br i1 %op.rdx95, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %.sroa.4.0.copyload, %scevgep54
  %bound1 = icmp ult ptr %scevgep52, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound070 = icmp ult ptr %scevgep52, %scevgep57
  %bound171 = icmp ult ptr %scevgep55, %scevgep54
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx = or i1 %found.conflict, %found.conflict72
  %bound073 = icmp ult ptr %scevgep52, %scevgep60
  %bound174 = icmp ult ptr %scevgep58, %scevgep54
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx76 = or i1 %conflict.rdx, %found.conflict75
  %bound077 = icmp ult ptr %scevgep52, %scevgep63
  %bound178 = icmp ult ptr %scevgep61, %scevgep54
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx80 = or i1 %conflict.rdx76, %found.conflict79
  %bound081 = icmp ult ptr %scevgep52, %scevgep66
  %bound182 = icmp ult ptr %scevgep64, %scevgep54
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx84 = or i1 %conflict.rdx80, %found.conflict83
  %bound085 = icmp ult ptr %scevgep52, %scevgep69
  %bound186 = icmp ult ptr %scevgep67, %scevgep54
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84, %found.conflict87
  br i1 %conflict.rdx88, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fh = load double, ptr %i.r, align 8, !tbaa !13407, !alias.scope !13409, !noalias !13412
  %broadcast.splatinsert93 = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat94 = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13414, !alias.scope !13409, !noalias !13412
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fi, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fj = trunc i64 %index to i32
  %i.fk = add i32 %i.a, %i.fj                     ; 3 uses
  %i.fl = add i32 %i.do, %i.fk                    ; 3 uses
  %i.fm = add i32 %i.fl, -1                       ; 2 uses
  %i.fn = add i32 %i.fm, %i.em
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fo
  %wide.load = load <2 x double>, ptr %i.fp, align 8, !tbaa !247, !alias.scope !13415
  %i.fq = add i32 %i.fm, %i.eo
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fr
  %wide.load89 = load <2 x double>, ptr %i.fs, align 8, !tbaa !247, !alias.scope !13417
  %i.ft = fadd <2 x double> %wide.load, %wide.load89
  %i.fu = add i32 %i.fl, %i.em
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fv
  %wide.load90 = load <2 x double>, ptr %i.fw, align 8, !tbaa !247, !alias.scope !13419
  %i.fx = add i32 %i.fl, %i.eo
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fy
  %wide.load91 = load <2 x double>, ptr %i.fz, align 8, !tbaa !247, !alias.scope !13421
  %i.ga = fadd <2 x double> %wide.load90, %wide.load91
  %i.gb = fmul <2 x double> %i.ga, splat (double 5.000000e-01)
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> splat (double 5.000000e-01), <2 x double> %i.gb)
  %i.gd = fmul <2 x double> %i.gc, splat (double 5.000000e-01)
  %i.ge = add i32 %invariant.op, %i.fk
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.gf
  %wide.load92 = load <2 x double>, ptr %i.gg, align 8, !tbaa !247, !alias.scope !13423
  %i.gh = fmul <2 x double> %i.gd, %broadcast.splat
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load92, <2 x double> %broadcast.splat94, <2 x double> %i.gh)
  %i.gj = add i32 %invariant.op28, %i.fk
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.gk
  store <2 x double> %i.gi, ptr %i.gl, align 8, !tbaa !247, !alias.scope !13412, !noalias !13425
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !13426

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ay, %vector.memcheck ], [ %i.ay, %vector.scevcheck ], [ %i.ay, %.preheader ], [ %i.cy, %middle.block ]
  br label %scalar.ph

._crit_edge32:                                    ; preds = %._crit_edge
  %i.gn = add i32 %.02234, 1                      ; 2 uses
  %exitcond40.not = icmp eq i32 %i.gn, %i.bb
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond40.not, label %._crit_edge36.split, label %.preheader25, !llvm.loop !13427

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond39.not = icmp eq i32 %i.en, %i.ba
  %indvar.next46 = add i32 %indvar45, 1
  br i1 %exitcond39.not, label %._crit_edge32, label %.preheader, !llvm.loop !13428

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.go = trunc i64 %indvars.iv to i32            ; 3 uses
  %i.gp = add i32 %i.do, %i.go                    ; 3 uses
  %i.gq = add i32 %i.gp, -1                       ; 2 uses
  %i.gr = add i32 %i.gq, %i.em
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.gs
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !247
  %i.gv = add i32 %i.gq, %i.eo
  %i.gw = sext i32 %i.gv to i64
end_hunk_6
begin_hunk_7_@_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED2Ev
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %1, ptr %2, align 8, !tbaa !6427
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6187 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 440) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.896, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %i.b, ptr %1, align 8, !tbaa !8575
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13515
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13515 ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2330 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8 ; 2 uses
  %brmerge = select i1 %.not2330, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge36.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8575 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !6416
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !6419
  %i.z = load i64, ptr %i.v, align 8, !tbaa !6415
  %i.aa = getelementptr inbounds [88 x i8], ptr %i.y, i64 %i.z ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2989 ; 16 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2989 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.am = load i32, ptr %i.al, align 8, !tbaa !4  ; 5 uses
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !6416
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6419
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !6415
  %i.ar = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2989 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !4  ; 5 uses
  %i.ay = zext i32 %i.a to i64                    ; 4 uses
  %i.az = add i32 %i.g, %i.a
  %i.ba = add i32 %i.i, %i.c
  %i.bb = add i32 %i.k, %i.e
  %i.bc = add i32 %i.g, -1                        ; 3 uses
  %i.bd = mul i32 %i.e, %i.ax
  %i.be = add i32 %i.a, %i.bd
  %i.bf = mul i32 %i.c, %i.av
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.bi = mul i32 %i.c, %i.ae
  %i.bj = add i32 %i.c, -1
  %i.bk = mul i32 %i.ae, %i.bj                    ; 2 uses
  %i.bl = add i32 %i.a, %i.bh
  %i.bm = add i32 %i.bl, %i.bk
  %i.bn = add i32 %i.a, %i.bh                     ; 2 uses
  %i.bo = add i32 %i.bn, %i.bi                    ; 2 uses
  %i.bp = insertelement <2 x i32> poison, i32 %i.bo, i64 0
  %i.bq = insertelement <2 x i32> %i.bp, i32 %i.bn, i64 1
  %i.br = insertelement <2 x i32> <i32 1, i32 poison>, i32 %i.bk, i64 1
  %i.bs = add <2 x i32> %i.bq, %i.br
  %i.bt = add i32 %i.bm, 1
  %i.bu = mul i32 %i.e, %i.am
  %i.bv = add i32 %i.a, %i.bu
  %i.bw = mul i32 %i.c, %i.ak
  %i.bx = add i32 %i.bv, %i.bw
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 16
  %i.by = mul i32 %i.e, %i.ax
  %i.bz = add i32 %i.a, %i.by
  %i.ca = mul i32 %i.c, %i.av
  %i.cb = add i32 %i.bz, %i.ca
  %i.cc = add i32 %i.g, -1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = add nuw nsw i64 %i.ce, 8                ; 6 uses
  %scevgep53 = getelementptr i8, ptr %i.at, i64 %i.cf
  %i.cg = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.ch = add i32 %i.a, %i.cg
  %i.ci = add i32 %i.c, -1
  %i.cj = mul i32 %i.ae, %i.ci
  %i.ck = add i32 %i.ch, %i.cj                    ; 2 uses
  %i.cl = add i32 %i.ck, 1
  %scevgep56 = getelementptr i8, ptr %i.ac, i64 %i.cf
  %scevgep59 = getelementptr i8, ptr %i.ac, i64 %i.cf
  %i.cm = add i32 %i.a, %i.cg
  %i.cn = mul i32 %i.c, %i.ae
  %i.co = add i32 %i.cm, %i.cn                    ; 2 uses
  %i.cp = add i32 %i.co, 1
  %scevgep62 = getelementptr i8, ptr %i.ac, i64 %i.cf
  %scevgep65 = getelementptr i8, ptr %i.ac, i64 %i.cf
  %i.cq = mul i32 %i.e, %i.am
  %i.cr = add i32 %i.a, %i.cq
  %i.cs = mul i32 %i.c, %i.ak
  %i.ct = add i32 %i.cr, %i.cs
  %scevgep68 = getelementptr i8, ptr %i.ai, i64 %i.cf
  %2 = add i32 %i.g, -1                           ; 2 uses
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.cu = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %5 = shufflevector <2 x i32> %i.bs, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x i32> %i.cu, <4 x i32> %5, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %7 = insertelement <4 x i32> %6, i32 %i.bt, i64 3 ; 2 uses
  %8 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %2, 7
  %invariant.op96 = add <4 x i32> %7, %9
  %n.vec = and i64 %4, 8589934590                 ; 3 uses
  %i.cv = add nuw nsw i64 %n.vec, %i.ay
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge32
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge32 ] ; 7 uses
  %.02234 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.gk, %._crit_edge32 ] ; 4 uses
  %i.cw = mul i32 %i.ax, %indvar
  %i.cx = add i32 %i.cb, %i.cw
  %i.cy = mul i32 %i.ag, %indvar                  ; 4 uses
  %i.cz = add i32 %i.cl, %i.cy
  %i.da = add i32 %i.ck, %i.cy
  %i.db = add i32 %i.cp, %i.cy
  %i.dc = add i32 %i.co, %i.cy
  %i.dd = mul i32 %i.am, %indvar
  %i.de = add i32 %i.ct, %i.dd
  %i.df = mul i32 %i.ax, %indvar
  %i.dg = add i32 %i.bg, %i.df
  %i.dh = mul i32 %i.ag, %indvar
  %i.di = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %i.dj = mul i32 %i.am, %indvar
  %i.dk = add i32 %i.bx, %i.dj
  %i.dl = mul nsw i32 %i.ag, %.02234              ; 2 uses
  %i.dm = mul nsw i32 %i.am, %.02234
  %i.dn = mul nsw i32 %i.ax, %.02234
  br label %.preheader

._crit_edge36.split:                              ; preds = %._crit_edge32, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar45 = phi i32 [ 0, %.preheader25 ], [ %indvar.next46, %._crit_edge ] ; 7 uses
  %.02131 = phi i32 [ %i.c, %.preheader25 ], [ %i.gl, %._crit_edge ] ; 5 uses
  %i.do = mul i32 %i.av, %indvar45
  %i.dp = add i32 %i.cx, %i.do
  %i.dq = sext i32 %i.dp to i64
  %i.dr = shl nsw i64 %i.dq, 3                    ; 2 uses
  %scevgep52 = getelementptr i8, ptr %i.at, i64 %i.dr ; 6 uses
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.dr ; 6 uses
  %i.ds = mul i32 %i.ae, %indvar45                ; 4 uses
  %i.dt = add i32 %i.cz, %i.ds
  %i.du = sext i32 %i.dt to i64
  %i.dv = shl nsw i64 %i.du, 3                    ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.ac, i64 %i.dv
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.dv
  %i.dw = add i32 %i.da, %i.ds
  %i.dx = sext i32 %i.dw to i64
  %i.dy = shl nsw i64 %i.dx, 3                    ; 2 uses
  %scevgep58 = getelementptr i8, ptr %i.ac, i64 %i.dy
  %scevgep60 = getelementptr i8, ptr %scevgep59, i64 %i.dy
  %i.dz = add i32 %i.db, %i.ds
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i64 %i.ea, 3                    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.ac, i64 %i.eb
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.eb
  %i.ec = add i32 %i.dc, %i.ds
  %i.ed = sext i32 %i.ec to i64
  %i.ee = shl nsw i64 %i.ed, 3                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.ac, i64 %i.ee
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.ee
  %i.ef = mul i32 %i.ak, %indvar45
  %i.eg = add i32 %i.de, %i.ef
  %i.eh = sext i32 %i.eg to i64
  %i.ei = shl nsw i64 %i.eh, 3                    ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.ai, i64 %i.ei
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.ei
  %i.ej = mul nsw i32 %i.ae, %.02131              ; 4 uses
  %i.ek = add nsw i32 %.02131, -1
  %i.el = mul nsw i32 %i.ae, %i.ek                ; 4 uses
  %i.em = mul nsw i32 %i.ak, %.02131
  %invariant.op = add i32 %i.em, %i.dm            ; 2 uses
  %i.en = mul nsw i32 %i.av, %.02131
  %invariant.op28 = add i32 %i.en, %i.dn          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.eo = mul i32 %i.ak, %indvar45
  %i.ep = add i32 %i.dk, %i.eo                    ; 2 uses
  %i.eq = mul i32 %i.ae, %indvar45
  %i.er = mul i32 %i.av, %indvar45
  %i.es = add i32 %i.dg, %i.er                    ; 2 uses
  %i.et = add i32 %i.es, %i.bc
  %i.eu = icmp slt i32 %i.et, %i.es
  %i.ev = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %i.ew = add <4 x i32> %i.ev, %i.di
  %i.ex = shufflevector <4 x i32> %i.ew, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ey = add <4 x i32> %i.ex, %7
  %.reass97 = add <4 x i32> %i.ex, %invariant.op96
  %i.ez = icmp slt <4 x i32> %.reass97, %i.ey
  %i.fa = add i32 %i.ep, %i.bc
  %i.fb = icmp slt i32 %i.fa, %i.ep
  %i.fc = bitcast <4 x i1> %i.ez to i4
  %i.fd = icmp ne i4 %i.fc, 0
  %op.rdx = or i1 %i.fd, %i.eu
  %op.rdx95 = or i1 %op.rdx, %i.fb
  br i1 %op.rdx95, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %.sroa.4.0.copyload, %scevgep54
  %bound1 = icmp ult ptr %scevgep52, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound070 = icmp ult ptr %scevgep52, %scevgep57
  %bound171 = icmp ult ptr %scevgep55, %scevgep54
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx = or i1 %found.conflict, %found.conflict72
  %bound073 = icmp ult ptr %scevgep52, %scevgep60
  %bound174 = icmp ult ptr %scevgep58, %scevgep54
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx76 = or i1 %conflict.rdx, %found.conflict75
  %bound077 = icmp ult ptr %scevgep52, %scevgep63
  %bound178 = icmp ult ptr %scevgep61, %scevgep54
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx80 = or i1 %conflict.rdx76, %found.conflict79
  %bound081 = icmp ult ptr %scevgep52, %scevgep66
  %bound182 = icmp ult ptr %scevgep64, %scevgep54
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx84 = or i1 %conflict.rdx80, %found.conflict83
  %bound085 = icmp ult ptr %scevgep52, %scevgep69
  %bound186 = icmp ult ptr %scevgep67, %scevgep54
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84, %found.conflict87
  br i1 %conflict.rdx88, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fe = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13517, !alias.scope !13519, !noalias !13522
  %broadcast.splatinsert93 = insertelement <2 x double> poison, double %i.fe, i64 0
  %broadcast.splat94 = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = load double, ptr %i.r, align 8, !tbaa !13524, !alias.scope !13519, !noalias !13522
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ff, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fg = trunc i64 %index to i32
  %i.fh = add i32 %i.a, %i.fg                     ; 3 uses
  %i.fi = add i32 %i.dl, %i.fh                    ; 3 uses
  %i.fj = add i32 %i.fi, %i.ej
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fk
  %wide.load = load <2 x double>, ptr %i.fl, align 8, !tbaa !247, !alias.scope !13525
  %i.fm = add i32 %i.fi, 1                        ; 2 uses
  %i.fn = add i32 %i.fm, %i.ej
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fo
  %wide.load89 = load <2 x double>, ptr %i.fp, align 8, !tbaa !247, !alias.scope !13527
  %i.fq = fadd <2 x double> %wide.load, %wide.load89
  %i.fr = add i32 %i.fi, %i.el
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fs
  %wide.load90 = load <2 x double>, ptr %i.ft, align 8, !tbaa !247, !alias.scope !13529
  %i.fu = add i32 %i.fm, %i.el
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fv
  %wide.load91 = load <2 x double>, ptr %i.fw, align 8, !tbaa !247, !alias.scope !13531
  %i.fx = fadd <2 x double> %wide.load90, %wide.load91
  %i.fy = fmul <2 x double> %i.fx, splat (double 5.000000e-01)
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> splat (double 5.000000e-01), <2 x double> %i.fy)
  %i.ga = fmul <2 x double> %i.fz, splat (double -5.000000e-01)
  %i.gb = add i32 %invariant.op, %i.fh
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.gc
  %wide.load92 = load <2 x double>, ptr %i.gd, align 8, !tbaa !247, !alias.scope !13533
  %i.ge = fmul <2 x double> %wide.load92, %broadcast.splat
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %broadcast.splat94, <2 x double> %i.ge)
  %i.gg = add i32 %invariant.op28, %i.fh
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.gh
  store <2 x double> %i.gf, ptr %i.gi, align 8, !tbaa !247, !alias.scope !13522, !noalias !13535
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !13536

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ay, %vector.memcheck ], [ %i.ay, %vector.scevcheck ], [ %i.ay, %.preheader ], [ %i.cv, %middle.block ]
  br label %scalar.ph

._crit_edge32:                                    ; preds = %._crit_edge
  %i.gk = add i32 %.02234, 1                      ; 2 uses
  %exitcond40.not = icmp eq i32 %i.gk, %i.bb
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond40.not, label %._crit_edge36.split, label %.preheader25, !llvm.loop !13537

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.gl = add i32 %.02131, 1                      ; 2 uses
  %exitcond39.not = icmp eq i32 %i.gl, %i.ba
  %indvar.next46 = add i32 %indvar45, 1
  br i1 %exitcond39.not, label %._crit_edge32, label %.preheader, !llvm.loop !13538

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gm = trunc i64 %indvars.iv to i32            ; 3 uses
  %i.gn = add i32 %i.dl, %i.gm                    ; 3 uses
  %i.go = add i32 %i.gn, %i.ej
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.gp
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !247
  %i.gs = add i32 %i.gn, 1                        ; 2 uses
  %i.gt = add i32 %i.gs, %i.ej
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !247
  %i.gx = fadd double %i.gr, %i.gw
  %i.gy = add i32 %i.gn, %i.el
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.gz
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !247
  %i.hc = add i32 %i.gs, %i.el
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !247
  %i.hg = fadd double %i.hb, %i.hf
  %i.hh = fmul double %i.hg, 5.000000e-01
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.gx, double 5.000000e-01, double %i.hh)
  %i.hj = fmul double %i.hi, -5.000000e-01
  %i.hk = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13517
  %.reass = add i32 %invariant.op, %i.gm
  %i.hl = sext i32 %.reass to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !247
  %i.ho = load double, ptr %i.r, align 8, !tbaa !13524
  %i.hp = fmul double %i.hn, %i.ho
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.hk, double %i.hp)
  %.reass29 = add i32 %invariant.op28, %i.gm
  %i.hr = sext i32 %.reass29 to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.hr
  store double %i.hq, ptr %i.hs, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.az, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !13539
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(144) ptr @_Z6assignI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEES5_dSB_8OpAssignERK5FieldIT_T0_T1_ESJ_RKSD_IT2_T3_T4_ERKT5_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %class.Field, align 8               ; 20 uses
  %4 = alloca %class.Field, align 8               ; 20 uses
  %5 = alloca %struct.Evaluator, align 1          ; 3 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !894    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge116

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80
end_hunk_7
begin_hunk_8_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_S0_IS6_d16ConstantFunctionES0_IS6_4ZeroIdES9_E15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg6IT_T0_T1_T2_T3_T4_ERKT5_RKSt6vectorIbSaIbEE:bb.a
_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit77: ; preds = %._crit_edge.i.i.i.i.i74, %.preheader.lr.ph.i.i.i.i.i58, %bb.w, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit57
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_S3_IS9_d16ConstantFunctionES3_IS9_4ZeroIdESC_EEN6Forgas4TUpdILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14107 ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not37 = icmp sgt i32 %i.e, %i.m
  br i1 %.not37, label %._crit_edge40.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2334 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2334, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge40.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !14105 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 656
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 648
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !6416
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !6419
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !6415
  %i.ag = getelementptr inbounds [88 x i8], ptr %i.ae, i64 %i.af ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2989 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !859 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 128    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2989 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 116
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 136 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 248
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2989 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 204
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 208
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 144 ; 2 uses
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !6416
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6419
  %i.ba = load i64, ptr %i.y, align 8, !tbaa !6415
  %i.bb = getelementptr inbounds [88 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2989 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !6419
  %i.bj = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.bk = getelementptr inbounds [88 x i8], ptr %i.bi, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2989 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !6419
  %i.bs = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.bt = getelementptr inbounds [88 x i8], ptr %i.br, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2989 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4  ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !4  ; 5 uses
  %i.ca = load ptr, ptr %i.r, align 8, !tbaa !1182
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1185 ; 2 uses
  %i.cd = load i64, ptr %i.s, align 8, !tbaa !1188 ; 2 uses
  %i.ce = getelementptr [56 x i8], ptr %i.cc, i64 %i.cd ; 3 uses
  %i.cf = zext i32 %i.a to i64                    ; 4 uses
  %i.cg = add i32 %i.g, %i.a
  %i.ch = add i32 %i.i, %i.c
  %i.ci = add i32 %i.k, %i.e
  %i.cj = add i32 %i.g, -1                        ; 2 uses
  %i.ck = add i32 %i.c, 1
  %i.cl = load i32, ptr %i.aj, align 4, !tbaa !4  ; 5 uses
  %i.cm = load i32, ptr %i.ak, align 8, !tbaa !4  ; 5 uses
  %i.cn = mul i32 %i.e, %i.cm
  %i.co = add i32 %i.a, %i.cn
  %i.cp = mul i32 %i.c, %i.cl
  %i.cq = load i32, ptr %i.bf, align 8, !tbaa !4  ; 5 uses
  %i.cr = load i32, ptr %i.be, align 4, !tbaa !4  ; 5 uses
  %i.cs = mul i32 %i.e, %i.cq
  %i.ct = add i32 %i.a, %i.cs
  %i.cu = mul i32 %i.c, %i.cr
  %i.cv = add i32 %i.e, 1
  %i.cw = load i32, ptr %i.av, align 8, !tbaa !4  ; 8 uses
  %i.cx = load i32, ptr %i.au, align 4, !tbaa !4  ; 5 uses
  %i.cy = load i32, ptr %i.bo, align 8, !tbaa !4  ; 5 uses
  %i.cz = load i32, ptr %i.bn, align 4, !tbaa !4  ; 5 uses
  %i.da = load i32, ptr %i.aq, align 8, !tbaa !4  ; 5 uses
  %i.db = load i32, ptr %i.ap, align 4, !tbaa !4  ; 8 uses
  %i.dc = mul i32 %i.db, %i.ck
  %i.dd = mul i32 %i.e, %i.cy
  %i.de = mul i32 %i.e, %i.cw
  %i.df = mul i32 %i.e, %i.da
  %i.dg = mul i32 %i.c, %i.cz
  %i.dh = mul i32 %i.c, %i.cx                     ; 2 uses
  %i.di = mul i32 %i.cw, %i.cv
  %i.dj = mul i32 %i.c, %i.db
  %i.dk = add i32 %i.a, %i.dd
  %i.dl = add i32 %i.a, %i.de
  %i.dm = add i32 %i.a, %i.dh
  %i.dn = add i32 %i.a, %i.df                     ; 2 uses
  %i.do = add i32 %i.ct, %i.cu
  %i.dp = add i32 %i.co, %i.cp                    ; 2 uses
  %i.dq = add i32 %i.dp, 1
  %i.dr = add i32 %i.dn, %i.dc
  %i.ds = add i32 %i.dn, %i.dj
  %i.dt = add i32 %i.dm, %i.di
  %i.du = add i32 %i.dl, %i.dh
  %i.dv = add i32 %i.dk, %i.dg
  %i.dw = mul i32 %i.e, %i.bz
  %i.dx = add i32 %i.a, %i.dw
  %i.dy = mul i32 %i.c, %i.bx
  %i.dz = add i32 %i.dx, %i.dy
  %scevgep = getelementptr i8, ptr %i.al, i64 152
  %i.ea = mul i32 %i.e, %i.cq
  %i.eb = add i32 %i.a, %i.ea
  %i.ec = mul i32 %i.c, %i.cr
  %i.ed = add i32 %i.eb, %i.ec
  %i.ee = add i32 %i.g, -1
  %i.ef = zext i32 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 3
  %i.eh = add nuw nsw i64 %i.eg, 8                ; 9 uses
  %scevgep60 = getelementptr i8, ptr %i.bd, i64 %i.eh
  %scevgep62 = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ei = mul i64 %i.cd, 56
  %i.ej = getelementptr i8, ptr %i.cc, i64 %i.ei
  %scevgep63 = getelementptr i8, ptr %i.ej, i64 8
  %i.ek = mul i32 %i.e, %i.cm
  %i.el = add i32 %i.a, %i.ek
  %i.em = mul i32 %i.c, %i.cl
  %i.en = add i32 %i.el, %i.em                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.ai, i64 %i.eh
  %i.eo = add i32 %i.en, 1
  %scevgep68 = getelementptr i8, ptr %i.ai, i64 %i.eh
  %i.ep = mul i32 %i.e, %i.da
  %i.eq = add i32 %i.a, %i.ep                     ; 2 uses
  %i.er = mul i32 %i.c, %i.db
  %i.es = add i32 %i.eq, %i.er
  %scevgep71 = getelementptr i8, ptr %i.ao, i64 %i.eh
  %i.et = add i32 %i.c, 1
  %i.eu = mul i32 %i.db, %i.et
  %i.ev = add i32 %i.eq, %i.eu
  %scevgep74 = getelementptr i8, ptr %i.ao, i64 %i.eh
  %i.ew = mul i32 %i.e, %i.cw
  %i.ex = add i32 %i.a, %i.ew
  %i.ey = mul i32 %i.c, %i.cx                     ; 2 uses
  %i.ez = add i32 %i.ex, %i.ey
  %scevgep77 = getelementptr i8, ptr %i.at, i64 %i.eh
  %i.fa = add i32 %i.a, %i.ey
  %i.fb = add i32 %i.e, 1
  %i.fc = mul i32 %i.cw, %i.fb
  %i.fd = add i32 %i.fa, %i.fc
  %scevgep80 = getelementptr i8, ptr %i.at, i64 %i.eh
  %i.fe = mul i32 %i.e, %i.cy
  %i.ff = add i32 %i.a, %i.fe
  %i.fg = mul i32 %i.c, %i.cz
  %i.fh = add i32 %i.ff, %i.fg
  %scevgep83 = getelementptr i8, ptr %i.bm, i64 %i.eh
  %i.fi = mul i32 %i.e, %i.bz
  %i.fj = add i32 %i.a, %i.fi
  %i.fk = mul i32 %i.c, %i.bx
  %i.fl = add i32 %i.fj, %i.fk
  %scevgep86 = getelementptr i8, ptr %i.bv, i64 %i.eh
  %2 = add i32 %i.g, -1                           ; 2 uses
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.fm = insertelement <4 x i32> poison, i32 %i.do, i64 0
  %i.fn = insertelement <4 x i32> %i.fm, i32 %i.dq, i64 1
  %i.fo = insertelement <4 x i32> %i.fn, i32 %i.dp, i64 2
  %i.fp = insertelement <4 x i32> %i.fo, i32 %i.dr, i64 3
  %i.fq = insertelement <4 x i32> poison, i32 %i.ds, i64 0
  %5 = insertelement <4 x i32> %i.fq, i32 %i.dt, i64 1
  %6 = insertelement <4 x i32> %5, i32 %i.du, i64 2
  %7 = insertelement <4 x i32> %6, i32 %i.dv, i64 3
  %8 = insertelement <8 x i32> poison, i32 %i.cj, i64 0
  %9 = shufflevector <8 x i32> %8, <8 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check = icmp eq i32 %2, 0
  %n.vec = and i64 %4, 8589934590                 ; 3 uses
  %i.fr = add nuw nsw i64 %n.vec, %i.cf
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge36
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge36 ] ; 13 uses
  %.02238 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.gy, %._crit_edge36 ] ; 7 uses
  %i.fs = mul i32 %i.cq, %indvar
  %i.ft = add i32 %i.ed, %i.fs
  %i.fu = mul i32 %i.cm, %indvar                  ; 2 uses
  %i.fv = add i32 %i.en, %i.fu
  %i.fw = add i32 %i.eo, %i.fu
  %i.fx = mul i32 %i.da, %indvar                  ; 2 uses
  %i.fy = add i32 %i.es, %i.fx
  %i.fz = add i32 %i.ev, %i.fx
  %i.ga = mul i32 %i.cw, %indvar                  ; 2 uses
  %i.gb = add i32 %i.ez, %i.ga
  %i.gc = add i32 %i.fd, %i.ga
  %i.gd = mul i32 %i.cy, %indvar
  %i.ge = add i32 %i.fh, %i.gd
  %i.gf = mul i32 %i.bz, %indvar
  %i.gg = add i32 %i.fl, %i.gf
  %i.gh = mul i32 %i.cq, %indvar
  %i.gi = mul i32 %i.cm, %indvar
  %i.gj = mul i32 %i.da, %indvar                  ; 2 uses
  %i.gk = insertelement <4 x i32> poison, i32 %i.gh, i64 0
  %i.gl = insertelement <4 x i32> %i.gk, i32 %i.gi, i64 1
  %i.gm = insertelement <4 x i32> %i.gl, i32 %i.gj, i64 3
  %i.gn = shufflevector <4 x i32> %i.gm, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.go = add <4 x i32> %i.fp, %i.gn
  %i.gp = mul i32 %i.cw, %indvar
  %i.gq = mul i32 %i.cy, %indvar
  %i.gr = insertelement <4 x i32> poison, i32 %i.gj, i64 0
  %i.gs = insertelement <4 x i32> %i.gr, i32 %i.gp, i64 1
  %i.gt = insertelement <4 x i32> %i.gs, i32 %i.gq, i64 3
  %i.gu = shufflevector <4 x i32> %i.gt, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.gv = add <4 x i32> %7, %i.gu
  %i.gw = mul i32 %i.bz, %indvar
  %i.gx = add i32 %i.dz, %i.gw
  %i.gy = add i32 %.02238, 1                      ; 3 uses
  %i.gz = mul nsw i32 %i.cm, %.02238
  %i.ha = mul nsw i32 %i.da, %.02238              ; 2 uses
  %i.hb = mul nsw i32 %i.cw, %i.gy                ; 2 uses
  %i.hc = mul nsw i32 %i.cw, %.02238              ; 2 uses
  %i.hd = mul nsw i32 %i.cq, %.02238
  %i.he = mul nsw i32 %i.cy, %.02238
  %i.hf = mul nsw i32 %i.bz, %.02238
  br label %.preheader

._crit_edge40.split:                              ; preds = %._crit_edge36, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar49 = phi i32 [ 0, %.preheader25 ], [ %indvar.next50, %._crit_edge ] ; 13 uses
  %.02135 = phi i32 [ %i.c, %.preheader25 ], [ %i.io, %._crit_edge ] ; 7 uses
  %i.hg = mul i32 %i.cr, %indvar49
  %i.hh = add i32 %i.ft, %i.hg
  %i.hi = sext i32 %i.hh to i64
  %i.hj = shl nsw i64 %i.hi, 3                    ; 2 uses
  %scevgep59 = getelementptr i8, ptr %i.bd, i64 %i.hj ; 11 uses
  %scevgep61 = getelementptr i8, ptr %scevgep60, i64 %i.hj ; 11 uses
  %i.hk = mul i32 %i.cl, %indvar49                ; 2 uses
  %i.hl = add i32 %i.fv, %i.hk
  %i.hm = sext i32 %i.hl to i64
  %i.hn = shl nsw i64 %i.hm, 3                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.ai, i64 %i.hn
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.hn
  %i.ho = add i32 %i.fw, %i.hk
  %i.hp = sext i32 %i.ho to i64
  %i.hq = shl nsw i64 %i.hp, 3                    ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.ai, i64 %i.hq
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.hq
  %i.hr = mul i32 %i.db, %indvar49                ; 2 uses
  %i.hs = add i32 %i.fy, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = shl nsw i64 %i.ht, 3                    ; 2 uses
  %scevgep70 = getelementptr i8, ptr %i.ao, i64 %i.hu
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.hu
  %i.hv = add i32 %i.fz, %i.hr
  %i.hw = sext i32 %i.hv to i64
  %i.hx = shl nsw i64 %i.hw, 3                    ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.ao, i64 %i.hx
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.hx
  %i.hy = mul i32 %i.cx, %indvar49                ; 2 uses
  %i.hz = add i32 %i.gb, %i.hy
  %i.ia = sext i32 %i.hz to i64
  %i.ib = shl nsw i64 %i.ia, 3                    ; 2 uses
  %scevgep76 = getelementptr i8, ptr %i.at, i64 %i.ib
  %scevgep78 = getelementptr i8, ptr %scevgep77, i64 %i.ib
  %i.ic = add i32 %i.gc, %i.hy
  %i.id = sext i32 %i.ic to i64
  %i.ie = shl nsw i64 %i.id, 3                    ; 2 uses
  %scevgep79 = getelementptr i8, ptr %i.at, i64 %i.ie
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.ie
  %i.if = mul i32 %i.cz, %indvar49
  %i.ig = add i32 %i.ge, %i.if
  %i.ih = sext i32 %i.ig to i64
  %i.ii = shl nsw i64 %i.ih, 3                    ; 2 uses
  %scevgep82 = getelementptr i8, ptr %i.bm, i64 %i.ii
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ii
  %i.ij = mul i32 %i.bx, %indvar49
  %i.ik = add i32 %i.gg, %i.ij
  %i.il = sext i32 %i.ik to i64
  %i.im = shl nsw i64 %i.il, 3                    ; 2 uses
  %scevgep85 = getelementptr i8, ptr %i.bv, i64 %i.im
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.im
  %i.in = mul nsw i32 %i.cl, %.02135
  %invariant.op = add i32 %i.in, %i.gz            ; 2 uses
  %i.io = add nsw i32 %.02135, 1                  ; 3 uses
  %i.ip = mul nsw i32 %i.db, %i.io                ; 2 uses
  %i.iq = mul nsw i32 %i.db, %.02135              ; 2 uses
  %i.ir = mul nsw i32 %i.cx, %.02135              ; 2 uses
  %i.is = mul nsw i32 %i.cr, %.02135
  %invariant.op28 = add i32 %i.is, %i.hd          ; 2 uses
  %i.it = mul nsw i32 %i.cz, %.02135
  %invariant.op30 = add i32 %i.it, %i.he          ; 2 uses
  %i.iu = mul nsw i32 %i.bx, %.02135
  %invariant.op32 = add i32 %i.iu, %i.hf          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.iv = mul i32 %i.bx, %indvar49
  %i.iw = add i32 %i.gx, %i.iv                    ; 2 uses
  %i.ix = mul i32 %i.cz, %indvar49
  %i.iy = mul i32 %i.cx, %indvar49
  %i.iz = mul i32 %i.db, %indvar49                ; 2 uses
  %i.ja = mul i32 %i.cl, %indvar49
  %i.jb = mul i32 %i.cr, %indvar49
  %i.jc = insertelement <4 x i32> poison, i32 %i.iz, i64 0
  %i.jd = insertelement <4 x i32> %i.jc, i32 %i.iy, i64 1
  %i.je = insertelement <4 x i32> %i.jd, i32 %i.ix, i64 3
  %i.jf = shufflevector <4 x i32> %i.je, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.jg = add <4 x i32> %i.gv, %i.jf              ; 2 uses
  %i.jh = insertelement <4 x i32> poison, i32 %i.jb, i64 0
  %i.ji = insertelement <4 x i32> %i.jh, i32 %i.ja, i64 1
  %i.jj = insertelement <4 x i32> %i.ji, i32 %i.iz, i64 3
  %i.jk = shufflevector <4 x i32> %i.jj, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.jl = add <4 x i32> %i.go, %i.jk              ; 2 uses
  %i.jm = shufflevector <4 x i32> %i.jl, <4 x i32> %i.jg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jn = add <8 x i32> %i.jm, %9
  %i.jo = shufflevector <4 x i32> %i.jl, <4 x i32> %i.jg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jp = icmp slt <8 x i32> %i.jn, %i.jo
  %i.jq = add i32 %i.iw, %i.cj
  %i.jr = icmp slt i32 %i.jq, %i.iw
  %i.js = bitcast <8 x i1> %i.jp to i8
  %i.jt = icmp ne i8 %i.js, 0
  %op.rdx = or i1 %i.jt, %i.jr
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.am, %scevgep61
  %bound1 = icmp ult ptr %scevgep59, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound088 = icmp ult ptr %.sroa.4.0.copyload, %scevgep61
  %bound189 = icmp ult ptr %scevgep59, %scevgep62
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx = or i1 %found.conflict, %found.conflict90
  %bound091 = icmp ult ptr %i.ce, %scevgep61
  %bound192 = icmp ult ptr %scevgep59, %scevgep63
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx94 = or i1 %conflict.rdx, %found.conflict93
  %bound095 = icmp ult ptr %scevgep59, %scevgep66
  %bound196 = icmp ult ptr %scevgep64, %scevgep61
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %conflict.rdx94, %found.conflict97
  %bound099 = icmp ult ptr %scevgep59, %scevgep69
  %bound1100 = icmp ult ptr %scevgep67, %scevgep61
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %conflict.rdx98, %found.conflict101
  %bound0103 = icmp ult ptr %scevgep59, %scevgep72
  %bound1104 = icmp ult ptr %scevgep70, %scevgep61
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %conflict.rdx102, %found.conflict105
  %bound0107 = icmp ult ptr %scevgep59, %scevgep75
  %bound1108 = icmp ult ptr %scevgep73, %scevgep61
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %conflict.rdx106, %found.conflict109
  %bound0111 = icmp ult ptr %scevgep59, %scevgep78
  %bound1112 = icmp ult ptr %scevgep76, %scevgep61
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  %bound0115 = icmp ult ptr %scevgep59, %scevgep81
  %bound1116 = icmp ult ptr %scevgep79, %scevgep61
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx114, %found.conflict117
  %bound0119 = icmp ult ptr %scevgep59, %scevgep84
  %bound1120 = icmp ult ptr %scevgep82, %scevgep61
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx118, %found.conflict121
  %bound0123 = icmp ult ptr %scevgep59, %scevgep87
  %bound1124 = icmp ult ptr %scevgep85, %scevgep61
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  br i1 %conflict.rdx126, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ju = load double, ptr %i.am, align 8, !tbaa !247, !alias.scope !14109, !noalias !14112
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ju, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jv = load double, ptr %i.ar, align 8, !tbaa !247, !alias.scope !14109, !noalias !14112
  %broadcast.splatinsert130 = insertelement <2 x double> poison, double %i.jv, i64 0
  %broadcast.splat131 = shufflevector <2 x double> %broadcast.splatinsert130, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jw = load double, ptr %i.aw, align 8, !tbaa !247, !alias.scope !14109, !noalias !14112
  %broadcast.splatinsert134 = insertelement <2 x double> poison, double %i.jw, i64 0
  %broadcast.splat135 = shufflevector <2 x double> %broadcast.splatinsert134, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !14114, !alias.scope !14116, !noalias !14112
  %broadcast.splatinsert139 = insertelement <2 x double> poison, double %i.jx, i64 0
  %broadcast.splat140 = shufflevector <2 x double> %broadcast.splatinsert139, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jy = load double, ptr %i.ce, align 8, !tbaa !1190, !alias.scope !14118, !noalias !14112
  %broadcast.splatinsert141 = insertelement <2 x double> poison, double %i.jy, i64 0
  %broadcast.splat142 = shufflevector <2 x double> %broadcast.splatinsert141, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jz = trunc i64 %index to i32
  %i.ka = add i32 %i.a, %i.jz                     ; 6 uses
  %i.kb = add i32 %invariant.op, %i.ka            ; 2 uses
  %i.kc = add i32 %i.kb, 1
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.kd
  %wide.load = load <2 x double>, ptr %i.ke, align 8, !tbaa !247, !alias.scope !14120
  %i.kf = sext i32 %i.kb to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.kf
  %wide.load127 = load <2 x double>, ptr %i.kg, align 8, !tbaa !247, !alias.scope !14122
  %i.kh = fsub <2 x double> %wide.load, %wide.load127
  %i.ki = fdiv <2 x double> %i.kh, %broadcast.splat
  %i.kj = add i32 %i.ha, %i.ka                    ; 2 uses
  %i.kk = add i32 %i.kj, %i.ip
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.kl
  %wide.load128 = load <2 x double>, ptr %i.km, align 8, !tbaa !247, !alias.scope !14124
  %i.kn = add i32 %i.kj, %i.iq
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ko
  %wide.load129 = load <2 x double>, ptr %i.kp, align 8, !tbaa !247, !alias.scope !14126
  %i.kq = fsub <2 x double> %wide.load128, %wide.load129
  %i.kr = fdiv <2 x double> %i.kq, %broadcast.splat131
  %i.ks = fadd <2 x double> %i.ki, %i.kr
  %i.kt = add i32 %i.ir, %i.ka                    ; 2 uses
  %i.ku = add i32 %i.kt, %i.hb
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.kv
  %wide.load132 = load <2 x double>, ptr %i.kw, align 8, !tbaa !247, !alias.scope !14128
  %i.kx = add i32 %i.kt, %i.hc
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ky
  %wide.load133 = load <2 x double>, ptr %i.kz, align 8, !tbaa !247, !alias.scope !14130
  %i.la = fsub <2 x double> %wide.load132, %wide.load133
  %i.lb = fdiv <2 x double> %i.la, %broadcast.splat135
  %i.lc = fadd <2 x double> %i.ks, %i.lb
  %i.ld = add i32 %invariant.op28, %i.ka
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.le ; 2 uses
  %wide.load136 = load <2 x double>, ptr %i.lf, align 8, !tbaa !247, !alias.scope !14112, !noalias !14132
  %i.lg = add i32 %invariant.op30, %i.ka
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.lh
  %wide.load137 = load <2 x double>, ptr %i.li, align 8, !tbaa !247, !alias.scope !14135
  %i.lj = add i32 %invariant.op32, %i.ka
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.lk
  %wide.load138 = load <2 x double>, ptr %i.ll, align 8, !tbaa !247, !alias.scope !14136
  %i.lm = fneg <2 x double> %wide.load137
  %i.ln = fmul <2 x double> %broadcast.splat140, %i.lm
  %i.lo = fdiv <2 x double> %i.ln, %wide.load138
  %i.lp = fdiv <2 x double> %i.lo, %broadcast.splat142
  %i.lq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lp, <2 x double> %i.lc, <2 x double> %wide.load136)
  store <2 x double> %i.lq, ptr %i.lf, align 8, !tbaa !247, !alias.scope !14112, !noalias !14132
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.lr = icmp eq i64 %index.next, %n.vec
  br i1 %i.lr, label %middle.block, label %vector.body, !llvm.loop !14137

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cf, %vector.memcheck ], [ %i.cf, %vector.scevcheck ], [ %i.cf, %.preheader ], [ %i.fr, %middle.block ]
  br label %scalar.ph

._crit_edge36:                                    ; preds = %._crit_edge
  %exitcond44.not = icmp eq i32 %i.gy, %i.ci
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond44.not, label %._crit_edge40.split, label %.preheader25, !llvm.loop !14138

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond43.not = icmp eq i32 %i.io, %i.ch
  %indvar.next50 = add i32 %indvar49, 1
  br i1 %exitcond43.not, label %._crit_edge36, label %.preheader, !llvm.loop !14139

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ls = trunc i64 %indvars.iv to i32            ; 6 uses
  %.reass = add i32 %invariant.op, %i.ls          ; 2 uses
  %i.lt = add i32 %.reass, 1
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.lu
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !247
  %i.lx = sext i32 %.reass to i64
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.lx
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !247
  %i.ma = fsub double %i.lw, %i.lz
  %i.mb = load double, ptr %i.am, align 8, !tbaa !247
  %i.mc = fdiv double %i.ma, %i.mb
  %i.md = add i32 %i.ha, %i.ls                    ; 2 uses
  %i.me = add i32 %i.md, %i.ip
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.mf
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !247
  %i.mi = add i32 %i.md, %i.iq
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.mj
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !247
  %i.mm = fsub double %i.mh, %i.ml
  %i.mn = load double, ptr %i.ar, align 8, !tbaa !247
  %i.mo = fdiv double %i.mm, %i.mn
  %i.mp = fadd double %i.mc, %i.mo
  %i.mq = add i32 %i.ir, %i.ls                    ; 2 uses
  %i.mr = add i32 %i.mq, %i.hb
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ms
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !247
  %i.mv = add i32 %i.mq, %i.hc
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.mw
  %i.my = load double, ptr %i.mx, align 8, !tbaa !247
  %i.mz = fsub double %i.mu, %i.my
  %i.na = load double, ptr %i.aw, align 8, !tbaa !247
  %i.nb = fdiv double %i.mz, %i.na
  %i.nc = fadd double %i.mp, %i.nb
  %.reass29 = add i32 %invariant.op28, %i.ls
  %i.nd = sext i32 %.reass29 to i64
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.nd ; 2 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !247
  %i.ng = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !14114
  %.reass31 = add i32 %invariant.op30, %i.ls
  %i.nh = sext i32 %.reass31 to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.nh
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !247
  %.reass33 = add i32 %invariant.op32, %i.ls
end_hunk_8
