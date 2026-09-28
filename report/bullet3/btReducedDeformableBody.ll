Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btReducedDeformableBody?download=true
inline.NumInlined: 956
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZNK23btReducedDeformableBody23computeNodeFullVelocityERK11btTransformi:bb.a
  %i.cv = fadd <2 x float> %i.ck, %i.ct
  %i.cw = fadd float %i.bj, %i.cu
  %i.cx = load <2 x float>, ptr %i.bk, align 4, !tbaa !142
  %i.cy = fadd <2 x float> %i.cx, %i.cv           ; 2 uses
  %.sroa.0.0.vec.insert.i28 = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cz = shufflevector <2 x float> %.sroa.0.0.vec.insert.i28, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.da = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.cy, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i31 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.cz, 0
  %.fca.1.insert.i32 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i31, <2 x float> %i.da, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i32

._crit_edge:                                      ; preds = %._crit_edge, %._crit_edge.preheader.new
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge.preheader.new ], [ %indvars.iv.next.1.1, %._crit_edge ] ; 4 uses
  %i.db = phi float [ 0.000000e+00, %._crit_edge.preheader.new ], [ %i.dt, %._crit_edge ]
  %niter66 = phi i64 [ 0, %._crit_edge.preheader.new ], [ %niter66.next.1, %._crit_edge ]
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !128
  %i.df = getelementptr [4 x i8], ptr %i.de, i64 %i.ae
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !142
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.1
  %i.dj = load float, ptr %i.di, align 4, !tbaa !142
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dj, float %i.db)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next.1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !128
  %i.do = getelementptr [4 x i8], ptr %i.dn, i64 %i.ae
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !142
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.1
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !142
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.ds, float %i.dk) ; 3 uses
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %niter66.next.1 = add i64 %niter66, 2           ; 2 uses
  %niter66.ncmp.1 = icmp eq i64 %niter66.next.1, %unroll_iter65
  br i1 %niter66.ncmp.1, label %._crit_edge.1.preheader.unr-lcssa, label %._crit_edge, !llvm.loop !272

._crit_edge.1.preheader.unr-lcssa:                ; preds = %._crit_edge
  %lcmp.mod62.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod62.not, label %._crit_edge.1.preheader, label %._crit_edge.epil.preheader

._crit_edge.epil.preheader:                       ; preds = %._crit_edge.1.preheader.unr-lcssa, %._crit_edge.preheader
  %indvars.iv.1.epil.init = phi i64 [ 0, %._crit_edge.preheader ], [ %indvars.iv.next.1.1, %._crit_edge.1.preheader.unr-lcssa ] ; 2 uses
  %.epil.init61 = phi float [ 0.000000e+00, %._crit_edge.preheader ], [ %i.dt, %._crit_edge.1.preheader.unr-lcssa ]
  %lcmp.mod64 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.1.epil.init
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !128
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %i.ae
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !142
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.1.epil.init
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !142
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.eb, float %.epil.init61)
  br label %._crit_edge.1.preheader

._crit_edge.1.preheader:                          ; preds = %._crit_edge.1.preheader.unr-lcssa, %._crit_edge.epil.preheader
  %.lcssa53 = phi float [ %i.dt, %._crit_edge.1.preheader.unr-lcssa ], [ %i.ec, %._crit_edge.epil.preheader ] ; 2 uses
  %xtraiter68 = and i64 %wide.trip.count, 1
  %i.ed = icmp eq i64 %i.af, 0
  br i1 %i.ed, label %._crit_edge.1.epil.preheader, label %._crit_edge.1.preheader.new

._crit_edge.1.preheader.new:                      ; preds = %._crit_edge.1.preheader
  %unroll_iter74 = and i64 %wide.trip.count, 2147483646
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.1, %._crit_edge.1.preheader.new
  %indvars.iv.2 = phi i64 [ 0, %._crit_edge.1.preheader.new ], [ %indvars.iv.next.2.1, %._crit_edge.1 ] ; 4 uses
  %i.ee = phi float [ 0.000000e+00, %._crit_edge.1.preheader.new ], [ %i.ew, %._crit_edge.1 ]
  %niter75 = phi i64 [ 0, %._crit_edge.1.preheader.new ], [ %niter75.next.1, %._crit_edge.1 ]
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.2
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !128
  %i.ei = getelementptr [4 x i8], ptr %i.eh, i64 %i.ae
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !142
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.2
  %i.em = load float, ptr %i.el, align 4, !tbaa !142
  %i.en = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.em, float %i.ee)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next.2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !128
  %i.er = getelementptr [4 x i8], ptr %i.eq, i64 %i.ae
  %i.es = getelementptr i8, ptr %i.er, i64 8
  %i.et = load float, ptr %i.es, align 4, !tbaa !142
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.2
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !142
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.et, float %i.ev, float %i.en) ; 3 uses
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %niter75.next.1 = add i64 %niter75, 2           ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %.split43.loopexit.unr-lcssa, label %._crit_edge.1, !llvm.loop !272

bb.b:                                             ; preds = %bb.b, %.split.new
  %indvars.iv = phi i64 [ 0, %.split.new ], [ %indvars.iv.next.158, %bb.b ] ; 4 uses
  %i.ex = phi float [ 0.000000e+00, %.split.new ], [ %i.fn, %bb.b ]
  %niter = phi i64 [ 0, %.split.new ], [ %niter.next.1, %bb.b ]
  %i.ey = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !128
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.ae
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !142
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !142
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.fe, float %i.ex)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !128
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.ae
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !142
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !142
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fm, float %i.ff) ; 3 uses
  %indvars.iv.next.158 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.preheader.unr-lcssa, label %bb.b, !llvm.loop !272

._crit_edge.preheader.unr-lcssa:                  ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.preheader.unr-lcssa, %.split
  %indvars.iv.epil.init = phi i64 [ 0, %.split ], [ %indvars.iv.next.158, %._crit_edge.preheader.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %.split ], [ %i.fn, %._crit_edge.preheader.unr-lcssa ]
  %lcmp.mod56 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !128
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.ae
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !142
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.epil.init
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !142
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.fu, float %.epil.init)
  br label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %._crit_edge.preheader.unr-lcssa, %.epil.preheader
  %.lcssa54 = phi float [ %i.fn, %._crit_edge.preheader.unr-lcssa ], [ %i.fv, %.epil.preheader ] ; 2 uses
  %xtraiter59 = and i64 %wide.trip.count, 1
  %i.fw = icmp eq i64 %i.af, 0
  br i1 %i.fw, label %._crit_edge.epil.preheader, label %._crit_edge.preheader.new

._crit_edge.preheader.new:                        ; preds = %._crit_edge.preheader
  %unroll_iter65 = and i64 %wide.trip.count, 2147483646
  br label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK23btReducedDeformableBody27computeTotalAngularMomentumEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2612
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2632
  %i.f = load float, ptr %i.e, align 8, !tbaa !142, !noalias !279 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %i.h = load float, ptr %i.g, align 8, !tbaa !142, !noalias !279 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2628
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.k = load float, ptr %i.j, align 8, !tbaa !142, !noalias !279 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2380
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.o = load float, ptr %i.i, align 4, !tbaa !142, !noalias !279 ; 2 uses
  %i.p = load <2 x float>, ptr %i.d, align 8, !tbaa !142, !noalias !279 ; 3 uses
  %i.q = load float, ptr %i.c, align 4, !tbaa !142, !noalias !279 ; 2 uses
  %i.r = load <2 x float>, ptr %i.b, align 8, !tbaa !142, !noalias !279 ; 3 uses
  %i.s = load <2 x float>, ptr %i.a, align 8, !tbaa !142, !noalias !279 ; 5 uses
  %i.t = load float, ptr %i.l, align 8, !tbaa !142 ; 2 uses
  %i.u = load float, ptr %i.m, align 4, !tbaa !142 ; 2 uses
  %i.v = load float, ptr %i.n, align 8, !tbaa !142 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2716
  %i.x = load i32, ptr %i.w, align 4, !tbaa !140  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge114

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2324
  %i.aa = load float, ptr %i.z, align 4, !tbaa !142, !noalias !280
  %i.ab = fneg float %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !142, !noalias !280 ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  %i.af = fneg float %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !142, !noalias !280 ; 2 uses
  %i.ai = fneg float %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !132
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2484
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2500
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %2 = load float, ptr %1, align 8, !tbaa !142    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2516
  %i.ar = load <2 x float>, ptr %i.aj, align 8, !tbaa !142 ; 3 uses
  %i.as = load <2 x float>, ptr %i.an, align 8, !tbaa !142 ; 2 uses
  %3 = load float, ptr %i.ao, align 4, !tbaa !142
  %i.at = load <2 x float>, ptr %i.ap, align 8, !tbaa !142 ; 3 uses
  %i.au = load <2 x float>, ptr %i.am, align 4, !tbaa !142 ; 3 uses
  %4 = load <2 x float>, ptr %i.aq, align 4, !tbaa !142 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !139 ; 5 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !128
  %wide.trip.count128 = zext nneg i32 %i.x to i64
  %wide.trip.count = zext i32 %i.aw to i64        ; 7 uses
  %i.bc = insertelement <3 x float> <float poison, float 0.000000e+00, float poison>, float %i.ab, i64 0
  %i.bd = insertelement <3 x float> %i.bc, float %i.ah, i64 2
  %i.be = shufflevector <2 x float> %i.ad, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bf = insertelement <3 x float> %i.be, float 0.000000e+00, i64 0
  %i.bg = insertelement <3 x float> %i.bf, float %i.af, i64 2
  %i.bh = insertelement <3 x float> %i.be, float 0.000000e+00, i64 2
  %i.bi = insertelement <3 x float> %i.bh, float %i.ai, i64 1
  %i.bj = extractelement <2 x float> %i.as, i64 0
  %i.bk = shufflevector <2 x float> %i.at, <2 x float> %i.ar, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.bl = shufflevector <2 x float> %i.as, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bm = shufflevector <3 x float> %i.bk, <3 x float> %i.bl, <3 x i32> <i32 0, i32 1, i32 3>
  %i.bn = shufflevector <2 x float> %i.at, <2 x float> %i.ar, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bo = shufflevector <3 x float> %i.bn, <3 x float> %i.bl, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bp = shufflevector <2 x float> %i.ar, <2 x float> %i.at, <2 x i32> <i32 0, i32 2>
  %5 = shufflevector <2 x float> %i.au, <2 x float> %4, <3 x i32> <i32 3, i32 1, i32 poison>
  %i.bq = shufflevector <2 x float> %i.au, <2 x float> %4, <2 x i32> <i32 1, i32 3>
  %i.br = shufflevector <2 x float> %i.au, <2 x float> %4, <2 x i32> <i32 0, i32 2>
  %i.bs = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.bt = load ptr, ptr %i.ay, align 8            ; 9 uses
  %i.bu = load ptr, ptr %i.az, align 8            ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bv = icmp eq i64 %i.bs, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod146 = trunc i32 %i.aw to i1
  %xtraiter149 = and i64 %wide.trip.count, 1
  %i.bw = icmp eq i64 %i.bs, 0
  %unroll_iter155 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod152.not = icmp eq i64 %xtraiter149, 0
  %lcmp.mod154 = trunc i32 %i.aw to i1
  %xtraiter158 = and i64 %wide.trip.count, 1
  %i.bx = icmp eq i64 %i.bs, 0
  %unroll_iter164 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod161.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod163 = trunc i32 %i.aw to i1
  %6 = insertelement <3 x float> %5, float %2, i64 2
  br label %bb.b

._crit_edge114:                                   ; preds = %.split108, %bb.a
  %.sroa.087.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.gj, %.split108 ]
  %i.by = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.gk, %.split108 ]
  %i.bz = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ca = insertelement <2 x float> %i.bz, float %i.h, i64 0 ; 2 uses
  %i.cb = fneg <2 x float> %i.ca
  %i.cc = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cd = insertelement <2 x float> %i.cc, float %i.f, i64 0 ; 2 uses
  %i.ce = fneg <2 x float> %i.cd                  ; 2 uses
  %i.cf = fneg <2 x float> %i.p
  %i.cg = fneg float %i.o
  %i.ch = fmul float %i.h, %i.cg
  %i.ci = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.f, float %i.ch) ; 2 uses
  %i.cj = fneg float %i.q
  %i.ck = fmul float %i.k, %i.cj
  %i.cl = extractelement <2 x float> %i.s, i64 1  ; 3 uses
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.h, float %i.ck)
  %i.cn = extractelement <2 x float> %i.ce, i64 0
  %i.co = fmul float %i.cl, %i.cn
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.o, float %i.co)
  %i.cq = fmul <2 x float> %i.r, %i.ce
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.p, <2 x float> %i.cq) ; 3 uses
  %i.cs = extractelement <2 x float> %i.cr, i64 0
  %i.ct = fmul float %i.cl, %i.cs
  %i.cu = extractelement <2 x float> %i.s, i64 0
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.ci, float %i.ct)
  %i.cw = extractelement <2 x float> %i.cr, i64 1
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.cw, float %i.cv)
  %i.cy = fdiv float 1.000000e+00, %i.cx          ; 4 uses
  %i.cz = fmul <2 x float> %i.s, %i.cb
  %i.da = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.db = insertelement <2 x float> %i.da, float %i.k, i64 0 ; 2 uses
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.r, <2 x float> %i.cz)
  %i.dd = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.df = fmul <2 x float> %i.dc, %i.de
  %i.dg = fmul <2 x float> %i.cr, %i.de
  %i.dh = fmul <2 x float> %i.db, %i.cf
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.cd, <2 x float> %i.dh)
  %i.dj = fmul <2 x float> %i.di, %i.de
  %i.dk = insertelement <2 x float> poison, float %i.u, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.dl, %i.dj
  %i.dn = insertelement <2 x float> poison, float %i.t, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.do, <2 x float> %i.dm)
  %i.dq = insertelement <2 x float> poison, float %i.v, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dr, <2 x float> %i.dp)
  %i.dt = fmul float %i.cm, %i.cy
  %i.du = fmul float %i.ci, %i.cy
  %i.dv = fmul float %i.cp, %i.cy
  %i.dw = fmul float %i.u, %i.dv
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.du, float %i.t, float %i.dw)
  %i.dy = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.v, float %i.dx)
  %i.dz = fadd float %i.dy, %.sroa.087.0.lcssa
  %i.ea = fadd <2 x float> %i.ds, %i.by           ; 2 uses
  %.sroa.0.0.vec.insert.i15 = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <2 x float> %.sroa.0.0.vec.insert.i15, <2 x float> %i.ea, <2 x i32> <i32 0, i32 2>
  %i.ec = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ea, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i18 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.eb, 0
  %.fca.1.insert.i19 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i18, <2 x float> %i.ec, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i19

bb.b:                                             ; preds = %.lr.ph, %.split108
  %indvars.iv125 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next126, %.split108 ] ; 4 uses
  %.sroa.087.0109 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.gj, %.split108 ]
  %i.ed = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.gk, %.split108 ]
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv125 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load float, ptr %i.ee, align 4, !tbaa !142 ; 2 uses
  %i.ei = load float, ptr %i.ef, align 4, !tbaa !142 ; 2 uses
  %i.ej = load float, ptr %i.eg, align 4, !tbaa !142 ; 2 uses
  %7 = fmul float %i.ei, %3
  %8 = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.eh, float %7)
  %9 = tail call noundef float @llvm.fmuladd.f32(float %2, float %i.ej, float %8) ; 3 uses
  %i.ek = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x float> %i.el, %i.br
  %10 = insertelement <2 x float> poison, float %i.eh, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %11, <2 x float> %i.em)
  %i.en = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.eo, <2 x float> %12) ; 6 uses
  %13 = extractelement <2 x float> %i.ep, i64 1
  %14 = fneg float %13
  %15 = extractelement <2 x float> %i.ep, i64 0
  %16 = fneg float %15
  %17 = fneg float %9
  %i.eq = mul nuw nsw i64 %indvars.iv125, 3       ; 9 uses
  br i1 %i.ax, label %.split, label %.split108

.split:                                           ; preds = %bb.b
  br i1 %i.bv, label %.epil.preheader, label %.split.new

.split108.loopexit.unr-lcssa:                     ; preds = %._crit_edge.1
  br i1 %lcmp.mod161.not, label %.split108, label %._crit_edge.1.epil.preheader

._crit_edge.1.epil.preheader:                     ; preds = %.split108.loopexit.unr-lcssa, %._crit_edge.1.preheader
  %indvars.iv.2.epil.init = phi i64 [ 0, %._crit_edge.1.preheader ], [ %indvars.iv.next.2.1, %.split108.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init160 = phi float [ 0.000000e+00, %._crit_edge.1.preheader ], [ %i.if, %.split108.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %indvars.iv.2.epil.init
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !128
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !142
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.2.epil.init
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !142
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ey, float %.epil.init160)
  br label %.split108

.split108:                                        ; preds = %._crit_edge.1.epil.preheader, %.split108.loopexit.unr-lcssa, %bb.b
  %.sroa.10.0 = phi float [ 0.000000e+00, %bb.b ], [ %i.if, %.split108.loopexit.unr-lcssa ], [ %i.ez, %._crit_edge.1.epil.preheader ]
  %.sroa.6.0 = phi float [ 0.000000e+00, %bb.b ], [ %.lcssa141, %.split108.loopexit.unr-lcssa ], [ %.lcssa141, %._crit_edge.1.epil.preheader ]
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.b ], [ %.lcssa, %.split108.loopexit.unr-lcssa ], [ %.lcssa, %._crit_edge.1.epil.preheader ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv125
  %i.fb = insertelement <3 x float> poison, float %.sroa.6.0, i64 0
  %i.fc = shufflevector <3 x float> %i.fb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fd = fmul <3 x float> %i.bo, %i.fc
  %18 = insertelement <3 x float> poison, float %9, i64 0
  %19 = shufflevector <3 x float> %18, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fe = fmul <3 x float> %i.bi, %19
  %i.ff = load float, ptr %i.fa, align 4, !tbaa !142 ; 2 uses
  %i.fg = insertelement <3 x float> poison, float %.sroa.0.0, i64 0
  %i.fh = shufflevector <3 x float> %i.fg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fi = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bm, <3 x float> %i.fh, <3 x float> %i.fd)
  %i.fj = insertelement <3 x float> poison, float %.sroa.10.0, i64 0
  %i.fk = shufflevector <3 x float> %i.fj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %6, <3 x float> %i.fk, <3 x float> %i.fi)
  %i.fm = shufflevector <2 x float> %i.ep, <2 x float> poison, <3 x i32> zeroinitializer
  %i.fn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bd, <3 x float> %i.fm, <3 x float> %i.fe)
  %20 = shufflevector <2 x float> %i.ep, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.fo = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bg, <3 x float> %20, <3 x float> %i.fn)
  %i.fp = fsub <3 x float> %i.fl, %i.fo           ; 6 uses
  %i.fq = extractelement <3 x float> %i.fp, i64 2
  %i.fr = fmul float %i.fq, %14
  %i.fs = extractelement <3 x float> %i.fp, i64 1
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fs, float 0.000000e+00, float %i.fr)
  %i.fu = extractelement <3 x float> %i.fp, i64 0
  %i.fv = tail call noundef float @llvm.fmuladd.f32(float %9, float %i.fu, float %i.ft)
  %i.fw = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.ep, <2 x i32> <i32 0, i32 2>
  %i.fx = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fy = fmul <2 x float> %i.fw, %i.fx
  %21 = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fz = insertelement <2 x float> %21, float %17, i64 1
  %i.ga = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.ga, <2 x float> %i.fy)
  %i.gc = insertelement <2 x float> <float poison, float 0.000000e+00>, float %16, i64 0
  %i.gd = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.gd, <2 x float> %i.gb)
  %i.gf = fmul float %i.ff, %i.fv
  %i.gg = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul <2 x float> %i.gh, %i.ge
  %i.gj = fadd float %.sroa.087.0109, %i.gf       ; 2 uses
  %i.gk = fadd <2 x float> %i.ed, %i.gi           ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge114, label %bb.b, !llvm.loop !277

._crit_edge:                                      ; preds = %._crit_edge.preheader, %._crit_edge
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %._crit_edge ], [ 0, %._crit_edge.preheader ] ; 4 uses
  %i.gl = phi float [ %i.hd, %._crit_edge ], [ 0.000000e+00, %._crit_edge.preheader ]
  %niter156 = phi i64 [ %niter156.next.1, %._crit_edge ], [ 0, %._crit_edge.preheader ]
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %indvars.iv.1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !128
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.eq
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !142
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.1
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !142
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.gt, float %i.gl)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1 ; 2 uses
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %indvars.iv.next.1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !128
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.eq
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !142
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.1
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !142
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.hc, float %i.gu) ; 3 uses
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %niter156.next.1 = add i64 %niter156, 2         ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %._crit_edge.1.preheader.unr-lcssa, label %._crit_edge, !llvm.loop !278

._crit_edge.1.preheader.unr-lcssa:                ; preds = %._crit_edge
  br i1 %lcmp.mod152.not, label %._crit_edge.1.preheader, label %._crit_edge.epil.preheader

._crit_edge.epil.preheader:                       ; preds = %._crit_edge.1.preheader.unr-lcssa, %._crit_edge.preheader
  %indvars.iv.1.epil.init = phi i64 [ 0, %._crit_edge.preheader ], [ %indvars.iv.next.1.1, %._crit_edge.1.preheader.unr-lcssa ] ; 2 uses
  %.epil.init151 = phi float [ 0.000000e+00, %._crit_edge.preheader ], [ %i.hd, %._crit_edge.1.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.he = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %indvars.iv.1.epil.init
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !128
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.eq
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !142
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.1.epil.init
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !142
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.hl, float %.epil.init151)
  br label %._crit_edge.1.preheader

._crit_edge.1.preheader:                          ; preds = %._crit_edge.1.preheader.unr-lcssa, %._crit_edge.epil.preheader
  %.lcssa141 = phi float [ %i.hd, %._crit_edge.1.preheader.unr-lcssa ], [ %i.hm, %._crit_edge.epil.preheader ] ; 2 uses
  br i1 %i.bx, label %._crit_edge.1.epil.preheader, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.1.preheader, %._crit_edge.1
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.1, %._crit_edge.1 ], [ 0, %._crit_edge.1.preheader ] ; 4 uses
  %i.hn = phi float [ %i.if, %._crit_edge.1 ], [ 0.000000e+00, %._crit_edge.1.preheader ]
  %niter165 = phi i64 [ %niter165.next.1, %._crit_edge.1 ], [ 0, %._crit_edge.1.preheader ]
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %indvars.iv.2
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !128
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.eq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !142
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.2
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !142
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.hv, float %i.hn)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %indvars.iv.next.2
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !128
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.eq
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !142
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.2
  %i.ie = load float, ptr %i.id, align 4, !tbaa !142
  %i.if = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ie, float %i.hw) ; 3 uses
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %niter165.next.1 = add i64 %niter165, 2         ; 2 uses
  %niter165.ncmp.1 = icmp eq i64 %niter165.next.1, %unroll_iter164
  br i1 %niter165.ncmp.1, label %.split108.loopexit.unr-lcssa, label %._crit_edge.1, !llvm.loop !278

.split.new:                                       ; preds = %.split, %.split.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1148, %.split.new ], [ 0, %.split ] ; 4 uses
  %i.ig = phi float [ %i.iw, %.split.new ], [ 0.000000e+00, %.split ]
  %niter = phi i64 [ %niter.next.1, %.split.new ], [ 0, %.split ]
  %i.ih = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %indvars.iv
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !128
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.eq
  %i.il = load float, ptr %i.ik, align 4, !tbaa !142
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.in = load float, ptr %i.im, align 4, !tbaa !142
  %i.io = tail call float @llvm.fmuladd.f32(float %i.il, float %i.in, float %i.ig)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ip = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %indvars.iv.next
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !128
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.eq
  %i.it = load float, ptr %i.is, align 4, !tbaa !142
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !142
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.it, float %i.iv, float %i.io) ; 3 uses
  %indvars.iv.next.1148 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.preheader.unr-lcssa, label %.split.new, !llvm.loop !278

._crit_edge.preheader.unr-lcssa:                  ; preds = %.split.new
  br i1 %lcmp.mod.not, label %._crit_edge.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.preheader.unr-lcssa, %.split
  %indvars.iv.epil.init = phi i64 [ 0, %.split ], [ %indvars.iv.next.1148, %._crit_edge.preheader.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %.split ], [ %i.iw, %._crit_edge.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.ix = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %indvars.iv.epil.init
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !128
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.eq
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !142
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.epil.init
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !142
  %i.je = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.jd, float %.epil.init)
  br label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %._crit_edge.preheader.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %i.iw, %._crit_edge.preheader.unr-lcssa ], [ %i.je, %.epil.preheader ] ; 2 uses
  br i1 %i.bw, label %._crit_edge.epil.preheader, label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK23btReducedDeformableBody32internalComputeNodeDeltaVelocityERK11btTransformi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, i32 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !142 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !142 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load float, ptr %i.d, align 4, !tbaa !142
  %i.o = load <2 x float>, ptr %1, align 4, !tbaa !142 ; 5 uses
  %i.p = load float, ptr %i.e, align 4, !tbaa !142
  %i.q = load float, ptr %i.f, align 4, !tbaa !142
  %i.r = load float, ptr %i.i, align 4, !tbaa !142
  %i.s = load <2 x float>, ptr %i.j, align 4, !tbaa !142 ; 4 uses
  %i.t = load <2 x float>, ptr %i.m, align 4, !tbaa !142 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load float, ptr %i.u, align 4, !tbaa !142 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.x = load i32, ptr %i.w, align 8, !tbaa !139  ; 5 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.split, label %.split43

.split:                                           ; preds = %bb.a
  %i.z = mul nsw i32 %2, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !124 ; 9 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 9 uses
  %i.ae = sext i32 %i.z to i64                    ; 9 uses
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 7 uses
  %i.af = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.epil.preheader, label %.split.new

.split.new:                                       ; preds = %.split
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.split43.loopexit.unr-lcssa:                      ; preds = %._crit_edge.1
  %lcmp.mod71.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod71.not, label %.split43, label %._crit_edge.1.epil.preheader

._crit_edge.1.epil.preheader:                     ; preds = %.split43.loopexit.unr-lcssa, %._crit_edge.1.preheader
  %indvars.iv.2.epil.init = phi i64 [ 0, %._crit_edge.1.preheader ], [ %indvars.iv.next.2.1, %.split43.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init70 = phi float [ 0.000000e+00, %._crit_edge.1.preheader ], [ %i.ew, %.split43.loopexit.unr-lcssa ]
  %lcmp.mod73 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.2.epil.init
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !128
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.ae
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !142
end_hunk_0
begin_hunk_1_@_ZN23btReducedDeformableBodyD2Ev:bb.a
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  tail call void @__clang_call_terminate(ptr %i.ew) #23
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i55:    ; preds = %bb.aq, %bb.ap
  %indvars.iv.next.i.i.i56 = add nuw nsw i64 %indvars.iv.i.i.i52, 1 ; 2 uses
  %i.ex = icmp eq i64 %indvars.iv.next.i.i.i56, %zext.i.i51
  br i1 %i.ex, label %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i48, label %bb.ap, !llvm.loop !4

_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i48: ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i55, %_ZN20btAlignedObjectArrayIfED2Ev.exit47
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2128
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i49, label %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit57, label %bb.as

bb.as:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i48
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.fb = load i8, ptr %i.fa, align 8, !tbaa !123, !range !143, !noundef !148
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.at, label %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit57

bb.at:                                            ; preds = %bb.as
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ez)
          to label %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit57 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  tail call void @__clang_call_terminate(ptr %i.fe) #23
  unreachable

_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit57:      ; preds = %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i48, %bb.as, %bb.at
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2084
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !125 ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph.i.i.i60, label %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i58

.lr.ph.i.i.i60:                                   ; preds = %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit57
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %zext.i.i61 = zext nneg i32 %i.fg to i64
  br label %bb.av

bb.av:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i65, %.lr.ph.i.i.i60
  %indvars.iv.i.i.i62 = phi i64 [ 0, %.lr.ph.i.i.i60 ], [ %indvars.iv.next.i.i.i66, %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i65 ] ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !124
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %indvars.iv.i.i.i62 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !128 ; 2 uses
  %.not.i.i.i.i.i.i63 = icmp ne ptr %i.fm, null
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fo = load i8, ptr %i.fn, align 8, !range !143
  %i.fp = trunc nuw i8 %i.fo to i1
  %or.cond.i.i.i.i.i64 = select i1 %.not.i.i.i.i.i.i63, i1 %i.fp, i1 false
  br i1 %or.cond.i.i.i.i.i64, label %bb.aw, label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i65

bb.aw:                                            ; preds = %bb.av
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fm)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i65 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  tail call void @__clang_call_terminate(ptr %i.fr) #23
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i65:    ; preds = %bb.aw, %bb.av
  %indvars.iv.next.i.i.i66 = add nuw nsw i64 %indvars.iv.i.i.i62, 1 ; 2 uses
  %i.fs = icmp eq i64 %indvars.iv.next.i.i.i66, %zext.i.i61
  br i1 %i.fs, label %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i58, label %bb.av, !llvm.loop !4

_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i58: ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i65, %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit57
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i59, label %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit67, label %bb.ay

bb.ay:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i58
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !123, !range !143, !noundef !148
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.az, label %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit67

bb.az:                                            ; preds = %bb.ay
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fu)
          to label %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit67 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  tail call void @__clang_call_terminate(ptr %i.fz) #23
  unreachable

_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit67:      ; preds = %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i58, %bb.ay, %bb.az
  tail call void @_ZN10btSoftBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(2064) dereferenceable(2064) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN23btReducedDeformableBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(3176) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN23btReducedDeformableBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(3176) dereferenceable(3176) %0) #24
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #23
  unreachable

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody17setCollisionShapeEP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK17btCollisionObject24checkCollideWithOverrideEPKS_(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.b = load i32, ptr %i.a, align 4, !tbaa !368  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIPK17btCollisionObjectE16findLinearSearchERKS2_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !369
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !371
  %i.h = icmp ne ptr %i.g, %1                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not = select i1 %i.h, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %bb.b, label %_ZNK20btAlignedObjectArrayIPK17btCollisionObjectE16findLinearSearchERKS2_.exit, !llvm.loop !367

_ZNK20btAlignedObjectArrayIPK17btCollisionObjectE16findLinearSearchERKS2_.exit: ; preds = %bb.b, %bb.a
  %.06.i = phi i1 [ true, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %.06.i
}

declare noundef i32 @_ZNK10btSoftBody28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(2064)) unnamed_addr #2

declare noundef ptr @_ZNK10btSoftBody9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN10btSoftBody9translateERK9btVector3(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZN10btSoftBody6rotateERK12btQuaternion(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK10btSoftBody7getAabbER9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1508
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !150
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1524
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !150
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !142  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !142 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !142 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = tail call noundef float @sqrtf(float noundef %i.l) #24 ; 2 uses
  %4 = fdiv float 5.000000e-01, %3
  %5 = load float, ptr %i.m, align 4, !tbaa !142
  %i.p = load float, ptr %i.n, align 4, !tbaa !142
  %i.q = fsub float %5, %i.p
  %i.r = load float, ptr %2, align 4, !tbaa !142
  %i.s = load float, ptr %i.j, align 4, !tbaa !142
  %i.t = fsub float %i.r, %i.s
  %6 = load float, ptr %i.k, align 4, !tbaa !142
  %i.u = load float, ptr %i.o, align 4, !tbaa !142
  %i.v = fsub float %6, %i.u
  %i.w = insertelement <4 x float> poison, float %4, i64 0
  %i.x = insertelement <4 x float> %i.w, float %3, i64 3
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.z = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.q, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.t, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.v, i64 2
  %i.ac = fmul <4 x float> %i.y, %i.ab
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ad = fcmp olt float %i.b, %i.d
  %i.ae = fcmp olt float %i.d, %i.g
  %i.af = select i1 %i.ae, i32 2, i32 1
  %i.ag = fcmp olt float %i.b, %i.g
  %i.ah = select i1 %i.ag, i32 2, i32 0
  %i.ai = select i1 %i.ad, i32 %i.af, i32 %i.ah
  %.fr = freeze i32 %i.ai                         ; 3 uses
  %i.aj = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 3
  %i.al = select i1 %i.ak, i32 0, i32 %i.aj
  %i.am = add nuw nsw i32 %.fr, 2
  %i.an = urem i32 %i.am, 3
  %i.ao = zext nneg i32 %.fr to i64               ; 5 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !142
  %i.as = sext i32 %i.al to i64                   ; 5 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  %i.av = load float, ptr %i.au, align 4, !tbaa !142
  %i.aw = fsub float %i.ar, %i.av
  %i.ax = zext nneg i32 %i.an to i64              ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !142
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = fadd float %i.bb, 1.000000e+00
  %i.bd = tail call noundef float @sqrtf(float noundef %i.bc) #24 ; 2 uses
  %i.be = fmul float %i.bd, 5.000000e-01
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ao
  store float %i.be, ptr %i.bf, align 4, !tbaa !142
  %i.bg = fdiv float 5.000000e-01, %i.bd          ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.as
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !142
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ax
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !142
  %i.bl = fsub float %i.bi, %i.bk
  %i.bm = fmul float %i.bg, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.bm, ptr %i.bn, align 4, !tbaa !142
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ao
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !142
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.as
  %i.br = load float, ptr %i.bq, align 4, !tbaa !142
  %i.bs = fadd float %i.bp, %i.br
  %i.bt = fmul float %i.bg, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as
  store float %i.bt, ptr %i.bu, align 4, !tbaa !142
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ao
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !142
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ax
  %i.by = load float, ptr %i.bx, align 4, !tbaa !142
  %i.bz = fadd float %i.bw, %i.by
  %i.ca = fmul float %i.bg, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.ca, ptr %i.cb, align 4, !tbaa !142
  %i.cc = load <4 x float>, ptr %i.a, align 16, !tbaa !142
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cd = phi <4 x float> [ %i.cc, %bb.c ], [ %i.ac, %bb.b ]
  store <4 x float> %i.cd, ptr %1, align 4, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #20

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIS_IfEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !126
  %i.c = icmp slt i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN20btAlignedObjectArrayIS_IfEE8allocateEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sext i32 %1 to i64
  %i.e = shl nsw i64 %i.d, 5
  %i.f = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.e, i32 noundef 16)
  br label %_ZN20btAlignedObjectArrayIS_IfEE8allocateEi.exit

_ZN20btAlignedObjectArrayIS_IfEE8allocateEi.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !125  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit

.lr.ph.i:                                         ; preds = %_ZN20btAlignedObjectArrayIS_IfEE8allocateEi.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext = zext nneg i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayIfEC2ERKS0_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN20btAlignedObjectArrayIfEC2ERKS0_.exit.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.0.i, i64 %indvars.iv.i ; 4 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !124
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  store i8 1, ptr %i.n, align 8, !tbaa !127
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !128
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  store i32 0, ptr %i.p, align 4, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !130
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !129  ; 6 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i: ; preds = %bb.d
  %i.u = zext nneg i32 %i.s to i64                ; 6 uses
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.v, i32 noundef 16) ; 15 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 2 uses
  %.pre.i.i.i = load i32, ptr %i.p, align 4, !tbaa !129 ; 3 uses
  %i.y = icmp sgt i32 %.pre.i.i.i, 0
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !128  ; 9 uses
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i
  %i.aa = ptrtoaddr ptr %i.z to i64
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %.pre.i.i.i to i64 ; 5 uses
  %min.iters.check22 = icmp ult i32 %.pre.i.i.i, 8
  %i.ab = sub i64 %i.aa, %i.x
  %diff.check20 = icmp ugt i64 %i.ab, -32
  %or.cond = select i1 %min.iters.check22, i1 true, i1 %diff.check20
  br i1 %or.cond, label %scalar.ph21.preheader, label %vector.ph23

vector.ph23:                                      ; preds = %.lr.ph.i.i.i.i.i
  %n.vec24 = and i64 %wide.trip.count.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph23
  %index26 = phi i64 [ 0, %vector.ph23 ], [ %index.next29, %vector.body25 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index26 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index26 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load27 = load <4 x float>, ptr %i.ad, align 4, !tbaa !142
  %wide.load28 = load <4 x float>, ptr %i.ae, align 4, !tbaa !142
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x float> %wide.load27, ptr %i.ac, align 4, !tbaa !142
  store <4 x float> %wide.load28, ptr %i.af, align 4, !tbaa !142
  %index.next29 = add nuw i64 %index26, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next29, %n.vec24
  br i1 %i.ag, label %middle.block30, label %vector.body25, !llvm.loop !372

middle.block30:                                   ; preds = %vector.body25
  %cmp.n31 = icmp eq i64 %n.vec24, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n31, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i, label %scalar.ph21.preheader

scalar.ph21.preheader:                            ; preds = %.lr.ph.i.i.i.i.i, %middle.block30
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec24, %middle.block30 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph21.prol.loopexit, label %scalar.ph21.prol

scalar.ph21.prol:                                 ; preds = %scalar.ph21.preheader, %scalar.ph21.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph21.prol ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph21.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph21.prol ], [ 0, %scalar.ph21.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i.i.i.prol
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.i.i.i.i.prol
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !142
  store float %i.aj, ptr %i.ah, align 4, !tbaa !142
  %indvars.iv.next.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph21.prol.loopexit, label %scalar.ph21.prol, !llvm.loop !373

scalar.ph21.prol.loopexit:                        ; preds = %scalar.ph21.prol, %scalar.ph21.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph21.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph21.prol ]
end_hunk_1
