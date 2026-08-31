Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.1?download=true
inline.NumInlined: 11154
inline.NumDeleted: 5577
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN5Eigen28selfadjoint_product_selectorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES4_Li1ELb0EE3runERS4_RKS4_RKd:bb.a
  call void @free(ptr noundef %i.ah) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40general_matrix_matrix_triangular_productIldLi0ELb0EdLi1ELb0ELi0ELi1ELi1ELi0EE3runEllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(40) %10) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 3 uses
  %12 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 3 uses
  %13 = alloca %"class.Eigen::Matrix.519", align 16 ; 14 uses
  %14 = alloca %"class.Eigen::internal::blas_data_mapper.514", align 8 ; 5 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.514", align 8 ; 5 uses
  %16 = alloca %"struct.Eigen::internal::gemm_pack_lhs.518", align 1 ; 4 uses
  %17 = alloca %"struct.Eigen::internal::gemm_pack_rhs", align 1 ; 5 uses
  %18 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 4 uses
  %19 = alloca %"class.Eigen::internal::const_blas_data_mapper.355", align 8 ; 10 uses
  %20 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %21 = alloca %"class.Eigen::internal::blas_data_mapper.514", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !259  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !256
  %.sroa.speculated140 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 3 uses
  %i.e = icmp sgt i64 %.sroa.speculated140, 4
  %i.f = and i64 %.sroa.speculated140, 9223372036854775804
  %spec.select = select i1 %i.e, i64 %i.f, i64 %.sroa.speculated140 ; 2 uses
  %i.g = mul nsw i64 %spec.select, %i.b           ; 4 uses
  %i.h = mul nsw i64 %i.b, %0                     ; 4 uses
  %i.i = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.i, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit85

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit85: ; preds = %bb.a
  %i.k = load ptr, ptr %10, align 8, !tbaa !263   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit85
  %i.l = shl nuw i64 %i.g, 3                      ; 2 uses
  %i.m = icmp samesign ult i64 %i.g, 16385
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i64 %i.l, 15
  %i.o = alloca i8, i64 %i.n, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.l) #22 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit85, %bb.d
  %i.s = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit85 ], [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit85 ], [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 4 uses
  %i.u = icmp samesign ugt i64 %i.g, 16384        ; 2 uses
  %i.v = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.v, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc96 unwind label %bb.ad

.noexc96:                                         ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !264  ; 2 uses
  %.not79 = icmp eq ptr %i.y, null
  br i1 %.not79, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.z = shl nuw i64 %i.h, 3                      ; 2 uses
  %i.aa = icmp samesign ult i64 %i.h, 16385
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw nsw i64 %i.z, 15
  %i.ac = alloca i8, i64 %i.ab, align 16          ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.z) #22 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc99 unwind label %bb.ae

.noexc99:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ag = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.ac, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.y, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.ac, %bb.i ], [ %i.ad, %bb.j ] ; 4 uses
  %i.ai = icmp samesign ugt i64 %i.h, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.aj = icmp sgt i64 %1, 0
  br i1 %i.aj, label %.lr.ph171, label %._crit_edge

.lr.ph171:                                        ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.al = icmp sgt i64 %0, 0
  %i.am = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 8
  br i1 %i.al, label %.lr.ph171.split.us.preheader, label %.lr.ph171.split

.lr.ph171.split.us.preheader:                     ; preds = %.lr.ph171
  %gep.i.us.1 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %gep.i.us.2 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %gep.i.us.3 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %gep.i.us.1198 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %gep.i.us.1.1 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %gep.i.us.2.1 = getelementptr inbounds nuw i8, ptr %13, i64 56
  %gep.i.us.2199 = getelementptr inbounds nuw i8, ptr %13, i64 80
  %gep.i.us.1.2 = getelementptr inbounds nuw i8, ptr %13, i64 88
  %gep.i.us.3200 = getelementptr inbounds nuw i8, ptr %13, i64 120
  br label %.lr.ph171.split.us

.lr.ph171.split.us:                               ; preds = %.lr.ph171.split.us.preheader, %..loopexit168_crit_edge.us
  %.0170.us = phi i64 [ %i.aq, %..loopexit168_crit_edge.us ], [ 0, %.lr.ph171.split.us.preheader ] ; 4 uses
  %i.aq = add nsw i64 %.0170.us, %i.b             ; 3 uses
  %.sroa.speculated126.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.aq)
  %i.ar = sub nsw i64 %.sroa.speculated126.us, %.0170.us ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.as = mul nsw i64 %.0170.us, %5
  %i.at = getelementptr [8 x i8], ptr %4, i64 %i.as
  store ptr %i.at, ptr %19, align 8
  store i64 %5, ptr %i.ak, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %i.ar, i64 noundef %0, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us unwind label %.split.us

.lr.ph.us:                                        ; preds = %.lr.ph171.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.au = mul nsw i64 %.0170.us, %3
  %invariant.gep.us = getelementptr [8 x i8], ptr %2, i64 %i.au
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.us, %.loopexit.us
  %storemerge169.us = phi i64 [ 0, %.lr.ph.us ], [ %i.av, %.loopexit.us ] ; 8 uses
  %i.av = add nsw i64 %storemerge169.us, %spec.select ; 3 uses
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.av)
  %i.aw = sub nsw i64 %.sroa.speculated.us, %storemerge169.us ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %storemerge169.us
  store ptr %gep.us, ptr %20, align 8
  store i64 %3, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 noundef %i.ar, i64 noundef %i.aw, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split173.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.ax = getelementptr [8 x i8], ptr %6, i64 %storemerge169.us
  store ptr %i.ax, ptr %21, align 8
  store i64 %8, ptr %i.an, align 8
  %i.ay = load double, ptr %9, align 8, !tbaa !52
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ah, i64 noundef %i.aw, i64 noundef %i.ar, i64 noundef %storemerge169.us, double noundef %i.ay, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %.split176.us

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.az = mul nsw i64 %storemerge169.us, %8
  %i.ba = getelementptr inbounds [8 x i8], ptr %6, i64 %i.az
  %i.bb = mul nsw i64 %storemerge169.us, %7
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = mul nsw i64 %storemerge169.us, %i.ar
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.bf = icmp sgt i64 %i.aw, 0
  br i1 %i.bf, label %.lr.ph62.i.us, label %.loopexit.us

.lr.ph62.i.us:                                    ; preds = %bb.o, %.noexc106.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.noexc106.us ], [ %i.aw, %bb.o ] ; 4 uses
  %.060.i.us = phi i64 [ %24, %.noexc106.us ], [ 0, %bb.o ] ; 10 uses
  %i.bg = sub nuw nsw i64 %i.aw, %.060.i.us       ; 8 uses
  %.sroa.speculated.i.us = call i64 @llvm.smin.i64(i64 %i.bg, i64 4) ; 4 uses
  %i.bh = mul nsw i64 %.060.i.us, %i.ar           ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bh ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %13, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store ptr %13, ptr %14, align 8, !tbaa !321
  store i64 4, ptr %i.ao, align 8, !tbaa !323
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bh
  %i.bk = load double, ptr %9, align 8, !tbaa !52
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bi, i64 noundef %.sroa.speculated.i.us, i64 noundef %i.ar, i64 noundef %.sroa.speculated.i.us, double noundef %i.bk, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %.noexc105.us unwind label %.split179.us

.noexc105.us:                                     ; preds = %.lr.ph62.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %22 = icmp sgt i64 %i.bg, 0
  br i1 %22, label %.lr.ph.i.us, label %._crit_edge.i.us

.lr.ph.i.us:                                      ; preds = %.noexc105.us
  %i.bl = getelementptr [8 x i8], ptr %i.bc, i64 %.060.i.us ; 4 uses
  %i.bm = mul nsw i64 %.060.i.us, %8
  %i.bn = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 5 uses
  %i.bo = load double, ptr %13, align 16, !tbaa !52
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !52
  %i.bq = fadd double %i.bo, %i.bp
  store double %i.bq, ptr %i.bn, align 8, !tbaa !52
  %.not201 = icmp eq i64 %i.bg, 1
  br i1 %.not201, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.us
  %i.br = load double, ptr %gep.i.us.1, align 8, !tbaa !52
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !52
  %i.bu = fadd double %i.br, %i.bt
  store double %i.bu, ptr %i.bs, align 8, !tbaa !52
  %23 = icmp sgt i64 %i.bg, 2
  br i1 %23, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bv = load double, ptr %gep.i.us.2, align 16, !tbaa !52
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !52
  %i.by = fadd double %i.bv, %i.bx
  store double %i.by, ptr %i.bw, align 8, !tbaa !52
  %.not202 = icmp eq i64 %i.bg, 3
  br i1 %.not202, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = load double, ptr %gep.i.us.3, align 8, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !52
  %i.cc = fadd double %i.bz, %i.cb
  store double %i.cc, ptr %i.ca, align 8, !tbaa !52
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %.lr.ph.i.us
  %exitcond.not.i.us = icmp slt i64 %indvars.iv.i.us, 2
  br i1 %exitcond.not.i.us, label %._crit_edge.i.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = or disjoint i64 %.060.i.us, 1
  %i.ce = mul nsw i64 %i.cd, %8
  %i.cf = getelementptr [8 x i8], ptr %i.bl, i64 %i.ce ; 3 uses
  %i.cg = load double, ptr %gep.i.us.1198, align 8, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !52
  %i.cj = fadd double %i.cg, %i.ci
  store double %i.cj, ptr %i.ch, align 8, !tbaa !52
  %i.ck = icmp sgt i64 %i.bg, 2
  br i1 %i.ck, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cl = load double, ptr %gep.i.us.1.1, align 16, !tbaa !52
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !52
  %i.co = fadd double %i.cl, %i.cn
  store double %i.co, ptr %i.cm, align 8, !tbaa !52
  %.not203 = icmp eq i64 %i.bg, 3
  br i1 %.not203, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = load double, ptr %gep.i.us.2.1, align 8, !tbaa !52
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !52
  %i.cs = fadd double %i.cp, %i.cr
  store double %i.cs, ptr %i.cq, align 8, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %exitcond.not.i.us.1 = icmp eq i64 %indvars.iv.i.us, 2
  br i1 %exitcond.not.i.us.1, label %._crit_edge.i.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = or disjoint i64 %.060.i.us, 2
  %i.cu = mul nsw i64 %i.ct, %8
  %i.cv = getelementptr [8 x i8], ptr %i.bl, i64 %i.cu ; 2 uses
  %i.cw = load double, ptr %gep.i.us.2199, align 16, !tbaa !52
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !52
  %i.cz = fadd double %i.cw, %i.cy
  store double %i.cz, ptr %i.cx, align 8, !tbaa !52
  %i.da = icmp sgt i64 %i.bg, 3
  br i1 %i.da, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = load double, ptr %gep.i.us.1.2, align 8, !tbaa !52
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !52
  %i.de = fadd double %i.db, %i.dd
  store double %i.de, ptr %i.dc, align 8, !tbaa !52
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %exitcond.not.i.us.2 = icmp eq i64 %indvars.iv.i.us, 3
  br i1 %exitcond.not.i.us.2, label %._crit_edge.i.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = or disjoint i64 %.060.i.us, 3
  %i.dg = mul nsw i64 %i.df, %8
  %i.dh = getelementptr [8 x i8], ptr %i.bl, i64 %i.dg
  %i.di = load double, ptr %gep.i.us.3200, align 8, !tbaa !52
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !52
  %i.dl = fadd double %i.di, %i.dk
  store double %i.dl, ptr %i.dj, align 8, !tbaa !52
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.s, %bb.w, %bb.z, %bb.aa, %.noexc105.us
  %i.dm = add nuw nsw i64 %.sroa.speculated.i.us, %.060.i.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.dn = mul nsw i64 %.060.i.us, %8
  %i.do = getelementptr [8 x i8], ptr %i.bc, i64 %i.dm
  %i.dp = getelementptr [8 x i8], ptr %i.do, i64 %i.dn
  store ptr %i.dp, ptr %15, align 8
  store i64 %8, ptr %i.ap, align 8
  %i.dq = mul nsw i64 %i.dm, %i.ar
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dq
  %i.ds = sub nsw i64 %i.aw, %i.dm
  %i.dt = load double, ptr %9, align 8, !tbaa !52
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.bi, i64 noundef %i.ds, i64 noundef %i.ar, i64 noundef %.sroa.speculated.i.us, double noundef %i.dt, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %.noexc106.us unwind label %.split179.us

.noexc106.us:                                     ; preds = %._crit_edge.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %24 = add nuw nsw i64 %.060.i.us, 4             ; 2 uses
  %25 = icmp slt i64 %24, %i.aw
  %indvars.iv.next.i.us = add i64 %indvars.iv.i.us, -4
  br i1 %25, label %.lr.ph62.i.us, label %.loopexit.us, !llvm.loop !441

.loopexit.us:                                     ; preds = %.noexc106.us, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %26 = icmp slt i64 %i.av, %0
  br i1 %26, label %bb.m, label %..loopexit168_crit_edge.us, !llvm.loop !442

..loopexit168_crit_edge.us:                       ; preds = %.loopexit.us
  %i.du = icmp slt i64 %i.aq, %1
  br i1 %i.du, label %.lr.ph171.split.us, label %._crit_edge, !llvm.loop !443

.split.us:                                        ; preds = %.lr.ph171.split.us
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.split173.us:                                     ; preds = %bb.m
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.ag

.split176.us:                                     ; preds = %bb.n
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.ag

.split179.us:                                     ; preds = %._crit_edge.i.us, %.lr.ph62.i.us
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

._crit_edge:                                      ; preds = %.loopexit168, %..loopexit168_crit_edge.us, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br i1 %i.ai, label %bb.ab, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.ab:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.ag) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.ab
  br i1 %i.u, label %bb.ac, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit101

bb.ac:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit101

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit101: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.ac
  ret void

bb.ad:                                            ; preds = %bb.g
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit107

bb.ae:                                            ; preds = %bb.k
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit107

.lr.ph171.split:                                  ; preds = %.lr.ph171, %.loopexit168
  %.0170 = phi i64 [ %i.eb, %.loopexit168 ], [ 0, %.lr.ph171 ] ; 3 uses
  %i.eb = add nsw i64 %.0170, %i.b                ; 3 uses
  %.sroa.speculated126 = call i64 @llvm.smin.i64(i64 %1, i64 %i.eb)
  %i.ec = sub nsw i64 %.sroa.speculated126, %.0170
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.ed = mul nsw i64 %.0170, %5
  %i.ee = getelementptr [8 x i8], ptr %4, i64 %i.ed
  store ptr %i.ee, ptr %19, align 8
  store i64 %5, ptr %i.ak, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %i.ec, i64 noundef %0, i64 noundef 0, i64 noundef 0)
          to label %.loopexit168 unwind label %.split

.loopexit168:                                     ; preds = %.lr.ph171.split
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.ef = icmp slt i64 %i.eb, %1
  br i1 %i.ef, label %.lr.ph171.split, label %._crit_edge, !llvm.loop !443

.split:                                           ; preds = %.lr.ph171.split
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.eg, %.split ], [ %i.dv, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.ag

bb.ag:                                            ; preds = %.split173.us, %.split176.us, %.split179.us, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %.us-phi, %bb.af ], [ %i.dy, %.split179.us ], [ %i.dx, %.split176.us ], [ %i.dw, %.split173.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br i1 %i.ai, label %bb.ah, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit107

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.ag) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit107

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit107: ; preds = %bb.ag, %bb.ah, %bb.ae, %bb.ad
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.ad ], [ %i.ea, %bb.ae ], [ %.pn.pn, %bb.ah ], [ %.pn.pn, %bb.ag ]
  br i1 %i.u, label %bb.ai, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit108

bb.ai:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit107
  call void @free(ptr noundef %i.s) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit108

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit108: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit107, %bb.ai
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, !prof !281

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #20
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #20
  br label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #20
  resume { ptr, i32 } %i.d

_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load i64, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, align 8, !tbaa !282 ; 4 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !284 ; 4 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 16), align 8, !tbaa !285 ; 3 uses
  %i.h = icmp sgt i64 %3, 1
  br i1 %i.h, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.i = add nsw i64 %i.e, -128
  %i.j = sdiv i64 %i.i, 64
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 8)
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 320) ; 2 uses
  %i.m = load i64, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.n = icmp slt i64 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = and i64 %i.l, 504                        ; 2 uses
  store i64 %i.o, ptr %0, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i64 [ %i.o, %bb.g ], [ %i.m, %bb.f ]
  %i.q = sub nsw i64 %i.f, %i.e
  %i.r = shl i64 %i.p, 5
  %i.s = udiv i64 %i.q, %i.r                      ; 2 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.u = add nsw i64 %3, -1                       ; 2 uses
  %i.v = add i64 %i.u, %i.t
  %i.w = sdiv i64 %i.v, %3                        ; 2 uses
  %.not114 = icmp sgt i64 %i.s, %i.w
  br i1 %.not114, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i64 %i.s, 576460752303423484
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = add nsw i64 %i.w, 3                      ; 2 uses
  %i.z = srem i64 %i.y, 4
  %i.aa = sub nsw i64 %i.y, %i.z
  %.sroa.speculated153 = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge184 = phi i64 [ %i.x, %bb.i ], [ %.sroa.speculated153, %bb.j ]
  store i64 %storemerge184, ptr %2, align 8, !tbaa !14
  %i.ab = icmp sgt i64 %i.g, %i.f
  br i1 %i.ab, label %bb.l, label %.critedge116

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nsw i64 %i.g, %i.f
  %i.ad = load i64, ptr %0, align 8, !tbaa !14
  %i.ae = shl i64 %3, 3
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = udiv i64 %i.ac, %i.af                   ; 3 uses
  %i.ah = load i64, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.ai = add i64 %i.u, %i.ah
  %i.aj = sdiv i64 %i.ai, %3                      ; 2 uses
  %i.ak = icmp slt i64 %i.ag, %i.aj
  %i.al = icmp samesign ugt i64 %i.ag, 3
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = and i64 %i.ag, 2305843009213693948
  store i64 %i.am, ptr %1, align 8, !tbaa !14
end_hunk_0
