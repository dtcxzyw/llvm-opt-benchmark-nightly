Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/snap_to_fixed_up?download=true
inline.NumInlined: 18317
inline.NumDeleted: 9926
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi1EEELi8ELi4EDv4_fLi1ELb0ELb0EEclEPfRKS3_llll:bb.a
  %i.hs = add nsw i64 %.9193, 4                   ; 2 uses
  %i.ht = getelementptr [4 x i8], ptr %1, i64 %.9193
  %i.hu = getelementptr i8, ptr %i.ht, i64 12
  store float %i.hr, ptr %i.hu, align 4, !tbaa !9
  %i.hv = add nuw nsw i64 %.0194, 4               ; 2 uses
  %exitcond218.not.3 = icmp eq i64 %i.hv, %3
  br i1 %exitcond218.not.3, label %._crit_edge196, label %scalar.ph, !llvm.loop !754

._crit_edge199.split:                             ; preds = %._crit_edge196, %._crit_edge.1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, float noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %12 = alloca %"struct.Eigen::internal::lhs_process_one_packet", align 1 ; 3 uses
  %i.a = icmp eq i64 %8, -1
  %spec.select = select i1 %i.a, i64 %5, i64 %8   ; 11 uses
  %i.b = icmp eq i64 %9, -1
  %.0259 = select i1 %i.b, i64 %5, i64 %9         ; 7 uses
  %i.c = sdiv i64 %6, 4
  %i.d = shl nsw i64 %i.c, 2                      ; 14 uses
  %i.e = sdiv i64 %4, 8
  %i.f = shl nsw i64 %i.e, 3                      ; 6 uses
  %i.g = sub nsw i64 %4, %i.f
  %i.h = sdiv i64 %i.g, 4
  %i.i = shl nsw i64 %i.h, 2
  %i.j = add nsw i64 %i.i, %i.f                   ; 3 uses
  %i.k = sub nsw i64 %4, %i.j
  %i.l = sdiv i64 %i.k, 4
  %i.m = shl nsw i64 %i.l, 2
  %i.n = add nsw i64 %i.m, %i.j                   ; 2 uses
  %i.o = sub nsw i64 %4, %i.n
  %i.p = sdiv i64 %i.o, 4
  %i.q = shl nsw i64 %i.p, 2
  %i.r = add nsw i64 %i.q, %i.n                   ; 7 uses
  %i.s = and i64 %5, -8                           ; 7 uses
  %i.t = shl i64 %5, 4
  %i.u = sub i64 32640, %i.t
  %i.v = shl i64 %5, 5
  %i.w = udiv i64 %i.u, %i.v
  %.sroa.speculated633 = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = shl nuw nsw i64 %.sroa.speculated633, 3
  %i.y = icmp sgt i64 %4, 7
  br i1 %i.y, label %.lr.ph791, label %._crit_edge792

.lr.ph791:                                        ; preds = %bb.a
  %i.z = icmp sgt i64 %6, 3
  %.idx269 = shl i64 %10, 5
  %invariant.gep = getelementptr i8, ptr %2, i64 %.idx269 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.idx270 = shl i64 %11, 4
  %invariant.gep734 = getelementptr i8, ptr %3, i64 %.idx270
  %i.ab = icmp sgt i64 %5, 7                      ; 2 uses
  %.not = icmp eq i64 %i.s, %5                    ; 3 uses
  %i.ac = insertelement <4 x float> poison, float %7, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer ; 13 uses
  %i.ae = icmp slt i64 %i.d, %6
  %invariant.gep756 = getelementptr [4 x i8], ptr %3, i64 %11 ; 2 uses
  %i.af = fmul <4 x float> %i.ad, zeroinitializer ; 2 uses
  br label %bb.c

.loopexit689:                                     ; preds = %._crit_edge760.split.split.us.us.us, %._crit_edge760.split.split.us782, %._crit_edge760.split.us.us.us, %.preheader688
  %i.ag = icmp slt i64 %i.di, %i.f
  br i1 %i.ag, label %bb.c, label %._crit_edge792, !llvm.loop !755

._crit_edge792:                                   ; preds = %.loopexit689, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @_ZN5Eigen8internal22lhs_process_one_packetILi4ELl4ELl1EfffDv4_fS2_S2_S2_NS0_11gebp_traitsIffLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIflLi0ELi1EEENS0_16blas_data_mapperIflLi0ELi0ELi1EEEEclERKS8_PKfSD_fllllllilllll(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, float noundef %7, i64 noundef %i.f, i64 noundef %i.j, i64 noundef %spec.select, i64 noundef %.0259, i64 noundef %10, i64 noundef %11, i32 noundef 8, i64 noundef %i.s, i64 noundef 8, i64 noundef %6, i64 noundef %5, i64 noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.ah = icmp slt i64 %i.r, %4
  br i1 %i.ah, label %.preheader683, label %.loopexit

.preheader683:                                    ; preds = %._crit_edge792
  %i.ai = icmp sgt i64 %6, 3
  br i1 %i.ai, label %.preheader682.lr.ph.split, label %.preheader681

.preheader682.lr.ph.split:                        ; preds = %.preheader683
  %invariant.gep818 = getelementptr [4 x i8], ptr %2, i64 %10 ; 2 uses
  %.idx = shl i64 %11, 4
  %invariant.gep826 = getelementptr i8, ptr %3, i64 %.idx ; 2 uses
  %i.aj = sdiv i64 %5, 4
  %i.ak = shl nsw i64 %i.aj, 2
  %i.al = insertelement <4 x float> poison, float %7, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.an = icmp sgt i64 %5, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = icmp sgt i64 %5, 3
  %i.aq = load ptr, ptr %1, align 8, !tbaa !756   ; 2 uses
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !758 ; 6 uses
  %.idx.i = mul nsw i64 %i.ar, 12                 ; 2 uses
  %.idx7.i = shl nsw i64 %i.ar, 3                 ; 2 uses
  br i1 %i.ap, label %.preheader682.us, label %.preheader682.preheader

.preheader682.preheader:                          ; preds = %.preheader682.lr.ph.split
  %exitcond891.not = icmp eq i64 %5, 1
  %exitcond891.not.1 = icmp eq i64 %5, 2
  br label %.preheader682

.preheader682.us:                                 ; preds = %.preheader682.lr.ph.split, %._crit_edge822.split.us.us
  %.0240825.us = phi i64 [ %i.dg, %._crit_edge822.split.us.us ], [ 0, %.preheader682.lr.ph.split ] ; 3 uses
  %i.as = mul nsw i64 %.0240825.us, %.0259
  %gep827.us = getelementptr [4 x i8], ptr %invariant.gep826, i64 %i.as
  %i.at = mul nsw i64 %i.ar, %.0240825.us
  %invariant.gep823.us = getelementptr [4 x i8], ptr %i.aq, i64 %i.at
  br label %.lr.ph801.us.us

.lr.ph801.us.us:                                  ; preds = %._crit_edge816.us.us, %.preheader682.us
  %.0239820.us.us = phi i64 [ %i.r, %.preheader682.us ], [ %i.db, %._crit_edge816.us.us ] ; 3 uses
  %i.au = mul nsw i64 %.0239820.us.us, %spec.select
  %gep819.us.us = getelementptr [4 x i8], ptr %invariant.gep818, i64 %i.au ; 2 uses
  call void @llvm.prefetch.p0(ptr %gep819.us.us, i32 0, i32 3, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph801.us.us
  %.0234799.us.us = phi i64 [ 0, %.lr.ph801.us.us ], [ %i.cb, %bb.b ]
  %.0235798.us.us = phi ptr [ %gep827.us, %.lr.ph801.us.us ], [ %i.bz, %bb.b ] ; 5 uses
  %.0237797.us.us = phi ptr [ %gep819.us.us, %.lr.ph801.us.us ], [ %i.ca, %bb.b ] ; 5 uses
  %.0672796.us.us = phi <4 x float> [ zeroinitializer, %.lr.ph801.us.us ], [ %i.by, %bb.b ]
  %.0673795.us.us = phi <4 x float> [ zeroinitializer, %.lr.ph801.us.us ], [ %i.bw, %bb.b ]
  %.0674794.us.us = phi <4 x float> [ zeroinitializer, %.lr.ph801.us.us ], [ %i.bi, %bb.b ]
  %.0675793.us.us = phi <4 x float> [ zeroinitializer, %.lr.ph801.us.us ], [ %i.bg, %bb.b ]
  %i.av = load <4 x float>, ptr %.0235798.us.us, align 1, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0235798.us.us, i64 16
  %i.ax = load <4 x float>, ptr %i.aw, align 1, !tbaa !16
  %i.ay = load float, ptr %.0237797.us.us, align 4, !tbaa !9
  %i.az = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bb = getelementptr inbounds nuw i8, ptr %.0237797.us.us, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !9
  %i.bd = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = fmul <4 x float> %i.av, %i.ba
  %i.bg = fadd <4 x float> %.0675793.us.us, %i.bf ; 2 uses
  %i.bh = fmul <4 x float> %i.ax, %i.be
  %i.bi = fadd <4 x float> %.0674794.us.us, %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0235798.us.us, i64 32
  %i.bk = load <4 x float>, ptr %i.bj, align 1, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %.0235798.us.us, i64 48
  %i.bm = load <4 x float>, ptr %i.bl, align 1, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %.0237797.us.us, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !9
  %i.bp = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = getelementptr inbounds nuw i8, ptr %.0237797.us.us, i64 12
  %i.bs = load float, ptr %i.br, align 4, !tbaa !9
  %i.bt = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = fmul <4 x float> %i.bk, %i.bq
  %i.bw = fadd <4 x float> %.0673795.us.us, %i.bv ; 2 uses
  %i.bx = fmul <4 x float> %i.bm, %i.bu
  %i.by = fadd <4 x float> %.0672796.us.us, %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0235798.us.us, i64 64 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0237797.us.us, i64 16 ; 2 uses
  %i.cb = add nuw nsw i64 %.0234799.us.us, 4      ; 4 uses
  %i.cc = icmp slt i64 %i.cb, %i.ak
  br i1 %i.cc, label %bb.b, label %._crit_edge802.us.us, !llvm.loop !759

.lr.ph815.us.us:                                  ; preds = %._crit_edge802.us.us, %.lr.ph815.us.us
  %.1813.us.us = phi i64 [ %i.cl, %.lr.ph815.us.us ], [ %i.cb, %._crit_edge802.us.us ]
  %.1236812.us.us = phi ptr [ %i.cj, %.lr.ph815.us.us ], [ %i.bz, %._crit_edge802.us.us ] ; 2 uses
  %.1238811.us.us = phi ptr [ %i.ck, %.lr.ph815.us.us ], [ %i.ca, %._crit_edge802.us.us ] ; 2 uses
  %.1676810.us.us = phi <4 x float> [ %i.ci, %.lr.ph815.us.us ], [ %i.de, %._crit_edge802.us.us ]
  %i.cd = load <4 x float>, ptr %.1236812.us.us, align 1, !tbaa !16
  %i.ce = load float, ptr %.1238811.us.us, align 4, !tbaa !9
  %i.cf = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = fmul <4 x float> %i.cd, %i.cg
  %i.ci = fadd <4 x float> %.1676810.us.us, %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1236812.us.us, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %.1238811.us.us, i64 4
  %i.cl = add nuw nsw i64 %.1813.us.us, 1         ; 2 uses
  %i.cm = icmp slt i64 %i.cl, %5
  br i1 %i.cm, label %.lr.ph815.us.us, label %._crit_edge816.us.us, !llvm.loop !760

._crit_edge816.us.us:                             ; preds = %.lr.ph815.us.us, %._crit_edge802.us.us
  %.1676.lcssa.us.us = phi <4 x float> [ %i.de, %._crit_edge802.us.us ], [ %i.ci, %.lr.ph815.us.us ]
  %gep824.us.us = getelementptr [4 x i8], ptr %invariant.gep823.us, i64 %.0239820.us.us ; 5 uses
  %i.cn = getelementptr inbounds i8, ptr %gep824.us.us, i64 %.idx.i ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !9
  %i.cp = getelementptr inbounds i8, ptr %gep824.us.us, i64 %.idx7.i ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !9
  %i.cr = getelementptr inbounds [4 x i8], ptr %gep824.us.us, i64 %i.ar ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !9
  %i.ct = load float, ptr %gep824.us.us, align 4, !tbaa !9
  %i.cu = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.cv = insertelement <4 x float> %i.cu, float %i.cs, i64 1
  %i.cw = insertelement <4 x float> %i.cv, float %i.cq, i64 2
  %i.cx = insertelement <4 x float> %i.cw, float %i.co, i64 3
  %i.cy = fmul <4 x float> %i.am, %.1676.lcssa.us.us
  %i.cz = fadd <4 x float> %i.cy, %i.cx           ; 4 uses
  %i.da = extractelement <4 x float> %i.cz, i64 0
  store float %i.da, ptr %gep824.us.us, align 4, !tbaa !9
  %.4.vec.extract.us.us = extractelement <4 x float> %i.cz, i64 1
  store float %.4.vec.extract.us.us, ptr %i.cr, align 4, !tbaa !9
  %.8.vec.extract.us.us = extractelement <4 x float> %i.cz, i64 2
  store float %.8.vec.extract.us.us, ptr %i.cp, align 4, !tbaa !9
  %.12.vec.extract.us.us = extractelement <4 x float> %i.cz, i64 3
  store float %.12.vec.extract.us.us, ptr %i.cn, align 4, !tbaa !9
  %i.db = add nsw i64 %.0239820.us.us, 1          ; 2 uses
  %13 = icmp slt i64 %i.db, %4
  br i1 %13, label %.lr.ph801.us.us, label %._crit_edge822.split.us.us, !llvm.loop !761

._crit_edge802.us.us:                             ; preds = %bb.b
  %i.dc = fadd <4 x float> %i.bg, %i.bi
  %i.dd = fadd <4 x float> %i.bw, %i.by
  %i.de = fadd <4 x float> %i.dc, %i.dd           ; 2 uses
  %i.df = icmp slt i64 %i.cb, %5
  br i1 %i.df, label %.lr.ph815.us.us, label %._crit_edge816.us.us

._crit_edge822.split.us.us:                       ; preds = %._crit_edge816.us.us
  %i.dg = add nuw nsw i64 %.0240825.us, 4         ; 2 uses
  %i.dh = icmp slt i64 %i.dg, %i.d
  br i1 %i.dh, label %.preheader682.us, label %.preheader681, !llvm.loop !762

bb.c:                                             ; preds = %.lr.ph791, %.loopexit689
  %.0257789 = phi i64 [ 0, %.lr.ph791 ], [ %i.di, %.loopexit689 ] ; 6 uses
  %i.di = add nuw nsw i64 %.0257789, %i.x         ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.di) ; 4 uses
  %i.dj = icmp sgt i64 %i.f, %.0257789            ; 2 uses
  %or.cond = select i1 %i.z, i1 %i.dj, i1 false
  br i1 %or.cond, label %.preheader687, label %.preheader688

.preheader688:                                    ; preds = %._crit_edge732, %bb.c
  %brmerge.not = select i1 %i.ae, i1 %i.dj, i1 false
  br i1 %brmerge.not, label %.preheader686.lr.ph.split.us, label %.loopexit689

.preheader686.lr.ph.split.us:                     ; preds = %.preheader688
  br i1 %i.ab, label %.preheader686.us.us, label %.preheader686.lr.ph.split.us.split

.preheader686.us.us:                              ; preds = %.preheader686.lr.ph.split.us, %._crit_edge760.split.us.us.us
  %.0248777.us.us = phi i64 [ %i.ij, %._crit_edge760.split.us.us.us ], [ %i.d, %.preheader686.lr.ph.split.us ] ; 3 uses
  %i.dk = mul nsw i64 %.0248777.us.us, %.0259
  %gep757.us.us = getelementptr [4 x i8], ptr %invariant.gep756, i64 %i.dk
  br label %.lr.ph742.us.us.us

.lr.ph742.us.us.us:                               ; preds = %._crit_edge753.us.us.us, %.preheader686.us.us
  %.0247758.us.us.us = phi i64 [ %.0257789, %.preheader686.us.us ], [ %i.ih, %._crit_edge753.us.us.us ] ; 3 uses
  %i.dl = mul nsw i64 %.0247758.us.us.us, %spec.select
  %gep762.us.us.us = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dl ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %gep762.us.us.us, i32 0, i32 3, i32 1)
  %i.dm = load ptr, ptr %1, align 8, !tbaa !756
  %i.dn = load i64, ptr %i.aa, align 8, !tbaa !758
  %i.do = mul nsw i64 %i.dn, %.0248777.us.us
  %i.dp = getelementptr [4 x i8], ptr %i.dm, i64 %.0247758.us.us.us
  %i.dq = getelementptr [4 x i8], ptr %i.dp, i64 %i.do ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dr, i32 0, i32 3, i32 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph742.us.us.us
  %.0242740.us.us.us = phi i64 [ 0, %.lr.ph742.us.us.us ], [ %i.hk, %bb.d ]
  %.0243739.us.us.us = phi ptr [ %gep757.us.us, %.lr.ph742.us.us.us ], [ %i.hi, %bb.d ] ; 9 uses
  %.0245738.us.us.us = phi ptr [ %gep762.us.us.us, %.lr.ph742.us.us.us ], [ %i.hj, %bb.d ] ; 17 uses
  %.0677737.us.us.us = phi <4 x float> [ zeroinitializer, %.lr.ph742.us.us.us ], [ %i.hf, %bb.d ]
  %.0679736.us.us.us = phi <4 x float> [ zeroinitializer, %.lr.ph742.us.us.us ], [ %i.hh, %bb.d ]
  tail call void asm sideeffect "#begin gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !763
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !764
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !765
  %i.ds = load <4 x float>, ptr %.0245738.us.us.us, align 16, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 16
  %i.du = load <4 x float>, ptr %i.dt, align 16, !tbaa !16
  %i.dv = load float, ptr %.0243739.us.us.us, align 4, !tbaa !9
  %i.dw = insertelement <4 x float> poison, float %i.dv, i64 0
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dy = fmul <4 x float> %i.ds, %i.dx
  %i.dz = fadd <4 x float> %.0677737.us.us.us, %i.dy
  %i.ea = fmul <4 x float> %i.du, %i.dx
  %i.eb = fadd <4 x float> %.0679736.us.us.us, %i.ea
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !766
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !767
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !768
  %i.ec = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 32
  %i.ed = load <4 x float>, ptr %i.ec, align 16, !tbaa !16
  %i.ee = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 48
  %i.ef = load <4 x float>, ptr %i.ee, align 16, !tbaa !16
  %i.eg = getelementptr inbounds nuw i8, ptr %.0243739.us.us.us, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !9
  %i.ei = insertelement <4 x float> poison, float %i.eh, i64 0
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ek = fmul <4 x float> %i.ed, %i.ej
  %i.el = fadd <4 x float> %i.dz, %i.ek
  %i.em = fmul <4 x float> %i.ef, %i.ej
  %i.en = fadd <4 x float> %i.eb, %i.em
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !769
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !770
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !771
  %i.eo = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 64
  %i.ep = load <4 x float>, ptr %i.eo, align 16, !tbaa !16
  %i.eq = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 80
  %i.er = load <4 x float>, ptr %i.eq, align 16, !tbaa !16
  %i.es = getelementptr inbounds nuw i8, ptr %.0243739.us.us.us, i64 8
  %i.et = load float, ptr %i.es, align 4, !tbaa !9
  %i.eu = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ew = fmul <4 x float> %i.ep, %i.ev
  %i.ex = fadd <4 x float> %i.el, %i.ew
  %i.ey = fmul <4 x float> %i.er, %i.ev
  %i.ez = fadd <4 x float> %i.en, %i.ey
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !772
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !773
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !774
  %i.fa = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 96
  %i.fb = load <4 x float>, ptr %i.fa, align 16, !tbaa !16
  %i.fc = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 112
  %i.fd = load <4 x float>, ptr %i.fc, align 16, !tbaa !16
  %i.fe = getelementptr inbounds nuw i8, ptr %.0243739.us.us.us, i64 12
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !9
  %i.fg = insertelement <4 x float> poison, float %i.ff, i64 0
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fi = fmul <4 x float> %i.fb, %i.fh
  %i.fj = fadd <4 x float> %i.ex, %i.fi
  %i.fk = fmul <4 x float> %i.fd, %i.fh
  %i.fl = fadd <4 x float> %i.ez, %i.fk
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !775
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !776
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !777
  %i.fm = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 128
  %i.fn = load <4 x float>, ptr %i.fm, align 16, !tbaa !16
  %i.fo = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 144
  %i.fp = load <4 x float>, ptr %i.fo, align 16, !tbaa !16
  %i.fq = getelementptr inbounds nuw i8, ptr %.0243739.us.us.us, i64 16
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !9
  %i.fs = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fu = fmul <4 x float> %i.fn, %i.ft
  %i.fv = fadd <4 x float> %i.fj, %i.fu
  %i.fw = fmul <4 x float> %i.fp, %i.ft
  %i.fx = fadd <4 x float> %i.fl, %i.fw
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !778
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !779
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !780
  %i.fy = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 160
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !tbaa !16
  %i.ga = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 176
  %i.gb = load <4 x float>, ptr %i.ga, align 16, !tbaa !16
  %i.gc = getelementptr inbounds nuw i8, ptr %.0243739.us.us.us, i64 20
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !9
  %i.ge = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gg = fmul <4 x float> %i.fz, %i.gf
  %i.gh = fadd <4 x float> %i.fv, %i.gg
  %i.gi = fmul <4 x float> %i.gb, %i.gf
  %i.gj = fadd <4 x float> %i.fx, %i.gi
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !781
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !782
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !783
  %i.gk = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 192
  %i.gl = load <4 x float>, ptr %i.gk, align 16, !tbaa !16
  %i.gm = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 208
  %i.gn = load <4 x float>, ptr %i.gm, align 16, !tbaa !16
  %i.go = getelementptr inbounds nuw i8, ptr %.0243739.us.us.us, i64 24
  %i.gp = load float, ptr %i.go, align 4, !tbaa !9
  %i.gq = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gs = fmul <4 x float> %i.gl, %i.gr
  %i.gt = fadd <4 x float> %i.gh, %i.gs
  %i.gu = fmul <4 x float> %i.gn, %i.gr
  %i.gv = fadd <4 x float> %i.gj, %i.gu
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !784
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !785
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !786
  %i.gw = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 224
  %i.gx = load <4 x float>, ptr %i.gw, align 16, !tbaa !16
  %i.gy = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 240
  %i.gz = load <4 x float>, ptr %i.gy, align 16, !tbaa !16
  %i.ha = getelementptr inbounds nuw i8, ptr %.0243739.us.us.us, i64 28
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !9
  %i.hc = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.he = fmul <4 x float> %i.gx, %i.hd
  %i.hf = fadd <4 x float> %i.gt, %i.he           ; 3 uses
  %i.hg = fmul <4 x float> %i.gz, %i.hd
  %i.hh = fadd <4 x float> %i.gv, %i.hg           ; 3 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !787
  %i.hi = getelementptr inbounds nuw i8, ptr %.0243739.us.us.us, i64 32 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0245738.us.us.us, i64 256 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !788
  %i.hk = add nuw nsw i64 %.0242740.us.us.us, 8   ; 2 uses
  %i.hl = icmp slt i64 %i.hk, %i.s
  br i1 %i.hl, label %bb.d, label %..preheader684_crit_edge.us.us.us, !llvm.loop !789

.lr.ph752.us.us.us:                               ; preds = %..preheader684_crit_edge.us.us.us, %.lr.ph752.us.us.us
  %.0241751.us.us.us = phi i64 [ %i.hy, %.lr.ph752.us.us.us ], [ %i.s, %..preheader684_crit_edge.us.us.us ]
  %.1244750.us.us.us = phi ptr [ %i.hw, %.lr.ph752.us.us.us ], [ %i.hi, %..preheader684_crit_edge.us.us.us ] ; 2 uses
  %.1246749.us.us.us = phi ptr [ %i.hx, %.lr.ph752.us.us.us ], [ %i.hj, %..preheader684_crit_edge.us.us.us ] ; 3 uses
  %.1678748.us.us.us = phi <4 x float> [ %i.ht, %.lr.ph752.us.us.us ], [ %i.hf, %..preheader684_crit_edge.us.us.us ]
  %.1680747.us.us.us = phi <4 x float> [ %i.hv, %.lr.ph752.us.us.us ], [ %i.hh, %..preheader684_crit_edge.us.us.us ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !790
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !791
  %i.hm = load <4 x float>, ptr %.1246749.us.us.us, align 16, !tbaa !16
  %i.hn = getelementptr inbounds nuw i8, ptr %.1246749.us.us.us, i64 16
  %i.ho = load <4 x float>, ptr %i.hn, align 16, !tbaa !16
  %i.hp = load float, ptr %.1244750.us.us.us, align 4, !tbaa !9
  %i.hq = insertelement <4 x float> poison, float %i.hp, i64 0
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hs = fmul <4 x float> %i.hm, %i.hr
  %i.ht = fadd <4 x float> %.1678748.us.us.us, %i.hs ; 2 uses
  %i.hu = fmul <4 x float> %i.ho, %i.hr
  %i.hv = fadd <4 x float> %.1680747.us.us.us, %i.hu ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !792
  %i.hw = getelementptr inbounds nuw i8, ptr %.1244750.us.us.us, i64 4
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll:bb.a
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !810
  %i.rb = getelementptr inbounds nuw i8, ptr %.0253698, i64 192
  %i.rc = load <4 x float>, ptr %i.rb, align 16, !tbaa !16 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.0253698, i64 208
  %i.re = load <4 x float>, ptr %i.rd, align 16, !tbaa !16 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.0251699, i64 96
  %i.rg = load <4 x float>, ptr %i.rf, align 16, !tbaa !16 ; 4 uses
  %i.rh = shufflevector <4 x float> %i.rg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ri = shufflevector <4 x float> %i.rg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.rj = shufflevector <4 x float> %i.rg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.rk = shufflevector <4 x float> %i.rg, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.rl = fmul <4 x float> %i.rc, %i.rh
  %i.rm = fadd <4 x float> %i.qm, %i.rl
  %i.rn = fmul <4 x float> %i.re, %i.rh
  %i.ro = fadd <4 x float> %i.qo, %i.rn
  %i.rp = fmul <4 x float> %i.rc, %i.ri
  %i.rq = fadd <4 x float> %i.qq, %i.rp
  %i.rr = fmul <4 x float> %i.re, %i.ri
  %i.rs = fadd <4 x float> %i.qs, %i.rr
  %i.rt = fmul <4 x float> %i.rc, %i.rj
  %i.ru = fadd <4 x float> %i.qu, %i.rt
  %i.rv = fmul <4 x float> %i.re, %i.rj
  %i.rw = fadd <4 x float> %i.qw, %i.rv
  %i.rx = fmul <4 x float> %i.rc, %i.rk
  %i.ry = fadd <4 x float> %i.qy, %i.rx
  %i.rz = fmul <4 x float> %i.re, %i.rk
  %i.sa = fadd <4 x float> %i.ra, %i.rz
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !811
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !812
  %i.sb = getelementptr inbounds nuw i8, ptr %.0253698, i64 224
  %i.sc = load <4 x float>, ptr %i.sb, align 16, !tbaa !16 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0253698, i64 240
  %i.se = load <4 x float>, ptr %i.sd, align 16, !tbaa !16 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.0251699, i64 112
  %i.sg = load <4 x float>, ptr %i.sf, align 16, !tbaa !16 ; 4 uses
  %i.sh = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.si = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.sj = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.sk = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.sl = fmul <4 x float> %i.sc, %i.sh
  %i.sm = fadd <4 x float> %i.rm, %i.sl           ; 2 uses
  %i.sn = fmul <4 x float> %i.se, %i.sh
  %i.so = fadd <4 x float> %i.ro, %i.sn           ; 2 uses
  %i.sp = fmul <4 x float> %i.sc, %i.si
  %i.sq = fadd <4 x float> %i.rq, %i.sp           ; 2 uses
  %i.sr = fmul <4 x float> %i.se, %i.si
  %i.ss = fadd <4 x float> %i.rs, %i.sr           ; 2 uses
  %i.st = fmul <4 x float> %i.sc, %i.sj
  %i.su = fadd <4 x float> %i.ru, %i.st           ; 2 uses
  %i.sv = fmul <4 x float> %i.se, %i.sj
  %i.sw = fadd <4 x float> %i.rw, %i.sv           ; 2 uses
  %i.sx = fmul <4 x float> %i.sc, %i.sk
  %i.sy = fadd <4 x float> %i.ry, %i.sx           ; 2 uses
  %i.sz = fmul <4 x float> %i.se, %i.sk
  %i.ta = fadd <4 x float> %i.sa, %i.sz           ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !813
  %i.tb = getelementptr inbounds nuw i8, ptr %.0251699, i64 128 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.0253698, i64 256 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !814
  %i.td = add nuw nsw i64 %.0250700, 8            ; 2 uses
  %i.te = icmp slt i64 %i.td, %i.s
  br i1 %i.te, label %.lr.ph, label %.preheader685, !llvm.loop !815

._crit_edge:                                      ; preds = %.lr.ph721, %.preheader685
  %.1671.lcssa = phi <4 x float> [ %.0670.lcssa, %.preheader685 ], [ %i.vg, %.lr.ph721 ]
  %.1669.lcssa = phi <4 x float> [ %.0668.lcssa, %.preheader685 ], [ %i.vc, %.lr.ph721 ]
  %.1667.lcssa = phi <4 x float> [ %.0666.lcssa, %.preheader685 ], [ %i.uy, %.lr.ph721 ]
  %.1665.lcssa = phi <4 x float> [ %.0664.lcssa, %.preheader685 ], [ %i.uu, %.lr.ph721 ]
  %.1663.lcssa = phi <4 x float> [ %.0662.lcssa, %.preheader685 ], [ %i.ve, %.lr.ph721 ]
  %.1661.lcssa = phi <4 x float> [ %.0660.lcssa, %.preheader685 ], [ %i.va, %.lr.ph721 ]
  %.1659.lcssa = phi <4 x float> [ %.0658.lcssa, %.preheader685 ], [ %i.uw, %.lr.ph721 ]
  %.1656.lcssa = phi <4 x float> [ %.0655.lcssa, %.preheader685 ], [ %i.us, %.lr.ph721 ]
  %i.tf = load <4 x float>, ptr %i.kq, align 1, !tbaa !16
  %i.tg = getelementptr inbounds nuw i8, ptr %i.kq, i64 16 ; 2 uses
  %i.th = load <4 x float>, ptr %i.tg, align 1, !tbaa !16
  %i.ti = load <4 x float>, ptr %i.ks, align 1, !tbaa !16
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ks, i64 16 ; 2 uses
  %i.tk = load <4 x float>, ptr %i.tj, align 1, !tbaa !16
  %i.tl = fmul <4 x float> %i.ad, %.1656.lcssa
  %i.tm = fadd <4 x float> %i.tl, %i.tf
  %i.tn = fmul <4 x float> %i.ad, %.1665.lcssa
  %i.to = fadd <4 x float> %i.tn, %i.th
  %i.tp = fmul <4 x float> %i.ad, %.1659.lcssa
  %i.tq = fadd <4 x float> %i.tp, %i.ti
  %i.tr = fmul <4 x float> %i.ad, %.1667.lcssa
  %i.ts = fadd <4 x float> %i.tr, %i.tk
  store <4 x float> %i.tm, ptr %i.kq, align 1, !tbaa !16
  store <4 x float> %i.to, ptr %i.tg, align 1, !tbaa !16
  store <4 x float> %i.tq, ptr %i.ks, align 1, !tbaa !16
  store <4 x float> %i.ts, ptr %i.tj, align 1, !tbaa !16
  %i.tt = load <4 x float>, ptr %i.ku, align 1, !tbaa !16
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 2 uses
  %i.tv = load <4 x float>, ptr %i.tu, align 1, !tbaa !16
  %i.tw = load <4 x float>, ptr %i.kw, align 1, !tbaa !16
  %i.tx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 2 uses
  %i.ty = load <4 x float>, ptr %i.tx, align 1, !tbaa !16
  %i.tz = fmul <4 x float> %i.ad, %.1661.lcssa
  %i.ua = fadd <4 x float> %i.tz, %i.tt
  %i.ub = fmul <4 x float> %i.ad, %.1669.lcssa
  %i.uc = fadd <4 x float> %i.ub, %i.tv
  %i.ud = fmul <4 x float> %i.ad, %.1663.lcssa
  %i.ue = fadd <4 x float> %i.ud, %i.tw
  %i.uf = fmul <4 x float> %i.ad, %.1671.lcssa
  %i.ug = fadd <4 x float> %i.uf, %i.ty
  store <4 x float> %i.ua, ptr %i.ku, align 1, !tbaa !16
  store <4 x float> %i.uc, ptr %i.tu, align 1, !tbaa !16
  store <4 x float> %i.ue, ptr %i.kw, align 1, !tbaa !16
  store <4 x float> %i.ug, ptr %i.tx, align 1, !tbaa !16
  %i.uh = add nuw nsw i64 %.0255730, 8            ; 2 uses
  %i.ui = icmp slt i64 %i.uh, %.sroa.speculated
  br i1 %i.ui, label %bb.f, label %._crit_edge732, !llvm.loop !816

.lr.ph721:                                        ; preds = %.preheader685, %.lr.ph721
  %.0249720 = phi i64 [ %i.vj, %.lr.ph721 ], [ %i.s, %.preheader685 ]
  %.1252719 = phi ptr [ %i.vh, %.lr.ph721 ], [ %.0251.lcssa, %.preheader685 ] ; 2 uses
  %.1254718 = phi ptr [ %i.vi, %.lr.ph721 ], [ %.0253.lcssa, %.preheader685 ] ; 3 uses
  %.1656717 = phi <4 x float> [ %i.us, %.lr.ph721 ], [ %.0655.lcssa, %.preheader685 ]
  %.1659716 = phi <4 x float> [ %i.uw, %.lr.ph721 ], [ %.0658.lcssa, %.preheader685 ]
  %.1661715 = phi <4 x float> [ %i.va, %.lr.ph721 ], [ %.0660.lcssa, %.preheader685 ]
  %.1663714 = phi <4 x float> [ %i.ve, %.lr.ph721 ], [ %.0662.lcssa, %.preheader685 ]
  %.1665713 = phi <4 x float> [ %i.uu, %.lr.ph721 ], [ %.0664.lcssa, %.preheader685 ]
  %.1667712 = phi <4 x float> [ %i.uy, %.lr.ph721 ], [ %.0666.lcssa, %.preheader685 ]
  %.1669711 = phi <4 x float> [ %i.vc, %.lr.ph721 ], [ %.0668.lcssa, %.preheader685 ]
  %.1671710 = phi <4 x float> [ %i.vg, %.lr.ph721 ], [ %.0670.lcssa, %.preheader685 ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !817
  %i.uj = load <4 x float>, ptr %.1254718, align 16, !tbaa !16 ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.1254718, i64 16
  %i.ul = load <4 x float>, ptr %i.uk, align 16, !tbaa !16 ; 4 uses
  %i.um = load <4 x float>, ptr %.1252719, align 16, !tbaa !16 ; 4 uses
  %i.un = shufflevector <4 x float> %i.um, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.uo = shufflevector <4 x float> %i.um, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.up = shufflevector <4 x float> %i.um, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.uq = shufflevector <4 x float> %i.um, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.ur = fmul <4 x float> %i.uj, %i.un
  %i.us = fadd <4 x float> %.1656717, %i.ur       ; 2 uses
  %i.ut = fmul <4 x float> %i.ul, %i.un
  %i.uu = fadd <4 x float> %.1665713, %i.ut       ; 2 uses
  %i.uv = fmul <4 x float> %i.uj, %i.uo
  %i.uw = fadd <4 x float> %.1659716, %i.uv       ; 2 uses
  %i.ux = fmul <4 x float> %i.ul, %i.uo
  %i.uy = fadd <4 x float> %.1667712, %i.ux       ; 2 uses
  %i.uz = fmul <4 x float> %i.uj, %i.up
  %i.va = fadd <4 x float> %.1661715, %i.uz       ; 2 uses
  %i.vb = fmul <4 x float> %i.ul, %i.up
  %i.vc = fadd <4 x float> %.1669711, %i.vb       ; 2 uses
  %i.vd = fmul <4 x float> %i.uj, %i.uq
  %i.ve = fadd <4 x float> %.1663714, %i.vd       ; 2 uses
  %i.vf = fmul <4 x float> %i.ul, %i.uq
  %i.vg = fadd <4 x float> %.1671710, %i.vf       ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !818
  %i.vh = getelementptr inbounds nuw i8, ptr %.1252719, i64 16
  %i.vi = getelementptr inbounds nuw i8, ptr %.1254718, i64 32
  %i.vj = add nsw i64 %.0249720, 1                ; 2 uses
  %i.vk = icmp slt i64 %i.vj, %5
  br i1 %i.vk, label %.lr.ph721, label %._crit_edge, !llvm.loop !819

.preheader682:                                    ; preds = %.preheader682.preheader, %._crit_edge822.split
  %.0240825 = phi i64 [ %i.xs, %._crit_edge822.split ], [ 0, %.preheader682.preheader ] ; 3 uses
  %i.vl = mul nsw i64 %.0240825, %.0259
  %gep827 = getelementptr [4 x i8], ptr %invariant.gep826, i64 %i.vl ; 3 uses
  %i.vm = mul nsw i64 %i.ar, %.0240825
  %invariant.gep823 = getelementptr [4 x i8], ptr %i.aq, i64 %i.vm
  %i.vn = getelementptr inbounds nuw i8, ptr %gep827, i64 16
  %i.vo = getelementptr inbounds nuw i8, ptr %gep827, i64 32
  br label %bb.i

.preheader681:                                    ; preds = %._crit_edge822.split, %._crit_edge822.split.us.us, %.preheader683
  %i.vp = icmp slt i64 %i.d, %6
  br i1 %i.vp, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader681
  %invariant.gep836 = getelementptr [4 x i8], ptr %2, i64 %10 ; 4 uses
  %invariant.gep838 = getelementptr [4 x i8], ptr %3, i64 %11
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vr = icmp sgt i64 %5, 0
  %i.vs = load ptr, ptr %1, align 8, !tbaa !756   ; 4 uses
  %i.vt = load i64, ptr %i.vq, align 8, !tbaa !758 ; 4 uses
  br i1 %i.vr, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %.neg = or disjoint i64 %i.d, 1
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.vu = mul nsw i64 %i.vt, %i.d
  %invariant.gep843.prol = getelementptr [4 x i8], ptr %i.vs, i64 %i.vu
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.prol
  %.0232840.prol = phi i64 [ %i.r, %.preheader.prol ], [ %i.vy, %bb.g ] ; 3 uses
  %i.vv = mul nsw i64 %.0232840.prol, %spec.select
  %gep837.prol = getelementptr [4 x i8], ptr %invariant.gep836, i64 %i.vv
  call void @llvm.prefetch.p0(ptr %gep837.prol, i32 0, i32 3, i32 1)
  %gep844.prol = getelementptr [4 x i8], ptr %invariant.gep843.prol, i64 %.0232840.prol ; 2 uses
  %i.vw = load float, ptr %gep844.prol, align 4, !tbaa !9
  %i.vx = call float @llvm.fmuladd.f32(float %7, float 0.000000e+00, float %i.vw)
  store float %i.vx, ptr %gep844.prol, align 4, !tbaa !9
  %i.vy = add nsw i64 %.0232840.prol, 1           ; 2 uses
  %14 = icmp slt i64 %i.vy, %4
  br i1 %14, label %bb.g, label %._crit_edge842.split.prol, !llvm.loop !820

._crit_edge842.split.prol:                        ; preds = %bb.g
  %i.vz = or disjoint i64 %i.d, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %._crit_edge842.split.prol, %.preheader.preheader
  %.0233845.unr = phi i64 [ %i.d, %.preheader.preheader ], [ %i.vz, %._crit_edge842.split.prol ]
  %i.wa = icmp eq i64 %6, %.neg
  br i1 %i.wa, label %.loopexit, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %xtraiter1040 = and i64 %5, 3                   ; 3 uses
  %i.wb = icmp ult i64 %5, 4
  %unroll_iter = and i64 %5, 9223372036854775804
  %lcmp.mod1041.not = icmp eq i64 %xtraiter1040, 0
  %lcmp.mod1043 = icmp ne i64 %xtraiter1040, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge842.split.us.us
  %.0233845.us = phi i64 [ %i.xr, %._crit_edge842.split.us.us ], [ %i.d, %.preheader.us.preheader ] ; 3 uses
  %i.wc = mul nsw i64 %.0233845.us, %.0259
  %gep839.us = getelementptr [4 x i8], ptr %invariant.gep838, i64 %i.wc ; 5 uses
  %i.wd = mul nsw i64 %i.vt, %.0233845.us
  %invariant.gep843.us = getelementptr [4 x i8], ptr %i.vs, i64 %i.wd
  br label %.lr.ph833.us.us

.lr.ph833.us.us:                                  ; preds = %._crit_edge834.us.us, %.preheader.us
  %.0232840.us.us = phi i64 [ %i.r, %.preheader.us ], [ %i.xq, %._crit_edge834.us.us ] ; 3 uses
  %i.we = mul nsw i64 %.0232840.us.us, %spec.select
  %gep837.us.us = getelementptr [4 x i8], ptr %invariant.gep836, i64 %i.we ; 6 uses
  call void @llvm.prefetch.p0(ptr %gep837.us.us, i32 0, i32 3, i32 1)
  br i1 %i.wb, label %.epil.preheader, label %.lr.ph833.us.us.new

.lr.ph833.us.us.new:                              ; preds = %.lr.ph833.us.us, %.lr.ph833.us.us.new
  %.0831.us.us = phi i64 [ %i.xg, %.lr.ph833.us.us.new ], [ 0, %.lr.ph833.us.us ] ; 6 uses
  %.0657830.us.us = phi float [ %i.xf, %.lr.ph833.us.us.new ], [ 0.000000e+00, %.lr.ph833.us.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph833.us.us.new ], [ 0, %.lr.ph833.us.us ]
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %gep837.us.us, i64 %.0831.us.us
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !9
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %gep839.us, i64 %.0831.us.us
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !9
  %i.wj = fmul float %i.wg, %i.wi
  %i.wk = fadd float %.0657830.us.us, %i.wj
  %i.wl = or disjoint i64 %.0831.us.us, 1         ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %gep837.us.us, i64 %i.wl
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !9
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %gep839.us, i64 %i.wl
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !9
  %i.wq = fmul float %i.wn, %i.wp
  %i.wr = fadd float %i.wk, %i.wq
  %i.ws = or disjoint i64 %.0831.us.us, 2         ; 2 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %gep837.us.us, i64 %i.ws
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !9
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %gep839.us, i64 %i.ws
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !9
  %i.wx = fmul float %i.wu, %i.ww
  %i.wy = fadd float %i.wr, %i.wx
  %i.wz = or disjoint i64 %.0831.us.us, 3         ; 2 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %gep837.us.us, i64 %i.wz
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !9
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %gep839.us, i64 %i.wz
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !9
  %i.xe = fmul float %i.xb, %i.xd
  %i.xf = fadd float %i.wy, %i.xe                 ; 3 uses
  %i.xg = add nuw nsw i64 %.0831.us.us, 4         ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge834.us.us.unr-lcssa, label %.lr.ph833.us.us.new, !llvm.loop !821

._crit_edge834.us.us.unr-lcssa:                   ; preds = %.lr.ph833.us.us.new
  br i1 %lcmp.mod1041.not, label %._crit_edge834.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge834.us.us.unr-lcssa, %.lr.ph833.us.us
  %.0831.us.us.epil.init = phi i64 [ 0, %.lr.ph833.us.us ], [ %i.xg, %._crit_edge834.us.us.unr-lcssa ]
  %.0657830.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph833.us.us ], [ %i.xf, %._crit_edge834.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1043)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.0831.us.us.epil = phi i64 [ %.0831.us.us.epil.init, %.epil.preheader ], [ %i.xn, %bb.h ] ; 3 uses
  %.0657830.us.us.epil = phi float [ %.0657830.us.us.epil.init, %.epil.preheader ], [ %i.xm, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %gep837.us.us, i64 %.0831.us.us.epil
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !9
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %gep839.us, i64 %.0831.us.us.epil
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !9
  %i.xl = fmul float %i.xi, %i.xk
  %i.xm = fadd float %.0657830.us.us.epil, %i.xl  ; 2 uses
  %i.xn = add nuw nsw i64 %.0831.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1040
  br i1 %epil.iter.cmp.not, label %._crit_edge834.us.us, label %bb.h, !llvm.loop !822

._crit_edge834.us.us:                             ; preds = %bb.h, %._crit_edge834.us.us.unr-lcssa
  %.lcssa = phi float [ %i.xf, %._crit_edge834.us.us.unr-lcssa ], [ %i.xm, %bb.h ]
  %gep844.us.us = getelementptr [4 x i8], ptr %invariant.gep843.us, i64 %.0232840.us.us ; 2 uses
  %i.xo = load float, ptr %gep844.us.us, align 4, !tbaa !9
  %i.xp = call float @llvm.fmuladd.f32(float %7, float %.lcssa, float %i.xo)
  store float %i.xp, ptr %gep844.us.us, align 4, !tbaa !9
  %i.xq = add nsw i64 %.0232840.us.us, 1          ; 2 uses
  %15 = icmp slt i64 %i.xq, %4
  br i1 %15, label %.lr.ph833.us.us, label %._crit_edge842.split.us.us, !llvm.loop !820

._crit_edge842.split.us.us:                       ; preds = %._crit_edge834.us.us
  %i.xr = add nsw i64 %.0233845.us, 1             ; 2 uses
  %exitcond894.not.a = icmp eq i64 %i.xr, %6
  br i1 %exitcond894.not.a, label %.loopexit, label %.preheader.us, !llvm.loop !823

._crit_edge822.split:                             ; preds = %._crit_edge816
  %i.xs = add nuw nsw i64 %.0240825, 4            ; 2 uses
  %i.xt = icmp slt i64 %i.xs, %i.d
  br i1 %i.xt, label %.preheader682, label %.preheader681, !llvm.loop !762

bb.i:                                             ; preds = %.preheader682, %._crit_edge816
  %.0239820 = phi i64 [ %i.r, %.preheader682 ], [ %i.zd, %._crit_edge816 ] ; 3 uses
  %i.xu = mul nsw i64 %.0239820, %spec.select
  %gep819 = getelementptr [4 x i8], ptr %invariant.gep818, i64 %i.xu ; 4 uses
  call void @llvm.prefetch.p0(ptr %gep819, i32 0, i32 3, i32 1)
  br i1 %i.an, label %.lr.ph815, label %._crit_edge816

.lr.ph815:                                        ; preds = %bb.i
  %i.xv = load <4 x float>, ptr %gep827, align 1, !tbaa !16
  %i.xw = load float, ptr %gep819, align 4, !tbaa !9
  %i.xx = insertelement <4 x float> poison, float %i.xw, i64 0
  %i.xy = shufflevector <4 x float> %i.xx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xz = fmul <4 x float> %i.xv, %i.xy
  %i.ya = fadd <4 x float> %i.xz, zeroinitializer ; 2 uses
  br i1 %exitcond891.not, label %._crit_edge816, label %.lr.ph815.1

.lr.ph815.1:                                      ; preds = %.lr.ph815
  %i.yb = getelementptr inbounds nuw i8, ptr %gep819, i64 4
  %i.yc = load <4 x float>, ptr %i.vn, align 1, !tbaa !16
  %i.yd = load float, ptr %i.yb, align 4, !tbaa !9
  %i.ye = insertelement <4 x float> poison, float %i.yd, i64 0
  %i.yf = shufflevector <4 x float> %i.ye, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yg = fmul <4 x float> %i.yc, %i.yf
  %i.yh = fadd <4 x float> %i.ya, %i.yg           ; 2 uses
  br i1 %exitcond891.not.1, label %._crit_edge816, label %.lr.ph815.2

.lr.ph815.2:                                      ; preds = %.lr.ph815.1
  %i.yi = getelementptr inbounds nuw i8, ptr %gep819, i64 8
  %i.yj = load <4 x float>, ptr %i.vo, align 1, !tbaa !16
  %i.yk = load float, ptr %i.yi, align 4, !tbaa !9
  %i.yl = insertelement <4 x float> poison, float %i.yk, i64 0
  %i.ym = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yn = fmul <4 x float> %i.yj, %i.ym
  %i.yo = fadd <4 x float> %i.yh, %i.yn
  br label %._crit_edge816

._crit_edge816:                                   ; preds = %.lr.ph815, %.lr.ph815.1, %.lr.ph815.2, %bb.i
  %.1676.lcssa = phi <4 x float> [ zeroinitializer, %bb.i ], [ %i.ya, %.lr.ph815 ], [ %i.yh, %.lr.ph815.1 ], [ %i.yo, %.lr.ph815.2 ]
  %gep824 = getelementptr [4 x i8], ptr %invariant.gep823, i64 %.0239820 ; 5 uses
  %i.yp = getelementptr inbounds i8, ptr %gep824, i64 %.idx.i ; 2 uses
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !9
  %i.yr = getelementptr inbounds i8, ptr %gep824, i64 %.idx7.i ; 2 uses
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !9
  %i.yt = getelementptr inbounds [4 x i8], ptr %gep824, i64 %i.ar ; 2 uses
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !9
  %i.yv = load float, ptr %gep824, align 4, !tbaa !9
  %i.yw = insertelement <4 x float> poison, float %i.yv, i64 0
  %i.yx = insertelement <4 x float> %i.yw, float %i.yu, i64 1
  %i.yy = insertelement <4 x float> %i.yx, float %i.ys, i64 2
  %i.yz = insertelement <4 x float> %i.yy, float %i.yq, i64 3
  %i.za = fmul <4 x float> %i.am, %.1676.lcssa
  %i.zb = fadd <4 x float> %i.za, %i.yz           ; 4 uses
  %i.zc = extractelement <4 x float> %i.zb, i64 0
  store float %i.zc, ptr %gep824, align 4, !tbaa !9
  %.4.vec.extract = extractelement <4 x float> %i.zb, i64 1
  store float %.4.vec.extract, ptr %i.yt, align 4, !tbaa !9
  %.8.vec.extract = extractelement <4 x float> %i.zb, i64 2
  store float %.8.vec.extract, ptr %i.yr, align 4, !tbaa !9
  %.12.vec.extract = extractelement <4 x float> %i.zb, i64 3
  store float %.12.vec.extract, ptr %i.yp, align 4, !tbaa !9
  %i.zd = add nsw i64 %.0239820, 1                ; 2 uses
  %16 = icmp slt i64 %i.zd, %4
  br i1 %16, label %bb.i, label %._crit_edge822.split, !llvm.loop !761

.preheader:                                       ; preds = %.preheader.prol.loopexit, %._crit_edge842.split.1
  %.0233845 = phi i64 [ %i.zl, %._crit_edge842.split.1 ], [ %.0233845.unr, %.preheader.prol.loopexit ] ; 3 uses
  %i.ze = mul nsw i64 %i.vt, %.0233845
  %invariant.gep843 = getelementptr [4 x i8], ptr %i.vs, i64 %i.ze
  br label %bb.k

._crit_edge842.split:                             ; preds = %bb.k
  %i.zf = add nsw i64 %.0233845, 1
  %i.zg = mul nsw i64 %i.vt, %i.zf
  %invariant.gep843.1 = getelementptr [4 x i8], ptr %i.vs, i64 %i.zg
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge842.split
  %.0232840.1 = phi i64 [ %i.r, %._crit_edge842.split ], [ %i.zk, %bb.j ] ; 3 uses
  %i.zh = mul nsw i64 %.0232840.1, %spec.select
  %gep837.1 = getelementptr [4 x i8], ptr %invariant.gep836, i64 %i.zh
  call void @llvm.prefetch.p0(ptr %gep837.1, i32 0, i32 3, i32 1)
  %gep844.1 = getelementptr [4 x i8], ptr %invariant.gep843.1, i64 %.0232840.1 ; 2 uses
  %i.zi = load float, ptr %gep844.1, align 4, !tbaa !9
  %i.zj = call float @llvm.fmuladd.f32(float %7, float 0.000000e+00, float %i.zi)
  store float %i.zj, ptr %gep844.1, align 4, !tbaa !9
  %i.zk = add nsw i64 %.0232840.1, 1              ; 2 uses
  %17 = icmp slt i64 %i.zk, %4
  br i1 %17, label %bb.j, label %._crit_edge842.split.1, !llvm.loop !820

._crit_edge842.split.1:                           ; preds = %bb.j
  %i.zl = add nsw i64 %.0233845, 2                ; 2 uses
  %exitcond892.not.1 = icmp eq i64 %i.zl, %6
  br i1 %exitcond892.not.1, label %.loopexit, label %.preheader, !llvm.loop !823

bb.k:                                             ; preds = %.preheader, %bb.k
  %.0232840 = phi i64 [ %i.r, %.preheader ], [ %i.zp, %bb.k ] ; 3 uses
  %i.zm = mul nsw i64 %.0232840, %spec.select
  %gep837 = getelementptr [4 x i8], ptr %invariant.gep836, i64 %i.zm
  call void @llvm.prefetch.p0(ptr %gep837, i32 0, i32 3, i32 1)
  %gep844 = getelementptr [4 x i8], ptr %invariant.gep843, i64 %.0232840 ; 2 uses
  %i.zn = load float, ptr %gep844, align 4, !tbaa !9
  %i.zo = call float @llvm.fmuladd.f32(float %7, float 0.000000e+00, float %i.zn)
  store float %i.zo, ptr %gep844, align 4, !tbaa !9
  %i.zp = add nsw i64 %.0232840, 1                ; 2 uses
  %18 = icmp slt i64 %i.zp, %4
  br i1 %18, label %bb.k, label %._crit_edge842.split, !llvm.loop !820

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %._crit_edge842.split.1, %._crit_edge842.split.us.us, %.preheader681, %._crit_edge792
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal22lhs_process_one_packetILi4ELl4ELl1EfffDv4_fS2_S2_S2_NS0_11gebp_traitsIffLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIflLi0ELi1EEENS0_16blas_data_mapperIflLi0ELi0ELi1EEEEclERKS8_PKfSD_fllllllilllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, float noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp slt i64 %5, %6
  br i1 %i.a, label %.preheader318.lr.ph, label %._crit_edge377

.preheader318.lr.ph:                              ; preds = %bb.a
  %i.b = icmp sgt i64 %16, 0
  %.idx132 = shl i64 %9, 4
  %invariant.gep378 = getelementptr i8, ptr %2, i64 %.idx132 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = sext i32 %11 to i64                      ; 4 uses
  %.idx133 = shl i64 %10, 4
  %invariant.gep = getelementptr i8, ptr %3, i64 %.idx133
  %i.e = icmp sgt i64 %12, 0                      ; 2 uses
  %i.f = shl nsw i64 %13, 2                       ; 2 uses
  %i.g = icmp slt i64 %12, %15                    ; 2 uses
  %i.h = insertelement <4 x float> poison, float %4, i64 0
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %invariant.gep371 = getelementptr [4 x i8], ptr %3, i64 %10
  %i.j = icmp slt i64 %16, %14
  %.idx131 = shl nsw i64 %13, 4
  br label %.preheader318

.preheader318:                                    ; preds = %.preheader318.lr.ph, %._crit_edge375
  %.0127376 = phi i64 [ %5, %.preheader318.lr.ph ], [ %i.gu, %._crit_edge375 ] ; 5 uses
  br i1 %i.b, label %.lr.ph354, label %.preheader317

.lr.ph354:                                        ; preds = %.preheader318
  %i.k = mul nsw i64 %.0127376, %7
  %gep379 = getelementptr [4 x i8], ptr %invariant.gep378, i64 %i.k ; 3 uses
  br label %bb.b

._crit_edge377:                                   ; preds = %._crit_edge375, %bb.a
  ret void

.preheader317:                                    ; preds = %._crit_edge348, %.preheader318
  br i1 %i.j, label %.lr.ph374, label %._crit_edge375

.lr.ph374:                                        ; preds = %.preheader317
  %i.l = mul nsw i64 %.0127376, %7
  %gep381 = getelementptr [4 x i8], ptr %invariant.gep378, i64 %i.l ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph354, %._crit_edge348
  %.0126353 = phi i64 [ 0, %.lr.ph354 ], [ %i.gb, %._crit_edge348 ] ; 6 uses
  tail call void @llvm.prefetch.p0(ptr %gep379, i32 0, i32 3, i32 1)
  %i.m = load ptr, ptr %1, align 8, !tbaa !756
  %i.n = load i64, ptr %i.c, align 8, !tbaa !758  ; 4 uses
  %i.o = mul nsw i64 %i.n, %.0126353
  %i.p = getelementptr [4 x i8], ptr %i.m, i64 %.0127376 ; 4 uses
  %i.q = getelementptr [4 x i8], ptr %i.p, i64 %i.o ; 3 uses
  %i.r = or disjoint i64 %.0126353, 1
  %i.s = mul nsw i64 %i.n, %i.r
  %i.t = getelementptr [4 x i8], ptr %i.p, i64 %i.s ; 3 uses
  %i.u = or disjoint i64 %.0126353, 2
  %i.v = mul nsw i64 %i.n, %i.u
  %i.w = getelementptr [4 x i8], ptr %i.p, i64 %i.v ; 3 uses
  %i.x = or disjoint i64 %.0126353, 3
  %i.y = mul nsw i64 %i.n, %i.x
  %i.z = getelementptr [4 x i8], ptr %i.p, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.d
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.d
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ab, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.d
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.d
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ad, i32 0, i32 3, i32 1)
  %i.ae = mul nsw i64 %.0126353, %8
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ae ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %gep, i32 0, i32 3, i32 1)
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.af = fadd <4 x float> %i.fe, %i.eo
  %i.ag = fadd <4 x float> %i.fg, %i.eq
  %i.ah = fadd <4 x float> %i.fi, %i.es
  %i.ai = fadd <4 x float> %i.fk, %i.eu
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.0124.lcssa = phi ptr [ %gep379, %bb.b ], [ %i.fm, %._crit_edge.loopexit ]
  %.0122.lcssa = phi ptr [ %gep, %bb.b ], [ %i.fl, %._crit_edge.loopexit ]
  %i.aj = phi <4 x float> [ zeroinitializer, %bb.b ], [ %i.af, %._crit_edge.loopexit ] ; 2 uses
  %i.ak = phi <4 x float> [ zeroinitializer, %bb.b ], [ %i.ag, %._crit_edge.loopexit ] ; 2 uses
  %i.al = phi <4 x float> [ zeroinitializer, %bb.b ], [ %i.ah, %._crit_edge.loopexit ] ; 2 uses
  %i.am = phi <4 x float> [ zeroinitializer, %bb.b ], [ %i.ai, %._crit_edge.loopexit ] ; 2 uses
  br i1 %i.g, label %.lr.ph347, label %._crit_edge348

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0121329 = phi i64 [ %i.fn, %.lr.ph ], [ 0, %bb.b ]
  %.0122328 = phi ptr [ %i.fl, %.lr.ph ], [ %gep, %bb.b ] ; 11 uses
  %.0124327 = phi ptr [ %i.fm, %.lr.ph ], [ %gep379, %bb.b ] ; 9 uses
  %.0303326 = phi <4 x float> [ %i.eo, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0305325 = phi <4 x float> [ %i.eq, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0307324 = phi <4 x float> [ %i.es, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0309323 = phi <4 x float> [ %i.eu, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0313322 = phi <4 x float> [ %i.fe, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0314321 = phi <4 x float> [ %i.fg, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0315320 = phi <4 x float> [ %i.fi, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0316319 = phi <4 x float> [ %i.fk, %.lr.ph ], [ zeroinitializer, %bb.b ]
  tail call void asm sideeffect "#begin gebp micro kernel 1/half/quarterX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !824
  %i.an = getelementptr inbounds nuw i8, ptr %.0122328, i64 192
  tail call void @llvm.prefetch.p0(ptr nonnull %i.an, i32 0, i32 3, i32 1)
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !825
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !826
  %i.ao = load <4 x float>, ptr %.0124327, align 16, !tbaa !16 ; 4 uses
  %i.ap = load <4 x float>, ptr %.0122328, align 16, !tbaa !16 ; 4 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.as = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.at = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.au = fmul <4 x float> %i.ao, %i.aq
  %i.av = fadd <4 x float> %.0303326, %i.au
  %i.aw = fmul <4 x float> %i.ao, %i.ar
  %i.ax = fadd <4 x float> %.0305325, %i.aw
  %i.ay = fmul <4 x float> %i.ao, %i.as
  %i.az = fadd <4 x float> %.0307324, %i.ay
  %i.ba = fmul <4 x float> %i.ao, %i.at
  %i.bb = fadd <4 x float> %.0309323, %i.ba
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !827
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !825
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !826
  %i.bc = getelementptr inbounds nuw i8, ptr %.0124327, i64 16
  %i.bd = load <4 x float>, ptr %i.bc, align 16, !tbaa !16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0122328, i64 16
  %i.bf = load <4 x float>, ptr %i.be, align 16, !tbaa !16 ; 4 uses
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bi = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bj = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bk = fmul <4 x float> %i.bd, %i.bg
  %i.bl = fadd <4 x float> %.0313322, %i.bk
  %i.bm = fmul <4 x float> %i.bd, %i.bh
  %i.bn = fadd <4 x float> %.0314321, %i.bm
  %i.bo = fmul <4 x float> %i.bd, %i.bi
  %i.bp = fadd <4 x float> %.0315320, %i.bo
  %i.bq = fmul <4 x float> %i.bd, %i.bj
  %i.br = fadd <4 x float> %.0316319, %i.bq
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !827
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !825
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !826
  %i.bs = getelementptr inbounds nuw i8, ptr %.0124327, i64 32
  %i.bt = load <4 x float>, ptr %i.bs, align 16, !tbaa !16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0122328, i64 32
  %i.bv = load <4 x float>, ptr %i.bu, align 16, !tbaa !16 ; 4 uses
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.by = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bz = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ca = fmul <4 x float> %i.bt, %i.bw
  %i.cb = fadd <4 x float> %i.av, %i.ca
  %i.cc = fmul <4 x float> %i.bt, %i.bx
  %i.cd = fadd <4 x float> %i.ax, %i.cc
  %i.ce = fmul <4 x float> %i.bt, %i.by
  %i.cf = fadd <4 x float> %i.az, %i.ce
  %i.cg = fmul <4 x float> %i.bt, %i.bz
  %i.ch = fadd <4 x float> %i.bb, %i.cg
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !827
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !825
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !826
  %i.ci = getelementptr inbounds nuw i8, ptr %.0124327, i64 48
  %i.cj = load <4 x float>, ptr %i.ci, align 16, !tbaa !16 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0122328, i64 48
  %i.cl = load <4 x float>, ptr %i.ck, align 16, !tbaa !16 ; 4 uses
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.co = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cp = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cq = fmul <4 x float> %i.cj, %i.cm
  %i.cr = fadd <4 x float> %i.bl, %i.cq
  %i.cs = fmul <4 x float> %i.cj, %i.cn
  %i.ct = fadd <4 x float> %i.bn, %i.cs
  %i.cu = fmul <4 x float> %i.cj, %i.co
  %i.cv = fadd <4 x float> %i.bp, %i.cu
  %i.cw = fmul <4 x float> %i.cj, %i.cp
  %i.cx = fadd <4 x float> %i.br, %i.cw
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !827
  %i.cy = getelementptr inbounds nuw i8, ptr %.0122328, i64 256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cy, i32 0, i32 3, i32 1)
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !825
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !826
  %i.cz = getelementptr inbounds nuw i8, ptr %.0124327, i64 64
  %i.da = load <4 x float>, ptr %i.cz, align 16, !tbaa !16 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0122328, i64 64
  %i.dc = load <4 x float>, ptr %i.db, align 16, !tbaa !16 ; 4 uses
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.de = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.df = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dg = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dh = fmul <4 x float> %i.da, %i.dd
  %i.di = fadd <4 x float> %i.cb, %i.dh
  %i.dj = fmul <4 x float> %i.da, %i.de
  %i.dk = fadd <4 x float> %i.cd, %i.dj
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi1ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.aj

bb.ab:                                            ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.aj

bb.ac:                                            ; preds = %bb.x
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.aj

bb.ad:                                            ; preds = %bb.y, %bb.v
  %i.dk = add nsw i64 %.0125293, %.sroa.speculated220 ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %smin314
  %indvar.next306 = add i64 %indvar305, 1
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated220
  br i1 %i.dl, label %.lr.ph295, label %.preheader, !llvm.loop !894

._crit_edge298:                                   ; preds = %bb.ag, %.preheader
  %i.dm = sub nsw i64 %.0126301, %i.b             ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dn, label %bb.q, label %._crit_edge304, !llvm.loop !895

bb.ae:                                            ; preds = %.lr.ph297, %bb.ag
  %.0296 = phi i64 [ %.0126301, %.lr.ph297 ], [ %i.do, %bb.ag ] ; 4 uses
  %i.do = add nsw i64 %.0296, %.sroa.speculated226 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.do)
  %i.dp = sub nsw i64 %.sroa.speculated, %.0296   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %gep300 = getelementptr [4 x i8], ptr %invariant.gep299, i64 %.0296
  store ptr %gep300, ptr %22, align 8
  store i64 %4, ptr %i.bc, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %smin314, i64 noundef %i.dp, i64 noundef 0, i64 noundef 0)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.dq = getelementptr [4 x i8], ptr %7, i64 %.0296
  store ptr %i.dq, ptr %23, align 8
  store i64 %9, ptr %i.bd, align 8
  %i.dr = load float, ptr %10, align 4, !tbaa !9
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %i.dp, i64 noundef %smin314, i64 noundef %1, float noundef %i.dr, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.ds = icmp slt i64 %i.do, %0
  br i1 %i.ds, label %bb.ae, label %._crit_edge298, !llvm.loop !896

bb.ah:                                            ; preds = %bb.ae
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.z, %bb.aa, %bb.ac, %bb.ab, %bb.s
  %.pn150.pn.pn = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.di, %bb.ab ], [ %i.dg, %bb.z ], [ %i.dt, %bb.ah ], [ %i.dh, %bb.aa ], [ %i.du, %bb.ai ], [ %i.dj, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br i1 %i.ag, label %bb.ak, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit197

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.ae) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit197

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit197: ; preds = %bb.aj, %bb.ak, %bb.p, %bb.o
  %.pn150.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.bm, %bb.p ], [ %.pn150.pn.pn, %bb.ak ], [ %.pn150.pn.pn, %bb.aj ]
  br i1 %i.s, label %bb.al, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit198

bb.al:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit197
  call void @free(ptr noundef %i.q) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit198

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit198: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit197, %bb.al
  resume { ptr, i32 } %.pn150.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !897
  %i.b = sdiv i64 %4, 8
  %i.c = shl nsw i64 %i.b, 3                      ; 4 uses
  %i.d = sub nsw i64 %4, %i.c
  %i.e = sdiv i64 %i.d, 4
  %i.f = shl nsw i64 %i.e, 2
  %i.g = add i64 %i.f, %i.c                       ; 3 uses
  %i.h = icmp sgt i64 %4, 7
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
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 8)
  br label %.preheader63

.preheader64.us:                                  ; preds = %.preheader64.us.preheader, %._crit_edge.us
  %.05568.us = phi i64 [ %i.ax, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 4 uses
  %.05667.us = phi i64 [ %.lcssa120, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 2 uses
  br i1 %i.k, label %.epil.preheader, label %.preheader64.us.new

.preheader64.us.new:                              ; preds = %.preheader64.us, %.preheader64.us.new
  %.05466.us = phi i64 [ %i.ak, %.preheader64.us.new ], [ 0, %.preheader64.us ] ; 3 uses
  %.15765.us = phi i64 [ %i.aj, %.preheader64.us.new ], [ %.05667.us, %.preheader64.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader64.us.new ], [ 0, %.preheader64.us ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !724
  %i.m = load i64, ptr %i.j, align 8, !tbaa !726
  %i.n = mul nsw i64 %i.m, %.05466.us             ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %i.l, i64 %.05568.us ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load <4 x float>, ptr %i.p, align 1, !tbaa !16
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %i.s = getelementptr [4 x i8], ptr %i.r, i64 %i.n
  %i.t = load <4 x float>, ptr %i.s, align 1, !tbaa !16
  %i.u = getelementptr inbounds [4 x i8], ptr %1, i64 %.15765.us ; 2 uses
  store <4 x float> %i.q, ptr %i.u, align 16, !tbaa !16
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <4 x float> %i.t, ptr %i.v, align 16, !tbaa !16
  %i.w = or disjoint i64 %.05466.us, 1
  %i.x = load ptr, ptr %2, align 8, !tbaa !724
  %i.y = load i64, ptr %i.j, align 8, !tbaa !726
  %i.z = mul nsw i64 %i.y, %i.w                   ; 2 uses
  %i.aa = getelementptr [4 x i8], ptr %i.x, i64 %.05568.us ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load <4 x float>, ptr %i.ab, align 1, !tbaa !16
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %i.z
  %i.af = load <4 x float>, ptr %i.ae, align 1, !tbaa !16
  %i.ag = getelementptr [4 x i8], ptr %1, i64 %.15765.us ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  store <4 x float> %i.ac, ptr %i.ah, align 16, !tbaa !16
  %i.ai = getelementptr i8, ptr %i.ag, i64 48
  store <4 x float> %i.af, ptr %i.ai, align 16, !tbaa !16
  %i.aj = add nsw i64 %.15765.us, 16              ; 3 uses
  %i.ak = add nuw nsw i64 %.05466.us, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader64.us.new, !llvm.loop !898

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader64.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader64.us
  %.05466.us.epil.init = phi i64 [ 0, %.preheader64.us ], [ %i.ak, %._crit_edge.us.unr-lcssa ]
  %.15765.us.epil.init = phi i64 [ %.05667.us, %.preheader64.us ], [ %i.aj, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod123)
  %i.al = load ptr, ptr %2, align 8, !tbaa !724
  %i.am = load i64, ptr %i.j, align 8, !tbaa !726
  %i.an = mul nsw i64 %i.am, %.05466.us.epil.init ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.al, i64 %.05568.us ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load <4 x float>, ptr %i.ap, align 1, !tbaa !16
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %i.an
  %i.at = load <4 x float>, ptr %i.as, align 1, !tbaa !16
  %i.au = getelementptr inbounds [4 x i8], ptr %1, i64 %.15765.us.epil.init ; 2 uses
  store <4 x float> %i.aq, ptr %i.au, align 16, !tbaa !16
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <4 x float> %i.at, ptr %i.av, align 16, !tbaa !16
  %i.aw = add nsw i64 %.15765.us.epil.init, 8
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa120 = phi i64 [ %i.aj, %._crit_edge.us.unr-lcssa ], [ %i.aw, %.epil.preheader ] ; 2 uses
  %i.ax = add nuw nsw i64 %.05568.us, 8           ; 3 uses
  %i.ay = icmp slt i64 %i.ax, %i.c
  br i1 %i.ay, label %.preheader64.us, label %.preheader63, !llvm.loop !899

.preheader63:                                     ; preds = %._crit_edge.us, %.preheader64.preheader, %bb.a
  %.056.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.preheader64.preheader ], [ %.lcssa120, %._crit_edge.us ] ; 3 uses
  %.055.lcssa = phi i64 [ 0, %bb.a ], [ %smax, %.preheader64.preheader ], [ %i.ax, %._crit_edge.us ] ; 6 uses
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
  %7 = add i64 %.055.lcssa, 4
  %smax95 = tail call i64 @llvm.smax.i64(i64 %i.g, i64 %7)
  %i.bd = xor i64 %.055.lcssa, -1
  %i.be = add i64 %smax95, %i.bd
  %i.bf = and i64 %i.be, -4
  %i.bg = add i64 %.055.lcssa, %i.bf
  %i.bh = add i64 %i.bg, 4
  br label %.preheader61

.preheader62.us:                                  ; preds = %.preheader62.us.preheader, %._crit_edge.us78
  %.175.us = phi i64 [ %i.ci, %._crit_edge.us78 ], [ %.055.lcssa, %.preheader62.us.preheader ] ; 4 uses
  %.25874.us = phi i64 [ %.lcssa118, %._crit_edge.us78 ], [ %.056.lcssa, %.preheader62.us.preheader ] ; 2 uses
  br i1 %i.bc, label %.epil.preheader124, label %.preheader62.us.new

.preheader62.us.new:                              ; preds = %.preheader62.us, %.preheader62.us.new
  %.05373.us = phi i64 [ %i.bz, %.preheader62.us.new ], [ 0, %.preheader62.us ] ; 3 uses
  %.372.us = phi i64 [ %i.by, %.preheader62.us.new ], [ %.25874.us, %.preheader62.us ] ; 3 uses
  %niter130 = phi i64 [ %niter130.next.1, %.preheader62.us.new ], [ 0, %.preheader62.us ]
  %i.bi = load ptr, ptr %2, align 8, !tbaa !724
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !726
  %i.bk = mul nsw i64 %i.bj, %.05373.us
  %i.bl = getelementptr [4 x i8], ptr %i.bi, i64 %.175.us
  %i.bm = getelementptr [4 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load <4 x float>, ptr %i.bm, align 1, !tbaa !16
  %i.bo = getelementptr inbounds [4 x i8], ptr %1, i64 %.372.us
  store <4 x float> %i.bn, ptr %i.bo, align 16, !tbaa !16
  %i.bp = or disjoint i64 %.05373.us, 1
  %i.bq = load ptr, ptr %2, align 8, !tbaa !724
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !726
  %i.bs = mul nsw i64 %i.br, %i.bp
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %.175.us
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load <4 x float>, ptr %i.bu, align 1, !tbaa !16
  %i.bw = getelementptr [4 x i8], ptr %1, i64 %.372.us
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store <4 x float> %i.bv, ptr %i.bx, align 16, !tbaa !16
  %i.by = add nsw i64 %.372.us, 8                 ; 3 uses
  %i.bz = add nuw nsw i64 %.05373.us, 2           ; 2 uses
  %niter130.next.1 = add nuw nsw i64 %niter130, 2 ; 2 uses
  %niter130.ncmp.1 = icmp eq i64 %niter130.next.1, %unroll_iter129
  br i1 %niter130.ncmp.1, label %._crit_edge.us78.unr-lcssa, label %.preheader62.us.new, !llvm.loop !900

._crit_edge.us78.unr-lcssa:                       ; preds = %.preheader62.us.new
  br i1 %lcmp.mod126.not, label %._crit_edge.us78, label %.epil.preheader124

.epil.preheader124:                               ; preds = %._crit_edge.us78.unr-lcssa, %.preheader62.us
  %.05373.us.epil.init = phi i64 [ 0, %.preheader62.us ], [ %i.bz, %._crit_edge.us78.unr-lcssa ]
  %.372.us.epil.init = phi i64 [ %.25874.us, %.preheader62.us ], [ %i.by, %._crit_edge.us78.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.ca = load ptr, ptr %2, align 8, !tbaa !724
  %i.cb = load i64, ptr %i.bb, align 8, !tbaa !726
  %i.cc = mul nsw i64 %i.cb, %.05373.us.epil.init
  %i.cd = getelementptr [4 x i8], ptr %i.ca, i64 %.175.us
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load <4 x float>, ptr %i.ce, align 1, !tbaa !16
  %i.cg = getelementptr inbounds [4 x i8], ptr %1, i64 %.372.us.epil.init
  store <4 x float> %i.cf, ptr %i.cg, align 16, !tbaa !16
  %i.ch = add nsw i64 %.372.us.epil.init, 4
  br label %._crit_edge.us78

._crit_edge.us78:                                 ; preds = %._crit_edge.us78.unr-lcssa, %.epil.preheader124
  %.lcssa118 = phi i64 [ %i.by, %._crit_edge.us78.unr-lcssa ], [ %i.ch, %.epil.preheader124 ] ; 2 uses
  %i.ci = add nuw nsw i64 %.175.us, 4             ; 3 uses
  %i.cj = icmp slt i64 %i.ci, %i.g
  br i1 %i.cj, label %.preheader62.us, label %.preheader61, !llvm.loop !901

.preheader61:                                     ; preds = %._crit_edge.us78, %.preheader62.preheader, %.preheader63
  %.258.lcssa = phi i64 [ %.056.lcssa, %.preheader63 ], [ %.056.lcssa, %.preheader62.preheader ], [ %.lcssa118, %._crit_edge.us78 ]
  %.1.lcssa = phi i64 [ %.055.lcssa, %.preheader63 ], [ %i.bh, %.preheader62.preheader ], [ %i.ci, %._crit_edge.us78 ] ; 3 uses
  %i.ck = icmp slt i64 %.1.lcssa, %4
  %i.cl = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge86.split

.preheader.lr.ph.split:                           ; preds = %.preheader61
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %2, align 8, !tbaa !724   ; 2 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !726 ; 6 uses
  %min.iters.check = icmp ugt i64 %3, 7
  %ident.check.not = icmp eq i64 %i.cp, 1
  %or.cond116 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %3, 9223372036854775800        ; 4 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter131 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.285 = phi i64 [ %.1.lcssa, %.preheader.lr.ph.split ], [ %i.dn, %._crit_edge ] ; 2 uses
  %.484 = phi i64 [ %.258.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.cq = getelementptr [4 x i8], ptr %i.cn, i64 %.285 ; 6 uses
  br i1 %or.cond116, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader
  %i.cr = add i64 %.1.lcssa, %indvar
  %i.cs = shl i64 %i.cr, 2
  %i.ct = add i64 %i.cs, %i.co
  %i.cu = sub i64 %i.a, %i.ct
  %i.cv = shl i64 %.484, 2
  %i.cw = add i64 %i.cu, %i.cv
  %i.cx = add i64 %i.cw, -1
  %diff.check = icmp ult i64 %i.cx, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cy = add i64 %.484, %n.vec                   ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %1, i64 %.484
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = getelementptr [4 x i8], ptr %i.cq, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load = load <4 x float>, ptr %i.da, align 4, !tbaa !9
  %wide.load114 = load <4 x float>, ptr %i.db, align 4, !tbaa !9
  %i.dc = getelementptr [4 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <4 x float> %wide.load, ptr %i.dc, align 4, !tbaa !9
  store <4 x float> %wide.load114, ptr %i.dd, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !902

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
  %i.dg = getelementptr [4 x i8], ptr %i.cq, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !9
  %i.di = add nsw i64 %.582.prol, 1               ; 3 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %1, i64 %.582.prol
  store float %i.dh, ptr %i.dj, align 4, !tbaa !9
  %i.dk = add nuw nsw i64 %.083.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter131
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !903

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
  br i1 %exitcond98.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !904

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.083 = phi i64 [ %i.el, %scalar.ph ], [ %.083.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.582 = phi i64 [ %i.ei, %scalar.ph ], [ %.582.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.do = mul nsw i64 %i.cp, %.083
  %i.dp = getelementptr [4 x i8], ptr %i.cq, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !9
  %i.dr = getelementptr inbounds [4 x i8], ptr %1, i64 %.582
  store float %i.dq, ptr %i.dr, align 4, !tbaa !9
  %i.ds = add nuw nsw i64 %.083, 1
  %i.dt = mul nsw i64 %i.cp, %i.ds
  %i.du = getelementptr [4 x i8], ptr %i.cq, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !9
  %i.dw = getelementptr [4 x i8], ptr %1, i64 %.582
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  store float %i.dv, ptr %i.dx, align 4, !tbaa !9
  %i.dy = add nuw nsw i64 %.083, 2
  %i.dz = mul nsw i64 %i.cp, %i.dy
  %i.ea = getelementptr [4 x i8], ptr %i.cq, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !9
  %i.ec = getelementptr [4 x i8], ptr %1, i64 %.582
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  store float %i.eb, ptr %i.ed, align 4, !tbaa !9
  %i.ee = add nuw nsw i64 %.083, 3
  %i.ef = mul nsw i64 %i.cp, %i.ee
  %i.eg = getelementptr [4 x i8], ptr %i.cq, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !9
  %i.ei = add nsw i64 %.582, 4                    ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %1, i64 %.582
  %i.ek = getelementptr i8, ptr %i.ej, i64 12
  store float %i.eh, ptr %i.ek, align 4, !tbaa !9
  %i.el = add nuw nsw i64 %.083, 4                ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %i.el, %3
  br i1 %exitcond97.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !905

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader61
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 8 dereferenceable(40) %11) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll:bb.a
  %i.fy = load double, ptr %gep, align 8, !tbaa !22
  %i.fz = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179
  store double %i.fy, ptr %i.fz, align 8, !tbaa !22
  %i.ga = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.1 = getelementptr i8, ptr %i.ga, i64 8
  %i.gb = load double, ptr %gep.1, align 8, !tbaa !22
  %i.gc = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  store double %i.gb, ptr %i.gd, align 8, !tbaa !22
  %i.ge = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.2 = getelementptr i8, ptr %i.ge, i64 16
  %i.gf = load double, ptr %gep.2, align 8, !tbaa !22
  %i.gg = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  store double %i.gf, ptr %i.gh, align 8, !tbaa !22
  %i.gi = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.3 = getelementptr i8, ptr %i.gi, i64 24
  %i.gj = load double, ptr %gep.3, align 8, !tbaa !22
  %i.gk = add nsw i64 %.9179, 4                   ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.gm = getelementptr i8, ptr %i.gl, i64 24
  store double %i.gj, ptr %i.gm, align 8, !tbaa !22
  %i.gn = add nuw nsw i64 %.0180, 4               ; 2 uses
  %exitcond210.not.3 = icmp eq i64 %i.gn, %3
  br i1 %exitcond210.not.3, label %._crit_edge182, label %scalar.ph, !llvm.loop !1572

._crit_edge186.split:                             ; preds = %._crit_edge182, %.preheader137
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, double noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %12 = alloca %"struct.Eigen::internal::lhs_process_one_packet.4354", align 1 ; 3 uses
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
  br i1 %i.af, label %bb.b, label %._crit_edge809, !llvm.loop !1573

._crit_edge809:                                   ; preds = %.loopexit706, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, double noundef %7, i64 noundef %i.f, i64 noundef %i.j, i64 noundef %spec.select, i64 noundef %.0249, i64 noundef %10, i64 noundef %11, i32 noundef 4, i64 noundef %i.s, i64 noundef 8, i64 noundef %6, i64 noundef %5, i64 noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
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
  %i.ak = load ptr, ptr %1, align 8, !tbaa !1574  ; 2 uses
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !1576 ; 8 uses
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
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !22
  %i.az = load <4 x double>, ptr %.0229814.us.us, align 8, !tbaa !22
  %i.ba = insertelement <4 x double> poison, double %i.ay, i64 0
  %i.bb = shufflevector <4 x double> %i.ba, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bc = fmul <4 x double> %i.bb, %i.az
  %i.bd = fadd <4 x double> %i.aw, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.0229814.us.us, i64 32
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %gep824.us.us, i64 %.0228815.us.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !22
  %i.bi = load <4 x double>, ptr %i.be, align 8, !tbaa !22
  %i.bj = insertelement <4 x double> poison, double %i.bh, i64 0
  %i.bk = shufflevector <4 x double> %i.bj, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bl = fmul <4 x double> %i.bk, %i.bi
  %i.bm = fadd <4 x double> %i.bd, %i.bl          ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0229814.us.us, i64 64 ; 2 uses
  %i.bo = add nuw nsw i64 %.0228815.us.us, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge818.us.us.unr-lcssa, label %.lr.ph817.us.us.new, !llvm.loop !1577

._crit_edge818.us.us.unr-lcssa:                   ; preds = %.lr.ph817.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge818.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge818.us.us.unr-lcssa, %.lr.ph817.us.us
  %.0228815.us.us.epil.init = phi i64 [ 0, %.lr.ph817.us.us ], [ %i.bo, %._crit_edge818.us.us.unr-lcssa ]
  %.0229814.us.us.epil.init = phi ptr [ %gep830.us, %.lr.ph817.us.us ], [ %i.bn, %._crit_edge818.us.us.unr-lcssa ]
  %.epil.init = phi <4 x double> [ zeroinitializer, %.lr.ph817.us.us ], [ %i.bm, %._crit_edge818.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1019)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %gep824.us.us, i64 %.0228815.us.us.epil.init
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !22
  %i.br = load <4 x double>, ptr %.0229814.us.us.epil.init, align 8, !tbaa !22
  %i.bs = insertelement <4 x double> poison, double %i.bq, i64 0
  %i.bt = shufflevector <4 x double> %i.bs, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bu = fmul <4 x double> %i.bt, %i.br
  %i.bv = fadd <4 x double> %.epil.init, %i.bu
  br label %._crit_edge818.us.us

._crit_edge818.us.us:                             ; preds = %._crit_edge818.us.us.unr-lcssa, %.epil.preheader
  %.lcssa988 = phi <4 x double> [ %i.bm, %._crit_edge818.us.us.unr-lcssa ], [ %i.bv, %.epil.preheader ] ; 4 uses
  %i.bw = getelementptr [8 x i8], ptr %i.ak, i64 %.0230825.us.us ; 4 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.ao ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !22
  %i.bz = extractelement <4 x double> %.lcssa988, i64 0
  %i.ca = call double @llvm.fmuladd.f64(double %7, double %i.bz, double %i.by)
  store double %i.ca, ptr %i.bx, align 8, !tbaa !22
  %i.cb = getelementptr [8 x i8], ptr %i.bw, i64 %i.aq ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !22
  %i.cd = extractelement <4 x double> %.lcssa988, i64 1
  %i.ce = call double @llvm.fmuladd.f64(double %7, double %i.cd, double %i.cc)
  store double %i.ce, ptr %i.cb, align 8, !tbaa !22
  %i.cf = getelementptr [8 x i8], ptr %i.bw, i64 %i.as ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !22
  %i.ch = extractelement <4 x double> %.lcssa988, i64 2
  %i.ci = call double @llvm.fmuladd.f64(double %7, double %i.ch, double %i.cg)
  store double %i.ci, ptr %i.cf, align 8, !tbaa !22
  %i.cj = getelementptr [8 x i8], ptr %i.bw, i64 %i.au ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !22
  %i.cl = extractelement <4 x double> %.lcssa988, i64 3
  %i.cm = call double @llvm.fmuladd.f64(double %7, double %i.cl, double %i.ck)
  store double %i.cm, ptr %i.cj, align 8, !tbaa !22
  %i.cn = add nsw i64 %.0230825.us.us, 1          ; 2 uses
  %13 = icmp slt i64 %i.cn, %4
  br i1 %13, label %.lr.ph817.us.us, label %._crit_edge827.split.us.us, !llvm.loop !1578

._crit_edge827.split.us.us:                       ; preds = %._crit_edge818.us.us
  %i.co = add nuw nsw i64 %.0231828.us, 4         ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.d
  br i1 %i.cp, label %.preheader699.us, label %.preheader698, !llvm.loop !1579

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
  %i.cu = load ptr, ptr %1, align 8, !tbaa !1574
  %i.cv = load i64, ptr %i.z, align 8, !tbaa !1576
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
  tail call void asm sideeffect "#begin gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !763
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !764
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !765
  %i.da = load <2 x double>, ptr %.0235755.us.us.us, align 16, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 16
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !16
  %i.dd = load double, ptr %.0234756.us.us.us, align 8, !tbaa !22
  %i.de = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = fmul <2 x double> %i.da, %i.df
  %i.dh = fadd <2 x double> %.0696753.us.us.us, %i.dg
  %i.di = fmul <2 x double> %i.dc, %i.df
  %i.dj = fadd <2 x double> %.0694754.us.us.us, %i.di
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !766
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !767
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !768
  %i.dk = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 32
  %i.dl = load <2 x double>, ptr %i.dk, align 16, !tbaa !16
  %i.dm = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 48
  %i.dn = load <2 x double>, ptr %i.dm, align 16, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !22
  %i.dq = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = fmul <2 x double> %i.dl, %i.dr
  %i.dt = fadd <2 x double> %i.dh, %i.ds
  %i.du = fmul <2 x double> %i.dn, %i.dr
  %i.dv = fadd <2 x double> %i.dj, %i.du
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !769
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !770
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !771
  %i.dw = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 64
  %i.dx = load <2 x double>, ptr %i.dw, align 16, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 80
  %i.dz = load <2 x double>, ptr %i.dy, align 16, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 16
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !22
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = fmul <2 x double> %i.dx, %i.ed
  %i.ef = fadd <2 x double> %i.dt, %i.ee
  %i.eg = fmul <2 x double> %i.dz, %i.ed
  %i.eh = fadd <2 x double> %i.dv, %i.eg
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !772
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !773
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !774
  %i.ei = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 96
  %i.ej = load <2 x double>, ptr %i.ei, align 16, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 112
  %i.el = load <2 x double>, ptr %i.ek, align 16, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 24
  %i.en = load double, ptr %i.em, align 8, !tbaa !22
  %i.eo = insertelement <2 x double> poison, double %i.en, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eq = fmul <2 x double> %i.ej, %i.ep
  %i.er = fadd <2 x double> %i.ef, %i.eq
  %i.es = fmul <2 x double> %i.el, %i.ep
  %i.et = fadd <2 x double> %i.eh, %i.es
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !775
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !776
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !777
  %i.eu = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 128
  %i.ev = load <2 x double>, ptr %i.eu, align 16, !tbaa !16
  %i.ew = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 144
  %i.ex = load <2 x double>, ptr %i.ew, align 16, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 32
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !22
  %i.fa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = fmul <2 x double> %i.ev, %i.fb
  %i.fd = fadd <2 x double> %i.er, %i.fc
  %i.fe = fmul <2 x double> %i.ex, %i.fb
  %i.ff = fadd <2 x double> %i.et, %i.fe
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !778
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !779
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !780
  %i.fg = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 160
  %i.fh = load <2 x double>, ptr %i.fg, align 16, !tbaa !16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 176
  %i.fj = load <2 x double>, ptr %i.fi, align 16, !tbaa !16
  %i.fk = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 40
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !22
  %i.fm = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fo = fmul <2 x double> %i.fh, %i.fn
  %i.fp = fadd <2 x double> %i.fd, %i.fo
  %i.fq = fmul <2 x double> %i.fj, %i.fn
  %i.fr = fadd <2 x double> %i.ff, %i.fq
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !781
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !782
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !783
  %i.fs = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 192
  %i.ft = load <2 x double>, ptr %i.fs, align 16, !tbaa !16
  %i.fu = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 208
  %i.fv = load <2 x double>, ptr %i.fu, align 16, !tbaa !16
  %i.fw = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 48
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !22
  %i.fy = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ga = fmul <2 x double> %i.ft, %i.fz
  %i.gb = fadd <2 x double> %i.fp, %i.ga
  %i.gc = fmul <2 x double> %i.fv, %i.fz
  %i.gd = fadd <2 x double> %i.fr, %i.gc
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !784
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !785
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !786
  %i.ge = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 224
  %i.gf = load <2 x double>, ptr %i.ge, align 16, !tbaa !16
  %i.gg = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 240
  %i.gh = load <2 x double>, ptr %i.gg, align 16, !tbaa !16
  %i.gi = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 56
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !22
  %i.gk = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = fmul <2 x double> %i.gf, %i.gl
  %i.gn = fadd <2 x double> %i.gb, %i.gm          ; 3 uses
  %i.go = fmul <2 x double> %i.gh, %i.gl
  %i.gp = fadd <2 x double> %i.gd, %i.go          ; 3 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !787
  %i.gq = getelementptr inbounds nuw i8, ptr %.0234756.us.us.us, i64 64 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0235755.us.us.us, i64 256 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !788
  %i.gs = add nuw nsw i64 %.0233757.us.us.us, 8   ; 2 uses
  %i.gt = icmp slt i64 %i.gs, %i.s
  br i1 %i.gt, label %bb.c, label %..preheader701_crit_edge.us.us.us, !llvm.loop !1580

.lr.ph769.us.us.us:                               ; preds = %..preheader701_crit_edge.us.us.us, %.lr.ph769.us.us.us
  %.0232768.us.us.us = phi i64 [ %i.hg, %.lr.ph769.us.us.us ], [ %i.s, %..preheader701_crit_edge.us.us.us ]
  %.1767.us.us.us = phi ptr [ %i.he, %.lr.ph769.us.us.us ], [ %i.gq, %..preheader701_crit_edge.us.us.us ] ; 2 uses
  %.1236766.us.us.us = phi ptr [ %i.hf, %.lr.ph769.us.us.us ], [ %i.gr, %..preheader701_crit_edge.us.us.us ] ; 3 uses
  %.1695765.us.us.us = phi <2 x double> [ %i.hd, %.lr.ph769.us.us.us ], [ %i.gp, %..preheader701_crit_edge.us.us.us ]
  %.1697764.us.us.us = phi <2 x double> [ %i.hb, %.lr.ph769.us.us.us ], [ %i.gn, %..preheader701_crit_edge.us.us.us ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !790
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !791
  %i.gu = load <2 x double>, ptr %.1236766.us.us.us, align 16, !tbaa !16
  %i.gv = getelementptr inbounds nuw i8, ptr %.1236766.us.us.us, i64 16
  %i.gw = load <2 x double>, ptr %i.gv, align 16, !tbaa !16
  %i.gx = load double, ptr %.1767.us.us.us, align 8, !tbaa !22
  %i.gy = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = fmul <2 x double> %i.gu, %i.gz
  %i.hb = fadd <2 x double> %.1697764.us.us.us, %i.ha ; 2 uses
  %i.hc = fmul <2 x double> %i.gw, %i.gz
  %i.hd = fadd <2 x double> %.1695765.us.us.us, %i.hc ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !792
  %i.he = getelementptr inbounds nuw i8, ptr %.1767.us.us.us, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.1236766.us.us.us, i64 32
  %i.hg = add nuw nsw i64 %.0232768.us.us.us, 1   ; 2 uses
  %i.hh = icmp slt i64 %i.hg, %5
  br i1 %i.hh, label %.lr.ph769.us.us.us, label %._crit_edge770.us.us.us, !llvm.loop !1581

._crit_edge770.us.us.us:                          ; preds = %.lr.ph769.us.us.us, %..preheader701_crit_edge.us.us.us
  %.1697.lcssa.us.us.us = phi <2 x double> [ %i.gn, %..preheader701_crit_edge.us.us.us ], [ %i.hb, %.lr.ph769.us.us.us ]
end_hunk_3
begin_hunk_4_@_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll:bb.a
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
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !811
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !812
  %i.sz = getelementptr inbounds nuw i8, ptr %.0243715, i64 224
  %i.ta = load <2 x double>, ptr %i.sz, align 16, !tbaa !16 ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.0243715, i64 240
  %i.tc = load <2 x double>, ptr %i.tb, align 16, !tbaa !16 ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.0241716, i64 224
  %i.te = load <4 x i32>, ptr %i.td, align 16, !tbaa !16 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.0241716, i64 240
  %i.tg = load <4 x i32>, ptr %i.tf, align 16, !tbaa !16 ; 2 uses
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
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !813
  %i.uf = getelementptr inbounds nuw i8, ptr %.0241716, i64 256 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.0243715, i64 256 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !814
  %i.uh = add nuw nsw i64 %.0240717, 8            ; 2 uses
  %i.ui = icmp slt i64 %i.uh, %i.s
  br i1 %i.ui, label %.lr.ph, label %.preheader702, !llvm.loop !1585

._crit_edge:                                      ; preds = %.lr.ph738, %.preheader702
  %.1693.lcssa = phi <2 x double> [ %.0692.lcssa, %.preheader702 ], [ %i.wq, %.lr.ph738 ]
  %.1691.lcssa = phi <2 x double> [ %.0690.lcssa, %.preheader702 ], [ %i.wk, %.lr.ph738 ]
  %.1689.lcssa = phi <2 x double> [ %.0688.lcssa, %.preheader702 ], [ %i.we, %.lr.ph738 ]
  %.1687.lcssa = phi <2 x double> [ %.0686.lcssa, %.preheader702 ], [ %i.vy, %.lr.ph738 ]
  %.1681.lcssa = phi <2 x double> [ %.0680.lcssa, %.preheader702 ], [ %i.wo, %.lr.ph738 ]
  %.1679.lcssa = phi <2 x double> [ %.0678.lcssa, %.preheader702 ], [ %i.wi, %.lr.ph738 ]
  %.1677.lcssa = phi <2 x double> [ %.0676.lcssa, %.preheader702 ], [ %i.wc, %.lr.ph738 ]
  %.1674.lcssa = phi <2 x double> [ %.0673.lcssa, %.preheader702 ], [ %i.vw, %.lr.ph738 ]
  %i.uj = load <2 x double>, ptr %i.jy, align 1, !tbaa !16
  %i.uk = getelementptr inbounds nuw i8, ptr %i.jy, i64 16 ; 2 uses
  %i.ul = load <2 x double>, ptr %i.uk, align 1, !tbaa !16
  %i.um = load <2 x double>, ptr %i.ka, align 1, !tbaa !16
  %i.un = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 2 uses
  %i.uo = load <2 x double>, ptr %i.un, align 1, !tbaa !16
  %i.up = fmul <2 x double> %i.ac, %.1674.lcssa
  %i.uq = fadd <2 x double> %i.up, %i.uj
  %i.ur = fmul <2 x double> %i.ac, %.1687.lcssa
  %i.us = fadd <2 x double> %i.ur, %i.ul
  %i.ut = fmul <2 x double> %i.ac, %.1677.lcssa
  %i.uu = fadd <2 x double> %i.ut, %i.um
  %i.uv = fmul <2 x double> %i.ac, %.1689.lcssa
  %i.uw = fadd <2 x double> %i.uv, %i.uo
  store <2 x double> %i.uq, ptr %i.jy, align 1, !tbaa !16
  store <2 x double> %i.us, ptr %i.uk, align 1, !tbaa !16
  store <2 x double> %i.uu, ptr %i.ka, align 1, !tbaa !16
  store <2 x double> %i.uw, ptr %i.un, align 1, !tbaa !16
  %i.ux = load <2 x double>, ptr %i.kc, align 1, !tbaa !16
  %i.uy = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %i.uz = load <2 x double>, ptr %i.uy, align 1, !tbaa !16
  %i.va = load <2 x double>, ptr %i.ke, align 1, !tbaa !16
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %i.vc = load <2 x double>, ptr %i.vb, align 1, !tbaa !16
  %i.vd = fmul <2 x double> %i.ac, %.1679.lcssa
  %i.ve = fadd <2 x double> %i.vd, %i.ux
  %i.vf = fmul <2 x double> %i.ac, %.1691.lcssa
  %i.vg = fadd <2 x double> %i.vf, %i.uz
  %i.vh = fmul <2 x double> %i.ac, %.1681.lcssa
  %i.vi = fadd <2 x double> %i.vh, %i.va
  %i.vj = fmul <2 x double> %i.ac, %.1693.lcssa
  %i.vk = fadd <2 x double> %i.vj, %i.vc
  store <2 x double> %i.ve, ptr %i.kc, align 1, !tbaa !16
  store <2 x double> %i.vg, ptr %i.uy, align 1, !tbaa !16
  store <2 x double> %i.vi, ptr %i.ke, align 1, !tbaa !16
  store <2 x double> %i.vk, ptr %i.vb, align 1, !tbaa !16
  %i.vl = add nuw nsw i64 %.0245747, 4            ; 2 uses
  %i.vm = icmp slt i64 %i.vl, %.sroa.speculated
  br i1 %i.vm, label %bb.e, label %._crit_edge749, !llvm.loop !1586

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
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !817
  %i.vn = load <2 x double>, ptr %.1244735, align 16, !tbaa !16 ; 4 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.1244735, i64 16
  %i.vp = load <2 x double>, ptr %i.vo, align 16, !tbaa !16 ; 4 uses
  %i.vq = load <4 x i32>, ptr %.1242736, align 16, !tbaa !16 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.1242736, i64 16
  %i.vs = load <4 x i32>, ptr %i.vr, align 16, !tbaa !16 ; 2 uses
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
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !818
  %i.wr = getelementptr inbounds nuw i8, ptr %.1242736, i64 32
  %i.ws = getelementptr inbounds nuw i8, ptr %.1244735, i64 32
  %i.wt = add nsw i64 %.0239737, 1                ; 2 uses
  %i.wu = icmp slt i64 %i.wt, %5
  br i1 %i.wu, label %.lr.ph738, label %._crit_edge, !llvm.loop !1587

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
  %i.xf = load ptr, ptr %1, align 8, !tbaa !1574  ; 4 uses
  %i.xg = load i64, ptr %i.xd, align 8, !tbaa !1576 ; 4 uses
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
  %i.xj = load double, ptr %gep847.prol, align 8, !tbaa !22
  %i.xk = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.xj)
  store double %i.xk, ptr %gep847.prol, align 8, !tbaa !22
  %i.xl = add nsw i64 %.0226843.prol, 1           ; 2 uses
  %14 = icmp slt i64 %i.xl, %4
  br i1 %14, label %bb.f, label %._crit_edge845.split.prol, !llvm.loop !1588

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
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !22
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %.0834.us.us
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !22
  %i.xw = fmul double %i.xt, %i.xv
  %i.xx = fadd double %.0675833.us.us, %i.xw
  %i.xy = or disjoint i64 %.0834.us.us, 1         ; 2 uses
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %gep840.us.us, i64 %i.xy
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !22
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %i.xy
  %i.yc = load double, ptr %i.yb, align 8, !tbaa !22
  %i.yd = fmul double %i.ya, %i.yc
  %i.ye = fadd double %i.xx, %i.yd
  %i.yf = or disjoint i64 %.0834.us.us, 2         ; 2 uses
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %gep840.us.us, i64 %i.yf
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !22
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %i.yf
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !22
  %i.yk = fmul double %i.yh, %i.yj
  %i.yl = fadd double %i.ye, %i.yk
  %i.ym = or disjoint i64 %.0834.us.us, 3         ; 2 uses
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %gep840.us.us, i64 %i.ym
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !22
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %i.ym
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !22
  %i.yr = fmul double %i.yo, %i.yq
  %i.ys = fadd double %i.yl, %i.yr                ; 3 uses
  %i.yt = add nuw nsw i64 %.0834.us.us, 4         ; 2 uses
  %niter1028.next.3 = add nuw nsw i64 %niter1028, 4 ; 2 uses
  %niter1028.ncmp.3 = icmp eq i64 %niter1028.next.3, %unroll_iter1027
  br i1 %niter1028.ncmp.3, label %._crit_edge837.us.us.unr-lcssa, label %.lr.ph836.us.us.new, !llvm.loop !1589

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
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !22
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %gep842.us, i64 %.0834.us.us.epil
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !22
  %i.yy = fmul double %i.yv, %i.yx
  %i.yz = fadd double %.0675833.us.us.epil, %i.yy ; 2 uses
  %i.za = add nuw nsw i64 %.0834.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1023
  br i1 %epil.iter.cmp.not, label %._crit_edge837.us.us, label %bb.g, !llvm.loop !1590

._crit_edge837.us.us:                             ; preds = %bb.g, %._crit_edge837.us.us.unr-lcssa
  %.lcssa = phi double [ %i.ys, %._crit_edge837.us.us.unr-lcssa ], [ %i.yz, %bb.g ]
  %gep847.us.us = getelementptr [8 x i8], ptr %invariant.gep846.us, i64 %.0226843.us.us ; 2 uses
  %i.zb = load double, ptr %gep847.us.us, align 8, !tbaa !22
  %i.zc = call double @llvm.fmuladd.f64(double %7, double %.lcssa, double %i.zb)
  store double %i.zc, ptr %gep847.us.us, align 8, !tbaa !22
  %i.zd = add nsw i64 %.0226843.us.us, 1          ; 2 uses
  %15 = icmp slt i64 %i.zd, %4
  br i1 %15, label %.lr.ph836.us.us, label %._crit_edge845.split.us.us, !llvm.loop !1588

._crit_edge845.split.us.us:                       ; preds = %._crit_edge837.us.us
  %i.ze = add nsw i64 %.0227848.us, 1             ; 2 uses
  %exitcond892.not.a = icmp eq i64 %i.ze, %6
  br i1 %exitcond892.not.a, label %.loopexit, label %.preheader.us, !llvm.loop !1591

._crit_edge827.split:                             ; preds = %bb.h
  %i.zf = add nuw nsw i64 %.0231828, 4            ; 2 uses
  %i.zg = icmp slt i64 %i.zf, %i.d
  br i1 %i.zg, label %.preheader699, label %.preheader698, !llvm.loop !1579

bb.h:                                             ; preds = %.preheader699, %bb.h
  %.0230825 = phi i64 [ %i.r, %.preheader699 ], [ %i.zv, %bb.h ] ; 3 uses
  %i.zh = mul nsw i64 %.0230825, %spec.select
  %gep824 = getelementptr [8 x i8], ptr %invariant.gep823, i64 %i.zh
  call void @llvm.prefetch.p0(ptr %gep824, i32 0, i32 3, i32 1)
  %i.zi = getelementptr [8 x i8], ptr %i.ak, i64 %.0230825 ; 4 uses
  %i.zj = getelementptr [8 x i8], ptr %i.zi, i64 %i.wv ; 2 uses
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !22
  %i.zl = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.zk)
  store double %i.zl, ptr %i.zj, align 8, !tbaa !22
  %i.zm = getelementptr [8 x i8], ptr %i.zi, i64 %i.wx ; 2 uses
  %i.zn = load double, ptr %i.zm, align 8, !tbaa !22
  %i.zo = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.zn)
  store double %i.zo, ptr %i.zm, align 8, !tbaa !22
  %i.zp = getelementptr [8 x i8], ptr %i.zi, i64 %i.wz ; 2 uses
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !22
  %i.zr = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.zq)
  store double %i.zr, ptr %i.zp, align 8, !tbaa !22
  %i.zs = getelementptr [8 x i8], ptr %i.zi, i64 %i.xb ; 2 uses
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !22
  %i.zu = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.zt)
  store double %i.zu, ptr %i.zs, align 8, !tbaa !22
  %i.zv = add nsw i64 %.0230825, 1                ; 2 uses
  %16 = icmp slt i64 %i.zv, %4
  br i1 %16, label %bb.h, label %._crit_edge827.split, !llvm.loop !1578

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
  %i.aaa = load double, ptr %gep847.1, align 8, !tbaa !22
  %i.aab = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.aaa)
  store double %i.aab, ptr %gep847.1, align 8, !tbaa !22
  %i.aac = add nsw i64 %.0226843.1, 1             ; 2 uses
  %17 = icmp slt i64 %i.aac, %4
  br i1 %17, label %bb.i, label %._crit_edge845.split.1, !llvm.loop !1588

._crit_edge845.split.1:                           ; preds = %bb.i
  %i.aad = add nsw i64 %.0227848, 2               ; 2 uses
  %exitcond890.not.1 = icmp eq i64 %i.aad, %6
  br i1 %exitcond890.not.1, label %.loopexit, label %.preheader, !llvm.loop !1591

bb.j:                                             ; preds = %.preheader, %bb.j
  %.0226843 = phi i64 [ %i.r, %.preheader ], [ %i.aah, %bb.j ] ; 3 uses
  %i.aae = mul nsw i64 %.0226843, %spec.select
  %gep840 = getelementptr [8 x i8], ptr %invariant.gep839, i64 %i.aae
  call void @llvm.prefetch.p0(ptr %gep840, i32 0, i32 3, i32 1)
  %gep847 = getelementptr [8 x i8], ptr %invariant.gep846, i64 %.0226843 ; 2 uses
  %i.aaf = load double, ptr %gep847, align 8, !tbaa !22
  %i.aag = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.aaf)
  store double %i.aag, ptr %gep847, align 8, !tbaa !22
  %i.aah = add nsw i64 %.0226843, 1               ; 2 uses
  %18 = icmp slt i64 %i.aah, %4
  br i1 %18, label %bb.j, label %._crit_edge845.split, !llvm.loop !1588

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %._crit_edge845.split.1, %._crit_edge845.split.us.us, %.preheader698, %._crit_edge809
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, double noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #3 comdat align 2 {
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
  %i.l = load ptr, ptr %1, align 8, !tbaa !1574
  %i.m = load i64, ptr %i.c, align 8, !tbaa !1576 ; 4 uses
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
  tail call void asm sideeffect "#begin gebp micro kernel 1/half/quarterX4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !824
  %i.am = getelementptr inbounds nuw i8, ptr %.0122429, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.am, i32 0, i32 3, i32 1)
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !825
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !826
  %i.an = load <2 x double>, ptr %.0124428, align 16, !tbaa !16 ; 4 uses
  %i.ao = load <4 x i32>, ptr %.0122429, align 16, !tbaa !16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122429, i64 16
  %i.aq = load <4 x i32>, ptr %i.ap, align 16, !tbaa !16 ; 2 uses
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
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !827
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !825
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !826
  %i.bh = getelementptr inbounds nuw i8, ptr %.0124428, i64 16
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0122429, i64 32
  %i.bk = load <4 x i32>, ptr %i.bj, align 16, !tbaa !16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0122429, i64 48
  %i.bm = load <4 x i32>, ptr %i.bl, align 16, !tbaa !16 ; 2 uses
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
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !827
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !825
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !826
  %i.cd = getelementptr inbounds nuw i8, ptr %.0124428, i64 32
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !16 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0122429, i64 64
  %i.cg = load <4 x i32>, ptr %i.cf, align 16, !tbaa !16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0122429, i64 80
  %i.ci = load <4 x i32>, ptr %i.ch, align 16, !tbaa !16 ; 2 uses
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
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !827
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !825
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !826
  %i.cz = getelementptr inbounds nuw i8, ptr %.0124428, i64 48
  %i.da = load <2 x double>, ptr %i.cz, align 16, !tbaa !16 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0122429, i64 96
  %i.dc = load <4 x i32>, ptr %i.db, align 16, !tbaa !16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0122429, i64 112
  %i.de = load <4 x i32>, ptr %i.dd, align 16, !tbaa !16 ; 2 uses
  %i.df = bitcast <4 x i32> %i.dc to <2 x double>
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x double> %i.da, %i.dg
  %i.di = fadd <2 x double> %i.bq, %i.dh
  %i.dj = bitcast <4 x i32> %i.dc to <2 x double>
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fmul <2 x double> %i.da, %i.dk
  %i.dm = fadd <2 x double> %i.bu, %i.dl
  %i.dn = bitcast <4 x i32> %i.de to <2 x double>
end_hunk_4
begin_hunk_5_@_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi1ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.aj

bb.ab:                                            ; preds = %bb.w
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.aj

bb.ac:                                            ; preds = %bb.x
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.aj

bb.ad:                                            ; preds = %bb.y, %bb.v
  %i.dc = add nsw i64 %.0125291, %.sroa.speculated218 ; 2 uses
  %i.dd = icmp slt i64 %i.dc, %smin312
  %indvar.next304 = add i64 %indvar303, 1
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated218
  br i1 %i.dd, label %.lr.ph293, label %.preheader, !llvm.loop !1615

._crit_edge296:                                   ; preds = %bb.ag, %.preheader
  %i.de = sub nsw i64 %.0126299, %i.b             ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.df, label %bb.q, label %._crit_edge302, !llvm.loop !1616

bb.ae:                                            ; preds = %.lr.ph295, %bb.ag
  %.0294 = phi i64 [ %.0126299, %.lr.ph295 ], [ %i.dg, %bb.ag ] ; 4 uses
  %i.dg = add nsw i64 %.0294, %.sroa.speculated224 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.dg)
  %i.dh = sub nsw i64 %.sroa.speculated, %.0294   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %gep298 = getelementptr [8 x i8], ptr %invariant.gep297, i64 %.0294
  store ptr %gep298, ptr %22, align 8
  store i64 %4, ptr %i.au, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %smin312, i64 noundef %i.dh, i64 noundef 0, i64 noundef 0)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.di = getelementptr [8 x i8], ptr %7, i64 %.0294
  store ptr %i.di, ptr %23, align 8
  store i64 %9, ptr %i.av, align 8
  %i.dj = load double, ptr %10, align 8, !tbaa !22
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %i.dh, i64 noundef %smin312, i64 noundef %1, double noundef %i.dj, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.dk = icmp slt i64 %i.dg, %0
  br i1 %i.dk, label %bb.ae, label %._crit_edge296, !llvm.loop !1617

bb.ah:                                            ; preds = %bb.ae
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.z, %bb.aa, %bb.ac, %bb.ab, %bb.s
  %.pn149.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.s ], [ %i.da, %bb.ab ], [ %i.cy, %bb.z ], [ %i.dl, %bb.ah ], [ %i.cz, %bb.aa ], [ %i.dm, %bb.ai ], [ %i.db, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br i1 %i.ag, label %bb.ak, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit195

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.ae) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit195

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit195: ; preds = %bb.ak, %bb.aj, %bb.p, %bb.o
  %.pn149.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.o ], [ %i.be, %bb.p ], [ %.pn149.pn.pn, %bb.aj ], [ %.pn149.pn.pn, %bb.ak ]
  br i1 %i.s, label %bb.al, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit196

bb.al:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit195
  call void @free(ptr noundef %i.q) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit196

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit196: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit195, %bb.al
  resume { ptr, i32 } %.pn149.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !897
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
  %i.l = load ptr, ptr %2, align 8, !tbaa !1544
  %i.m = load i64, ptr %i.j, align 8, !tbaa !1546
  %i.n = mul nsw i64 %i.m, %.05466.us             ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %.05568.us ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load <2 x double>, ptr %i.p, align 1, !tbaa !16
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.n
  %i.t = load <2 x double>, ptr %i.s, align 1, !tbaa !16
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %.15765.us ; 2 uses
  store <2 x double> %i.q, ptr %i.u, align 16, !tbaa !16
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x double> %i.t, ptr %i.v, align 16, !tbaa !16
  %i.w = or disjoint i64 %.05466.us, 1
  %i.x = load ptr, ptr %2, align 8, !tbaa !1544
  %i.y = load i64, ptr %i.j, align 8, !tbaa !1546
  %i.z = mul nsw i64 %i.y, %i.w                   ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.x, i64 %.05568.us ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load <2 x double>, ptr %i.ab, align 1, !tbaa !16
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.af = load <2 x double>, ptr %i.ae, align 1, !tbaa !16
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %.15765.us ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  store <2 x double> %i.ac, ptr %i.ah, align 16, !tbaa !16
  %i.ai = getelementptr i8, ptr %i.ag, i64 48
  store <2 x double> %i.af, ptr %i.ai, align 16, !tbaa !16
  %i.aj = add nsw i64 %.15765.us, 8               ; 3 uses
  %i.ak = add nuw nsw i64 %.05466.us, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader64.us.new, !llvm.loop !1618

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader64.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader64.us
  %.05466.us.epil.init = phi i64 [ 0, %.preheader64.us ], [ %i.ak, %._crit_edge.us.unr-lcssa ]
  %.15765.us.epil.init = phi i64 [ %.05667.us, %.preheader64.us ], [ %i.aj, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod123)
  %i.al = load ptr, ptr %2, align 8, !tbaa !1544
  %i.am = load i64, ptr %i.j, align 8, !tbaa !1546
  %i.an = mul nsw i64 %i.am, %.05466.us.epil.init ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %.05568.us ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !16
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.an
  %i.at = load <2 x double>, ptr %i.as, align 1, !tbaa !16
  %i.au = getelementptr inbounds [8 x i8], ptr %1, i64 %.15765.us.epil.init ; 2 uses
  store <2 x double> %i.aq, ptr %i.au, align 16, !tbaa !16
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <2 x double> %i.at, ptr %i.av, align 16, !tbaa !16
  %i.aw = add nsw i64 %.15765.us.epil.init, 4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa120 = phi i64 [ %i.aj, %._crit_edge.us.unr-lcssa ], [ %i.aw, %.epil.preheader ] ; 2 uses
  %i.ax = add nuw nsw i64 %.05568.us, 4           ; 3 uses
  %i.ay = icmp slt i64 %i.ax, %i.c
  br i1 %i.ay, label %.preheader64.us, label %.preheader63, !llvm.loop !1619

.preheader63:                                     ; preds = %._crit_edge.us, %.preheader64.preheader, %bb.a
  %.056.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.preheader64.preheader ], [ %.lcssa120, %._crit_edge.us ] ; 3 uses
  %.055.lcssa = phi i64 [ 0, %bb.a ], [ %smax, %.preheader64.preheader ], [ %i.ax, %._crit_edge.us ] ; 6 uses
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
  %7 = add i64 %.055.lcssa, 2
  %smax95 = tail call i64 @llvm.smax.i64(i64 %i.g, i64 %7)
  %i.bd = xor i64 %.055.lcssa, -1
  %i.be = add i64 %smax95, %i.bd
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
  %i.bi = load ptr, ptr %2, align 8, !tbaa !1544
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !1546
  %i.bk = mul nsw i64 %i.bj, %.05373.us
  %i.bl = getelementptr [8 x i8], ptr %i.bi, i64 %.175.us
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load <2 x double>, ptr %i.bm, align 1, !tbaa !16
  %i.bo = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us
  store <2 x double> %i.bn, ptr %i.bo, align 16, !tbaa !16
  %i.bp = or disjoint i64 %.05373.us, 1
  %i.bq = load ptr, ptr %2, align 8, !tbaa !1544
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !1546
  %i.bs = mul nsw i64 %i.br, %i.bp
  %i.bt = getelementptr [8 x i8], ptr %i.bq, i64 %.175.us
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load <2 x double>, ptr %i.bu, align 1, !tbaa !16
  %i.bw = getelementptr [8 x i8], ptr %1, i64 %.372.us
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store <2 x double> %i.bv, ptr %i.bx, align 16, !tbaa !16
  %i.by = add nsw i64 %.372.us, 4                 ; 3 uses
  %i.bz = add nuw nsw i64 %.05373.us, 2           ; 2 uses
  %niter130.next.1 = add nuw nsw i64 %niter130, 2 ; 2 uses
  %niter130.ncmp.1 = icmp eq i64 %niter130.next.1, %unroll_iter129
  br i1 %niter130.ncmp.1, label %._crit_edge.us78.unr-lcssa, label %.preheader62.us.new, !llvm.loop !1620

._crit_edge.us78.unr-lcssa:                       ; preds = %.preheader62.us.new
  br i1 %lcmp.mod126.not, label %._crit_edge.us78, label %.epil.preheader124

.epil.preheader124:                               ; preds = %._crit_edge.us78.unr-lcssa, %.preheader62.us
  %.05373.us.epil.init = phi i64 [ 0, %.preheader62.us ], [ %i.bz, %._crit_edge.us78.unr-lcssa ]
  %.372.us.epil.init = phi i64 [ %.25874.us, %.preheader62.us ], [ %i.by, %._crit_edge.us78.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.ca = load ptr, ptr %2, align 8, !tbaa !1544
  %i.cb = load i64, ptr %i.bb, align 8, !tbaa !1546
  %i.cc = mul nsw i64 %i.cb, %.05373.us.epil.init
  %i.cd = getelementptr [8 x i8], ptr %i.ca, i64 %.175.us
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !16
  %i.cg = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us.epil.init
  store <2 x double> %i.cf, ptr %i.cg, align 16, !tbaa !16
  %i.ch = add nsw i64 %.372.us.epil.init, 2
  br label %._crit_edge.us78

._crit_edge.us78:                                 ; preds = %._crit_edge.us78.unr-lcssa, %.epil.preheader124
  %.lcssa118 = phi i64 [ %i.by, %._crit_edge.us78.unr-lcssa ], [ %i.ch, %.epil.preheader124 ] ; 2 uses
  %i.ci = add nuw nsw i64 %.175.us, 2             ; 3 uses
  %i.cj = icmp slt i64 %i.ci, %i.g
  br i1 %i.cj, label %.preheader62.us, label %.preheader61, !llvm.loop !1621

.preheader61:                                     ; preds = %._crit_edge.us78, %.preheader62.preheader, %.preheader63
  %.258.lcssa = phi i64 [ %.056.lcssa, %.preheader63 ], [ %.056.lcssa, %.preheader62.preheader ], [ %.lcssa118, %._crit_edge.us78 ]
  %.1.lcssa = phi i64 [ %.055.lcssa, %.preheader63 ], [ %i.bh, %.preheader62.preheader ], [ %i.ci, %._crit_edge.us78 ] ; 3 uses
  %i.ck = icmp slt i64 %.1.lcssa, %4
  %i.cl = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge86.split

.preheader.lr.ph.split:                           ; preds = %.preheader61
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %2, align 8, !tbaa !1544  ; 2 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !1546 ; 6 uses
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
  %wide.load = load <2 x double>, ptr %i.da, align 8, !tbaa !22
  %wide.load114 = load <2 x double>, ptr %i.db, align 8, !tbaa !22
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x double> %wide.load, ptr %i.dc, align 8, !tbaa !22
  store <2 x double> %wide.load114, ptr %i.dd, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !1622

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
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !22
  %i.di = add nsw i64 %.582.prol, 1               ; 3 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %1, i64 %.582.prol
  store double %i.dh, ptr %i.dj, align 8, !tbaa !22
  %i.dk = add nuw nsw i64 %.083.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter131
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1623

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
  br i1 %exitcond98.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !1624

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.083 = phi i64 [ %i.el, %scalar.ph ], [ %.083.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.582 = phi i64 [ %i.ei, %scalar.ph ], [ %.582.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.do = mul nsw i64 %i.cp, %.083
  %i.dp = getelementptr [8 x i8], ptr %i.cq, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !22
  %i.dr = getelementptr inbounds [8 x i8], ptr %1, i64 %.582
  store double %i.dq, ptr %i.dr, align 8, !tbaa !22
  %i.ds = add nuw nsw i64 %.083, 1
  %i.dt = mul nsw i64 %i.cp, %i.ds
  %i.du = getelementptr [8 x i8], ptr %i.cq, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !22
  %i.dw = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  store double %i.dv, ptr %i.dx, align 8, !tbaa !22
  %i.dy = add nuw nsw i64 %.083, 2
  %i.dz = mul nsw i64 %i.cp, %i.dy
  %i.ea = getelementptr [8 x i8], ptr %i.cq, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !22
  %i.ec = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  store double %i.eb, ptr %i.ed, align 8, !tbaa !22
  %i.ee = add nuw nsw i64 %.083, 3
  %i.ef = mul nsw i64 %i.cp, %i.ee
  %i.eg = getelementptr [8 x i8], ptr %i.cq, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !22
  %i.ei = add nsw i64 %.582, 4                    ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  store double %i.eh, ptr %i.ek, align 8, !tbaa !22
  %i.el = add nuw nsw i64 %.083, 4                ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %i.el, %3
  br i1 %exitcond97.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1625

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader61
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(40) %11) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_5
