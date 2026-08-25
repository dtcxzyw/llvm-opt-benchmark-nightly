Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/shapeup?download=true
inline.NumInlined: 5991
inline.NumDeleted: 2888
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll:bb.a
  %.065 = phi i64 [ %i.fu, %scalar.ph114 ], [ %.065.unr, %scalar.ph114.prol.loopexit ] ; 5 uses
  %.364 = phi i64 [ %i.ft, %scalar.ph114 ], [ %.364.unr, %scalar.ph114.prol.loopexit ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !35
  %i.fd = getelementptr inbounds [8 x i8], ptr %1, i64 %.364
  store double %i.fc, ptr %i.fd, align 8, !tbaa !35
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !35
  %i.fh = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  store double %i.fg, ptr %i.fi, align 8, !tbaa !35
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !35
  %i.fm = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  store double %i.fl, ptr %i.fn, align 8, !tbaa !35
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !35
  %i.fr = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fs = getelementptr i8, ptr %i.fr, i64 24
  store double %i.fq, ptr %i.fs, align 8, !tbaa !35
  %i.ft = add nsw i64 %.364, 4                    ; 2 uses
  %i.fu = add nuw nsw i64 %.065, 4                ; 2 uses
  %exitcond72.not.3 = icmp eq i64 %i.fu, %3
  br i1 %exitcond72.not.3, label %._crit_edge, label %scalar.ph114, !llvm.loop !560
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, double noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #5 comdat align 2 {
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
  br i1 %i.af, label %bb.b, label %._crit_edge809, !llvm.loop !561

._crit_edge809:                                   ; preds = %.loopexit706, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, double noundef %7, i64 noundef %i.f, i64 noundef %i.j, i64 noundef %spec.select, i64 noundef %.0249, i64 noundef %10, i64 noundef %11, i32 noundef 4, i64 noundef %i.s, i64 noundef 8, i64 noundef %6, i64 noundef %5, i64 noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
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
  %i.ak = load ptr, ptr %1, align 8, !tbaa !562   ; 2 uses
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !564 ; 8 uses
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
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !35
  %i.az = load <4 x double>, ptr %.0229814.us.us, align 8, !tbaa !35
  %i.ba = insertelement <4 x double> poison, double %i.ay, i64 0
  %i.bb = shufflevector <4 x double> %i.ba, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bc = fmul <4 x double> %i.bb, %i.az
  %i.bd = fadd <4 x double> %i.aw, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.0229814.us.us, i64 32
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %gep824.us.us, i64 %.0228815.us.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !35
  %i.bi = load <4 x double>, ptr %i.be, align 8, !tbaa !35
  %i.bj = insertelement <4 x double> poison, double %i.bh, i64 0
  %i.bk = shufflevector <4 x double> %i.bj, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bl = fmul <4 x double> %i.bk, %i.bi
  %i.bm = fadd <4 x double> %i.bd, %i.bl          ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0229814.us.us, i64 64 ; 2 uses
  %i.bo = add nuw nsw i64 %.0228815.us.us, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge818.us.us.unr-lcssa, label %.lr.ph817.us.us.new, !llvm.loop !565

._crit_edge818.us.us.unr-lcssa:                   ; preds = %.lr.ph817.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge818.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge818.us.us.unr-lcssa, %.lr.ph817.us.us
  %.0228815.us.us.epil.init = phi i64 [ 0, %.lr.ph817.us.us ], [ %i.bo, %._crit_edge818.us.us.unr-lcssa ]
  %.0229814.us.us.epil.init = phi ptr [ %gep830.us, %.lr.ph817.us.us ], [ %i.bn, %._crit_edge818.us.us.unr-lcssa ]
  %.epil.init = phi <4 x double> [ zeroinitializer, %.lr.ph817.us.us ], [ %i.bm, %._crit_edge818.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1019)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %gep824.us.us, i64 %.0228815.us.us.epil.init
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !35
  %i.br = load <4 x double>, ptr %.0229814.us.us.epil.init, align 8, !tbaa !35
  %i.bs = insertelement <4 x double> poison, double %i.bq, i64 0
  %i.bt = shufflevector <4 x double> %i.bs, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bu = fmul <4 x double> %i.bt, %i.br
  %i.bv = fadd <4 x double> %.epil.init, %i.bu
  br label %._crit_edge818.us.us

._crit_edge818.us.us:                             ; preds = %._crit_edge818.us.us.unr-lcssa, %.epil.preheader
  %.lcssa988 = phi <4 x double> [ %i.bm, %._crit_edge818.us.us.unr-lcssa ], [ %i.bv, %.epil.preheader ] ; 4 uses
  %i.bw = getelementptr [8 x i8], ptr %i.ak, i64 %.0230825.us.us ; 4 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.ao ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !35
  %i.bz = extractelement <4 x double> %.lcssa988, i64 0
  %i.ca = call double @llvm.fmuladd.f64(double %7, double %i.bz, double %i.by)
  store double %i.ca, ptr %i.bx, align 8, !tbaa !35
  %i.cb = getelementptr [8 x i8], ptr %i.bw, i64 %i.aq ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !35
  %i.cd = extractelement <4 x double> %.lcssa988, i64 1
  %i.ce = call double @llvm.fmuladd.f64(double %7, double %i.cd, double %i.cc)
  store double %i.ce, ptr %i.cb, align 8, !tbaa !35
  %i.cf = getelementptr [8 x i8], ptr %i.bw, i64 %i.as ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !35
  %i.ch = extractelement <4 x double> %.lcssa988, i64 2
  %i.ci = call double @llvm.fmuladd.f64(double %7, double %i.ch, double %i.cg)
  store double %i.ci, ptr %i.cf, align 8, !tbaa !35
  %i.cj = getelementptr [8 x i8], ptr %i.bw, i64 %i.au ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !35
  %i.cl = extractelement <4 x double> %.lcssa988, i64 3
  %i.cm = call double @llvm.fmuladd.f64(double %7, double %i.cl, double %i.ck)
  store double %i.cm, ptr %i.cj, align 8, !tbaa !35
  %i.cn = add nsw i64 %.0230825.us.us, 1          ; 2 uses
  %13 = icmp slt i64 %i.cn, %4
  br i1 %13, label %.lr.ph817.us.us, label %._crit_edge827.split.us.us, !llvm.loop !566

._crit_edge827.split.us.us:                       ; preds = %._crit_edge818.us.us
  %i.co = add nuw nsw i64 %.0231828.us, 4         ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.d
  br i1 %i.cp, label %.preheader699.us, label %.preheader698, !llvm.loop !567

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
  %i.cu = load ptr, ptr %1, align 8, !tbaa !562
  %i.cv = load i64, ptr %i.z, align 8, !tbaa !564
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
  tail call void asm sideeffect "#begin gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !568
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !569
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !570
  %i.da = load <2 x double>, ptr %.0235755.us.us.us, align 16, !tbaa !15
  %i.db = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 16
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !15
  %i.dd = load double, ptr %.0234756.us.us.us, align 8, !tbaa !35
  %i.de = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = fmul <2 x double> %i.da, %i.df
  %i.dh = fadd <2 x double> %.0696753.us.us.us, %i.dg
  %i.di = fmul <2 x double> %i.dc, %i.df
  %i.dj = fadd <2 x double> %.0694754.us.us.us, %i.di
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !571
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !572
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !573
  %i.dk = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 32
  %i.dl = load <2 x double>, ptr %i.dk, align 16, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 48
  %i.dn = load <2 x double>, ptr %i.dm, align 16, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !35
  %i.dq = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = fmul <2 x double> %i.dl, %i.dr
  %i.dt = fadd <2 x double> %i.dh, %i.ds
  %i.du = fmul <2 x double> %i.dn, %i.dr
  %i.dv = fadd <2 x double> %i.dj, %i.du
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !574
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !575
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !576
  %i.dw = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 64
  %i.dx = load <2 x double>, ptr %i.dw, align 16, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 80
  %i.dz = load <2 x double>, ptr %i.dy, align 16, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 16
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !35
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = fmul <2 x double> %i.dx, %i.ed
  %i.ef = fadd <2 x double> %i.dt, %i.ee
  %i.eg = fmul <2 x double> %i.dz, %i.ed
  %i.eh = fadd <2 x double> %i.dv, %i.eg
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !577
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !578
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !579
  %i.ei = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 96
  %i.ej = load <2 x double>, ptr %i.ei, align 16, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 112
  %i.el = load <2 x double>, ptr %i.ek, align 16, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 24
  %i.en = load double, ptr %i.em, align 8, !tbaa !35
  %i.eo = insertelement <2 x double> poison, double %i.en, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eq = fmul <2 x double> %i.ej, %i.ep
  %i.er = fadd <2 x double> %i.ef, %i.eq
  %i.es = fmul <2 x double> %i.el, %i.ep
  %i.et = fadd <2 x double> %i.eh, %i.es
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !580
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !581
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !582
  %i.eu = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 128
  %i.ev = load <2 x double>, ptr %i.eu, align 16, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 144
  %i.ex = load <2 x double>, ptr %i.ew, align 16, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 32
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !35
  %i.fa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = fmul <2 x double> %i.ev, %i.fb
  %i.fd = fadd <2 x double> %i.er, %i.fc
  %i.fe = fmul <2 x double> %i.ex, %i.fb
  %i.ff = fadd <2 x double> %i.et, %i.fe
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !583
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !584
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !585
  %i.fg = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 160
  %i.fh = load <2 x double>, ptr %i.fg, align 16, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 176
  %i.fj = load <2 x double>, ptr %i.fi, align 16, !tbaa !15
  %i.fk = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 40
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !35
  %i.fm = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fo = fmul <2 x double> %i.fh, %i.fn
  %i.fp = fadd <2 x double> %i.fd, %i.fo
  %i.fq = fmul <2 x double> %i.fj, %i.fn
  %i.fr = fadd <2 x double> %i.ff, %i.fq
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !586
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !587
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !588
  %i.fs = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 192
  %i.ft = load <2 x double>, ptr %i.fs, align 16, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 208
  %i.fv = load <2 x double>, ptr %i.fu, align 16, !tbaa !15
  %i.fw = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 48
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !35
  %i.fy = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ga = fmul <2 x double> %i.ft, %i.fz
  %i.gb = fadd <2 x double> %i.fp, %i.ga
  %i.gc = fmul <2 x double> %i.fv, %i.fz
  %i.gd = fadd <2 x double> %i.fr, %i.gc
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !589
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !590
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !591
  %i.ge = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 224
  %i.gf = load <2 x double>, ptr %i.ge, align 16, !tbaa !15
  %i.gg = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 240
  %i.gh = load <2 x double>, ptr %i.gg, align 16, !tbaa !15
  %i.gi = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 56
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !35
  %i.gk = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = fmul <2 x double> %i.gf, %i.gl
  %i.gn = fadd <2 x double> %i.gb, %i.gm          ; 3 uses
  %i.go = fmul <2 x double> %i.gh, %i.gl
  %i.gp = fadd <2 x double> %i.gd, %i.go          ; 3 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !592
  %i.gq = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 64 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 256 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !593
  %i.gs = add nuw nsw i64 %.0233757.us.us.us, 8   ; 2 uses
  %i.gt = icmp slt i64 %i.gs, %i.s
  br i1 %i.gt, label %bb.c, label %..preheader701_crit_edge.us.us.us, !llvm.loop !594

.lr.ph769.us.us.us:                               ; preds = %..preheader701_crit_edge.us.us.us, %.lr.ph769.us.us.us
  %.0232768.us.us.us = phi i64 [ %i.hg, %.lr.ph769.us.us.us ], [ %i.s, %..preheader701_crit_edge.us.us.us ]
  %.1767.us.us.us = phi ptr [ %i.he, %.lr.ph769.us.us.us ], [ %i.gq, %..preheader701_crit_edge.us.us.us ] ; 2 uses
  %.1236766.us.us.us = phi ptr [ %i.hf, %.lr.ph769.us.us.us ], [ %i.gr, %..preheader701_crit_edge.us.us.us ] ; 3 uses
  %.1695765.us.us.us = phi <2 x double> [ %i.hd, %.lr.ph769.us.us.us ], [ %i.gp, %..preheader701_crit_edge.us.us.us ]
  %.1697764.us.us.us = phi <2 x double> [ %i.hb, %.lr.ph769.us.us.us ], [ %i.gn, %..preheader701_crit_edge.us.us.us ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !595
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !596
  %i.gu = load <2 x double>, ptr %.1236766.us.us.us, align 16, !tbaa !15
  %i.gv = getelementptr inbounds nuw i8, ptr %.1236766.us.us.us, i64 16
  %i.gw = load <2 x double>, ptr %i.gv, align 16, !tbaa !15
  %i.gx = load double, ptr %.1767.us.us.us, align 8, !tbaa !35
  %i.gy = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = fmul <2 x double> %i.gu, %i.gz
  %i.hb = fadd <2 x double> %.1697764.us.us.us, %i.ha ; 2 uses
  %i.hc = fmul <2 x double> %i.gw, %i.gz
  %i.hd = fadd <2 x double> %.1695765.us.us.us, %i.hc ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !597
  %i.he = getelementptr inbounds nuw i8, ptr %.1767.us.us.us, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.1236766.us.us.us, i64 32
  %i.hg = add nuw nsw i64 %.0232768.us.us.us, 1   ; 2 uses
  %i.hh = icmp slt i64 %i.hg, %5
  br i1 %i.hh, label %.lr.ph769.us.us.us, label %._crit_edge770.us.us.us, !llvm.loop !598

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
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !616
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !617
  %i.sz = getelementptr inbounds nuw i8, ptr %.0243715, i64 224
  %i.ta = load <2 x double>, ptr %i.sz, align 16, !tbaa !15 ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.0243715, i64 240
  %i.tc = load <2 x double>, ptr %i.tb, align 16, !tbaa !15 ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.0241716, i64 224
  %i.te = load <4 x i32>, ptr %i.td, align 16, !tbaa !15 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.0241716, i64 240
  %i.tg = load <4 x i32>, ptr %i.tf, align 16, !tbaa !15 ; 2 uses
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
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !618
  %i.uf = getelementptr inbounds nuw i8, ptr %.0241716, i64 256 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.0243715, i64 256 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !619
  %i.uh = add nuw nsw i64 %.0240717, 8            ; 2 uses
  %i.ui = icmp slt i64 %i.uh, %i.s
  br i1 %i.ui, label %.lr.ph, label %.preheader702, !llvm.loop !620

._crit_edge:                                      ; preds = %.lr.ph738, %.preheader702
  %.1693.lcssa = phi <2 x double> [ %.0692.lcssa, %.preheader702 ], [ %i.wq, %.lr.ph738 ]
  %.1691.lcssa = phi <2 x double> [ %.0690.lcssa, %.preheader702 ], [ %i.wk, %.lr.ph738 ]
  %.1689.lcssa = phi <2 x double> [ %.0688.lcssa, %.preheader702 ], [ %i.we, %.lr.ph738 ]
  %.1687.lcssa = phi <2 x double> [ %.0686.lcssa, %.preheader702 ], [ %i.vy, %.lr.ph738 ]
  %.1681.lcssa = phi <2 x double> [ %.0680.lcssa, %.preheader702 ], [ %i.wo, %.lr.ph738 ]
  %.1679.lcssa = phi <2 x double> [ %.0678.lcssa, %.preheader702 ], [ %i.wi, %.lr.ph738 ]
  %.1677.lcssa = phi <2 x double> [ %.0676.lcssa, %.preheader702 ], [ %i.wc, %.lr.ph738 ]
  %.1674.lcssa = phi <2 x double> [ %.0673.lcssa, %.preheader702 ], [ %i.vw, %.lr.ph738 ]
  %i.uj = load <2 x double>, ptr %i.jy, align 1, !tbaa !15
  %i.uk = getelementptr inbounds nuw i8, ptr %i.jy, i64 16 ; 2 uses
  %i.ul = load <2 x double>, ptr %i.uk, align 1, !tbaa !15
  %i.um = load <2 x double>, ptr %i.ka, align 1, !tbaa !15
  %i.un = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 2 uses
  %i.uo = load <2 x double>, ptr %i.un, align 1, !tbaa !15
  %i.up = fmul <2 x double> %i.ac, %.1674.lcssa
  %i.uq = fadd <2 x double> %i.up, %i.uj
  %i.ur = fmul <2 x double> %i.ac, %.1687.lcssa
  %i.us = fadd <2 x double> %i.ur, %i.ul
  %i.ut = fmul <2 x double> %i.ac, %.1677.lcssa
  %i.uu = fadd <2 x double> %i.ut, %i.um
  %i.uv = fmul <2 x double> %i.ac, %.1689.lcssa
  %i.uw = fadd <2 x double> %i.uv, %i.uo
  store <2 x double> %i.uq, ptr %i.jy, align 1, !tbaa !15
  store <2 x double> %i.us, ptr %i.uk, align 1, !tbaa !15
  store <2 x double> %i.uu, ptr %i.ka, align 1, !tbaa !15
  store <2 x double> %i.uw, ptr %i.un, align 1, !tbaa !15
  %i.ux = load <2 x double>, ptr %i.kc, align 1, !tbaa !15
  %i.uy = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %i.uz = load <2 x double>, ptr %i.uy, align 1, !tbaa !15
  %i.va = load <2 x double>, ptr %i.ke, align 1, !tbaa !15
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %i.vc = load <2 x double>, ptr %i.vb, align 1, !tbaa !15
  %i.vd = fmul <2 x double> %i.ac, %.1679.lcssa
  %i.ve = fadd <2 x double> %i.vd, %i.ux
  %i.vf = fmul <2 x double> %i.ac, %.1691.lcssa
  %i.vg = fadd <2 x double> %i.vf, %i.uz
  %i.vh = fmul <2 x double> %i.ac, %.1681.lcssa
  %i.vi = fadd <2 x double> %i.vh, %i.va
  %i.vj = fmul <2 x double> %i.ac, %.1693.lcssa
  %i.vk = fadd <2 x double> %i.vj, %i.vc
  store <2 x double> %i.ve, ptr %i.kc, align 1, !tbaa !15
  store <2 x double> %i.vg, ptr %i.uy, align 1, !tbaa !15
  store <2 x double> %i.vi, ptr %i.ke, align 1, !tbaa !15
  store <2 x double> %i.vk, ptr %i.vb, align 1, !tbaa !15
  %i.vl = add nuw nsw i64 %.0245747, 4            ; 2 uses
  %i.vm = icmp slt i64 %i.vl, %.sroa.speculated
  br i1 %i.vm, label %bb.e, label %._crit_edge749, !llvm.loop !621

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
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !622
  %i.vn = load <2 x double>, ptr %.1244735, align 16, !tbaa !15 ; 4 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.1244735, i64 16
  %i.vp = load <2 x double>, ptr %i.vo, align 16, !tbaa !15 ; 4 uses
  %i.vq = load <4 x i32>, ptr %.1242736, align 16, !tbaa !15 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.1242736, i64 16
  %i.vs = load <4 x i32>, ptr %i.vr, align 16, !tbaa !15 ; 2 uses
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
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !623
  %i.wr = getelementptr inbounds nuw i8, ptr %.1242736, i64 32
  %i.ws = getelementptr inbounds nuw i8, ptr %.1244735, i64 32
  %i.wt = add nsw i64 %.0239737, 1                ; 2 uses
  %i.wu = icmp slt i64 %i.wt, %5
  br i1 %i.wu, label %.lr.ph738, label %._crit_edge, !llvm.loop !624

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
  %i.xf = load ptr, ptr %1, align 8, !tbaa !562   ; 4 uses
  %i.xg = load i64, ptr %i.xd, align 8, !tbaa !564 ; 4 uses
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
  %i.xj = load double, ptr %gep847.prol, align 8, !tbaa !35
  %i.xk = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.xj)
  store double %i.xk, ptr %gep847.prol, align 8, !tbaa !35
  %i.xl = add nsw i64 %.0226843.prol, 1           ; 2 uses
  %14 = icmp slt i64 %i.xl, %4
  br i1 %14, label %bb.f, label %._crit_edge845.split.prol, !llvm.loop !625

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
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !35
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %.0834.us.us
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !35
  %i.xw = fmul double %i.xt, %i.xv
  %i.xx = fadd double %.0675833.us.us, %i.xw
  %i.xy = or disjoint i64 %.0834.us.us, 1         ; 2 uses
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %gep840.us.us, i64 %i.xy
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !35
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %i.xy
  %i.yc = load double, ptr %i.yb, align 8, !tbaa !35
  %i.yd = fmul double %i.ya, %i.yc
  %i.ye = fadd double %i.xx, %i.yd
  %i.yf = or disjoint i64 %.0834.us.us, 2         ; 2 uses
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %gep840.us.us, i64 %i.yf
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !35
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %i.yf
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !35
  %i.yk = fmul double %i.yh, %i.yj
  %i.yl = fadd double %i.ye, %i.yk
  %i.ym = or disjoint i64 %.0834.us.us, 3         ; 2 uses
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %gep840.us.us, i64 %i.ym
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !35
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %i.ym
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !35
  %i.yr = fmul double %i.yo, %i.yq
  %i.ys = fadd double %i.yl, %i.yr                ; 3 uses
  %i.yt = add nuw nsw i64 %.0834.us.us, 4         ; 2 uses
  %niter1028.next.3 = add nuw nsw i64 %niter1028, 4 ; 2 uses
  %niter1028.ncmp.3 = icmp eq i64 %niter1028.next.3, %unroll_iter1027
  br i1 %niter1028.ncmp.3, label %._crit_edge837.us.us.unr-lcssa, label %.lr.ph836.us.us.new, !llvm.loop !626

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
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !35
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %.0834.us.us.epil
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !35
  %i.yy = fmul double %i.yv, %i.yx
  %i.yz = fadd double %.0675833.us.us.epil, %i.yy ; 2 uses
  %i.za = add nuw nsw i64 %.0834.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1023
  br i1 %epil.iter.cmp.not, label %._crit_edge837.us.us, label %bb.g, !llvm.loop !627

._crit_edge837.us.us:                             ; preds = %bb.g, %._crit_edge837.us.us.unr-lcssa
  %.lcssa = phi double [ %i.ys, %._crit_edge837.us.us.unr-lcssa ], [ %i.yz, %bb.g ]
  %gep847.us.us = getelementptr [8 x i8], ptr %invariant.gep846.us, i64 %.0226843.us.us ; 2 uses
  %i.zb = load double, ptr %gep847.us.us, align 8, !tbaa !35
  %i.zc = call double @llvm.fmuladd.f64(double %7, double %.lcssa, double %i.zb)
  store double %i.zc, ptr %gep847.us.us, align 8, !tbaa !35
  %i.zd = add nsw i64 %.0226843.us.us, 1          ; 2 uses
  %15 = icmp slt i64 %i.zd, %4
  br i1 %15, label %.lr.ph836.us.us, label %._crit_edge845.split.us.us, !llvm.loop !625

._crit_edge845.split.us.us:                       ; preds = %._crit_edge837.us.us
  %i.ze = add nsw i64 %.0227848.us, 1             ; 2 uses
  %exitcond892.not.a = icmp eq i64 %i.ze, %6
  br i1 %exitcond892.not.a, label %.loopexit, label %.preheader.us, !llvm.loop !628

._crit_edge827.split:                             ; preds = %bb.h
  %i.zf = add nuw nsw i64 %.0231828, 4            ; 2 uses
  %i.zg = icmp slt i64 %i.zf, %i.d
  br i1 %i.zg, label %.preheader699, label %.preheader698, !llvm.loop !567

bb.h:                                             ; preds = %.preheader699, %bb.h
  %.0230825 = phi i64 [ %i.r, %.preheader699 ], [ %i.zv, %bb.h ] ; 3 uses
  %i.zh = mul nsw i64 %.0230825, %spec.select
  %gep824 = getelementptr [8 x i8], ptr %invariant.gep823, i64 %i.zh
  call void @llvm.prefetch.p0(ptr %gep824, i32 0, i32 3, i32 1)
  %i.zi = getelementptr [8 x i8], ptr %i.ak, i64 %.0230825 ; 4 uses
  %i.zj = getelementptr [8 x i8], ptr %i.zi, i64 %i.wv ; 2 uses
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !35
  %i.zl = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.zk)
  store double %i.zl, ptr %i.zj, align 8, !tbaa !35
  %i.zm = getelementptr [8 x i8], ptr %i.zi, i64 %i.wx ; 2 uses
  %i.zn = load double, ptr %i.zm, align 8, !tbaa !35
  %i.zo = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.zn)
  store double %i.zo, ptr %i.zm, align 8, !tbaa !35
  %i.zp = getelementptr [8 x i8], ptr %i.zi, i64 %i.wz ; 2 uses
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !35
  %i.zr = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.zq)
  store double %i.zr, ptr %i.zp, align 8, !tbaa !35
  %i.zs = getelementptr [8 x i8], ptr %i.zi, i64 %i.xb ; 2 uses
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !35
  %i.zu = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.zt)
  store double %i.zu, ptr %i.zs, align 8, !tbaa !35
  %i.zv = add nsw i64 %.0230825, 1                ; 2 uses
  %16 = icmp slt i64 %i.zv, %4
  br i1 %16, label %bb.h, label %._crit_edge827.split, !llvm.loop !566

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
  %i.aaa = load double, ptr %gep847.1, align 8, !tbaa !35
  %i.aab = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.aaa)
  store double %i.aab, ptr %gep847.1, align 8, !tbaa !35
  %i.aac = add nsw i64 %.0226843.1, 1             ; 2 uses
  %17 = icmp slt i64 %i.aac, %4
  br i1 %17, label %bb.i, label %._crit_edge845.split.1, !llvm.loop !625

._crit_edge845.split.1:                           ; preds = %bb.i
  %i.aad = add nsw i64 %.0227848, 2               ; 2 uses
  %exitcond890.not.1 = icmp eq i64 %i.aad, %6
  br i1 %exitcond890.not.1, label %.loopexit, label %.preheader, !llvm.loop !628

bb.j:                                             ; preds = %.preheader, %bb.j
  %.0226843 = phi i64 [ %i.r, %.preheader ], [ %i.aah, %bb.j ] ; 3 uses
  %i.aae = mul nsw i64 %.0226843, %spec.select
  %gep840 = getelementptr [8 x i8], ptr %invariant.gep839, i64 %i.aae
  call void @llvm.prefetch.p0(ptr %gep840, i32 0, i32 3, i32 1)
  %gep847 = getelementptr [8 x i8], ptr %invariant.gep846, i64 %.0226843 ; 2 uses
  %i.aaf = load double, ptr %gep847, align 8, !tbaa !35
  %i.aag = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.aaf)
  store double %i.aag, ptr %gep847, align 8, !tbaa !35
  %i.aah = add nsw i64 %.0226843, 1               ; 2 uses
  %18 = icmp slt i64 %i.aah, %4
  br i1 %18, label %bb.j, label %._crit_edge845.split, !llvm.loop !625

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %._crit_edge845.split.1, %._crit_edge845.split.us.us, %.preheader698, %._crit_edge809
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, double noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #16 comdat align 2 {
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
  %i.l = load ptr, ptr %1, align 8, !tbaa !562
  %i.m = load i64, ptr %i.c, align 8, !tbaa !564  ; 4 uses
  %i.n = mul nsw i64 %i.m, %.0126454
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %.0127477 ; 4 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.n ; 3 uses
  %i.q = or disjoint i64 %.0126454, 1
  %i.r = mul nsw i64 %i.m, %i.q
  %i.s = getelementptr [8 x i8], ptr %i.o, i64 %i.r ; 3 uses
  %i.t = or disjoint i64 %.0126454, 2
  %i.u = mul nsw i64 %i.m, %i.t
  %i.v = getelementptr [8 x i8], ptr %i.o, i64 %i.u ; 3 uses
  %i.w = or disjoint i64 %.0126454, 3
  %i.x = mul nsw i64 %i.m, %i.w
  %i.y = getelementptr [8 x i8], ptr %i.o, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.d
  tail call void @llvm.prefetch.p0(ptr nonnull %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.d
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.d
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ab, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.d
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ac, i32 0, i32 3, i32 1)
  %i.ad = mul nsw i64 %.0126454, %8
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ad ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %gep, i32 0, i32 3, i32 1)
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ae = fadd <2 x double> %i.gt, %i.fx
  %i.af = fadd <2 x double> %i.gx, %i.gb
  %i.ag = fadd <2 x double> %i.hb, %i.gf
  %i.ah = fadd <2 x double> %i.hf, %i.gj
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.0124.lcssa = phi ptr [ %gep480, %bb.b ], [ %i.hh, %._crit_edge.loopexit ]
  %.0122.lcssa = phi ptr [ %gep, %bb.b ], [ %i.hg, %._crit_edge.loopexit ]
  %i.ai = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.ae, %._crit_edge.loopexit ] ; 2 uses
  %i.aj = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.af, %._crit_edge.loopexit ] ; 2 uses
  %i.ak = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.ag, %._crit_edge.loopexit ] ; 2 uses
  %i.al = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.ah, %._crit_edge.loopexit ] ; 2 uses
  br i1 %i.f, label %.lr.ph448, label %._crit_edge449

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0121430 = phi i64 [ %i.hi, %.lr.ph ], [ 0, %bb.b ]
  %.0122429 = phi ptr [ %i.hg, %.lr.ph ], [ %gep, %bb.b ] ; 19 uses
  %.0124428 = phi ptr [ %i.hh, %.lr.ph ], [ %gep480, %bb.b ] ; 9 uses
  %.0404427 = phi <2 x double> [ %i.fx, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0406426 = phi <2 x double> [ %i.gb, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0408425 = phi <2 x double> [ %i.gf, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0410424 = phi <2 x double> [ %i.gj, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0414423 = phi <2 x double> [ %i.gt, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0415422 = phi <2 x double> [ %i.gx, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0416421 = phi <2 x double> [ %i.hb, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0417420 = phi <2 x double> [ %i.hf, %.lr.ph ], [ zeroinitializer, %bb.b ]
  tail call void asm sideeffect "#begin gebp micro kernel 1/half/quarterX4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !629
  %i.am = getelementptr inbounds nuw i8, ptr %.0122429, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.am, i32 0, i32 3, i32 1)
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !630
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !631
  %i.an = load <2 x double>, ptr %.0124428, align 16, !tbaa !15 ; 4 uses
  %i.ao = load <4 x i32>, ptr %.0122429, align 16, !tbaa !15 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122429, i64 16
  %i.aq = load <4 x i32>, ptr %i.ap, align 16, !tbaa !15 ; 2 uses
  %i.ar = bitcast <4 x i32> %i.ao to <2 x double>
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %i.an, %i.as
  %i.au = fadd <2 x double> %.0404427, %i.at
  %i.av = bitcast <4 x i32> %i.ao to <2 x double>
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = fmul <2 x double> %i.an, %i.aw
  %i.ay = fadd <2 x double> %.0406426, %i.ax
  %i.az = bitcast <4 x i32> %i.aq to <2 x double>
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x double> %i.an, %i.ba
  %i.bc = fadd <2 x double> %.0408425, %i.bb
  %i.bd = bitcast <4 x i32> %i.aq to <2 x double>
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = fmul <2 x double> %i.an, %i.be
  %i.bg = fadd <2 x double> %.0410424, %i.bf
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !632
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !630
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !631
  %i.bh = getelementptr inbounds nuw i8, ptr %.0124428, i64 16
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !15 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0122429, i64 32
  %i.bk = load <4 x i32>, ptr %i.bj, align 16, !tbaa !15 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0122429, i64 48
  %i.bm = load <4 x i32>, ptr %i.bl, align 16, !tbaa !15 ; 2 uses
  %i.bn = bitcast <4 x i32> %i.bk to <2 x double>
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x double> %i.bi, %i.bo
  %i.bq = fadd <2 x double> %.0414423, %i.bp
  %i.br = bitcast <4 x i32> %i.bk to <2 x double>
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x double> %i.bi, %i.bs
  %i.bu = fadd <2 x double> %.0415422, %i.bt
  %i.bv = bitcast <4 x i32> %i.bm to <2 x double>
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x double> %i.bi, %i.bw
  %i.by = fadd <2 x double> %.0416421, %i.bx
  %i.bz = bitcast <4 x i32> %i.bm to <2 x double>
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = fmul <2 x double> %i.bi, %i.ca
  %i.cc = fadd <2 x double> %.0417420, %i.cb
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !632
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !630
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !631
  %i.cd = getelementptr inbounds nuw i8, ptr %.0124428, i64 32
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !15 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0122429, i64 64
  %i.cg = load <4 x i32>, ptr %i.cf, align 16, !tbaa !15 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0122429, i64 80
  %i.ci = load <4 x i32>, ptr %i.ch, align 16, !tbaa !15 ; 2 uses
  %i.cj = bitcast <4 x i32> %i.cg to <2 x double>
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.ce, %i.ck
  %i.cm = fadd <2 x double> %i.au, %i.cl
  %i.cn = bitcast <4 x i32> %i.cg to <2 x double>
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul <2 x double> %i.ce, %i.co
  %i.cq = fadd <2 x double> %i.ay, %i.cp
  %i.cr = bitcast <4 x i32> %i.ci to <2 x double>
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %i.ce, %i.cs
  %i.cu = fadd <2 x double> %i.bc, %i.ct
  %i.cv = bitcast <4 x i32> %i.ci to <2 x double>
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = fmul <2 x double> %i.ce, %i.cw
  %i.cy = fadd <2 x double> %i.bg, %i.cx
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !632
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !630
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !631
  %i.cz = getelementptr inbounds nuw i8, ptr %.0124428, i64 48
  %i.da = load <2 x double>, ptr %i.cz, align 16, !tbaa !15 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0122429, i64 96
  %i.dc = load <4 x i32>, ptr %i.db, align 16, !tbaa !15 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0122429, i64 112
  %i.de = load <4 x i32>, ptr %i.dd, align 16, !tbaa !15 ; 2 uses
  %i.df = bitcast <4 x i32> %i.dc to <2 x double>
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x double> %i.da, %i.dg
  %i.di = fadd <2 x double> %i.bq, %i.dh
  %i.dj = bitcast <4 x i32> %i.dc to <2 x double>
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fmul <2 x double> %i.da, %i.dk
  %i.dm = fadd <2 x double> %i.bu, %i.dl
  %i.dn = bitcast <4 x i32> %i.de to <2 x double>
end_hunk_1
