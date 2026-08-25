Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.1?download=true
inline.NumInlined: 11154
inline.NumDeleted: 5577
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi1ELb0ELb1EEclEPdRKS3_llll:bb.a
  %i.el = load double, ptr %i.ek, align 8, !tbaa !52
  %i.em = getelementptr inbounds [8 x i8], ptr %1, i64 %.365
  store double %i.el, ptr %i.em, align 8, !tbaa !52
  %i.en = add nuw nsw i64 %.066, 1
  %i.eo = mul nsw i64 %i.dh, %i.en
  %i.ep = getelementptr [8 x i8], ptr %i.dl, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !52
  %i.er = getelementptr [8 x i8], ptr %1, i64 %.365
  %i.es = getelementptr i8, ptr %i.er, i64 8
  store double %i.eq, ptr %i.es, align 8, !tbaa !52
  %i.et = add nuw nsw i64 %.066, 2
  %i.eu = mul nsw i64 %i.dh, %i.et
  %i.ev = getelementptr [8 x i8], ptr %i.dl, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !52
  %i.ex = getelementptr [8 x i8], ptr %1, i64 %.365
  %i.ey = getelementptr i8, ptr %i.ex, i64 16
  store double %i.ew, ptr %i.ey, align 8, !tbaa !52
  %i.ez = add nuw nsw i64 %.066, 3
  %i.fa = mul nsw i64 %i.dh, %i.ez
  %i.fb = getelementptr [8 x i8], ptr %i.dl, i64 %i.fa
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !52
  %i.fd = getelementptr [8 x i8], ptr %1, i64 %.365
  %i.fe = getelementptr i8, ptr %i.fd, i64 24
  store double %i.fc, ptr %i.fe, align 8, !tbaa !52
  %i.ff = add nsw i64 %.365, 4                    ; 2 uses
  %i.fg = add nuw nsw i64 %.066, 4                ; 2 uses
  %exitcond74.not.3 = icmp eq i64 %i.fg, %3
  br i1 %exitcond74.not.3, label %._crit_edge, label %scalar.ph102, !llvm.loop !320
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, double noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %12 = alloca %"struct.Eigen::internal::lhs_process_one_packet", align 1 ; 3 uses
  %i.a = icmp eq i64 %8, -1
  %spec.select = select i1 %i.a, i64 %5, i64 %8   ; 11 uses
  %i.b = icmp eq i64 %9, -1
  %.0249 = select i1 %i.b, i64 %5, i64 %9         ; 6 uses
  %i.c = sdiv i64 %6, 4
  %i.d = shl nsw i64 %i.c, 2                      ; 14 uses
  %i.e = sdiv i64 %4, 4
  %i.f = shl nsw i64 %i.e, 2                      ; 6 uses
  %i.g = sub nsw i64 %4, %i.f
  %i.h = sdiv i64 %i.g, 2
  %i.i = shl nsw i64 %i.h, 1
  %i.j = add nsw i64 %i.i, %i.f                   ; 3 uses
  %i.k = sub nsw i64 %4, %i.j
  %i.l = sdiv i64 %i.k, 2
  %i.m = shl nsw i64 %i.l, 1
  %i.n = add nsw i64 %i.m, %i.j                   ; 2 uses
  %i.o = sub nsw i64 %4, %i.n
  %i.p = sdiv i64 %i.o, 2
  %i.q = shl nsw i64 %i.p, 1
  %i.r = add nsw i64 %i.q, %i.n                   ; 7 uses
  %i.s = and i64 %5, -8                           ; 7 uses
  %i.t = shl i64 %5, 5                            ; 2 uses
  %i.u = sub i64 32640, %i.t
  %i.v = udiv i64 %i.u, %i.t
  %.sroa.speculated649 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = shl nuw nsw i64 %.sroa.speculated649, 2
  %i.x = icmp sgt i64 %4, 3
  br i1 %i.x, label %.lr.ph808, label %._crit_edge809

.lr.ph808:                                        ; preds = %bb.a
  %i.y = icmp sgt i64 %6, 3
  %.idx259 = shl i64 %10, 5
  %invariant.gep = getelementptr i8, ptr %2, i64 %.idx259 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.idx260 = shl i64 %11, 5
  %invariant.gep751 = getelementptr i8, ptr %3, i64 %.idx260
  %i.aa = icmp sgt i64 %5, 7                      ; 2 uses
  %.not = icmp eq i64 %i.s, %5                    ; 3 uses
  %i.ab = insertelement <2 x double> poison, double %7, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 13 uses
  %i.ad = icmp slt i64 %i.d, %6
  %invariant.gep773 = getelementptr [8 x i8], ptr %3, i64 %11 ; 2 uses
  %i.ae = fmul <2 x double> %i.ac, zeroinitializer ; 2 uses
  br label %bb.b

.loopexit706:                                     ; preds = %._crit_edge777.split.split.us.us.us, %._crit_edge777.split.split.us799, %._crit_edge777.split.us.us.us, %.preheader705
  %i.af = icmp slt i64 %i.cq, %i.f
  br i1 %i.af, label %bb.b, label %._crit_edge809, !llvm.loop !321

._crit_edge809:                                   ; preds = %.loopexit706, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, double noundef %7, i64 noundef %i.f, i64 noundef %i.j, i64 noundef %spec.select, i64 noundef %.0249, i64 noundef %10, i64 noundef %11, i32 noundef 4, i64 noundef %i.s, i64 noundef 8, i64 noundef %6, i64 noundef %5, i64 noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ag = icmp slt i64 %i.r, %4
  br i1 %i.ag, label %.preheader700, label %.loopexit

.preheader700:                                    ; preds = %._crit_edge809
  %i.ah = icmp sgt i64 %6, 3
  br i1 %i.ah, label %.preheader699.lr.ph.split, label %.preheader698

.preheader699.lr.ph.split:                        ; preds = %.preheader700
  %invariant.gep823 = getelementptr [8 x i8], ptr %2, i64 %10 ; 2 uses
  %.idx = shl i64 %11, 5
  %invariant.gep829 = getelementptr i8, ptr %3, i64 %.idx
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = icmp sgt i64 %5, 0
  %i.ak = load ptr, ptr %1, align 8, !tbaa !322   ; 2 uses
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !324 ; 8 uses
  br i1 %i.aj, label %.preheader699.us.preheader, label %.preheader699

.preheader699.us.preheader:                       ; preds = %.preheader699.lr.ph.split
  %xtraiter = and i64 %5, 1
  %i.am = icmp eq i64 %5, 1
  %unroll_iter = and i64 %5, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1019 = trunc i64 %5 to i1
  br label %.preheader699.us

.preheader699.us:                                 ; preds = %.preheader699.us.preheader, %._crit_edge827.split.us.us
  %.0231828.us = phi i64 [ %i.co, %._crit_edge827.split.us.us ], [ 0, %.preheader699.us.preheader ] ; 6 uses
  %i.an = mul nsw i64 %.0231828.us, %.0249
  %gep830.us = getelementptr [8 x i8], ptr %invariant.gep829, i64 %i.an ; 2 uses
  %i.ao = mul nsw i64 %i.al, %.0231828.us
  %i.ap = or disjoint i64 %.0231828.us, 1
  %i.aq = mul nsw i64 %i.al, %i.ap
  %i.ar = or disjoint i64 %.0231828.us, 2
  %i.as = mul nsw i64 %i.al, %i.ar
  %i.at = or disjoint i64 %.0231828.us, 3
  %i.au = mul nsw i64 %i.al, %i.at
  br label %.lr.ph817.us.us

.lr.ph817.us.us:                                  ; preds = %._crit_edge818.us.us, %.preheader699.us
  %.0230825.us.us = phi i64 [ %i.r, %.preheader699.us ], [ %i.cn, %._crit_edge818.us.us ] ; 3 uses
  %i.av = mul nsw i64 %.0230825.us.us, %spec.select
  %gep824.us.us = getelementptr [8 x i8], ptr %invariant.gep823, i64 %i.av ; 4 uses
  call void @llvm.prefetch.p0(ptr %gep824.us.us, i32 0, i32 3, i32 1)
  br i1 %i.am, label %.epil.preheader, label %.lr.ph817.us.us.new

.lr.ph817.us.us.new:                              ; preds = %.lr.ph817.us.us, %.lr.ph817.us.us.new
  %.0228815.us.us = phi i64 [ %i.bo, %.lr.ph817.us.us.new ], [ 0, %.lr.ph817.us.us ] ; 3 uses
  %.0229814.us.us = phi ptr [ %i.bn, %.lr.ph817.us.us.new ], [ %gep830.us, %.lr.ph817.us.us ] ; 3 uses
  %i.aw = phi <4 x double> [ %i.bm, %.lr.ph817.us.us.new ], [ zeroinitializer, %.lr.ph817.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph817.us.us.new ], [ 0, %.lr.ph817.us.us ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %gep824.us.us, i64 %.0228815.us.us
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !52
  %i.az = load <4 x double>, ptr %.0229814.us.us, align 8, !tbaa !52
  %i.ba = insertelement <4 x double> poison, double %i.ay, i64 0
  %i.bb = shufflevector <4 x double> %i.ba, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bc = fmul <4 x double> %i.bb, %i.az
  %i.bd = fadd <4 x double> %i.aw, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.0229814.us.us, i64 32
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %gep824.us.us, i64 %.0228815.us.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !52
  %i.bi = load <4 x double>, ptr %i.be, align 8, !tbaa !52
  %i.bj = insertelement <4 x double> poison, double %i.bh, i64 0
  %i.bk = shufflevector <4 x double> %i.bj, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bl = fmul <4 x double> %i.bk, %i.bi
  %i.bm = fadd <4 x double> %i.bd, %i.bl          ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0229814.us.us, i64 64 ; 2 uses
  %i.bo = add nuw nsw i64 %.0228815.us.us, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge818.us.us.unr-lcssa, label %.lr.ph817.us.us.new, !llvm.loop !325

._crit_edge818.us.us.unr-lcssa:                   ; preds = %.lr.ph817.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge818.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge818.us.us.unr-lcssa, %.lr.ph817.us.us
  %.0228815.us.us.epil.init = phi i64 [ 0, %.lr.ph817.us.us ], [ %i.bo, %._crit_edge818.us.us.unr-lcssa ]
  %.0229814.us.us.epil.init = phi ptr [ %gep830.us, %.lr.ph817.us.us ], [ %i.bn, %._crit_edge818.us.us.unr-lcssa ]
  %.epil.init = phi <4 x double> [ zeroinitializer, %.lr.ph817.us.us ], [ %i.bm, %._crit_edge818.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1019)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %gep824.us.us, i64 %.0228815.us.us.epil.init
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !52
  %i.br = load <4 x double>, ptr %.0229814.us.us.epil.init, align 8, !tbaa !52
  %i.bs = insertelement <4 x double> poison, double %i.bq, i64 0
  %i.bt = shufflevector <4 x double> %i.bs, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bu = fmul <4 x double> %i.bt, %i.br
  %i.bv = fadd <4 x double> %.epil.init, %i.bu
  br label %._crit_edge818.us.us

._crit_edge818.us.us:                             ; preds = %._crit_edge818.us.us.unr-lcssa, %.epil.preheader
  %.lcssa988 = phi <4 x double> [ %i.bm, %._crit_edge818.us.us.unr-lcssa ], [ %i.bv, %.epil.preheader ] ; 4 uses
  %i.bw = getelementptr [8 x i8], ptr %i.ak, i64 %.0230825.us.us ; 4 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.ao ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !52
  %i.bz = extractelement <4 x double> %.lcssa988, i64 0
  %i.ca = call double @llvm.fmuladd.f64(double %7, double %i.bz, double %i.by)
  store double %i.ca, ptr %i.bx, align 8, !tbaa !52
  %i.cb = getelementptr [8 x i8], ptr %i.bw, i64 %i.aq ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !52
  %i.cd = extractelement <4 x double> %.lcssa988, i64 1
  %i.ce = call double @llvm.fmuladd.f64(double %7, double %i.cd, double %i.cc)
  store double %i.ce, ptr %i.cb, align 8, !tbaa !52
  %i.cf = getelementptr [8 x i8], ptr %i.bw, i64 %i.as ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !52
  %i.ch = extractelement <4 x double> %.lcssa988, i64 2
  %i.ci = call double @llvm.fmuladd.f64(double %7, double %i.ch, double %i.cg)
  store double %i.ci, ptr %i.cf, align 8, !tbaa !52
  %i.cj = getelementptr [8 x i8], ptr %i.bw, i64 %i.au ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !52
  %i.cl = extractelement <4 x double> %.lcssa988, i64 3
  %i.cm = call double @llvm.fmuladd.f64(double %7, double %i.cl, double %i.ck)
  store double %i.cm, ptr %i.cj, align 8, !tbaa !52
  %i.cn = add nsw i64 %.0230825.us.us, 1          ; 2 uses
  %exitcond891.not = icmp eq i64 %i.cn, %4
  br i1 %exitcond891.not, label %._crit_edge827.split.us.us, label %.lr.ph817.us.us, !llvm.loop !326

._crit_edge827.split.us.us:                       ; preds = %._crit_edge818.us.us
  %i.co = add nuw nsw i64 %.0231828.us, 4         ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.d
  br i1 %i.cp, label %.preheader699.us, label %.preheader698, !llvm.loop !327

bb.b:                                             ; preds = %.lr.ph808, %.loopexit706
  %.0247806 = phi i64 [ 0, %.lr.ph808 ], [ %i.cq, %.loopexit706 ] ; 6 uses
  %i.cq = add nuw nsw i64 %.0247806, %i.w         ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.cq) ; 4 uses
  %i.cr = icmp sgt i64 %i.f, %.0247806            ; 2 uses
  %or.cond = select i1 %i.y, i1 %i.cr, i1 false
  br i1 %or.cond, label %.preheader704, label %.preheader705

.preheader705:                                    ; preds = %._crit_edge749, %bb.b
  %brmerge.not = select i1 %i.ad, i1 %i.cr, i1 false
  br i1 %brmerge.not, label %.preheader703.lr.ph.split.us, label %.loopexit706

.preheader703.lr.ph.split.us:                     ; preds = %.preheader705
  br i1 %i.aa, label %.preheader703.us.us, label %.preheader703.lr.ph.split.us.split

.preheader703.us.us:                              ; preds = %.preheader703.lr.ph.split.us, %._crit_edge777.split.us.us.us
  %.0238794.us.us = phi i64 [ %i.hr, %._crit_edge777.split.us.us.us ], [ %i.d, %.preheader703.lr.ph.split.us ] ; 3 uses
  %i.cs = mul nsw i64 %.0238794.us.us, %.0249
  %gep774.us.us = getelementptr [8 x i8], ptr %invariant.gep773, i64 %i.cs
  br label %.lr.ph759.us.us.us

.lr.ph759.us.us.us:                               ; preds = %._crit_edge770.us.us.us, %.preheader703.us.us
  %.0237775.us.us.us = phi i64 [ %.0247806, %.preheader703.us.us ], [ %i.hp, %._crit_edge770.us.us.us ] ; 3 uses
  %i.ct = mul nsw i64 %.0237775.us.us.us, %spec.select
  %gep779.us.us.us = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ct ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %gep779.us.us.us, i32 0, i32 3, i32 1)
  %i.cu = load ptr, ptr %1, align 8, !tbaa !322
  %i.cv = load i64, ptr %i.z, align 8, !tbaa !324
  %i.cw = mul nsw i64 %i.cv, %.0238794.us.us
  %i.cx = getelementptr [8 x i8], ptr %i.cu, i64 %.0237775.us.us.us
  %i.cy = getelementptr [8 x i8], ptr %i.cx, i64 %i.cw ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cz, i32 0, i32 3, i32 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph759.us.us.us
  %.0233757.us.us.us = phi i64 [ 0, %.lr.ph759.us.us.us ], [ %i.gs, %bb.c ]
  %.0234756.us.us.us = phi ptr [ %gep774.us.us, %.lr.ph759.us.us.us ], [ %i.gq, %bb.c ] ; 9 uses
  %.0235755.us.us.us = phi ptr [ %gep779.us.us.us, %.lr.ph759.us.us.us ], [ %i.gr, %bb.c ] ; 17 uses
  %.0694754.us.us.us = phi <2 x double> [ zeroinitializer, %.lr.ph759.us.us.us ], [ %i.gp, %bb.c ]
  %.0696753.us.us.us = phi <2 x double> [ zeroinitializer, %.lr.ph759.us.us.us ], [ %i.gn, %bb.c ]
  tail call void asm sideeffect "#begin gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !328
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !329
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !330
  %i.da = load <2 x double>, ptr %.0235755.us.us.us, align 16, !tbaa !44
  %i.db = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 16
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !44
  %i.dd = load double, ptr %.0234756.us.us.us, align 8, !tbaa !52
  %i.de = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = fmul <2 x double> %i.da, %i.df
  %i.dh = fadd <2 x double> %.0696753.us.us.us, %i.dg
  %i.di = fmul <2 x double> %i.dc, %i.df
  %i.dj = fadd <2 x double> %.0694754.us.us.us, %i.di
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !331
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !332
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !333
  %i.dk = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 32
  %i.dl = load <2 x double>, ptr %i.dk, align 16, !tbaa !44
  %i.dm = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 48
  %i.dn = load <2 x double>, ptr %i.dm, align 16, !tbaa !44
  %i.do = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !52
  %i.dq = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = fmul <2 x double> %i.dl, %i.dr
  %i.dt = fadd <2 x double> %i.dh, %i.ds
  %i.du = fmul <2 x double> %i.dn, %i.dr
  %i.dv = fadd <2 x double> %i.dj, %i.du
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !334
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !335
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !336
  %i.dw = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 64
  %i.dx = load <2 x double>, ptr %i.dw, align 16, !tbaa !44
  %i.dy = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 80
  %i.dz = load <2 x double>, ptr %i.dy, align 16, !tbaa !44
  %i.ea = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 16
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !52
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = fmul <2 x double> %i.dx, %i.ed
  %i.ef = fadd <2 x double> %i.dt, %i.ee
  %i.eg = fmul <2 x double> %i.dz, %i.ed
  %i.eh = fadd <2 x double> %i.dv, %i.eg
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !337
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !338
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !339
  %i.ei = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 96
  %i.ej = load <2 x double>, ptr %i.ei, align 16, !tbaa !44
  %i.ek = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 112
  %i.el = load <2 x double>, ptr %i.ek, align 16, !tbaa !44
  %i.em = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 24
  %i.en = load double, ptr %i.em, align 8, !tbaa !52
  %i.eo = insertelement <2 x double> poison, double %i.en, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eq = fmul <2 x double> %i.ej, %i.ep
  %i.er = fadd <2 x double> %i.ef, %i.eq
  %i.es = fmul <2 x double> %i.el, %i.ep
  %i.et = fadd <2 x double> %i.eh, %i.es
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !340
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !341
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !342
  %i.eu = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 128
  %i.ev = load <2 x double>, ptr %i.eu, align 16, !tbaa !44
  %i.ew = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 144
  %i.ex = load <2 x double>, ptr %i.ew, align 16, !tbaa !44
  %i.ey = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 32
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !52
  %i.fa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = fmul <2 x double> %i.ev, %i.fb
  %i.fd = fadd <2 x double> %i.er, %i.fc
  %i.fe = fmul <2 x double> %i.ex, %i.fb
  %i.ff = fadd <2 x double> %i.et, %i.fe
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !343
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !344
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !345
  %i.fg = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 160
  %i.fh = load <2 x double>, ptr %i.fg, align 16, !tbaa !44
  %i.fi = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 176
  %i.fj = load <2 x double>, ptr %i.fi, align 16, !tbaa !44
  %i.fk = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 40
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !52
  %i.fm = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fo = fmul <2 x double> %i.fh, %i.fn
  %i.fp = fadd <2 x double> %i.fd, %i.fo
  %i.fq = fmul <2 x double> %i.fj, %i.fn
  %i.fr = fadd <2 x double> %i.ff, %i.fq
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !346
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !347
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !348
  %i.fs = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 192
  %i.ft = load <2 x double>, ptr %i.fs, align 16, !tbaa !44
  %i.fu = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 208
  %i.fv = load <2 x double>, ptr %i.fu, align 16, !tbaa !44
  %i.fw = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 48
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !52
  %i.fy = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ga = fmul <2 x double> %i.ft, %i.fz
  %i.gb = fadd <2 x double> %i.fp, %i.ga
  %i.gc = fmul <2 x double> %i.fv, %i.fz
  %i.gd = fadd <2 x double> %i.fr, %i.gc
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !349
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !350
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !351
  %i.ge = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 224
  %i.gf = load <2 x double>, ptr %i.ge, align 16, !tbaa !44
  %i.gg = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 240
  %i.gh = load <2 x double>, ptr %i.gg, align 16, !tbaa !44
  %i.gi = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 56
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !52
  %i.gk = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = fmul <2 x double> %i.gf, %i.gl
  %i.gn = fadd <2 x double> %i.gb, %i.gm          ; 3 uses
  %i.go = fmul <2 x double> %i.gh, %i.gl
  %i.gp = fadd <2 x double> %i.gd, %i.go          ; 3 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !352
  %i.gq = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 64 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 256 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !353
  %i.gs = add nuw nsw i64 %.0233757.us.us.us, 8   ; 2 uses
  %i.gt = icmp slt i64 %i.gs, %i.s
  br i1 %i.gt, label %bb.c, label %..preheader701_crit_edge.us.us.us, !llvm.loop !354

.lr.ph769.us.us.us:                               ; preds = %..preheader701_crit_edge.us.us.us, %.lr.ph769.us.us.us
  %.0232768.us.us.us = phi i64 [ %i.hg, %.lr.ph769.us.us.us ], [ %i.s, %..preheader701_crit_edge.us.us.us ]
  %.1767.us.us.us = phi ptr [ %i.he, %.lr.ph769.us.us.us ], [ %i.gq, %..preheader701_crit_edge.us.us.us ] ; 2 uses
  %.1236766.us.us.us = phi ptr [ %i.hf, %.lr.ph769.us.us.us ], [ %i.gr, %..preheader701_crit_edge.us.us.us ] ; 3 uses
  %.1695765.us.us.us = phi <2 x double> [ %i.hd, %.lr.ph769.us.us.us ], [ %i.gp, %..preheader701_crit_edge.us.us.us ]
  %.1697764.us.us.us = phi <2 x double> [ %i.hb, %.lr.ph769.us.us.us ], [ %i.gn, %..preheader701_crit_edge.us.us.us ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !355
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !356
  %i.gu = load <2 x double>, ptr %.1236766.us.us.us, align 16, !tbaa !44
  %i.gv = getelementptr inbounds nuw i8, ptr %.1236766.us.us.us, i64 16
  %i.gw = load <2 x double>, ptr %i.gv, align 16, !tbaa !44
  %i.gx = load double, ptr %.1767.us.us.us, align 8, !tbaa !52
  %i.gy = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = fmul <2 x double> %i.gu, %i.gz
  %i.hb = fadd <2 x double> %.1697764.us.us.us, %i.ha ; 2 uses
  %i.hc = fmul <2 x double> %i.gw, %i.gz
  %i.hd = fadd <2 x double> %.1695765.us.us.us, %i.hc ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !357
  %i.he = getelementptr inbounds nuw i8, ptr %.1767.us.us.us, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.1236766.us.us.us, i64 32
  %i.hg = add nuw nsw i64 %.0232768.us.us.us, 1   ; 2 uses
  %i.hh = icmp slt i64 %i.hg, %5
  br i1 %i.hh, label %.lr.ph769.us.us.us, label %._crit_edge770.us.us.us, !llvm.loop !358

._crit_edge770.us.us.us:                          ; preds = %.lr.ph769.us.us.us, %..preheader701_crit_edge.us.us.us
  %.1697.lcssa.us.us.us = phi <2 x double> [ %i.gn, %..preheader701_crit_edge.us.us.us ], [ %i.hb, %.lr.ph769.us.us.us ]
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll:bb.a
  %i.sl = fmul <2 x double> %i.rw, %i.si
  %i.sm = fadd <2 x double> %i.rg, %i.sl
  %i.sn = bitcast <4 x i32> %i.sa to <2 x double>
  %i.so = shufflevector <2 x double> %i.sn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sp = fmul <2 x double> %i.ru, %i.so
  %i.sq = fadd <2 x double> %i.rk, %i.sp
  %i.sr = fmul <2 x double> %i.rw, %i.so
  %i.ss = fadd <2 x double> %i.rm, %i.sr
  %i.st = bitcast <4 x i32> %i.sa to <2 x double>
  %i.su = shufflevector <2 x double> %i.st, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.sv = fmul <2 x double> %i.ru, %i.su
  %i.sw = fadd <2 x double> %i.rq, %i.sv
  %i.sx = fmul <2 x double> %i.rw, %i.su
  %i.sy = fadd <2 x double> %i.rs, %i.sx
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !376
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !377
  %i.sz = getelementptr inbounds nuw i8, ptr %.0243715, i64 224
  %i.ta = load <2 x double>, ptr %i.sz, align 16, !tbaa !44 ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.0243715, i64 240
  %i.tc = load <2 x double>, ptr %i.tb, align 16, !tbaa !44 ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.0241716, i64 224
  %i.te = load <4 x i32>, ptr %i.td, align 16, !tbaa !44 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.0241716, i64 240
  %i.tg = load <4 x i32>, ptr %i.tf, align 16, !tbaa !44 ; 2 uses
  %i.th = bitcast <4 x i32> %i.te to <2 x double>
  %i.ti = shufflevector <2 x double> %i.th, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tj = fmul <2 x double> %i.ta, %i.ti
  %i.tk = fadd <2 x double> %i.se, %i.tj          ; 2 uses
  %i.tl = fmul <2 x double> %i.tc, %i.ti
  %i.tm = fadd <2 x double> %i.sg, %i.tl          ; 2 uses
  %i.tn = bitcast <4 x i32> %i.te to <2 x double>
  %i.to = shufflevector <2 x double> %i.tn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.tp = fmul <2 x double> %i.ta, %i.to
  %i.tq = fadd <2 x double> %i.sk, %i.tp          ; 2 uses
  %i.tr = fmul <2 x double> %i.tc, %i.to
  %i.ts = fadd <2 x double> %i.sm, %i.tr          ; 2 uses
  %i.tt = bitcast <4 x i32> %i.tg to <2 x double>
  %i.tu = shufflevector <2 x double> %i.tt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tv = fmul <2 x double> %i.ta, %i.tu
  %i.tw = fadd <2 x double> %i.sq, %i.tv          ; 2 uses
  %i.tx = fmul <2 x double> %i.tc, %i.tu
  %i.ty = fadd <2 x double> %i.ss, %i.tx          ; 2 uses
  %i.tz = bitcast <4 x i32> %i.tg to <2 x double>
  %i.ua = shufflevector <2 x double> %i.tz, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ub = fmul <2 x double> %i.ta, %i.ua
  %i.uc = fadd <2 x double> %i.sw, %i.ub          ; 2 uses
  %i.ud = fmul <2 x double> %i.tc, %i.ua
  %i.ue = fadd <2 x double> %i.sy, %i.ud          ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !378
  %i.uf = getelementptr inbounds nuw i8, ptr %.0241716, i64 256 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.0243715, i64 256 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !379
  %i.uh = add nuw nsw i64 %.0240717, 8            ; 2 uses
  %i.ui = icmp slt i64 %i.uh, %i.s
  br i1 %i.ui, label %.lr.ph, label %.preheader702, !llvm.loop !380

._crit_edge:                                      ; preds = %.lr.ph738, %.preheader702
  %.1693.lcssa = phi <2 x double> [ %.0692.lcssa, %.preheader702 ], [ %i.wq, %.lr.ph738 ]
  %.1691.lcssa = phi <2 x double> [ %.0690.lcssa, %.preheader702 ], [ %i.wk, %.lr.ph738 ]
  %.1689.lcssa = phi <2 x double> [ %.0688.lcssa, %.preheader702 ], [ %i.we, %.lr.ph738 ]
  %.1687.lcssa = phi <2 x double> [ %.0686.lcssa, %.preheader702 ], [ %i.vy, %.lr.ph738 ]
  %.1681.lcssa = phi <2 x double> [ %.0680.lcssa, %.preheader702 ], [ %i.wo, %.lr.ph738 ]
  %.1679.lcssa = phi <2 x double> [ %.0678.lcssa, %.preheader702 ], [ %i.wi, %.lr.ph738 ]
  %.1677.lcssa = phi <2 x double> [ %.0676.lcssa, %.preheader702 ], [ %i.wc, %.lr.ph738 ]
  %.1674.lcssa = phi <2 x double> [ %.0673.lcssa, %.preheader702 ], [ %i.vw, %.lr.ph738 ]
  %i.uj = load <2 x double>, ptr %i.jy, align 1, !tbaa !44
  %i.uk = getelementptr inbounds nuw i8, ptr %i.jy, i64 16 ; 2 uses
  %i.ul = load <2 x double>, ptr %i.uk, align 1, !tbaa !44
  %i.um = load <2 x double>, ptr %i.ka, align 1, !tbaa !44
  %i.un = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 2 uses
  %i.uo = load <2 x double>, ptr %i.un, align 1, !tbaa !44
  %i.up = fmul <2 x double> %i.ac, %.1674.lcssa
  %i.uq = fadd <2 x double> %i.up, %i.uj
  %i.ur = fmul <2 x double> %i.ac, %.1687.lcssa
  %i.us = fadd <2 x double> %i.ur, %i.ul
  %i.ut = fmul <2 x double> %i.ac, %.1677.lcssa
  %i.uu = fadd <2 x double> %i.ut, %i.um
  %i.uv = fmul <2 x double> %i.ac, %.1689.lcssa
  %i.uw = fadd <2 x double> %i.uv, %i.uo
  store <2 x double> %i.uq, ptr %i.jy, align 1, !tbaa !44
  store <2 x double> %i.us, ptr %i.uk, align 1, !tbaa !44
  store <2 x double> %i.uu, ptr %i.ka, align 1, !tbaa !44
  store <2 x double> %i.uw, ptr %i.un, align 1, !tbaa !44
  %i.ux = load <2 x double>, ptr %i.kc, align 1, !tbaa !44
  %i.uy = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %i.uz = load <2 x double>, ptr %i.uy, align 1, !tbaa !44
  %i.va = load <2 x double>, ptr %i.ke, align 1, !tbaa !44
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %i.vc = load <2 x double>, ptr %i.vb, align 1, !tbaa !44
  %i.vd = fmul <2 x double> %i.ac, %.1679.lcssa
  %i.ve = fadd <2 x double> %i.vd, %i.ux
  %i.vf = fmul <2 x double> %i.ac, %.1691.lcssa
  %i.vg = fadd <2 x double> %i.vf, %i.uz
  %i.vh = fmul <2 x double> %i.ac, %.1681.lcssa
  %i.vi = fadd <2 x double> %i.vh, %i.va
  %i.vj = fmul <2 x double> %i.ac, %.1693.lcssa
  %i.vk = fadd <2 x double> %i.vj, %i.vc
  store <2 x double> %i.ve, ptr %i.kc, align 1, !tbaa !44
  store <2 x double> %i.vg, ptr %i.uy, align 1, !tbaa !44
  store <2 x double> %i.vi, ptr %i.ke, align 1, !tbaa !44
  store <2 x double> %i.vk, ptr %i.vb, align 1, !tbaa !44
  %i.vl = add nuw nsw i64 %.0245747, 4            ; 2 uses
  %i.vm = icmp slt i64 %i.vl, %.sroa.speculated
  br i1 %i.vm, label %bb.e, label %._crit_edge749, !llvm.loop !381

.lr.ph738:                                        ; preds = %.preheader702, %.lr.ph738
  %.0239737 = phi i64 [ %i.wt, %.lr.ph738 ], [ %i.s, %.preheader702 ]
  %.1242736 = phi ptr [ %i.wr, %.lr.ph738 ], [ %.0241.lcssa, %.preheader702 ] ; 3 uses
  %.1244735 = phi ptr [ %i.ws, %.lr.ph738 ], [ %.0243.lcssa, %.preheader702 ] ; 3 uses
  %.1674734 = phi <2 x double> [ %i.vw, %.lr.ph738 ], [ %.0673.lcssa, %.preheader702 ]
  %.1677733 = phi <2 x double> [ %i.wc, %.lr.ph738 ], [ %.0676.lcssa, %.preheader702 ]
  %.1679732 = phi <2 x double> [ %i.wi, %.lr.ph738 ], [ %.0678.lcssa, %.preheader702 ]
  %.1681731 = phi <2 x double> [ %i.wo, %.lr.ph738 ], [ %.0680.lcssa, %.preheader702 ]
  %.1687730 = phi <2 x double> [ %i.vy, %.lr.ph738 ], [ %.0686.lcssa, %.preheader702 ]
  %.1689729 = phi <2 x double> [ %i.we, %.lr.ph738 ], [ %.0688.lcssa, %.preheader702 ]
  %.1691728 = phi <2 x double> [ %i.wk, %.lr.ph738 ], [ %.0690.lcssa, %.preheader702 ]
  %.1693727 = phi <2 x double> [ %i.wq, %.lr.ph738 ], [ %.0692.lcssa, %.preheader702 ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !382
  %i.vn = load <2 x double>, ptr %.1244735, align 16, !tbaa !44 ; 4 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.1244735, i64 16
  %i.vp = load <2 x double>, ptr %i.vo, align 16, !tbaa !44 ; 4 uses
  %i.vq = load <4 x i32>, ptr %.1242736, align 16, !tbaa !44 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.1242736, i64 16
  %i.vs = load <4 x i32>, ptr %i.vr, align 16, !tbaa !44 ; 2 uses
  %i.vt = bitcast <4 x i32> %i.vq to <2 x double>
  %i.vu = shufflevector <2 x double> %i.vt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vv = fmul <2 x double> %i.vn, %i.vu
  %i.vw = fadd <2 x double> %.1674734, %i.vv      ; 2 uses
  %i.vx = fmul <2 x double> %i.vp, %i.vu
  %i.vy = fadd <2 x double> %.1687730, %i.vx      ; 2 uses
  %i.vz = bitcast <4 x i32> %i.vq to <2 x double>
  %i.wa = shufflevector <2 x double> %i.vz, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.wb = fmul <2 x double> %i.vn, %i.wa
  %i.wc = fadd <2 x double> %.1677733, %i.wb      ; 2 uses
  %i.wd = fmul <2 x double> %i.vp, %i.wa
  %i.we = fadd <2 x double> %.1689729, %i.wd      ; 2 uses
  %i.wf = bitcast <4 x i32> %i.vs to <2 x double>
  %i.wg = shufflevector <2 x double> %i.wf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wh = fmul <2 x double> %i.vn, %i.wg
  %i.wi = fadd <2 x double> %.1679732, %i.wh      ; 2 uses
  %i.wj = fmul <2 x double> %i.vp, %i.wg
  %i.wk = fadd <2 x double> %.1691728, %i.wj      ; 2 uses
  %i.wl = bitcast <4 x i32> %i.vs to <2 x double>
  %i.wm = shufflevector <2 x double> %i.wl, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.wn = fmul <2 x double> %i.vn, %i.wm
  %i.wo = fadd <2 x double> %.1681731, %i.wn      ; 2 uses
  %i.wp = fmul <2 x double> %i.vp, %i.wm
  %i.wq = fadd <2 x double> %.1693727, %i.wp      ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !383
  %i.wr = getelementptr inbounds nuw i8, ptr %.1242736, i64 32
  %i.ws = getelementptr inbounds nuw i8, ptr %.1244735, i64 32
  %i.wt = add nsw i64 %.0239737, 1                ; 2 uses
  %i.wu = icmp slt i64 %i.wt, %5
  br i1 %i.wu, label %.lr.ph738, label %._crit_edge, !llvm.loop !384

.preheader699:                                    ; preds = %.preheader699.lr.ph.split, %._crit_edge827.split
  %.0231828 = phi i64 [ %i.zf, %._crit_edge827.split ], [ 0, %.preheader699.lr.ph.split ] ; 5 uses
  %i.wv = mul nsw i64 %i.al, %.0231828
  %i.ww = or disjoint i64 %.0231828, 1
  %i.wx = mul nsw i64 %i.al, %i.ww
  %i.wy = or disjoint i64 %.0231828, 2
  %i.wz = mul nsw i64 %i.al, %i.wy
  %i.xa = or disjoint i64 %.0231828, 3
  %i.xb = mul nsw i64 %i.al, %i.xa
  br label %bb.h

.preheader698:                                    ; preds = %._crit_edge827.split, %._crit_edge827.split.us.us, %.preheader700
  %i.xc = icmp slt i64 %i.d, %6
  br i1 %i.xc, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader698
  %invariant.gep839 = getelementptr [8 x i8], ptr %2, i64 %10 ; 4 uses
  %invariant.gep841 = getelementptr [8 x i8], ptr %3, i64 %11
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xe = icmp sgt i64 %5, 0
  %i.xf = load ptr, ptr %1, align 8, !tbaa !322   ; 4 uses
  %i.xg = load i64, ptr %i.xd, align 8, !tbaa !324 ; 4 uses
  br i1 %i.xe, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %.neg = or disjoint i64 %i.d, 1
  %xtraiter1020 = and i64 %6, 1
  %lcmp.mod1021.not = icmp eq i64 %xtraiter1020, 0
  br i1 %lcmp.mod1021.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.xh = mul nsw i64 %i.xg, %i.d
  %invariant.gep846.prol = getelementptr [8 x i8], ptr %i.xf, i64 %i.xh
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.prol
  %.0226843.prol = phi i64 [ %i.r, %.preheader.prol ], [ %i.xl, %bb.f ] ; 3 uses
  %i.xi = mul nsw i64 %.0226843.prol, %spec.select
  %gep840.prol = getelementptr [8 x i8], ptr %invariant.gep839, i64 %i.xi
  call void @llvm.prefetch.p0(ptr %gep840.prol, i32 0, i32 3, i32 1)
  %gep847.prol = getelementptr [8 x i8], ptr %invariant.gep846.prol, i64 %.0226843.prol ; 2 uses
  %i.xj = load double, ptr %gep847.prol, align 8, !tbaa !52
  %i.xk = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.xj)
  store double %i.xk, ptr %gep847.prol, align 8, !tbaa !52
  %i.xl = add nsw i64 %.0226843.prol, 1           ; 2 uses
  %exitcond892.not.prol = icmp eq i64 %i.xl, %4
  br i1 %exitcond892.not.prol, label %._crit_edge845.split.prol, label %bb.f, !llvm.loop !385

._crit_edge845.split.prol:                        ; preds = %bb.f
  %i.xm = or disjoint i64 %i.d, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %._crit_edge845.split.prol, %.preheader.preheader
  %.0227848.unr = phi i64 [ %i.d, %.preheader.preheader ], [ %i.xm, %._crit_edge845.split.prol ]
  %i.xn = icmp eq i64 %6, %.neg
  br i1 %i.xn, label %.loopexit, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %xtraiter1023 = and i64 %5, 3                   ; 3 uses
  %i.xo = icmp ult i64 %5, 4
  %unroll_iter1027 = and i64 %5, 9223372036854775804
  %lcmp.mod1024.not = icmp eq i64 %xtraiter1023, 0
  %lcmp.mod1026 = icmp ne i64 %xtraiter1023, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge845.split.us.us
  %.0227848.us = phi i64 [ %i.ze, %._crit_edge845.split.us.us ], [ %i.d, %.preheader.us.preheader ] ; 3 uses
  %i.xp = mul nsw i64 %.0227848.us, %.0249
  %gep842.us = getelementptr [8 x i8], ptr %invariant.gep841, i64 %i.xp ; 5 uses
  %i.xq = mul nsw i64 %i.xg, %.0227848.us
  %invariant.gep846.us = getelementptr [8 x i8], ptr %i.xf, i64 %i.xq
  br label %.lr.ph836.us.us

.lr.ph836.us.us:                                  ; preds = %._crit_edge837.us.us, %.preheader.us
  %.0226843.us.us = phi i64 [ %i.r, %.preheader.us ], [ %i.zd, %._crit_edge837.us.us ] ; 3 uses
  %i.xr = mul nsw i64 %.0226843.us.us, %spec.select
  %gep840.us.us = getelementptr [8 x i8], ptr %invariant.gep839, i64 %i.xr ; 6 uses
  call void @llvm.prefetch.p0(ptr %gep840.us.us, i32 0, i32 3, i32 1)
  br i1 %i.xo, label %.epil.preheader1022, label %.lr.ph836.us.us.new

.lr.ph836.us.us.new:                              ; preds = %.lr.ph836.us.us, %.lr.ph836.us.us.new
  %.0834.us.us = phi i64 [ %i.yt, %.lr.ph836.us.us.new ], [ 0, %.lr.ph836.us.us ] ; 6 uses
  %.0675833.us.us = phi double [ %i.ys, %.lr.ph836.us.us.new ], [ 0.000000e+00, %.lr.ph836.us.us ]
  %niter1028 = phi i64 [ %niter1028.next.3, %.lr.ph836.us.us.new ], [ 0, %.lr.ph836.us.us ]
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %gep840.us.us, i64 %.0834.us.us
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !52
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %.0834.us.us
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !52
  %i.xw = fmul double %i.xt, %i.xv
  %i.xx = fadd double %.0675833.us.us, %i.xw
  %i.xy = or disjoint i64 %.0834.us.us, 1         ; 2 uses
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %gep840.us.us, i64 %i.xy
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !52
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %i.xy
  %i.yc = load double, ptr %i.yb, align 8, !tbaa !52
  %i.yd = fmul double %i.ya, %i.yc
  %i.ye = fadd double %i.xx, %i.yd
  %i.yf = or disjoint i64 %.0834.us.us, 2         ; 2 uses
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %gep840.us.us, i64 %i.yf
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !52
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %i.yf
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !52
  %i.yk = fmul double %i.yh, %i.yj
  %i.yl = fadd double %i.ye, %i.yk
  %i.ym = or disjoint i64 %.0834.us.us, 3         ; 2 uses
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %gep840.us.us, i64 %i.ym
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !52
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %i.ym
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !52
  %i.yr = fmul double %i.yo, %i.yq
  %i.ys = fadd double %i.yl, %i.yr                ; 3 uses
  %i.yt = add nuw nsw i64 %.0834.us.us, 4         ; 2 uses
  %niter1028.next.3 = add nuw nsw i64 %niter1028, 4 ; 2 uses
  %niter1028.ncmp.3 = icmp eq i64 %niter1028.next.3, %unroll_iter1027
  br i1 %niter1028.ncmp.3, label %._crit_edge837.us.us.unr-lcssa, label %.lr.ph836.us.us.new, !llvm.loop !386

._crit_edge837.us.us.unr-lcssa:                   ; preds = %.lr.ph836.us.us.new
  br i1 %lcmp.mod1024.not, label %._crit_edge837.us.us, label %.epil.preheader1022

.epil.preheader1022:                              ; preds = %._crit_edge837.us.us.unr-lcssa, %.lr.ph836.us.us
  %.0834.us.us.epil.init = phi i64 [ 0, %.lr.ph836.us.us ], [ %i.yt, %._crit_edge837.us.us.unr-lcssa ]
  %.0675833.us.us.epil.init = phi double [ 0.000000e+00, %.lr.ph836.us.us ], [ %i.ys, %._crit_edge837.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1026)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader1022
  %.0834.us.us.epil = phi i64 [ %.0834.us.us.epil.init, %.epil.preheader1022 ], [ %i.za, %bb.g ] ; 3 uses
  %.0675833.us.us.epil = phi double [ %.0675833.us.us.epil.init, %.epil.preheader1022 ], [ %i.yz, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader1022 ], [ %epil.iter.next, %bb.g ]
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %gep840.us.us, i64 %.0834.us.us.epil
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !52
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %.0834.us.us.epil
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !52
  %i.yy = fmul double %i.yv, %i.yx
  %i.yz = fadd double %.0675833.us.us.epil, %i.yy ; 2 uses
  %i.za = add nuw nsw i64 %.0834.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1023
  br i1 %epil.iter.cmp.not, label %._crit_edge837.us.us, label %bb.g, !llvm.loop !387

._crit_edge837.us.us:                             ; preds = %bb.g, %._crit_edge837.us.us.unr-lcssa
  %.lcssa = phi double [ %i.ys, %._crit_edge837.us.us.unr-lcssa ], [ %i.yz, %bb.g ]
  %gep847.us.us = getelementptr [8 x i8], ptr %invariant.gep846.us, i64 %.0226843.us.us ; 2 uses
  %i.zb = load double, ptr %gep847.us.us, align 8, !tbaa !52
  %i.zc = call double @llvm.fmuladd.f64(double %7, double %.lcssa, double %i.zb)
  store double %i.zc, ptr %gep847.us.us, align 8, !tbaa !52
  %i.zd = add nsw i64 %.0226843.us.us, 1          ; 2 uses
  %exitcond895.not = icmp eq i64 %i.zd, %4
  br i1 %exitcond895.not, label %._crit_edge845.split.us.us, label %.lr.ph836.us.us, !llvm.loop !385

._crit_edge845.split.us.us:                       ; preds = %._crit_edge837.us.us
  %i.ze = add nsw i64 %.0227848.us, 1             ; 2 uses
  %exitcond892.not.a = icmp eq i64 %i.ze, %6
  br i1 %exitcond892.not.a, label %.loopexit, label %.preheader.us, !llvm.loop !388

._crit_edge827.split:                             ; preds = %bb.h
  %i.zf = add nuw nsw i64 %.0231828, 4            ; 2 uses
  %i.zg = icmp slt i64 %i.zf, %i.d
  br i1 %i.zg, label %.preheader699, label %.preheader698, !llvm.loop !327

bb.h:                                             ; preds = %.preheader699, %bb.h
  %.0230825 = phi i64 [ %i.r, %.preheader699 ], [ %i.zv, %bb.h ] ; 3 uses
  %i.zh = mul nsw i64 %.0230825, %spec.select
  %gep824 = getelementptr [8 x i8], ptr %invariant.gep823, i64 %i.zh
  call void @llvm.prefetch.p0(ptr %gep824, i32 0, i32 3, i32 1)
  %i.zi = getelementptr [8 x i8], ptr %i.ak, i64 %.0230825 ; 4 uses
  %i.zj = getelementptr [8 x i8], ptr %i.zi, i64 %i.wv ; 2 uses
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !52
  %i.zl = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.zk)
  store double %i.zl, ptr %i.zj, align 8, !tbaa !52
  %i.zm = getelementptr [8 x i8], ptr %i.zi, i64 %i.wx ; 2 uses
  %i.zn = load double, ptr %i.zm, align 8, !tbaa !52
  %i.zo = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.zn)
  store double %i.zo, ptr %i.zm, align 8, !tbaa !52
  %i.zp = getelementptr [8 x i8], ptr %i.zi, i64 %i.wz ; 2 uses
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !52
  %i.zr = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.zq)
  store double %i.zr, ptr %i.zp, align 8, !tbaa !52
  %i.zs = getelementptr [8 x i8], ptr %i.zi, i64 %i.xb ; 2 uses
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !52
  %i.zu = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.zt)
  store double %i.zu, ptr %i.zs, align 8, !tbaa !52
  %i.zv = add nsw i64 %.0230825, 1                ; 2 uses
  %exitcond889.not = icmp eq i64 %i.zv, %4
  br i1 %exitcond889.not, label %._crit_edge827.split, label %bb.h, !llvm.loop !326

.preheader:                                       ; preds = %.preheader.prol.loopexit, %._crit_edge845.split.1
  %.0227848 = phi i64 [ %i.aad, %._crit_edge845.split.1 ], [ %.0227848.unr, %.preheader.prol.loopexit ] ; 3 uses
  %i.zw = mul nsw i64 %i.xg, %.0227848
  %invariant.gep846 = getelementptr [8 x i8], ptr %i.xf, i64 %i.zw
  br label %bb.j

._crit_edge845.split:                             ; preds = %bb.j
  %i.zx = add nsw i64 %.0227848, 1
  %i.zy = mul nsw i64 %i.xg, %i.zx
  %invariant.gep846.1 = getelementptr [8 x i8], ptr %i.xf, i64 %i.zy
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge845.split
  %.0226843.1 = phi i64 [ %i.r, %._crit_edge845.split ], [ %i.aac, %bb.i ] ; 3 uses
  %i.zz = mul nsw i64 %.0226843.1, %spec.select
  %gep840.1 = getelementptr [8 x i8], ptr %invariant.gep839, i64 %i.zz
  call void @llvm.prefetch.p0(ptr %gep840.1, i32 0, i32 3, i32 1)
  %gep847.1 = getelementptr [8 x i8], ptr %invariant.gep846.1, i64 %.0226843.1 ; 2 uses
  %i.aaa = load double, ptr %gep847.1, align 8, !tbaa !52
  %i.aab = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.aaa)
  store double %i.aab, ptr %gep847.1, align 8, !tbaa !52
  %i.aac = add nsw i64 %.0226843.1, 1             ; 2 uses
  %exitcond892.not.1 = icmp eq i64 %i.aac, %4
  br i1 %exitcond892.not.1, label %._crit_edge845.split.1, label %bb.i, !llvm.loop !385

._crit_edge845.split.1:                           ; preds = %bb.i
  %i.aad = add nsw i64 %.0227848, 2               ; 2 uses
  %exitcond890.not.1 = icmp eq i64 %i.aad, %6
  br i1 %exitcond890.not.1, label %.loopexit, label %.preheader, !llvm.loop !388

bb.j:                                             ; preds = %.preheader, %bb.j
  %.0226843 = phi i64 [ %i.r, %.preheader ], [ %i.aah, %bb.j ] ; 3 uses
  %i.aae = mul nsw i64 %.0226843, %spec.select
  %gep840 = getelementptr [8 x i8], ptr %invariant.gep839, i64 %i.aae
  call void @llvm.prefetch.p0(ptr %gep840, i32 0, i32 3, i32 1)
  %gep847 = getelementptr [8 x i8], ptr %invariant.gep846, i64 %.0226843 ; 2 uses
  %i.aaf = load double, ptr %gep847, align 8, !tbaa !52
  %i.aag = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.aaf)
  store double %i.aag, ptr %gep847, align 8, !tbaa !52
  %i.aah = add nsw i64 %.0226843, 1               ; 2 uses
  %exitcond892.not = icmp eq i64 %i.aah, %4
  br i1 %exitcond892.not, label %._crit_edge845.split, label %bb.j, !llvm.loop !385

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %._crit_edge845.split.1, %._crit_edge845.split.us.us, %.preheader698, %._crit_edge809
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi2EDv2_dLi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !389
  %i.b = sdiv i64 %4, 4
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = sub nsw i64 %4, %i.c
  %i.e = sdiv i64 %i.d, 2
  %i.f = shl nsw i64 %i.e, 1
  %i.g = add i64 %i.f, %i.c                       ; 3 uses
  %i.h = icmp sgt i64 %4, 3
  br i1 %i.h, label %.lr.ph92, label %.preheader86

.lr.ph92:                                         ; preds = %bb.a
  %i.i = shl i64 %6, 2                            ; 2 uses
  %i.j = icmp sgt i64 %3, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = add i64 %3, %6
  %i.m = sub i64 %5, %i.l
  %i.n = shl i64 %i.m, 2                          ; 2 uses
  br i1 %i.j, label %.lr.ph.us.preheader, label %.lr.ph92.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph92
  %xtraiter = and i64 %3, 1
  %i.o = icmp eq i64 %3, 1
  %unroll_iter = and i64 %3, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod159 = trunc i64 %3 to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.06490.us = phi i64 [ %i.bd, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %.06589.us = phi i64 [ %i.bc, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %i.p = add nsw i64 %.06589.us, %i.i             ; 2 uses
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.06388.us = phi i64 [ %i.ap, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 3 uses
  %.16687.us = phi i64 [ %i.ao, %.lr.ph.us.new ], [ %i.p, %.lr.ph.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.q = load ptr, ptr %2, align 8, !tbaa !322
  %i.r = load i64, ptr %i.k, align 8, !tbaa !324
  %i.s = mul nsw i64 %i.r, %.06388.us             ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %i.q, i64 %.06490.us ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load <2 x double>, ptr %i.u, align 1, !tbaa !44
  %i.w = getelementptr i8, ptr %i.t, i64 16
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %i.s
  %i.y = load <2 x double>, ptr %i.x, align 1, !tbaa !44
  %i.z = getelementptr inbounds [8 x i8], ptr %1, i64 %.16687.us ; 2 uses
  store <2 x double> %i.v, ptr %i.z, align 16, !tbaa !44
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store <2 x double> %i.y, ptr %i.aa, align 16, !tbaa !44
  %i.ab = or disjoint i64 %.06388.us, 1
  %i.ac = load ptr, ptr %2, align 8, !tbaa !322
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !324
  %i.ae = mul nsw i64 %i.ad, %i.ab                ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.ac, i64 %.06490.us ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load <2 x double>, ptr %i.ag, align 1, !tbaa !44
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.ae
  %i.ak = load <2 x double>, ptr %i.aj, align 1, !tbaa !44
  %i.al = getelementptr [8 x i8], ptr %1, i64 %.16687.us ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 32
  store <2 x double> %i.ah, ptr %i.am, align 16, !tbaa !44
  %i.an = getelementptr i8, ptr %i.al, i64 48
  store <2 x double> %i.ak, ptr %i.an, align 16, !tbaa !44
  %i.ao = add nsw i64 %.16687.us, 8               ; 3 uses
  %i.ap = add nuw nsw i64 %.06388.us, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !390

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.06388.us.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %i.ap, %._crit_edge.us.unr-lcssa ]
  %.16687.us.epil.init = phi i64 [ %i.p, %.lr.ph.us ], [ %i.ao, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod159)
  %i.aq = load ptr, ptr %2, align 8, !tbaa !322
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !324
  %i.as = mul nsw i64 %i.ar, %.06388.us.epil.init ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.aq, i64 %.06490.us ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  %i.av = load <2 x double>, ptr %i.au, align 1, !tbaa !44
  %i.aw = getelementptr i8, ptr %i.at, i64 16
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.as
  %i.ay = load <2 x double>, ptr %i.ax, align 1, !tbaa !44
  %i.az = getelementptr inbounds [8 x i8], ptr %1, i64 %.16687.us.epil.init ; 2 uses
  store <2 x double> %i.av, ptr %i.az, align 16, !tbaa !44
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  store <2 x double> %i.ay, ptr %i.ba, align 16, !tbaa !44
  %i.bb = add nsw i64 %.16687.us.epil.init, 4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa155 = phi i64 [ %i.ao, %._crit_edge.us.unr-lcssa ], [ %i.bb, %.epil.preheader ]
  %i.bc = add nsw i64 %.lcssa155, %i.n            ; 2 uses
  %i.bd = add nuw nsw i64 %.06490.us, 4           ; 3 uses
  %i.be = icmp slt i64 %i.bd, %i.c
  br i1 %i.be, label %.lr.ph.us, label %.preheader86, !llvm.loop !391

.lr.ph92.split:                                   ; preds = %.lr.ph92
  %invariant.op = add i64 %i.i, %i.n
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.bf = add nsw i64 %smax, -1                   ; 2 uses
  %i.bg = lshr i64 %i.bf, 2
  %i.bh = mul i64 %i.bg, %invariant.op
  %i.bi = shl i64 %5, 2
  %i.bj = add i64 %i.bh, %i.bi
  %i.bk = shl i64 %3, 2
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = and i64 %i.bf, -4
  %i.bn = add nuw nsw i64 %i.bm, 4
  br label %.preheader86

.preheader86:                                     ; preds = %._crit_edge.us, %.lr.ph92.split, %bb.a
  %.065.lcssa = phi i64 [ 0, %bb.a ], [ %i.bl, %.lr.ph92.split ], [ %i.bc, %._crit_edge.us ] ; 3 uses
  %.064.lcssa = phi i64 [ 0, %bb.a ], [ %i.bn, %.lr.ph92.split ], [ %i.bd, %._crit_edge.us ] ; 5 uses
  %i.bo = icmp slt i64 %.064.lcssa, %i.g
  br i1 %i.bo, label %.lr.ph100, label %.preheader

.lr.ph100:                                        ; preds = %.preheader86
  %i.bp = shl i64 %6, 1                           ; 2 uses
  %i.bq = icmp sgt i64 %3, 0
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bs = add i64 %3, %6
  %i.bt = sub i64 %5, %i.bs
  %i.bu = shl i64 %i.bt, 1                        ; 2 uses
  br i1 %i.bq, label %.lr.ph.us103.preheader, label %.lr.ph100.split

.lr.ph.us103.preheader:                           ; preds = %.lr.ph100
  %xtraiter161 = and i64 %3, 1
  %i.bv = icmp eq i64 %3, 1
  %unroll_iter165 = and i64 %3, 9223372036854775806
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  %lcmp.mod164 = trunc i64 %3 to i1
  br label %.lr.ph.us103

.lr.ph.us103:                                     ; preds = %.lr.ph.us103.preheader, %._crit_edge.us104
  %.199.us = phi i64 [ %i.cy, %._crit_edge.us104 ], [ %.064.lcssa, %.lr.ph.us103.preheader ] ; 4 uses
  %.26798.us = phi i64 [ %i.cx, %._crit_edge.us104 ], [ %.065.lcssa, %.lr.ph.us103.preheader ]
  %i.bw = add nsw i64 %.26798.us, %i.bp           ; 2 uses
  br i1 %i.bv, label %.epil.preheader160, label %.lr.ph.us103.new

.lr.ph.us103.new:                                 ; preds = %.lr.ph.us103, %.lr.ph.us103.new
  %.06297.us = phi i64 [ %i.co, %.lr.ph.us103.new ], [ 0, %.lr.ph.us103 ] ; 3 uses
  %.396.us = phi i64 [ %i.cn, %.lr.ph.us103.new ], [ %i.bw, %.lr.ph.us103 ] ; 3 uses
  %niter166 = phi i64 [ %niter166.next.1, %.lr.ph.us103.new ], [ 0, %.lr.ph.us103 ]
  %i.bx = load ptr, ptr %2, align 8, !tbaa !322
  %i.by = load i64, ptr %i.br, align 8, !tbaa !324
  %i.bz = mul nsw i64 %i.by, %.06297.us
  %i.ca = getelementptr [8 x i8], ptr %i.bx, i64 %.199.us
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load <2 x double>, ptr %i.cb, align 1, !tbaa !44
  %i.cd = getelementptr inbounds [8 x i8], ptr %1, i64 %.396.us
  store <2 x double> %i.cc, ptr %i.cd, align 16, !tbaa !44
  %i.ce = or disjoint i64 %.06297.us, 1
  %i.cf = load ptr, ptr %2, align 8, !tbaa !322
  %i.cg = load i64, ptr %i.br, align 8, !tbaa !324
  %i.ch = mul nsw i64 %i.cg, %i.ce
  %i.ci = getelementptr [8 x i8], ptr %i.cf, i64 %.199.us
  %i.cj = getelementptr [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load <2 x double>, ptr %i.cj, align 1, !tbaa !44
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %.396.us
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  store <2 x double> %i.ck, ptr %i.cm, align 16, !tbaa !44
  %i.cn = add nsw i64 %.396.us, 4                 ; 3 uses
  %i.co = add nuw nsw i64 %.06297.us, 2           ; 2 uses
  %niter166.next.1 = add nuw nsw i64 %niter166, 2 ; 2 uses
  %niter166.ncmp.1 = icmp eq i64 %niter166.next.1, %unroll_iter165
  br i1 %niter166.ncmp.1, label %._crit_edge.us104.unr-lcssa, label %.lr.ph.us103.new, !llvm.loop !392

._crit_edge.us104.unr-lcssa:                      ; preds = %.lr.ph.us103.new
  br i1 %lcmp.mod162.not, label %._crit_edge.us104, label %.epil.preheader160

.epil.preheader160:                               ; preds = %._crit_edge.us104.unr-lcssa, %.lr.ph.us103
  %.06297.us.epil.init = phi i64 [ 0, %.lr.ph.us103 ], [ %i.co, %._crit_edge.us104.unr-lcssa ]
  %.396.us.epil.init = phi i64 [ %i.bw, %.lr.ph.us103 ], [ %i.cn, %._crit_edge.us104.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.cp = load ptr, ptr %2, align 8, !tbaa !322
  %i.cq = load i64, ptr %i.br, align 8, !tbaa !324
  %i.cr = mul nsw i64 %i.cq, %.06297.us.epil.init
  %i.cs = getelementptr [8 x i8], ptr %i.cp, i64 %.199.us
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load <2 x double>, ptr %i.ct, align 1, !tbaa !44
  %i.cv = getelementptr inbounds [8 x i8], ptr %1, i64 %.396.us.epil.init
  store <2 x double> %i.cu, ptr %i.cv, align 16, !tbaa !44
  %i.cw = add nsw i64 %.396.us.epil.init, 2
  br label %._crit_edge.us104

._crit_edge.us104:                                ; preds = %._crit_edge.us104.unr-lcssa, %.epil.preheader160
  %.lcssa152 = phi i64 [ %i.cn, %._crit_edge.us104.unr-lcssa ], [ %i.cw, %.epil.preheader160 ]
  %i.cx = add nsw i64 %.lcssa152, %i.bu           ; 2 uses
  %i.cy = add nuw nsw i64 %.199.us, 2             ; 3 uses
  %i.cz = icmp slt i64 %i.cy, %i.g
  br i1 %i.cz, label %.lr.ph.us103, label %.preheader, !llvm.loop !393

.lr.ph100.split:                                  ; preds = %.lr.ph100
  %invariant.op108 = add i64 %i.bp, %i.bu
  %i.da = xor i64 %.064.lcssa, -1
  %i.db = add i64 %i.g, %i.da                     ; 2 uses
  %i.dc = lshr i64 %i.db, 1
  %i.dd = mul i64 %i.dc, %invariant.op108
  %i.de = add i64 %.065.lcssa, %i.dd
  %i.df = shl i64 %5, 1
  %i.dg = add i64 %i.de, %i.df
  %i.dh = shl i64 %3, 1
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = and i64 %i.db, -2
  %i.dk = add i64 %.064.lcssa, %i.dj
  %i.dl = add i64 %i.dk, 2
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us104, %.lr.ph100.split, %.preheader86
  %.267.lcssa = phi i64 [ %.065.lcssa, %.preheader86 ], [ %i.di, %.lr.ph100.split ], [ %i.cx, %._crit_edge.us104 ]
  %.1.lcssa = phi i64 [ %.064.lcssa, %.preheader86 ], [ %i.dl, %.lr.ph100.split ], [ %i.cy, %._crit_edge.us104 ] ; 3 uses
  %i.dm = icmp slt i64 %.1.lcssa, %4
  br i1 %i.dm, label %.lr.ph114, label %._crit_edge115.split

.lr.ph114:                                        ; preds = %.preheader
  %i.dn = icmp sgt i64 %3, 0
  %i.do = add i64 %3, %6
  %i.dp = sub i64 %5, %i.do
  br i1 %i.dn, label %.lr.ph114.split, label %._crit_edge115.split

.lr.ph114.split:                                  ; preds = %.lr.ph114
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dr = load ptr, ptr %2, align 8, !tbaa !322   ; 2 uses
  %i.ds = ptrtoaddr ptr %i.dr to i64
  %i.dt = load i64, ptr %i.dq, align 8, !tbaa !324 ; 6 uses
  %min.iters.check = icmp ugt i64 %3, 5
  %ident.check.not = icmp eq i64 %i.dt, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter167 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph114.split, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph114.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.2113 = phi i64 [ %.1.lcssa, %.lr.ph114.split ], [ %i.et, %._crit_edge ] ; 2 uses
  %.4112 = phi i64 [ %.267.lcssa, %.lr.ph114.split ], [ %i.es, %._crit_edge ]
  %i.du = add i64 %.4112, %6                      ; 5 uses
  %i.dv = getelementptr [8 x i8], ptr %i.dr, i64 %.2113 ; 6 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph
  %i.dw = add i64 %.1.lcssa, %indvar
  %i.dx = shl i64 %i.dw, 3
  %i.dy = add i64 %i.dx, %i.ds
  %i.dz = sub i64 %i.a, %i.dy
  %i.ea = shl i64 %i.du, 3
  %i.eb = add i64 %i.dz, %i.ea
  %i.ec = add i64 %i.eb, -1
  %diff.check = icmp ult i64 %i.ec, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ed = add i64 %i.du, %n.vec                   ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %1, i64 %i.du
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ef = getelementptr [8 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  %wide.load = load <2 x double>, ptr %i.ef, align 8, !tbaa !52
  %wide.load149 = load <2 x double>, ptr %i.eg, align 8, !tbaa !52
  %i.eh = getelementptr [8 x i8], ptr %i.ee, i64 %index ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x double> %wide.load, ptr %i.eh, align 8, !tbaa !52
  store <2 x double> %wide.load149, ptr %i.ei, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !394

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.0111.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.5110.ph = phi i64 [ %i.du, %vector.memcheck ], [ %i.du, %.lr.ph ], [ %i.ed, %middle.block ] ; 2 uses
  br i1 %lcmp.mod168.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0111.prol = phi i64 [ %i.ep, %scalar.ph.prol ], [ %.0111.ph, %scalar.ph.preheader ] ; 2 uses
  %.5110.prol = phi i64 [ %i.en, %scalar.ph.prol ], [ %.5110.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ek = mul nsw i64 %i.dt, %.0111.prol
  %i.el = getelementptr [8 x i8], ptr %i.dv, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !52
  %i.en = add nsw i64 %.5110.prol, 1              ; 3 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %1, i64 %.5110.prol
  store double %i.em, ptr %i.eo, align 8, !tbaa !52
  %i.ep = add nuw nsw i64 %.0111.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter167
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !395

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa151.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.en, %scalar.ph.prol ]
  %.0111.unr = phi i64 [ %.0111.ph, %scalar.ph.preheader ], [ %i.ep, %scalar.ph.prol ]
  %.5110.unr = phi i64 [ %.5110.ph, %scalar.ph.preheader ], [ %i.en, %scalar.ph.prol ]
  %i.eq = sub nsw i64 %.0111.ph, %3
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.ed, %middle.block ], [ %.lcssa151.unr, %scalar.ph.prol.loopexit ], [ %i.fo, %scalar.ph ]
  %i.es = add nsw i64 %i.dp, %.lcssa
  %i.et = add nuw nsw i64 %.2113, 1               ; 2 uses
  %exitcond129.not = icmp eq i64 %i.et, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond129.not, label %._crit_edge115.split, label %.lr.ph, !llvm.loop !396

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0111 = phi i64 [ %i.fr, %scalar.ph ], [ %.0111.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.5110 = phi i64 [ %i.fo, %scalar.ph ], [ %.5110.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.eu = mul nsw i64 %i.dt, %.0111
  %i.ev = getelementptr [8 x i8], ptr %i.dv, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !52
  %i.ex = getelementptr inbounds [8 x i8], ptr %1, i64 %.5110
  store double %i.ew, ptr %i.ex, align 8, !tbaa !52
  %i.ey = add nuw nsw i64 %.0111, 1
  %i.ez = mul nsw i64 %i.dt, %i.ey
  %i.fa = getelementptr [8 x i8], ptr %i.dv, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !52
  %i.fc = getelementptr [8 x i8], ptr %1, i64 %.5110
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  store double %i.fb, ptr %i.fd, align 8, !tbaa !52
  %i.fe = add nuw nsw i64 %.0111, 2
  %i.ff = mul nsw i64 %i.dt, %i.fe
  %i.fg = getelementptr [8 x i8], ptr %i.dv, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !52
  %i.fi = getelementptr [8 x i8], ptr %1, i64 %.5110
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  store double %i.fh, ptr %i.fj, align 8, !tbaa !52
  %i.fk = add nuw nsw i64 %.0111, 3
  %i.fl = mul nsw i64 %i.dt, %i.fk
  %i.fm = getelementptr [8 x i8], ptr %i.dv, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !52
  %i.fo = add nsw i64 %.5110, 4                   ; 2 uses
  %i.fp = getelementptr [8 x i8], ptr %1, i64 %.5110
  %i.fq = getelementptr i8, ptr %i.fp, i64 24
  store double %i.fn, ptr %i.fq, align 8, !tbaa !52
  %i.fr = add nuw nsw i64 %.0111, 4               ; 2 uses
  %exitcond128.not.3 = icmp eq i64 %i.fr, %3
  br i1 %exitcond128.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !397

._crit_edge115.split:                             ; preds = %._crit_edge, %.lr.ph114, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, double noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp slt i64 %5, %6
  br i1 %i.a, label %.preheader419.lr.ph, label %._crit_edge478

.preheader419.lr.ph:                              ; preds = %bb.a
  %i.b = icmp sgt i64 %16, 0
  %.idx132 = shl i64 %9, 4
  %invariant.gep479 = getelementptr i8, ptr %2, i64 %.idx132 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = sext i32 %11 to i64                      ; 4 uses
  %.idx133 = shl i64 %10, 5
  %invariant.gep = getelementptr i8, ptr %3, i64 %.idx133
  %i.e = icmp sgt i64 %12, 0                      ; 2 uses
  %.idx134 = shl nsw i64 %13, 5
  %.idx135 = shl nsw i64 %13, 4                   ; 2 uses
  %i.f = icmp slt i64 %12, %15                    ; 2 uses
  %i.g = insertelement <2 x double> poison, double %4, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %invariant.gep472 = getelementptr [8 x i8], ptr %3, i64 %10
  %i.i = icmp slt i64 %16, %14
  br label %.preheader419

.preheader419:                                    ; preds = %.preheader419.lr.ph, %._crit_edge476
  %.0127477 = phi i64 [ %5, %.preheader419.lr.ph ], [ %i.iv, %._crit_edge476 ] ; 5 uses
  br i1 %i.b, label %.lr.ph455, label %.preheader418

.lr.ph455:                                        ; preds = %.preheader419
  %i.j = mul nsw i64 %.0127477, %7
  %gep480 = getelementptr [8 x i8], ptr %invariant.gep479, i64 %i.j ; 3 uses
  br label %bb.b

._crit_edge478:                                   ; preds = %._crit_edge476, %bb.a
  ret void

.preheader418:                                    ; preds = %._crit_edge449, %.preheader419
  br i1 %i.i, label %.lr.ph475, label %._crit_edge476

.lr.ph475:                                        ; preds = %.preheader418
  %i.k = mul nsw i64 %.0127477, %7
  %gep482 = getelementptr [8 x i8], ptr %invariant.gep479, i64 %i.k ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph455, %._crit_edge449
  %.0126454 = phi i64 [ 0, %.lr.ph455 ], [ %i.hw, %._crit_edge449 ] ; 6 uses
  tail call void @llvm.prefetch.p0(ptr %gep480, i32 0, i32 3, i32 1)
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_:bb.a
  %i.bt = udiv i64 4718592, %i.bs
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge = phi i64 [ %i.bt, %bb.v ], [ %i.br, %bb.u ]
  %i.bu = shl i64 %i.bk, 4
  %i.bv = udiv i64 1572864, %i.bu
  %.sroa.speculated135 = tail call i64 @llvm.smin.i64(i64 %storemerge, i64 %i.bv)
  %i.bw = and i64 %.sroa.speculated135, -4        ; 6 uses
  %i.bx = load i64, ptr %2, align 8, !tbaa !14    ; 4 uses
  %i.by = icmp sgt i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bz = srem i64 %i.bx, %i.bw                   ; 2 uses
  %i.ca = sdiv i64 %i.bx, %i.bw
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = sub nsw i64 %i.bw, %i.bz
  %i.cd = shl i64 %i.ca, 2
  %i.ce = add i64 %i.cd, 4
  %i.cf = sdiv i64 %i.cc, %i.ce
  %i.cg = shl nsw i64 %i.cf, 2
  %i.ch = sub nsw i64 %i.bw, %i.cg
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ci = phi i64 [ %i.ch, %bb.y ], [ %i.bw, %bb.x ]
  store i64 %i.ci, ptr %2, align 8, !tbaa !14
  br label %.critedge116

bb.aa:                                            ; preds = %bb.w
  %i.cj = icmp eq i64 %i.at, %i.bk
  br i1 %i.cj, label %bb.ab, label %.critedge116

bb.ab:                                            ; preds = %bb.aa
  %i.ck = shl i64 %i.at, 3
  %i.cl = mul i64 %i.ck, %i.bx                    ; 2 uses
  %i.cm = icmp slt i64 %i.cl, 1025
  br i1 %i.cm, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = icmp ne i64 %i.g, 0
  %i.co = icmp samesign ult i64 %i.cl, 32769
  %or.cond4 = and i1 %i.cn, %i.co
  br i1 %or.cond4, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.speculated128 = tail call i64 @llvm.smin.i64(i64 %i.bl, i64 576)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.0182 = phi i64 [ %i.bl, %bb.ac ], [ %.sroa.speculated128, %bb.ad ], [ %i.bl, %bb.ab ]
  %.093 = phi i64 [ 1572864, %bb.ac ], [ %i.f, %bb.ad ], [ %i.e, %bb.ab ]
  %i.cp = mul i64 %i.at, 24
  %i.cq = udiv i64 %.093, %i.cp
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %.0182, i64 %i.cq) ; 4 uses
  %i.cr = icmp sgt i64 %.sroa.speculated, 4
  br i1 %i.cr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = and i64 %.sroa.speculated, 9223372036854775804
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ct = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.ct, label %.critedge116, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0 = phi i64 [ %i.cs, %bb.af ], [ %.sroa.speculated, %bb.ag ] ; 5 uses
  %i.cu = srem i64 %i.bl, %.0                     ; 2 uses
  %i.cv = sdiv i64 %i.bl, %.0
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = sub nsw i64 %.0, %i.cu
  %i.cy = shl i64 %i.cv, 2
  %i.cz = add i64 %i.cy, 4
  %i.da = sdiv i64 %i.cx, %i.cz
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = sub nsw i64 %.0, %i.db
  br label %.critedge

.critedge:                                        ; preds = %bb.ah, %bb.ai
  %i.dd = phi i64 [ %i.dc, %bb.ai ], [ %.0, %bb.ah ]
  store i64 %i.dd, ptr %1, align 8, !tbaa !14
  br label %.critedge116

.critedge116:                                     ; preds = %.critedge, %bb.aa, %bb.z, %bb.ag, %bb.m, %bb.n, %bb.k, %bb.o
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !389
  %i.b = sdiv i64 %4, 4
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = sub nsw i64 %4, %i.c
  %i.e = sdiv i64 %i.d, 2
  %i.f = shl nsw i64 %i.e, 1
  %i.g = add i64 %i.f, %i.c                       ; 3 uses
  %i.h = icmp sgt i64 %4, 3
  br i1 %i.h, label %.preheader64.lr.ph, label %.preheader63

.preheader64.lr.ph:                               ; preds = %bb.a
  %i.i = icmp sgt i64 %3, 0
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %i.i, label %.preheader64.us.preheader, label %.preheader64.preheader

.preheader64.us.preheader:                        ; preds = %.preheader64.lr.ph
  %xtraiter = and i64 %3, 1
  %i.k = icmp eq i64 %3, 1
  %unroll_iter = and i64 %3, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod123 = trunc i64 %3 to i1
  br label %.preheader64.us

.preheader64.preheader:                           ; preds = %.preheader64.lr.ph
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  br label %.preheader63

.preheader64.us:                                  ; preds = %.preheader64.us.preheader, %._crit_edge.us
  %.05568.us = phi i64 [ %i.ax, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 4 uses
  %.05667.us = phi i64 [ %.lcssa120, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 2 uses
  br i1 %i.k, label %.epil.preheader, label %.preheader64.us.new

.preheader64.us.new:                              ; preds = %.preheader64.us, %.preheader64.us.new
  %.05466.us = phi i64 [ %i.ak, %.preheader64.us.new ], [ 0, %.preheader64.us ] ; 3 uses
  %.15765.us = phi i64 [ %i.aj, %.preheader64.us.new ], [ %.05667.us, %.preheader64.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader64.us.new ], [ 0, %.preheader64.us ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !228
  %i.m = load i64, ptr %i.j, align 8, !tbaa !230
  %i.n = mul nsw i64 %i.m, %.05466.us             ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %.05568.us ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load <2 x double>, ptr %i.p, align 1, !tbaa !44
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.n
  %i.t = load <2 x double>, ptr %i.s, align 1, !tbaa !44
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %.15765.us ; 2 uses
  store <2 x double> %i.q, ptr %i.u, align 16, !tbaa !44
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x double> %i.t, ptr %i.v, align 16, !tbaa !44
  %i.w = or disjoint i64 %.05466.us, 1
  %i.x = load ptr, ptr %2, align 8, !tbaa !228
  %i.y = load i64, ptr %i.j, align 8, !tbaa !230
  %i.z = mul nsw i64 %i.y, %i.w                   ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.x, i64 %.05568.us ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load <2 x double>, ptr %i.ab, align 1, !tbaa !44
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.af = load <2 x double>, ptr %i.ae, align 1, !tbaa !44
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %.15765.us ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  store <2 x double> %i.ac, ptr %i.ah, align 16, !tbaa !44
  %i.ai = getelementptr i8, ptr %i.ag, i64 48
  store <2 x double> %i.af, ptr %i.ai, align 16, !tbaa !44
  %i.aj = add nsw i64 %.15765.us, 8               ; 3 uses
  %i.ak = add nuw nsw i64 %.05466.us, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader64.us.new, !llvm.loop !445

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader64.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader64.us
  %.05466.us.epil.init = phi i64 [ 0, %.preheader64.us ], [ %i.ak, %._crit_edge.us.unr-lcssa ]
  %.15765.us.epil.init = phi i64 [ %.05667.us, %.preheader64.us ], [ %i.aj, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod123)
  %i.al = load ptr, ptr %2, align 8, !tbaa !228
  %i.am = load i64, ptr %i.j, align 8, !tbaa !230
  %i.an = mul nsw i64 %i.am, %.05466.us.epil.init ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %.05568.us ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !44
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.an
  %i.at = load <2 x double>, ptr %i.as, align 1, !tbaa !44
  %i.au = getelementptr inbounds [8 x i8], ptr %1, i64 %.15765.us.epil.init ; 2 uses
  store <2 x double> %i.aq, ptr %i.au, align 16, !tbaa !44
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <2 x double> %i.at, ptr %i.av, align 16, !tbaa !44
  %i.aw = add nsw i64 %.15765.us.epil.init, 4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa120 = phi i64 [ %i.aj, %._crit_edge.us.unr-lcssa ], [ %i.aw, %.epil.preheader ] ; 2 uses
  %i.ax = add nuw nsw i64 %.05568.us, 4           ; 3 uses
  %i.ay = icmp slt i64 %i.ax, %i.c
  br i1 %i.ay, label %.preheader64.us, label %.preheader63, !llvm.loop !446

.preheader63:                                     ; preds = %._crit_edge.us, %.preheader64.preheader, %bb.a
  %.056.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.preheader64.preheader ], [ %.lcssa120, %._crit_edge.us ] ; 3 uses
  %.055.lcssa = phi i64 [ 0, %bb.a ], [ %smax, %.preheader64.preheader ], [ %i.ax, %._crit_edge.us ] ; 5 uses
  %i.az = icmp slt i64 %.055.lcssa, %i.g
  br i1 %i.az, label %.preheader62.lr.ph, label %.preheader61

.preheader62.lr.ph:                               ; preds = %.preheader63
  %i.ba = icmp sgt i64 %3, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %i.ba, label %.preheader62.us.preheader, label %.preheader62.preheader

.preheader62.us.preheader:                        ; preds = %.preheader62.lr.ph
  %xtraiter125 = and i64 %3, 1
  %i.bc = icmp eq i64 %3, 1
  %unroll_iter129 = and i64 %3, 9223372036854775806
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  %lcmp.mod128 = trunc i64 %3 to i1
  br label %.preheader62.us

.preheader62.preheader:                           ; preds = %.preheader62.lr.ph
  %i.bd = xor i64 %.055.lcssa, -1
  %i.be = add i64 %i.g, %i.bd
  %i.bf = and i64 %i.be, -2
  %i.bg = add i64 %.055.lcssa, %i.bf
  %i.bh = add i64 %i.bg, 2
  br label %.preheader61

.preheader62.us:                                  ; preds = %.preheader62.us.preheader, %._crit_edge.us78
  %.175.us = phi i64 [ %i.ci, %._crit_edge.us78 ], [ %.055.lcssa, %.preheader62.us.preheader ] ; 4 uses
  %.25874.us = phi i64 [ %.lcssa118, %._crit_edge.us78 ], [ %.056.lcssa, %.preheader62.us.preheader ] ; 2 uses
  br i1 %i.bc, label %.epil.preheader124, label %.preheader62.us.new

.preheader62.us.new:                              ; preds = %.preheader62.us, %.preheader62.us.new
  %.05373.us = phi i64 [ %i.bz, %.preheader62.us.new ], [ 0, %.preheader62.us ] ; 3 uses
  %.372.us = phi i64 [ %i.by, %.preheader62.us.new ], [ %.25874.us, %.preheader62.us ] ; 3 uses
  %niter130 = phi i64 [ %niter130.next.1, %.preheader62.us.new ], [ 0, %.preheader62.us ]
  %i.bi = load ptr, ptr %2, align 8, !tbaa !228
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !230
  %i.bk = mul nsw i64 %i.bj, %.05373.us
  %i.bl = getelementptr [8 x i8], ptr %i.bi, i64 %.175.us
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load <2 x double>, ptr %i.bm, align 1, !tbaa !44
  %i.bo = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us
  store <2 x double> %i.bn, ptr %i.bo, align 16, !tbaa !44
  %i.bp = or disjoint i64 %.05373.us, 1
  %i.bq = load ptr, ptr %2, align 8, !tbaa !228
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !230
  %i.bs = mul nsw i64 %i.br, %i.bp
  %i.bt = getelementptr [8 x i8], ptr %i.bq, i64 %.175.us
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load <2 x double>, ptr %i.bu, align 1, !tbaa !44
  %i.bw = getelementptr [8 x i8], ptr %1, i64 %.372.us
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store <2 x double> %i.bv, ptr %i.bx, align 16, !tbaa !44
  %i.by = add nsw i64 %.372.us, 4                 ; 3 uses
  %i.bz = add nuw nsw i64 %.05373.us, 2           ; 2 uses
  %niter130.next.1 = add nuw nsw i64 %niter130, 2 ; 2 uses
  %niter130.ncmp.1 = icmp eq i64 %niter130.next.1, %unroll_iter129
  br i1 %niter130.ncmp.1, label %._crit_edge.us78.unr-lcssa, label %.preheader62.us.new, !llvm.loop !447

._crit_edge.us78.unr-lcssa:                       ; preds = %.preheader62.us.new
  br i1 %lcmp.mod126.not, label %._crit_edge.us78, label %.epil.preheader124

.epil.preheader124:                               ; preds = %._crit_edge.us78.unr-lcssa, %.preheader62.us
  %.05373.us.epil.init = phi i64 [ 0, %.preheader62.us ], [ %i.bz, %._crit_edge.us78.unr-lcssa ]
  %.372.us.epil.init = phi i64 [ %.25874.us, %.preheader62.us ], [ %i.by, %._crit_edge.us78.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.ca = load ptr, ptr %2, align 8, !tbaa !228
  %i.cb = load i64, ptr %i.bb, align 8, !tbaa !230
  %i.cc = mul nsw i64 %i.cb, %.05373.us.epil.init
  %i.cd = getelementptr [8 x i8], ptr %i.ca, i64 %.175.us
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !44
  %i.cg = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us.epil.init
  store <2 x double> %i.cf, ptr %i.cg, align 16, !tbaa !44
  %i.ch = add nsw i64 %.372.us.epil.init, 2
  br label %._crit_edge.us78

._crit_edge.us78:                                 ; preds = %._crit_edge.us78.unr-lcssa, %.epil.preheader124
  %.lcssa118 = phi i64 [ %i.by, %._crit_edge.us78.unr-lcssa ], [ %i.ch, %.epil.preheader124 ] ; 2 uses
  %i.ci = add nuw nsw i64 %.175.us, 2             ; 3 uses
  %i.cj = icmp slt i64 %i.ci, %i.g
  br i1 %i.cj, label %.preheader62.us, label %.preheader61, !llvm.loop !448

.preheader61:                                     ; preds = %._crit_edge.us78, %.preheader62.preheader, %.preheader63
  %.258.lcssa = phi i64 [ %.056.lcssa, %.preheader63 ], [ %.056.lcssa, %.preheader62.preheader ], [ %.lcssa118, %._crit_edge.us78 ]
  %.1.lcssa = phi i64 [ %.055.lcssa, %.preheader63 ], [ %i.bh, %.preheader62.preheader ], [ %i.ci, %._crit_edge.us78 ] ; 3 uses
  %i.ck = icmp slt i64 %.1.lcssa, %4
  %i.cl = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge86.split

.preheader.lr.ph.split:                           ; preds = %.preheader61
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %2, align 8, !tbaa !228   ; 2 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !230 ; 6 uses
  %min.iters.check = icmp ugt i64 %3, 5
  %ident.check.not = icmp eq i64 %i.cp, 1
  %or.cond116 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter131 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.285 = phi i64 [ %.1.lcssa, %.preheader.lr.ph.split ], [ %i.dn, %._crit_edge ] ; 2 uses
  %.484 = phi i64 [ %.258.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cn, i64 %.285 ; 6 uses
  br i1 %or.cond116, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader
  %i.cr = add i64 %.1.lcssa, %indvar
  %i.cs = shl i64 %i.cr, 3
  %i.ct = add i64 %i.cs, %i.co
  %i.cu = sub i64 %i.a, %i.ct
  %i.cv = shl i64 %.484, 3
  %i.cw = add i64 %i.cu, %i.cv
  %i.cx = add i64 %i.cw, -1
  %diff.check = icmp ult i64 %i.cx, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cy = add i64 %.484, %n.vec                   ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %1, i64 %.484
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = getelementptr [8 x i8], ptr %i.cq, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load = load <2 x double>, ptr %i.da, align 8, !tbaa !52
  %wide.load114 = load <2 x double>, ptr %i.db, align 8, !tbaa !52
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x double> %wide.load, ptr %i.dc, align 8, !tbaa !52
  store <2 x double> %wide.load114, ptr %i.dd, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !449

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.083.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.582.ph = phi i64 [ %.484, %vector.memcheck ], [ %.484, %.preheader ], [ %i.cy, %middle.block ] ; 2 uses
  br i1 %lcmp.mod132.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.083.prol = phi i64 [ %i.dk, %scalar.ph.prol ], [ %.083.ph, %scalar.ph.preheader ] ; 2 uses
  %.582.prol = phi i64 [ %i.di, %scalar.ph.prol ], [ %.582.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.df = mul nsw i64 %i.cp, %.083.prol
  %i.dg = getelementptr [8 x i8], ptr %i.cq, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !52
  %i.di = add nsw i64 %.582.prol, 1               ; 3 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %1, i64 %.582.prol
  store double %i.dh, ptr %i.dj, align 8, !tbaa !52
  %i.dk = add nuw nsw i64 %.083.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter131
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !450

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa117.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.di, %scalar.ph.prol ]
  %.083.unr = phi i64 [ %.083.ph, %scalar.ph.preheader ], [ %i.dk, %scalar.ph.prol ]
  %.582.unr = phi i64 [ %.582.ph, %scalar.ph.preheader ], [ %i.di, %scalar.ph.prol ]
  %i.dl = sub nsw i64 %.083.ph, %3
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.cy, %middle.block ], [ %.lcssa117.unr, %scalar.ph.prol.loopexit ], [ %i.ei, %scalar.ph ]
  %i.dn = add nuw nsw i64 %.285, 1                ; 2 uses
  %exitcond98.not = icmp eq i64 %i.dn, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond98.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !451

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.083 = phi i64 [ %i.el, %scalar.ph ], [ %.083.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.582 = phi i64 [ %i.ei, %scalar.ph ], [ %.582.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.do = mul nsw i64 %i.cp, %.083
  %i.dp = getelementptr [8 x i8], ptr %i.cq, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !52
  %i.dr = getelementptr inbounds [8 x i8], ptr %1, i64 %.582
  store double %i.dq, ptr %i.dr, align 8, !tbaa !52
  %i.ds = add nuw nsw i64 %.083, 1
  %i.dt = mul nsw i64 %i.cp, %i.ds
  %i.du = getelementptr [8 x i8], ptr %i.cq, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !52
  %i.dw = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  store double %i.dv, ptr %i.dx, align 8, !tbaa !52
  %i.dy = add nuw nsw i64 %.083, 2
  %i.dz = mul nsw i64 %i.cp, %i.dy
  %i.ea = getelementptr [8 x i8], ptr %i.cq, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !52
  %i.ec = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  store double %i.eb, ptr %i.ed, align 8, !tbaa !52
  %i.ee = add nuw nsw i64 %.083, 3
  %i.ef = mul nsw i64 %i.cp, %i.ee
  %i.eg = getelementptr [8 x i8], ptr %i.cq, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !52
  %i.ei = add nsw i64 %.582, 4                    ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  store double %i.eh, ptr %i.ek, align 8, !tbaa !52
  %i.el = add nuw nsw i64 %.083, 4                ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %i.el, %3
  br i1 %exitcond97.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !452

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader61
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
end_hunk_2
