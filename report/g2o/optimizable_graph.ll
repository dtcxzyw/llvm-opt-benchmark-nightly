Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/optimizable_graph?download=true
inline.NumInlined: 8546
inline.NumDeleted: 4116
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll:bb.a
  %i.fy = load double, ptr %gep, align 8, !tbaa !242
  %i.fz = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179
  store double %i.fy, ptr %i.fz, align 8, !tbaa !242
  %i.ga = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.1 = getelementptr i8, ptr %i.ga, i64 8
  %i.gb = load double, ptr %gep.1, align 8, !tbaa !242
  %i.gc = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  store double %i.gb, ptr %i.gd, align 8, !tbaa !242
  %i.ge = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.2 = getelementptr i8, ptr %i.ge, i64 16
  %i.gf = load double, ptr %gep.2, align 8, !tbaa !242
  %i.gg = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  store double %i.gf, ptr %i.gh, align 8, !tbaa !242
  %i.gi = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.3 = getelementptr i8, ptr %i.gi, i64 24
  %i.gj = load double, ptr %gep.3, align 8, !tbaa !242
  %i.gk = add nsw i64 %.9179, 4                   ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.gm = getelementptr i8, ptr %i.gl, i64 24
  store double %i.gj, ptr %i.gm, align 8, !tbaa !242
  %i.gn = add nuw nsw i64 %.0180, 4               ; 2 uses
  %exitcond210.not.3 = icmp eq i64 %i.gn, %3
  br i1 %exitcond210.not.3, label %._crit_edge182, label %scalar.ph, !llvm.loop !898

._crit_edge186.split:                             ; preds = %._crit_edge182, %.preheader137
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, double noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #33 comdat align 2 {
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
  %.sroa.speculated613 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = shl nuw nsw i64 %.sroa.speculated613, 2
  %i.x = icmp sgt i64 %4, 3
  br i1 %i.x, label %.lr.ph772, label %._crit_edge773

.lr.ph772:                                        ; preds = %bb.a
  %i.y = icmp sgt i64 %6, 3
  %.idx259 = shl i64 %10, 5
  %invariant.gep = getelementptr i8, ptr %2, i64 %.idx259 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.idx260 = shl i64 %11, 5
  %invariant.gep715 = getelementptr i8, ptr %3, i64 %.idx260
  %i.aa = icmp sgt i64 %5, 7                      ; 2 uses
  %.not = icmp eq i64 %i.s, %5                    ; 3 uses
  %i.ab = insertelement <2 x double> poison, double %7, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 13 uses
  %i.ad = icmp slt i64 %i.d, %6
  %invariant.gep737 = getelementptr [8 x i8], ptr %3, i64 %11 ; 2 uses
  %i.ae = fmul <2 x double> %i.ac, zeroinitializer ; 2 uses
  br label %bb.b

.loopexit670:                                     ; preds = %._crit_edge741.split.split.us.us.us, %._crit_edge741.split.split.us763, %._crit_edge741.split.us.us.us, %.preheader669
  %i.af = icmp slt i64 %i.cq, %i.f
  br i1 %i.af, label %bb.b, label %._crit_edge773, !llvm.loop !899

._crit_edge773:                                   ; preds = %.loopexit670, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  call void @_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, double noundef %7, i64 noundef %i.f, i64 noundef %i.j, i64 noundef %spec.select, i64 noundef %.0249, i64 noundef %10, i64 noundef %11, i32 noundef 4, i64 noundef %i.s, i64 noundef 8, i64 noundef %6, i64 noundef %5, i64 noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  %i.ag = icmp slt i64 %i.r, %4
  br i1 %i.ag, label %.preheader664, label %.loopexit

.preheader664:                                    ; preds = %._crit_edge773
  %i.ah = icmp sgt i64 %6, 3
  br i1 %i.ah, label %.preheader663.lr.ph.split, label %.preheader662

.preheader663.lr.ph.split:                        ; preds = %.preheader664
  %invariant.gep787 = getelementptr [8 x i8], ptr %2, i64 %10 ; 2 uses
  %.idx = shl i64 %11, 5
  %invariant.gep793 = getelementptr i8, ptr %3, i64 %.idx
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = icmp sgt i64 %5, 0
  %i.ak = load ptr, ptr %1, align 8, !tbaa !900   ; 2 uses
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !902 ; 8 uses
  br i1 %i.aj, label %.preheader663.us.preheader, label %.preheader663

.preheader663.us.preheader:                       ; preds = %.preheader663.lr.ph.split
  %xtraiter = and i64 %5, 1
  %i.am = icmp eq i64 %5, 1
  %unroll_iter = and i64 %5, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod983 = trunc i64 %5 to i1
  br label %.preheader663.us

.preheader663.us:                                 ; preds = %.preheader663.us.preheader, %._crit_edge791.split.us.us
  %.0231792.us = phi i64 [ %i.co, %._crit_edge791.split.us.us ], [ 0, %.preheader663.us.preheader ] ; 6 uses
  %i.an = mul nsw i64 %.0231792.us, %.0249
  %gep794.us = getelementptr [8 x i8], ptr %invariant.gep793, i64 %i.an ; 2 uses
  %i.ao = mul nsw i64 %i.al, %.0231792.us
  %i.ap = or disjoint i64 %.0231792.us, 1
  %i.aq = mul nsw i64 %i.al, %i.ap
  %i.ar = or disjoint i64 %.0231792.us, 2
  %i.as = mul nsw i64 %i.al, %i.ar
  %i.at = or disjoint i64 %.0231792.us, 3
  %i.au = mul nsw i64 %i.al, %i.at
  br label %.lr.ph781.us.us

.lr.ph781.us.us:                                  ; preds = %._crit_edge782.us.us, %.preheader663.us
  %.0230789.us.us = phi i64 [ %i.r, %.preheader663.us ], [ %i.cn, %._crit_edge782.us.us ] ; 3 uses
  %i.av = mul nsw i64 %.0230789.us.us, %spec.select
  %gep788.us.us = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.av ; 4 uses
  call void @llvm.prefetch.p0(ptr %gep788.us.us, i32 0, i32 3, i32 1)
  br i1 %i.am, label %.epil.preheader, label %.lr.ph781.us.us.new

.lr.ph781.us.us.new:                              ; preds = %.lr.ph781.us.us, %.lr.ph781.us.us.new
  %.0228779.us.us = phi i64 [ %i.bo, %.lr.ph781.us.us.new ], [ 0, %.lr.ph781.us.us ] ; 3 uses
  %.0229778.us.us = phi ptr [ %i.bn, %.lr.ph781.us.us.new ], [ %gep794.us, %.lr.ph781.us.us ] ; 3 uses
  %i.aw = phi <4 x double> [ %i.bm, %.lr.ph781.us.us.new ], [ zeroinitializer, %.lr.ph781.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph781.us.us.new ], [ 0, %.lr.ph781.us.us ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %gep788.us.us, i64 %.0228779.us.us
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !242
  %i.az = load <4 x double>, ptr %.0229778.us.us, align 8, !tbaa !242
  %i.ba = insertelement <4 x double> poison, double %i.ay, i64 0
  %i.bb = shufflevector <4 x double> %i.ba, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bc = fmul <4 x double> %i.bb, %i.az
  %i.bd = fadd <4 x double> %i.aw, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.0229778.us.us, i64 32
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %gep788.us.us, i64 %.0228779.us.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !242
  %i.bi = load <4 x double>, ptr %i.be, align 8, !tbaa !242
  %i.bj = insertelement <4 x double> poison, double %i.bh, i64 0
  %i.bk = shufflevector <4 x double> %i.bj, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bl = fmul <4 x double> %i.bk, %i.bi
  %i.bm = fadd <4 x double> %i.bd, %i.bl          ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0229778.us.us, i64 64 ; 2 uses
  %i.bo = add nuw nsw i64 %.0228779.us.us, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge782.us.us.unr-lcssa, label %.lr.ph781.us.us.new, !llvm.loop !903

._crit_edge782.us.us.unr-lcssa:                   ; preds = %.lr.ph781.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge782.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge782.us.us.unr-lcssa, %.lr.ph781.us.us
  %.0228779.us.us.epil.init = phi i64 [ 0, %.lr.ph781.us.us ], [ %i.bo, %._crit_edge782.us.us.unr-lcssa ]
  %.0229778.us.us.epil.init = phi ptr [ %gep794.us, %.lr.ph781.us.us ], [ %i.bn, %._crit_edge782.us.us.unr-lcssa ]
  %.epil.init = phi <4 x double> [ zeroinitializer, %.lr.ph781.us.us ], [ %i.bm, %._crit_edge782.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod983)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %gep788.us.us, i64 %.0228779.us.us.epil.init
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !242
  %i.br = load <4 x double>, ptr %.0229778.us.us.epil.init, align 8, !tbaa !242
  %i.bs = insertelement <4 x double> poison, double %i.bq, i64 0
  %i.bt = shufflevector <4 x double> %i.bs, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bu = fmul <4 x double> %i.bt, %i.br
  %i.bv = fadd <4 x double> %.epil.init, %i.bu
  br label %._crit_edge782.us.us

._crit_edge782.us.us:                             ; preds = %._crit_edge782.us.us.unr-lcssa, %.epil.preheader
  %.lcssa952 = phi <4 x double> [ %i.bm, %._crit_edge782.us.us.unr-lcssa ], [ %i.bv, %.epil.preheader ] ; 4 uses
  %i.bw = getelementptr [8 x i8], ptr %i.ak, i64 %.0230789.us.us ; 4 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.ao ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !242
  %i.bz = extractelement <4 x double> %.lcssa952, i64 0
  %i.ca = call double @llvm.fmuladd.f64(double %7, double %i.bz, double %i.by)
  store double %i.ca, ptr %i.bx, align 8, !tbaa !242
  %i.cb = getelementptr [8 x i8], ptr %i.bw, i64 %i.aq ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !242
  %i.cd = extractelement <4 x double> %.lcssa952, i64 1
  %i.ce = call double @llvm.fmuladd.f64(double %7, double %i.cd, double %i.cc)
  store double %i.ce, ptr %i.cb, align 8, !tbaa !242
  %i.cf = getelementptr [8 x i8], ptr %i.bw, i64 %i.as ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !242
  %i.ch = extractelement <4 x double> %.lcssa952, i64 2
  %i.ci = call double @llvm.fmuladd.f64(double %7, double %i.ch, double %i.cg)
  store double %i.ci, ptr %i.cf, align 8, !tbaa !242
  %i.cj = getelementptr [8 x i8], ptr %i.bw, i64 %i.au ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !242
  %i.cl = extractelement <4 x double> %.lcssa952, i64 3
  %i.cm = call double @llvm.fmuladd.f64(double %7, double %i.cl, double %i.ck)
  store double %i.cm, ptr %i.cj, align 8, !tbaa !242
  %i.cn = add nsw i64 %.0230789.us.us, 1          ; 2 uses
  %exitcond855.not = icmp eq i64 %i.cn, %4
  br i1 %exitcond855.not, label %._crit_edge791.split.us.us, label %.lr.ph781.us.us, !llvm.loop !904

._crit_edge791.split.us.us:                       ; preds = %._crit_edge782.us.us
  %i.co = add nuw nsw i64 %.0231792.us, 4         ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.d
  br i1 %i.cp, label %.preheader663.us, label %.preheader662, !llvm.loop !905

bb.b:                                             ; preds = %.lr.ph772, %.loopexit670
  %.0247770 = phi i64 [ 0, %.lr.ph772 ], [ %i.cq, %.loopexit670 ] ; 6 uses
  %i.cq = add nuw nsw i64 %.0247770, %i.w         ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.cq) ; 4 uses
  %i.cr = icmp sgt i64 %i.f, %.0247770            ; 2 uses
  %or.cond = select i1 %i.y, i1 %i.cr, i1 false
  br i1 %or.cond, label %.preheader668, label %.preheader669

.preheader669:                                    ; preds = %._crit_edge713, %bb.b
  %brmerge.not = select i1 %i.ad, i1 %i.cr, i1 false
  br i1 %brmerge.not, label %.preheader667.lr.ph.split.us, label %.loopexit670

.preheader667.lr.ph.split.us:                     ; preds = %.preheader669
  br i1 %i.aa, label %.preheader667.us.us, label %.preheader667.lr.ph.split.us.split

.preheader667.us.us:                              ; preds = %.preheader667.lr.ph.split.us, %._crit_edge741.split.us.us.us
  %.0238758.us.us = phi i64 [ %i.hr, %._crit_edge741.split.us.us.us ], [ %i.d, %.preheader667.lr.ph.split.us ] ; 3 uses
  %i.cs = mul nsw i64 %.0238758.us.us, %.0249
  %gep738.us.us = getelementptr [8 x i8], ptr %invariant.gep737, i64 %i.cs
  br label %.lr.ph723.us.us.us

.lr.ph723.us.us.us:                               ; preds = %._crit_edge734.us.us.us, %.preheader667.us.us
  %.0237739.us.us.us = phi i64 [ %.0247770, %.preheader667.us.us ], [ %i.hp, %._crit_edge734.us.us.us ] ; 3 uses
  %i.ct = mul nsw i64 %.0237739.us.us.us, %spec.select
  %gep743.us.us.us = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ct ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %gep743.us.us.us, i32 0, i32 3, i32 1)
  %i.cu = load ptr, ptr %1, align 8, !tbaa !900
  %i.cv = load i64, ptr %i.z, align 8, !tbaa !902
  %i.cw = mul nsw i64 %i.cv, %.0238758.us.us
  %i.cx = getelementptr [8 x i8], ptr %i.cu, i64 %.0237739.us.us.us
  %i.cy = getelementptr [8 x i8], ptr %i.cx, i64 %i.cw ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cz, i32 0, i32 3, i32 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph723.us.us.us
  %.0233721.us.us.us = phi i64 [ 0, %.lr.ph723.us.us.us ], [ %i.gs, %bb.c ]
  %.0234720.us.us.us = phi ptr [ %gep738.us.us, %.lr.ph723.us.us.us ], [ %i.gq, %bb.c ] ; 9 uses
  %.0235719.us.us.us = phi ptr [ %gep743.us.us.us, %.lr.ph723.us.us.us ], [ %i.gr, %bb.c ] ; 17 uses
  %.0658718.us.us.us = phi <2 x double> [ zeroinitializer, %.lr.ph723.us.us.us ], [ %i.gp, %bb.c ]
  %.0660717.us.us.us = phi <2 x double> [ zeroinitializer, %.lr.ph723.us.us.us ], [ %i.gn, %bb.c ]
  tail call void asm sideeffect "#begin gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !906
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !907
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !908
  %i.da = load <2 x double>, ptr %.0235719.us.us.us, align 16, !tbaa !78
  %i.db = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 16
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !78
  %i.dd = load double, ptr %.0234720.us.us.us, align 8, !tbaa !242
  %i.de = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = fmul <2 x double> %i.da, %i.df
  %i.dh = fadd <2 x double> %.0660717.us.us.us, %i.dg
  %i.di = fmul <2 x double> %i.dc, %i.df
  %i.dj = fadd <2 x double> %.0658718.us.us.us, %i.di
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !909
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !910
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !911
  %i.dk = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 32
  %i.dl = load <2 x double>, ptr %i.dk, align 16, !tbaa !78
  %i.dm = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 48
  %i.dn = load <2 x double>, ptr %i.dm, align 16, !tbaa !78
  %i.do = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !242
  %i.dq = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = fmul <2 x double> %i.dl, %i.dr
  %i.dt = fadd <2 x double> %i.dh, %i.ds
  %i.du = fmul <2 x double> %i.dn, %i.dr
  %i.dv = fadd <2 x double> %i.dj, %i.du
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !912
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !913
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !914
  %i.dw = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 64
  %i.dx = load <2 x double>, ptr %i.dw, align 16, !tbaa !78
  %i.dy = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 80
  %i.dz = load <2 x double>, ptr %i.dy, align 16, !tbaa !78
  %i.ea = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 16
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !242
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = fmul <2 x double> %i.dx, %i.ed
  %i.ef = fadd <2 x double> %i.dt, %i.ee
  %i.eg = fmul <2 x double> %i.dz, %i.ed
  %i.eh = fadd <2 x double> %i.dv, %i.eg
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !915
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !916
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !917
  %i.ei = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 96
  %i.ej = load <2 x double>, ptr %i.ei, align 16, !tbaa !78
  %i.ek = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 112
  %i.el = load <2 x double>, ptr %i.ek, align 16, !tbaa !78
  %i.em = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 24
  %i.en = load double, ptr %i.em, align 8, !tbaa !242
  %i.eo = insertelement <2 x double> poison, double %i.en, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eq = fmul <2 x double> %i.ej, %i.ep
  %i.er = fadd <2 x double> %i.ef, %i.eq
  %i.es = fmul <2 x double> %i.el, %i.ep
  %i.et = fadd <2 x double> %i.eh, %i.es
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !918
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !919
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !920
  %i.eu = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 128
  %i.ev = load <2 x double>, ptr %i.eu, align 16, !tbaa !78
  %i.ew = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 144
  %i.ex = load <2 x double>, ptr %i.ew, align 16, !tbaa !78
  %i.ey = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 32
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !242
  %i.fa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = fmul <2 x double> %i.ev, %i.fb
  %i.fd = fadd <2 x double> %i.er, %i.fc
  %i.fe = fmul <2 x double> %i.ex, %i.fb
  %i.ff = fadd <2 x double> %i.et, %i.fe
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !921
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !922
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !923
  %i.fg = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 160
  %i.fh = load <2 x double>, ptr %i.fg, align 16, !tbaa !78
  %i.fi = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 176
  %i.fj = load <2 x double>, ptr %i.fi, align 16, !tbaa !78
  %i.fk = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 40
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !242
  %i.fm = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fo = fmul <2 x double> %i.fh, %i.fn
  %i.fp = fadd <2 x double> %i.fd, %i.fo
  %i.fq = fmul <2 x double> %i.fj, %i.fn
  %i.fr = fadd <2 x double> %i.ff, %i.fq
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !924
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !925
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !926
  %i.fs = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 192
  %i.ft = load <2 x double>, ptr %i.fs, align 16, !tbaa !78
  %i.fu = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 208
  %i.fv = load <2 x double>, ptr %i.fu, align 16, !tbaa !78
  %i.fw = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 48
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !242
  %i.fy = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ga = fmul <2 x double> %i.ft, %i.fz
  %i.gb = fadd <2 x double> %i.fp, %i.ga
  %i.gc = fmul <2 x double> %i.fv, %i.fz
  %i.gd = fadd <2 x double> %i.fr, %i.gc
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !927
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !928
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !929
  %i.ge = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 224
  %i.gf = load <2 x double>, ptr %i.ge, align 16, !tbaa !78
  %i.gg = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 240
  %i.gh = load <2 x double>, ptr %i.gg, align 16, !tbaa !78
  %i.gi = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 56
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !242
  %i.gk = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = fmul <2 x double> %i.gf, %i.gl
  %i.gn = fadd <2 x double> %i.gb, %i.gm          ; 3 uses
  %i.go = fmul <2 x double> %i.gh, %i.gl
  %i.gp = fadd <2 x double> %i.gd, %i.go          ; 3 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !930
  %i.gq = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 64 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 256 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !931
  %i.gs = add nuw nsw i64 %.0233721.us.us.us, 8   ; 2 uses
  %i.gt = icmp slt i64 %i.gs, %i.s
  br i1 %i.gt, label %bb.c, label %..preheader665_crit_edge.us.us.us, !llvm.loop !932

.lr.ph733.us.us.us:                               ; preds = %..preheader665_crit_edge.us.us.us, %.lr.ph733.us.us.us
  %.0232732.us.us.us = phi i64 [ %i.hg, %.lr.ph733.us.us.us ], [ %i.s, %..preheader665_crit_edge.us.us.us ]
  %.1731.us.us.us = phi ptr [ %i.he, %.lr.ph733.us.us.us ], [ %i.gq, %..preheader665_crit_edge.us.us.us ] ; 2 uses
  %.1236730.us.us.us = phi ptr [ %i.hf, %.lr.ph733.us.us.us ], [ %i.gr, %..preheader665_crit_edge.us.us.us ] ; 3 uses
  %.1659729.us.us.us = phi <2 x double> [ %i.hd, %.lr.ph733.us.us.us ], [ %i.gp, %..preheader665_crit_edge.us.us.us ]
  %.1661728.us.us.us = phi <2 x double> [ %i.hb, %.lr.ph733.us.us.us ], [ %i.gn, %..preheader665_crit_edge.us.us.us ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !933
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !934
  %i.gu = load <2 x double>, ptr %.1236730.us.us.us, align 16, !tbaa !78
  %i.gv = getelementptr inbounds nuw i8, ptr %.1236730.us.us.us, i64 16
  %i.gw = load <2 x double>, ptr %i.gv, align 16, !tbaa !78
  %i.gx = load double, ptr %.1731.us.us.us, align 8, !tbaa !242
  %i.gy = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = fmul <2 x double> %i.gu, %i.gz
  %i.hb = fadd <2 x double> %.1661728.us.us.us, %i.ha ; 2 uses
  %i.hc = fmul <2 x double> %i.gw, %i.gz
  %i.hd = fadd <2 x double> %.1659729.us.us.us, %i.hc ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !935
  %i.he = getelementptr inbounds nuw i8, ptr %.1731.us.us.us, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.1236730.us.us.us, i64 32
  %i.hg = add nuw nsw i64 %.0232732.us.us.us, 1   ; 2 uses
  %i.hh = icmp slt i64 %i.hg, %5
  br i1 %i.hh, label %.lr.ph733.us.us.us, label %._crit_edge734.us.us.us, !llvm.loop !936

._crit_edge734.us.us.us:                          ; preds = %.lr.ph733.us.us.us, %..preheader665_crit_edge.us.us.us
  %.1661.lcssa.us.us.us = phi <2 x double> [ %i.gn, %..preheader665_crit_edge.us.us.us ], [ %i.hb, %.lr.ph733.us.us.us ]
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll:bb.a
  %i.tv = fmul <2 x double> %i.su, %i.tg
  %i.tw = fadd <2 x double> %i.sm, %i.tv
  %i.tx = fmul <2 x double> %i.ss, %i.tk
  %i.ty = fadd <2 x double> %i.so, %i.tx
  %i.tz = fmul <2 x double> %i.su, %i.tk
  %i.ua = fadd <2 x double> %i.sq, %i.tz
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !954
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !955
  %i.ub = getelementptr inbounds nuw i8, ptr %.0243679, i64 224
  %i.uc = load <2 x double>, ptr %i.ub, align 16, !tbaa !78 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.0243679, i64 240
  %i.ue = load <2 x double>, ptr %i.ud, align 16, !tbaa !78 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.0241680, i64 224
  %i.ug = load double, ptr %i.uf, align 1, !tbaa !78
  %i.uh = insertelement <2 x double> poison, double %i.ug, i64 0
  %i.ui = shufflevector <2 x double> %i.uh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.0241680, i64 232
  %i.uk = load double, ptr %i.uj, align 1, !tbaa !78
  %i.ul = insertelement <2 x double> poison, double %i.uk, i64 0
  %i.um = shufflevector <2 x double> %i.ul, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.0241680, i64 240
  %i.uo = load double, ptr %i.un, align 1, !tbaa !78
  %i.up = insertelement <2 x double> poison, double %i.uo, i64 0
  %i.uq = shufflevector <2 x double> %i.up, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.0241680, i64 248
  %i.us = load double, ptr %i.ur, align 1, !tbaa !78
  %i.ut = insertelement <2 x double> poison, double %i.us, i64 0
  %i.uu = shufflevector <2 x double> %i.ut, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uv = fmul <2 x double> %i.uc, %i.ui
  %i.uw = fadd <2 x double> %i.tm, %i.uv          ; 2 uses
  %i.ux = fmul <2 x double> %i.ue, %i.ui
  %i.uy = fadd <2 x double> %i.to, %i.ux          ; 2 uses
  %i.uz = fmul <2 x double> %i.uc, %i.um
  %i.va = fadd <2 x double> %i.tq, %i.uz          ; 2 uses
  %i.vb = fmul <2 x double> %i.ue, %i.um
  %i.vc = fadd <2 x double> %i.ts, %i.vb          ; 2 uses
  %i.vd = fmul <2 x double> %i.uc, %i.uq
  %i.ve = fadd <2 x double> %i.tu, %i.vd          ; 2 uses
  %i.vf = fmul <2 x double> %i.ue, %i.uq
  %i.vg = fadd <2 x double> %i.tw, %i.vf          ; 2 uses
  %i.vh = fmul <2 x double> %i.uc, %i.uu
  %i.vi = fadd <2 x double> %i.ty, %i.vh          ; 2 uses
  %i.vj = fmul <2 x double> %i.ue, %i.uu
  %i.vk = fadd <2 x double> %i.ua, %i.vj          ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !956
  %i.vl = getelementptr inbounds nuw i8, ptr %.0241680, i64 256 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.0243679, i64 256 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !957
  %i.vn = add nuw nsw i64 %.0240681, 8            ; 2 uses
  %i.vo = icmp slt i64 %i.vn, %i.s
  br i1 %i.vo, label %.lr.ph, label %.preheader666, !llvm.loop !958

._crit_edge:                                      ; preds = %.lr.ph702, %.preheader666
  %.1657.lcssa = phi <2 x double> [ %.0656.lcssa, %.preheader666 ], [ %i.ya, %.lr.ph702 ]
  %.1655.lcssa = phi <2 x double> [ %.0654.lcssa, %.preheader666 ], [ %i.xw, %.lr.ph702 ]
  %.1653.lcssa = phi <2 x double> [ %.0652.lcssa, %.preheader666 ], [ %i.xs, %.lr.ph702 ]
  %.1651.lcssa = phi <2 x double> [ %.0650.lcssa, %.preheader666 ], [ %i.xo, %.lr.ph702 ]
  %.1645.lcssa = phi <2 x double> [ %.0644.lcssa, %.preheader666 ], [ %i.xy, %.lr.ph702 ]
  %.1643.lcssa = phi <2 x double> [ %.0642.lcssa, %.preheader666 ], [ %i.xu, %.lr.ph702 ]
  %.1641.lcssa = phi <2 x double> [ %.0640.lcssa, %.preheader666 ], [ %i.xq, %.lr.ph702 ]
  %.1638.lcssa = phi <2 x double> [ %.0637.lcssa, %.preheader666 ], [ %i.xm, %.lr.ph702 ]
  %i.vp = load <2 x double>, ptr %i.jy, align 1, !tbaa !78
  %i.vq = getelementptr inbounds nuw i8, ptr %i.jy, i64 16 ; 2 uses
  %i.vr = load <2 x double>, ptr %i.vq, align 1, !tbaa !78
  %i.vs = load <2 x double>, ptr %i.ka, align 1, !tbaa !78
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 2 uses
  %i.vu = load <2 x double>, ptr %i.vt, align 1, !tbaa !78
  %i.vv = fmul <2 x double> %i.ac, %.1638.lcssa
  %i.vw = fadd <2 x double> %i.vv, %i.vp
  %i.vx = fmul <2 x double> %i.ac, %.1651.lcssa
  %i.vy = fadd <2 x double> %i.vx, %i.vr
  %i.vz = fmul <2 x double> %i.ac, %.1641.lcssa
  %i.wa = fadd <2 x double> %i.vz, %i.vs
  %i.wb = fmul <2 x double> %i.ac, %.1653.lcssa
  %i.wc = fadd <2 x double> %i.wb, %i.vu
  store <2 x double> %i.vw, ptr %i.jy, align 1, !tbaa !78
  store <2 x double> %i.vy, ptr %i.vq, align 1, !tbaa !78
  store <2 x double> %i.wa, ptr %i.ka, align 1, !tbaa !78
  store <2 x double> %i.wc, ptr %i.vt, align 1, !tbaa !78
  %i.wd = load <2 x double>, ptr %i.kc, align 1, !tbaa !78
  %i.we = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %i.wf = load <2 x double>, ptr %i.we, align 1, !tbaa !78
  %i.wg = load <2 x double>, ptr %i.ke, align 1, !tbaa !78
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %i.wi = load <2 x double>, ptr %i.wh, align 1, !tbaa !78
  %i.wj = fmul <2 x double> %i.ac, %.1643.lcssa
  %i.wk = fadd <2 x double> %i.wj, %i.wd
  %i.wl = fmul <2 x double> %i.ac, %.1655.lcssa
  %i.wm = fadd <2 x double> %i.wl, %i.wf
  %i.wn = fmul <2 x double> %i.ac, %.1645.lcssa
  %i.wo = fadd <2 x double> %i.wn, %i.wg
  %i.wp = fmul <2 x double> %i.ac, %.1657.lcssa
  %i.wq = fadd <2 x double> %i.wp, %i.wi
  store <2 x double> %i.wk, ptr %i.kc, align 1, !tbaa !78
  store <2 x double> %i.wm, ptr %i.we, align 1, !tbaa !78
  store <2 x double> %i.wo, ptr %i.ke, align 1, !tbaa !78
  store <2 x double> %i.wq, ptr %i.wh, align 1, !tbaa !78
  %i.wr = add nuw nsw i64 %.0245711, 4            ; 2 uses
  %i.ws = icmp slt i64 %i.wr, %.sroa.speculated
  br i1 %i.ws, label %bb.e, label %._crit_edge713, !llvm.loop !959

.lr.ph702:                                        ; preds = %.preheader666, %.lr.ph702
  %.0239701 = phi i64 [ %i.yd, %.lr.ph702 ], [ %i.s, %.preheader666 ]
  %.1242700 = phi ptr [ %i.yb, %.lr.ph702 ], [ %.0241.lcssa, %.preheader666 ] ; 5 uses
  %.1244699 = phi ptr [ %i.yc, %.lr.ph702 ], [ %.0243.lcssa, %.preheader666 ] ; 3 uses
  %.1638698 = phi <2 x double> [ %i.xm, %.lr.ph702 ], [ %.0637.lcssa, %.preheader666 ]
  %.1641697 = phi <2 x double> [ %i.xq, %.lr.ph702 ], [ %.0640.lcssa, %.preheader666 ]
  %.1643696 = phi <2 x double> [ %i.xu, %.lr.ph702 ], [ %.0642.lcssa, %.preheader666 ]
  %.1645695 = phi <2 x double> [ %i.xy, %.lr.ph702 ], [ %.0644.lcssa, %.preheader666 ]
  %.1651694 = phi <2 x double> [ %i.xo, %.lr.ph702 ], [ %.0650.lcssa, %.preheader666 ]
  %.1653693 = phi <2 x double> [ %i.xs, %.lr.ph702 ], [ %.0652.lcssa, %.preheader666 ]
  %.1655692 = phi <2 x double> [ %i.xw, %.lr.ph702 ], [ %.0654.lcssa, %.preheader666 ]
  %.1657691 = phi <2 x double> [ %i.ya, %.lr.ph702 ], [ %.0656.lcssa, %.preheader666 ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !960
  %i.wt = load <2 x double>, ptr %.1244699, align 16, !tbaa !78 ; 4 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.1244699, i64 16
  %i.wv = load <2 x double>, ptr %i.wu, align 16, !tbaa !78 ; 4 uses
  %i.ww = load double, ptr %.1242700, align 1, !tbaa !78
  %i.wx = insertelement <2 x double> poison, double %i.ww, i64 0
  %i.wy = shufflevector <2 x double> %i.wx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.1242700, i64 8
  %i.xa = load double, ptr %i.wz, align 1, !tbaa !78
  %i.xb = insertelement <2 x double> poison, double %i.xa, i64 0
  %i.xc = shufflevector <2 x double> %i.xb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.1242700, i64 16
  %i.xe = load double, ptr %i.xd, align 1, !tbaa !78
  %i.xf = insertelement <2 x double> poison, double %i.xe, i64 0
  %i.xg = shufflevector <2 x double> %i.xf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.1242700, i64 24
  %i.xi = load double, ptr %i.xh, align 1, !tbaa !78
  %i.xj = insertelement <2 x double> poison, double %i.xi, i64 0
  %i.xk = shufflevector <2 x double> %i.xj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xl = fmul <2 x double> %i.wt, %i.wy
  %i.xm = fadd <2 x double> %.1638698, %i.xl      ; 2 uses
  %i.xn = fmul <2 x double> %i.wv, %i.wy
  %i.xo = fadd <2 x double> %.1651694, %i.xn      ; 2 uses
  %i.xp = fmul <2 x double> %i.wt, %i.xc
  %i.xq = fadd <2 x double> %.1641697, %i.xp      ; 2 uses
  %i.xr = fmul <2 x double> %i.wv, %i.xc
  %i.xs = fadd <2 x double> %.1653693, %i.xr      ; 2 uses
  %i.xt = fmul <2 x double> %i.wt, %i.xg
  %i.xu = fadd <2 x double> %.1643696, %i.xt      ; 2 uses
  %i.xv = fmul <2 x double> %i.wv, %i.xg
  %i.xw = fadd <2 x double> %.1655692, %i.xv      ; 2 uses
  %i.xx = fmul <2 x double> %i.wt, %i.xk
  %i.xy = fadd <2 x double> %.1645695, %i.xx      ; 2 uses
  %i.xz = fmul <2 x double> %i.wv, %i.xk
  %i.ya = fadd <2 x double> %.1657691, %i.xz      ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !961
  %i.yb = getelementptr inbounds nuw i8, ptr %.1242700, i64 32
  %i.yc = getelementptr inbounds nuw i8, ptr %.1244699, i64 32
  %i.yd = add nsw i64 %.0239701, 1                ; 2 uses
  %i.ye = icmp slt i64 %i.yd, %5
  br i1 %i.ye, label %.lr.ph702, label %._crit_edge, !llvm.loop !962

.preheader663:                                    ; preds = %.preheader663.lr.ph.split, %._crit_edge791.split
  %.0231792 = phi i64 [ %i.aap, %._crit_edge791.split ], [ 0, %.preheader663.lr.ph.split ] ; 5 uses
  %i.yf = mul nsw i64 %i.al, %.0231792
  %i.yg = or disjoint i64 %.0231792, 1
  %i.yh = mul nsw i64 %i.al, %i.yg
  %i.yi = or disjoint i64 %.0231792, 2
  %i.yj = mul nsw i64 %i.al, %i.yi
  %i.yk = or disjoint i64 %.0231792, 3
  %i.yl = mul nsw i64 %i.al, %i.yk
  br label %bb.h

.preheader662:                                    ; preds = %._crit_edge791.split, %._crit_edge791.split.us.us, %.preheader664
  %i.ym = icmp slt i64 %i.d, %6
  br i1 %i.ym, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader662
  %invariant.gep803 = getelementptr [8 x i8], ptr %2, i64 %10 ; 4 uses
  %invariant.gep805 = getelementptr [8 x i8], ptr %3, i64 %11
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yo = icmp sgt i64 %5, 0
  %i.yp = load ptr, ptr %1, align 8, !tbaa !900   ; 4 uses
  %i.yq = load i64, ptr %i.yn, align 8, !tbaa !902 ; 4 uses
  br i1 %i.yo, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %.neg = or disjoint i64 %i.d, 1
  %xtraiter984 = and i64 %6, 1
  %lcmp.mod985.not = icmp eq i64 %xtraiter984, 0
  br i1 %lcmp.mod985.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.yr = mul nsw i64 %i.yq, %i.d
  %invariant.gep810.prol = getelementptr [8 x i8], ptr %i.yp, i64 %i.yr
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.prol
  %.0226807.prol = phi i64 [ %i.r, %.preheader.prol ], [ %i.yv, %bb.f ] ; 3 uses
  %i.ys = mul nsw i64 %.0226807.prol, %spec.select
  %gep804.prol = getelementptr [8 x i8], ptr %invariant.gep803, i64 %i.ys
  call void @llvm.prefetch.p0(ptr %gep804.prol, i32 0, i32 3, i32 1)
  %gep811.prol = getelementptr [8 x i8], ptr %invariant.gep810.prol, i64 %.0226807.prol ; 2 uses
  %i.yt = load double, ptr %gep811.prol, align 8, !tbaa !242
  %i.yu = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.yt)
  store double %i.yu, ptr %gep811.prol, align 8, !tbaa !242
  %i.yv = add nsw i64 %.0226807.prol, 1           ; 2 uses
  %exitcond856.not.prol = icmp eq i64 %i.yv, %4
  br i1 %exitcond856.not.prol, label %._crit_edge809.split.prol, label %bb.f, !llvm.loop !963

._crit_edge809.split.prol:                        ; preds = %bb.f
  %i.yw = or disjoint i64 %i.d, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %._crit_edge809.split.prol, %.preheader.preheader
  %.0227812.unr = phi i64 [ %i.d, %.preheader.preheader ], [ %i.yw, %._crit_edge809.split.prol ]
  %i.yx = icmp eq i64 %6, %.neg
  br i1 %i.yx, label %.loopexit, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %xtraiter987 = and i64 %5, 3                    ; 3 uses
  %i.yy = icmp ult i64 %5, 4
  %unroll_iter991 = and i64 %5, 9223372036854775804
  %lcmp.mod988.not = icmp eq i64 %xtraiter987, 0
  %lcmp.mod990 = icmp ne i64 %xtraiter987, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge809.split.us.us
  %.0227812.us = phi i64 [ %i.aao, %._crit_edge809.split.us.us ], [ %i.d, %.preheader.us.preheader ] ; 3 uses
  %i.yz = mul nsw i64 %.0227812.us, %.0249
  %gep806.us = getelementptr [8 x i8], ptr %invariant.gep805, i64 %i.yz ; 5 uses
  %i.za = mul nsw i64 %i.yq, %.0227812.us
  %invariant.gep810.us = getelementptr [8 x i8], ptr %i.yp, i64 %i.za
  br label %.lr.ph800.us.us

.lr.ph800.us.us:                                  ; preds = %._crit_edge801.us.us, %.preheader.us
  %.0226807.us.us = phi i64 [ %i.r, %.preheader.us ], [ %i.aan, %._crit_edge801.us.us ] ; 3 uses
  %i.zb = mul nsw i64 %.0226807.us.us, %spec.select
  %gep804.us.us = getelementptr [8 x i8], ptr %invariant.gep803, i64 %i.zb ; 6 uses
  call void @llvm.prefetch.p0(ptr %gep804.us.us, i32 0, i32 3, i32 1)
  br i1 %i.yy, label %.epil.preheader986, label %.lr.ph800.us.us.new

.lr.ph800.us.us.new:                              ; preds = %.lr.ph800.us.us, %.lr.ph800.us.us.new
  %.0798.us.us = phi i64 [ %i.aad, %.lr.ph800.us.us.new ], [ 0, %.lr.ph800.us.us ] ; 6 uses
  %.0639797.us.us = phi double [ %i.aac, %.lr.ph800.us.us.new ], [ 0.000000e+00, %.lr.ph800.us.us ]
  %niter992 = phi i64 [ %niter992.next.3, %.lr.ph800.us.us.new ], [ 0, %.lr.ph800.us.us ]
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %gep804.us.us, i64 %.0798.us.us
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !242
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %gep806.us, i64 %.0798.us.us
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !242
  %i.zg = fmul double %i.zd, %i.zf
  %i.zh = fadd double %.0639797.us.us, %i.zg
  %i.zi = or disjoint i64 %.0798.us.us, 1         ; 2 uses
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %gep804.us.us, i64 %i.zi
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !242
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %gep806.us, i64 %i.zi
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !242
  %i.zn = fmul double %i.zk, %i.zm
  %i.zo = fadd double %i.zh, %i.zn
  %i.zp = or disjoint i64 %.0798.us.us, 2         ; 2 uses
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %gep804.us.us, i64 %i.zp
  %i.zr = load double, ptr %i.zq, align 8, !tbaa !242
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %gep806.us, i64 %i.zp
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !242
  %i.zu = fmul double %i.zr, %i.zt
  %i.zv = fadd double %i.zo, %i.zu
  %i.zw = or disjoint i64 %.0798.us.us, 3         ; 2 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %gep804.us.us, i64 %i.zw
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !242
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %gep806.us, i64 %i.zw
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !242
  %i.aab = fmul double %i.zy, %i.aaa
  %i.aac = fadd double %i.zv, %i.aab              ; 3 uses
  %i.aad = add nuw nsw i64 %.0798.us.us, 4        ; 2 uses
  %niter992.next.3 = add nuw nsw i64 %niter992, 4 ; 2 uses
  %niter992.ncmp.3 = icmp eq i64 %niter992.next.3, %unroll_iter991
  br i1 %niter992.ncmp.3, label %._crit_edge801.us.us.unr-lcssa, label %.lr.ph800.us.us.new, !llvm.loop !964

._crit_edge801.us.us.unr-lcssa:                   ; preds = %.lr.ph800.us.us.new
  br i1 %lcmp.mod988.not, label %._crit_edge801.us.us, label %.epil.preheader986

.epil.preheader986:                               ; preds = %._crit_edge801.us.us.unr-lcssa, %.lr.ph800.us.us
  %.0798.us.us.epil.init = phi i64 [ 0, %.lr.ph800.us.us ], [ %i.aad, %._crit_edge801.us.us.unr-lcssa ]
  %.0639797.us.us.epil.init = phi double [ 0.000000e+00, %.lr.ph800.us.us ], [ %i.aac, %._crit_edge801.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod990)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader986
  %.0798.us.us.epil = phi i64 [ %.0798.us.us.epil.init, %.epil.preheader986 ], [ %i.aak, %bb.g ] ; 3 uses
  %.0639797.us.us.epil = phi double [ %.0639797.us.us.epil.init, %.epil.preheader986 ], [ %i.aaj, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader986 ], [ %epil.iter.next, %bb.g ]
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %gep804.us.us, i64 %.0798.us.us.epil
  %i.aaf = load double, ptr %i.aae, align 8, !tbaa !242
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %gep806.us, i64 %.0798.us.us.epil
  %i.aah = load double, ptr %i.aag, align 8, !tbaa !242
  %i.aai = fmul double %i.aaf, %i.aah
  %i.aaj = fadd double %.0639797.us.us.epil, %i.aai ; 2 uses
  %i.aak = add nuw nsw i64 %.0798.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter987
  br i1 %epil.iter.cmp.not, label %._crit_edge801.us.us, label %bb.g, !llvm.loop !965

._crit_edge801.us.us:                             ; preds = %bb.g, %._crit_edge801.us.us.unr-lcssa
  %.lcssa = phi double [ %i.aac, %._crit_edge801.us.us.unr-lcssa ], [ %i.aaj, %bb.g ]
  %gep811.us.us = getelementptr [8 x i8], ptr %invariant.gep810.us, i64 %.0226807.us.us ; 2 uses
  %i.aal = load double, ptr %gep811.us.us, align 8, !tbaa !242
  %i.aam = call double @llvm.fmuladd.f64(double %7, double %.lcssa, double %i.aal)
  store double %i.aam, ptr %gep811.us.us, align 8, !tbaa !242
  %i.aan = add nsw i64 %.0226807.us.us, 1         ; 2 uses
  %exitcond859.not = icmp eq i64 %i.aan, %4
  br i1 %exitcond859.not, label %._crit_edge809.split.us.us, label %.lr.ph800.us.us, !llvm.loop !963

._crit_edge809.split.us.us:                       ; preds = %._crit_edge801.us.us
  %i.aao = add nsw i64 %.0227812.us, 1            ; 2 uses
  %exitcond856.not.a = icmp eq i64 %i.aao, %6
  br i1 %exitcond856.not.a, label %.loopexit, label %.preheader.us, !llvm.loop !966

._crit_edge791.split:                             ; preds = %bb.h
  %i.aap = add nuw nsw i64 %.0231792, 4           ; 2 uses
  %i.aaq = icmp slt i64 %i.aap, %i.d
  br i1 %i.aaq, label %.preheader663, label %.preheader662, !llvm.loop !905

bb.h:                                             ; preds = %.preheader663, %bb.h
  %.0230789 = phi i64 [ %i.r, %.preheader663 ], [ %i.abf, %bb.h ] ; 3 uses
  %i.aar = mul nsw i64 %.0230789, %spec.select
  %gep788 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.aar
  call void @llvm.prefetch.p0(ptr %gep788, i32 0, i32 3, i32 1)
  %i.aas = getelementptr [8 x i8], ptr %i.ak, i64 %.0230789 ; 4 uses
  %i.aat = getelementptr [8 x i8], ptr %i.aas, i64 %i.yf ; 2 uses
  %i.aau = load double, ptr %i.aat, align 8, !tbaa !242
  %i.aav = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.aau)
  store double %i.aav, ptr %i.aat, align 8, !tbaa !242
  %i.aaw = getelementptr [8 x i8], ptr %i.aas, i64 %i.yh ; 2 uses
  %i.aax = load double, ptr %i.aaw, align 8, !tbaa !242
  %i.aay = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.aax)
  store double %i.aay, ptr %i.aaw, align 8, !tbaa !242
  %i.aaz = getelementptr [8 x i8], ptr %i.aas, i64 %i.yj ; 2 uses
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !242
  %i.abb = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.aba)
  store double %i.abb, ptr %i.aaz, align 8, !tbaa !242
  %i.abc = getelementptr [8 x i8], ptr %i.aas, i64 %i.yl ; 2 uses
  %i.abd = load double, ptr %i.abc, align 8, !tbaa !242
  %i.abe = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.abd)
  store double %i.abe, ptr %i.abc, align 8, !tbaa !242
  %i.abf = add nsw i64 %.0230789, 1               ; 2 uses
  %exitcond853.not = icmp eq i64 %i.abf, %4
  br i1 %exitcond853.not, label %._crit_edge791.split, label %bb.h, !llvm.loop !904

.preheader:                                       ; preds = %.preheader.prol.loopexit, %._crit_edge809.split.1
  %.0227812 = phi i64 [ %i.abn, %._crit_edge809.split.1 ], [ %.0227812.unr, %.preheader.prol.loopexit ] ; 3 uses
  %i.abg = mul nsw i64 %i.yq, %.0227812
  %invariant.gep810 = getelementptr [8 x i8], ptr %i.yp, i64 %i.abg
  br label %bb.j

._crit_edge809.split:                             ; preds = %bb.j
  %i.abh = add nsw i64 %.0227812, 1
  %i.abi = mul nsw i64 %i.yq, %i.abh
  %invariant.gep810.1 = getelementptr [8 x i8], ptr %i.yp, i64 %i.abi
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge809.split
  %.0226807.1 = phi i64 [ %i.r, %._crit_edge809.split ], [ %i.abm, %bb.i ] ; 3 uses
  %i.abj = mul nsw i64 %.0226807.1, %spec.select
  %gep804.1 = getelementptr [8 x i8], ptr %invariant.gep803, i64 %i.abj
  call void @llvm.prefetch.p0(ptr %gep804.1, i32 0, i32 3, i32 1)
  %gep811.1 = getelementptr [8 x i8], ptr %invariant.gep810.1, i64 %.0226807.1 ; 2 uses
  %i.abk = load double, ptr %gep811.1, align 8, !tbaa !242
  %i.abl = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.abk)
  store double %i.abl, ptr %gep811.1, align 8, !tbaa !242
  %i.abm = add nsw i64 %.0226807.1, 1             ; 2 uses
  %exitcond856.not.1 = icmp eq i64 %i.abm, %4
  br i1 %exitcond856.not.1, label %._crit_edge809.split.1, label %bb.i, !llvm.loop !963

._crit_edge809.split.1:                           ; preds = %bb.i
  %i.abn = add nsw i64 %.0227812, 2               ; 2 uses
  %exitcond854.not.1 = icmp eq i64 %i.abn, %6
  br i1 %exitcond854.not.1, label %.loopexit, label %.preheader, !llvm.loop !966

bb.j:                                             ; preds = %.preheader, %bb.j
  %.0226807 = phi i64 [ %i.r, %.preheader ], [ %i.abr, %bb.j ] ; 3 uses
  %i.abo = mul nsw i64 %.0226807, %spec.select
  %gep804 = getelementptr [8 x i8], ptr %invariant.gep803, i64 %i.abo
  call void @llvm.prefetch.p0(ptr %gep804, i32 0, i32 3, i32 1)
  %gep811 = getelementptr [8 x i8], ptr %invariant.gep810, i64 %.0226807 ; 2 uses
  %i.abp = load double, ptr %gep811, align 8, !tbaa !242
  %i.abq = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.abp)
  store double %i.abq, ptr %gep811, align 8, !tbaa !242
  %i.abr = add nsw i64 %.0226807, 1               ; 2 uses
  %exitcond856.not = icmp eq i64 %i.abr, %4
  br i1 %exitcond856.not, label %._crit_edge809.split, label %bb.j, !llvm.loop !963

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %._crit_edge809.split.1, %._crit_edge809.split.us.us, %.preheader662, %._crit_edge773
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, double noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #34 comdat align 2 {
bb.a:
  %i.a = icmp slt i64 %5, %6
  br i1 %i.a, label %.preheader320.lr.ph, label %._crit_edge379

.preheader320.lr.ph:                              ; preds = %bb.a
  %i.b = icmp sgt i64 %16, 0
  %.idx132 = shl i64 %9, 4
  %invariant.gep380 = getelementptr i8, ptr %2, i64 %.idx132 ; 2 uses
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
  %invariant.gep373 = getelementptr [8 x i8], ptr %3, i64 %10
  %i.i = icmp slt i64 %16, %14
  br label %.preheader320

.preheader320:                                    ; preds = %.preheader320.lr.ph, %._crit_edge377
  %.0127378 = phi i64 [ %5, %.preheader320.lr.ph ], [ %i.kf, %._crit_edge377 ] ; 5 uses
  br i1 %i.b, label %.lr.ph356, label %.preheader319

.lr.ph356:                                        ; preds = %.preheader320
  %i.j = mul nsw i64 %.0127378, %7
  %gep381 = getelementptr [8 x i8], ptr %invariant.gep380, i64 %i.j ; 3 uses
  br label %bb.b

._crit_edge379:                                   ; preds = %._crit_edge377, %bb.a
  ret void

.preheader319:                                    ; preds = %._crit_edge350, %.preheader320
  br i1 %i.i, label %.lr.ph376, label %._crit_edge377

.lr.ph376:                                        ; preds = %.preheader319
  %i.k = mul nsw i64 %.0127378, %7
  %gep383 = getelementptr [8 x i8], ptr %invariant.gep380, i64 %i.k ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph356, %._crit_edge350
  %.0126355 = phi i64 [ 0, %.lr.ph356 ], [ %i.jc, %._crit_edge350 ] ; 6 uses
  tail call void @llvm.prefetch.p0(ptr %gep381, i32 0, i32 3, i32 1)
  %i.l = load ptr, ptr %1, align 8, !tbaa !900
  %i.m = load i64, ptr %i.c, align 8, !tbaa !902  ; 4 uses
  %i.n = mul nsw i64 %i.m, %.0126355
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %.0127378 ; 4 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.n ; 3 uses
  %i.q = or disjoint i64 %.0126355, 1
  %i.r = mul nsw i64 %i.m, %i.q
  %i.s = getelementptr [8 x i8], ptr %i.o, i64 %i.r ; 3 uses
  %i.t = or disjoint i64 %.0126355, 2
  %i.u = mul nsw i64 %i.m, %i.t
  %i.v = getelementptr [8 x i8], ptr %i.o, i64 %i.u ; 3 uses
  %i.w = or disjoint i64 %.0126355, 3
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
  %i.ad = mul nsw i64 %.0126355, %8
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ad ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %gep, i32 0, i32 3, i32 1)
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ae = fadd <2 x double> %i.if, %i.hf
  %i.af = fadd <2 x double> %i.ih, %i.hh
  %i.ag = fadd <2 x double> %i.ij, %i.hj
  %i.ah = fadd <2 x double> %i.il, %i.hl
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.0124.lcssa = phi ptr [ %gep381, %bb.b ], [ %i.in, %._crit_edge.loopexit ]
  %.0122.lcssa = phi ptr [ %gep, %bb.b ], [ %i.im, %._crit_edge.loopexit ]
  %i.ai = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.ae, %._crit_edge.loopexit ] ; 2 uses
  %i.aj = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.af, %._crit_edge.loopexit ] ; 2 uses
  %i.ak = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.ag, %._crit_edge.loopexit ] ; 2 uses
  %i.al = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.ah, %._crit_edge.loopexit ] ; 2 uses
  br i1 %i.f, label %.lr.ph349, label %._crit_edge350

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0121331 = phi i64 [ %i.io, %.lr.ph ], [ 0, %bb.b ]
  %.0122330 = phi ptr [ %i.im, %.lr.ph ], [ %gep, %bb.b ] ; 35 uses
  %.0124329 = phi ptr [ %i.in, %.lr.ph ], [ %gep381, %bb.b ] ; 9 uses
  %.0305328 = phi <2 x double> [ %i.hf, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0307327 = phi <2 x double> [ %i.hh, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0309326 = phi <2 x double> [ %i.hj, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0311325 = phi <2 x double> [ %i.hl, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0315324 = phi <2 x double> [ %i.if, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0316323 = phi <2 x double> [ %i.ih, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0317322 = phi <2 x double> [ %i.ij, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0318321 = phi <2 x double> [ %i.il, %.lr.ph ], [ zeroinitializer, %bb.b ]
  tail call void asm sideeffect "#begin gebp micro kernel 1/half/quarterX4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !967
  %i.am = getelementptr inbounds nuw i8, ptr %.0122330, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.am, i32 0, i32 3, i32 1)
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !968
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !969
  %i.an = load <2 x double>, ptr %.0124329, align 16, !tbaa !78 ; 4 uses
  %i.ao = load double, ptr %.0122330, align 1, !tbaa !78
  %i.ap = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.0122330, i64 8
  %i.as = load double, ptr %i.ar, align 1, !tbaa !78
  %i.at = insertelement <2 x double> poison, double %i.as, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = getelementptr inbounds nuw i8, ptr %.0122330, i64 16
  %i.aw = load double, ptr %i.av, align 1, !tbaa !78
  %i.ax = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = getelementptr inbounds nuw i8, ptr %.0122330, i64 24
  %i.ba = load double, ptr %i.az, align 1, !tbaa !78
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x double> %i.an, %i.aq
  %i.be = fadd <2 x double> %.0305328, %i.bd
  %i.bf = fmul <2 x double> %i.an, %i.au
  %i.bg = fadd <2 x double> %.0307327, %i.bf
  %i.bh = fmul <2 x double> %i.an, %i.ay
  %i.bi = fadd <2 x double> %.0309326, %i.bh
  %i.bj = fmul <2 x double> %i.an, %i.bc
  %i.bk = fadd <2 x double> %.0311325, %i.bj
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !970
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !968
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !969
  %i.bl = getelementptr inbounds nuw i8, ptr %.0124329, i64 16
  %i.bm = load <2 x double>, ptr %i.bl, align 16, !tbaa !78 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0122330, i64 32
  %i.bo = load double, ptr %i.bn, align 1, !tbaa !78
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = getelementptr inbounds nuw i8, ptr %.0122330, i64 40
  %i.bs = load double, ptr %i.br, align 1, !tbaa !78
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = getelementptr inbounds nuw i8, ptr %.0122330, i64 48
  %i.bw = load double, ptr %i.bv, align 1, !tbaa !78
  %i.bx = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = getelementptr inbounds nuw i8, ptr %.0122330, i64 56
  %i.ca = load double, ptr %i.bz, align 1, !tbaa !78
  %i.cb = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x double> %i.bm, %i.bq
  %i.ce = fadd <2 x double> %.0315324, %i.cd
  %i.cf = fmul <2 x double> %i.bm, %i.bu
  %i.cg = fadd <2 x double> %.0316323, %i.cf
  %i.ch = fmul <2 x double> %i.bm, %i.by
  %i.ci = fadd <2 x double> %.0317322, %i.ch
  %i.cj = fmul <2 x double> %i.bm, %i.cc
  %i.ck = fadd <2 x double> %.0318321, %i.cj
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !970
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !968
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !969
  %i.cl = getelementptr inbounds nuw i8, ptr %.0124329, i64 32
  %i.cm = load <2 x double>, ptr %i.cl, align 16, !tbaa !78 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0122330, i64 64
  %i.co = load double, ptr %i.cn, align 1, !tbaa !78
  %i.cp = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = getelementptr inbounds nuw i8, ptr %.0122330, i64 72
  %i.cs = load double, ptr %i.cr, align 1, !tbaa !78
  %i.ct = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = getelementptr inbounds nuw i8, ptr %.0122330, i64 80
  %i.cw = load double, ptr %i.cv, align 1, !tbaa !78
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = getelementptr inbounds nuw i8, ptr %.0122330, i64 88
  %i.da = load double, ptr %i.cz, align 1, !tbaa !78
  %i.db = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x double> %i.cm, %i.cq
  %i.de = fadd <2 x double> %i.be, %i.dd
  %i.df = fmul <2 x double> %i.cm, %i.cu
  %i.dg = fadd <2 x double> %i.bg, %i.df
  %i.dh = fmul <2 x double> %i.cm, %i.cy
  %i.di = fadd <2 x double> %i.bi, %i.dh
  %i.dj = fmul <2 x double> %i.cm, %i.dc
  %i.dk = fadd <2 x double> %i.bk, %i.dj
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !970
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !968
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !969
  %i.dl = getelementptr inbounds nuw i8, ptr %.0124329, i64 48
  %i.dm = load <2 x double>, ptr %i.dl, align 16, !tbaa !78 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0122330, i64 96
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi1ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  br label %bb.aj

bb.ab:                                            ; preds = %bb.w
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  br label %bb.aj

bb.ac:                                            ; preds = %bb.x
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #42
  br label %bb.aj

bb.ad:                                            ; preds = %bb.y, %bb.v
  %i.dc = add nsw i64 %.0125293, %.sroa.speculated220 ; 2 uses
  %i.dd = icmp slt i64 %i.dc, %smin314
  %indvar.next306 = add i64 %indvar305, 1
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated220
  br i1 %i.dd, label %.lr.ph295, label %.preheader, !llvm.loop !1031

._crit_edge298:                                   ; preds = %bb.ag, %.preheader
  %i.de = sub nsw i64 %.0126301, %i.b             ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.df, label %bb.q, label %._crit_edge304, !llvm.loop !1032

bb.ae:                                            ; preds = %.lr.ph297, %bb.ag
  %.0296 = phi i64 [ %.0126301, %.lr.ph297 ], [ %i.dg, %bb.ag ] ; 4 uses
  %i.dg = add nsw i64 %.0296, %.sroa.speculated226 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.dg)
  %i.dh = sub nsw i64 %.sroa.speculated, %.0296   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #42
  %gep300 = getelementptr [8 x i8], ptr %invariant.gep299, i64 %.0296
  store ptr %gep300, ptr %22, align 8
  store i64 %4, ptr %i.au, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %smin314, i64 noundef %i.dh, i64 noundef 0, i64 noundef 0)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #42
  %i.di = getelementptr [8 x i8], ptr %7, i64 %.0296
  store ptr %i.di, ptr %23, align 8
  store i64 %9, ptr %i.av, align 8
  %i.dj = load double, ptr %10, align 8, !tbaa !242
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %i.dh, i64 noundef %smin314, i64 noundef %1, double noundef %i.dj, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  %i.dk = icmp slt i64 %i.dg, %0
  br i1 %i.dk, label %bb.ae, label %._crit_edge298, !llvm.loop !1033

bb.ah:                                            ; preds = %bb.ae
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #42
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.z, %bb.aa, %bb.ac, %bb.ab, %bb.s
  %.pn150.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.s ], [ %i.da, %bb.ab ], [ %i.cy, %bb.z ], [ %i.dl, %bb.ah ], [ %i.cz, %bb.aa ], [ %i.dm, %bb.ai ], [ %i.db, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br i1 %i.ag, label %bb.ak, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.ae) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197: ; preds = %bb.aj, %bb.ak, %bb.p, %bb.o
  %.pn150.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.o ], [ %i.be, %bb.p ], [ %.pn150.pn.pn, %bb.ak ], [ %.pn150.pn.pn, %bb.aj ]
  br i1 %i.s, label %bb.al, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit198

bb.al:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197
  call void @free(ptr noundef %i.q) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit198

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit198: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197, %bb.al
  resume { ptr, i32 } %.pn150.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1034
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
  %i.l = load ptr, ptr %2, align 8, !tbaa !703
  %i.m = load i64, ptr %i.j, align 8, !tbaa !705
  %i.n = mul nsw i64 %i.m, %.05466.us             ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %.05568.us ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load <2 x double>, ptr %i.p, align 1, !tbaa !78
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.n
  %i.t = load <2 x double>, ptr %i.s, align 1, !tbaa !78
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %.15765.us ; 2 uses
  store <2 x double> %i.q, ptr %i.u, align 16, !tbaa !78
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x double> %i.t, ptr %i.v, align 16, !tbaa !78
  %i.w = or disjoint i64 %.05466.us, 1
  %i.x = load ptr, ptr %2, align 8, !tbaa !703
  %i.y = load i64, ptr %i.j, align 8, !tbaa !705
  %i.z = mul nsw i64 %i.y, %i.w                   ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.x, i64 %.05568.us ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load <2 x double>, ptr %i.ab, align 1, !tbaa !78
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.af = load <2 x double>, ptr %i.ae, align 1, !tbaa !78
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %.15765.us ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  store <2 x double> %i.ac, ptr %i.ah, align 16, !tbaa !78
  %i.ai = getelementptr i8, ptr %i.ag, i64 48
  store <2 x double> %i.af, ptr %i.ai, align 16, !tbaa !78
  %i.aj = add nsw i64 %.15765.us, 8               ; 3 uses
  %i.ak = add nuw nsw i64 %.05466.us, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader64.us.new, !llvm.loop !1035

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader64.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader64.us
  %.05466.us.epil.init = phi i64 [ 0, %.preheader64.us ], [ %i.ak, %._crit_edge.us.unr-lcssa ]
  %.15765.us.epil.init = phi i64 [ %.05667.us, %.preheader64.us ], [ %i.aj, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod123)
  %i.al = load ptr, ptr %2, align 8, !tbaa !703
  %i.am = load i64, ptr %i.j, align 8, !tbaa !705
  %i.an = mul nsw i64 %i.am, %.05466.us.epil.init ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %.05568.us ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !78
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.an
  %i.at = load <2 x double>, ptr %i.as, align 1, !tbaa !78
  %i.au = getelementptr inbounds [8 x i8], ptr %1, i64 %.15765.us.epil.init ; 2 uses
  store <2 x double> %i.aq, ptr %i.au, align 16, !tbaa !78
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <2 x double> %i.at, ptr %i.av, align 16, !tbaa !78
  %i.aw = add nsw i64 %.15765.us.epil.init, 4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa120 = phi i64 [ %i.aj, %._crit_edge.us.unr-lcssa ], [ %i.aw, %.epil.preheader ] ; 2 uses
  %i.ax = add nuw nsw i64 %.05568.us, 4           ; 3 uses
  %i.ay = icmp slt i64 %i.ax, %i.c
  br i1 %i.ay, label %.preheader64.us, label %.preheader63, !llvm.loop !1036

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
  %i.bi = load ptr, ptr %2, align 8, !tbaa !703
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !705
  %i.bk = mul nsw i64 %i.bj, %.05373.us
  %i.bl = getelementptr [8 x i8], ptr %i.bi, i64 %.175.us
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load <2 x double>, ptr %i.bm, align 1, !tbaa !78
  %i.bo = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us
  store <2 x double> %i.bn, ptr %i.bo, align 16, !tbaa !78
  %i.bp = or disjoint i64 %.05373.us, 1
  %i.bq = load ptr, ptr %2, align 8, !tbaa !703
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !705
  %i.bs = mul nsw i64 %i.br, %i.bp
  %i.bt = getelementptr [8 x i8], ptr %i.bq, i64 %.175.us
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load <2 x double>, ptr %i.bu, align 1, !tbaa !78
  %i.bw = getelementptr [8 x i8], ptr %1, i64 %.372.us
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store <2 x double> %i.bv, ptr %i.bx, align 16, !tbaa !78
  %i.by = add nsw i64 %.372.us, 4                 ; 3 uses
  %i.bz = add nuw nsw i64 %.05373.us, 2           ; 2 uses
  %niter130.next.1 = add nuw nsw i64 %niter130, 2 ; 2 uses
  %niter130.ncmp.1 = icmp eq i64 %niter130.next.1, %unroll_iter129
  br i1 %niter130.ncmp.1, label %._crit_edge.us78.unr-lcssa, label %.preheader62.us.new, !llvm.loop !1037

._crit_edge.us78.unr-lcssa:                       ; preds = %.preheader62.us.new
  br i1 %lcmp.mod126.not, label %._crit_edge.us78, label %.epil.preheader124

.epil.preheader124:                               ; preds = %._crit_edge.us78.unr-lcssa, %.preheader62.us
  %.05373.us.epil.init = phi i64 [ 0, %.preheader62.us ], [ %i.bz, %._crit_edge.us78.unr-lcssa ]
  %.372.us.epil.init = phi i64 [ %.25874.us, %.preheader62.us ], [ %i.by, %._crit_edge.us78.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.ca = load ptr, ptr %2, align 8, !tbaa !703
  %i.cb = load i64, ptr %i.bb, align 8, !tbaa !705
  %i.cc = mul nsw i64 %i.cb, %.05373.us.epil.init
  %i.cd = getelementptr [8 x i8], ptr %i.ca, i64 %.175.us
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !78
  %i.cg = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us.epil.init
  store <2 x double> %i.cf, ptr %i.cg, align 16, !tbaa !78
  %i.ch = add nsw i64 %.372.us.epil.init, 2
  br label %._crit_edge.us78

._crit_edge.us78:                                 ; preds = %._crit_edge.us78.unr-lcssa, %.epil.preheader124
  %.lcssa118 = phi i64 [ %i.by, %._crit_edge.us78.unr-lcssa ], [ %i.ch, %.epil.preheader124 ] ; 2 uses
  %i.ci = add nuw nsw i64 %.175.us, 2             ; 3 uses
  %i.cj = icmp slt i64 %i.ci, %i.g
  br i1 %i.cj, label %.preheader62.us, label %.preheader61, !llvm.loop !1038

.preheader61:                                     ; preds = %._crit_edge.us78, %.preheader62.preheader, %.preheader63
  %.258.lcssa = phi i64 [ %.056.lcssa, %.preheader63 ], [ %.056.lcssa, %.preheader62.preheader ], [ %.lcssa118, %._crit_edge.us78 ]
  %.1.lcssa = phi i64 [ %.055.lcssa, %.preheader63 ], [ %i.bh, %.preheader62.preheader ], [ %i.ci, %._crit_edge.us78 ] ; 3 uses
  %i.ck = icmp slt i64 %.1.lcssa, %4
  %i.cl = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge86.split

.preheader.lr.ph.split:                           ; preds = %.preheader61
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %2, align 8, !tbaa !703   ; 2 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !705 ; 6 uses
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
  %wide.load = load <2 x double>, ptr %i.da, align 8, !tbaa !242
  %wide.load114 = load <2 x double>, ptr %i.db, align 8, !tbaa !242
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x double> %wide.load, ptr %i.dc, align 8, !tbaa !242
  store <2 x double> %wide.load114, ptr %i.dd, align 8, !tbaa !242
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !1039

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
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !242
  %i.di = add nsw i64 %.582.prol, 1               ; 3 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %1, i64 %.582.prol
  store double %i.dh, ptr %i.dj, align 8, !tbaa !242
  %i.dk = add nuw nsw i64 %.083.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter131
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1040

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
  br i1 %exitcond98.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !1041

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.083 = phi i64 [ %i.el, %scalar.ph ], [ %.083.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.582 = phi i64 [ %i.ei, %scalar.ph ], [ %.582.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.do = mul nsw i64 %i.cp, %.083
  %i.dp = getelementptr [8 x i8], ptr %i.cq, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !242
  %i.dr = getelementptr inbounds [8 x i8], ptr %1, i64 %.582
  store double %i.dq, ptr %i.dr, align 8, !tbaa !242
  %i.ds = add nuw nsw i64 %.083, 1
  %i.dt = mul nsw i64 %i.cp, %i.ds
  %i.du = getelementptr [8 x i8], ptr %i.cq, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !242
  %i.dw = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  store double %i.dv, ptr %i.dx, align 8, !tbaa !242
  %i.dy = add nuw nsw i64 %.083, 2
  %i.dz = mul nsw i64 %i.cp, %i.dy
  %i.ea = getelementptr [8 x i8], ptr %i.cq, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !242
  %i.ec = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  store double %i.eb, ptr %i.ed, align 8, !tbaa !242
  %i.ee = add nuw nsw i64 %.083, 3
  %i.ef = mul nsw i64 %i.cp, %i.ee
  %i.eg = getelementptr [8 x i8], ptr %i.cq, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !242
  %i.ei = add nsw i64 %.582, 4                    ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  store double %i.eh, ptr %i.ek, align 8, !tbaa !242
  %i.el = add nuw nsw i64 %.083, 4                ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %i.el, %3
  br i1 %exitcond97.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1042

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader61
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_product_implILi5ELb1EKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELb0ES4_Lb0EE3runIS5_EEvRT_RS6_RKS4_RKNS9_6ScalarE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
