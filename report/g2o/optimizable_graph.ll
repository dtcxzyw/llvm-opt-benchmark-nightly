Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/optimizable_graph?download=true
inline.NumInlined: 8546
inline.NumDeleted: 4116
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi1ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE:bb.a

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !300  ; 2 uses
  %.not146 = icmp eq ptr %i.w, null
  br i1 %.not146, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #46 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.noexc190 unwind label %bb.p

.noexc190:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 4 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %12, i8 0, i64 512, i1 false)
  store double 1.000000e+00, ptr %12, align 16, !tbaa !210
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 72
  store double 1.000000e+00, ptr %i.ah, align 8, !tbaa !210
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 144
  store double 1.000000e+00, ptr %i.ai, align 16, !tbaa !210
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 216
  store double 1.000000e+00, ptr %i.aj, align 8, !tbaa !210
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 288
  store double 1.000000e+00, ptr %i.ak, align 16, !tbaa !210
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 360
  store double 1.000000e+00, ptr %i.al, align 8, !tbaa !210
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 432
  store double 1.000000e+00, ptr %i.am, align 16, !tbaa !210
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 504
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #42
  %i.ao = icmp sgt i64 %.sroa.speculated271, 0
  br i1 %i.ao, label %.lr.ph303, label %._crit_edge304

.lr.ph303:                                        ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.aw = shl i64 %.sroa.speculated271, 3
  %i.ax = add i64 %i.aw, 8
  %i.ay = mul i64 %i.b, -8
  %i.az = shl i64 %4, 3                           ; 2 uses
  %i.ba = add i64 %i.az, 8                        ; 2 uses
  %i.bb = mul i64 %.sroa.speculated220, %i.ba
  %i.bc = icmp sgt i64 %i.b, 0
  %smin312 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b)
  %smin313 = tail call i64 @llvm.smin.i64(i64 %smin312, i64 %0) ; 2 uses
  br label %bb.q

._crit_edge304:                                   ; preds = %._crit_edge298, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br i1 %i.ag, label %bb.m, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.m:                                             ; preds = %._crit_edge304
  call void @free(ptr noundef %i.ae) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge304, %bb.m
  br i1 %i.s, label %bb.n, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit192

bb.n:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit192

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit192: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.n
  ret void

bb.o:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.p:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.q:                                             ; preds = %.lr.ph303, %._crit_edge298
  %indvar = phi i64 [ 0, %.lr.ph303 ], [ %indvar.next, %._crit_edge298 ] ; 2 uses
  %.0126301 = phi i64 [ %.sroa.speculated271, %.lr.ph303 ], [ %i.de, %._crit_edge298 ] ; 5 uses
  %smin314 = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0126301) ; 11 uses
  %i.bf = mul i64 %i.ay, %indvar
  %i.bg = add i64 %i.ax, %i.bf
  %i.bh = sub i64 %.0126301, %smin314             ; 4 uses
  %i.bi = mul i64 %i.az, %i.bh
  %i.bj = add i64 %i.bg, %i.bi
  %i.bk = shl i64 %smin314, 3
  %i.bl = sub i64 %i.bj, %i.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #42
  %i.bm = getelementptr [8 x i8], ptr %5, i64 %i.bh
  store ptr %i.bm, ptr %16, align 8
  store i64 %6, ptr %i.ap, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull %i.af, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %smin314, i64 noundef %1, i64 noundef 0, i64 noundef 0)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #42
  br i1 %i.bc, label %.lr.ph295.preheader, label %.preheader

.lr.ph295.preheader:                              ; preds = %bb.r
  %i.bn = getelementptr i8, ptr %3, i64 %i.bl
  br label %.lr.ph295

.preheader:                                       ; preds = %bb.ad, %bb.r
  %i.bo = icmp slt i64 %.0126301, %0
  br i1 %i.bo, label %.lr.ph297, label %._crit_edge298

.lr.ph297:                                        ; preds = %.preheader
  %i.bp = mul nsw i64 %i.bh, %4
  %invariant.gep299 = getelementptr [8 x i8], ptr %3, i64 %i.bp
  br label %bb.ae

bb.s:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #42
  br label %bb.aj

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %bb.ad
  %indvars.iv = phi i64 [ %smin314, %.lr.ph295.preheader ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %indvar305 = phi i64 [ 0, %.lr.ph295.preheader ], [ %indvar.next306, %bb.ad ] ; 3 uses
  %.0125293 = phi i64 [ 0, %.lr.ph295.preheader ], [ %i.dc, %bb.ad ] ; 5 uses
  %smin315 = call i64 @llvm.smin.i64(i64 %smin313, i64 %indvars.iv)
  %smin316 = call i64 @llvm.smin.i64(i64 %smin315, i64 8)
  %i.br = mul i64 %.sroa.speculated220, %indvar305
  %i.bs = sub i64 %smin314, %i.br
  %smin310 = call i64 @llvm.smin.i64(i64 %smin313, i64 %i.bs)
  %smin311 = call i64 @llvm.smin.i64(i64 %smin310, i64 8)
  %i.bt = shl i64 %smin311, 3
  %i.bu = add i64 %i.bt, -8
  %i.bv = sub nsw i64 %smin314, %.0125293         ; 2 uses
  %.sroa.speculated203 = call i64 @llvm.smin.i64(i64 %.sroa.speculated220, i64 %i.bv) ; 12 uses
  %i.bw = sub nsw i64 %i.bv, %.sroa.speculated203 ; 3 uses
  %i.bx = add nsw i64 %.0125293, %i.bh            ; 4 uses
  %i.by = icmp sgt i64 %.sroa.speculated203, 0
  br i1 %i.by, label %.lr.ph292, label %._crit_edge

.lr.ph292:                                        ; preds = %.lr.ph295
  %i.bz = mul i64 %i.bb, %indvar305
  %i.ca = getelementptr i8, ptr %i.bn, i64 %i.bz
  br label %bb.t

.loopexit:                                        ; preds = %.lr.ph, %bb.t
  %exitcond.not = icmp eq i64 %i.ci, %smin316
  br i1 %exitcond.not, label %._crit_edge, label %bb.t, !llvm.loop !1044

bb.t:                                             ; preds = %.lr.ph292, %.loopexit
  %.0124291 = phi i64 [ 0, %.lr.ph292 ], [ %i.ci, %.loopexit ] ; 7 uses
  %i.cb = add nsw i64 %.0124291, %i.bx            ; 2 uses
  %i.cc = mul nsw i64 %i.cb, %4
  %i.cd = getelementptr [8 x i8], ptr %3, i64 %i.cb
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !210
  %i.cg = getelementptr [8 x i8], ptr %12, i64 %.0124291
  %.idx.i = shl nuw nsw i64 %.0124291, 6
  %i.ch = getelementptr i8, ptr %i.cg, i64 %.idx.i
  store double %i.cf, ptr %i.ch, align 8, !tbaa !210
  %i.ci = add nuw nsw i64 %.0124291, 1            ; 3 uses
  %i.cj = icmp slt i64 %i.ci, %.sroa.speculated203
  br i1 %i.cj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.t
  %i.ck = shl i64 %.0124291, 3
  %i.cl = sub i64 %i.bu, %i.ck
  %i.cm = mul i64 %i.ba, %.0124291
  %scevgep307 = getelementptr i8, ptr %i.ca, i64 %i.cm
  %i.cn = mul nuw nsw i64 %.0124291, 72
  %i.co = getelementptr i8, ptr %12, i64 %i.cn
  %scevgep = getelementptr i8, ptr %i.co, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep307, i64 range(i64 0, 57) %i.cl, i1 false), !tbaa !210
  br label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph295
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #42
  store ptr %12, ptr %17, align 8, !tbaa !281
  store i64 8, ptr %i.aq, align 8, !tbaa !282
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated203, i64 noundef %.sroa.speculated203, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #42
  %i.cp = getelementptr [8 x i8], ptr %7, i64 %i.bx
  store ptr %i.cp, ptr %18, align 8
  store i64 %9, ptr %i.ar, align 8
  %i.cq = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated203, i64 noundef %.sroa.speculated203, i64 noundef %1, double noundef %i.cq, i64 noundef %.sroa.speculated203, i64 noundef %smin314, i64 noundef 0, i64 noundef %.0125293)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  %i.cr = icmp sgt i64 %i.bw, 0
  br i1 %i.cr, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.cs = add nsw i64 %.sroa.speculated203, %i.bx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #42
  %i.ct = mul nsw i64 %i.bx, %4
  %i.cu = getelementptr [8 x i8], ptr %3, i64 %i.cs
  %i.cv = getelementptr [8 x i8], ptr %i.cu, i64 %i.ct
  store ptr %i.cv, ptr %19, align 8
  store i64 %4, ptr %i.as, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated203, i64 noundef %i.bw, i64 noundef 0, i64 noundef 0)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #42
  %i.cw = getelementptr [8 x i8], ptr %7, i64 %i.cs
  store ptr %i.cw, ptr %20, align 8
  store i64 %9, ptr %i.at, align 8
  %i.cx = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %i.bw, i64 noundef %.sroa.speculated203, i64 noundef %1, double noundef %i.cx, i64 noundef %.sroa.speculated203, i64 noundef %smin314, i64 noundef 0, i64 noundef %.0125293)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #42
  br label %bb.ad

bb.z:                                             ; preds = %._crit_edge
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  br label %bb.aj

bb.aa:                                            ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
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
  br i1 %i.dd, label %.lr.ph295, label %.preheader, !llvm.loop !1045

._crit_edge298:                                   ; preds = %bb.ag, %.preheader
  %i.de = sub nsw i64 %.0126301, %i.b             ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.df, label %bb.q, label %._crit_edge304, !llvm.loop !1046

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
  %i.dj = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %i.dh, i64 noundef %smin314, i64 noundef %1, double noundef %i.dj, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  %i.dk = icmp slt i64 %i.dg, %0
  br i1 %i.dk, label %bb.ae, label %._crit_edge298, !llvm.loop !1047

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
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1056
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
  %lcmp.mod122 = trunc i64 %3 to i1
  br label %.preheader64.us

.preheader64.preheader:                           ; preds = %.preheader64.lr.ph
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  br label %.preheader63

.preheader64.us:                                  ; preds = %.preheader64.us.preheader, %._crit_edge.us
  %.05568.us = phi i64 [ %i.ax, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 4 uses
  %.05667.us = phi i64 [ %.lcssa119, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 2 uses
  br i1 %i.k, label %.epil.preheader, label %.preheader64.us.new

.preheader64.us.new:                              ; preds = %.preheader64.us, %.preheader64.us.new
  %.05466.us = phi i64 [ %i.ak, %.preheader64.us.new ], [ 0, %.preheader64.us ] ; 3 uses
  %.15765.us = phi i64 [ %i.aj, %.preheader64.us.new ], [ %.05667.us, %.preheader64.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader64.us.new ], [ 0, %.preheader64.us ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !281
  %i.m = load i64, ptr %i.j, align 8, !tbaa !282
  %i.n = mul nsw i64 %i.m, %.05466.us             ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %.05568.us ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load <2 x double>, ptr %i.p, align 1, !tbaa !88
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.n
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE:bb.a
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.noexc179 unwind label %bb.o

.noexc179:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !300  ; 2 uses
  %.not139 = icmp eq ptr %i.w, null
  br i1 %.not139, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #46 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.noexc182 unwind label %bb.p

.noexc182:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 4 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %12, i8 0, i64 512, i1 false)
  store double 1.000000e+00, ptr %12, align 16, !tbaa !210
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 72
  store double 1.000000e+00, ptr %i.ah, align 8, !tbaa !210
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 144
  store double 1.000000e+00, ptr %i.ai, align 16, !tbaa !210
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 216
  store double 1.000000e+00, ptr %i.aj, align 8, !tbaa !210
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 288
  store double 1.000000e+00, ptr %i.ak, align 16, !tbaa !210
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 360
  store double 1.000000e+00, ptr %i.al, align 8, !tbaa !210
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 432
  store double 1.000000e+00, ptr %i.am, align 16, !tbaa !210
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 504
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #42
  %i.ao = icmp sgt i64 %.sroa.speculated261, 0
  br i1 %i.ao, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.aw = shl i64 %.sroa.speculated261, 3
  %i.ax = add i64 %i.aw, 8
  %i.ay = mul i64 %i.b, -8
  %i.az = shl i64 %4, 3                           ; 2 uses
  %i.ba = add i64 %i.az, 8                        ; 4 uses
  %i.bb = mul i64 %.sroa.speculated211, %i.ba
  %i.bc = icmp sgt i64 %i.b, 0
  %smin302 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b)
  %smin303 = tail call i64 @llvm.smin.i64(i64 %smin302, i64 %0) ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.d)
  %smin319 = tail call i64 @llvm.smin.i64(i64 %smin, i64 %0)
  br label %bb.q

._crit_edge294:                                   ; preds = %._crit_edge288, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br i1 %i.ag, label %bb.m, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.m:                                             ; preds = %._crit_edge294
  call void @free(ptr noundef %i.ae) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge294, %bb.m
  br i1 %i.s, label %bb.n, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit184

bb.n:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit184

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit184: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.n
  ret void

bb.o:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188

bb.p:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188

bb.q:                                             ; preds = %.lr.ph293, %._crit_edge288
  %indvar = phi i64 [ 0, %.lr.ph293 ], [ %indvar.next, %._crit_edge288 ] ; 2 uses
  %.0120291 = phi i64 [ %.sroa.speculated261, %.lr.ph293 ], [ %i.dm, %._crit_edge288 ] ; 5 uses
  %smin304 = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0120291) ; 11 uses
  %i.bf = mul i64 %i.ay, %indvar
  %i.bg = add i64 %i.ax, %i.bf
  %i.bh = sub i64 %.0120291, %smin304             ; 4 uses
  %i.bi = mul i64 %i.az, %i.bh
  %i.bj = add i64 %i.bg, %i.bi
  %i.bk = shl i64 %smin304, 3
  %i.bl = sub i64 %i.bj, %i.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #42
  %i.bm = getelementptr [8 x i8], ptr %5, i64 %i.bh
  store ptr %i.bm, ptr %16, align 8
  store i64 %6, ptr %i.ap, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull %i.af, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %smin304, i64 noundef %1, i64 noundef 0, i64 noundef 0)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #42
  br i1 %i.bc, label %.lr.ph285.preheader, label %.preheader

.lr.ph285.preheader:                              ; preds = %bb.r
  %i.bn = getelementptr i8, ptr %3, i64 %i.bl
  br label %.lr.ph285

.preheader:                                       ; preds = %bb.ad, %bb.r
  %i.bo = icmp slt i64 %.0120291, %0
  br i1 %i.bo, label %.lr.ph287, label %._crit_edge288

.lr.ph287:                                        ; preds = %.preheader
  %i.bp = mul nsw i64 %i.bh, %4
  %invariant.gep289 = getelementptr [8 x i8], ptr %3, i64 %i.bp
  br label %bb.ae

bb.s:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #42
  br label %bb.aj

.lr.ph285:                                        ; preds = %.lr.ph285.preheader, %bb.ad
  %indvars.iv = phi i64 [ %smin304, %.lr.ph285.preheader ], [ %indvars.iv.next, %bb.ad ] ; 3 uses
  %indvar295 = phi i64 [ 0, %.lr.ph285.preheader ], [ %indvar.next296, %bb.ad ] ; 3 uses
  %.0119283 = phi i64 [ 0, %.lr.ph285.preheader ], [ %i.dk, %bb.ad ] ; 5 uses
  %smin305 = call i64 @llvm.smin.i64(i64 %smin303, i64 %indvars.iv)
  %smin306 = call i64 @llvm.smin.i64(i64 %smin305, i64 8) ; 3 uses
  %i.br = mul i64 %.sroa.speculated211, %indvar295
  %i.bs = sub i64 %smin304, %i.br
  %smin300 = call i64 @llvm.smin.i64(i64 %smin303, i64 %i.bs)
  %smin301 = call i64 @llvm.smin.i64(i64 %smin300, i64 8)
  %i.bt = shl i64 %smin301, 3
  %i.bu = add i64 %i.bt, -8                       ; 3 uses
  %i.bv = sub nsw i64 %smin304, %.0119283         ; 2 uses
  %.sroa.speculated194 = call i64 @llvm.smin.i64(i64 %.sroa.speculated211, i64 %i.bv) ; 14 uses
  %i.bw = sub nsw i64 %i.bv, %.sroa.speculated194 ; 3 uses
  %i.bx = add nsw i64 %.0119283, %i.bh            ; 3 uses
  %i.by = icmp sgt i64 %.sroa.speculated194, 0
  br i1 %i.by, label %.lr.ph282, label %._crit_edge

.lr.ph282:                                        ; preds = %.lr.ph285
  %smin320 = call i64 @llvm.smin.i64(i64 %smin319, i64 %indvars.iv)
  %i.bz = mul i64 %i.bb, %indvar295
  %i.ca = getelementptr i8, ptr %i.bn, i64 %i.bz  ; 3 uses
  %xtraiter = and i64 %smin306, 1
  %i.cb = icmp eq i64 %smin320, 1
  br i1 %i.cb, label %.epil.preheader, label %.lr.ph282.new

.lr.ph282.new:                                    ; preds = %.lr.ph282
  %unroll_iter = and i64 %smin306, -2
  br label %bb.t

.loopexit:                                        ; preds = %.lr.ph, %bb.t
  %i.cc = add nuw nsw i64 %.0118281, 2            ; 3 uses
  %i.cd = icmp slt i64 %i.cc, %.sroa.speculated194
  br i1 %i.cd, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit
  %i.ce = shl i64 %i.cj, 3
  %i.cf = sub i64 %i.bu, %i.ce
  %i.cg = mul i64 %i.ba, %i.cj
  %scevgep297.1 = getelementptr i8, ptr %i.ca, i64 %i.cg
  %i.ch = mul nuw nsw i64 %i.cj, 72
  %i.ci = getelementptr i8, ptr %12, i64 %i.ch
  %scevgep.1 = getelementptr i8, ptr %i.ci, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep.1, ptr align 8 %scevgep297.1, i64 range(i64 0, 57) %i.cf, i1 false), !tbaa !210
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph.1, %.loopexit
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.t, !llvm.loop !1057

bb.t:                                             ; preds = %.loopexit.1, %.lr.ph282.new
  %.0118281 = phi i64 [ 0, %.lr.ph282.new ], [ %i.cc, %.loopexit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph282.new ], [ %niter.next.1, %.loopexit.1 ]
  %i.cj = or disjoint i64 %.0118281, 1            ; 4 uses
  %i.ck = icmp slt i64 %i.cj, %.sroa.speculated194
  br i1 %i.ck, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.t
  %i.cl = shl i64 %.0118281, 3
  %i.cm = sub i64 %i.bu, %i.cl
  %i.cn = mul i64 %i.ba, %.0118281
  %scevgep297 = getelementptr i8, ptr %i.ca, i64 %i.cn
  %i.co = mul nuw nsw i64 %.0118281, 72
  %i.cp = getelementptr i8, ptr %12, i64 %i.co
  %scevgep = getelementptr i8, ptr %i.cp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep297, i64 range(i64 0, 57) %i.cm, i1 false), !tbaa !210
  br label %.loopexit

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.loopexit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph282
  %.0118281.epil.init = phi i64 [ 0, %.lr.ph282 ], [ %i.cc, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod322 = trunc i64 %smin306 to i1
  call void @llvm.assume(i1 %lcmp.mod322)
  %i.cq = add nuw nsw i64 %.0118281.epil.init, 1
  %i.cr = icmp slt i64 %i.cq, %.sroa.speculated194
  br i1 %i.cr, label %.lr.ph.epil, label %._crit_edge

.lr.ph.epil:                                      ; preds = %.epil.preheader
  %i.cs = shl i64 %.0118281.epil.init, 3
  %i.ct = sub i64 %i.bu, %i.cs
  %i.cu = mul i64 %i.ba, %.0118281.epil.init
  %scevgep297.epil = getelementptr i8, ptr %i.ca, i64 %i.cu
  %i.cv = mul nuw nsw i64 %.0118281.epil.init, 72
  %i.cw = getelementptr i8, ptr %12, i64 %i.cv
  %scevgep.epil = getelementptr i8, ptr %i.cw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep.epil, ptr align 8 %scevgep297.epil, i64 range(i64 0, 57) %i.ct, i1 false), !tbaa !210
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.epil.preheader, %.lr.ph285
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #42
  store ptr %12, ptr %17, align 8, !tbaa !281
  store i64 8, ptr %i.aq, align 8, !tbaa !282
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated194, i64 noundef %.sroa.speculated194, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #42
  %i.cx = getelementptr [8 x i8], ptr %7, i64 %i.bx
  store ptr %i.cx, ptr %18, align 8
  store i64 %9, ptr %i.ar, align 8
  %i.cy = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated194, i64 noundef %.sroa.speculated194, i64 noundef %1, double noundef %i.cy, i64 noundef %.sroa.speculated194, i64 noundef %smin304, i64 noundef 0, i64 noundef %.0119283)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  %i.cz = icmp sgt i64 %i.bw, 0
  br i1 %i.cz, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.da = add nsw i64 %.sroa.speculated194, %i.bx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #42
  %i.db = mul nsw i64 %i.bx, %4
  %i.dc = getelementptr [8 x i8], ptr %3, i64 %i.da
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %i.db
  store ptr %i.dd, ptr %19, align 8
  store i64 %4, ptr %i.as, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated194, i64 noundef %i.bw, i64 noundef 0, i64 noundef 0)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #42
  %i.de = getelementptr [8 x i8], ptr %7, i64 %i.da
  store ptr %i.de, ptr %20, align 8
  store i64 %9, ptr %i.at, align 8
  %i.df = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %i.bw, i64 noundef %.sroa.speculated194, i64 noundef %1, double noundef %i.df, i64 noundef %.sroa.speculated194, i64 noundef %smin304, i64 noundef 0, i64 noundef %.0119283)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #42
  br label %bb.ad

bb.z:                                             ; preds = %._crit_edge
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  br label %bb.aj

bb.aa:                                            ; preds = %bb.u
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  br label %bb.aj

bb.ab:                                            ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  br label %bb.aj

bb.ac:                                            ; preds = %bb.x
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #42
  br label %bb.aj

bb.ad:                                            ; preds = %bb.y, %bb.v
  %i.dk = add nsw i64 %.0119283, %.sroa.speculated211 ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %smin304
  %indvar.next296 = add i64 %indvar295, 1
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated211
  br i1 %i.dl, label %.lr.ph285, label %.preheader, !llvm.loop !1058

._crit_edge288:                                   ; preds = %bb.ag, %.preheader
  %i.dm = sub nsw i64 %.0120291, %i.b             ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dn, label %bb.q, label %._crit_edge294, !llvm.loop !1059

bb.ae:                                            ; preds = %.lr.ph287, %bb.ag
  %.0286 = phi i64 [ %.0120291, %.lr.ph287 ], [ %i.do, %bb.ag ] ; 4 uses
  %i.do = add nsw i64 %.0286, %.sroa.speculated217 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.do)
  %i.dp = sub nsw i64 %.sroa.speculated, %.0286   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #42
  %gep290 = getelementptr [8 x i8], ptr %invariant.gep289, i64 %.0286
  store ptr %gep290, ptr %22, align 8
  store i64 %4, ptr %i.au, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %smin304, i64 noundef %i.dp, i64 noundef 0, i64 noundef 0)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #42
  %i.dq = getelementptr [8 x i8], ptr %7, i64 %.0286
  store ptr %i.dq, ptr %23, align 8
  store i64 %9, ptr %i.av, align 8
  %i.dr = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %i.dp, i64 noundef %smin304, i64 noundef %1, double noundef %i.dr, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  %i.ds = icmp slt i64 %i.do, %0
  br i1 %i.ds, label %bb.ae, label %._crit_edge288, !llvm.loop !1060

bb.ah:                                            ; preds = %bb.ae
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #42
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.z, %bb.aa, %bb.ac, %bb.ab, %bb.s
  %.pn143.pn = phi { ptr, i32 } [ %i.bq, %bb.s ], [ %i.di, %bb.ab ], [ %i.dt, %bb.ah ], [ %i.dg, %bb.z ], [ %i.dh, %bb.aa ], [ %i.dj, %bb.ac ], [ %i.du, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br i1 %i.ag, label %bb.ak, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.ae) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188: ; preds = %bb.aj, %bb.ak, %bb.p, %bb.o
  %.pn143.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.o ], [ %i.be, %bb.p ], [ %.pn143.pn, %bb.ak ], [ %.pn143.pn, %bb.aj ]
  br i1 %i.s, label %bb.al, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit189

bb.al:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188
  call void @free(ptr noundef %i.q) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit189

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit189: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188, %bb.al
  resume { ptr, i32 } %.pn143.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #31

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
end_hunk_1
