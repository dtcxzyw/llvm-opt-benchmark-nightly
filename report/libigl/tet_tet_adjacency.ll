Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tet_tet_adjacency?download=true
inline.NumInlined: 579
inline.NumDeleted: 300
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3igl17tet_tet_adjacencyIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNS9_IT1_EE:bb.a
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !66   ; 6 uses
  %.not.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = sdiv exact i64 %i.ab, 20
  %i.ad = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = xor i64 %i.ae, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.x, ptr %i.y, i64 noundef %i.af)
          to label %.noexc46 unwind label %bb.p

.noexc46:                                         ; preds = %bb.c
  %i.ag = icmp sgt i64 %i.ab, 320
  br i1 %i.ag, label %bb.d, label %bb.j

bb.d:                                             ; preds = %.noexc46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 320 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.x, ptr nonnull %i.ah)
          to label %.noexc47 unwind label %bb.p

.noexc47:                                         ; preds = %bb.d
  %.not4.i.i.i.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc47, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i ], [ %i.ah, %.noexc47 ] ; 7 uses
  %.sroa.03.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.0.05.i.i.i.i, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 4
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %.sroa.6.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 4 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 12
  %.sroa.7.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 4 ; 3 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 16
  %.sroa.8.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !24 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIiLm5EENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.013.0.i.i.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIiLm5EENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i ] ; 11 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.i.i.i.i.i, i64 -20 ; 3 uses
  %i.ai = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.aj = icmp slt i32 %.sroa.03.0.copyload.i.i.i.i.i, %i.ai
  br i1 %i.aj, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIiLm5EENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp slt i32 %i.ai, %.sroa.03.0.copyload.i.i.i.i.i
  br i1 %i.ak, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.1.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.1.i.i.i.i.i.i.i:                 ; preds = %bb.f
  %.01924.i.i.i.i.i.ptr.1.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.i.i.i.i.i, i64 -16
  %i.al = load i32, ptr %.01924.i.i.i.i.i.ptr.1.i.i.i.i.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.am = icmp slt i32 %.sroa.5.0.copyload.i.i.i.i.i, %i.al
  br i1 %i.am, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIiLm5EENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.1.i.i.i.i.i.i.i
  %i.an = icmp slt i32 %i.al, %.sroa.5.0.copyload.i.i.i.i.i
  br i1 %i.an, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.2.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.2.i.i.i.i.i.i.i:                 ; preds = %bb.g
  %.01924.i.i.i.i.i.ptr.2.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.i.i.i.i.i, i64 -12
  %i.ao = load i32, ptr %.01924.i.i.i.i.i.ptr.2.i.i.i.i.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.ap = icmp slt i32 %.sroa.6.0.copyload.i.i.i.i.i, %i.ao
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIiLm5EENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.2.i.i.i.i.i.i.i
  %i.aq = icmp slt i32 %i.ao, %.sroa.6.0.copyload.i.i.i.i.i
  br i1 %i.aq, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.3.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.3.i.i.i.i.i.i.i:                 ; preds = %bb.h
  %.01924.i.i.i.i.i.ptr.3.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.i.i.i.i.i, i64 -8
  %i.ar = load i32, ptr %.01924.i.i.i.i.i.ptr.3.i.i.i.i.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.as = icmp slt i32 %.sroa.7.0.copyload.i.i.i.i.i, %i.ar
  br i1 %i.as, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIiLm5EENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.3.i.i.i.i.i.i.i
  %i.at = icmp slt i32 %i.ar, %.sroa.7.0.copyload.i.i.i.i.i
  br i1 %i.at, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIiLm5EENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIiLm5EENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i: ; preds = %bb.i
  %.01924.i.i.i.i.i.ptr.4.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.i.i.i.i.i, i64 -4
  %i.au = load i32, ptr %.01924.i.i.i.i.i.ptr.4.i.i.i.i.i.i.i, align 4, !tbaa !30
  %i.av = icmp slt i32 %.sroa.8.0.copyload.i.i.i.i.i, %i.au
  br i1 %i.av, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIiLm5EENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIiLm5EENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIiLm5EENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.3.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.2.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1.i.i.i.i.i.i.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.013.0.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !25
  br label %bb.e, !llvm.loop !0

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIiLm5EENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i, %bb.i, %bb.h, %bb.g, %bb.f
  store i32 %.sroa.03.0.copyload.i.i.i.i.i, ptr %.sroa.013.0.i.i.i.i.i, align 4
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i, i64 4
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i, align 4
  %.sroa.6.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i, i64 8
  store i32 %.sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx7.i.i.i.i.i, align 4
  %.sroa.7.0..sroa_idx9.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i, i64 12
  store i32 %.sroa.7.0.copyload.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx9.i.i.i.i.i, align 4
  %.sroa.8.0..sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i, i64 16
  store i32 %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx11.i.i.i.i.i, align 4, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.aw, %i.y
  br i1 %.not.i.i.i.i45, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !59

bb.j:                                             ; preds = %.noexc46
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.x, ptr %i.y)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit unwind label %bb.p

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, %.noexc47, %bb.b, %bb.j
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !20  ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !31 ; 4 uses
  %i.ba = icmp eq i64 %i.ax, 0
  %i.bb = icmp eq i64 %i.az, 0
  %or.cond.i.i.i = or i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.bc = sdiv i64 9223372036854775807, %i.az
  %i.bd = icmp sgt i64 %i.ax, %i.bc
  br i1 %i.bd, label %bb.l, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.l:                                             ; preds = %bb.k
  %i.be = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.be, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc49 unwind label %bb.q

.noexc49:                                         ; preds = %bb.l
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIiLm5EESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.bf = mul nsw i64 %i.az, %i.ax
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bf, i64 noundef %i.ax, i64 noundef %i.az)
          to label %.noexc50 unwind label %bb.q

.noexc50:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !31
  %i.bk = mul nsw i64 %i.bj, %i.bh                ; 2 uses
  %i.bl = icmp slt i64 %i.bk, 1
  br i1 %i.bl, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit.loopexit: ; preds = %.noexc50
  %i.bm = load ptr, ptr %1, align 8, !tbaa !34
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bk, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !30
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit.loopexit, %.noexc50
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !20  ; 4 uses
  %i.bo = load i64, ptr %i.ay, align 8, !tbaa !31 ; 4 uses
  %i.bp = icmp eq i64 %i.bn, 0
  %i.bq = icmp eq i64 %i.bo, 0
  %or.cond.i.i.i51 = or i1 %i.bp, %i.bq
  br i1 %or.cond.i.i.i51, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i52, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit
  %i.br = sdiv i64 9223372036854775807, %i.bo
  %i.bs = icmp sgt i64 %i.bn, %i.br
  br i1 %i.bs, label %bb.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i52

bb.n:                                             ; preds = %bb.m
  %i.bt = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bt, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc57 unwind label %bb.r

.noexc57:                                         ; preds = %bb.n
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i52: ; preds = %bb.m, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit
  %i.bu = mul nsw i64 %i.bo, %i.bn
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bu, i64 noundef %i.bn, i64 noundef %i.bo)
          to label %.noexc58 unwind label %bb.r

.noexc58:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i52
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !20 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.bz = mul nsw i64 %i.by, %i.bw                ; 2 uses
  %i.ca = icmp slt i64 %i.bz, 1
  br i1 %i.ca, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit59, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit59.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit59.loopexit: ; preds = %.noexc58
  %i.cb = load ptr, ptr %2, align 8, !tbaa !34
  %.idx.i.i.i.i.i.i.i.i.i.i.i53 = shl nuw nsw i64 %i.bz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cb, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i53, i1 false), !tbaa !30
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit59

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit59: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit59.loopexit, %.noexc58
  %i.cc = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.cd = load ptr, ptr %5, align 8, !tbaa !23    ; 4 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf
  %7 = sdiv exact i64 %i.cg, 20                   ; 2 uses
  %i.ch = icmp ugt i64 %7, 1
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5arrayIiLm5EESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !61
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorISt5arrayIiLm5EESaIS1_EED2Ev.exit

_ZNSt6vectorISt5arrayIiLm5EESaIS1_EED2Ev.exit:    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.p:                                             ; preds = %bb.j, %bb.d, %bb.c, %.loopexit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.q:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.l
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i52, %bb.n
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit59, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKi.exit59 ] ; 2 uses
  %i.cp = getelementptr [20 x i8], ptr %i.cd, i64 %indvars.iv ; 10 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 -20
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !30
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !30
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.lr.ph
  %i.cu = getelementptr i8, ptr %i.cp, i64 -16
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !30
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !30
  %i.cy = icmp eq i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr i8, ptr %i.cp, i64 -12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !30
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 12 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !30 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cp, i64 -8     ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !30
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr i8, ptr %i.cp, i64 -4     ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !30
  %i.dl = sext i32 %i.dk to i64
  %i.dm = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.dn = load i64, ptr %i.bg, align 8, !tbaa !20 ; 2 uses
  %i.do = mul nsw i64 %i.dn, %i.dl
  %i.dp = getelementptr [4 x i8], ptr %i.dm, i64 %i.di
  %i.dq = getelementptr [4 x i8], ptr %i.dp, i64 %i.do
  store i32 %i.df, ptr %i.dq, align 4, !tbaa !30
  %i.dr = load i32, ptr %i.dg, align 4, !tbaa !30 ; 2 uses
  %i.ds = sext i32 %i.df to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !30
  %i.dv = sext i32 %i.du to i64
  %i.dw = mul nsw i64 %i.dn, %i.dv
  %i.dx = getelementptr [4 x i8], ptr %i.dm, i64 %i.ds
  %i.dy = getelementptr [4 x i8], ptr %i.dx, i64 %i.dw
  store i32 %i.dr, ptr %i.dy, align 4, !tbaa !30
  %i.dz = load i32, ptr %i.dt, align 4, !tbaa !30 ; 2 uses
  %i.ea = sext i32 %i.dr to i64
  %i.eb = load i32, ptr %i.dj, align 4, !tbaa !30
  %i.ec = sext i32 %i.eb to i64
  %i.ed = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.ee = mul nsw i64 %i.bw, %i.ec
  %i.ef = getelementptr [4 x i8], ptr %i.ed, i64 %i.ea
  %i.eg = getelementptr [4 x i8], ptr %i.ef, i64 %i.ee
  store i32 %i.dz, ptr %i.eg, align 4, !tbaa !30
  %i.eh = load i32, ptr %i.dj, align 4, !tbaa !30
  %i.ei = load i32, ptr %i.de, align 4, !tbaa !30
  %i.ej = sext i32 %i.ei to i64
  %i.ek = sext i32 %i.dz to i64
  %i.el = mul nsw i64 %i.bw, %i.ek
  %i.em = getelementptr [4 x i8], ptr %i.ed, i64 %i.ej
  %i.en = getelementptr [4 x i8], ptr %i.em, i64 %i.el
  store i32 %i.eh, ptr %i.en, align 4, !tbaa !30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %7
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !60

._crit_edge.thread:                               ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.o

bb.w:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.p ], [ %i.co, %bb.r ], [ %i.cn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.eo = load ptr, ptr %5, align 8, !tbaa !23    ; 3 uses
  %.not.i.i.i60 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorISt5arrayIiLm5EESaIS1_EED2Ev.exit61, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !61
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.et) #23
  br label %_ZNSt6vectorISt5arrayIiLm5EESaIS1_EED2Ev.exit61

_ZNSt6vectorISt5arrayIiLm5EESaIS1_EED2Ev.exit61:  ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_17tet_tet_adjacencyIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES5_S5_EEvRKNS3_10MatrixBaseIT_EERNS3_15PlainObjectBaseIT0_EERNSB_IT1_EEEUliE_EEbS7_RKSC_mEUlmE_ZNS1_IlSI_EEbS7_SK_mEUllmE_SL_EEbS7_SK_RKSF_RKT2_m(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %5 = alloca %class.anon.5, align 8              ; 6 uses
  %6 = alloca %"class.std::vector.6", align 8     ; 13 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !35
  %i.e = icmp eq i64 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp uge i64 %0, %4
  %i.i = icmp ugt i32 %i.f, 1
  %or.cond.not = and i1 %i.i, %i.h
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.j = icmp sgt i64 %0, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57, %.lr.ph
  %.03360 = phi i64 [ %i.m, %.lr.ph ], [ 0, %.preheader57 ] ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.l = trunc i64 %.03360 to i32
  tail call void @_ZZN3igl17tet_tet_adjacencyIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNS9_IT1_EEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i32 noundef %i.l)
  %i.m = add nuw nsw i64 %.03360, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %0
  br i1 %exitcond.not, label %.loopexit58, label %.lr.ph, !llvm.loop !67

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.n = add nsw i64 %0, 1
  %i.o = sitofp i64 %i.n to double
  %i.p = uitofp i32 %i.f to double
  %i.q = fdiv double %i.o, %i.p
  %i.r = tail call double @llvm.round.f64(double %i.q)
  %i.s = fptosi double %i.r to i64
  %.sroa.speculated51 = tail call i64 @llvm.smax.i64(i64 %i.s, i64 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %2, ptr %5, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.v = shl nuw nsw i64 %i.g, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #22
          to label %.noexc unwind label %bb.e     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.x = load ptr, ptr %6, align 8, !tbaa !42     ; 5 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !43   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.w, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.x, %.noexc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.z = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !35, !alias.scope !73, !noalias !72
  store i64 %i.z, ptr %.012.i.i.i.i, align 8, !tbaa !35, !alias.scope !72, !noalias !73
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !35, !alias.scope !73, !noalias !72
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.y
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.x, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.af) #23
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.c, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.w, ptr %6, align 8, !tbaa !42
  store ptr %i.w, ptr %i.u, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.g
  store ptr %i.ag, ptr %i.t, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %.sroa.speculated47 = tail call i64 @llvm.smin.i64(i64 %0, i64 %.sroa.speculated51)
  store i64 %.sroa.speculated47, ptr %i.c, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 0, ptr %i.d, align 8, !tbaa !35
  %i.ah = icmp sgt i64 %0, 0
  br i1 %i.ah, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.d
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_17tet_tet_adjacencyIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEESA_SA_EEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS6_IlSN_EEbSC_SP_mEUllmE_SQ_EEbSC_SP_RKSK_RKT2_mEUlllmE_RlS10_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.d unwind label %.loopexit  ; 0 uses

bb.d:                                             ; preds = %.lr.ph61
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !35  ; 3 uses
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !35
  %i.ak = add nsw i64 %i.aj, %.sroa.speculated51
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.ak)
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !35
  %i.al = load i64, ptr %i.d, align 8, !tbaa !35  ; 2 uses
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.d, align 8, !tbaa !35
  %i.an = add i64 %i.al, 2
  %i.ao = icmp ult i64 %i.an, %i.g
  %i.ap = icmp slt i64 %i.aj, %0                  ; 2 uses
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %.lr.ph61, label %._crit_edge, !llvm.loop !71

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit:                                        ; preds = %.lr.ph61
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.n

end_hunk_0
