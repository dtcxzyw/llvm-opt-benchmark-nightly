Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_ellipse?download=true
inline.NumInlined: 7129
inline.NumDeleted: 3730
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi1ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE:bb.a

bb.h:                                             ; preds = %bb.g
  %i.y = add nuw nsw i64 %i.w, 15
  %i.z = alloca i8, i64 %i.y, align 16            ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.w) #29 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.invoke, label %bb.j

.invoke:                                          ; preds = %bb.i, %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !10
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit, %bb.i
  %i.ad = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 4 uses
  %i.af = icmp samesign ugt i64 %i.f, 32768       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %12, i8 0, i64 1024, i1 false), !tbaa !17
  store float 1.000000e+00, ptr %12, align 16, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 68
  store float 1.000000e+00, ptr %i.ag, align 4, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 136
  store float 1.000000e+00, ptr %i.ah, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 204
  store float 1.000000e+00, ptr %i.ai, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 272
  store float 1.000000e+00, ptr %i.aj, align 16, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 340
  store float 1.000000e+00, ptr %i.ak, align 4, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 408
  store float 1.000000e+00, ptr %i.al, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 476
  store float 1.000000e+00, ptr %i.am, align 4, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 544
  store float 1.000000e+00, ptr %i.an, align 16, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 612
  store float 1.000000e+00, ptr %i.ao, align 4, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 680
  store float 1.000000e+00, ptr %i.ap, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 748
  store float 1.000000e+00, ptr %i.aq, align 4, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 816
  store float 1.000000e+00, ptr %i.ar, align 16, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 884
  store float 1.000000e+00, ptr %i.as, align 4, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 952
  store float 1.000000e+00, ptr %i.at, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 1020
  store float 1.000000e+00, ptr %i.au, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.av = icmp sgt i64 %.sroa.speculated271, 0
  br i1 %i.av, label %.lr.ph303, label %._crit_edge304

.lr.ph303:                                        ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bd = shl i64 %.sroa.speculated271, 2
  %i.be = add i64 %i.bd, 4
  %i.bf = mul i64 %i.b, -4
  %i.bg = shl i64 %4, 2                           ; 2 uses
  %i.bh = add i64 %i.bg, 4                        ; 2 uses
  %i.bi = mul i64 %.sroa.speculated220, %i.bh
  %i.bj = icmp sgt i64 %i.b, 0
  %smin312 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b)
  %smin313 = tail call i64 @llvm.smin.i64(i64 %smin312, i64 %0) ; 2 uses
  br label %bb.n

._crit_edge304:                                   ; preds = %._crit_edge298, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.af, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

bb.k:                                             ; preds = %._crit_edge304
  call void @free(ptr noundef %i.ad) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit: ; preds = %._crit_edge304, %bb.k
  br i1 %i.s, label %bb.l, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit192

bb.l:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit
  call void @free(ptr noundef %i.q) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit192

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit192: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit, %bb.l
  ret void

bb.m:                                             ; preds = %.invoke
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit197

bb.n:                                             ; preds = %.lr.ph303, %._crit_edge298
  %indvar = phi i64 [ 0, %.lr.ph303 ], [ %indvar.next, %._crit_edge298 ] ; 2 uses
  %.0126301 = phi i64 [ %.sroa.speculated271, %.lr.ph303 ], [ %i.dk, %._crit_edge298 ] ; 5 uses
  %smin314 = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0126301) ; 11 uses
  %i.bl = mul i64 %i.bf, %indvar
  %i.bm = add i64 %i.be, %i.bl
  %i.bn = sub i64 %.0126301, %smin314             ; 4 uses
  %i.bo = mul i64 %i.bg, %i.bn
  %i.bp = add i64 %i.bm, %i.bo
  %i.bq = shl i64 %smin314, 2
  %i.br = sub i64 %i.bp, %i.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.bs = getelementptr [4 x i8], ptr %5, i64 %i.bn
  store ptr %i.bs, ptr %16, align 8
  store i64 %6, ptr %i.aw, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIflNS0_22const_blas_data_mapperIflLi0EEELi4ELi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %smin314, i64 noundef %1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br i1 %i.bj, label %.lr.ph295.preheader, label %.preheader

.lr.ph295.preheader:                              ; preds = %bb.o
  %i.bt = getelementptr i8, ptr %3, i64 %i.br
  br label %.lr.ph295

.preheader:                                       ; preds = %bb.aa, %bb.o
  %i.bu = icmp slt i64 %.0126301, %0
  br i1 %i.bu, label %.lr.ph297, label %._crit_edge298

.lr.ph297:                                        ; preds = %.preheader
  %i.bv = mul nsw i64 %i.bn, %4
  %invariant.gep299 = getelementptr [4 x i8], ptr %3, i64 %i.bv
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.ag

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %bb.aa
  %indvars.iv = phi i64 [ %smin314, %.lr.ph295.preheader ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %indvar305 = phi i64 [ 0, %.lr.ph295.preheader ], [ %indvar.next306, %bb.aa ] ; 3 uses
  %.0125293 = phi i64 [ 0, %.lr.ph295.preheader ], [ %i.di, %bb.aa ] ; 5 uses
  %smin315 = call i64 @llvm.smin.i64(i64 %smin313, i64 %indvars.iv)
  %smin316 = call i64 @llvm.smin.i64(i64 %smin315, i64 16)
  %i.bx = mul i64 %.sroa.speculated220, %indvar305
  %i.by = sub i64 %smin314, %i.bx
  %smin310 = call i64 @llvm.smin.i64(i64 %smin313, i64 %i.by)
  %smin311 = call i64 @llvm.smin.i64(i64 %smin310, i64 16)
  %i.bz = shl i64 %smin311, 2
  %i.ca = add i64 %i.bz, -4
  %i.cb = sub nsw i64 %smin314, %.0125293         ; 2 uses
  %.sroa.speculated203 = call i64 @llvm.smin.i64(i64 %.sroa.speculated220, i64 %i.cb) ; 12 uses
  %i.cc = sub nsw i64 %i.cb, %.sroa.speculated203 ; 3 uses
  %i.cd = add nsw i64 %.0125293, %i.bn            ; 4 uses
  %i.ce = icmp sgt i64 %.sroa.speculated203, 0
  br i1 %i.ce, label %.lr.ph292, label %._crit_edge

.lr.ph292:                                        ; preds = %.lr.ph295
  %i.cf = mul i64 %i.bi, %indvar305
  %i.cg = getelementptr i8, ptr %i.bt, i64 %i.cf
  br label %bb.q

.loopexit:                                        ; preds = %.lr.ph, %bb.q
  %exitcond.not = icmp eq i64 %i.co, %smin316
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !740

bb.q:                                             ; preds = %.lr.ph292, %.loopexit
  %.0124291 = phi i64 [ 0, %.lr.ph292 ], [ %i.co, %.loopexit ] ; 7 uses
  %i.ch = add nsw i64 %.0124291, %i.cd            ; 2 uses
  %i.ci = mul nsw i64 %i.ch, %4
  %i.cj = getelementptr [4 x i8], ptr %3, i64 %i.ch
  %i.ck = getelementptr [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !17
  %i.cm = getelementptr [4 x i8], ptr %12, i64 %.0124291
  %.idx.i = shl nuw nsw i64 %.0124291, 6
  %i.cn = getelementptr i8, ptr %i.cm, i64 %.idx.i
  store float %i.cl, ptr %i.cn, align 4, !tbaa !17
  %i.co = add nuw nsw i64 %.0124291, 1            ; 3 uses
  %i.cp = icmp slt i64 %i.co, %.sroa.speculated203
  br i1 %i.cp, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.q
  %i.cq = shl i64 %.0124291, 2
  %i.cr = sub i64 %i.ca, %i.cq
  %i.cs = mul i64 %i.bh, %.0124291
  %scevgep307 = getelementptr i8, ptr %i.cg, i64 %i.cs
  %i.ct = mul nuw nsw i64 %.0124291, 68
  %i.cu = getelementptr i8, ptr %12, i64 %i.ct
  %scevgep = getelementptr i8, ptr %i.cu, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %scevgep307, i64 %i.cr, i1 false), !tbaa !17
  br label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph295
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %12, ptr %17, align 8, !tbaa !138
  store i64 16, ptr %i.ax, align 8, !tbaa !139
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated203, i64 noundef %.sroa.speculated203, i64 noundef 0, i64 noundef 0)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.cv = getelementptr [4 x i8], ptr %7, i64 %i.cd
  store ptr %i.cv, ptr %18, align 8
  store i64 %9, ptr %i.ay, align 8
  %i.cw = load float, ptr %10, align 4, !tbaa !17
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated203, i64 noundef %.sroa.speculated203, i64 noundef %1, float noundef %i.cw, i64 noundef %.sroa.speculated203, i64 noundef %smin314, i64 noundef 0, i64 noundef %.0125293)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.cx = icmp sgt i64 %i.cc, 0
  br i1 %i.cx, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.cy = add nsw i64 %.sroa.speculated203, %i.cd ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.cz = mul nsw i64 %i.cd, %4
  %i.da = getelementptr [4 x i8], ptr %3, i64 %i.cy
  %i.db = getelementptr [4 x i8], ptr %i.da, i64 %i.cz
  store ptr %i.db, ptr %19, align 8
  store i64 %4, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated203, i64 noundef %i.cc, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.dc = getelementptr [4 x i8], ptr %7, i64 %i.cy
  store ptr %i.dc, ptr %20, align 8
  store i64 %9, ptr %i.ba, align 8
  %i.dd = load float, ptr %10, align 4, !tbaa !17
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.cc, i64 noundef %.sroa.speculated203, i64 noundef %1, float noundef %i.dd, i64 noundef %.sroa.speculated203, i64 noundef %smin314, i64 noundef 0, i64 noundef %.0125293)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.aa

bb.w:                                             ; preds = %._crit_edge
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.ag

bb.x:                                             ; preds = %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.ag

bb.y:                                             ; preds = %bb.t
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ag

bb.z:                                             ; preds = %bb.u
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.ag

bb.aa:                                            ; preds = %bb.v, %bb.s
  %i.di = add nsw i64 %.0125293, %.sroa.speculated220 ; 2 uses
  %i.dj = icmp slt i64 %i.di, %smin314
  %indvar.next306 = add i64 %indvar305, 1
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated220
  br i1 %i.dj, label %.lr.ph295, label %.preheader, !llvm.loop !741

._crit_edge298:                                   ; preds = %bb.ad, %.preheader
  %i.dk = sub nsw i64 %.0126301, %i.b             ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dl, label %bb.n, label %._crit_edge304, !llvm.loop !742

bb.ab:                                            ; preds = %.lr.ph297, %bb.ad
  %.0296 = phi i64 [ %.0126301, %.lr.ph297 ], [ %i.dm, %bb.ad ] ; 4 uses
  %i.dm = add nsw i64 %.0296, %.sroa.speculated226 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.dm)
  %i.dn = sub nsw i64 %.sroa.speculated, %.0296   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %gep300 = getelementptr [4 x i8], ptr %invariant.gep299, i64 %.0296
  store ptr %gep300, ptr %22, align 8
  store i64 %4, ptr %i.bb, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %smin314, i64 noundef %i.dn, i64 noundef 0, i64 noundef 0)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.do = getelementptr [4 x i8], ptr %7, i64 %.0296
  store ptr %i.do, ptr %23, align 8
  store i64 %9, ptr %i.bc, align 8
  %i.dp = load float, ptr %10, align 4, !tbaa !17
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.dn, i64 noundef %smin314, i64 noundef %1, float noundef %i.dp, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.dq = icmp slt i64 %i.dm, %0
  br i1 %i.dq, label %bb.ab, label %._crit_edge298, !llvm.loop !743

bb.ae:                                            ; preds = %bb.ab
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.w, %bb.x, %bb.z, %bb.y, %bb.p
  %.pn150.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.p ], [ %i.dg, %bb.y ], [ %i.dr, %bb.ae ], [ %i.de, %bb.w ], [ %i.df, %bb.x ], [ %i.dh, %bb.z ], [ %i.ds, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.af, label %bb.ah, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit197

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.ad) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit197

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit197: ; preds = %bb.ag, %bb.ah, %bb.m
  %.pn150.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.m ], [ %.pn150.pn.pn, %bb.ah ], [ %.pn150.pn.pn, %bb.ag ]
  br i1 %i.s, label %bb.ai, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit198

bb.ai:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit197
  call void @free(ptr noundef %i.q) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit198

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit198: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit197, %bb.ai
  resume { ptr, i32 } %.pn150.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !752
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
  %lcmp.mod122 = trunc i64 %3 to i1
  br label %.preheader64.us

.preheader64.preheader:                           ; preds = %.preheader64.lr.ph
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 8)
  br label %.preheader63

.preheader64.us:                                  ; preds = %.preheader64.us.preheader, %._crit_edge.us
  %.05568.us = phi i64 [ %i.ax, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 4 uses
  %.05667.us = phi i64 [ %.lcssa119, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 2 uses
  br i1 %i.k, label %.epil.preheader, label %.preheader64.us.new

.preheader64.us.new:                              ; preds = %.preheader64.us, %.preheader64.us.new
  %.05466.us = phi i64 [ %i.ak, %.preheader64.us.new ], [ 0, %.preheader64.us ] ; 3 uses
  %.15765.us = phi i64 [ %i.aj, %.preheader64.us.new ], [ %.05667.us, %.preheader64.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader64.us.new ], [ 0, %.preheader64.us ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !138
  %i.m = load i64, ptr %i.j, align 8, !tbaa !139
  %i.n = mul nsw i64 %i.m, %.05466.us             ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %i.l, i64 %.05568.us ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load <4 x float>, ptr %i.p, align 1, !tbaa !44
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %i.s = getelementptr [4 x i8], ptr %i.r, i64 %i.n
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE:bb.a

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit
  %i.w = shl nuw i64 %i.f, 2                      ; 2 uses
  %i.x = icmp samesign ult i64 %i.f, 32769
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = add nuw nsw i64 %i.w, 15
  %i.z = alloca i8, i64 %i.y, align 16            ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.w) #29 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.invoke, label %bb.j

.invoke:                                          ; preds = %bb.i, %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !10
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit, %bb.i
  %i.ad = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 4 uses
  %i.af = icmp samesign ugt i64 %i.f, 32768       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %12, i8 0, i64 1024, i1 false), !tbaa !17
  store float 1.000000e+00, ptr %12, align 16, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 68
  store float 1.000000e+00, ptr %i.ag, align 4, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 136
  store float 1.000000e+00, ptr %i.ah, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 204
  store float 1.000000e+00, ptr %i.ai, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 272
  store float 1.000000e+00, ptr %i.aj, align 16, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 340
  store float 1.000000e+00, ptr %i.ak, align 4, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 408
  store float 1.000000e+00, ptr %i.al, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 476
  store float 1.000000e+00, ptr %i.am, align 4, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 544
  store float 1.000000e+00, ptr %i.an, align 16, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 612
  store float 1.000000e+00, ptr %i.ao, align 4, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 680
  store float 1.000000e+00, ptr %i.ap, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 748
  store float 1.000000e+00, ptr %i.aq, align 4, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 816
  store float 1.000000e+00, ptr %i.ar, align 16, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 884
  store float 1.000000e+00, ptr %i.as, align 4, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 952
  store float 1.000000e+00, ptr %i.at, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 1020
  store float 1.000000e+00, ptr %i.au, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.av = icmp sgt i64 %.sroa.speculated261, 0
  br i1 %i.av, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bd = shl i64 %.sroa.speculated261, 2
  %i.be = add i64 %i.bd, 4
  %i.bf = mul i64 %i.b, -4
  %i.bg = shl i64 %4, 2                           ; 2 uses
  %i.bh = add i64 %i.bg, 4                        ; 4 uses
  %i.bi = mul i64 %.sroa.speculated211, %i.bh
  %i.bj = icmp sgt i64 %i.b, 0
  %smin302 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b)
  %smin303 = tail call i64 @llvm.smin.i64(i64 %smin302, i64 %0) ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b)
  %smin319 = tail call i64 @llvm.smin.i64(i64 %smin, i64 %0)
  br label %bb.n

._crit_edge294:                                   ; preds = %._crit_edge288, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.af, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

bb.k:                                             ; preds = %._crit_edge294
  call void @free(ptr noundef %i.ad) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit: ; preds = %._crit_edge294, %bb.k
  br i1 %i.s, label %bb.l, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit184

bb.l:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit
  call void @free(ptr noundef %i.q) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit184

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit184: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit, %bb.l
  ret void

bb.m:                                             ; preds = %.invoke
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188

bb.n:                                             ; preds = %.lr.ph293, %._crit_edge288
  %indvar = phi i64 [ 0, %.lr.ph293 ], [ %indvar.next, %._crit_edge288 ] ; 2 uses
  %.0120291 = phi i64 [ %.sroa.speculated261, %.lr.ph293 ], [ %i.ds, %._crit_edge288 ] ; 5 uses
  %smin304 = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0120291) ; 11 uses
  %i.bl = mul i64 %i.bf, %indvar
  %i.bm = add i64 %i.be, %i.bl
  %i.bn = sub i64 %.0120291, %smin304             ; 4 uses
  %i.bo = mul i64 %i.bg, %i.bn
  %i.bp = add i64 %i.bm, %i.bo
  %i.bq = shl i64 %smin304, 2
  %i.br = sub i64 %i.bp, %i.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.bs = getelementptr [4 x i8], ptr %5, i64 %i.bn
  store ptr %i.bs, ptr %16, align 8
  store i64 %6, ptr %i.aw, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIflNS0_22const_blas_data_mapperIflLi0EEELi4ELi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %smin304, i64 noundef %1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br i1 %i.bj, label %.lr.ph285.preheader, label %.preheader

.lr.ph285.preheader:                              ; preds = %bb.o
  %i.bt = getelementptr i8, ptr %3, i64 %i.br
  br label %.lr.ph285

.preheader:                                       ; preds = %bb.aa, %bb.o
  %i.bu = icmp slt i64 %.0120291, %0
  br i1 %i.bu, label %.lr.ph287, label %._crit_edge288

.lr.ph287:                                        ; preds = %.preheader
  %i.bv = mul nsw i64 %i.bn, %4
  %invariant.gep289 = getelementptr [4 x i8], ptr %3, i64 %i.bv
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.ag

.lr.ph285:                                        ; preds = %.lr.ph285.preheader, %bb.aa
  %indvars.iv = phi i64 [ %smin304, %.lr.ph285.preheader ], [ %indvars.iv.next, %bb.aa ] ; 3 uses
  %indvar295 = phi i64 [ 0, %.lr.ph285.preheader ], [ %indvar.next296, %bb.aa ] ; 3 uses
  %.0119283 = phi i64 [ 0, %.lr.ph285.preheader ], [ %i.dq, %bb.aa ] ; 5 uses
  %smin305 = call i64 @llvm.smin.i64(i64 %smin303, i64 %indvars.iv)
  %smin306 = call i64 @llvm.smin.i64(i64 %smin305, i64 16) ; 3 uses
  %i.bx = mul i64 %.sroa.speculated211, %indvar295
  %i.by = sub i64 %smin304, %i.bx
  %smin300 = call i64 @llvm.smin.i64(i64 %smin303, i64 %i.by)
  %smin301 = call i64 @llvm.smin.i64(i64 %smin300, i64 16)
  %i.bz = shl i64 %smin301, 2
  %i.ca = add i64 %i.bz, -4                       ; 3 uses
  %i.cb = sub nsw i64 %smin304, %.0119283         ; 2 uses
  %.sroa.speculated194 = call i64 @llvm.smin.i64(i64 %.sroa.speculated211, i64 %i.cb) ; 14 uses
  %i.cc = sub nsw i64 %i.cb, %.sroa.speculated194 ; 3 uses
  %i.cd = add nsw i64 %.0119283, %i.bn            ; 3 uses
  %i.ce = icmp sgt i64 %.sroa.speculated194, 0
  br i1 %i.ce, label %.lr.ph282, label %._crit_edge

.lr.ph282:                                        ; preds = %.lr.ph285
  %smin320 = call i64 @llvm.smin.i64(i64 %smin319, i64 %indvars.iv)
  %i.cf = mul i64 %i.bi, %indvar295
  %i.cg = getelementptr i8, ptr %i.bt, i64 %i.cf  ; 3 uses
  %xtraiter = and i64 %smin306, 1
  %i.ch = icmp eq i64 %smin320, 1
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph282.new

.lr.ph282.new:                                    ; preds = %.lr.ph282
  %unroll_iter = and i64 %smin306, -2
  br label %bb.q

.loopexit:                                        ; preds = %.lr.ph, %bb.q
  %i.ci = add nuw nsw i64 %.0118281, 2            ; 3 uses
  %i.cj = icmp slt i64 %i.ci, %.sroa.speculated194
  br i1 %i.cj, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit
  %i.ck = shl i64 %i.cp, 2
  %i.cl = sub i64 %i.ca, %i.ck
  %i.cm = mul i64 %i.bh, %i.cp
  %scevgep297.1 = getelementptr i8, ptr %i.cg, i64 %i.cm
  %i.cn = mul nuw nsw i64 %i.cp, 68
  %i.co = getelementptr i8, ptr %12, i64 %i.cn
  %scevgep.1 = getelementptr i8, ptr %i.co, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep.1, ptr align 4 %scevgep297.1, i64 %i.cl, i1 false), !tbaa !17
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph.1, %.loopexit
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.q, !llvm.loop !753

bb.q:                                             ; preds = %.loopexit.1, %.lr.ph282.new
  %.0118281 = phi i64 [ 0, %.lr.ph282.new ], [ %i.ci, %.loopexit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph282.new ], [ %niter.next.1, %.loopexit.1 ]
  %i.cp = or disjoint i64 %.0118281, 1            ; 4 uses
  %i.cq = icmp slt i64 %i.cp, %.sroa.speculated194
  br i1 %i.cq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.q
  %i.cr = shl i64 %.0118281, 2
  %i.cs = sub i64 %i.ca, %i.cr
  %i.ct = mul i64 %i.bh, %.0118281
  %scevgep297 = getelementptr i8, ptr %i.cg, i64 %i.ct
  %i.cu = mul nuw nsw i64 %.0118281, 68
  %i.cv = getelementptr i8, ptr %12, i64 %i.cu
  %scevgep = getelementptr i8, ptr %i.cv, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %scevgep297, i64 %i.cs, i1 false), !tbaa !17
  br label %.loopexit

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.loopexit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph282
  %.0118281.epil.init = phi i64 [ 0, %.lr.ph282 ], [ %i.ci, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod322 = trunc i64 %smin306 to i1
  call void @llvm.assume(i1 %lcmp.mod322)
  %i.cw = add nuw nsw i64 %.0118281.epil.init, 1
  %i.cx = icmp slt i64 %i.cw, %.sroa.speculated194
  br i1 %i.cx, label %.lr.ph.epil, label %._crit_edge

.lr.ph.epil:                                      ; preds = %.epil.preheader
  %i.cy = shl i64 %.0118281.epil.init, 2
  %i.cz = sub i64 %i.ca, %i.cy
  %i.da = mul i64 %i.bh, %.0118281.epil.init
  %scevgep297.epil = getelementptr i8, ptr %i.cg, i64 %i.da
  %i.db = mul nuw nsw i64 %.0118281.epil.init, 68
  %i.dc = getelementptr i8, ptr %12, i64 %i.db
  %scevgep.epil = getelementptr i8, ptr %i.dc, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.epil, ptr align 4 %scevgep297.epil, i64 %i.cz, i1 false), !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.epil.preheader, %.lr.ph285
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %12, ptr %17, align 8, !tbaa !138
  store i64 16, ptr %i.ax, align 8, !tbaa !139
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated194, i64 noundef %.sroa.speculated194, i64 noundef 0, i64 noundef 0)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.dd = getelementptr [4 x i8], ptr %7, i64 %i.cd
  store ptr %i.dd, ptr %18, align 8
  store i64 %9, ptr %i.ay, align 8
  %i.de = load float, ptr %10, align 4, !tbaa !17
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated194, i64 noundef %.sroa.speculated194, i64 noundef %1, float noundef %i.de, i64 noundef %.sroa.speculated194, i64 noundef %smin304, i64 noundef 0, i64 noundef %.0119283)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.df = icmp sgt i64 %i.cc, 0
  br i1 %i.df, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.dg = add nsw i64 %.sroa.speculated194, %i.cd ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.dh = mul nsw i64 %i.cd, %4
  %i.di = getelementptr [4 x i8], ptr %3, i64 %i.dg
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %i.dh
  store ptr %i.dj, ptr %19, align 8
  store i64 %4, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated194, i64 noundef %i.cc, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.dk = getelementptr [4 x i8], ptr %7, i64 %i.dg
  store ptr %i.dk, ptr %20, align 8
  store i64 %9, ptr %i.ba, align 8
  %i.dl = load float, ptr %10, align 4, !tbaa !17
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.cc, i64 noundef %.sroa.speculated194, i64 noundef %1, float noundef %i.dl, i64 noundef %.sroa.speculated194, i64 noundef %smin304, i64 noundef 0, i64 noundef %.0119283)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.aa

bb.w:                                             ; preds = %._crit_edge
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.ag

bb.x:                                             ; preds = %bb.r
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.ag

bb.y:                                             ; preds = %bb.t
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ag

bb.z:                                             ; preds = %bb.u
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.ag

bb.aa:                                            ; preds = %bb.v, %bb.s
  %i.dq = add nsw i64 %.0119283, %.sroa.speculated211 ; 2 uses
  %i.dr = icmp slt i64 %i.dq, %smin304
  %indvar.next296 = add i64 %indvar295, 1
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated211
  br i1 %i.dr, label %.lr.ph285, label %.preheader, !llvm.loop !754

._crit_edge288:                                   ; preds = %bb.ad, %.preheader
  %i.ds = sub nsw i64 %.0120291, %i.b             ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dt, label %bb.n, label %._crit_edge294, !llvm.loop !755

bb.ab:                                            ; preds = %.lr.ph287, %bb.ad
  %.0286 = phi i64 [ %.0120291, %.lr.ph287 ], [ %i.du, %bb.ad ] ; 4 uses
  %i.du = add nsw i64 %.0286, %.sroa.speculated217 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.du)
  %i.dv = sub nsw i64 %.sroa.speculated, %.0286   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %gep290 = getelementptr [4 x i8], ptr %invariant.gep289, i64 %.0286
  store ptr %gep290, ptr %22, align 8
  store i64 %4, ptr %i.bb, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %smin304, i64 noundef %i.dv, i64 noundef 0, i64 noundef 0)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.dw = getelementptr [4 x i8], ptr %7, i64 %.0286
  store ptr %i.dw, ptr %23, align 8
  store i64 %9, ptr %i.bc, align 8
  %i.dx = load float, ptr %10, align 4, !tbaa !17
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.dv, i64 noundef %smin304, i64 noundef %1, float noundef %i.dx, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.dy = icmp slt i64 %i.du, %0
  br i1 %i.dy, label %bb.ab, label %._crit_edge288, !llvm.loop !756

bb.ae:                                            ; preds = %bb.ab
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.w, %bb.x, %bb.z, %bb.y, %bb.p
  %.pn143.pn = phi { ptr, i32 } [ %i.bw, %bb.p ], [ %i.do, %bb.y ], [ %i.dz, %bb.ae ], [ %i.dm, %bb.w ], [ %i.dn, %bb.x ], [ %i.dp, %bb.z ], [ %i.ea, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.af, label %bb.ah, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.ad) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188: ; preds = %bb.ag, %bb.ah, %bb.m
  %.pn143.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.m ], [ %.pn143.pn, %bb.ah ], [ %.pn143.pn, %bb.ag ]
  br i1 %i.s, label %bb.ai, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit189

bb.ai:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188
  call void @free(ptr noundef %i.q) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit189

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit189: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188, %bb.ai
  resume { ptr, i32 } %.pn143.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
