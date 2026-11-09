Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_ellipse?download=true
inline.NumInlined: 7129
inline.NumDeleted: 3730
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi6ELb1ELi1ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE:bb.a
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.r ]
  %i.cc = add nsw i64 %.0113296, %i.bq
  %i.cd = mul nsw i64 %i.cc, %4
  %i.ce = getelementptr [4 x i8], ptr %i.bt, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !17
  %.idx.i = shl nuw nsw i64 %.0113296, 6
  %i.cg = getelementptr i8, ptr %i.bu, i64 %.idx.i
  store float %i.cf, ptr %i.cg, align 4, !tbaa !17
  %i.ch = or disjoint i64 %.0113296, 1            ; 2 uses
  %i.ci = add nsw i64 %i.ch, %i.bq
  %i.cj = mul nsw i64 %i.ci, %4
  %i.ck = getelementptr [4 x i8], ptr %i.bt, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !17
  %.idx.i.1 = shl nuw nsw i64 %i.ch, 6
  %i.cm = getelementptr i8, ptr %i.bu, i64 %.idx.i.1
  store float %i.cl, ptr %i.cm, align 4, !tbaa !17
  %i.cn = add nuw nsw i64 %.0113296, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.r, !llvm.loop !580

._crit_edge298:                                   ; preds = %._crit_edge, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %12, ptr %17, align 8, !tbaa !135
  store i64 16, ptr %i.ay, align 8, !tbaa !136
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi1EEELi8ELi4EDv4_fLi1ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated192, i64 noundef %.sroa.speculated192, i64 noundef 0, i64 noundef 0)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %._crit_edge298
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.co = getelementptr [4 x i8], ptr %7, i64 %i.bq
  store ptr %i.co, ptr %18, align 8
  store i64 %9, ptr %i.az, align 8
  %i.cp = load float, ptr %10, align 4, !tbaa !17
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated192, i64 noundef %.sroa.speculated192, i64 noundef %1, float noundef %i.cp, i64 noundef %.sroa.speculated192, i64 noundef %.0116, i64 noundef 0, i64 noundef %.0115299)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.cq = icmp sgt i64 %.0115299, 0
  br i1 %i.cq, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bq
  store ptr %gep, ptr %19, align 8
  store i64 %4, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi1EEELi8ELi4EDv4_fLi1ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated192, i64 noundef %.0115299, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store ptr %i.bn, ptr %20, align 8
  store i64 %9, ptr %i.bb, align 8
  %i.cr = load float, ptr %10, align 4, !tbaa !17
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.0115299, i64 noundef %.sroa.speculated192, i64 noundef %1, float noundef %i.cr, i64 noundef %.sroa.speculated192, i64 noundef %.0116, i64 noundef 0, i64 noundef %.0115299)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.ab

bb.x:                                             ; preds = %._crit_edge298
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.ah

bb.y:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.ah

bb.z:                                             ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ah

bb.aa:                                            ; preds = %bb.v
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.ah

bb.ab:                                            ; preds = %bb.w, %bb.t
  %i.cw = add nsw i64 %.0115299, %.sroa.speculated223 ; 2 uses
  %i.cx = icmp slt i64 %i.cw, %.0116
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated223
  br i1 %i.cx, label %bb.q, label %.loopexit, !llvm.loop !581

.loopexit:                                        ; preds = %bb.ab, %bb.o
  %.sroa.speculated201 = call i64 @llvm.smin.i64(i64 %.sroa.speculated278, i64 %.0117305) ; 3 uses
  %i.cy = icmp sgt i64 %.sroa.speculated201, 0
  br i1 %i.cy, label %.lr.ph303, label %._crit_edge304

.lr.ph303:                                        ; preds = %.loopexit
  %i.cz = getelementptr [4 x i8], ptr %3, i64 %.0117305
  br label %bb.ac

._crit_edge304:                                   ; preds = %bb.ae, %.loopexit
  %i.da = add nsw i64 %.1, %i.b                   ; 2 uses
  %i.db = icmp slt i64 %i.da, %2
  br i1 %i.db, label %bb.n, label %._crit_edge308, !llvm.loop !582

bb.ac:                                            ; preds = %.lr.ph303, %bb.ae
  %.0301 = phi i64 [ 0, %.lr.ph303 ], [ %i.dc, %bb.ae ] ; 4 uses
  %i.dc = add nsw i64 %.0301, %.sroa.speculated229 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %.sroa.speculated201, i64 %i.dc)
  %i.dd = sub nsw i64 %.sroa.speculated, %.0301   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.de = mul nsw i64 %.0301, %4
  %i.df = getelementptr [4 x i8], ptr %i.cz, i64 %i.de
  store ptr %i.df, ptr %22, align 8
  store i64 %4, ptr %i.bc, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi1EEELi8ELi4EDv4_fLi1ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %.0116, i64 noundef %i.dd, i64 noundef 0, i64 noundef 0)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.dg = getelementptr [4 x i8], ptr %7, i64 %.0301
  store ptr %i.dg, ptr %23, align 8
  store i64 %9, ptr %i.bd, align 8
  %i.dh = load float, ptr %10, align 4, !tbaa !17
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.dd, i64 noundef %.0116, i64 noundef %1, float noundef %i.dh, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.di = icmp slt i64 %i.dc, %.sroa.speculated201
  br i1 %i.di, label %bb.ac, label %._crit_edge304, !llvm.loop !583

bb.af:                                            ; preds = %bb.ac
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.x, %bb.y, %bb.aa, %bb.z, %bb.p
  %.pn139.pn = phi { ptr, i32 } [ %i.bo, %bb.p ], [ %i.cu, %bb.z ], [ %i.dj, %bb.af ], [ %i.cs, %bb.x ], [ %i.ct, %bb.y ], [ %i.cv, %bb.aa ], [ %i.dk, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.af, label %bb.ai, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef %i.ad) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186: ; preds = %bb.ah, %bb.ai, %bb.m
  %.pn139.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.m ], [ %.pn139.pn, %bb.ai ], [ %.pn139.pn, %bb.ah ]
  br i1 %i.s, label %bb.aj, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit187

bb.aj:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186
  call void @free(ptr noundef %i.q) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit187

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit187: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186, %bb.aj
  resume { ptr, i32 } %.pn139.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIflNS0_22const_blas_data_mapperIflLi0EEELi4ELi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !598
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = sdiv i64 %3, 4
  %i.e = shl nsw i64 %i.d, 2                      ; 4 uses
  %i.f = icmp sgt i64 %4, 3
  br i1 %i.f, label %.lr.ph94, label %.preheader

.lr.ph94:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = icmp sgt i64 %3, 3
  br i1 %i.h, label %.lr.ph.us.preheader, label %.lr.ph94.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph94
  %smax = tail call i64 @llvm.smax.i64(i64 %i.e, i64 4) ; 2 uses
  %i.i = or disjoint i64 %smax, 1
  %smax137 = tail call i64 @llvm.smax.i64(i64 %3, i64 %i.i)
  %i.j = xor i64 %smax, -1
  %i.k = add nsw i64 %smax137, %i.j               ; 2 uses
  %smax167 = tail call i64 @llvm.smax.i64(i64 %i.e, i64 4)
  %i.l = add nsw i64 %smax167, -1                 ; 2 uses
  %i.m = and i64 %i.l, -4
  %i.n = add nuw nsw i64 %i.m, 5
  %smax168 = tail call i64 @llvm.smax.i64(i64 %3, i64 %i.n) ; 2 uses
  %i.o = shl i64 %smax168, 2
  %7 = lshr i64 %i.l, 2                           ; 2 uses
  %i.p = shl i64 %7, 4
  %8 = sub i64 %i.o, %i.p                         ; 4 uses
  %9 = shl i64 %smax168, 4
  %10 = shl i64 %7, 6
  %i.q = sub i64 %9, %10
  %11 = tail call i64 @llvm.smax.i64(i64 %i.e, i64 4) ; 2 uses
  %12 = or disjoint i64 %11, 1
  %13 = tail call i64 @llvm.smax.i64(i64 %3, i64 %12) ; 2 uses
  %invariant.op = sub nsw i64 %13, %11            ; 2 uses
  %min.iters.check = icmp ult i64 %invariant.op, 44
  %mul.result = shl i64 %i.k, 4                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.k, 1152921504606846975
  %14 = getelementptr i8, ptr %1, i64 %i.q
  %i.r = and i64 %13, 3                           ; 2 uses
  %n.vec = sub i64 %invariant.op, %i.r            ; 3 uses
  %i.s = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.r, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar165 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next166, %._crit_edge.us ] ; 2 uses
  %.06092.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %i.bs, %._crit_edge.us ] ; 5 uses
  %.06191.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %.2.lcssa.us, %._crit_edge.us ] ; 4 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !138    ; 12 uses
  %i.u = load i64, ptr %i.g, align 8, !tbaa !139  ; 8 uses
  %i.v = mul nsw i64 %i.u, %.06092.us
  %i.w = getelementptr [4 x i8], ptr %i.t, i64 %i.v ; 3 uses
  %i.x = or disjoint i64 %.06092.us, 1
  %i.y = mul nsw i64 %i.u, %i.x
  %i.z = getelementptr [4 x i8], ptr %i.t, i64 %i.y ; 3 uses
  %i.aa = or disjoint i64 %.06092.us, 2
  %i.ab = mul nsw i64 %i.u, %i.aa
  %i.ac = getelementptr [4 x i8], ptr %i.t, i64 %i.ab ; 3 uses
  %i.ad = or disjoint i64 %.06092.us, 3
  %i.ae = mul nsw i64 %i.u, %i.ad
  %i.af = getelementptr [4 x i8], ptr %i.t, i64 %i.ae ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvar = phi i64 [ 0, %.lr.ph.us ], [ %indvar.next, %bb.b ] ; 3 uses
  %.05985.us = phi i64 [ 0, %.lr.ph.us ], [ %i.bb, %bb.b ] ; 5 uses
  %.16284.us = phi i64 [ %.06191.us, %.lr.ph.us ], [ %i.ba, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.05985.us
  %i.ah = load <4 x float>, ptr %i.ag, align 1, !tbaa !44 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.05985.us
  %i.aj = load <4 x float>, ptr %i.ai, align 1, !tbaa !44 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.05985.us
  %i.al = load <4 x float>, ptr %i.ak, align 1, !tbaa !44 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.05985.us
  %i.an = load <4 x float>, ptr %i.am, align 1, !tbaa !44 ; 2 uses
  %i.ao = shufflevector <4 x float> %i.ah, <4 x float> %i.aj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ap = shufflevector <4 x float> %i.al, <4 x float> %i.an, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ah, <4 x float> %i.aj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ar = shufflevector <4 x float> %i.al, <4 x float> %i.an, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.as = shufflevector <4 x float> %i.ao, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.at = shufflevector <4 x float> %i.ap, <4 x float> %i.ao, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.au = shufflevector <4 x float> %i.aq, <4 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.av = shufflevector <4 x float> %i.ar, <4 x float> %i.aq, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.aw = getelementptr inbounds [4 x i8], ptr %1, i64 %.16284.us ; 4 uses
  store <4 x float> %i.as, ptr %i.aw, align 1, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x float> %i.at, ptr %i.ax, align 1, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store <4 x float> %i.au, ptr %i.ay, align 1, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store <4 x float> %i.av, ptr %i.az, align 1, !tbaa !44
  %i.ba = add nsw i64 %.16284.us, 16              ; 7 uses
  %i.bb = add nuw nsw i64 %.05985.us, 4           ; 8 uses
  %i.bc = icmp slt i64 %i.bb, %i.e
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bc, label %bb.b, label %..preheader83_crit_edge.us, !llvm.loop !584

.lr.ph89.us:                                      ; preds = %.lr.ph89.us.preheader204, %.lr.ph89.us
  %.188.us = phi i64 [ %i.bq, %.lr.ph89.us ], [ %.188.us.ph, %.lr.ph89.us.preheader204 ] ; 5 uses
  %.287.us = phi i64 [ %i.bp, %.lr.ph89.us ], [ %.287.us.ph, %.lr.ph89.us.preheader204 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.188.us
  %i.be = load float, ptr %i.bd, align 4, !tbaa !17
  %i.bf = getelementptr inbounds [4 x i8], ptr %1, i64 %.287.us ; 4 uses
  store float %i.be, ptr %i.bf, align 4, !tbaa !17
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.188.us
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !17
  %i.bi = getelementptr i8, ptr %i.bf, i64 4
  store float %i.bh, ptr %i.bi, align 4, !tbaa !17
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.188.us
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !17
  %i.bl = getelementptr i8, ptr %i.bf, i64 8
  store float %i.bk, ptr %i.bl, align 4, !tbaa !17
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.188.us
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !17
  %i.bo = getelementptr i8, ptr %i.bf, i64 12
  store float %i.bn, ptr %i.bo, align 4, !tbaa !17
  %i.bp = add nsw i64 %.287.us, 4                 ; 2 uses
  %i.bq = add nuw nsw i64 %.188.us, 1             ; 2 uses
  %i.br = icmp slt i64 %i.bq, %3
  br i1 %i.br, label %.lr.ph89.us, label %._crit_edge.us, !llvm.loop !585

._crit_edge.us:                                   ; preds = %.lr.ph89.us, %middle.block, %..preheader83_crit_edge.us
  %.2.lcssa.us = phi i64 [ %i.ba, %..preheader83_crit_edge.us ], [ %i.dx, %middle.block ], [ %i.bp, %.lr.ph89.us ] ; 2 uses
  %i.bs = add nuw nsw i64 %.06092.us, 4           ; 2 uses
  %i.bt = icmp slt i64 %i.bs, %i.c
  %indvar.next166 = add i64 %indvar165, 1
  br i1 %i.bt, label %.lr.ph.us, label %.preheader, !llvm.loop !586

..preheader83_crit_edge.us:                       ; preds = %bb.b
  %i.bu = icmp slt i64 %i.bb, %3
  br i1 %i.bu, label %.lr.ph89.us.preheader, label %._crit_edge.us

.lr.ph89.us.preheader:                            ; preds = %..preheader83_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph89.us.preheader204, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph89.us.preheader
  %i.bv = shl i64 %.06191.us, 2                   ; 3 uses
  %i.bw = shl i64 %indvar, 6                      ; 3 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bv
  %scevgep = getelementptr i8, ptr %i.by, i64 68  ; 2 uses
  %i.bz = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.ca = icmp ult ptr %i.bz, %scevgep
  %i.cb = getelementptr i8, ptr %1, i64 %i.bw
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bv
  %scevgep138 = getelementptr i8, ptr %i.cc, i64 72 ; 2 uses
  %i.cd = getelementptr i8, ptr %scevgep138, i64 %mul.result
  %i.ce = icmp ult ptr %i.cd, %scevgep138
  %i.cf = getelementptr i8, ptr %1, i64 %i.bw
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.bv
  %scevgep139 = getelementptr i8, ptr %i.cg, i64 76 ; 2 uses
  %i.ch = getelementptr i8, ptr %scevgep139, i64 %mul.result
  %i.ci = icmp ult ptr %i.ch, %scevgep139
  %i.cj = or i1 %i.ci, %mul.overflow
  %i.ck = or i1 %i.ce, %i.ca
  %i.cl = or i1 %i.ck, %i.cj
  br i1 %i.cl, label %.lr.ph89.us.preheader204, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cm = shl i64 %.06191.us, 2                   ; 2 uses
  %i.cn = shl i64 %indvar, 6                      ; 2 uses
  %i.co = getelementptr i8, ptr %1, i64 %i.cm
  %i.cp = getelementptr i8, ptr %i.co, i64 64
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn  ; 4 uses
  %i.cr = getelementptr i8, ptr %14, i64 %i.cm
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cn  ; 4 uses
  %i.ct = shl i64 %indvar165, 4                   ; 4 uses
  %i.cu = or disjoint i64 %i.ct, 12
  %i.cv = mul i64 %i.u, %i.cu                     ; 2 uses
  %i.cw = sub i64 %.16284.us, %.06191.us          ; 8 uses
  %i.cx = getelementptr i8, ptr %i.t, i64 %i.cv
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %15 = getelementptr i8, ptr %i.t, i64 %8
  %i.da = getelementptr i8, ptr %15, i64 %i.cv
  %i.db = getelementptr i8, ptr %i.da, i64 %i.cw
  %i.dc = or disjoint i64 %i.ct, 8
  %i.dd = mul i64 %i.u, %i.dc                     ; 2 uses
  %i.de = getelementptr i8, ptr %i.t, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.cw
  %16 = getelementptr i8, ptr %i.t, i64 %8
  %i.dh = getelementptr i8, ptr %16, i64 %i.dd
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.cw
  %i.dj = or disjoint i64 %i.ct, 4
  %i.dk = mul i64 %i.u, %i.dj                     ; 2 uses
  %i.dl = getelementptr i8, ptr %i.t, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.cw
  %17 = getelementptr i8, ptr %i.t, i64 %8
  %i.do = getelementptr i8, ptr %17, i64 %i.dk
  %i.dp = getelementptr i8, ptr %i.do, i64 %i.cw
  %i.dq = mul i64 %i.u, %i.ct                     ; 2 uses
  %i.dr = getelementptr i8, ptr %i.t, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %i.dt = getelementptr i8, ptr %i.ds, i64 %i.cw
  %18 = getelementptr i8, ptr %i.t, i64 %8
  %i.du = getelementptr i8, ptr %18, i64 %i.dq
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.cw
  %bound0 = icmp ult ptr %i.cq, %i.db
  %bound1 = icmp ult ptr %i.cz, %i.cs
  %found.conflict = and i1 %bound0, %bound1
  %bound0169 = icmp ult ptr %i.cq, %i.di
  %bound1170 = icmp ult ptr %i.dg, %i.cs
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx = or i1 %found.conflict, %found.conflict171
  %bound0172 = icmp ult ptr %i.cq, %i.dp
  %bound1173 = icmp ult ptr %i.dn, %i.cs
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx, %found.conflict174
  %bound0176 = icmp ult ptr %i.cq, %i.dv
  %bound1177 = icmp ult ptr %i.dt, %i.cs
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  br i1 %conflict.rdx179, label %.lr.ph89.us.preheader204, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dw = add i64 %i.bb, %n.vec
  %i.dx = add i64 %i.ba, %i.s                     ; 2 uses
  %i.dy = getelementptr [4 x i8], ptr %1, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dz = add nuw i64 %i.bb, %index               ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.dz
  %wide.load = load <4 x float>, ptr %i.ea, align 4, !tbaa !17, !alias.scope !599
  %.idx = shl i64 %index, 4
  %i.eb = getelementptr i8, ptr %i.dy, i64 %.idx
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.dz
  %wide.load180 = load <4 x float>, ptr %i.ec, align 4, !tbaa !17, !alias.scope !600
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dz
  %wide.load181 = load <4 x float>, ptr %i.ed, align 4, !tbaa !17, !alias.scope !601
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.dz
  %wide.load182 = load <4 x float>, ptr %i.ee, align 4, !tbaa !17, !alias.scope !602
  %i.ef = shufflevector <4 x float> %wide.load, <4 x float> %wide.load180, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eg = shufflevector <4 x float> %wide.load181, <4 x float> %wide.load182, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ef, <8 x float> %i.eg, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.eb, align 4, !tbaa !17, !alias.scope !603, !noalias !604
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !593

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph89.us.preheader204

.lr.ph89.us.preheader204:                         ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph89.us.preheader, %middle.block
  %.188.us.ph = phi i64 [ %i.bb, %vector.memcheck ], [ %i.bb, %vector.scevcheck ], [ %i.bb, %.lr.ph89.us.preheader ], [ %i.dw, %middle.block ]
  %.287.us.ph = phi i64 [ %i.ba, %vector.memcheck ], [ %i.ba, %vector.scevcheck ], [ %i.ba, %.lr.ph89.us.preheader ], [ %i.dx, %middle.block ]
  br label %.lr.ph89.us

.lr.ph94.split:                                   ; preds = %.lr.ph94
  %i.ei = icmp sgt i64 %3, 0
  br i1 %i.ei, label %.lr.ph94.split.split.us, label %.preheader

.lr.ph94.split.split.us:                          ; preds = %.lr.ph94.split
  %i.ej = load ptr, ptr %2, align 8, !tbaa !138   ; 4 uses
  %i.ek = load i64, ptr %i.g, align 8, !tbaa !139 ; 4 uses
  %exitcond.not = icmp eq i64 %3, 1
  %exitcond.not.1 = icmp eq i64 %3, 2
  br label %.preheader83.us96

.preheader83.us96:                                ; preds = %._crit_edge.us102, %.lr.ph94.split.split.us
  %.06092.us97 = phi i64 [ 0, %.lr.ph94.split.split.us ], [ %i.gf, %._crit_edge.us102 ] ; 5 uses
  %.06191.us98 = phi i64 [ 0, %.lr.ph94.split.split.us ], [ %.lcssa209, %._crit_edge.us102 ] ; 4 uses
  %i.el = mul nsw i64 %i.ek, %.06092.us97
  %i.em = getelementptr [4 x i8], ptr %i.ej, i64 %i.el ; 3 uses
  %i.en = or disjoint i64 %.06092.us97, 1
  %i.eo = mul nsw i64 %i.ek, %i.en
  %i.ep = getelementptr [4 x i8], ptr %i.ej, i64 %i.eo ; 3 uses
  %i.eq = or disjoint i64 %.06092.us97, 2
  %i.er = mul nsw i64 %i.ek, %i.eq
  %i.es = getelementptr [4 x i8], ptr %i.ej, i64 %i.er ; 3 uses
  %i.et = or disjoint i64 %.06092.us97, 3
  %i.eu = mul nsw i64 %i.ek, %i.et
  %i.ev = getelementptr [4 x i8], ptr %i.ej, i64 %i.eu ; 3 uses
  %i.ew = load float, ptr %i.em, align 4, !tbaa !17
  %i.ex = getelementptr inbounds [4 x i8], ptr %1, i64 %.06191.us98 ; 4 uses
  store float %i.ew, ptr %i.ex, align 4, !tbaa !17
  %i.ey = load float, ptr %i.ep, align 4, !tbaa !17
  %i.ez = getelementptr i8, ptr %i.ex, i64 4
  store float %i.ey, ptr %i.ez, align 4, !tbaa !17
  %i.fa = load float, ptr %i.es, align 4, !tbaa !17
  %i.fb = getelementptr i8, ptr %i.ex, i64 8
  store float %i.fa, ptr %i.fb, align 4, !tbaa !17
  %i.fc = load float, ptr %i.ev, align 4, !tbaa !17
  %i.fd = getelementptr i8, ptr %i.ex, i64 12
  store float %i.fc, ptr %i.fd, align 4, !tbaa !17
  %i.fe = add nsw i64 %.06191.us98, 4             ; 2 uses
  br i1 %exitcond.not, label %._crit_edge.us102, label %bb.c

bb.c:                                             ; preds = %.preheader83.us96
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !17
  %i.fh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fe ; 4 uses
  store float %i.fg, ptr %i.fh, align 4, !tbaa !17
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !17
  %i.fk = getelementptr i8, ptr %i.fh, i64 4
  store float %i.fj, ptr %i.fk, align 4, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !17
  %i.fn = getelementptr i8, ptr %i.fh, i64 8
  store float %i.fm, ptr %i.fn, align 4, !tbaa !17
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !17
  %i.fq = getelementptr i8, ptr %i.fh, i64 12
  store float %i.fp, ptr %i.fq, align 4, !tbaa !17
  %i.fr = add nsw i64 %.06191.us98, 8             ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us102, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !17
  %i.fu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fr ; 4 uses
  store float %i.ft, ptr %i.fu, align 4, !tbaa !17
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !17
  %i.fx = getelementptr i8, ptr %i.fu, i64 4
  store float %i.fw, ptr %i.fx, align 4, !tbaa !17
  %i.fy = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !17
  %i.ga = getelementptr i8, ptr %i.fu, i64 8
  store float %i.fz, ptr %i.ga, align 4, !tbaa !17
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !17
  %i.gd = getelementptr i8, ptr %i.fu, i64 12
  store float %i.gc, ptr %i.gd, align 4, !tbaa !17
  %i.ge = add nsw i64 %.06191.us98, 12
  br label %._crit_edge.us102

._crit_edge.us102:                                ; preds = %bb.d, %bb.c, %.preheader83.us96
  %.lcssa209 = phi i64 [ %i.fe, %.preheader83.us96 ], [ %i.fr, %bb.c ], [ %i.ge, %bb.d ] ; 2 uses
  %i.gf = add nuw nsw i64 %.06092.us97, 4         ; 2 uses
  %i.gg = icmp slt i64 %i.gf, %i.c
  br i1 %i.gg, label %.preheader83.us96, label %.preheader, !llvm.loop !586

.preheader:                                       ; preds = %._crit_edge.us102, %._crit_edge.us, %.lr.ph94.split, %bb.a
  %.061.lcssa = phi i64 [ 0, %bb.a ], [ %.2.lcssa.us, %._crit_edge.us ], [ 0, %.lr.ph94.split ], [ %.lcssa209, %._crit_edge.us102 ]
  %i.gh = icmp slt i64 %i.c, %4
  br i1 %i.gh, label %.lr.ph111, label %._crit_edge112.split

.lr.ph111:                                        ; preds = %.preheader
  %i.gi = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !139 ; 3 uses
  %i.gl = icmp sgt i64 %3, 0
  br i1 %i.gl, label %.lr.ph.preheader, label %._crit_edge112.split

.lr.ph.preheader:                                 ; preds = %.lr.ph111
  %i.gm = ptrtoaddr ptr %i.gi to i64
  %i.gn = mul i64 %i.gk, -4
  %i.go = mul i64 %i.gk, %i.b
  %i.gp = shl i64 %i.go, 4
  %i.gq = add i64 %i.gp, %i.gm
  %i.gr = sub i64 %i.a, %i.gq
  %min.iters.check190 = icmp ult i64 %3, 8
  %n.vec193 = and i64 %3, 9223372036854775800     ; 4 uses
  %cmp.n200 = icmp eq i64 %3, %n.vec193
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

._crit_edge112.split:                             ; preds = %._crit_edge, %.lr.ph111, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar187 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next188, %._crit_edge ] ; 2 uses
  %.058110 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.hn, %._crit_edge ] ; 2 uses
  %.3109 = phi i64 [ %.061.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.gs = mul nsw i64 %i.gk, %.058110
  %i.gt = getelementptr [4 x i8], ptr %i.gi, i64 %i.gs ; 6 uses
  br i1 %min.iters.check190, label %scalar.ph189.preheader, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph
  %i.gu = mul i64 %indvar187, %i.gn
  %i.gv = add i64 %i.gr, %i.gu
  %i.gw = shl i64 %.3109, 2
  %i.gx = add i64 %i.gv, %i.gw
  %i.gy = add i64 %i.gx, -1
  %diff.check = icmp ult i64 %i.gy, 31
  br i1 %diff.check, label %scalar.ph189.preheader, label %vector.ph192

vector.ph192:                                     ; preds = %vector.memcheck191
  %i.gz = add i64 %.3109, %n.vec193               ; 2 uses
  %i.ha = getelementptr [4 x i8], ptr %1, i64 %.3109
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next198, %vector.body194 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %index195 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load196 = load <4 x float>, ptr %i.hb, align 4, !tbaa !17
  %wide.load197 = load <4 x float>, ptr %i.hc, align 4, !tbaa !17
  %i.hd = getelementptr [4 x i8], ptr %i.ha, i64 %index195 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store <4 x float> %wide.load196, ptr %i.hd, align 4, !tbaa !17
  store <4 x float> %wide.load197, ptr %i.he, align 4, !tbaa !17
end_hunk_0
