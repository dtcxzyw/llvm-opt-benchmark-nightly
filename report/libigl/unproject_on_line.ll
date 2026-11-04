Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unproject_on_line?download=true
inline.NumInlined: 9139
inline.NumDeleted: 4977
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi5ELb0ELi1ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE:bb.a
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit163, %bb.d
  %i.r = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit163 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.s = phi ptr [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit163 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 3 uses
  %i.t = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.u = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.u, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !171  ; 2 uses
  %.not152 = icmp eq ptr %i.w, null
  br i1 %.not152, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.g, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.g, 16385
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #21 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.invoke, label %bb.j

.invoke:                                          ; preds = %bb.i, %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !158
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.i
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.h ], [ %i.ab, %bb.i ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.h ], [ %i.ab, %bb.i ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.g, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %12, i8 0, i64 128, i1 false)
  store double 1.000000e+00, ptr %12, align 16, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 40
  store double 1.000000e+00, ptr %i.ah, align 8, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 80
  store double 1.000000e+00, ptr %i.ai, align 16, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 120
  store double 1.000000e+00, ptr %i.aj, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.ak = icmp sgt i64 %2, 0
  br i1 %i.ak, label %.lr.ph311, label %._crit_edge312

.lr.ph311:                                        ; preds = %bb.j
  %i.al = sub nsw i64 %.sroa.speculated277, %i.b
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ap = icmp sgt i64 %0, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.at = shl i64 %6, 3
  %i.au = add i64 %i.at, 8                        ; 3 uses
  %i.av = shl i64 %6, 5
  %i.aw = add i64 %i.av, 32
  %scevgep = getelementptr inbounds nuw i8, ptr %12, i64 8
  %scevgep.1 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ax = shl i64 %i.au, 1
  %scevgep.2 = getelementptr inbounds nuw i8, ptr %12, i64 88
  br label %bb.n

._crit_edge312:                                   ; preds = %._crit_edge307, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br i1 %i.ag, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.k:                                             ; preds = %._crit_edge312
  call void @free(ptr noundef %i.ae) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge312, %bb.k
  br i1 %i.t, label %bb.l, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit190

bb.l:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.r) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit190

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit190: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.l
  ret void

bb.m:                                             ; preds = %.invoke
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit196

bb.n:                                             ; preds = %.lr.ph311, %._crit_edge307
  %.0134308 = phi i64 [ 0, %.lr.ph311 ], [ %i.cs, %._crit_edge307 ] ; 11 uses
  %i.az = sub nsw i64 %2, %.0134308
  %.sroa.speculated225 = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.az) ; 2 uses
  %i.ba = icmp sgt i64 %1, %.0134308              ; 3 uses
  %i.bb = add nsw i64 %.sroa.speculated225, %.0134308
  %i.bc = icmp sgt i64 %i.bb, %.sroa.speculated277
  %or.cond = select i1 %i.ba, i1 %i.bc, i1 false  ; 2 uses
  %i.bd = sub nsw i64 %.sroa.speculated277, %.0134308
  %.1 = select i1 %or.cond, i64 %i.al, i64 %.0134308
  %.0133 = select i1 %or.cond, i64 %i.bd, i64 %.sroa.speculated225 ; 17 uses
  %.sroa.speculated216 = select i1 %i.ba, i64 %.0134308, i64 %.sroa.speculated277 ; 2 uses
  %i.be = select i1 %i.ba, i64 %.0133, i64 0      ; 3 uses
  %i.bf = mul nsw i64 %i.be, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bf ; 2 uses
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = and i64 %i.bh, 7
  %.not.i = icmp eq i64 %i.bi, 0
  %i.bj = lshr exact i64 %i.bh, 3
  %i.bk = and i64 %i.bj, 1
  %.0.i = select i1 %.not.i, i64 %i.bk, i64 2
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.bm = getelementptr [8 x i8], ptr %5, i64 %.0134308 ; 2 uses
  store ptr %i.bm, ptr %17, align 8
  store i64 %6, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.0133, i64 noundef %.sroa.speculated216, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.bn = icmp sgt i64 %i.be, 0
  %i.bo = icmp sgt i64 %.0133, 0
  %or.cond313 = and i1 %i.bn, %i.bo               ; 2 uses
  br i1 %or.cond313, label %.lr.ph301, label %.loopexit294

.lr.ph301:                                        ; preds = %bb.o
  %i.bp = mul i64 %i.au, %.0134308
  %i.bq = getelementptr i8, ptr %5, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ae

bb.q:                                             ; preds = %.lr.ph301, %bb.u
  %indvars.iv = phi i64 [ %.0133, %.lr.ph301 ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %indvar = phi i64 [ 0, %.lr.ph301 ], [ %indvar.next, %bb.u ] ; 3 uses
  %.0132300 = phi i64 [ 0, %.lr.ph301 ], [ %i.co, %bb.u ] ; 6 uses
  %i.bt = mul i64 %i.aw, %indvar
  %i.bu = shl i64 %indvar, 2
  %i.bv = sub i64 %.0133, %i.bu
  %smin = call i64 @llvm.smin.i64(i64 %i.bv, i64 4)
  %i.bw = shl i64 %smin, 3                        ; 3 uses
  %i.bx = add i64 %i.bw, -8
  %i.by = sub nuw nsw i64 %.0133, %.0132300       ; 6 uses
  %.sroa.speculated205 = call i64 @llvm.smin.i64(i64 %i.by, i64 4) ; 5 uses
  %i.bz = add nsw i64 %.0132300, %.0134308
  %i.ca = add nuw nsw i64 %.sroa.speculated205, %.0132300 ; 2 uses
  %i.cb = mul nuw nsw i64 %.0132300, %.0133
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cb ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.cd = mul nsw i64 %i.bz, %6
  %i.ce = getelementptr [8 x i8], ptr %i.bm, i64 %i.ca
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = sub nsw i64 %i.by, %.sroa.speculated205
  store ptr %i.cf, ptr %18, align 8
  store i64 %6, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 noundef %i.cg, i64 noundef %.sroa.speculated205, i64 noundef %.0133, i64 noundef %i.ca)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.ch = icmp sgt i64 %i.by, 0
  br i1 %i.ch, label %.lr.ph299, label %._crit_edge

.lr.ph299:                                        ; preds = %bb.r
  %i.ci = getelementptr i8, ptr %i.br, i64 %i.bt  ; 3 uses
  %.not331 = icmp eq i64 %i.by, 1
  br i1 %.not331, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph299
  %exitcond.not = icmp slt i64 %indvars.iv, 2
  br i1 %exitcond.not, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.cj = icmp sgt i64 %i.by, 2
  br i1 %i.cj, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %bb.s
  %i.ck = add i64 %i.bw, -16
  %scevgep317.1 = getelementptr i8, ptr %i.ci, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.1, ptr align 8 %scevgep317.1, i64 range(i64 0, 25) %i.ck, i1 false), !tbaa !49
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph.1, %bb.s
  %exitcond.not.1 = icmp ne i64 %indvars.iv, 2
  %i.cl = icmp sgt i64 %i.by, 3
  %or.cond332 = and i1 %exitcond.not.1, %i.cl
  br i1 %or.cond332, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.loopexit.1
  %i.cm = add i64 %i.bw, -24
  %scevgep317.2 = getelementptr i8, ptr %i.ci, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.2, ptr align 8 %scevgep317.2, i64 range(i64 0, 25) %i.cm, i1 false), !tbaa !49
  br label %._crit_edge

bb.t:                                             ; preds = %bb.q
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.ae

.lr.ph:                                           ; preds = %.lr.ph299
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %i.ci, i64 range(i64 0, 25) %i.bx, i1 false), !tbaa !49
  br label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph.2, %.loopexit, %.loopexit.1, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  store ptr %12, ptr %19, align 8, !tbaa !182
  store i64 4, ptr %i.ao, align 8, !tbaa !183
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated205, i64 noundef %.sroa.speculated205, i64 noundef %.0133, i64 noundef %.0132300)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.co = add nuw nsw i64 %.0132300, 4            ; 2 uses
  %i.cp = icmp slt i64 %i.co, %.0133
  %indvar.next = add i64 %indvar, 1
  %indvars.iv.next = add i64 %indvars.iv, -4
  br i1 %i.cp, label %bb.q, label %.loopexit294, !llvm.loop !733

bb.v:                                             ; preds = %._crit_edge
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.ae

.loopexit294:                                     ; preds = %bb.u, %bb.o
  br i1 %i.ap, label %.lr.ph306, label %._crit_edge307

.lr.ph306:                                        ; preds = %.loopexit294
  %i.cr = getelementptr [8 x i8], ptr %3, i64 %.0134308
  br label %bb.w

._crit_edge307:                                   ; preds = %bb.ac, %.loopexit294
  %i.cs = add nsw i64 %.1, %i.b                   ; 2 uses
  %i.ct = icmp slt i64 %i.cs, %2
  br i1 %i.ct, label %bb.n, label %._crit_edge312, !llvm.loop !734

bb.w:                                             ; preds = %.lr.ph306, %bb.ac
  %.0129304 = phi i64 [ 0, %.lr.ph306 ], [ %i.dl, %bb.ac ] ; 5 uses
  %i.cu = sub nsw i64 %0, %.0129304
  %.sroa.speculated201 = call i64 @llvm.smin.i64(i64 %i.cu, i64 %.sroa.speculated239) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.cv = mul nsw i64 %.0129304, %4
  %i.cw = getelementptr [8 x i8], ptr %i.cr, i64 %i.cv
  store ptr %i.cw, ptr %20, align 8
  store i64 %4, ptr %i.aq, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 noundef %.0133, i64 noundef %.sroa.speculated201, i64 noundef 0, i64 noundef 0)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br i1 %or.cond313, label %.lr.ph303, label %.loopexit292

.lr.ph303:                                        ; preds = %bb.x
  %i.cx = getelementptr [8 x i8], ptr %7, i64 %.0129304
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.ae

bb.z:                                             ; preds = %.lr.ph303, %bb.aa
  %.0302 = phi i64 [ 0, %.lr.ph303 ], [ %i.dg, %bb.aa ] ; 6 uses
  %i.cz = sub nuw nsw i64 %.0133, %.0302          ; 2 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.cz, i64 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.da = add nsw i64 %.0302, %.0134308
  %i.db = mul nsw i64 %i.da, %9
  %i.dc = getelementptr [8 x i8], ptr %i.cx, i64 %i.db
  store ptr %i.dc, ptr %21, align 8
  store i64 %9, ptr %i.ar, align 8
  %i.dd = mul nuw nsw i64 %.0302, %.0133
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dd
  %i.df = load double, ptr %10, align 8, !tbaa !49
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull %i.s, ptr noundef nonnull %i.de, i64 noundef %.sroa.speculated201, i64 noundef %i.cz, i64 noundef %.sroa.speculated, double noundef %i.df, i64 noundef %.0133, i64 noundef %.0133, i64 noundef %.0302, i64 noundef %.0302)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.dg = add nuw nsw i64 %.0302, 4               ; 2 uses
  %i.dh = icmp slt i64 %i.dg, %.0133
  br i1 %i.dh, label %bb.z, label %.loopexit292, !llvm.loop !735

bb.ab:                                            ; preds = %bb.z
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.ae

.loopexit292:                                     ; preds = %bb.aa, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.dj = getelementptr [8 x i8], ptr %7, i64 %.0129304
  store ptr %i.dj, ptr %22, align 8
  store i64 %9, ptr %i.as, align 8
  %i.dk = load double, ptr %10, align 8, !tbaa !49
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull %i.s, ptr noundef nonnull %i.bl, i64 noundef %.sroa.speculated201, i64 noundef %.0133, i64 noundef %.sroa.speculated216, double noundef %i.dk, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.loopexit292
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %i.dl = add nsw i64 %.0129304, %.sroa.speculated239 ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %0
  br i1 %i.dm, label %bb.w, label %._crit_edge307, !llvm.loop !736

bb.ad:                                            ; preds = %.loopexit292
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %bb.ab, %bb.ad, %bb.t, %bb.v, %bb.p
  %.pn155.pn = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %i.cn, %bb.t ], [ %i.cy, %bb.y ], [ %i.cq, %bb.v ], [ %i.di, %bb.ab ], [ %i.dn, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br i1 %i.ag, label %bb.af, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit196

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %i.ae) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit196

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit196: ; preds = %bb.ae, %bb.af, %bb.m
  %.pn155.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %.pn155.pn, %bb.af ], [ %.pn155.pn, %bb.ae ]
  br i1 %i.t, label %bb.ag, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.ag:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit196
  call void @free(ptr noundef %i.r) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit196, %bb.ag
  resume { ptr, i32 } %.pn155.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !184
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !182    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !183  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.j = add nsw i64 %smax, -4                    ; 2 uses
  %i.k = lshr exact i64 %i.j, 2
  %i.l = mul i64 %i.g, %i.k
  %i.m = shl i64 %i.l, 5
  %i.n = shl i64 %3, 3                            ; 4 uses
  %i.o = getelementptr i8, ptr %i.e, i64 %i.m
  %scevgep106 = getelementptr i8, ptr %i.o, i64 %i.n
  %i.p = shl i64 %i.j, 3                          ; 3 uses
  %i.q = or disjoint i64 %i.p, 8
  %i.r = mul i64 %i.g, %i.q
  %i.s = getelementptr i8, ptr %i.e, i64 %i.r
  %scevgep107 = getelementptr i8, ptr %i.s, i64 %i.n
  %i.t = shl i64 %i.g, 3
  %scevgep108 = getelementptr i8, ptr %i.e, i64 %i.t
  %i.u = or disjoint i64 %i.p, 16
  %i.v = mul i64 %i.g, %i.u
  %i.w = getelementptr i8, ptr %i.e, i64 %i.v
  %scevgep109 = getelementptr i8, ptr %i.w, i64 %i.n
  %i.x = shl i64 %i.g, 4
  %scevgep110 = getelementptr i8, ptr %i.e, i64 %i.x
  %i.y = or disjoint i64 %i.p, 24
  %i.z = mul i64 %i.g, %i.y
  %i.aa = getelementptr i8, ptr %i.e, i64 %i.z
  %scevgep111 = getelementptr i8, ptr %i.aa, i64 %i.n
  %i.ab = mul i64 %i.g, 24
  %scevgep112 = getelementptr i8, ptr %i.e, i64 %i.ab
  %i.ac = shl i64 %3, 5
  %i.ad = insertelement <4 x ptr> poison, ptr %scevgep111, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep109, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %scevgep107, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %scevgep106, i64 3
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep112, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep110, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep108, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.e, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %i.al = getelementptr i8, ptr %1, i64 %i.ac
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi1ELb1ELi0ELb0ELi1ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE:bb.a
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = add nuw nsw i64 %i.w, 15
  %i.z = alloca i8, i64 %i.y, align 16            ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.w) #21 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.invoke, label %bb.j

.invoke:                                          ; preds = %bb.i, %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !158
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.i
  %i.ad = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 4 uses
  %i.af = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %12, i8 0, i64 512, i1 false)
  store double 1.000000e+00, ptr %12, align 16, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 72
  store double 1.000000e+00, ptr %i.ag, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 144
  store double 1.000000e+00, ptr %i.ah, align 16, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 216
  store double 1.000000e+00, ptr %i.ai, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 288
  store double 1.000000e+00, ptr %i.aj, align 16, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 360
  store double 1.000000e+00, ptr %i.ak, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 432
  store double 1.000000e+00, ptr %i.al, align 16, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 504
  store double 1.000000e+00, ptr %i.am, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.an = icmp sgt i64 %.sroa.speculated271, 0
  br i1 %i.an, label %.lr.ph303, label %._crit_edge304

.lr.ph303:                                        ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.av = shl i64 %.sroa.speculated271, 3
  %i.aw = add i64 %i.av, 8
  %i.ax = mul i64 %i.b, -8
  %i.ay = shl i64 %4, 3                           ; 2 uses
  %i.az = add i64 %i.ay, 8                        ; 7 uses
  %i.ba = mul i64 %.sroa.speculated220, %i.az
  %i.bb = icmp sgt i64 %i.b, 0
  %smin312 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b)
  %smin313 = tail call i64 @llvm.smin.i64(i64 %smin312, i64 %0) ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 72
  %scevgep.1 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.be = shl i64 %i.az, 1
  %scevgep.2 = getelementptr inbounds nuw i8, ptr %12, i64 152
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 216
  %i.bg = mul i64 %i.az, 3
  %scevgep.3 = getelementptr inbounds nuw i8, ptr %12, i64 224
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 288
  %i.bi = shl i64 %i.az, 2
  %scevgep.4 = getelementptr inbounds nuw i8, ptr %12, i64 296
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 360
  %i.bk = mul i64 %i.az, 5
  %scevgep.5 = getelementptr inbounds nuw i8, ptr %12, i64 368
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 432
  %i.bm = mul i64 %i.az, 6
  %scevgep.6 = getelementptr inbounds nuw i8, ptr %12, i64 440
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 504
  br label %bb.n

._crit_edge304:                                   ; preds = %._crit_edge298, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br i1 %i.af, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.k:                                             ; preds = %._crit_edge304
  call void @free(ptr noundef %i.ad) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge304, %bb.k
  br i1 %i.s, label %bb.l, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit192

bb.l:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit192

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit192: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.l
  ret void

bb.m:                                             ; preds = %.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.n:                                             ; preds = %.lr.ph303, %._crit_edge298
  %indvar = phi i64 [ 0, %.lr.ph303 ], [ %indvar.next, %._crit_edge298 ] ; 2 uses
  %.0126301 = phi i64 [ %.sroa.speculated271, %.lr.ph303 ], [ %i.fa, %._crit_edge298 ] ; 5 uses
  %smin314 = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0126301) ; 11 uses
  %i.bp = mul i64 %i.ax, %indvar
  %i.bq = add i64 %i.aw, %i.bp
  %i.br = sub i64 %.0126301, %smin314             ; 4 uses
  %i.bs = mul i64 %i.ay, %i.br
  %i.bt = add i64 %i.bq, %i.bs
  %i.bu = shl i64 %smin314, 3
  %i.bv = sub i64 %i.bt, %i.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.bw = mul nsw i64 %i.br, %6
  %i.bx = getelementptr [8 x i8], ptr %5, i64 %i.bw
  store ptr %i.bx, ptr %16, align 8
  store i64 %6, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %smin314, i64 noundef %1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br i1 %i.bb, label %.lr.ph295.preheader, label %.preheader

.lr.ph295.preheader:                              ; preds = %bb.o
  %i.by = getelementptr i8, ptr %3, i64 %i.bv
  br label %.lr.ph295

.preheader:                                       ; preds = %bb.af, %bb.o
  %i.bz = icmp slt i64 %.0126301, %0
  br i1 %i.bz, label %.lr.ph297, label %._crit_edge298

.lr.ph297:                                        ; preds = %.preheader
  %i.ca = mul nsw i64 %i.br, %4
  %invariant.gep299 = getelementptr [8 x i8], ptr %3, i64 %i.ca
  br label %bb.ag

bb.p:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.al

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %bb.af
  %indvars.iv = phi i64 [ %smin314, %.lr.ph295.preheader ], [ %indvars.iv.next, %bb.af ] ; 2 uses
  %indvar305 = phi i64 [ 0, %.lr.ph295.preheader ], [ %indvar.next306, %bb.af ] ; 3 uses
  %.0125293 = phi i64 [ 0, %.lr.ph295.preheader ], [ %i.ey, %bb.af ] ; 5 uses
  %smin315 = call i64 @llvm.smin.i64(i64 %smin313, i64 %indvars.iv) ; 7 uses
  %i.cc = mul i64 %.sroa.speculated220, %indvar305
  %i.cd = sub i64 %smin314, %i.cc
  %smin310 = call i64 @llvm.smin.i64(i64 %smin313, i64 %i.cd)
  %smin311 = call i64 @llvm.smin.i64(i64 %smin310, i64 8)
  %i.ce = shl i64 %smin311, 3                     ; 7 uses
  %i.cf = add i64 %i.ce, -8
  %i.cg = sub nsw i64 %smin314, %.0125293         ; 2 uses
  %.sroa.speculated203 = call i64 @llvm.smin.i64(i64 %.sroa.speculated220, i64 %i.cg) ; 18 uses
  %i.ch = sub nsw i64 %i.cg, %.sroa.speculated203 ; 3 uses
  %i.ci = add nsw i64 %.0125293, %i.br            ; 12 uses
  %i.cj = icmp sgt i64 %.sroa.speculated203, 0
  br i1 %i.cj, label %.lr.ph292, label %._crit_edge

.lr.ph292:                                        ; preds = %.lr.ph295
  %i.ck = mul i64 %i.ba, %indvar305
  %i.cl = getelementptr i8, ptr %i.by, i64 %i.ck  ; 7 uses
  %i.cm = mul nsw i64 %i.ci, %4
  %i.cn = getelementptr [8 x i8], ptr %3, i64 %i.ci
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load double, ptr %i.co, align 8, !tbaa !49
  store double %i.cp, ptr %12, align 16, !tbaa !49
  %.not329 = icmp eq i64 %.sroa.speculated203, 1
  br i1 %.not329, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph292
  %exitcond.not = icmp eq i64 %smin315, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.cq = add nsw i64 %i.ci, 1                    ; 2 uses
  %i.cr = mul nsw i64 %i.cq, %4
  %i.cs = getelementptr [8 x i8], ptr %3, i64 %i.cq
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !49
  store double %i.cu, ptr %i.bc, align 8, !tbaa !49
  %i.cv = icmp sgt i64 %.sroa.speculated203, 2
  br i1 %i.cv, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %bb.q
  %i.cw = add i64 %i.ce, -16
  %scevgep307.1 = getelementptr i8, ptr %i.cl, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.1, ptr align 8 %scevgep307.1, i64 range(i64 0, 57) %i.cw, i1 false), !tbaa !49
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph.1, %bb.q
  %exitcond.not.1 = icmp eq i64 %smin315, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %.loopexit.1
  %i.cx = add nsw i64 %i.ci, 2                    ; 2 uses
  %i.cy = mul nsw i64 %i.cx, %4
  %i.cz = getelementptr [8 x i8], ptr %3, i64 %i.cx
  %i.da = getelementptr [8 x i8], ptr %i.cz, i64 %i.cy
  %i.db = load double, ptr %i.da, align 8, !tbaa !49
  store double %i.db, ptr %i.bd, align 16, !tbaa !49
  %i.dc = icmp sgt i64 %.sroa.speculated203, 3
  br i1 %i.dc, label %.lr.ph.2, label %.loopexit.2

.lr.ph.2:                                         ; preds = %bb.r
  %i.dd = add i64 %i.ce, -24
  %scevgep307.2 = getelementptr i8, ptr %i.cl, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.2, ptr align 8 %scevgep307.2, i64 range(i64 0, 57) %i.dd, i1 false), !tbaa !49
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.lr.ph.2, %bb.r
  %exitcond.not.2 = icmp eq i64 %smin315, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %.loopexit.2
  %i.de = add nsw i64 %i.ci, 3                    ; 2 uses
  %i.df = mul nsw i64 %i.de, %4
  %i.dg = getelementptr [8 x i8], ptr %3, i64 %i.de
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %i.df
  %i.di = load double, ptr %i.dh, align 8, !tbaa !49
  store double %i.di, ptr %i.bf, align 8, !tbaa !49
  %i.dj = icmp sgt i64 %.sroa.speculated203, 4
  br i1 %i.dj, label %.lr.ph.3, label %.loopexit.3

.lr.ph.3:                                         ; preds = %bb.s
  %i.dk = add i64 %i.ce, -32
  %scevgep307.3 = getelementptr i8, ptr %i.cl, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.3, ptr align 8 %scevgep307.3, i64 range(i64 0, 57) %i.dk, i1 false), !tbaa !49
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %.lr.ph.3, %bb.s
  %exitcond.not.3 = icmp eq i64 %smin315, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %.loopexit.3
  %i.dl = add nsw i64 %i.ci, 4                    ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %4
  %i.dn = getelementptr [8 x i8], ptr %3, i64 %i.dl
  %i.do = getelementptr [8 x i8], ptr %i.dn, i64 %i.dm
  %i.dp = load double, ptr %i.do, align 8, !tbaa !49
  store double %i.dp, ptr %i.bh, align 16, !tbaa !49
  %i.dq = icmp sgt i64 %.sroa.speculated203, 5
  br i1 %i.dq, label %.lr.ph.4, label %.loopexit.4

.lr.ph.4:                                         ; preds = %bb.t
  %i.dr = add i64 %i.ce, -40
  %scevgep307.4 = getelementptr i8, ptr %i.cl, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.4, ptr align 8 %scevgep307.4, i64 range(i64 0, 57) %i.dr, i1 false), !tbaa !49
  br label %.loopexit.4

.loopexit.4:                                      ; preds = %.lr.ph.4, %bb.t
  %exitcond.not.4 = icmp eq i64 %smin315, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %.loopexit.4
  %i.ds = add nsw i64 %i.ci, 5                    ; 2 uses
  %i.dt = mul nsw i64 %i.ds, %4
  %i.du = getelementptr [8 x i8], ptr %3, i64 %i.ds
  %i.dv = getelementptr [8 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !49
  store double %i.dw, ptr %i.bj, align 8, !tbaa !49
  %i.dx = icmp sgt i64 %.sroa.speculated203, 6
  br i1 %i.dx, label %.lr.ph.5, label %.loopexit.5

.lr.ph.5:                                         ; preds = %bb.u
  %i.dy = add i64 %i.ce, -48
  %scevgep307.5 = getelementptr i8, ptr %i.cl, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.5, ptr align 8 %scevgep307.5, i64 range(i64 0, 57) %i.dy, i1 false), !tbaa !49
  br label %.loopexit.5

.loopexit.5:                                      ; preds = %.lr.ph.5, %bb.u
  %exitcond.not.5 = icmp eq i64 %smin315, 6
  br i1 %exitcond.not.5, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %.loopexit.5
  %i.dz = add nsw i64 %i.ci, 6                    ; 2 uses
  %i.ea = mul nsw i64 %i.dz, %4
  %i.eb = getelementptr [8 x i8], ptr %3, i64 %i.dz
  %i.ec = getelementptr [8 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !49
  store double %i.ed, ptr %i.bl, align 16, !tbaa !49
  %i.ee = icmp sgt i64 %.sroa.speculated203, 7
  br i1 %i.ee, label %.lr.ph.6, label %.loopexit.6

.lr.ph.6:                                         ; preds = %bb.v
  %i.ef = add i64 %i.ce, -56
  %scevgep307.6 = getelementptr i8, ptr %i.cl, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.6, ptr align 8 %scevgep307.6, i64 range(i64 0, 57) %i.ef, i1 false), !tbaa !49
  br label %.loopexit.6

.loopexit.6:                                      ; preds = %.lr.ph.6, %bb.v
  %exitcond.not.6 = icmp eq i64 %smin315, 7
  br i1 %exitcond.not.6, label %._crit_edge, label %.loopexit.7

.loopexit.7:                                      ; preds = %.loopexit.6
  %i.eg = add nsw i64 %i.ci, 7                    ; 2 uses
  %i.eh = mul nsw i64 %i.eg, %4
  %i.ei = getelementptr [8 x i8], ptr %3, i64 %i.eg
  %i.ej = getelementptr [8 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !49
  store double %i.ek, ptr %i.bn, align 8, !tbaa !49
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph292
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %i.cl, i64 range(i64 0, 57) %i.cf, i1 false), !tbaa !49
  br label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.1, %.loopexit.2, %.loopexit.3, %.loopexit.4, %.loopexit.5, %.loopexit.6, %.loopexit.7, %.lr.ph295
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store ptr %12, ptr %17, align 8, !tbaa !182
  store i64 8, ptr %i.ap, align 8, !tbaa !183
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated203, i64 noundef %.sroa.speculated203, i64 noundef 0, i64 noundef 0)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.el = getelementptr [8 x i8], ptr %7, i64 %i.ci
  store ptr %i.el, ptr %18, align 8
  store i64 %9, ptr %i.aq, align 8
  %i.em = load double, ptr %10, align 8, !tbaa !49
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated203, i64 noundef %.sroa.speculated203, i64 noundef %1, double noundef %i.em, i64 noundef %.sroa.speculated203, i64 noundef %smin314, i64 noundef 0, i64 noundef %.0125293)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.en = icmp sgt i64 %i.ch, 0
  br i1 %i.en, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.eo = add nsw i64 %.sroa.speculated203, %i.ci ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.ep = mul nsw i64 %i.ci, %4
  %i.eq = getelementptr [8 x i8], ptr %3, i64 %i.eo
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %i.ep
  store ptr %i.er, ptr %19, align 8
  store i64 %4, ptr %i.ar, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated203, i64 noundef %i.ch, i64 noundef 0, i64 noundef 0)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.es = getelementptr [8 x i8], ptr %7, i64 %i.eo
  store ptr %i.es, ptr %20, align 8
  store i64 %9, ptr %i.as, align 8
  %i.et = load double, ptr %10, align 8, !tbaa !49
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.ch, i64 noundef %.sroa.speculated203, i64 noundef %1, double noundef %i.et, i64 noundef %.sroa.speculated203, i64 noundef %smin314, i64 noundef 0, i64 noundef %.0125293)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.af

bb.ab:                                            ; preds = %._crit_edge
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.al

bb.ac:                                            ; preds = %bb.w
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.al

bb.ad:                                            ; preds = %bb.y
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.al

bb.ae:                                            ; preds = %bb.z
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.al

bb.af:                                            ; preds = %bb.aa, %bb.x
  %i.ey = add nsw i64 %.0125293, %.sroa.speculated220 ; 2 uses
  %i.ez = icmp slt i64 %i.ey, %smin314
  %indvar.next306 = add i64 %indvar305, 1
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated220
  br i1 %i.ez, label %.lr.ph295, label %.preheader, !llvm.loop !932

._crit_edge298:                                   ; preds = %bb.ai, %.preheader
  %i.fa = sub nsw i64 %.0126301, %i.b             ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fb, label %bb.n, label %._crit_edge304, !llvm.loop !933

bb.ag:                                            ; preds = %.lr.ph297, %bb.ai
  %.0296 = phi i64 [ %.0126301, %.lr.ph297 ], [ %i.fc, %bb.ai ] ; 4 uses
  %i.fc = add nsw i64 %.0296, %.sroa.speculated226 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.fc)
  %i.fd = sub nsw i64 %.sroa.speculated, %.0296   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %gep300 = getelementptr [8 x i8], ptr %invariant.gep299, i64 %.0296
  store ptr %gep300, ptr %22, align 8
  store i64 %4, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %smin314, i64 noundef %i.fd, i64 noundef 0, i64 noundef 0)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.fe = getelementptr [8 x i8], ptr %7, i64 %.0296
  store ptr %i.fe, ptr %23, align 8
  store i64 %9, ptr %i.au, align 8
  %i.ff = load double, ptr %10, align 8, !tbaa !49
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.fd, i64 noundef %smin314, i64 noundef %1, double noundef %i.ff, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.fg = icmp slt i64 %i.fc, %0
  br i1 %i.fg, label %bb.ag, label %._crit_edge298, !llvm.loop !934

bb.aj:                                            ; preds = %bb.ag
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ab, %bb.ac, %bb.ae, %bb.ad, %bb.p
  %.pn150.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.p ], [ %i.ew, %bb.ad ], [ %i.fh, %bb.aj ], [ %i.eu, %bb.ab ], [ %i.ev, %bb.ac ], [ %i.ex, %bb.ae ], [ %i.fi, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br i1 %i.af, label %bb.am, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef %i.ad) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197: ; preds = %bb.al, %bb.am, %bb.m
  %.pn150.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.m ], [ %.pn150.pn.pn, %bb.am ], [ %.pn150.pn.pn, %bb.al ]
  br i1 %i.s, label %bb.an, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit198

bb.an:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197
  call void @free(ptr noundef %i.q) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit198

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit198: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197, %bb.an
  resume { ptr, i32 } %.pn150.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !943
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
  %i.l = load ptr, ptr %2, align 8, !tbaa !182
  %i.m = load i64, ptr %i.j, align 8, !tbaa !183
  %i.n = mul nsw i64 %i.m, %.05466.us             ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %.05568.us ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load <2 x double>, ptr %i.p, align 1, !tbaa !10
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.n
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi5ELb1ELi0ELb0ELi1ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE:bb.a
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit150, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit150 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit150 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !171  ; 2 uses
  %.not139 = icmp eq ptr %i.v, null
  br i1 %.not139, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.w = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.x = icmp samesign ult i64 %i.f, 16385
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = add nuw nsw i64 %i.w, 15
  %i.z = alloca i8, i64 %i.y, align 16            ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.w) #21 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.invoke, label %bb.j

.invoke:                                          ; preds = %bb.i, %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !158
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.i
  %i.ad = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 4 uses
  %i.af = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %12, i8 0, i64 512, i1 false)
  store double 1.000000e+00, ptr %12, align 16, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 72
  store double 1.000000e+00, ptr %i.ag, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 144
  store double 1.000000e+00, ptr %i.ah, align 16, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 216
  store double 1.000000e+00, ptr %i.ai, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 288
  store double 1.000000e+00, ptr %i.aj, align 16, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 360
  store double 1.000000e+00, ptr %i.ak, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 432
  store double 1.000000e+00, ptr %i.al, align 16, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 504
  store double 1.000000e+00, ptr %i.am, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.an = icmp sgt i64 %.sroa.speculated261, 0
  br i1 %i.an, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.av = shl i64 %.sroa.speculated261, 3
  %i.aw = add i64 %i.av, 8
  %i.ax = mul i64 %i.b, -8
  %i.ay = shl i64 %4, 3                           ; 2 uses
  %i.az = add i64 %i.ay, 8                        ; 7 uses
  %i.ba = mul i64 %.sroa.speculated211, %i.az
  %i.bb = icmp sgt i64 %i.b, 0
  %smin302 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b)
  %smin303 = tail call i64 @llvm.smin.i64(i64 %smin302, i64 %0) ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %12, i64 8
  %scevgep.1 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.bc = shl i64 %i.az, 1
  %scevgep.2 = getelementptr inbounds nuw i8, ptr %12, i64 152
  %i.bd = mul i64 %i.az, 3
  %scevgep.3 = getelementptr inbounds nuw i8, ptr %12, i64 224
  %i.be = shl i64 %i.az, 2
  %scevgep.4 = getelementptr inbounds nuw i8, ptr %12, i64 296
  %i.bf = mul i64 %i.az, 5
  %scevgep.5 = getelementptr inbounds nuw i8, ptr %12, i64 368
  %i.bg = mul i64 %i.az, 6
  %scevgep.6 = getelementptr inbounds nuw i8, ptr %12, i64 440
  br label %bb.n

._crit_edge294:                                   ; preds = %._crit_edge288, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br i1 %i.af, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.k:                                             ; preds = %._crit_edge294
  call void @free(ptr noundef %i.ad) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge294, %bb.k
  br i1 %i.s, label %bb.l, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit184

bb.l:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit184

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit184: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.l
  ret void

bb.m:                                             ; preds = %.invoke
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188

bb.n:                                             ; preds = %.lr.ph293, %._crit_edge288
  %indvar = phi i64 [ 0, %.lr.ph293 ], [ %indvar.next, %._crit_edge288 ] ; 2 uses
  %.0120291 = phi i64 [ %.sroa.speculated261, %.lr.ph293 ], [ %i.dg, %._crit_edge288 ] ; 5 uses
  %smin304 = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0120291) ; 11 uses
  %i.bi = mul i64 %i.ax, %indvar
  %i.bj = add i64 %i.aw, %i.bi
  %i.bk = sub i64 %.0120291, %smin304             ; 4 uses
  %i.bl = mul i64 %i.ay, %i.bk
  %i.bm = add i64 %i.bj, %i.bl
  %i.bn = shl i64 %smin304, 3
  %i.bo = sub i64 %i.bm, %i.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.bp = mul nsw i64 %i.bk, %6
  %i.bq = getelementptr [8 x i8], ptr %5, i64 %i.bp
  store ptr %i.bq, ptr %16, align 8
  store i64 %6, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %smin304, i64 noundef %1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br i1 %i.bb, label %.lr.ph285.preheader, label %.preheader

.lr.ph285.preheader:                              ; preds = %bb.o
  %i.br = getelementptr i8, ptr %3, i64 %i.bo
  br label %.lr.ph285

.preheader:                                       ; preds = %bb.ae, %bb.o
  %i.bs = icmp slt i64 %.0120291, %0
  br i1 %i.bs, label %.lr.ph287, label %._crit_edge288

.lr.ph287:                                        ; preds = %.preheader
  %i.bt = mul nsw i64 %i.bk, %4
  %invariant.gep289 = getelementptr [8 x i8], ptr %3, i64 %i.bt
  br label %bb.af

bb.p:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.ak

.lr.ph285:                                        ; preds = %.lr.ph285.preheader, %bb.ae
  %indvars.iv = phi i64 [ %smin304, %.lr.ph285.preheader ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %indvar295 = phi i64 [ 0, %.lr.ph285.preheader ], [ %indvar.next296, %bb.ae ] ; 3 uses
  %.0119283 = phi i64 [ 0, %.lr.ph285.preheader ], [ %i.de, %bb.ae ] ; 5 uses
  %smin305 = call i64 @llvm.smin.i64(i64 %smin303, i64 %indvars.iv) ; 6 uses
  %i.bv = mul i64 %.sroa.speculated211, %indvar295
  %i.bw = sub i64 %smin304, %i.bv
  %smin300 = call i64 @llvm.smin.i64(i64 %smin303, i64 %i.bw)
  %smin301 = call i64 @llvm.smin.i64(i64 %smin300, i64 8)
  %i.bx = shl i64 %smin301, 3                     ; 7 uses
  %i.by = add i64 %i.bx, -8
  %i.bz = sub nsw i64 %smin304, %.0119283         ; 2 uses
  %.sroa.speculated194 = call i64 @llvm.smin.i64(i64 %.sroa.speculated211, i64 %i.bz) ; 18 uses
  %i.ca = sub nsw i64 %i.bz, %.sroa.speculated194 ; 3 uses
  %i.cb = add nsw i64 %.0119283, %i.bk            ; 3 uses
  %i.cc = icmp sgt i64 %.sroa.speculated194, 0
  br i1 %i.cc, label %.lr.ph282, label %._crit_edge

.lr.ph282:                                        ; preds = %.lr.ph285
  %i.cd = mul i64 %i.ba, %indvar295
  %i.ce = getelementptr i8, ptr %i.br, i64 %i.cd  ; 7 uses
  %.not319 = icmp eq i64 %.sroa.speculated194, 1
  br i1 %.not319, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph282
  %exitcond.not = icmp eq i64 %smin305, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.cf = icmp sgt i64 %.sroa.speculated194, 2
  br i1 %i.cf, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %bb.q
  %i.cg = add i64 %i.bx, -16
  %scevgep297.1 = getelementptr i8, ptr %i.ce, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.1, ptr align 8 %scevgep297.1, i64 range(i64 0, 57) %i.cg, i1 false), !tbaa !49
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph.1, %bb.q
  %exitcond.not.1 = icmp eq i64 %smin305, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %.loopexit.1
  %i.ch = icmp sgt i64 %.sroa.speculated194, 3
  br i1 %i.ch, label %.lr.ph.2, label %.loopexit.2

.lr.ph.2:                                         ; preds = %bb.r
  %i.ci = add i64 %i.bx, -24
  %scevgep297.2 = getelementptr i8, ptr %i.ce, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.2, ptr align 8 %scevgep297.2, i64 range(i64 0, 57) %i.ci, i1 false), !tbaa !49
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.lr.ph.2, %bb.r
  %exitcond.not.2 = icmp eq i64 %smin305, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %.loopexit.2
  %i.cj = icmp sgt i64 %.sroa.speculated194, 4
  br i1 %i.cj, label %.lr.ph.3, label %.loopexit.3

.lr.ph.3:                                         ; preds = %bb.s
  %i.ck = add i64 %i.bx, -32
  %scevgep297.3 = getelementptr i8, ptr %i.ce, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.3, ptr align 8 %scevgep297.3, i64 range(i64 0, 57) %i.ck, i1 false), !tbaa !49
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %.lr.ph.3, %bb.s
  %exitcond.not.3 = icmp eq i64 %smin305, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %.loopexit.3
  %i.cl = icmp sgt i64 %.sroa.speculated194, 5
  br i1 %i.cl, label %.lr.ph.4, label %.loopexit.4

.lr.ph.4:                                         ; preds = %bb.t
  %i.cm = add i64 %i.bx, -40
  %scevgep297.4 = getelementptr i8, ptr %i.ce, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.4, ptr align 8 %scevgep297.4, i64 range(i64 0, 57) %i.cm, i1 false), !tbaa !49
  br label %.loopexit.4

.loopexit.4:                                      ; preds = %.lr.ph.4, %bb.t
  %exitcond.not.4 = icmp eq i64 %smin305, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %.loopexit.4
  %i.cn = icmp sgt i64 %.sroa.speculated194, 6
  br i1 %i.cn, label %.lr.ph.5, label %.loopexit.5

.lr.ph.5:                                         ; preds = %bb.u
  %i.co = add i64 %i.bx, -48
  %scevgep297.5 = getelementptr i8, ptr %i.ce, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.5, ptr align 8 %scevgep297.5, i64 range(i64 0, 57) %i.co, i1 false), !tbaa !49
  br label %.loopexit.5

.loopexit.5:                                      ; preds = %.lr.ph.5, %bb.u
  %exitcond.not.5 = icmp ne i64 %smin305, 6
  %i.cp = icmp sgt i64 %.sroa.speculated194, 7
  %or.cond = and i1 %exitcond.not.5, %i.cp
  br i1 %or.cond, label %.lr.ph.6, label %._crit_edge

.lr.ph.6:                                         ; preds = %.loopexit.5
  %i.cq = add i64 %i.bx, -56
  %scevgep297.6 = getelementptr i8, ptr %i.ce, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.6, ptr align 8 %scevgep297.6, i64 range(i64 0, 57) %i.cq, i1 false), !tbaa !49
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph282
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %i.ce, i64 range(i64 0, 57) %i.by, i1 false), !tbaa !49
  br label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph.6, %.loopexit, %.loopexit.1, %.loopexit.2, %.loopexit.3, %.loopexit.4, %.loopexit.5, %.lr.ph285
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store ptr %12, ptr %17, align 8, !tbaa !182
  store i64 8, ptr %i.ap, align 8, !tbaa !183
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated194, i64 noundef %.sroa.speculated194, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.cr = getelementptr [8 x i8], ptr %7, i64 %i.cb
  store ptr %i.cr, ptr %18, align 8
  store i64 %9, ptr %i.aq, align 8
  %i.cs = load double, ptr %10, align 8, !tbaa !49
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated194, i64 noundef %.sroa.speculated194, i64 noundef %1, double noundef %i.cs, i64 noundef %.sroa.speculated194, i64 noundef %smin304, i64 noundef 0, i64 noundef %.0119283)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.ct = icmp sgt i64 %i.ca, 0
  br i1 %i.ct, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.cu = add nsw i64 %.sroa.speculated194, %i.cb ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.cv = mul nsw i64 %i.cb, %4
  %i.cw = getelementptr [8 x i8], ptr %3, i64 %i.cu
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv
  store ptr %i.cx, ptr %19, align 8
  store i64 %4, ptr %i.ar, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated194, i64 noundef %i.ca, i64 noundef 0, i64 noundef 0)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.cy = getelementptr [8 x i8], ptr %7, i64 %i.cu
  store ptr %i.cy, ptr %20, align 8
  store i64 %9, ptr %i.as, align 8
  %i.cz = load double, ptr %10, align 8, !tbaa !49
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.ca, i64 noundef %.sroa.speculated194, i64 noundef %1, double noundef %i.cz, i64 noundef %.sroa.speculated194, i64 noundef %smin304, i64 noundef 0, i64 noundef %.0119283)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.ae

bb.aa:                                            ; preds = %._crit_edge
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ak

bb.ab:                                            ; preds = %bb.v
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.ak

bb.ac:                                            ; preds = %bb.x
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.ak

bb.ad:                                            ; preds = %bb.y
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.ak

bb.ae:                                            ; preds = %bb.z, %bb.w
  %i.de = add nsw i64 %.0119283, %.sroa.speculated211 ; 2 uses
  %i.df = icmp slt i64 %i.de, %smin304
  %indvar.next296 = add i64 %indvar295, 1
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated211
  br i1 %i.df, label %.lr.ph285, label %.preheader, !llvm.loop !944

._crit_edge288:                                   ; preds = %bb.ah, %.preheader
  %i.dg = sub nsw i64 %.0120291, %i.b             ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dh, label %bb.n, label %._crit_edge294, !llvm.loop !945

bb.af:                                            ; preds = %.lr.ph287, %bb.ah
  %.0286 = phi i64 [ %.0120291, %.lr.ph287 ], [ %i.di, %bb.ah ] ; 4 uses
  %i.di = add nsw i64 %.0286, %.sroa.speculated217 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.di)
  %i.dj = sub nsw i64 %.sroa.speculated, %.0286   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %gep290 = getelementptr [8 x i8], ptr %invariant.gep289, i64 %.0286
  store ptr %gep290, ptr %22, align 8
  store i64 %4, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %smin304, i64 noundef %i.dj, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.dk = getelementptr [8 x i8], ptr %7, i64 %.0286
  store ptr %i.dk, ptr %23, align 8
  store i64 %9, ptr %i.au, align 8
  %i.dl = load double, ptr %10, align 8, !tbaa !49
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.dj, i64 noundef %smin304, i64 noundef %1, double noundef %i.dl, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.dm = icmp slt i64 %i.di, %0
  br i1 %i.dm, label %bb.af, label %._crit_edge288, !llvm.loop !946

bb.ai:                                            ; preds = %bb.af
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.aa, %bb.ab, %bb.ad, %bb.ac, %bb.p
  %.pn143.pn = phi { ptr, i32 } [ %i.bu, %bb.p ], [ %i.dc, %bb.ac ], [ %i.dn, %bb.ai ], [ %i.da, %bb.aa ], [ %i.db, %bb.ab ], [ %i.dd, %bb.ad ], [ %i.do, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br i1 %i.af, label %bb.al, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef %i.ad) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188: ; preds = %bb.ak, %bb.al, %bb.m
  %.pn143.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %.pn143.pn, %bb.al ], [ %.pn143.pn, %bb.ak ]
  br i1 %i.s, label %bb.am, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit189

bb.am:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188
  call void @free(ptr noundef %i.q) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit189

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit189: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188, %bb.am
  resume { ptr, i32 } %.pn143.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen7SVDBaseINS_9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EENS2_IdLi1ELi1ELi0ELi1ELi1EEEEEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.688", align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !88
  %.sroa.speculated.i.i = tail call i64 @llvm.smax.i64(i64 %i.e, i64 1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.g = load i8, ptr %i.f, align 2, !tbaa !956, !range !50, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load double, ptr %i.i, align 16
  %i.k = uitofp nneg i64 %.sroa.speculated.i.i to double
  %i.l = fmul nnan double %i.k, f0x3CB0000000000000
  %i.m = select i1 %i.h, double %i.j, double %i.l
  %i.n = fmul double %i.c, %i.m                   ; 2 uses
  %i.o = fcmp olt double %i.n, f0x0010000000000000
  %.sroa.speculated.i = select i1 %i.o, double f0x0010000000000000, double %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i64, ptr %i.p, align 16, !tbaa !60  ; 4 uses
  %smin.i = tail call i64 @llvm.smin.i64(i64 %i.q, i64 0) ; 3 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %_ZNK5Eigen7SVDBaseINS_9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EEEE4rankEv.exit

bb.b:                                             ; preds = %.lr.ph
  %i.s = icmp sgt i64 %.0.in.i76, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.s, label %.lr.ph, label %_ZNK5Eigen7SVDBaseINS_9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EEEE4rankEv.exit, !llvm.loop !947

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0.in.i76 = phi i64 [ %.0.i, %bb.b ], [ %i.q, %bb.a ] ; 9 uses
  %.0.i = add nsw i64 %.0.in.i76, -1              ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.i
  %i.u = load double, ptr %i.t, align 8, !tbaa !49
  %i.v = fcmp olt double %i.u, %.sroa.speculated.i
  br i1 %i.v, label %bb.b, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !llvm.loop !947

_ZNK5Eigen7SVDBaseINS_9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EEEE4rankEv.exit: ; preds = %bb.b, %bb.a
  store i64 %smin.i, ptr %i.a, align 16, !tbaa !100
  %i.w = sdiv i64 %smin.i, 2
end_hunk_2
