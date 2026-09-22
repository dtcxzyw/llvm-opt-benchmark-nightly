Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fast_gemm?download=true
inline.NumInlined: 936
inline.NumDeleted: 360
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN2cv3dnn12fastGemmThinEiiifPKfiiS2_fPfib:bb.a
  %i.do = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load92, <4 x float> %broadcast.splat94)
  %predphi = select i1 %i.dk, <4 x float> %broadcast.splat94, <4 x float> %i.dn
  %predphi95 = select i1 %i.dk, <4 x float> %broadcast.splat94, <4 x float> %i.do
  store <4 x float> %predphi, ptr %i.dl, align 4, !tbaa !18, !alias.scope !196, !noalias !197
  store <4 x float> %predphi95, ptr %i.dm, align 4, !tbaa !18, !alias.scope !196, !noalias !197
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge47.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader43, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader43 ] ; 4 uses
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.dq = load float, ptr %i.c, align 4, !tbaa !18
  %i.dr = fmul float %i.dq, 0.000000e+00          ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv.ph ; 2 uses
  %i.dt = load float, ptr %i.h, align 4, !tbaa !18 ; 2 uses
  %i.du = fcmp oeq float %i.dt, 0.000000e+00
  br i1 %i.du, label %.preheader.prol.loopexit.unr-lcssa, label %bb.q

bb.q:                                             ; preds = %.preheader.prol
  %i.dv = load float, ptr %i.ds, align 4, !tbaa !18
  %i.dw = call float @llvm.fmuladd.f32(float %i.dt, float %i.dv, float %i.dr)
  br label %.preheader.prol.loopexit.unr-lcssa

.preheader.prol.loopexit.unr-lcssa:               ; preds = %bb.q, %.preheader.prol
  %i.dx = phi float [ %i.dw, %bb.q ], [ %i.dr, %.preheader.prol ]
  store float %i.dx, ptr %i.ds, align 4, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.preheader ], [ %indvars.iv.next.prol, %.preheader.prol.loopexit.unr-lcssa ]
  %i.dy = icmp eq i64 %indvars.iv.ph, %i.ca
  br i1 %i.dy, label %._crit_edge47.split, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.t ], [ %indvars.iv.unr, %.preheader.prol.loopexit ] ; 3 uses
  %i.dz = load float, ptr %i.c, align 4, !tbaa !18
  %i.ea = fmul float %i.dz, 0.000000e+00          ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.ec = load float, ptr %i.h, align 4, !tbaa !18 ; 2 uses
  %i.ed = fcmp oeq float %i.ec, 0.000000e+00
  br i1 %i.ed, label %.preheader.1, label %bb.r

._crit_edge47.split:                              ; preds = %.preheader.prol.loopexit, %bb.t, %middle.block
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count71
  br i1 %exitcond57.not, label %.loopexit, label %.preheader43, !llvm.loop !187

bb.r:                                             ; preds = %.preheader
  %i.ee = load float, ptr %i.eb, align 4, !tbaa !18
  %i.ef = call float @llvm.fmuladd.f32(float %i.ec, float %i.ee, float %i.ea)
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader, %bb.r
  %i.eg = phi float [ %i.ef, %bb.r ], [ %i.ea, %.preheader ]
  store float %i.eg, ptr %i.eb, align 4, !tbaa !18
  %i.eh = load float, ptr %i.c, align 4, !tbaa !18
  %i.ei = fmul float %i.eh, 0.000000e+00          ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.el = load float, ptr %i.h, align 4, !tbaa !18 ; 2 uses
  %i.em = fcmp oeq float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader.1
  %i.en = load float, ptr %i.ek, align 4, !tbaa !18
  %i.eo = call float @llvm.fmuladd.f32(float %i.el, float %i.en, float %i.ei)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.1
  %i.ep = phi float [ %i.eo, %bb.s ], [ %i.ei, %.preheader.1 ]
  store float %i.ep, ptr %i.ek, align 4, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count66
  br i1 %exitcond.not.1, label %._crit_edge47.split, label %.preheader, !llvm.loop !193

.loopexit:                                        ; preds = %._crit_edge47.split, %._crit_edge47.split.us.us, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZZN2cv3dnn12fastGemmThinEiiifPKfiiS2_fPfibENK3$_0clERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 %.0.val, i32 %.4.val) unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca [48 x float], align 16            ; 17 uses
  %i.b = icmp slt i32 %.0.val, %.4.val
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !205, !nonnull !47, !align !49
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206, !nonnull !47, !align !50
  %i.g = load i32, ptr %i.f, align 4, !tbaa !59
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !nonnull !47, !align !50
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59   ; 3 uses
  %i.l = sext i32 %i.k to i64
  %factor.op.mul = mul nsw i64 %i.h, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !208, !nonnull !47, !align !49
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !209, !nonnull !47, !align !50
  %i.r = load i32, ptr %i.q, align 4, !tbaa !59   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !210, !nonnull !47, !align !50
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !211, !nonnull !47, !align !49
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !212, !nonnull !47, !align !50
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !213, !nonnull !47, !align !50
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !214, !nonnull !47, !align !50
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !215, !nonnull !47, !align !50
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !59 ; 2 uses
  %i.ai = icmp sgt i32 %i.k, 0
  %i.aj = icmp sgt i32 %i.r, 0                    ; 3 uses
  %or.cond.i = and i1 %i.ai, %i.aj
  %i.ak = sext i32 %i.z to i64                    ; 3 uses
  %i.al = sext i32 %i.ac to i64
  %wide.trip.count74.i = zext nneg i32 %i.k to i64
  %wide.trip.count.i = zext i32 %i.r to i64       ; 10 uses
  %i.am = sext i32 %i.ah to i64                   ; 7 uses
  %i.an = sext i32 %.0.val to i64                 ; 2 uses
  %wide.trip.count = sext i32 %.4.val to i64
  %i.ao = mul nsw i64 %i.h, %i.an
  %i.ap = shl i64 %i.ao, 2
  %i.aq = shl nsw i64 %i.h, 2
  %i.ar = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %i.as = getelementptr i8, ptr %i.o, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %min.iters.check = icmp ugt i32 %i.r, 3
  %ident.check.not = icmp eq i32 %i.z, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %ident.check16.not = icmp eq i32 %i.ah, 1
  %xtraiter20 = and i64 %wide.trip.count.i, 1
  %i.au = icmp eq i64 %i.ar, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  %lcmp.mod22 = trunc i32 %i.r to i1
  %xtraiter23 = and i64 %wide.trip.count.i, 1
  %i.av = icmp eq i64 %i.ar, 0
  %unroll_iter26 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  %lcmp.mod25 = trunc i32 %i.r to i1
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit ] ; 3 uses
  %i.aw = mul i64 %i.aq, %indvar
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.aw
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.reass
  %i.ay = mul nsw i64 %indvars.iv, %i.h
  %i.az = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ay ; 7 uses
  %i.ba = load float, ptr %i.t, align 4, !tbaa !18 ; 7 uses
  %i.bb = load float, ptr %i.ae, align 4, !tbaa !18 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.a, i8 0, i64 192, i1 false)
  br i1 %or.cond.i, label %.preheader59.i, label %._crit_edge63.split.i

.preheader59.i:                                   ; preds = %bb.b, %._crit_edge.i
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i, %._crit_edge.i ], [ 0, %bb.b ] ; 3 uses
  %i.bc = mul nsw i64 %indvars.iv71.i, %i.al
  %.idx = shl nuw nsw i64 %indvars.iv71.i, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.w, i64 %i.bc ; 4 uses
  %i.be = load <4 x float>, ptr %i.bd, align 4, !tbaa !18 ; 5 uses
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.preheader59.i
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bh = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index
  %wide.load = load <4 x float>, ptr %i.bh, align 4, !tbaa !18
  %i.bi = shl nuw nsw i64 %index, 4
  %i.bj = shl i64 %index, 4
  %i.bk = shl i64 %index, 4
  %i.bl = shl i64 %index, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load float, ptr %i.bm, align 16, !tbaa !18
  %i.bu = load float, ptr %i.bo, align 16, !tbaa !18
  %i.bv = load float, ptr %i.bq, align 16, !tbaa !18
  %i.bw = load float, ptr %i.bs, align 16, !tbaa !18
  %i.bx = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 1
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 2
  %i.ca = insertelement <4 x float> %i.bz, float %i.bw, i64 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 52
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !18
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !18
  %i.ch = load float, ptr %i.cd, align 4, !tbaa !18
  %i.ci = load float, ptr %i.ce, align 4, !tbaa !18
  %i.cj = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.cr = load float, ptr %i.cn, align 8, !tbaa !18
  %i.cs = load float, ptr %i.co, align 8, !tbaa !18
  %i.ct = load float, ptr %i.cp, align 8, !tbaa !18
  %i.cu = load float, ptr %i.cq, align 8, !tbaa !18
  %i.cv = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 1
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 2
  %i.cy = insertelement <4 x float> %i.cx, float %i.cu, i64 3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  %i.db = getelementptr inbounds nuw i8, ptr %i.bp, i64 44
  %i.dc = getelementptr inbounds nuw i8, ptr %i.br, i64 60
  %i.dd = load float, ptr %i.cz, align 4, !tbaa !18
  %i.de = load float, ptr %i.da, align 4, !tbaa !18
  %i.df = load float, ptr %i.db, align 4, !tbaa !18
  %i.dg = load float, ptr %i.dc, align 4, !tbaa !18
  %i.dh = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.di = insertelement <4 x float> %i.dh, float %i.de, i64 1
  %i.dj = insertelement <4 x float> %i.di, float %i.df, i64 2
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 3
  %i.dl = shufflevector <4 x float> %wide.load, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.dm = shufflevector <4 x float> %i.ca, <4 x float> %i.cm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dl, <8 x float> %i.bf, <8 x float> %i.dm)
  %i.do = shufflevector <4 x float> %i.cy, <4 x float> %i.dk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dl, <8 x float> %i.bg, <8 x float> %i.do)
  %interleaved.vec = shufflevector <8 x float> %i.dn, <8 x float> %i.dp, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bm, align 16, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader59.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader59.i ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dr = mul nsw i64 %indvars.iv.i.ph, %i.ak
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.dr
  %i.ds = load float, ptr %gep.i.prol, align 4, !tbaa !18
  %.idx1.prol = shl nuw nsw i64 %indvars.iv.i.ph, 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx1.prol ; 2 uses
  %i.du = load <4 x float>, ptr %i.dt, align 16, !tbaa !18
  %i.dv = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.be, <4 x float> %i.du)
  store <4 x float> %i.dx, ptr %i.dt, align 16, !tbaa !18
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.dy = icmp eq i64 %i.ar, %indvars.iv.i.ph
  br i1 %i.dy, label %._crit_edge.i, label %scalar.ph

._crit_edge63.split.i:                            ; preds = %._crit_edge.i, %bb.b
  %i.dz = fcmp oeq float %i.bb, 0.000000e+00
  br i1 %i.dz, label %.preheader55.i, label %.preheader57.i

.preheader57.i:                                   ; preds = %._crit_edge63.split.i
  br i1 %i.aj, label %.preheader56.i.lver.check, label %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit

.preheader56.i.lver.check:                        ; preds = %.preheader57.i
  br i1 %ident.check16.not, label %.preheader56.i.ph, label %.preheader56.i.lver.orig.preheader

.preheader56.i.lver.orig.preheader:               ; preds = %.preheader56.i.lver.check
  br i1 %i.au, label %.preheader56.i.lver.orig.epil.preheader, label %.preheader56.i.lver.orig.preheader.new

.preheader56.i.lver.orig.preheader.new:           ; preds = %.preheader56.i.lver.orig.preheader
  %i.ea = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ec = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader56.i.lver.orig

.preheader56.i.lver.orig:                         ; preds = %.preheader56.i.lver.orig, %.preheader56.i.lver.orig.preheader.new
  %indvars.iv80.i.lver.orig = phi i64 [ 0, %.preheader56.i.lver.orig.preheader.new ], [ %indvars.iv.next81.i.lver.orig.1, %.preheader56.i.lver.orig ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader56.i.lver.orig.preheader.new ], [ %niter.next.1, %.preheader56.i.lver.orig ]
  %i.ei = mul nsw i64 %indvars.iv80.i.lver.orig, %i.am
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ei ; 2 uses
  %.idx2.lver.orig = shl nuw nsw i64 %indvars.iv80.i.lver.orig, 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx2.lver.orig
  %i.el = load <4 x float>, ptr %i.ej, align 4, !tbaa !18
  %i.em = load <4 x float>, ptr %i.ek, align 16, !tbaa !18
  %i.en = fmul <4 x float> %i.eb, %i.em
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ed, <4 x float> %i.el, <4 x float> %i.en)
  store <4 x float> %i.eo, ptr %i.ej, align 4, !tbaa !18
  %indvars.iv.next81.i.lver.orig = or disjoint i64 %indvars.iv80.i.lver.orig, 1 ; 2 uses
  %i.ep = mul nsw i64 %indvars.iv.next81.i.lver.orig, %i.am
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ep ; 2 uses
  %.idx2.lver.orig.1 = shl nuw nsw i64 %indvars.iv.next81.i.lver.orig, 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx2.lver.orig.1
  %i.es = load <4 x float>, ptr %i.eq, align 4, !tbaa !18
  %i.et = load <4 x float>, ptr %i.er, align 16, !tbaa !18
  %i.eu = fmul <4 x float> %i.ef, %i.et
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.es, <4 x float> %i.eu)
  store <4 x float> %i.ev, ptr %i.eq, align 4, !tbaa !18
  %indvars.iv.next81.i.lver.orig.1 = add nuw nsw i64 %indvars.iv80.i.lver.orig, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit.loopexit19.unr-lcssa, label %.preheader56.i.lver.orig, !llvm.loop !199

.preheader56.i.ph:                                ; preds = %.preheader56.i.lver.check
  %load_initial = load float, ptr %scevgep, align 4
  %i.ew = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader56.i

.preheader55.i:                                   ; preds = %._crit_edge63.split.i
  br i1 %i.aj, label %.preheader.i.preheader, label %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit

.preheader.i.preheader:                           ; preds = %.preheader55.i
  br i1 %i.av, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %i.fa = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fc = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader.i

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count74.i
  br i1 %exitcond75.not.i, label %._crit_edge63.split.i, label %.preheader59.i, !llvm.loop !200

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fe = mul nsw i64 %indvars.iv.i, %i.ak
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fe
  %i.ff = load float, ptr %gep.i, align 4, !tbaa !18
  %.idx1 = shl nuw nsw i64 %indvars.iv.i, 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx1 ; 2 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 16, !tbaa !18
  %i.fi = insertelement <4 x float> poison, float %i.ff, i64 0
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.be, <4 x float> %i.fh)
  store <4 x float> %i.fk, ptr %i.fg, align 16, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fl = mul nsw i64 %indvars.iv.next.i, %i.ak
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fl
  %i.fm = load float, ptr %gep.i.1, align 4, !tbaa !18
  %.idx1.1 = shl nuw nsw i64 %indvars.iv.next.i, 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx1.1 ; 2 uses
  %i.fo = load <4 x float>, ptr %i.fn, align 16, !tbaa !18
  %i.fp = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> %i.be, <4 x float> %i.fo)
  store <4 x float> %i.fr, ptr %i.fn, align 16, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !201

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %indvars.iv89.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %indvars.iv.next90.i.1, %.preheader.i ] ; 4 uses
  %niter27 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter27.next.1, %.preheader.i ]
  %i.fs = mul nsw i64 %indvars.iv89.i, %i.am
  %.idx3 = shl nuw nsw i64 %indvars.iv89.i, 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx3
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.fs
  %i.fv = load <4 x float>, ptr %i.ft, align 16, !tbaa !18
  %i.fw = fmul <4 x float> %i.fb, %i.fv
  store <4 x float> %i.fw, ptr %i.fu, align 4, !tbaa !18
  %indvars.iv.next90.i = or disjoint i64 %indvars.iv89.i, 1 ; 2 uses
  %i.fx = mul nsw i64 %indvars.iv.next90.i, %i.am
  %.idx3.1 = shl nuw nsw i64 %indvars.iv.next90.i, 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx3.1
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.fx
  %i.ga = load <4 x float>, ptr %i.fy, align 16, !tbaa !18
  %i.gb = fmul <4 x float> %i.fd, %i.ga
  store <4 x float> %i.gb, ptr %i.fz, align 4, !tbaa !18
  %indvars.iv.next90.i.1 = add nuw nsw i64 %indvars.iv89.i, 2 ; 2 uses
  %niter27.next.1 = add i64 %niter27, 2           ; 2 uses
  %niter27.ncmp.1 = icmp eq i64 %niter27.next.1, %unroll_iter26
  br i1 %niter27.ncmp.1, label %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !202

.preheader56.i:                                   ; preds = %.preheader56.i.ph, %.preheader56.i
  %store_forwarded = phi float [ %load_initial, %.preheader56.i.ph ], [ %i.gp, %.preheader56.i ]
  %indvars.iv80.i = phi i64 [ 0, %.preheader56.i.ph ], [ %indvars.iv.next81.i, %.preheader56.i ] ; 3 uses
  %i.gc = mul nuw nsw i64 %indvars.iv80.i, %i.am
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.gc ; 3 uses
  %.idx2 = shl nuw nsw i64 %indvars.iv80.i, 4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx2
  %i.gf = getelementptr i8, ptr %i.gd, i64 12
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !18
  %i.gh = load <2 x float>, ptr %i.gd, align 4, !tbaa !18
  %i.gi = load <4 x float>, ptr %i.ge, align 16, !tbaa !18
  %i.gj = fmul <4 x float> %i.ez, %i.gi
  %i.gk = insertelement <4 x float> poison, float %store_forwarded, i64 2
  %i.gl = insertelement <4 x float> %i.gk, float %i.gg, i64 3
  %i.gm = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> %i.gl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.go = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.gn, <4 x float> %i.gj) ; 2 uses
  store <4 x float> %i.go, ptr %i.gd, align 4, !tbaa !18
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count.i
  %i.gp = extractelement <4 x float> %i.go, i64 3
  br i1 %exitcond84.not.i, label %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit, label %.preheader56.i, !llvm.loop !199

_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  br i1 %lcmp.mod24.not, label %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %indvars.iv89.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next90.i.1, %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.gq = mul nsw i64 %indvars.iv89.i.epil.init, %i.am
  %.idx3.epil = shl nuw nsw i64 %indvars.iv89.i.epil.init, 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx3.epil
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.gq
  %i.gt = load <4 x float>, ptr %i.gr, align 16, !tbaa !18
  %i.gu = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gw = fmul <4 x float> %i.gv, %i.gt
  store <4 x float> %i.gw, ptr %i.gs, align 4, !tbaa !18
  br label %_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit

_ZN2cv3dnnL20fast_gemm_thin_stripEiifPKfiiS2_fPfi.exit.loopexit19.unr-lcssa: ; preds = %.preheader56.i.lver.orig
end_hunk_0
