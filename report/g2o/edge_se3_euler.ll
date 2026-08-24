Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_euler?download=true
inline.NumInlined: 5314
inline.NumDeleted: 2988
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll:bb.a
  %i.mn = fmul <2 x double> %i.mi, %i.mm
  %i.mo = fadd <2 x double> %i.mg, %i.mn
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !422
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !423
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !424
  %i.mp = getelementptr inbounds nuw i8, ptr %.0117358, i64 112
  %i.mq = load <2 x double>, ptr %i.mp, align 1, !tbaa !10
  %i.mr = getelementptr inbounds nuw i8, ptr %.0116359, i64 56
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !8
  %i.mt = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = fmul <2 x double> %i.mq, %i.mu
  %i.mw = fadd <2 x double> %i.mo, %i.mv          ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !425
  %i.mx = getelementptr inbounds [8 x i8], ptr %.0116359, i64 %13 ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %.0117358, i64 %.idx135 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !426
  %i.mz = add nsw i64 %.0115360, %13              ; 2 uses
  %i.na = icmp slt i64 %i.mz, %12
  br i1 %i.na, label %.lr.ph362, label %.preheader, !llvm.loop !427

._crit_edge371:                                   ; preds = %.lr.ph370, %.preheader
  %.1314.lcssa = phi <2 x double> [ %.0313.lcssa, %.preheader ], [ %i.nk, %.lr.ph370 ]
  %i.nb = load <2 x double>, ptr %i.kl, align 1, !tbaa !10
  %i.nc = fmul <2 x double> %i.h, %.1314.lcssa
  %i.nd = fadd <2 x double> %i.nc, %i.nb
  store <2 x double> %i.nd, ptr %i.kl, align 1, !tbaa !10
  %i.ne = add i64 %.0119375, 1                    ; 2 uses
  %exitcond402.not = icmp eq i64 %i.ne, %14
  br i1 %exitcond402.not, label %._crit_edge377, label %bb.c, !llvm.loop !428

.lr.ph370:                                        ; preds = %.preheader, %.lr.ph370
  %.0369 = phi i64 [ %i.nn, %.lr.ph370 ], [ %12, %.preheader ]
  %.1368 = phi ptr [ %i.nl, %.lr.ph370 ], [ %.0116.lcssa, %.preheader ] ; 2 uses
  %.1118367 = phi ptr [ %i.nm, %.lr.ph370 ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1314366 = phi <2 x double> [ %i.nk, %.lr.ph370 ], [ %.0313.lcssa, %.preheader ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !429
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !430
  %i.nf = load <2 x double>, ptr %.1118367, align 1, !tbaa !10
  %i.ng = load double, ptr %.1368, align 8, !tbaa !8
  %i.nh = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = fmul <2 x double> %i.nf, %i.ni
  %i.nk = fadd <2 x double> %.1314366, %i.nj      ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !431
  %i.nl = getelementptr inbounds nuw i8, ptr %.1368, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %.1118367, i64 16
  %i.nn = add i64 %.0369, 1                       ; 2 uses
  %exitcond401.not = icmp eq i64 %i.nn, %15
  br i1 %exitcond401.not, label %._crit_edge371, label %.lr.ph370, !llvm.loop !432
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #17

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !142  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !139
  %.sroa.speculated246 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated246, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !143    ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172
  %i.j = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.k = icmp samesign ult i64 %i.e, 16385
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.j, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #25 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !19
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc193 unwind label %bb.af

.noexc193:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !144  ; 2 uses
  %.not159 = icmp eq ptr %i.w, null
  br i1 %.not159, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #25 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !19
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc196 unwind label %bb.ag

.noexc196:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !266

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !267
  %.sroa.speculated280 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated280, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 7 uses
  br i1 %i.ar, label %.lr.ph312.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.q
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph328.split.preheader, label %._crit_edge

.lr.ph328.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = sub nsw i64 %0, %i.b                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %.lr.ph328.split.preheader
  %.sroa.speculated221375 = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %0)
  br label %.lr.ph

.lr.ph312.us.preheader:                           ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bc = icmp sgt i64 %i.b, 0
  %i.bd = shl i64 %0, 3                           ; 2 uses
  %i.be = mul i64 %i.b, -8
  %i.bf = mul i64 %., %6
  %i.bg = shl i64 %i.bf, 3
  %i.bh = add i64 %i.bd, -8
  %i.bi = shl i64 %6, 3                           ; 2 uses
  %i.bj = add nuw i64 %0, 2305843009213693951
  %i.bk = mul i64 %3, %i.bj
  %i.bl = add i64 %i.bk, %0
  %i.bm = shl i64 %i.bl, 3
  %i.bn = shl i64 %3, 3
  %i.bo = sub nuw nsw i64 -8, %i.bn               ; 2 uses
  %i.bp = mul i64 %i.b, %i.bo
  %i.bq = shl i64 %3, 5
  %i.br = sub nuw nsw i64 -32, %i.bq
  %i.bs = getelementptr i8, ptr %4, i64 %i.bd
  %i.bt = getelementptr i8, ptr %2, i64 %i.bm
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %ident.check.not = icmp eq i64 %6, 1
  %stride.check = icmp slt i64 %i.bi, 0
  br label %.lr.ph312.us

.lr.ph312.us:                                     ; preds = %.loopexit.us, %.lr.ph312.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph312.us.preheader ] ; 3 uses
  %.0135326.us = phi i64 [ %i.ci, %.loopexit.us ], [ %0, %.lr.ph312.us.preheader ] ; 5 uses
  %i.bv = mul i64 %i.be, %indvar                  ; 2 uses
  %i.bw = add i64 %i.bh, %i.bv
  %i.bx = mul i64 %i.bp, %indvar
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0135326.us) ; 9 uses
  %i.by = sub nsw i64 %.0135326.us, %smin         ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %2, i64 %i.by
  %i.ca = getelementptr [8 x i8], ptr %4, i64 %i.by
  br i1 %i.bc, label %.lr.ph308.us.us.preheader, label %._crit_edge313.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph312.us
  %i.cb = getelementptr i8, ptr %i.bs, i64 %i.bv
  %i.cc = getelementptr i8, ptr %i.bu, i64 %i.bx
  br label %.lr.ph308.us.us

bb.s:                                             ; preds = %.lr.ph.us, %bb.w
  %.0325.us = phi i64 [ 0, %.lr.ph.us ], [ %i.cg, %bb.w ] ; 4 uses
  %i.cd = sub nsw i64 %i.ci, %.0325.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.cd, i64 %.sroa.speculated246) ; 3 uses
  %i.ce = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.ce, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %gep.us330 = getelementptr [8 x i8], ptr %invariant.gep.us333, i64 %.0325.us
  store ptr %gep.us330, ptr %14, align 8
  store i64 %3, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %smin, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split.us334

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.cf = getelementptr [8 x i8], ptr %4, i64 %.0325.us
  store ptr %i.cf, ptr %15, align 8
  store i64 %6, ptr %i.bb, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %smin, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split336.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cg = add nsw i64 %.0325.us, %.sroa.speculated246 ; 2 uses
  %i.ch = icmp slt i64 %i.cg, %i.ci
  br i1 %i.ch, label %bb.s, label %.loopexit.us, !llvm.loop !433

.loopexit.us:                                     ; preds = %bb.w
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph312.us, !llvm.loop !434

._crit_edge313.us:                                ; preds = %._crit_edge309.us.us, %.lr.ph312.us
  %i.ci = sub nsw i64 %.0135326.us, %i.b          ; 5 uses
  %i.cj = icmp sgt i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.us, label %._crit_edge

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar377 = phi i64 [ %indvar.next378, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 4 uses
  %.0134310.us.us = phi i64 [ %i.fz, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 13 uses
  %16 = or disjoint i64 %.0134310.us.us, 1
  %i.ck = mul i64 %., %indvar377                  ; 2 uses
  %17 = sub i64 %1, %i.ck
  %smin389 = call i64 @llvm.smin.i64(i64 %., i64 %17)
  %18 = add i64 %smin389, %.0134310.us.us
  %smax390 = call i64 @llvm.smax.i64(i64 %16, i64 %18) ; 2 uses
  %19 = sub i64 %smax390, %i.ck                   ; 2 uses
  %i.cl = mul i64 %i.bg, %indvar377               ; 2 uses
  %i.cm = add i64 %i.bw, %i.cl
  %i.cn = or disjoint i64 %.0134310.us.us, 1
  %i.co = mul i64 %., %indvar377                  ; 2 uses
  %i.cp = sub i64 %1, %i.co
  %smin383 = call i64 @llvm.smin.i64(i64 %., i64 %i.cp)
  %i.cq = add i64 %smin383, %.0134310.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.cn, i64 %i.cq)
  %i.cr = xor i64 %i.co, -1
  %i.cs = add i64 %smax, %i.cr
  %i.ct = mul i64 %i.bi, %i.cs
  %i.cu = add i64 %i.cm, %i.ct
  %i.cv = sub nsw i64 %1, %.0134310.us.us         ; 2 uses
  %.sroa.speculated216.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cv) ; 3 uses
  %i.cw = add nsw i64 %.sroa.speculated216.us.us, %.0134310.us.us ; 2 uses
  %i.cx = icmp slt i64 %i.cv, 1
  %i.cy = mul nuw nsw i64 %.0134310.us.us, %smin
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cy ; 2 uses
  %i.da = mul nsw i64 %.0134310.us.us, %6         ; 2 uses
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.da
  %i.db = getelementptr [8 x i8], ptr %i.ca, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.cb, i64 %i.cl
  %min.iters.check392 = icmp ugt i64 %19, 3
  %or.cond = and i1 %min.iters.check392, %ident.check.not
  %i.dd = and i64 %smax390, 3                     ; 2 uses
  %n.vec394 = sub nuw i64 %19, %i.dd              ; 2 uses
  %i.de = add i64 %.0134310.us.us, %n.vec394
  %cmp.n403 = icmp eq i64 %i.dd, 0
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph308.us.us
  %indvar379 = phi i64 [ %indvar.next380, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ac ], [ %smin, %.lr.ph308.us.us ] ; 3 uses
  %.0133306.us.us = phi i64 [ %i.fa, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 4 uses
  %i.df = mul i64 %indvar379, -32                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dc, i64 %i.df
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 4)
  %i.dg = mul i64 %smin381, -8
  %scevgep382 = getelementptr i8, ptr %scevgep, i64 %i.dg
  %i.dh = add i64 %i.cu, %i.df
  %i.di = mul i64 %i.br, %indvar379
  %i.dj = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.dk = call i64 @llvm.umin.i64(i64 %i.dj, i64 4)
  %i.dl = sub nsw i64 %smin, %.0133306.us.us      ; 3 uses
  %.sroa.speculated210.us.us = call i64 @llvm.smin.i64(i64 %i.dl, i64 4) ; 7 uses
  %i.dm = icmp slt i64 %i.dl, 1
  %brmerge = select i1 %i.dm, i1 true, i1 %i.cx
  br i1 %brmerge, label %._crit_edge.split.us.us, label %.lr.ph303.us.us.preheader

.lr.ph303.us.us.preheader:                        ; preds = %bb.x
  %i.dn = getelementptr i8, ptr %i.cc, i64 %i.di
  br label %.lr.ph303.us.us

.lr.ph303.us.us:                                  ; preds = %.lr.ph303.us.us.preheader, %._crit_edge304.us.us
  %.0132305.us.us = phi i64 [ %i.fc, %._crit_edge304.us.us ], [ 0, %.lr.ph303.us.us.preheader ] ; 5 uses
  %i.do = shl i64 %.0132305.us.us, 3
  %i.dp = sub i64 %i.dh, %i.do
  %scevgep384 = getelementptr i8, ptr %4, i64 %i.dp
  %i.dq = mul i64 %i.bo, %.0132305.us.us
  %scevgep385 = getelementptr i8, ptr %i.dn, i64 %i.dq
  %i.dr = add nuw nsw i64 %.0132305.us.us, %.0133306.us.us
  %i.ds = xor i64 %i.dr, -1
  %i.dt = add nsw i64 %.0135326.us, %i.ds         ; 4 uses
  %i.du = xor i64 %.0132305.us.us, -1
  %i.dv = add nsw i64 %.sroa.speculated210.us.us, %i.du ; 6 uses
  %i.dw = sub i64 %i.dt, %i.dv                    ; 2 uses
  %i.dx = mul nsw i64 %i.dt, %3                   ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %2, i64 %i.dt
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !8
  %i.eb = fdiv double 1.000000e+00, %i.ea         ; 3 uses
  %i.ec = getelementptr [8 x i8], ptr %4, i64 %i.dt ; 3 uses
  %i.ed = getelementptr [8 x i8], ptr %4, i64 %i.dw
  %i.ee = getelementptr [8 x i8], ptr %2, i64 %i.dw
  %i.ef = getelementptr [8 x i8], ptr %i.ee, i64 %i.dx ; 3 uses
  %i.eg = icmp sgt i64 %i.dv, 0
  br i1 %i.eg, label %.lr.ph.us.us.us.preheader, label %.lr.ph303.split.us316.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph303.us.us
  %min.iters.check = icmp ult i64 %i.dv, 4
  %bound0 = icmp ult ptr %scevgep382, %scevgep385
  %bound1 = icmp ult ptr %i.ef, %scevgep384
  %found.conflict = and i1 %bound0, %bound1
  %i.eh = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.dv, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br label %.lr.ph.us.us.us

.lr.ph303.split.us316.us.preheader:               ; preds = %.lr.ph303.us.us
  br i1 %or.cond, label %vector.ph393, label %.lr.ph303.split.us316.us.preheader405

vector.ph393:                                     ; preds = %.lr.ph303.split.us316.us.preheader
  %broadcast.splatinsert395 = insertelement <2 x double> poison, double %i.eb, i64 0
  %broadcast.splat396 = shufflevector <2 x double> %broadcast.splatinsert395, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.ec, i64 %.0134310.us.us
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph393
  %index398 = phi i64 [ 0, %vector.ph393 ], [ %index.next401, %vector.body397 ] ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %i.ei, i64 %index398 ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 16     ; 2 uses
  %wide.load399 = load <2 x double>, ptr %i.ej, align 8, !tbaa !8
  %wide.load400 = load <2 x double>, ptr %i.ek, align 8, !tbaa !8
  %i.el = fmul <2 x double> %broadcast.splat396, %wide.load399
  %i.em = fmul <2 x double> %broadcast.splat396, %wide.load400
  store <2 x double> %i.el, ptr %i.ej, align 8, !tbaa !8
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !8
  %index.next401 = add nuw i64 %index398, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next401, %n.vec394
  br i1 %i.en, label %middle.block402, label %vector.body397, !llvm.loop !435

middle.block402:                                  ; preds = %vector.body397
  br i1 %cmp.n403, label %._crit_edge304.us.us, label %.lr.ph303.split.us316.us.preheader405

.lr.ph303.split.us316.us.preheader405:            ; preds = %.lr.ph303.split.us316.us.preheader, %middle.block402
  %.0131301.us314.us.ph = phi i64 [ %.0134310.us.us, %.lr.ph303.split.us316.us.preheader ], [ %i.de, %middle.block402 ]
  br label %.lr.ph303.split.us316.us

.lr.ph303.split.us316.us:                         ; preds = %.lr.ph303.split.us316.us.preheader405, %.lr.ph303.split.us316.us
  %.0131301.us314.us = phi i64 [ %i.es, %.lr.ph303.split.us316.us ], [ %.0131301.us314.us.ph, %.lr.ph303.split.us316.us.preheader405 ] ; 2 uses
  %i.eo = mul nsw i64 %.0131301.us314.us, %6
  %i.ep = getelementptr [8 x i8], ptr %i.ec, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !8
  %i.er = fmul double %i.eb, %i.eq
  store double %i.er, ptr %i.ep, align 8, !tbaa !8
  %i.es = add nuw nsw i64 %.0131301.us314.us, 1   ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.cw
  br i1 %i.et, label %.lr.ph303.split.us316.us, label %._crit_edge304.us.us, !llvm.loop !436

._crit_edge.split.us.us:                          ; preds = %._crit_edge304.us.us, %bb.x
  %i.eu = sub nsw i64 %i.dl, %.sroa.speculated210.us.us ; 5 uses
  %i.ev = add i64 %.0133306.us.us, %.sroa.speculated210.us.us
  %i.ew = sub i64 %.0135326.us, %i.ev             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.ew
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, i64 noundef %smin, i64 noundef %i.eu)
          to label %bb.y unwind label %.split.us.split.us

bb.y:                                             ; preds = %._crit_edge.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ex = icmp sgt i64 %i.eu, 0
  br i1 %i.ex, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.ey = mul nsw i64 %i.ew, %3
  %i.ez = getelementptr [8 x i8], ptr %i.bz, i64 %i.ey
  store ptr %i.ez, ptr %12, align 8
  store i64 %3, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated210.us.us, i64 noundef %i.eu, i64 noundef 0, i64 noundef 0)
          to label %bb.aa unwind label %.split320.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.db, ptr %13, align 8
  store i64 %6, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.cz, i64 noundef %i.eu, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated210.us.us, i64 noundef %smin, i64 noundef 0, i64 noundef %i.eu)
          to label %bb.ab unwind label %.split323.us.split.us

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.fa = add nuw nsw i64 %.0133306.us.us, 4      ; 2 uses
  %i.fb = icmp slt i64 %i.fa, %smin
  %indvars.iv.next = add i64 %indvars.iv, -4
  %indvar.next380 = add i64 %indvar379, 1
  br i1 %i.fb, label %bb.x, label %._crit_edge309.us.us, !llvm.loop !437

._crit_edge304.us.us:                             ; preds = %.lr.ph303.split.us316.us, %._crit_edge.us.us.us, %middle.block402
  %i.fc = add nuw nsw i64 %.0132305.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.fc, %i.dk
  br i1 %exitcond.not, label %._crit_edge.split.us.us, label %.lr.ph303.us.us, !llvm.loop !438

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.0131301.us.us.us = phi i64 [ %i.fx, %._crit_edge.us.us.us ], [ %.0134310.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.fd = mul nsw i64 %.0131301.us.us.us, %6      ; 2 uses
  %i.fe = getelementptr [8 x i8], ptr %i.ec, i64 %i.fd ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !8
  %i.fg = fmul double %i.eb, %i.ff                ; 2 uses
  store double %i.fg, ptr %i.fe, align 8, !tbaa !8
  %i.fh = getelementptr [8 x i8], ptr %i.ed, i64 %i.fd ; 2 uses
  %i.fi = fneg double %i.fg                       ; 2 uses
  %brmerge408 = select i1 %min.iters.check, i1 true, i1 %i.eh
  br i1 %brmerge408, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fi, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load = load <2 x double>, ptr %i.fj, align 8, !tbaa !8, !alias.scope !439
  %wide.load386 = load <2 x double>, ptr %i.fk, align 8, !tbaa !8, !alias.scope !439
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %index ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %wide.load387 = load <2 x double>, ptr %i.fl, align 8, !tbaa !8, !alias.scope !442, !noalias !439
  %wide.load388 = load <2 x double>, ptr %i.fm, align 8, !tbaa !8, !alias.scope !442, !noalias !439
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load387)
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load386, <2 x double> %wide.load388)
  store <2 x double> %i.fn, ptr %i.fl, align 8, !tbaa !8, !alias.scope !442, !noalias !439
  store <2 x double> %i.fo, ptr %i.fm, align 8, !tbaa !8, !alias.scope !442, !noalias !439
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !444

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us, %middle.block
  %.0130300.us.us.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0130300.us.us.us = phi i64 [ %i.fv, %scalar.ph ], [ %.0130300.us.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.0130300.us.us.us
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !8
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.0130300.us.us.us ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !8
end_hunk_0
