Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_subdiv?download=true
inline.NumInlined: 2401
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN6embree4sse222patch_eval_subdivisionIZZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKS9_E_clESD_SH_mmSJ_EUlPKNS_4Vec2IfEEPKiPKfiE_EEvPKNS_8HalfEdgeET_:bb.a
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x float> %i.bp, ptr %i.d, align 16
  call void @_ZZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKS8_E_clESC_SG_mmSI_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESN_SP_SR_i(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %.loopexit, label %bb.d, !llvm.loop !290

.loopexit:                                        ; preds = %bb.d, %_ZNK6embree8HalfEdge8numEdgesEv.exit34, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKS8_E_clESC_SG_mmSI_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESN_SP_SR_i(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !24, !align !31 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load i64, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !24, !align !28
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !24, !align !28
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.j                       ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !24, !align !28
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i32, ptr %i.r, align 4
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.lcssa = phi i32 [ 0, %bb.a ], [ %i.km, %bb.f ]
  %i.w = add i64 %i.h, %i.e                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !24, !align !28
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [320 x i8], ptr %i.z, i64 %i.n ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !24, !align !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 46
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = zext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = zext i16 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = tail call noundef ptr @_ZN6embree4sse27GridSOA6createIKNS_4BVHNILi4EE9AllocatorEEEPS1_PKNS_16SubdivPatch1BaseEjjjjjPKNS_5SceneERT_PNS_4BBoxINS_6Vec3faEEE(ptr noundef %i.aa, i32 noundef %.lcssa, i32 noundef 0, i32 noundef %i.al, i32 noundef 0, i32 noundef %i.ap, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.ah)
  %i.ar = ptrtoint ptr %i.aq to i64
  store atomic i64 %i.ar, ptr %i.aa seq_cst, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !24, !align !28
  %i.au = load ptr, ptr %i.o, align 8, !nonnull !24, !align !28
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 44
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.aw, align 4 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  %i.ba = uitofp i32 %i.az to float               ; 10 uses
  %i.bb = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fsub <2 x float> <float 0.000000e+00, float 1.000000e+00>, %i.bb
  %i.bd = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.be = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fsub <2 x float> %i.bd, %i.be
  %i.bg = fdiv <2 x float> %i.bc, %i.bf           ; 2 uses
  %i.bh = extractelement <2 x float> %i.bg, i64 0 ; 4 uses
  %i.bi = fmul float %i.bh, %i.ba                 ; 3 uses
  %i.bj = extractelement <2 x float> %i.bg, i64 1 ; 3 uses
  %i.bk = fmul float %i.bj, %i.ba                 ; 3 uses
  %i.bl = tail call noundef float @llvm.floor.f32(float %i.bi) ; 3 uses
  %i.bm = tail call noundef float @llvm.ceil.f32(float %i.bk) ; 3 uses
  %i.bn = fcmp ogt float %i.bl, 0.000000e+00
  %i.bo = select i1 %i.bn, float %i.bl, float 0.000000e+00 ; 3 uses
  %i.bp = fcmp olt float %i.bm, %i.ba
  %i.bq = select i1 %i.bp, float %i.bm, float %i.ba ; 3 uses
  %i.br = fptosi float %i.bo to i32
  %i.bs = fptosi float %i.bq to i32
  %i.bt = fptosi float %i.bl to i32
  %i.bu = tail call noundef i32 @llvm.smax.i32(i32 %i.bt, i32 -1) ; 2 uses
  %i.bv = fptosi float %i.bm to i32
  %i.bw = fptosi float %i.ba to i32
  %i.bx = add nuw nsw i32 %i.bw, 1
  %i.by = tail call noundef i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bx) ; 3 uses
  %i.bz = zext nneg i32 %i.br to i64
  %i.ca = load ptr, ptr %i.at, align 8, !noalias !327, !nonnull !24, !align !28
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !327
  %i.cd = getelementptr [32 x i8], ptr %i.cc, i64 %i.n ; 3 uses
  %i.ce = getelementptr [32 x i8], ptr %i.cd, i64 %i.bz ; 4 uses
  %i.cf = load <4 x float>, ptr %i.ce, align 16, !noalias !327 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ch = load <4 x float>, ptr %i.cg, align 16, !noalias !327 ; 3 uses
  %i.ci = sext i32 %i.bs to i64
  %i.cj = getelementptr [32 x i8], ptr %i.cd, i64 %i.ci ; 4 uses
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !noalias !328 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !noalias !328 ; 3 uses
  %i.cn = sub nsw i32 %i.by, %i.bu
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cp = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.bq, i64 1
  %i.cr = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.bk, i64 1
  %i.ct = fsub <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = fcmp ogt <2 x float> %i.ct, zeroinitializer
  %i.cv = select <2 x i1> %i.cu, <2 x float> %i.ct, <2 x float> zeroinitializer ; 3 uses
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cx = fmul <4 x float> %i.ck, %i.cw
  %i.cy = fsub <2 x float> splat (float 1.000000e+00), %i.cv ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.da = fmul <4 x float> %i.cf, %i.cz
  %i.db = fadd <4 x float> %i.cx, %i.da
  %i.dc = fmul <4 x float> %i.cm, %i.cw
  %i.dd = fmul <4 x float> %i.ch, %i.cz
  %i.de = fadd <4 x float> %i.dc, %i.dd
  %i.df = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dg = fmul <4 x float> %i.cf, %i.df
  %i.dh = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.di = fmul <4 x float> %i.ck, %i.dh
  %i.dj = fadd <4 x float> %i.dg, %i.di
  %i.dk = fmul <4 x float> %i.ch, %i.df
  %i.dl = fmul <4 x float> %i.cm, %i.dh
  %i.dm = fadd <4 x float> %i.dk, %i.dl
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRefclEmNS_4BBoxIfEEjS7_EUlmE_EERKT_RKS7_SD_f.exit

bb.c:                                             ; preds = %._crit_edge
  %i.dn = getelementptr i8, ptr %i.ce, i64 32
  %i.do = load <4 x float>, ptr %i.dn, align 16, !noalias !329
  %i.dp = getelementptr i8, ptr %i.ce, i64 48
  %i.dq = load <4 x float>, ptr %i.dp, align 16, !noalias !329
  %i.dr = getelementptr i8, ptr %i.cj, i64 -32
  %i.ds = load <4 x float>, ptr %i.dr, align 16, !noalias !330
  %i.dt = getelementptr i8, ptr %i.cj, i64 -16
  %i.du = load <4 x float>, ptr %i.dt, align 16, !noalias !330
  %i.dv = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.bq, i64 1
  %i.dx = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.bk, i64 1
  %i.dz = fsub <2 x float> %i.dw, %i.dy           ; 2 uses
  %i.ea = fcmp ogt <2 x float> %i.dz, zeroinitializer
  %i.eb = select <2 x i1> %i.ea, <2 x float> %i.dz, <2 x float> zeroinitializer ; 3 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ed = fmul <4 x float> %i.ec, %i.do
  %i.ee = fsub <2 x float> splat (float 1.000000e+00), %i.eb ; 2 uses
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eg = fmul <4 x float> %i.cf, %i.ef
  %i.eh = fadd <4 x float> %i.eg, %i.ed           ; 2 uses
  %i.ei = fmul <4 x float> %i.ec, %i.dq
  %i.ej = fmul <4 x float> %i.ch, %i.ef
  %i.ek = fadd <4 x float> %i.ej, %i.ei           ; 2 uses
  %i.el = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.em = fmul <4 x float> %i.el, %i.ds
  %i.en = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.eo = fmul <4 x float> %i.ck, %i.en
  %i.ep = fadd <4 x float> %i.eo, %i.em           ; 2 uses
  %i.eq = fmul <4 x float> %i.el, %i.du
  %i.er = fmul <4 x float> %i.cm, %i.en
  %i.es = fadd <4 x float> %i.er, %i.eq           ; 2 uses
  %.0.i205 = add nsw i32 %i.bu, 1                 ; 2 uses
  %i.et = icmp slt i32 %.0.i205, %i.by
  br i1 %i.et, label %.lr.ph212, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRefclEmNS_4BBoxIfEEjS7_EUlmE_EERKT_RKS7_SD_f.exit

.lr.ph212:                                        ; preds = %bb.c
  %i.eu = fsub float %i.bj, %i.bh
  %i.ev = zext nneg i32 %.0.i205 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph212, %bb.d
  %indvars.iv = phi i64 [ %i.ev, %.lr.ph212 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.771.0209 = phi <4 x float> [ %i.ek, %.lr.ph212 ], [ %i.fv, %bb.d ] ; 2 uses
  %.sroa.068.0208 = phi <4 x float> [ %i.eh, %.lr.ph212 ], [ %i.ft, %bb.d ] ; 2 uses
  %.sroa.7.0207 = phi <4 x float> [ %i.es, %.lr.ph212 ], [ %i.fw, %bb.d ] ; 2 uses
  %.sroa.063.0206 = phi <4 x float> [ %i.ep, %.lr.ph212 ], [ %i.fu, %bb.d ] ; 2 uses
  %i.ew = trunc nsw i64 %indvars.iv to i32
  %5 = uitofp nneg i32 %i.ew to float
  %i.ex = fdiv float %5, %i.ba
  %i.ey = fsub float %i.ex, %i.bh
  %i.ez = fdiv float %i.ey, %i.eu                 ; 2 uses
  %i.fa = fsub float 1.000000e+00, %i.ez
  %i.fb = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fd = fmul <4 x float> %.sroa.063.0206, %i.fc
  %i.fe = insertelement <4 x float> poison, float %i.fa, i64 0
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fg = fmul <4 x float> %.sroa.068.0208, %i.ff
  %i.fh = fadd <4 x float> %i.fd, %i.fg
  %i.fi = fmul <4 x float> %.sroa.7.0207, %i.fc
  %i.fj = fmul <4 x float> %.sroa.771.0209, %i.ff
  %i.fk = fadd <4 x float> %i.fi, %i.fj
  %i.fl = getelementptr [32 x i8], ptr %i.cd, i64 %indvars.iv ; 2 uses
  %i.fm = load <4 x float>, ptr %i.fl, align 16, !noalias !331
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fo = load <4 x float>, ptr %i.fn, align 16, !noalias !331
  %i.fp = fsub <4 x float> %i.fm, %i.fh
  %i.fq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fp, <4 x float> zeroinitializer) ; 2 uses
  %i.fr = fsub <4 x float> %i.fo, %i.fk
  %i.fs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fr, <4 x float> zeroinitializer) ; 2 uses
  %i.ft = fadd <4 x float> %.sroa.068.0208, %i.fq ; 2 uses
  %i.fu = fadd <4 x float> %.sroa.063.0206, %i.fq ; 2 uses
  %i.fv = fadd <4 x float> %.sroa.771.0209, %i.fs ; 2 uses
  %i.fw = fadd <4 x float> %.sroa.7.0207, %i.fs   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.by, %lftr.wideiv
  br i1 %exitcond.not, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRefclEmNS_4BBoxIfEEjS7_EUlmE_EERKT_RKS7_SD_f.exit, label %bb.d, !llvm.loop !7

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRefclEmNS_4BBoxIfEEjS7_EUlmE_EERKT_RKS7_SD_f.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.1134.0 = phi <4 x float> [ %i.dm, %bb.b ], [ %i.es, %bb.c ], [ %i.fw, %bb.d ]
  %.sroa.833.0 = phi <4 x float> [ %i.dj, %bb.b ], [ %i.ep, %bb.c ], [ %i.fu, %bb.d ]
  %.sroa.532.0 = phi <4 x float> [ %i.de, %bb.b ], [ %i.ek, %bb.c ], [ %i.fv, %bb.d ]
  %.sroa.031.0 = phi <4 x float> [ %i.db, %bb.b ], [ %i.eh, %bb.c ], [ %i.ft, %bb.d ]
  %i.fx = fmul float %i.bh, f0x3F800002
  %i.fy = fmul float %i.fx, %i.ba
  %i.fz = tail call noundef float @llvm.floor.f32(float %i.fy) ; 2 uses
  %i.ga = fcmp olt float %i.fz, 0.000000e+00
  %i.gb = select i1 %i.ga, float 0.000000e+00, float %i.fz
  %i.gc = fptosi float %i.gb to i32
  %i.gd = fmul float %i.bj, f0x3F7FFFFC
  %i.ge = fmul float %i.gd, %i.ba
  %i.gf = tail call noundef float @llvm.ceil.f32(float %i.ge) ; 2 uses
  %i.gg = fcmp olt float %i.gf, %i.ba
  %i.gh = select i1 %i.gg, float %i.gf, float %i.ba
  %i.gi = fptosi float %i.gh to i32
  %i.gj = sub nsw i32 %i.gi, %i.gc
  %i.gk = trunc i64 %i.n to i32
  %i.gl = bitcast i32 %i.gk to float
  %.sroa.019.12.vec.insert = insertelement <4 x float> %.sroa.031.0, float %i.gl, i64 3
  %i.gm = lshr i64 %i.n, 32
  %i.gn = trunc nuw i64 %i.gm to i32
  %i.go = bitcast i32 %i.gn to float
  %.sroa.5.28.vec.insert = insertelement <4 x float> %.sroa.532.0, float %i.go, i64 3
  %i.gp = bitcast i32 %i.gj to float
  %.sroa.8.44.vec.insert = insertelement <4 x float> %.sroa.833.0, float %i.gp, i64 3
  %i.gq = bitcast i32 %i.az to float
  %.sroa.11.60.vec.insert = insertelement <4 x float> %.sroa.1134.0, float %i.gq, i64 3
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw [80 x i8], ptr %i.gs, i64 %i.w ; 5 uses
  store <4 x float> %.sroa.019.12.vec.insert, ptr %i.gt, align 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store <4 x float> %.sroa.5.28.vec.insert, ptr %i.gu, align 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  store <4 x float> %.sroa.8.44.vec.insert, ptr %i.gv, align 16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  store <4 x float> %.sroa.11.60.vec.insert, ptr %i.gw, align 16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  store <2 x float> %.sroa.0.0.copyload, ptr %i.gx, align 16
  %i.gy = load ptr, ptr %i.f, align 8, !nonnull !24, !align !28 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = add i64 %i.gz, 1
  store i64 %i.ha, ptr %i.gy, align 8
  %i.hb = load ptr, ptr %i.o, align 8, !nonnull !24, !align !28
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 36
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = zext i32 %i.he to i64
  %i.hg = load ptr, ptr %i.k, align 8, !nonnull !24, !align !28 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8
  %i.hi = add i64 %i.hh, %i.hf
  store i64 %i.hi, ptr %i.hg, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hk = load ptr, ptr %i.hj, align 8, !nonnull !24, !align !31 ; 14 uses
  %i.hl = load ptr, ptr %i.gr, align 8
  %i.hm = getelementptr inbounds nuw [80 x i8], ptr %i.hl, i64 %i.w ; 8 uses
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !noalias !332 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hp = load <4 x float>, ptr %i.ho, align 16, !noalias !333 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.hr = load <4 x float>, ptr %i.hq, align 16, !noalias !334 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.ht = load <4 x float>, ptr %i.hs, align 16, !noalias !335 ; 2 uses
  %i.hu = fmul <4 x float> %i.hr, splat (float 5.000000e-01)
  %i.hv = fmul <4 x float> %i.hn, splat (float 5.000000e-01)
  %i.hw = fadd <4 x float> %i.hv, %i.hu
  %i.hx = fmul <4 x float> %i.ht, splat (float 5.000000e-01)
  %i.hy = fmul <4 x float> %i.hp, splat (float 5.000000e-01)
  %i.hz = fadd <4 x float> %i.hy, %i.hx
  %i.ia = fadd <4 x float> %i.hw, %i.hz           ; 2 uses
  %i.ib = load <4 x float>, ptr %i.hk, align 16, !noalias !336
  %i.ic = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ib, <4 x float> %i.hn)
  store <4 x float> %i.ic, ptr %i.hk, align 16
  %i.id = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %i.ie = load <4 x float>, ptr %i.id, align 16, !noalias !337
  %i.if = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ie, <4 x float> %i.hp)
  store <4 x float> %i.if, ptr %i.id, align 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 2 uses
  %i.ih = load <4 x float>, ptr %i.ig, align 16, !noalias !338
  %i.ii = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ih, <4 x float> %i.hr)
  store <4 x float> %i.ii, ptr %i.ig, align 16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hk, i64 48 ; 2 uses
  %i.ik = load <4 x float>, ptr %i.ij, align 16, !noalias !339
  %i.il = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ik, <4 x float> %i.ht)
  store <4 x float> %i.il, ptr %i.ij, align 16
  %i.im = getelementptr inbounds nuw i8, ptr %i.hk, i64 64 ; 2 uses
  %i.in = load <4 x float>, ptr %i.im, align 16, !noalias !340
  %i.io = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.in, <4 x float> %i.ia)
  store <4 x float> %i.io, ptr %i.im, align 16
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hk, i64 80 ; 2 uses
  %i.iq = load <4 x float>, ptr %i.ip, align 16, !noalias !341
  %i.ir = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.iq, <4 x float> %i.ia)
  store <4 x float> %i.ir, ptr %i.ip, align 16
  %i.is = getelementptr inbounds nuw i8, ptr %i.hk, i64 136 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.hm, i64 64 ; 2 uses
  %i.iu = load float, ptr %i.is, align 8          ; 2 uses
  %i.iv = load float, ptr %i.it, align 16         ; 2 uses
  %i.iw = fcmp olt float %i.iu, %i.iv
  %i.ix = select i1 %i.iw, float %i.iu, float %i.iv
  store float %i.ix, ptr %i.is, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hk, i64 140 ; 2 uses
  %i.iz = load float, ptr %i.iy, align 4          ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hm, i64 68 ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4          ; 2 uses
  %i.jc = fcmp olt float %i.iz, %i.jb
  %i.jd = select i1 %i.jc, float %i.jb, float %i.iz
  store float %i.jd, ptr %i.iy, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %i.hk, i64 104 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = add i64 %i.jf, 1
  store i64 %i.jg, ptr %i.je, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hm, i64 44
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hk, i64 112 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 16
  %i.jm = add i64 %i.jl, %i.jj
  store i64 %i.jm, ptr %i.jk, align 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hk, i64 120 ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hm, i64 60
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = zext i32 %i.jq to i64                   ; 2 uses
  %i.js = icmp ult i64 %i.jo, %i.jr
  br i1 %i.js, label %bb.e, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit

bb.e:                                             ; preds = %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRefclEmNS_4BBoxIfEEjS7_EUlmE_EERKT_RKS7_SD_f.exit
  store i64 %i.jr, ptr %i.jn, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hk, i64 128
  %i.ju = load float, ptr %i.it, align 16
  store float %i.ju, ptr %i.jt, align 16
  %i.jv = load float, ptr %i.ja, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hk, i64 132
  store float %i.jv, ptr %i.jw, align 4
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit: ; preds = %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRefclEmNS_4BBoxIfEEjS7_EUlmE_EERKT_RKS7_SD_f.exit, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.jx = phi ptr [ %i.q, %.lr.ph ], [ %i.kk, %bb.f ]
  %.0204 = phi i64 [ 0, %.lr.ph ], [ %i.ki, %bb.f ] ; 3 uses
  %i.jy = load ptr, ptr %i.t, align 8, !nonnull !24, !align !28
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = getelementptr [320 x i8], ptr %i.jz, i64 %i.n
  %i.kb = getelementptr [320 x i8], ptr %i.ka, i64 %.0204
  %i.kc = load ptr, ptr %i.u, align 8, !nonnull !24, !align !28
  %i.kd = load i64, ptr %i.kc, align 8
  %i.ke = trunc i64 %i.kd to i32
  %i.kf = load ptr, ptr %i.v, align 8, !nonnull !24, !align !28
  %i.kg = load i64, ptr %i.kf, align 8
  %i.kh = trunc i64 %i.kg to i32
  tail call void @_ZN6embree16SubdivPatch1BaseC2EjjjPKNS_10SubdivMeshEmPKNS_4Vec2IfEEPKfPKii(ptr noundef nonnull align 64 dereferenceable(320) %i.kb, i32 noundef %i.ke, i32 noundef %i.kh, i32 noundef %4, ptr noundef nonnull %i.jx, i64 noundef %.0204, ptr noundef %1, ptr noundef %3, ptr noundef %2, i32 noundef 4)
  %i.ki = add nuw nsw i64 %.0204, 1               ; 2 uses
  %i.kj = load ptr, ptr %i.o, align 8, !nonnull !24, !align !28
  %i.kk = load ptr, ptr %i.kj, align 8            ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 36
  %i.km = load i32, ptr %i.kl, align 4            ; 2 uses
  %i.kn = zext i32 %i.km to i64
  %i.ko = icmp samesign ult i64 %i.ki, %i.kn
  br i1 %i.ko, label %bb.f, label %._crit_edge, !llvm.loop !326
}

declare void @_ZN6embree16SubdivPatch1BaseC2EjjjPKNS_10SubdivMeshEmPKNS_4Vec2IfEEPKfPKii(ptr noundef nonnull align 64 dereferenceable(320), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6embree4sse27GridSOA6createIKNS_4BVHNILi4EE9AllocatorEEEPS1_PKNS_16SubdivPatch1BaseEjjjjjPKNS_5SceneERT_PNS_4BBoxINS_6Vec3faEEE(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZZN6embree24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelIS7_NS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNS8_IS7_SA_S3_EEvSC_SF_mmmmSI_EUlRKS7_SP_E_EESG_SB_SB_SB_SB_SI_RSE_RKT2_ENKUlmE_clEm:bb.a
  store <2 x i64> %i.ec, ptr %i.ea, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.x, i64 6528
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 6528
  %i.ef = load <2 x i64>, ptr %i.ee, align 64
  store <2 x i64> %i.ef, ptr %i.ed, align 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.x, i64 6544
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 6544
  %i.ei = load <2 x i64>, ptr %i.eh, align 16
  store <2 x i64> %i.ei, ptr %i.eg, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.x, i64 6560
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 6560
  %i.el = load <2 x i64>, ptr %i.ek, align 32
  store <2 x i64> %i.el, ptr %i.ej, align 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.x, i64 6576
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 6576
  %i.eo = load <2 x i64>, ptr %i.en, align 16
  store <2 x i64> %i.eo, ptr %i.em, align 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.x, i64 6592
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 6592
  %i.er = load <2 x i64>, ptr %i.eq, align 64
  store <2 x i64> %i.er, ptr %i.ep, align 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.x, i64 6608
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 6608
  %i.eu = load <2 x i64>, ptr %i.et, align 16
  store <2 x i64> %i.eu, ptr %i.es, align 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.x, i64 6624
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 6624
  %i.ex = load <2 x i64>, ptr %i.ew, align 32
  store <2 x i64> %i.ex, ptr %i.ev, align 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.x, i64 6640
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 6640
  %i.fa = load <2 x i64>, ptr %i.ez, align 16
  store <2 x i64> %i.fa, ptr %i.ey, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_24SubdivRecalculatePrimRefELm2EE15TemporalBinInfo3binEPKS2_mmNS_4BBoxIfEERKNS_5SetMBERKS3_(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, <2 x float> %4, ptr noundef nonnull align 16 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.073.0.vec.extract = extractelement <2 x float> %4, i64 0 ; 3 uses
  %.sroa.073.4.vec.extract = extractelement <2 x float> %4, i64 1 ; 3 uses
  %i.a = icmp ult i64 %2, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.a, label %.split.us, label %.split374.us

.split.us:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 132
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.n = fmul float %.sroa.073.4.vec.extract, 5.000000e-01
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %.sroa.073.0.vec.extract, float 5.000000e-01, float %i.n)
  %i.p = load float, ptr %i.m, align 16           ; 3 uses
  %i.q = fsub float %i.o, %i.p
  %i.r = load float, ptr %i.l, align 4
  %i.s = fsub float %i.r, %i.p                    ; 2 uses
  %i.t = fdiv float %i.q, %i.s
  %i.u = load i64, ptr %i.k, align 8
  %i.v = uitofp i64 %i.u to float                 ; 2 uses
  %i.w = fmul float %i.t, %i.v
  %i.x = tail call float @llvm.round.f32(float %i.w)
  %i.y = fdiv float %i.x, %i.v
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.s, float %i.p) ; 6 uses
  %i.aa = fcmp ugt float %i.z, %.sroa.073.0.vec.extract
  %i.ab = fcmp ult float %i.z, %.sroa.073.4.vec.extract
  %or.cond.us = and i1 %i.aa, %i.ab
  br i1 %or.cond.us, label %.preheader.us.preheader, label %.split374.us

.preheader.us.preheader:                          ; preds = %.split.us
  %i.ac = insertelement <2 x float> %4, float %i.z, i64 1 ; 2 uses
  %i.ad = insertelement <2 x float> %4, float %i.z, i64 0 ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread.us
  %.029371.us = phi i64 [ %i.nt, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %.029371.us ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 68 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4          ; 4 uses
  %i.ah = fmul float %i.ag, f0x3F7FF972           ; 3 uses
  %i.ai = fcmp ugt float %i.ah, %.sroa.073.0.vec.extract
  br i1 %i.ai, label %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit34.us, label %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit34.thread.us

_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit34.us: ; preds = %.preheader.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 16         ; 3 uses
  %i.al = fmul float %i.ak, 1.000100e+00
  %i.am = fcmp ult float %i.al, %i.z
  br i1 %i.am, label %bb.b, label %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit34.thread.us

bb.b:                                             ; preds = %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit34.us
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 60 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !noalias !1190
  %i.ap = uitofp i32 %i.ao to float               ; 6 uses
  %i.aq = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fsub <2 x float> %i.ac, %i.ar
  %i.at = fsub float %i.ag, %i.ak
  %i.au = insertelement <2 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x float> %i.as, %i.av           ; 2 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0 ; 3 uses
  %i.ay = fmul float %i.ax, %i.ap                 ; 3 uses
  %i.az = extractelement <2 x float> %i.aw, i64 1 ; 2 uses
  %i.ba = fmul float %i.az, %i.ap                 ; 3 uses
  %i.bb = tail call noundef float @llvm.floor.f32(float %i.ay) ; 3 uses
  %i.bc = tail call noundef float @llvm.ceil.f32(float %i.ba) ; 3 uses
  %i.bd = fcmp ogt float %i.bb, 0.000000e+00
  %i.be = select i1 %i.bd, float %i.bb, float 0.000000e+00 ; 3 uses
  %i.bf = fcmp olt float %i.bc, %i.ap
  %i.bg = select i1 %i.bf, float %i.bc, float %i.ap ; 3 uses
  %i.bh = fptosi float %i.be to i32
  %i.bi = fptosi float %i.bg to i32
  %i.bj = fptosi float %i.bb to i32
  %i.bk = tail call noundef i32 @llvm.smax.i32(i32 %i.bj, i32 -1) ; 2 uses
  %i.bl = fptosi float %i.bc to i32
  %i.bm = fptosi float %i.ap to i32
  %i.bn = add nuw nsw i32 %i.bm, 1
  %i.bo = tail call noundef i32 @llvm.smin.i32(i32 %i.bl, i32 %i.bn) ; 3 uses
  %i.bp = zext nneg i32 %i.bh to i64
  %i.bq = load ptr, ptr %6, align 8, !noalias !1191, !nonnull !24, !align !28
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !noalias !1191
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !noalias !1191
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !1191
  %.idx.i.us = shl i64 %i.bw, 37
  %i.bz = getelementptr i8, ptr %i.by, i64 %.idx.i.us
  %i.ca = getelementptr [32 x i8], ptr %i.bz, i64 %i.bt ; 3 uses
  %i.cb = getelementptr [32 x i8], ptr %i.ca, i64 %i.bp ; 4 uses
  %i.cc = load <4 x float>, ptr %i.cb, align 16, !noalias !1191 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ce = load <4 x float>, ptr %i.cd, align 16, !noalias !1191 ; 3 uses
  %i.cf = sext i32 %i.bi to i64
  %i.cg = getelementptr [32 x i8], ptr %i.ca, i64 %i.cf ; 4 uses
  %i.ch = load <4 x float>, ptr %i.cg, align 16, !noalias !1192 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cj = load <4 x float>, ptr %i.ci, align 16, !noalias !1192 ; 3 uses
  %i.ck = sub nsw i32 %i.bo, %i.bk
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cm = getelementptr i8, ptr %i.cb, i64 32
  %i.cn = load <4 x float>, ptr %i.cm, align 16, !noalias !1193
  %i.co = getelementptr i8, ptr %i.cb, i64 48
  %i.cp = load <4 x float>, ptr %i.co, align 16, !noalias !1193
  %i.cq = getelementptr i8, ptr %i.cg, i64 -32
  %i.cr = load <4 x float>, ptr %i.cq, align 16, !noalias !1194
  %i.cs = getelementptr i8, ptr %i.cg, i64 -16
  %i.ct = load <4 x float>, ptr %i.cs, align 16, !noalias !1194
  %i.cu = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.bg, i64 1
  %i.cw = insertelement <2 x float> poison, float %i.be, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.ba, i64 1
  %i.cy = fsub <2 x float> %i.cv, %i.cx           ; 2 uses
  %i.cz = fcmp ogt <2 x float> %i.cy, zeroinitializer
  %i.da = select <2 x i1> %i.cz, <2 x float> %i.cy, <2 x float> zeroinitializer ; 3 uses
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dc = fmul <4 x float> %i.db, %i.cn
  %i.dd = fsub <2 x float> splat (float 1.000000e+00), %i.da ; 2 uses
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.df = fmul <4 x float> %i.cc, %i.de
  %i.dg = fadd <4 x float> %i.df, %i.dc           ; 2 uses
  %i.dh = fmul <4 x float> %i.db, %i.cp
  %i.di = fmul <4 x float> %i.ce, %i.de
  %i.dj = fadd <4 x float> %i.di, %i.dh           ; 2 uses
  %i.dk = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dl = fmul <4 x float> %i.dk, %i.cr
  %i.dm = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dn = fmul <4 x float> %i.ch, %i.dm
  %i.do = fadd <4 x float> %i.dn, %i.dl           ; 2 uses
  %i.dp = fmul <4 x float> %i.dk, %i.ct
  %i.dq = fmul <4 x float> %i.cj, %i.dm
  %i.dr = fadd <4 x float> %i.dq, %i.dp           ; 2 uses
  %.0.i36351.us = add nsw i32 %i.bk, 1            ; 2 uses
  %i.ds = icmp slt i32 %.0.i36351.us, %i.bo
  br i1 %i.ds, label %.lr.ph.us, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit.us

bb.d:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv = phi i64 [ %i.nv, %.lr.ph.us ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.7161.0355.us = phi <4 x float> [ %i.dj, %.lr.ph.us ], [ %i.es, %bb.d ] ; 2 uses
  %.sroa.0158.0354.us = phi <4 x float> [ %i.dg, %.lr.ph.us ], [ %i.eq, %bb.d ] ; 2 uses
  %.sroa.7.0353.us = phi <4 x float> [ %i.dr, %.lr.ph.us ], [ %i.et, %bb.d ] ; 2 uses
  %.sroa.0153.0352.us = phi <4 x float> [ %i.do, %.lr.ph.us ], [ %i.er, %bb.d ] ; 2 uses
  %i.dt = trunc nsw i64 %indvars.iv to i32
  %7 = uitofp nneg i32 %i.dt to float
  %i.du = fdiv float %7, %i.ap
  %i.dv = fsub float %i.du, %i.ax
  %i.dw = fdiv float %i.dv, %i.nu                 ; 2 uses
  %i.dx = fsub float 1.000000e+00, %i.dw
  %i.dy = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ea = fmul <4 x float> %.sroa.0153.0352.us, %i.dz
  %i.eb = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ed = fmul <4 x float> %.sroa.0158.0354.us, %i.ec
  %i.ee = fadd <4 x float> %i.ea, %i.ed
  %i.ef = fmul <4 x float> %.sroa.7.0353.us, %i.dz
  %i.eg = fmul <4 x float> %.sroa.7161.0355.us, %i.ec
  %i.eh = fadd <4 x float> %i.ef, %i.eg
  %i.ei = getelementptr [32 x i8], ptr %i.ca, i64 %indvars.iv ; 2 uses
  %i.ej = load <4 x float>, ptr %i.ei, align 16, !noalias !1195
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.el = load <4 x float>, ptr %i.ek, align 16, !noalias !1195
  %i.em = fsub <4 x float> %i.ej, %i.ee
  %i.en = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.em, <4 x float> zeroinitializer) ; 2 uses
  %i.eo = fsub <4 x float> %i.el, %i.eh
  %i.ep = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eo, <4 x float> zeroinitializer) ; 2 uses
  %i.eq = fadd <4 x float> %.sroa.0158.0354.us, %i.en ; 2 uses
  %i.er = fadd <4 x float> %.sroa.0153.0352.us, %i.en ; 2 uses
  %i.es = fadd <4 x float> %.sroa.7161.0355.us, %i.ep ; 2 uses
  %i.et = fadd <4 x float> %.sroa.7.0353.us, %i.ep ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bo, %lftr.wideiv
  br i1 %exitcond.not, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit.us, label %bb.d, !llvm.loop !12

bb.e:                                             ; preds = %bb.b
  %i.eu = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %i.bg, i64 1
  %i.ew = insertelement <2 x float> poison, float %i.be, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %i.ba, i64 1
  %i.ey = fsub <2 x float> %i.ev, %i.ex           ; 2 uses
  %i.ez = fcmp ogt <2 x float> %i.ey, zeroinitializer
  %i.fa = select <2 x i1> %i.ez, <2 x float> %i.ey, <2 x float> zeroinitializer ; 3 uses
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fc = fmul <4 x float> %i.ch, %i.fb
  %i.fd = fsub <2 x float> splat (float 1.000000e+00), %i.fa ; 2 uses
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ff = fmul <4 x float> %i.cc, %i.fe
  %i.fg = fadd <4 x float> %i.fc, %i.ff
  %i.fh = fmul <4 x float> %i.cj, %i.fb
  %i.fi = fmul <4 x float> %i.ce, %i.fe
  %i.fj = fadd <4 x float> %i.fh, %i.fi
  %i.fk = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fl = fmul <4 x float> %i.cc, %i.fk
  %i.fm = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fn = fmul <4 x float> %i.ch, %i.fm
  %i.fo = fadd <4 x float> %i.fl, %i.fn
  %i.fp = fmul <4 x float> %i.ce, %i.fk
  %i.fq = fmul <4 x float> %i.cj, %i.fm
  %i.fr = fadd <4 x float> %i.fp, %i.fq
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit.us

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit.us: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.1155.0.us = phi <4 x float> [ %i.fr, %bb.e ], [ %i.dr, %bb.c ], [ %i.et, %bb.d ]
  %.sroa.854.0.us = phi <4 x float> [ %i.fo, %bb.e ], [ %i.do, %bb.c ], [ %i.er, %bb.d ]
  %.sroa.553.0.us = phi <4 x float> [ %i.fj, %bb.e ], [ %i.dj, %bb.c ], [ %i.es, %bb.d ]
  %.sroa.052.0.us = phi <4 x float> [ %i.fg, %bb.e ], [ %i.dg, %bb.c ], [ %i.eq, %bb.d ]
  %i.fs = load <4 x float>, ptr %i.b, align 16, !noalias !1196
  %i.ft = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fs, <4 x float> %.sroa.052.0.us)
  store <4 x float> %i.ft, ptr %i.b, align 16
  %i.fu = load <4 x float>, ptr %i.c, align 16, !noalias !1197
  %i.fv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fu, <4 x float> %.sroa.553.0.us)
  store <4 x float> %i.fv, ptr %i.c, align 16
  %i.fw = load <4 x float>, ptr %i.d, align 16, !noalias !1198
  %i.fx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fw, <4 x float> %.sroa.854.0.us)
  store <4 x float> %i.fx, ptr %i.d, align 16
  %i.fy = load <4 x float>, ptr %i.e, align 16, !noalias !1199
  %i.fz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fy, <4 x float> %.sroa.1155.0.us)
  store <4 x float> %i.fz, ptr %i.e, align 16
  %.sroa.0.0.copyload.i35.us = load <2 x float>, ptr %i.aj, align 16, !noalias !1200 ; 3 uses
  %i.ga = load i32, ptr %i.an, align 4, !noalias !1200
  %i.gb = uitofp i32 %i.ga to float               ; 4 uses
  %i.gc = shufflevector <2 x float> %.sroa.0.0.copyload.i35.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fsub <2 x float> %i.ac, %i.gc
  %i.ge = shufflevector <2 x float> %.sroa.0.0.copyload.i35.us, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gf = shufflevector <2 x float> %.sroa.0.0.copyload.i35.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = fsub <2 x float> %i.ge, %i.gf
  %i.gh = fdiv <2 x float> %i.gd, %i.gg           ; 2 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 0
  %i.gj = fmul float %i.gi, f0x3F800002
  %i.gk = fmul float %i.gj, %i.gb
  %i.gl = tail call noundef float @llvm.floor.f32(float %i.gk) ; 2 uses
  %i.gm = fcmp olt float %i.gl, 0.000000e+00
  %i.gn = select i1 %i.gm, float 0.000000e+00, float %i.gl
  %i.go = fptosi float %i.gn to i32
  %i.gp = extractelement <2 x float> %i.gh, i64 1
  %i.gq = fmul float %i.gp, f0x3F7FFFFC
  %i.gr = fmul float %i.gq, %i.gb
  %i.gs = tail call noundef float @llvm.ceil.f32(float %i.gr) ; 2 uses
  %i.gt = fcmp olt float %i.gs, %i.gb
  %i.gu = select i1 %i.gt, float %i.gs, float %i.gb
  %i.gv = fptosi float %i.gu to i32
  %i.gw = sub nsw i32 %i.gv, %i.go
  %i.gx = sext i32 %i.gw to i64
  %i.gy = load i64, ptr %0, align 16
  %i.gz = add i64 %i.gy, %i.gx
  store i64 %i.gz, ptr %0, align 16
  %.pre = load float, ptr %i.af, align 4          ; 2 uses
  %.pre389 = fmul float %.pre, f0x3F7FF972
  br label %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit34.thread.us

_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit34.thread.us: ; preds = %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit.us, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit34.us, %.preheader.us
  %.pre-phi = phi float [ %.pre389, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit.us ], [ %i.ah, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit34.us ], [ %i.ah, %.preheader.us ]
  %i.ha = phi float [ %.pre, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit.us ], [ %i.ag, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit34.us ], [ %i.ag, %.preheader.us ]
  %i.hb = fcmp ugt float %.pre-phi, %i.z
  br i1 %i.hb, label %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.us, label %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread.us

_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.us: ; preds = %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit34.thread.us
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.hd = load float, ptr %i.hc, align 16         ; 3 uses
  %i.he = fmul float %i.hd, 1.000100e+00
  %i.hf = fcmp ult float %i.he, %.sroa.073.4.vec.extract
  br i1 %i.hf, label %bb.f, label %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread.us

bb.f:                                             ; preds = %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.us
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ae, i64 60 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !noalias !1201
  %i.hi = uitofp i32 %i.hh to float               ; 6 uses
  %i.hj = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = fsub <2 x float> %i.ad, %i.hk
  %i.hm = fsub float %i.ha, %i.hd
  %i.hn = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = fdiv <2 x float> %i.hl, %i.ho           ; 2 uses
  %i.hq = extractelement <2 x float> %i.hp, i64 0 ; 3 uses
  %i.hr = fmul float %i.hq, %i.hi                 ; 3 uses
  %i.hs = extractelement <2 x float> %i.hp, i64 1 ; 2 uses
  %i.ht = fmul float %i.hs, %i.hi                 ; 3 uses
  %i.hu = tail call noundef float @llvm.floor.f32(float %i.hr) ; 3 uses
  %i.hv = tail call noundef float @llvm.ceil.f32(float %i.ht) ; 3 uses
  %i.hw = fcmp ogt float %i.hu, 0.000000e+00
  %i.hx = select i1 %i.hw, float %i.hu, float 0.000000e+00 ; 3 uses
  %i.hy = fcmp olt float %i.hv, %i.hi
  %i.hz = select i1 %i.hy, float %i.hv, float %i.hi ; 3 uses
  %i.ia = fptosi float %i.hx to i32
  %i.ib = fptosi float %i.hz to i32
  %i.ic = fptosi float %i.hu to i32
  %i.id = tail call noundef i32 @llvm.smax.i32(i32 %i.ic, i32 -1) ; 2 uses
  %i.ie = fptosi float %i.hv to i32
  %i.if = fptosi float %i.hi to i32
  %i.ig = add nuw nsw i32 %i.if, 1
  %i.ih = tail call noundef i32 @llvm.smin.i32(i32 %i.ie, i32 %i.ig) ; 3 uses
  %i.ii = zext nneg i32 %i.ia to i64
  %i.ij = load ptr, ptr %6, align 8, !noalias !1202, !nonnull !24, !align !28
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.il = load i32, ptr %i.ik, align 4, !noalias !1202
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.io = load i32, ptr %i.in, align 4, !noalias !1202
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !1202
  %.idx.i44.us = shl i64 %i.ip, 37
  %i.is = getelementptr i8, ptr %i.ir, i64 %.idx.i44.us
  %i.it = getelementptr [32 x i8], ptr %i.is, i64 %i.im ; 3 uses
  %i.iu = getelementptr [32 x i8], ptr %i.it, i64 %i.ii ; 4 uses
  %i.iv = load <4 x float>, ptr %i.iu, align 16, !noalias !1202 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.ix = load <4 x float>, ptr %i.iw, align 16, !noalias !1202 ; 3 uses
  %i.iy = sext i32 %i.ib to i64
  %i.iz = getelementptr [32 x i8], ptr %i.it, i64 %i.iy ; 4 uses
  %i.ja = load <4 x float>, ptr %i.iz, align 16, !noalias !1203 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jc = load <4 x float>, ptr %i.jb, align 16, !noalias !1203 ; 3 uses
  %i.jd = sub nsw i32 %i.ih, %i.id
  %i.je = icmp eq i32 %i.jd, 1
  br i1 %i.je, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.jf = getelementptr i8, ptr %i.iu, i64 32
  %i.jg = load <4 x float>, ptr %i.jf, align 16, !noalias !1204
  %i.jh = getelementptr i8, ptr %i.iu, i64 48
  %i.ji = load <4 x float>, ptr %i.jh, align 16, !noalias !1204
  %i.jj = getelementptr i8, ptr %i.iz, i64 -32
  %i.jk = load <4 x float>, ptr %i.jj, align 16, !noalias !1205
  %i.jl = getelementptr i8, ptr %i.iz, i64 -16
  %i.jm = load <4 x float>, ptr %i.jl, align 16, !noalias !1205
  %i.jn = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.jo = insertelement <2 x float> %i.jn, float %i.hz, i64 1
  %i.jp = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.jq = insertelement <2 x float> %i.jp, float %i.ht, i64 1
  %i.jr = fsub <2 x float> %i.jo, %i.jq           ; 2 uses
  %i.js = fcmp ogt <2 x float> %i.jr, zeroinitializer
  %i.jt = select <2 x i1> %i.js, <2 x float> %i.jr, <2 x float> zeroinitializer ; 3 uses
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jv = fmul <4 x float> %i.ju, %i.jg
  %i.jw = fsub <2 x float> splat (float 1.000000e+00), %i.jt ; 2 uses
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jy = fmul <4 x float> %i.iv, %i.jx
  %i.jz = fadd <4 x float> %i.jy, %i.jv           ; 2 uses
  %i.ka = fmul <4 x float> %i.ju, %i.ji
  %i.kb = fmul <4 x float> %i.ix, %i.jx
  %i.kc = fadd <4 x float> %i.kb, %i.ka           ; 2 uses
  %i.kd = shufflevector <2 x float> %i.jt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ke = fmul <4 x float> %i.kd, %i.jk
  %i.kf = shufflevector <2 x float> %i.jw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.kg = fmul <4 x float> %i.ja, %i.kf
  %i.kh = fadd <4 x float> %i.kg, %i.ke           ; 2 uses
  %i.ki = fmul <4 x float> %i.kd, %i.jm
  %i.kj = fmul <4 x float> %i.jc, %i.kf
  %i.kk = fadd <4 x float> %i.kj, %i.ki           ; 2 uses
  %.0.i38360.us = add nsw i32 %i.id, 1            ; 2 uses
  %i.kl = icmp slt i32 %.0.i38360.us, %i.ih
  br i1 %i.kl, label %.lr.ph366.us, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit39.us

bb.h:                                             ; preds = %.lr.ph366.us, %bb.h
  %indvars.iv383 = phi i64 [ %i.nx, %.lr.ph366.us ], [ %indvars.iv.next384, %bb.h ] ; 3 uses
  %.sroa.7265.0364.us = phi <4 x float> [ %i.kc, %.lr.ph366.us ], [ %i.ll, %bb.h ] ; 2 uses
  %.sroa.0262.0363.us = phi <4 x float> [ %i.jz, %.lr.ph366.us ], [ %i.lj, %bb.h ] ; 2 uses
  %.sroa.7259.0362.us = phi <4 x float> [ %i.kk, %.lr.ph366.us ], [ %i.lm, %bb.h ] ; 2 uses
  %.sroa.0256.0361.us = phi <4 x float> [ %i.kh, %.lr.ph366.us ], [ %i.lk, %bb.h ] ; 2 uses
  %i.km = trunc nsw i64 %indvars.iv383 to i32
  %8 = uitofp nneg i32 %i.km to float
  %i.kn = fdiv float %8, %i.hi
  %i.ko = fsub float %i.kn, %i.hq
  %i.kp = fdiv float %i.ko, %i.nw                 ; 2 uses
  %i.kq = fsub float 1.000000e+00, %i.kp
  %i.kr = insertelement <4 x float> poison, float %i.kp, i64 0
  %i.ks = shufflevector <4 x float> %i.kr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kt = fmul <4 x float> %.sroa.0256.0361.us, %i.ks
  %i.ku = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kw = fmul <4 x float> %.sroa.0262.0363.us, %i.kv
  %i.kx = fadd <4 x float> %i.kt, %i.kw
  %i.ky = fmul <4 x float> %.sroa.7259.0362.us, %i.ks
  %i.kz = fmul <4 x float> %.sroa.7265.0364.us, %i.kv
  %i.la = fadd <4 x float> %i.ky, %i.kz
  %i.lb = getelementptr [32 x i8], ptr %i.it, i64 %indvars.iv383 ; 2 uses
  %i.lc = load <4 x float>, ptr %i.lb, align 16, !noalias !1206
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.le = load <4 x float>, ptr %i.ld, align 16, !noalias !1206
  %i.lf = fsub <4 x float> %i.lc, %i.kx
  %i.lg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lf, <4 x float> zeroinitializer) ; 2 uses
  %i.lh = fsub <4 x float> %i.le, %i.la
  %i.li = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lh, <4 x float> zeroinitializer) ; 2 uses
  %i.lj = fadd <4 x float> %.sroa.0262.0363.us, %i.lg ; 2 uses
  %i.lk = fadd <4 x float> %.sroa.0256.0361.us, %i.lg ; 2 uses
  %i.ll = fadd <4 x float> %.sroa.7265.0364.us, %i.li ; 2 uses
  %i.lm = fadd <4 x float> %.sroa.7259.0362.us, %i.li ; 2 uses
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %lftr.wideiv386 = trunc i64 %indvars.iv.next384 to i32
  %exitcond387.not = icmp eq i32 %i.ih, %lftr.wideiv386
  br i1 %exitcond387.not, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit39.us, label %bb.h, !llvm.loop !12

bb.i:                                             ; preds = %bb.f
  %i.ln = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.lo = insertelement <2 x float> %i.ln, float %i.hz, i64 1
  %i.lp = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.lq = insertelement <2 x float> %i.lp, float %i.ht, i64 1
  %i.lr = fsub <2 x float> %i.lo, %i.lq           ; 2 uses
  %i.ls = fcmp ogt <2 x float> %i.lr, zeroinitializer
  %i.lt = select <2 x i1> %i.ls, <2 x float> %i.lr, <2 x float> zeroinitializer ; 3 uses
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lv = fmul <4 x float> %i.ja, %i.lu
  %i.lw = fsub <2 x float> splat (float 1.000000e+00), %i.lt ; 2 uses
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ly = fmul <4 x float> %i.iv, %i.lx
  %i.lz = fadd <4 x float> %i.lv, %i.ly
  %i.ma = fmul <4 x float> %i.jc, %i.lu
  %i.mb = fmul <4 x float> %i.ix, %i.lx
  %i.mc = fadd <4 x float> %i.ma, %i.mb
  %i.md = shufflevector <2 x float> %i.lt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.me = fmul <4 x float> %i.iv, %i.md
  %i.mf = shufflevector <2 x float> %i.lw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.mg = fmul <4 x float> %i.ja, %i.mf
  %i.mh = fadd <4 x float> %i.me, %i.mg
  %i.mi = fmul <4 x float> %i.ix, %i.md
  %i.mj = fmul <4 x float> %i.jc, %i.mf
  %i.mk = fadd <4 x float> %i.mi, %i.mj
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit39.us

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit39.us: ; preds = %bb.h, %bb.g, %bb.i
  %.sroa.11.0.us = phi <4 x float> [ %i.mk, %bb.i ], [ %i.kk, %bb.g ], [ %i.lm, %bb.h ]
  %.sroa.8.0.us = phi <4 x float> [ %i.mh, %bb.i ], [ %i.kh, %bb.g ], [ %i.lk, %bb.h ]
  %.sroa.5.0.us = phi <4 x float> [ %i.mc, %bb.i ], [ %i.kc, %bb.g ], [ %i.ll, %bb.h ]
  %.sroa.049.0.us = phi <4 x float> [ %i.lz, %bb.i ], [ %i.jz, %bb.g ], [ %i.lj, %bb.h ]
  %i.ml = load <4 x float>, ptr %i.f, align 16, !noalias !1207
  %i.mm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ml, <4 x float> %.sroa.049.0.us)
  store <4 x float> %i.mm, ptr %i.f, align 16
  %i.mn = load <4 x float>, ptr %i.g, align 16, !noalias !1208
  %i.mo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mn, <4 x float> %.sroa.5.0.us)
  store <4 x float> %i.mo, ptr %i.g, align 16
  %i.mp = load <4 x float>, ptr %i.h, align 16, !noalias !1209
  %i.mq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mp, <4 x float> %.sroa.8.0.us)
  store <4 x float> %i.mq, ptr %i.h, align 16
  %i.mr = load <4 x float>, ptr %i.i, align 16, !noalias !1210
  %i.ms = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mr, <4 x float> %.sroa.11.0.us)
  store <4 x float> %i.ms, ptr %i.i, align 16
  %.sroa.0.0.copyload.i.us = load <2 x float>, ptr %i.hc, align 16, !noalias !1211 ; 3 uses
  %i.mt = load i32, ptr %i.hg, align 4, !noalias !1211
  %i.mu = uitofp i32 %i.mt to float               ; 4 uses
  %i.mv = shufflevector <2 x float> %.sroa.0.0.copyload.i.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mw = fsub <2 x float> %i.ad, %i.mv
  %i.mx = shufflevector <2 x float> %.sroa.0.0.copyload.i.us, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.my = shufflevector <2 x float> %.sroa.0.0.copyload.i.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mz = fsub <2 x float> %i.mx, %i.my
  %i.na = fdiv <2 x float> %i.mw, %i.mz           ; 2 uses
  %i.nb = extractelement <2 x float> %i.na, i64 0
  %i.nc = fmul float %i.nb, f0x3F800002
  %i.nd = fmul float %i.nc, %i.mu
  %i.ne = tail call noundef float @llvm.floor.f32(float %i.nd) ; 2 uses
  %i.nf = fcmp olt float %i.ne, 0.000000e+00
  %i.ng = select i1 %i.nf, float 0.000000e+00, float %i.ne
  %i.nh = fptosi float %i.ng to i32
  %i.ni = extractelement <2 x float> %i.na, i64 1
  %i.nj = fmul float %i.ni, f0x3F7FFFFC
  %i.nk = fmul float %i.nj, %i.mu
  %i.nl = tail call noundef float @llvm.ceil.f32(float %i.nk) ; 2 uses
  %i.nm = fcmp olt float %i.nl, %i.mu
  %i.nn = select i1 %i.nm, float %i.nl, float %i.mu
  %i.no = fptosi float %i.nn to i32
  %i.np = sub nsw i32 %i.no, %i.nh
  %i.nq = sext i32 %i.np to i64
  %i.nr = load i64, ptr %i.j, align 8
  %i.ns = add i64 %i.nr, %i.nq
  store i64 %i.ns, ptr %i.j, align 8
  br label %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread.us

_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread.us: ; preds = %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit39.us, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.us, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit34.thread.us
  %i.nt = add nuw i64 %.029371.us, 1              ; 2 uses
  %exitcond388.not = icmp eq i64 %i.nt, %3
  br i1 %exitcond388.not, label %.split374.us, label %.preheader.us, !llvm.loop !1189

.lr.ph.us:                                        ; preds = %bb.c
  %i.nu = fsub float %i.az, %i.ax
  %i.nv = zext nneg i32 %.0.i36351.us to i64
  br label %bb.d

.lr.ph366.us:                                     ; preds = %bb.g
  %i.nw = fsub float %i.hs, %i.hq
  %i.nx = zext nneg i32 %.0.i38360.us to i64
  br label %bb.h

.split374.us:                                     ; preds = %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread.us, %bb.a, %.split.us
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_24SubdivRecalculatePrimRefELm2EE15TemporalBinInfo6merge2ERKS5_S7_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::HeuristicMBlurTemporalSplit<embree::PrimRefMB, embree::sse2::SubdivRecalculatePrimRef, 2>::TemporalBinInfo") align 16 %0, ptr noundef nonnull align 16 dereferenceable(144) %1, ptr noundef nonnull align 16 dereferenceable(144) %2) #19 comdat align 2 {
_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_24SubdivRecalculatePrimRefELm2EE15TemporalBinInfo5mergeERKS5_.exit:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <4 x float>, ptr %i.a, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load <4 x float>, ptr %i.e, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load <4 x float>, ptr %i.h, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load <4 x float>, ptr %i.k, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load <4 x float>, ptr %i.m, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load <4 x float>, ptr %i.q, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.u = load <4 x float>, ptr %i.t, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = load <4 x float>, ptr %i.w, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load <4 x float>, ptr %i.y, align 16, !noalias !1228
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load <4 x float>, ptr %i.aa, align 16, !noalias !1229
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load <4 x float>, ptr %i.ac, align 16, !noalias !1230
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.af = load <4 x float>, ptr %i.ae, align 16, !noalias !1231
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ah = load <4 x float>, ptr %i.ag, align 16, !noalias !1232
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aj = load <4 x float>, ptr %i.ai, align 16, !noalias !1233
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.al = load <4 x float>, ptr %i.ak, align 16, !noalias !1234
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.an = load <4 x float>, ptr %i.am, align 16, !noalias !1235
  %i.ao = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.c, <4 x float> %i.z)
  %i.ap = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.f, <4 x float> %i.ab)
  %i.aq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.i, <4 x float> %i.ad)
  %i.ar = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> %i.af)
  %i.as = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.o, <4 x float> %i.ah)
  %i.at = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.r, <4 x float> %i.aj)
  %i.au = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.u, <4 x float> %i.al)
  %i.av = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.x, <4 x float> %i.an)
  store <4 x float> %i.ap, ptr %i.d, align 16
  store <4 x float> %i.aq, ptr %i.g, align 16
  store <4 x float> %i.ar, ptr %i.j, align 16
  store <4 x float> %i.at, ptr %i.p, align 16
  store <4 x float> %i.au, ptr %i.s, align 16
  store <4 x float> %i.av, ptr %i.v, align 16
  %i.aw = load <2 x i64>, ptr %2, align 16
  %i.ax = load <2 x i64>, ptr %0, align 16
  %i.ay = add <2 x i64> %i.ax, %i.aw
  store <2 x i64> %i.ay, ptr %0, align 16
  store <4 x float> %i.ao, ptr %i.b, align 16
  store <4 x float> %i.as, ptr %i.n, align 16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_24SubdivRecalculatePrimRefELm2EE15TemporalBinInfo12bin_parallelEPKS2_mmmmNS_4BBoxIfEERKNS_5SetMBERKS3_ENKUlRKNS_5rangeImEEE_clESI_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::HeuristicMBlurTemporalSplit<embree::PrimRefMB, embree::sse2::SubdivRecalculatePrimRef, 2>::TemporalBinInfo") align 16 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #12 comdat align 2 {
.preheader:
  %.ptr12.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.ptr7.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_24SubdivRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKNS_5rangeImEEE_clESG_:bb.a
  %.sroa.10.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.sroa.10.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %.sroa.6.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.031.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.sroa.031.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.k = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ %i.io, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  store <4 x float> %.sroa.031.0.lcssa, ptr %0, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.6.0.lcssa, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.10.0.lcssa, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sroa.14.0.lcssa, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %.sroa.1836.0.lcssa, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> %.sroa.22.0.lcssa, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.28.0.lcssa, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.3240.0.lcssa, ptr %i.s, align 16
  %.sroa.36.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.36.0.lcssa, ptr %.sroa.36.112..sroa_idx, align 8
  %.sroa.39.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x float> %i.k, ptr %.sroa.39.112..sroa_idx, align 16
  %.sroa.43.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %.sroa.43.0.lcssa, ptr %.sroa.43.112..sroa_idx, align 8
  %.sroa.46.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %.sroa.46.0.lcssa, ptr %.sroa.46.112..sroa_idx, align 4
  ret void

bb.b:                                             ; preds = %.lr.ph253, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit
  %.0251 = phi i64 [ %i.a, %.lr.ph253 ], [ %i.ip, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 4 uses
  %.sroa.031.0250 = phi <4 x float> [ splat (float +inf), %.lr.ph253 ], [ %.sroa.031.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.6.0249 = phi <4 x float> [ splat (float -inf), %.lr.ph253 ], [ %.sroa.6.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.10.0248 = phi <4 x float> [ splat (float +inf), %.lr.ph253 ], [ %.sroa.10.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.14.0247 = phi <4 x float> [ splat (float -inf), %.lr.ph253 ], [ %.sroa.14.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.1836.0246 = phi <4 x float> [ splat (float +inf), %.lr.ph253 ], [ %.sroa.1836.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.22.0245 = phi <4 x float> [ splat (float -inf), %.lr.ph253 ], [ %.sroa.22.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.28.0244 = phi i64 [ 0, %.lr.ph253 ], [ %.sroa.28.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.3240.0243 = phi i64 [ 0, %.lr.ph253 ], [ %.sroa.3240.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.36.0242 = phi i64 [ 0, %.lr.ph253 ], [ %.sroa.36.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %.sroa.43.0239 = phi float [ 1.000000e+00, %.lr.ph253 ], [ %.sroa.43.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %.sroa.46.0238 = phi float [ 0.000000e+00, %.lr.ph253 ], [ %.sroa.46.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %i.t = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph253 ], [ %i.io, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !nonnull !24, !align !28
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %.0251 ; 10 uses
  %i.y = load ptr, ptr %i.g, align 8, !nonnull !24, !align !37 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 68 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fmul float %i.aa, f0x3F7FF972
  %i.ac = load float, ptr %i.y, align 4
  %i.ad = fcmp ugt float %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit, label %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread, !prof !40

_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit: ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.af = load float, ptr %i.ae, align 16
  %i.ag = fmul float %i.af, 1.000100e+00
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = fcmp ult float %i.ag, %i.ai
  br i1 %i.aj, label %bb.c, label %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread, !prof !41

bb.c:                                             ; preds = %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.y, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !noalias !1617 ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !noalias !1617 ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.ae, align 16, !noalias !1617 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 60
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !1617 ; 3 uses
  %i.as = uitofp i32 %i.ar to float               ; 10 uses
  %.sroa.092.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 3 uses
  %.sroa.092.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1 ; 3 uses
  %i.at = fsub float %.sroa.092.4.vec.extract, %.sroa.092.0.vec.extract
  %i.au = shufflevector <2 x float> %.sroa.01.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fsub <2 x float> %.sroa.0.0.copyload, %i.au
  %i.aw = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fdiv <2 x float> %i.av, %i.ax           ; 2 uses
  %i.az = extractelement <2 x float> %i.ay, i64 0 ; 4 uses
  %i.ba = fmul float %i.az, %i.as                 ; 3 uses
  %i.bb = extractelement <2 x float> %i.ay, i64 1 ; 3 uses
  %i.bc = fmul float %i.bb, %i.as                 ; 3 uses
  %i.bd = tail call noundef float @llvm.floor.f32(float %i.ba) ; 3 uses
  %i.be = tail call noundef float @llvm.ceil.f32(float %i.bc) ; 3 uses
  %i.bf = fcmp ogt float %i.bd, 0.000000e+00
  %i.bg = select i1 %i.bf, float %i.bd, float 0.000000e+00 ; 3 uses
  %i.bh = fcmp olt float %i.be, %i.as
  %i.bi = select i1 %i.bh, float %i.be, float %i.as ; 3 uses
  %i.bj = fptosi float %i.bg to i32
  %i.bk = fptosi float %i.bi to i32
  %i.bl = fptosi float %i.bd to i32
  %i.bm = tail call noundef i32 @llvm.smax.i32(i32 %i.bl, i32 -1) ; 2 uses
  %i.bn = fptosi float %i.be to i32
  %i.bo = fptosi float %i.as to i32
  %i.bp = add nuw nsw i32 %i.bo, 1
  %i.bq = tail call noundef i32 @llvm.smin.i32(i32 %i.bn, i32 %i.bp) ; 3 uses
  %i.br = zext nneg i32 %i.bj to i64
  %i.bs = load ptr, ptr %i.j, align 8, !noalias !1618, !nonnull !24, !align !28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !1618
  %.idx = shl i64 %i.ap, 37
  %i.bv = getelementptr i8, ptr %i.bu, i64 %.idx
  %i.bw = getelementptr [32 x i8], ptr %i.bv, i64 %i.am ; 3 uses
  %i.bx = getelementptr [32 x i8], ptr %i.bw, i64 %i.br ; 4 uses
  %i.by = load <4 x float>, ptr %i.bx, align 16, !noalias !1618 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ca = load <4 x float>, ptr %i.bz, align 16, !noalias !1618 ; 3 uses
  %i.cb = sext i32 %i.bk to i64
  %i.cc = getelementptr [32 x i8], ptr %i.bw, i64 %i.cb ; 4 uses
  %i.cd = load <4 x float>, ptr %i.cc, align 16, !noalias !1619 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load <4 x float>, ptr %i.ce, align 16, !noalias !1619 ; 3 uses
  %i.cg = sub nsw i32 %i.bq, %i.bm
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ci = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.bi, i64 1
  %i.ck = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %i.bc, i64 1
  %i.cm = fsub <2 x float> %i.cj, %i.cl           ; 2 uses
  %i.cn = fcmp ogt <2 x float> %i.cm, zeroinitializer
  %i.co = select <2 x i1> %i.cn, <2 x float> %i.cm, <2 x float> zeroinitializer ; 3 uses
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cq = fmul <4 x float> %i.cd, %i.cp
  %i.cr = fsub <2 x float> splat (float 1.000000e+00), %i.co ; 2 uses
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ct = fmul <4 x float> %i.by, %i.cs
  %i.cu = fadd <4 x float> %i.cq, %i.ct
  %i.cv = fmul <4 x float> %i.cf, %i.cp
  %i.cw = fmul <4 x float> %i.ca, %i.cs
  %i.cx = fadd <4 x float> %i.cv, %i.cw
  %i.cy = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cz = fmul <4 x float> %i.by, %i.cy
  %i.da = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.db = fmul <4 x float> %i.cd, %i.da
  %i.dc = fadd <4 x float> %i.cz, %i.db
  %i.dd = fmul <4 x float> %i.ca, %i.cy
  %i.de = fmul <4 x float> %i.cf, %i.da
  %i.df = fadd <4 x float> %i.dd, %i.de
  br label %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit

bb.e:                                             ; preds = %bb.c
  %i.dg = getelementptr i8, ptr %i.bx, i64 32
  %i.dh = load <4 x float>, ptr %i.dg, align 16, !noalias !1620
  %i.di = getelementptr i8, ptr %i.bx, i64 48
  %i.dj = load <4 x float>, ptr %i.di, align 16, !noalias !1620
  %i.dk = getelementptr i8, ptr %i.cc, i64 -32
  %i.dl = load <4 x float>, ptr %i.dk, align 16, !noalias !1621
  %i.dm = getelementptr i8, ptr %i.cc, i64 -16
  %i.dn = load <4 x float>, ptr %i.dm, align 16, !noalias !1621
  %i.do = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.bi, i64 1
  %i.dq = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.bc, i64 1
  %i.ds = fsub <2 x float> %i.dp, %i.dr           ; 2 uses
  %i.dt = fcmp ogt <2 x float> %i.ds, zeroinitializer
  %i.du = select <2 x i1> %i.dt, <2 x float> %i.ds, <2 x float> zeroinitializer ; 3 uses
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dw = fmul <4 x float> %i.dv, %i.dh
  %i.dx = fsub <2 x float> splat (float 1.000000e+00), %i.du ; 2 uses
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dz = fmul <4 x float> %i.by, %i.dy
  %i.ea = fadd <4 x float> %i.dz, %i.dw           ; 2 uses
  %i.eb = fmul <4 x float> %i.dv, %i.dj
  %i.ec = fmul <4 x float> %i.ca, %i.dy
  %i.ed = fadd <4 x float> %i.ec, %i.eb           ; 2 uses
  %i.ee = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ef = fmul <4 x float> %i.ee, %i.dl
  %i.eg = shufflevector <2 x float> %i.dx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.eh = fmul <4 x float> %i.cd, %i.eg
  %i.ei = fadd <4 x float> %i.eh, %i.ef           ; 2 uses
  %i.ej = fmul <4 x float> %i.ee, %i.dn
  %i.ek = fmul <4 x float> %i.cf, %i.eg
  %i.el = fadd <4 x float> %i.ek, %i.ej           ; 2 uses
  %.0.i.i229 = add nsw i32 %i.bm, 1               ; 2 uses
  %i.em = icmp slt i32 %.0.i.i229, %i.bq
  br i1 %i.em, label %.lr.ph, label %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit

.lr.ph:                                           ; preds = %bb.e
  %i.en = fsub float %i.bb, %i.az
  %i.eo = zext nneg i32 %.0.i.i229 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.eo, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.sroa.7124.0233 = phi <4 x float> [ %i.ed, %.lr.ph ], [ %i.fo, %bb.f ] ; 2 uses
  %.sroa.0121.0232 = phi <4 x float> [ %i.ea, %.lr.ph ], [ %i.fm, %bb.f ] ; 2 uses
  %.sroa.7118.0231 = phi <4 x float> [ %i.el, %.lr.ph ], [ %i.fp, %bb.f ] ; 2 uses
  %.sroa.0115.0230 = phi <4 x float> [ %i.ei, %.lr.ph ], [ %i.fn, %bb.f ] ; 2 uses
  %i.ep = trunc nsw i64 %indvars.iv to i32
  %3 = uitofp nneg i32 %i.ep to float
  %i.eq = fdiv float %3, %i.as
  %i.er = fsub float %i.eq, %i.az
  %i.es = fdiv float %i.er, %i.en                 ; 2 uses
  %i.et = fsub float 1.000000e+00, %i.es
  %i.eu = insertelement <4 x float> poison, float %i.es, i64 0
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ew = fmul <4 x float> %.sroa.0115.0230, %i.ev
  %i.ex = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ez = fmul <4 x float> %.sroa.0121.0232, %i.ey
  %i.fa = fadd <4 x float> %i.ew, %i.ez
  %i.fb = fmul <4 x float> %.sroa.7118.0231, %i.ev
  %i.fc = fmul <4 x float> %.sroa.7124.0233, %i.ey
  %i.fd = fadd <4 x float> %i.fb, %i.fc
  %i.fe = getelementptr [32 x i8], ptr %i.bw, i64 %indvars.iv ; 2 uses
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !noalias !1622
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fh = load <4 x float>, ptr %i.fg, align 16, !noalias !1622
  %i.fi = fsub <4 x float> %i.ff, %i.fa
  %i.fj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fi, <4 x float> zeroinitializer) ; 2 uses
  %i.fk = fsub <4 x float> %i.fh, %i.fd
  %i.fl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fk, <4 x float> zeroinitializer) ; 2 uses
  %i.fm = fadd <4 x float> %.sroa.0121.0232, %i.fj ; 2 uses
  %i.fn = fadd <4 x float> %.sroa.0115.0230, %i.fj ; 2 uses
  %i.fo = fadd <4 x float> %.sroa.7124.0233, %i.fl ; 2 uses
  %i.fp = fadd <4 x float> %.sroa.7118.0231, %i.fl ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bq, %lftr.wideiv
  br i1 %exitcond.not, label %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit, label %bb.f, !llvm.loop !7

_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.085.0 = phi <4 x float> [ %i.cu, %bb.d ], [ %i.ea, %bb.e ], [ %i.fm, %bb.f ]
  %.sroa.5.0 = phi <4 x float> [ %i.cx, %bb.d ], [ %i.ed, %bb.e ], [ %i.fo, %bb.f ]
  %.sroa.886.0 = phi <4 x float> [ %i.dc, %bb.d ], [ %i.ei, %bb.e ], [ %i.fn, %bb.f ]
  %.sroa.11.0 = phi <4 x float> [ %i.df, %bb.d ], [ %i.el, %bb.e ], [ %i.fp, %bb.f ]
  %i.fq = fmul float %i.az, f0x3F800002
  %i.fr = fmul float %i.fq, %i.as
  %i.fs = tail call noundef float @llvm.floor.f32(float %i.fr) ; 2 uses
  %i.ft = fcmp olt float %i.fs, 0.000000e+00
  %i.fu = select i1 %i.ft, float 0.000000e+00, float %i.fs
  %i.fv = fptosi float %i.fu to i32
  %i.fw = fmul float %i.bb, f0x3F7FFFFC
  %i.fx = fmul float %i.fw, %i.as
  %i.fy = tail call noundef float @llvm.ceil.f32(float %i.fx) ; 2 uses
  %i.fz = fcmp olt float %i.fy, %i.as
  %i.ga = select i1 %i.fz, float %i.fy, float %i.as
  %i.gb = fptosi float %i.ga to i32
  %i.gc = sub nsw i32 %i.gb, %i.fv                ; 2 uses
  %i.gd = bitcast i32 %i.al to float
  %.sroa.0.12.vec.insert = insertelement <4 x float> %.sroa.085.0, float %i.gd, i64 3 ; 3 uses
  %i.ge = bitcast i32 %i.ao to float
  %.sroa.7.28.vec.insert = insertelement <4 x float> %.sroa.5.0, float %i.ge, i64 3 ; 3 uses
  %i.gf = bitcast i32 %i.gc to float
  %.sroa.12.44.vec.insert = insertelement <4 x float> %.sroa.886.0, float %i.gf, i64 3 ; 3 uses
  %i.gg = bitcast i32 %i.ar to float
  %.sroa.18.60.vec.insert = insertelement <4 x float> %.sroa.11.0, float %i.gg, i64 3 ; 3 uses
  %i.gh = load ptr, ptr %i.h, align 8, !nonnull !24, !align !28
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = load ptr, ptr %i.i, align 8, !nonnull !24, !align !31
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 96
  %i.gl = load i64, ptr %i.gk, align 16
  %i.gm = sub i64 %.0251, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds nuw [80 x i8], ptr %i.go, i64 %i.gm ; 5 uses
  store <4 x float> %.sroa.0.12.vec.insert, ptr %i.gp, align 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <4 x float> %.sroa.7.28.vec.insert, ptr %i.gq, align 16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store <4 x float> %.sroa.12.44.vec.insert, ptr %i.gr, align 16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  store <4 x float> %.sroa.18.60.vec.insert, ptr %i.gs, align 16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  store <2 x float> %.sroa.01.0.copyload.i, ptr %i.gt, align 16
  %i.gu = fmul <4 x float> %.sroa.12.44.vec.insert, splat (float 5.000000e-01)
  %i.gv = fmul <4 x float> %.sroa.0.12.vec.insert, splat (float 5.000000e-01)
  %i.gw = fadd <4 x float> %i.gv, %i.gu
  %i.gx = fmul <4 x float> %.sroa.18.60.vec.insert, splat (float 5.000000e-01)
  %i.gy = fmul <4 x float> %.sroa.7.28.vec.insert, splat (float 5.000000e-01)
  %i.gz = fadd <4 x float> %i.gy, %i.gx
  %i.ha = fadd <4 x float> %i.gw, %i.gz           ; 2 uses
  %i.hb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.031.0250, <4 x float> %.sroa.0.12.vec.insert) ; 2 uses
  %i.hc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.0249, <4 x float> %.sroa.7.28.vec.insert) ; 2 uses
  %i.hd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.0248, <4 x float> %.sroa.12.44.vec.insert) ; 2 uses
  %i.he = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.0247, <4 x float> %.sroa.18.60.vec.insert) ; 2 uses
  %i.hf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1836.0246, <4 x float> %i.ha) ; 2 uses
  %i.hg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.22.0245, <4 x float> %i.ha) ; 2 uses
  %i.hh = fcmp olt float %.sroa.43.0239, %.sroa.092.0.vec.extract
  %i.hi = select i1 %i.hh, float %.sroa.43.0239, float %.sroa.092.0.vec.extract ; 2 uses
  %i.hj = fcmp olt float %.sroa.46.0238, %.sroa.092.4.vec.extract
  %i.hk = select i1 %i.hj, float %.sroa.092.4.vec.extract, float %.sroa.46.0238 ; 2 uses
  %i.hl = add i64 %.sroa.28.0244, 1               ; 2 uses
  %i.hm = zext i32 %i.gc to i64
  %i.hn = add i64 %.sroa.3240.0243, %i.hm         ; 2 uses
  %i.ho = zext i32 %i.ar to i64                   ; 2 uses
  %i.hp = icmp ult i64 %.sroa.36.0242, %i.ho
  br i1 %i.hp, label %bb.g, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit

bb.g:                                             ; preds = %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit

_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread: ; preds = %bb.b, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit
  %i.hq = load ptr, ptr %i.h, align 8, !nonnull !24, !align !28
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = load ptr, ptr %i.i, align 8, !nonnull !24, !align !31
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 96
  %i.hu = load i64, ptr %i.ht, align 16
  %i.hv = sub i64 %.0251, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds nuw [80 x i8], ptr %i.hx, i64 %i.hv ; 6 uses
  %i.hz = load <4 x float>, ptr %i.x, align 16
  store <4 x float> %i.hz, ptr %i.hy, align 16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ic = load <4 x float>, ptr %i.ia, align 16
  store <4 x float> %i.ic, ptr %i.ib, align 16
  %i.id = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.if = load <4 x float>, ptr %i.id, align 16
  store <4 x float> %i.if, ptr %i.ie, align 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.ii = load <4 x float>, ptr %i.ig, align 16
  store <4 x float> %i.ii, ptr %i.ih, align 16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.il = load float, ptr %i.ik, align 16
  store float %i.il, ptr %i.ij, align 16
  %i.im = load float, ptr %i.z, align 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.hy, i64 68
  store float %i.im, ptr %i.in, align 4
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit: ; preds = %bb.g, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread
  %.sroa.46.1 = phi float [ %.sroa.46.0238, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread ], [ %i.hk, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %i.hk, %bb.g ] ; 2 uses
  %.sroa.43.1 = phi float [ %.sroa.43.0239, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread ], [ %i.hi, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %i.hi, %bb.g ] ; 2 uses
  %.sroa.36.1 = phi i64 [ %.sroa.36.0242, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread ], [ %.sroa.36.0242, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %i.ho, %bb.g ] ; 2 uses
  %.sroa.3240.1 = phi i64 [ %.sroa.3240.0243, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread ], [ %i.hn, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %i.hn, %bb.g ] ; 2 uses
  %.sroa.28.1 = phi i64 [ %.sroa.28.0244, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread ], [ %i.hl, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %i.hl, %bb.g ] ; 2 uses
  %.sroa.22.1 = phi <4 x float> [ %.sroa.22.0245, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread ], [ %i.hg, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %i.hg, %bb.g ] ; 2 uses
  %.sroa.1836.1 = phi <4 x float> [ %.sroa.1836.0246, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread ], [ %i.hf, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %i.hf, %bb.g ] ; 2 uses
  %.sroa.14.1 = phi <4 x float> [ %.sroa.14.0247, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread ], [ %i.he, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %i.he, %bb.g ] ; 2 uses
  %.sroa.10.1 = phi <4 x float> [ %.sroa.10.0248, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread ], [ %i.hd, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %i.hd, %bb.g ] ; 2 uses
  %.sroa.6.1 = phi <4 x float> [ %.sroa.6.0249, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread ], [ %i.hc, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %i.hc, %bb.g ] ; 2 uses
  %.sroa.031.1 = phi <4 x float> [ %.sroa.031.0250, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread ], [ %i.hb, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %i.hb, %bb.g ] ; 2 uses
  %i.io = phi <2 x float> [ %i.t, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit.thread ], [ %i.t, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %.sroa.01.0.copyload.i, %bb.g ] ; 2 uses
  %i.ip = add nuw i64 %.0251, 1                   ; 2 uses
  %i.iq = load i64, ptr %i.b, align 8
  %i.ir = icmp ult i64 %i.ip, %i.iq
  br i1 %i.ir, label %bb.b, label %._crit_edge, !llvm.loop !1616
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_24SubdivRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE_FKS5_RSO_SP_EEET0_T_SS_SS_SS_RKSR_RKT1_RKT2_(ptr dead_on_unwind noalias writable sret(%"class.embree::PrimInfoMBT") align 16 %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 16 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %7) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %class.anon.282, align 8            ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %11 = alloca %"struct.embree::StackArray.279", align 64 ; 9 uses
  %12 = alloca %class.anon.281, align 8           ; 9 uses
  %13 = alloca %"class.embree::PrimInfoMBT", align 16 ; 12 uses
  store i64 %2, ptr %i.b, align 8
  store i64 %3, ptr %i.c, align 8
  %i.d = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.f = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 512) ; 4 uses
  store i64 %i.f, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8072
  store i64 %i.f, ptr %i.g, align 8
  %i.h = icmp ult i64 %i.e, 57
  br i1 %i.h, label %_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = mul nuw nsw i64 %i.f, 144
  %i.j = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.i, i64 noundef 64)
  br label %_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit

_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi ptr [ %i.j, %bb.b ], [ %11, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8064 ; 4 uses
  store ptr %storemerge.i, ptr %i.k, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %i.b, ptr %12, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %6, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.k, label %bb.c
end_hunk_2
begin_hunk_3_@_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_24SubdivRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKNS_5rangeImEEE0_clESG_:bb.a
  %.sroa.10.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.sroa.10.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %.sroa.6.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.029.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.sroa.029.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.i = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ %i.he, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  store <4 x float> %.sroa.029.0.lcssa, ptr %0, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.6.0.lcssa, ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.10.0.lcssa, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sroa.14.0.lcssa, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %.sroa.1834.0.lcssa, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> %.sroa.22.0.lcssa, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.28.0.lcssa, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.3238.0.lcssa, ptr %i.q, align 16
  %.sroa.36.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.36.0.lcssa, ptr %.sroa.36.112..sroa_idx, align 8
  %.sroa.39.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x float> %i.i, ptr %.sroa.39.112..sroa_idx, align 16
  %.sroa.43.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %.sroa.43.0.lcssa, ptr %.sroa.43.112..sroa_idx, align 8
  %.sroa.46.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %.sroa.46.0.lcssa, ptr %.sroa.46.112..sroa_idx, align 4
  ret void

bb.b:                                             ; preds = %.lr.ph250, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit
  %.0249 = phi i64 [ %i.a, %.lr.ph250 ], [ %i.hf, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.029.0248 = phi <4 x float> [ splat (float +inf), %.lr.ph250 ], [ %.sroa.029.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %.sroa.6.0247 = phi <4 x float> [ splat (float -inf), %.lr.ph250 ], [ %.sroa.6.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %.sroa.10.0246 = phi <4 x float> [ splat (float +inf), %.lr.ph250 ], [ %.sroa.10.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %.sroa.14.0245 = phi <4 x float> [ splat (float -inf), %.lr.ph250 ], [ %.sroa.14.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %.sroa.1834.0244 = phi <4 x float> [ splat (float +inf), %.lr.ph250 ], [ %.sroa.1834.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %.sroa.22.0243 = phi <4 x float> [ splat (float -inf), %.lr.ph250 ], [ %.sroa.22.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %.sroa.28.0242 = phi i64 [ 0, %.lr.ph250 ], [ %.sroa.28.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %.sroa.3238.0241 = phi i64 [ 0, %.lr.ph250 ], [ %.sroa.3238.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %.sroa.36.0240 = phi i64 [ 0, %.lr.ph250 ], [ %.sroa.36.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 4 uses
  %.sroa.43.0237 = phi float [ 1.000000e+00, %.lr.ph250 ], [ %.sroa.43.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 4 uses
  %.sroa.46.0236 = phi float [ 0.000000e+00, %.lr.ph250 ], [ %.sroa.46.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 4 uses
  %i.r = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph250 ], [ %i.he, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %i.s = load ptr, ptr %1, align 8, !nonnull !24, !align !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.u, i64 %.0249 ; 9 uses
  %i.w = load ptr, ptr %i.g, align 8, !nonnull !24, !align !37 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %i.y = load float, ptr %i.x, align 4
  %i.z = fmul float %i.y, f0x3F7FF972
  %i.aa = load float, ptr %i.w, align 4
  %i.ab = fcmp ugt float %i.z, %i.aa
  br i1 %i.ab, label %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit, !prof !40

_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit: ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 3 uses
  %i.ad = load float, ptr %i.ac, align 16
  %i.ae = fmul float %i.ad, 1.000100e+00
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fcmp ult float %i.ae, %i.ag
  br i1 %i.ah, label %bb.c, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit, !prof !41

bb.c:                                             ; preds = %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.w, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !1648 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.am = load i32, ptr %i.al, align 4, !noalias !1648 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.ac, align 16, !noalias !1648 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 60
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !1648 ; 3 uses
  %i.aq = uitofp i32 %i.ap to float               ; 10 uses
  %.sroa.090.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 3 uses
  %.sroa.090.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1 ; 3 uses
  %i.ar = fsub float %.sroa.090.4.vec.extract, %.sroa.090.0.vec.extract
  %i.as = shufflevector <2 x float> %.sroa.01.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fsub <2 x float> %.sroa.0.0.copyload, %i.as
  %i.au = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x float> %i.at, %i.av           ; 2 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0 ; 4 uses
  %i.ay = fmul float %i.ax, %i.aq                 ; 3 uses
  %i.az = extractelement <2 x float> %i.aw, i64 1 ; 3 uses
  %i.ba = fmul float %i.az, %i.aq                 ; 3 uses
  %i.bb = tail call noundef float @llvm.floor.f32(float %i.ay) ; 3 uses
  %i.bc = tail call noundef float @llvm.ceil.f32(float %i.ba) ; 3 uses
  %i.bd = fcmp ogt float %i.bb, 0.000000e+00
  %i.be = select i1 %i.bd, float %i.bb, float 0.000000e+00 ; 3 uses
  %i.bf = fcmp olt float %i.bc, %i.aq
  %i.bg = select i1 %i.bf, float %i.bc, float %i.aq ; 3 uses
  %i.bh = fptosi float %i.be to i32
  %i.bi = fptosi float %i.bg to i32
  %i.bj = fptosi float %i.bb to i32
  %i.bk = tail call noundef i32 @llvm.smax.i32(i32 %i.bj, i32 -1) ; 2 uses
  %i.bl = fptosi float %i.bc to i32
  %i.bm = fptosi float %i.aq to i32
  %i.bn = add nuw nsw i32 %i.bm, 1
  %i.bo = tail call noundef i32 @llvm.smin.i32(i32 %i.bl, i32 %i.bn) ; 3 uses
  %i.bp = zext nneg i32 %i.bh to i64
  %i.bq = load ptr, ptr %i.h, align 8, !noalias !1649, !nonnull !24, !align !28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !1649
  %.idx = shl i64 %i.an, 37
  %i.bt = getelementptr i8, ptr %i.bs, i64 %.idx
  %i.bu = getelementptr [32 x i8], ptr %i.bt, i64 %i.ak ; 3 uses
  %i.bv = getelementptr [32 x i8], ptr %i.bu, i64 %i.bp ; 4 uses
  %i.bw = load <4 x float>, ptr %i.bv, align 16, !noalias !1649 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.by = load <4 x float>, ptr %i.bx, align 16, !noalias !1649 ; 3 uses
  %i.bz = sext i32 %i.bi to i64
  %i.ca = getelementptr [32 x i8], ptr %i.bu, i64 %i.bz ; 4 uses
  %i.cb = load <4 x float>, ptr %i.ca, align 16, !noalias !1650 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cd = load <4 x float>, ptr %i.cc, align 16, !noalias !1650 ; 3 uses
  %i.ce = sub nsw i32 %i.bo, %i.bk
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cg = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.bg, i64 1
  %i.ci = insertelement <2 x float> poison, float %i.be, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.ba, i64 1
  %i.ck = fsub <2 x float> %i.ch, %i.cj           ; 2 uses
  %i.cl = fcmp ogt <2 x float> %i.ck, zeroinitializer
  %i.cm = select <2 x i1> %i.cl, <2 x float> %i.ck, <2 x float> zeroinitializer ; 3 uses
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.co = fmul <4 x float> %i.cb, %i.cn
  %i.cp = fsub <2 x float> splat (float 1.000000e+00), %i.cm ; 2 uses
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cr = fmul <4 x float> %i.bw, %i.cq
  %i.cs = fadd <4 x float> %i.co, %i.cr
  %i.ct = fmul <4 x float> %i.cd, %i.cn
  %i.cu = fmul <4 x float> %i.by, %i.cq
  %i.cv = fadd <4 x float> %i.ct, %i.cu
  %i.cw = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cx = fmul <4 x float> %i.bw, %i.cw
  %i.cy = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cz = fmul <4 x float> %i.cb, %i.cy
  %i.da = fadd <4 x float> %i.cx, %i.cz
  %i.db = fmul <4 x float> %i.by, %i.cw
  %i.dc = fmul <4 x float> %i.cd, %i.cy
  %i.dd = fadd <4 x float> %i.db, %i.dc
  br label %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit

bb.e:                                             ; preds = %bb.c
  %i.de = getelementptr i8, ptr %i.bv, i64 32
  %i.df = load <4 x float>, ptr %i.de, align 16, !noalias !1651
  %i.dg = getelementptr i8, ptr %i.bv, i64 48
  %i.dh = load <4 x float>, ptr %i.dg, align 16, !noalias !1651
  %i.di = getelementptr i8, ptr %i.ca, i64 -32
  %i.dj = load <4 x float>, ptr %i.di, align 16, !noalias !1652
  %i.dk = getelementptr i8, ptr %i.ca, i64 -16
  %i.dl = load <4 x float>, ptr %i.dk, align 16, !noalias !1652
  %i.dm = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.bg, i64 1
  %i.do = insertelement <2 x float> poison, float %i.be, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.ba, i64 1
  %i.dq = fsub <2 x float> %i.dn, %i.dp           ; 2 uses
  %i.dr = fcmp ogt <2 x float> %i.dq, zeroinitializer
  %i.ds = select <2 x i1> %i.dr, <2 x float> %i.dq, <2 x float> zeroinitializer ; 3 uses
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.du = fmul <4 x float> %i.dt, %i.df
  %i.dv = fsub <2 x float> splat (float 1.000000e+00), %i.ds ; 2 uses
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dx = fmul <4 x float> %i.bw, %i.dw
  %i.dy = fadd <4 x float> %i.dx, %i.du           ; 2 uses
  %i.dz = fmul <4 x float> %i.dt, %i.dh
  %i.ea = fmul <4 x float> %i.by, %i.dw
  %i.eb = fadd <4 x float> %i.ea, %i.dz           ; 2 uses
  %i.ec = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ed = fmul <4 x float> %i.ec, %i.dj
  %i.ee = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ef = fmul <4 x float> %i.cb, %i.ee
  %i.eg = fadd <4 x float> %i.ef, %i.ed           ; 2 uses
  %i.eh = fmul <4 x float> %i.ec, %i.dl
  %i.ei = fmul <4 x float> %i.cd, %i.ee
  %i.ej = fadd <4 x float> %i.ei, %i.eh           ; 2 uses
  %.0.i.i227 = add nsw i32 %i.bk, 1               ; 2 uses
  %i.ek = icmp slt i32 %.0.i.i227, %i.bo
  br i1 %i.ek, label %.lr.ph, label %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit

.lr.ph:                                           ; preds = %bb.e
  %i.el = fsub float %i.az, %i.ax
  %i.em = zext nneg i32 %.0.i.i227 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.em, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.sroa.7122.0231 = phi <4 x float> [ %i.eb, %.lr.ph ], [ %i.fm, %bb.f ] ; 2 uses
  %.sroa.0119.0230 = phi <4 x float> [ %i.dy, %.lr.ph ], [ %i.fk, %bb.f ] ; 2 uses
  %.sroa.7116.0229 = phi <4 x float> [ %i.ej, %.lr.ph ], [ %i.fn, %bb.f ] ; 2 uses
  %.sroa.0113.0228 = phi <4 x float> [ %i.eg, %.lr.ph ], [ %i.fl, %bb.f ] ; 2 uses
  %i.en = trunc nsw i64 %indvars.iv to i32
  %3 = uitofp nneg i32 %i.en to float
  %i.eo = fdiv float %3, %i.aq
  %i.ep = fsub float %i.eo, %i.ax
  %i.eq = fdiv float %i.ep, %i.el                 ; 2 uses
  %i.er = fsub float 1.000000e+00, %i.eq
  %i.es = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eu = fmul <4 x float> %.sroa.0113.0228, %i.et
  %i.ev = insertelement <4 x float> poison, float %i.er, i64 0
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ex = fmul <4 x float> %.sroa.0119.0230, %i.ew
  %i.ey = fadd <4 x float> %i.eu, %i.ex
  %i.ez = fmul <4 x float> %.sroa.7116.0229, %i.et
  %i.fa = fmul <4 x float> %.sroa.7122.0231, %i.ew
  %i.fb = fadd <4 x float> %i.ez, %i.fa
  %i.fc = getelementptr [32 x i8], ptr %i.bu, i64 %indvars.iv ; 2 uses
  %i.fd = load <4 x float>, ptr %i.fc, align 16, !noalias !1653
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !noalias !1653
  %i.fg = fsub <4 x float> %i.fd, %i.ey
  %i.fh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fg, <4 x float> zeroinitializer) ; 2 uses
  %i.fi = fsub <4 x float> %i.ff, %i.fb
  %i.fj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fi, <4 x float> zeroinitializer) ; 2 uses
  %i.fk = fadd <4 x float> %.sroa.0119.0230, %i.fh ; 2 uses
  %i.fl = fadd <4 x float> %.sroa.0113.0228, %i.fh ; 2 uses
  %i.fm = fadd <4 x float> %.sroa.7122.0231, %i.fj ; 2 uses
  %i.fn = fadd <4 x float> %.sroa.7116.0229, %i.fj ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bo, %lftr.wideiv
  br i1 %exitcond.not, label %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit, label %bb.f, !llvm.loop !7

_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.083.0 = phi <4 x float> [ %i.cs, %bb.d ], [ %i.dy, %bb.e ], [ %i.fk, %bb.f ]
  %.sroa.5.0 = phi <4 x float> [ %i.cv, %bb.d ], [ %i.eb, %bb.e ], [ %i.fm, %bb.f ]
  %.sroa.884.0 = phi <4 x float> [ %i.da, %bb.d ], [ %i.eg, %bb.e ], [ %i.fl, %bb.f ]
  %.sroa.11.0 = phi <4 x float> [ %i.dd, %bb.d ], [ %i.ej, %bb.e ], [ %i.fn, %bb.f ]
  %i.fo = fmul float %i.ax, f0x3F800002
  %i.fp = fmul float %i.fo, %i.aq
  %i.fq = tail call noundef float @llvm.floor.f32(float %i.fp) ; 2 uses
  %i.fr = fcmp olt float %i.fq, 0.000000e+00
  %i.fs = select i1 %i.fr, float 0.000000e+00, float %i.fq
  %i.ft = fptosi float %i.fs to i32
  %i.fu = fmul float %i.az, f0x3F7FFFFC
  %i.fv = fmul float %i.fu, %i.aq
  %i.fw = tail call noundef float @llvm.ceil.f32(float %i.fv) ; 2 uses
  %i.fx = fcmp olt float %i.fw, %i.aq
  %i.fy = select i1 %i.fx, float %i.fw, float %i.aq
  %i.fz = fptosi float %i.fy to i32
  %i.ga = sub nsw i32 %i.fz, %i.ft                ; 2 uses
  %i.gb = bitcast i32 %i.aj to float
  %.sroa.0.12.vec.insert = insertelement <4 x float> %.sroa.083.0, float %i.gb, i64 3 ; 3 uses
  %i.gc = bitcast i32 %i.am to float
  %.sroa.7.28.vec.insert = insertelement <4 x float> %.sroa.5.0, float %i.gc, i64 3 ; 3 uses
  %i.gd = bitcast i32 %i.ga to float
  %.sroa.12.44.vec.insert = insertelement <4 x float> %.sroa.884.0, float %i.gd, i64 3 ; 3 uses
  %i.ge = bitcast i32 %i.ap to float
  %.sroa.18.60.vec.insert = insertelement <4 x float> %.sroa.11.0, float %i.ge, i64 3 ; 3 uses
  store <4 x float> %.sroa.0.12.vec.insert, ptr %i.v, align 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x float> %.sroa.7.28.vec.insert, ptr %i.gf, align 16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store <4 x float> %.sroa.12.44.vec.insert, ptr %i.gg, align 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store <4 x float> %.sroa.18.60.vec.insert, ptr %i.gh, align 16
  store <2 x float> %.sroa.01.0.copyload.i, ptr %i.ac, align 16
  %i.gi = fmul <4 x float> %.sroa.12.44.vec.insert, splat (float 5.000000e-01)
  %i.gj = fmul <4 x float> %.sroa.0.12.vec.insert, splat (float 5.000000e-01)
  %i.gk = fadd <4 x float> %i.gj, %i.gi
  %i.gl = fmul <4 x float> %.sroa.18.60.vec.insert, splat (float 5.000000e-01)
  %i.gm = fmul <4 x float> %.sroa.7.28.vec.insert, splat (float 5.000000e-01)
  %i.gn = fadd <4 x float> %i.gm, %i.gl
  %i.go = fadd <4 x float> %i.gk, %i.gn           ; 2 uses
  %i.gp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.029.0248, <4 x float> %.sroa.0.12.vec.insert) ; 2 uses
  %i.gq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.0247, <4 x float> %.sroa.7.28.vec.insert) ; 2 uses
  %i.gr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.0246, <4 x float> %.sroa.12.44.vec.insert) ; 2 uses
  %i.gs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.0245, <4 x float> %.sroa.18.60.vec.insert) ; 2 uses
  %i.gt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1834.0244, <4 x float> %i.go) ; 2 uses
  %i.gu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.22.0243, <4 x float> %i.go) ; 2 uses
  %i.gv = fcmp olt float %.sroa.43.0237, %.sroa.090.0.vec.extract
  %i.gw = select i1 %i.gv, float %.sroa.43.0237, float %.sroa.090.0.vec.extract ; 2 uses
  %i.gx = fcmp olt float %.sroa.46.0236, %.sroa.090.4.vec.extract
  %i.gy = select i1 %i.gx, float %.sroa.090.4.vec.extract, float %.sroa.46.0236 ; 2 uses
  %i.gz = add i64 %.sroa.28.0242, 1               ; 2 uses
  %i.ha = zext i32 %i.ga to i64
  %i.hb = add i64 %.sroa.3238.0241, %i.ha         ; 2 uses
  %i.hc = zext i32 %i.ap to i64                   ; 2 uses
  %i.hd = icmp ult i64 %.sroa.36.0240, %i.hc
  br i1 %i.hd, label %bb.g, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit

bb.g:                                             ; preds = %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit: ; preds = %bb.b, %bb.g, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit
  %.sroa.46.1 = phi float [ %i.gy, %bb.g ], [ %.sroa.46.0236, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit ], [ %i.gy, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %.sroa.46.0236, %bb.b ] ; 2 uses
  %.sroa.43.1 = phi float [ %i.gw, %bb.g ], [ %.sroa.43.0237, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit ], [ %i.gw, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %.sroa.43.0237, %bb.b ] ; 2 uses
  %.sroa.36.1 = phi i64 [ %i.hc, %bb.g ], [ %.sroa.36.0240, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit ], [ %.sroa.36.0240, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %.sroa.36.0240, %bb.b ] ; 2 uses
  %.sroa.3238.1 = phi i64 [ %i.hb, %bb.g ], [ %.sroa.3238.0241, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit ], [ %i.hb, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %.sroa.3238.0241, %bb.b ] ; 2 uses
  %.sroa.28.1 = phi i64 [ %i.gz, %bb.g ], [ %.sroa.28.0242, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit ], [ %i.gz, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %.sroa.28.0242, %bb.b ] ; 2 uses
  %.sroa.22.1 = phi <4 x float> [ %i.gu, %bb.g ], [ %.sroa.22.0243, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit ], [ %i.gu, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %.sroa.22.0243, %bb.b ] ; 2 uses
  %.sroa.1834.1 = phi <4 x float> [ %i.gt, %bb.g ], [ %.sroa.1834.0244, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit ], [ %i.gt, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %.sroa.1834.0244, %bb.b ] ; 2 uses
  %.sroa.14.1 = phi <4 x float> [ %i.gs, %bb.g ], [ %.sroa.14.0245, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit ], [ %i.gs, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %.sroa.14.0245, %bb.b ] ; 2 uses
  %.sroa.10.1 = phi <4 x float> [ %i.gr, %bb.g ], [ %.sroa.10.0246, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit ], [ %i.gr, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %.sroa.10.0246, %bb.b ] ; 2 uses
  %.sroa.6.1 = phi <4 x float> [ %i.gq, %bb.g ], [ %.sroa.6.0247, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit ], [ %i.gq, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %.sroa.6.0247, %bb.b ] ; 2 uses
  %.sroa.029.1 = phi <4 x float> [ %i.gp, %bb.g ], [ %.sroa.029.0248, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit ], [ %i.gp, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %.sroa.029.0248, %bb.b ] ; 2 uses
  %i.he = phi <2 x float> [ %.sroa.01.0.copyload.i, %bb.g ], [ %i.r, %_ZNK6embree9PrimRefMB18time_range_overlapERKNS_4BBoxIfEE.exit ], [ %i.r, %_ZNK6embree4sse224SubdivRecalculatePrimRefclERKNS_9PrimRefMBENS_4BBoxIfEE.exit ], [ %i.r, %bb.b ] ; 2 uses
  %i.hf = add nuw i64 %.0249, 1                   ; 2 uses
  %i.hg = load i64, ptr %i.b, align 8
  %i.hh = icmp ult i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.b, label %._crit_edge, !llvm.loop !1647
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_24SubdivRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_T_SS_SS_SS_RKSR_RKT1_RKT2_(ptr dead_on_unwind noalias writable sret(%"class.embree::PrimInfoMBT") align 16 %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 16 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %7) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %class.anon.294, align 8            ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %11 = alloca %"struct.embree::StackArray.279", align 64 ; 9 uses
  %12 = alloca %class.anon.293, align 8           ; 9 uses
  %13 = alloca %"class.embree::PrimInfoMBT", align 16 ; 12 uses
  store i64 %2, ptr %i.b, align 8
  store i64 %3, ptr %i.c, align 8
  %i.d = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.f = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 512) ; 4 uses
  store i64 %i.f, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8072
  store i64 %i.f, ptr %i.g, align 8
  %i.h = icmp ult i64 %i.e, 57
  br i1 %i.h, label %_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = mul nuw nsw i64 %i.f, 144
  %i.j = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.i, i64 noundef 64)
  br label %_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit

_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi ptr [ %i.j, %bb.b ], [ %11, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8064 ; 4 uses
  store ptr %storemerge.i, ptr %i.k, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %i.b, ptr %12, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %6, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i12 = icmp eq i64 %i.e, 0
  br i1 %.not.i12, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %12, ptr %9, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS9_24SubdivRecalculatePrimRefELm2EE5splitERKNS9_8BinSplitILm32EEERKNS_5SetMBERSI_SL_EUlRKNS_5rangeImEEE0_FKS8_RSR_SS_EEET0_T_SV_SV_SV_RKSU_RKT1_RKT2_EUlmE_EEvSV_SX_EUlSP_E_EEvSV_SV_SV_SX_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.f, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %8)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.g

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.d
  %i.p = load ptr, ptr %8, align 8                ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.p, ptr %10, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #27
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %10, align 8
end_hunk_3
begin_hunk_4_@_ZZN6embree13TaskScheduler5spawnImZNS_4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS2_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS6_Li4EE6CreateENSE_3SetEZNS2_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS3_11BuildRecordERKS9_E_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseEST_S9_bEUlRKNS_5rangeImEEE_EEvT_S15_S15_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv:bb.a
  br i1 %exitcond.not, label %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseESR_S7_bENKUlRKNS_5rangeImEEE_clES11_.exit, label %bb.c, !llvm.loop !1667

_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseESR_S7_bENKUlRKNS_5rangeImEEE_clES11_.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.aj = add i64 %i.c, %i.a
  %i.ak = lshr i64 %i.aj, 1                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS2_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS6_Li4EE6CreateENSE_3SetEZNS2_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS3_11BuildRecordERKS9_E_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseEST_S9_bEUlRKNS_5rangeImEEE_EEvT_S15_S15_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.ak, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.an)
  %i.ao = load i64, ptr %0, align 8
  %i.ap = load i64, ptr %i.e, align 8
  %i.aq = load ptr, ptr %i.am, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS2_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS6_Li4EE6CreateENSE_3SetEZNS2_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS3_11BuildRecordERKS9_E_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseEST_S9_bEUlRKNS_5rangeImEEE_EEvT_S15_S15_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.ak, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.aq)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseESR_S7_bENKUlRKNS_5rangeImEEE_clES11_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZNK6embree5SetMB12linearBoundsINS_4sse224SubdivRecalculatePrimRefEEENS_5LBBoxINS_6Vec3faEEERKT_ENKUlRKNS_5rangeImEEE_clESD_(ptr dead_on_unwind noalias writable sret(%"struct.embree::LBBox") align 16 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %.lr.ph142, label %._crit_edge

.lr.ph142:                                        ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load ptr, ptr %i.f, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !24, !align !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.l, align 8
  %i.m = load ptr, ptr %i.k, align 8, !noalias !1681, !nonnull !24, !align !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1681
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit, %bb.a
  %.lcssa140 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.fi, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit ]
  %.lcssa138 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.fh, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit ]
  %.lcssa136 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.fg, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit ]
  %.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.ff, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa136, ptr %i.r, align 16
  store <4 x float> %.lcssa138, ptr %i.q, align 16
  store <4 x float> %.lcssa140, ptr %i.p, align 16
  ret void

bb.b:                                             ; preds = %.lr.ph142, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit
  %.0141 = phi i64 [ %i.a, %.lr.ph142 ], [ %i.fj, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit ] ; 2 uses
  %i.s = phi <4 x float> [ splat (float +inf), %.lr.ph142 ], [ %i.ff, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit ]
  %i.t = phi <4 x float> [ splat (float -inf), %.lr.ph142 ], [ %i.fg, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit ]
  %i.u = phi <4 x float> [ splat (float +inf), %.lr.ph142 ], [ %i.fh, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit ]
  %i.v = phi <4 x float> [ splat (float -inf), %.lr.ph142 ], [ %i.fi, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit ]
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.0141 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  %i.z = load i32, ptr %i.y, align 4, !noalias !1682
  %i.aa = uitofp i32 %i.z to float                ; 6 uses
  %i.ab = load float, ptr %i.x, align 4           ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 68
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = fsub float %i.ad, %i.ab
  %i.af = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fsub <2 x float> %.sroa.0.0.copyload, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x float> %i.ah, %i.aj           ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0 ; 3 uses
  %i.am = fmul float %i.al, %i.aa                 ; 3 uses
  %i.an = extractelement <2 x float> %i.ak, i64 1 ; 2 uses
  %i.ao = fmul float %i.an, %i.aa                 ; 3 uses
  %i.ap = tail call noundef float @llvm.floor.f32(float %i.am) ; 3 uses
  %i.aq = tail call noundef float @llvm.ceil.f32(float %i.ao) ; 3 uses
  %i.ar = fcmp ogt float %i.ap, 0.000000e+00
  %i.as = select i1 %i.ar, float %i.ap, float 0.000000e+00 ; 3 uses
  %i.at = fcmp olt float %i.aq, %i.aa
  %i.au = select i1 %i.at, float %i.aq, float %i.aa ; 3 uses
  %i.av = fptosi float %i.as to i32
  %i.aw = fptosi float %i.au to i32
  %i.ax = fptosi float %i.ap to i32
  %i.ay = tail call noundef i32 @llvm.smax.i32(i32 %i.ax, i32 -1) ; 2 uses
  %i.az = fptosi float %i.aq to i32
  %i.ba = fptosi float %i.aa to i32
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = tail call noundef i32 @llvm.smin.i32(i32 %i.az, i32 %i.bb) ; 3 uses
  %i.bd = zext nneg i32 %i.av to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !noalias !1681
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !1681
  %i.bj = zext i32 %i.bi to i64
  %.idx.i = shl i64 %i.bj, 37
  %i.bk = getelementptr i8, ptr %i.o, i64 %.idx.i
  %i.bl = getelementptr [32 x i8], ptr %i.bk, i64 %i.bg ; 3 uses
  %i.bm = getelementptr [32 x i8], ptr %i.bl, i64 %i.bd ; 4 uses
  %i.bn = load <4 x float>, ptr %i.bm, align 16, !noalias !1681 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load <4 x float>, ptr %i.bo, align 16, !noalias !1681 ; 3 uses
  %i.bq = sext i32 %i.aw to i64
  %i.br = getelementptr [32 x i8], ptr %i.bl, i64 %i.bq ; 4 uses
  %i.bs = load <4 x float>, ptr %i.br, align 16, !noalias !1683 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load <4 x float>, ptr %i.bt, align 16, !noalias !1683 ; 3 uses
  %i.bv = sub nsw i32 %i.bc, %i.ay
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bx = insertelement <2 x float> poison, float %i.am, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.au, i64 1
  %i.bz = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.ao, i64 1
  %i.cb = fsub <2 x float> %i.by, %i.ca           ; 2 uses
  %i.cc = fcmp ogt <2 x float> %i.cb, zeroinitializer
  %i.cd = select <2 x i1> %i.cc, <2 x float> %i.cb, <2 x float> zeroinitializer ; 3 uses
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cf = fmul <4 x float> %i.bs, %i.ce
  %i.cg = fsub <2 x float> splat (float 1.000000e+00), %i.cd ; 2 uses
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ci = fmul <4 x float> %i.bn, %i.ch
  %i.cj = fadd <4 x float> %i.cf, %i.ci
  %i.ck = fmul <4 x float> %i.bu, %i.ce
  %i.cl = fmul <4 x float> %i.bp, %i.ch
  %i.cm = fadd <4 x float> %i.ck, %i.cl
  %i.cn = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.co = fmul <4 x float> %i.bn, %i.cn
  %i.cp = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cq = fmul <4 x float> %i.bs, %i.cp
  %i.cr = fadd <4 x float> %i.co, %i.cq
  %i.cs = fmul <4 x float> %i.bp, %i.cn
  %i.ct = fmul <4 x float> %i.bu, %i.cp
  %i.cu = fadd <4 x float> %i.cs, %i.ct
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit

bb.d:                                             ; preds = %bb.b
  %i.cv = getelementptr i8, ptr %i.bm, i64 32
  %i.cw = load <4 x float>, ptr %i.cv, align 16, !noalias !1684
  %i.cx = getelementptr i8, ptr %i.bm, i64 48
  %i.cy = load <4 x float>, ptr %i.cx, align 16, !noalias !1684
  %i.cz = getelementptr i8, ptr %i.br, i64 -32
  %i.da = load <4 x float>, ptr %i.cz, align 16, !noalias !1685
  %i.db = getelementptr i8, ptr %i.br, i64 -16
  %i.dc = load <4 x float>, ptr %i.db, align 16, !noalias !1685
  %i.dd = insertelement <2 x float> poison, float %i.am, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.au, i64 1
  %i.df = insertelement <2 x float> poison, float %i.as, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %i.ao, i64 1
  %i.dh = fsub <2 x float> %i.de, %i.dg           ; 2 uses
  %i.di = fcmp ogt <2 x float> %i.dh, zeroinitializer
  %i.dj = select <2 x i1> %i.di, <2 x float> %i.dh, <2 x float> zeroinitializer ; 3 uses
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dl = fmul <4 x float> %i.dk, %i.cw
  %i.dm = fsub <2 x float> splat (float 1.000000e+00), %i.dj ; 2 uses
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.do = fmul <4 x float> %i.bn, %i.dn
  %i.dp = fadd <4 x float> %i.do, %i.dl           ; 2 uses
  %i.dq = fmul <4 x float> %i.dk, %i.cy
  %i.dr = fmul <4 x float> %i.bp, %i.dn
  %i.ds = fadd <4 x float> %i.dr, %i.dq           ; 2 uses
  %i.dt = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.du = fmul <4 x float> %i.dt, %i.da
  %i.dv = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dw = fmul <4 x float> %i.bs, %i.dv
  %i.dx = fadd <4 x float> %i.dw, %i.du           ; 2 uses
  %i.dy = fmul <4 x float> %i.dt, %i.dc
  %i.dz = fmul <4 x float> %i.bu, %i.dv
  %i.ea = fadd <4 x float> %i.dz, %i.dy           ; 2 uses
  %.0.i126 = add nsw i32 %i.ay, 1                 ; 2 uses
  %i.eb = icmp slt i32 %.0.i126, %i.bc
  br i1 %i.eb, label %.lr.ph, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit

.lr.ph:                                           ; preds = %bb.d
  %i.ec = fsub float %i.an, %i.al
  %i.ed = zext nneg i32 %.0.i126 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.ed, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.sroa.744.0130 = phi <4 x float> [ %i.ds, %.lr.ph ], [ %i.fd, %bb.e ] ; 2 uses
  %.sroa.041.0129 = phi <4 x float> [ %i.dp, %.lr.ph ], [ %i.fb, %bb.e ] ; 2 uses
  %.sroa.7.0128 = phi <4 x float> [ %i.ea, %.lr.ph ], [ %i.fe, %bb.e ] ; 2 uses
  %.sroa.036.0127 = phi <4 x float> [ %i.dx, %.lr.ph ], [ %i.fc, %bb.e ] ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv to i32
  %3 = uitofp nneg i32 %i.ee to float
  %i.ef = fdiv float %3, %i.aa
  %i.eg = fsub float %i.ef, %i.al
  %i.eh = fdiv float %i.eg, %i.ec                 ; 2 uses
  %i.ei = fsub float 1.000000e+00, %i.eh
  %i.ej = insertelement <4 x float> poison, float %i.eh, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.el = fmul <4 x float> %.sroa.036.0127, %i.ek
  %i.em = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eo = fmul <4 x float> %.sroa.041.0129, %i.en
  %i.ep = fadd <4 x float> %i.el, %i.eo
  %i.eq = fmul <4 x float> %.sroa.7.0128, %i.ek
  %i.er = fmul <4 x float> %.sroa.744.0130, %i.en
  %i.es = fadd <4 x float> %i.eq, %i.er
  %i.et = getelementptr [32 x i8], ptr %i.bl, i64 %indvars.iv ; 2 uses
  %i.eu = load <4 x float>, ptr %i.et, align 16, !noalias !1686
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ew = load <4 x float>, ptr %i.ev, align 16, !noalias !1686
  %i.ex = fsub <4 x float> %i.eu, %i.ep
  %i.ey = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ex, <4 x float> zeroinitializer) ; 2 uses
  %i.ez = fsub <4 x float> %i.ew, %i.es
  %i.fa = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ez, <4 x float> zeroinitializer) ; 2 uses
  %i.fb = fadd <4 x float> %.sroa.041.0129, %i.ey ; 2 uses
  %i.fc = fadd <4 x float> %.sroa.036.0127, %i.ey ; 2 uses
  %i.fd = fadd <4 x float> %.sroa.744.0130, %i.fa ; 2 uses
  %i.fe = fadd <4 x float> %.sroa.7.0128, %i.fa   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bc, %lftr.wideiv
  br i1 %exitcond.not, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit, label %bb.e, !llvm.loop !12

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRef12linearBoundsERKNS_9PrimRefMBENS_4BBoxIfEEEUlmE_EERKT_RKSA_SG_f.exit: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.11.0 = phi <4 x float> [ %i.cu, %bb.c ], [ %i.ea, %bb.d ], [ %i.fe, %bb.e ]
  %.sroa.8.0 = phi <4 x float> [ %i.cr, %bb.c ], [ %i.dx, %bb.d ], [ %i.fc, %bb.e ]
  %.sroa.5.0 = phi <4 x float> [ %i.cm, %bb.c ], [ %i.ds, %bb.d ], [ %i.fd, %bb.e ]
  %.sroa.0.0 = phi <4 x float> [ %i.cj, %bb.c ], [ %i.dp, %bb.d ], [ %i.fb, %bb.e ]
  %i.ff = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.s, <4 x float> %.sroa.0.0) ; 2 uses
  %i.fg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.t, <4 x float> %.sroa.5.0) ; 2 uses
  %i.fh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.u, <4 x float> %.sroa.8.0) ; 2 uses
  %i.fi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.v, <4 x float> %.sroa.11.0) ; 2 uses
  %i.fj = add nuw i64 %.0141, 1                   ; 2 uses
  %exitcond156.not = icmp eq i64 %i.fj, %i.c
  br i1 %exitcond156.not, label %._crit_edge, label %bb.b, !llvm.loop !1680
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree24parallel_reduce_internalImNS_5LBBoxINS_6Vec3faEEEZNKS_5SetMB12linearBoundsINS_4sse224SubdivRecalculatePrimRefEEES3_RKT_EUlRKNS_5rangeImEEE_ZNKS5_IS7_EES3_SA_EUlRKS3_SH_E_EET0_S8_S8_S8_S8_RKSJ_RKT1_RKT2_(ptr dead_on_unwind noalias writable sret(%"struct.embree::LBBox") align 16 %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %class.anon.316, align 8            ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %11 = alloca %"struct.embree::StackArray.313", align 64 ; 9 uses
  %12 = alloca %class.anon.315, align 8           ; 9 uses
  store i64 %2, ptr %i.b, align 8
  store i64 %3, ptr %i.c, align 8
  %i.d = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.f = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 512) ; 4 uses
  store i64 %i.f, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8200
  store i64 %i.f, ptr %i.g, align 8
  %i.h = icmp ult i64 %i.e, 129
  br i1 %i.h, label %_ZN6embree10StackArrayINS_5LBBoxINS_6Vec3faEEELm8192EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = shl nuw nsw i64 %i.f, 6
  %i.j = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.i, i64 noundef 64)
  br label %_ZN6embree10StackArrayINS_5LBBoxINS_6Vec3faEEELm8192EEC2Em.exit

_ZN6embree10StackArrayINS_5LBBoxINS_6Vec3faEEELm8192EEC2Em.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi ptr [ %i.j, %bb.b ], [ %11, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8192 ; 3 uses
  store ptr %storemerge.i, ptr %i.k, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %i.b, ptr %12, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %6, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN6embree10StackArrayINS_5LBBoxINS_6Vec3faEEELm8192EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %12, ptr %9, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_5LBBoxINS_6Vec3faEEEZNKS_5SetMB12linearBoundsINS_4sse224SubdivRecalculatePrimRefEEES6_RKT_EUlRKNS_5rangeImEEE_ZNKS8_ISA_EES6_SD_EUlRKS6_SK_E_EET0_SB_SB_SB_SB_RKSM_RKT1_RKT2_EUlmE_EEvSB_SO_EUlSH_E_EEvSB_SB_SB_SO_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.f, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %8)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.g

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.d
  %i.p = load ptr, ptr %8, align 8                ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.p, ptr %10, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #27
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %10, align 8
  %.not.i15 = icmp eq ptr %i.t, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.pre34.pre.pre = load ptr, ptr %i.k, align 64
  %.pre.pre = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.k

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.r, %bb.g ], [ %i.s, %bb.h ], [ %i.s, %bb.i ]
  %i.u = load ptr, ptr %8, align 8
  %.not.i.i17 = icmp eq ptr %i.u, null
  br i1 %.not.i.i17, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit18, label %bb.j

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit18

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit18: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.v = load ptr, ptr %i.k, align 64             ; 2 uses
  %.not.i10 = icmp eq ptr %i.v, %11
  br i1 %.not.i10, label %_ZN6embree10StackArrayINS_5LBBoxINS_6Vec3faEEELm8192EED2Ev.exit, label %bb.o

bb.k:                                             ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, %_ZN6embree10StackArrayINS_5LBBoxINS_6Vec3faEEELm8192EEC2Em.exit
  %.pre34 = phi ptr [ %.pre34.pre.pre, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ], [ %storemerge.i, %_ZN6embree10StackArrayINS_5LBBoxINS_6Vec3faEEELm8192EEC2Em.exit ] ; 5 uses
  %i.w = phi i64 [ %.pre.pre, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ], [ 0, %_ZN6embree10StackArrayINS_5LBBoxINS_6Vec3faEEELm8192EEC2Em.exit ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.x = load <4 x float>, ptr %5, align 16       ; 4 uses
  store <4 x float> %i.x, ptr %0, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load <4 x float>, ptr %i.z, align 16    ; 4 uses
  store <4 x float> %i.aa, ptr %i.y, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ad = load <4 x float>, ptr %i.ac, align 16   ; 4 uses
  store <4 x float> %i.ad, ptr %i.ab, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ag = load <4 x float>, ptr %i.af, align 16   ; 3 uses
  store <4 x float> %i.ag, ptr %i.ae, align 16
  %.not29 = icmp eq i64 %i.w, 0
  br i1 %.not29, label %bb.l, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %xtraiter = and i64 %i.w, 1
  %i.ah = icmp eq i64 %i.w, 1
  br i1 %i.ah, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.w, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi <4 x float> [ %i.ag, %.lr.ph.preheader ], [ %i.by, %._crit_edge.unr-lcssa ]
end_hunk_4
