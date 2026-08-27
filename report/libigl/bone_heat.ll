Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bone_heat?download=true
inline.NumInlined: 3046
inline.NumDeleted: 1580
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN3igl6embree9bone_heatERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEES5_RKNS2_IiLin1ELi1ELi0ELin1ELi1EEES8_S8_RS3_:bb.a
  %i.j = add nsw i32 %i.i, %i.f                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17   ; 7 uses
  %i.m = shl nsw i64 %i.l, 1                      ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19   ; 8 uses
  %i.p = icmp eq i64 %i.l, 0
  %i.q = icmp eq i64 %i.o, 0
  %or.cond.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = sdiv i64 9223372036854775807, %i.o
  %i.s = icmp sgt i64 %i.m, %i.r
  br i1 %i.s, label %.invoke397, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b, %bb.a
  %i.t = mul nsw i64 %i.o, %i.m                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %.not.i198 = icmp eq i64 %i.t, 0
  br i1 %.not.i198, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.w = icmp sgt i64 %i.t, 0
  br i1 %i.w, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.x = icmp samesign ugt i64 %i.t, 4611686018427387903
  br i1 %i.x, label %.invoke397, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.d
  %i.y = shl nuw i64 %i.t, 2
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.y) #24 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.invoke397, label %.sink.split.i

.invoke397:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d, %bb.b
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ab, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont398 unwind label %bb.s

.cont398:                                         ; preds = %.invoke397
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.c
  %.sink.i = phi ptr [ %i.z, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.c ] ; 2 uses
  store ptr %.sink.i, ptr %17, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %.sink.split.i
  %i.ac = phi ptr [ null, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i ], [ %.sink.i, %.sink.split.i ] ; 2 uses
  store i64 %i.m, ptr %i.u, align 8, !tbaa !17
  store i64 %i.o, ptr %i.v, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23, !noalias !23
  store ptr %i.ac, ptr %16, align 8, !tbaa !26, !alias.scope !29, !noalias !23
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.l, ptr %i.ad, align 8, !tbaa !32, !alias.scope !29, !noalias !23
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.o, ptr %i.ae, align 8, !tbaa !32, !alias.scope !29, !noalias !23
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %17, ptr %i.af, align 8, !tbaa !33, !alias.scope !29, !noalias !23
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false), !noalias !23
  store i64 %i.m, ptr %i.ah, align 8, !tbaa !35, !alias.scope !29, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !23
  %i.ai = load ptr, ptr %1, align 8, !tbaa !22, !noalias !23
  store ptr %i.ai, ptr %12, align 8, !tbaa !38, !noalias !23
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.l, ptr %i.aj, align 8, !tbaa !40, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !23
  store ptr %i.ac, ptr %13, align 8, !tbaa !41, !noalias !23
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.m, ptr %i.ak, align 8, !tbaa !32, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23, !noalias !23
  store ptr %13, ptr %14, align 8, !tbaa !44, !noalias !23
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %12, ptr %i.al, align 8, !tbaa !46, !noalias !23
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %15, ptr %i.am, align 8, !tbaa !48, !noalias !23
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %16, ptr %i.an, align 8, !tbaa !50, !noalias !23
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23, !noalias !23
  %i.ao = load i64, ptr %i.v, align 8, !tbaa !19
  %i.ap = icmp eq i64 %i.o, %i.ao
  br i1 %i.ap, label %bb.g, label %._crit_edge12.i

._crit_edge12.i:                                  ; preds = %bb.f
  %.pre14.i = load i64, ptr %i.k, align 8, !tbaa !17
  %.pre16.i = load i64, ptr %i.n, align 8, !tbaa !19
  br label %._crit_edge.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !19  ; 2 uses
  %.not.i = icmp eq i64 %i.aq, 0
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !17  ; 3 uses
  br i1 %.not.i, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %bb.g
  %.not8.i = icmp eq i64 %i.ar, %i.l              ; 2 uses
  %spec.select = select i1 %.not8.i, i64 0, i64 %i.l
  %spec.select332 = select i1 %.not8.i, i64 %i.o, i64 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.h, %._crit_edge12.i
  %.sroa.5311.0 = phi i64 [ %spec.select, %bb.h ], [ 0, %._crit_edge12.i ], [ %i.l, %bb.g ] ; 2 uses
  %i.as = phi i64 [ 0, %bb.h ], [ %.pre16.i, %._crit_edge12.i ], [ %i.aq, %bb.g ] ; 2 uses
  %i.at = phi i64 [ %i.ar, %bb.h ], [ %.pre14.i, %._crit_edge12.i ], [ %i.ar, %bb.g ] ; 2 uses
  %i.au = phi i64 [ %spec.select332, %bb.h ], [ %i.o, %._crit_edge12.i ], [ 0, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.av = load ptr, ptr %17, align 8, !tbaa !22, !noalias !52
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %.sroa.5311.0
  %i.ax = load i64, ptr %i.u, align 8, !tbaa !17, !noalias !52 ; 3 uses
  %i.ay = mul nsw i64 %i.ax, %i.au
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay ; 2 uses
  store ptr %i.az, ptr %11, align 8, !tbaa !26, !alias.scope !52
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.at, ptr %i.ba, align 8, !tbaa !32, !alias.scope !52
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.as, ptr %i.bb, align 8, !tbaa !32, !alias.scope !52
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %17, ptr %i.bc, align 8, !tbaa !33, !alias.scope !52
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %.sroa.5311.0, ptr %i.bd, align 8, !tbaa !32, !alias.scope !52
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 %i.au, ptr %i.be, align 8, !tbaa !32, !alias.scope !52
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i64 %i.ax, ptr %i.bf, align 8, !tbaa !35, !alias.scope !52
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bg = load ptr, ptr %1, align 8, !tbaa !22
  store ptr %i.bg, ptr %7, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.at, ptr %i.bh, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.as, ptr %i.bi, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.az, ptr %8, align 8, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.ax, ptr %i.bj, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %8, ptr %9, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.bk, align 8, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.bl, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %11, ptr %i.bm, align 8, !tbaa !50
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_7ReverseIKS6_Li1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZN3igl6embree17EmbreeIntersectorC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %18)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  store ptr %0, ptr %20, align 8, !tbaa !57, !alias.scope !59
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.w

_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEC2INS1_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2INS0_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.x

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2INS0_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9EigenBaseIT_EE.exit
  invoke void @_ZN3igl6embree17EmbreeIntersector4initERKN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEERKNS3_IiLin1ELi3ELi0ELin1ELi3EEEb(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %21, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2INS0_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  %i.bn = load ptr, ptr %21, align 8, !tbaa !62
  call void @free(ptr noundef %i.bn) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.bo = load ptr, ptr %19, align 8, !tbaa !64
  call void @free(ptr noundef %i.bo) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %sext = shl i64 %i.b, 32
  %i.bp = ashr exact i64 %sext, 32                ; 27 uses
  %i.bq = sext i32 %i.j to i64                    ; 5 uses
  %i.br = icmp eq i32 %i.c, 0
  %i.bs = icmp eq i32 %i.j, 0
  %or.cond.i.i.i.i = or i1 %i.br, %i.bs           ; 2 uses
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = sdiv i64 9223372036854775807, %i.bq
  %i.bu = icmp slt i64 %i.bt, %i.bp
  br i1 %i.bu, label %.invoke.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.bv = mul nsw i64 %i.bp, %i.bq                ; 5 uses
  %i.bw = icmp sgt i64 %i.bv, 0                   ; 2 uses
  br i1 %i.bw, label %bb.m, label %_ZN5Eigen6MatrixIbLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit

bb.m:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i
  %i.bx = call noalias ptr @malloc(i64 noundef %i.bv) #24 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.invoke.i, label %_ZN5Eigen6MatrixIbLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit

.invoke.i:                                        ; preds = %bb.m, %bb.l
  %i.bz = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bz, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.bz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont.i unwind label %bb.n

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.n:                                             ; preds = %.invoke.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIbLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i, %bb.m
  %.sroa.0.0 = phi ptr [ null, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i ], [ %i.bx, %bb.m ] ; 6 uses
  %.sroa.0.0399 = ptrtoaddr ptr %.sroa.0.0 to i64 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen6MatrixIbLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit
  %i.cb = sdiv i64 9223372036854775807, %i.bq
  %i.cc = icmp slt i64 %i.cb, %i.bp
  br i1 %i.cc, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.o, %_ZN5Eigen6MatrixIbLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %22, i64 16
  %.not.i201 = icmp eq i64 %i.bv, 0
  br i1 %.not.i201, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  br i1 %i.bw, label %bb.q, label %.sink.split.i202

bb.q:                                             ; preds = %bb.p
  %i.cf = icmp samesign ugt i64 %i.bv, 2305843009213693951
  br i1 %i.cf, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.q
  %i.cg = shl nuw i64 %i.bv, 3
  %i.ch = call noalias ptr @malloc(i64 noundef %i.cg) #24 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.invoke, label %.sink.split.i202

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.q, %bb.o
  %i.cj = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cj, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i202:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.p
  %.sink.i203 = phi ptr [ %i.ch, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.p ]
  store ptr %.sink.i203, ptr %22, align 8, !tbaa !67
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit

bb.r:                                             ; preds = %.invoke
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body153

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit: ; preds = %.sink.split.i202, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.bp, ptr %i.cd, align 8, !tbaa !9
  store i64 %i.bq, ptr %i.ce, align 8, !tbaa !68
  %i.cl = icmp sgt i32 %i.f, 0
  br i1 %i.cl, label %.lr.ph, label %.preheader334

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %wide.trip.count = and i64 %i.e, 2147483647
  %scevgep409 = getelementptr inbounds nuw i8, ptr %23, i64 24
  br label %bb.ab

.preheader334:                                    ; preds = %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit
  %i.cp = icmp sgt i32 %i.i, 0
  br i1 %i.cp, label %.lr.ph338, label %._crit_edge

.lr.ph338:                                        ; preds = %.preheader334
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %26, i64 16
  %sext396 = shl i64 %i.e, 32                     ; 2 uses
  %i.cv = ashr exact i64 %sext396, 32
  %wide.trip.count356 = and i64 %i.h, 2147483647
  %i.cw = mul i64 %i.e, %i.b
  %i.cx = add i64 %i.cw, %.sroa.0.0399
  %i.cy = ashr exact i64 %sext396, 29             ; 2 uses
  %i.cz = mul i64 %i.e, %i.b
  %i.da = add i64 %i.cz, %.sroa.0.0399
  br label %bb.ae

bb.s:                                             ; preds = %.invoke397
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.t:                                             ; preds = %bb.e
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.u:                                             ; preds = %._crit_edge.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.v:                                             ; preds = %bb.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.w:                                             ; preds = %bb.j
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2INS0_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %21, align 8, !tbaa !62
  call void @free(ptr noundef %i.di) #23
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn102 = phi { ptr, i32 } [ %i.dh, %bb.y ], [ %i.dg, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.dj = load ptr, ptr %19, align 8, !tbaa !64
  call void @free(ptr noundef %i.dj) #23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.pn102.pn = phi { ptr, i32 } [ %.pn102, %bb.z ], [ %i.df, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.body

bb.ab:                                            ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 8 uses
  %i.dk = mul i64 %i.b, %indvars.iv
  %i.dl = add i64 %i.dk, %.sroa.0.0399
  %i.dm = sub i64 0, %i.dl
  %i.dn = and i64 %i.dm, 15
  %smin502 = call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.dn)
  %i.do = add nsw i64 %smin502, -1
  %i.dp = shl i64 %indvars.iv, 3
  %i.dq = add i64 %i.dp, 8
  %i.dr = mul i64 %i.b, %indvars.iv
  %i.ds = add i64 %i.dr, %.sroa.0.0399
  %i.dt = sub i64 0, %i.ds
  %i.du = and i64 %i.dt, 15
  %smin = call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.du)
  %i.dv = sub i64 %i.b, %smin                     ; 2 uses
  %i.dw = and i64 %i.dv, 15                       ; 2 uses
  %i.dx = mul i64 %i.bp, %indvars.iv
  %i.dy = add i64 %i.dx, %.sroa.0.0399
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.dz = load ptr, ptr %3, align 8, !tbaa !69
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !70
  %i.ec = sext i32 %i.eb to i64
  %i.ed = load ptr, ptr %2, align 8, !tbaa !67, !noalias !71
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ec ; 3 uses
  %i.ef = load i64, ptr %i.cm, align 8, !tbaa !9  ; 2 uses
  %i.eg = load double, ptr %i.ee, align 8, !tbaa !74
  store double %i.eg, ptr %23, align 16, !tbaa !74
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !74
  store double %i.ei, ptr %i.cn, align 8, !tbaa !74
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ef, 4
  %i.ej = getelementptr inbounds i8, ptr %i.ee, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !74
  store double %i.ek, ptr %i.co, align 16, !tbaa !74
  %i.el = load ptr, ptr %22, align 8, !tbaa !67, !noalias !76 ; 2 uses
  %i.em = load i64, ptr %i.cd, align 8, !tbaa !9, !noalias !76 ; 8 uses
  %i.en = mul i64 %i.em, %indvars.iv
  %i.eo = getelementptr [8 x i8], ptr %i.el, i64 %i.en ; 6 uses
  %i.ep = icmp sgt i64 %i.em, 0
  br i1 %i.ep, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, label %.loopexit335

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ab
  %i.eq = load ptr, ptr %0, align 8, !tbaa !67    ; 8 uses
  %i.er = load i64, ptr %i.a, align 8, !tbaa !9   ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.er, 4 ; 4 uses
  %min.iters.check426 = icmp ult i64 %i.em, 4
  br i1 %min.iters.check426, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck408

vector.memcheck408:                               ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %i.es = mul i64 %i.em, %i.dq
  %scevgep = getelementptr i8, ptr %i.el, i64 %i.es ; 4 uses
  %scevgep410 = getelementptr i8, ptr %i.eq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.et = shl i64 %i.em, 3                        ; 3 uses
  %i.eu = getelementptr i8, ptr %i.eq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %scevgep411 = getelementptr i8, ptr %i.eu, i64 %i.et
  %i.ev = shl i64 %i.er, 3                        ; 2 uses
  %scevgep412 = getelementptr i8, ptr %i.eq, i64 %i.ev
  %i.ew = getelementptr i8, ptr %i.eq, i64 %i.et
  %scevgep413 = getelementptr i8, ptr %i.ew, i64 %i.ev
  %scevgep414 = getelementptr i8, ptr %i.eq, i64 %i.et
  %bound0 = icmp ult ptr %i.eo, %scevgep409
  %bound1 = icmp ult ptr %23, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0415 = icmp ult ptr %i.eo, %scevgep411
  %bound1416 = icmp ult ptr %scevgep410, %scevgep
  %found.conflict417 = and i1 %bound0415, %bound1416
  %conflict.rdx = or i1 %found.conflict, %found.conflict417
  %bound0418 = icmp ult ptr %i.eo, %scevgep413
  %bound1419 = icmp ult ptr %scevgep412, %scevgep
  %found.conflict420 = and i1 %bound0418, %bound1419
  %conflict.rdx421 = or i1 %conflict.rdx, %found.conflict420
  %bound0422 = icmp ult ptr %i.eo, %scevgep414
  %bound1423 = icmp ult ptr %i.eq, %scevgep
  %found.conflict424 = and i1 %bound0422, %bound1423
  %conflict.rdx425 = or i1 %conflict.rdx421, %found.conflict424
  br i1 %conflict.rdx425, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph427

vector.ph427:                                     ; preds = %vector.memcheck408
  %n.vec428 = and i64 %i.em, 9223372036854775806  ; 3 uses
  %i.ex = load <2 x double>, ptr %23, align 16
  %broadcast.splat = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = load <2 x double>, ptr %i.cn, align 8
  %broadcast.splat434 = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = load double, ptr %i.co, align 16, !tbaa !74, !alias.scope !79
  %broadcast.splatinsert436 = insertelement <2 x double> poison, double %i.ez, i64 0
  %broadcast.splat437 = shufflevector <2 x double> %broadcast.splatinsert436, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next438, %vector.body429 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %index430
  %i.fb = getelementptr [8 x i8], ptr %i.eq, i64 %index430 ; 3 uses
  %wide.load431 = load <2 x double>, ptr %i.fb, align 8, !tbaa !74, !alias.scope !82
  %i.fc = fsub <2 x double> %wide.load431, %broadcast.splat ; 2 uses
  %i.fd = fmul <2 x double> %i.fc, %i.fc
  %i.fe = getelementptr [8 x i8], ptr %i.fb, i64 %i.er
  %wide.load432 = load <2 x double>, ptr %i.fe, align 8, !tbaa !74, !alias.scope !84
  %i.ff = fsub <2 x double> %wide.load432, %broadcast.splat434 ; 2 uses
  %i.fg = fmul <2 x double> %i.ff, %i.ff
  %i.fh = fadd <2 x double> %i.fd, %i.fg
  %i.fi = getelementptr i8, ptr %i.fb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %wide.load435 = load <2 x double>, ptr %i.fi, align 8, !tbaa !74, !alias.scope !86
  %i.fj = fsub <2 x double> %wide.load435, %broadcast.splat437 ; 2 uses
  %i.fk = fmul <2 x double> %i.fj, %i.fj
  %i.fl = fadd <2 x double> %i.fh, %i.fk
  %i.fm = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fl)
  store <2 x double> %i.fm, ptr %i.fa, align 8, !tbaa !74, !alias.scope !88, !noalias !90
  %index.next438 = add nuw i64 %index430, 2       ; 2 uses
  %i.fn = icmp eq i64 %index.next438, %n.vec428
  br i1 %i.fn, label %middle.block439, label %vector.body429, !llvm.loop !91

middle.block439:                                  ; preds = %vector.body429
  %cmp.n440 = icmp eq i64 %i.em, %n.vec428
  br i1 %cmp.n440, label %.loopexit335, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %vector.memcheck408, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, %middle.block439
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck408 ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ], [ %n.vec428, %middle.block439 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.fp = getelementptr [8 x i8], ptr %i.eq, i64 %.05.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !74
  %i.fr = getelementptr [8 x i8], ptr %i.fp, i64 %i.er
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !74
  %i.ft = load <2 x double>, ptr %23, align 16, !tbaa !74
  %i.fu = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.fs, i64 1
  %i.fw = fsub <2 x double> %i.fv, %i.ft          ; 2 uses
  %i.fx = fmul <2 x double> %i.fw, %i.fw          ; 2 uses
  %shift = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.fx, %shift
  %i.fy = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fz = getelementptr i8, ptr %i.fp, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ga = load double, ptr %i.co, align 16, !tbaa !74
  %i.gb = load double, ptr %i.fz, align 8, !tbaa !74
  %i.gc = fsub double %i.gb, %i.ga                ; 2 uses
  %i.gd = fmul double %i.gc, %i.gc
  %i.ge = fadd double %i.fy, %i.gd
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.ge)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.fo, align 8, !tbaa !74
  %i.gf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gf, %i.em
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit335, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !95

.loopexit335:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block439, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl6embree12bone_visibleIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEENS3_IdLi3ELi1ELi0ELi3ELi1EEENS3_IbLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS0_17EmbreeIntersectorERKNS8_IT1_EESN_RNS2_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 1 dereferenceable(1) %23, ptr noundef nonnull align 1 dereferenceable(1) %23, ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.loopexit335
  %i.gg = mul nsw i64 %i.bp, %indvars.iv
  %i.gh = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.gg ; 13 uses
  %i.gi = load ptr, ptr %24, align 8, !tbaa !96   ; 14 uses
  %i.gj = ptrtoaddr ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gh to i64
  %i.gl = sub i64 0, %i.gk
  %i.gm = and i64 %i.gl, 15
  %i.gn = call noundef i64 @llvm.smin.i64(i64 %i.gm, i64 %i.bp) ; 6 uses
  %i.go = sub nsw i64 %i.bp, %i.gn
  %i.gp = and i64 %i.go, -16                      ; 2 uses
  %i.gq = add nsw i64 %i.gp, %i.gn                ; 5 uses
  %i.gr = icmp sgt i64 %i.gn, 0
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.ac
  %xtraiter = and i64 %i.gn, 3                    ; 3 uses
  %i.gs = icmp ult i64 %i.do, 3
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.gn, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.hi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !99
  %i.gw = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gw
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !99
  %i.ha = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.hd, ptr %i.hb, align 1, !tbaa !99
  %i.he = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.he
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !99
  %i.hi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !103

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.hi, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod503 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod503)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.hm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !99
  %i.hm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !104

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.ac
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i155

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i155, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.hn = icmp slt i64 %i.gq, %i.bp
  br i1 %i.hn, label %iter.check, label %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

iter.check:                                       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp samesign ult i64 %i.dw, 8
  %i.ho = sub i64 %i.gj, %i.dy
  %diff.check = icmp ugt i64 %i.ho, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %n.vec402 = and i64 %i.dv, 8                    ; 3 uses
  %i.hp = add i64 %i.gq, %n.vec402
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index403 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next405, %vec.epilog.vector.body ] ; 2 uses
  %i.hq = add i64 %i.gq, %index403                ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %i.gh, i64 %i.hq
  %i.hs = getelementptr inbounds i8, ptr %i.gi, i64 %i.hq
  %wide.load404 = load <8 x i8>, ptr %i.hs, align 1, !tbaa !99
  store <8 x i8> %wide.load404, ptr %i.hr, align 1, !tbaa !99
  %index.next405 = add nuw i64 %index403, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next405, %n.vec402
  br i1 %i.ht, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n406 = icmp eq i64 %i.dw, %n.vec402
  br i1 %cmp.n406, label %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %iter.check, %vec.epilog.middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.gq, %iter.check ], [ %i.hp, %vec.epilog.middle.block ] ; 4 uses
  %i.hu = sub i64 %i.b, %.05.i18.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter504 = and i64 %i.hu, 3                 ; 2 uses
  %lcmp.mod505.not = icmp eq i64 %xtraiter504, 0
  br i1 %lcmp.mod505.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.hy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.hv = getelementptr inbounds i8, ptr %i.gh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.hw = getelementptr inbounds i8, ptr %i.gi, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.hx, ptr %i.hv, align 1, !tbaa !99
  %i.hy = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter504
  br i1 %prol.iter.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !107

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i18.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.hy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.hz = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %i.bp
  %i.ia = icmp ugt i64 %i.hz, -4
  br i1 %i.ia, label %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ib = getelementptr inbounds i8, ptr %i.gh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.ic = getelementptr inbounds i8, ptr %i.gi, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !99
  %i.ie = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.gh, i64 %i.ie
  %i.ig = getelementptr inbounds i8, ptr %i.gi, i64 %i.ie
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !99
  %i.ii = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %i.gh, i64 %i.ii
  %i.ik = getelementptr inbounds i8, ptr %i.gi, i64 %i.ii
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.il, ptr %i.ij, align 1, !tbaa !99
  %i.im = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %i.gh, i64 %i.im
  %i.io = getelementptr inbounds i8, ptr %i.gi, i64 %i.im
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.ip, ptr %i.in, align 1, !tbaa !99
  %i.iq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.iq, %i.bp
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !108

.lr.ph.i.i.i.i.i.i.i.i.i.i155:                    ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i155
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iu, %.lr.ph.i.i.i.i.i.i.i.i.i.i155 ], [ %i.gn, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ir = getelementptr inbounds i8, ptr %i.gh, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.is = getelementptr inbounds i8, ptr %i.gi, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.it = load <2 x i64>, ptr %i.is, align 1, !tbaa !109
  store <2 x i64> %i.it, ptr %i.ir, align 16, !tbaa !109
  %i.iu = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.iv = icmp slt i64 %i.iu, %i.gq
  br i1 %i.iv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i155, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !110

_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @free(ptr noundef %i.gi) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader334, label %bb.ab, !llvm.loop !111

bb.ad:                                            ; preds = %.loopexit335
  %i.iw = landingpad { ptr, i32 }
          cleanup
  %i.ix = load ptr, ptr %24, align 8, !tbaa !96
  call void @free(ptr noundef %i.ix) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %.body153

bb.ae:                                            ; preds = %.lr.ph338, %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit176
  %indvars.iv353 = phi i64 [ 0, %.lr.ph338 ], [ %indvars.iv.next354, %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit176 ] ; 7 uses
  %i.iy = mul i64 %i.b, %indvars.iv353
  %i.iz = add i64 %i.da, %i.iy
  %i.ja = sub i64 0, %i.iz
  %i.jb = and i64 %i.ja, 15
  %smin512 = call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.jb)
  %i.jc = add nsw i64 %smin512, -1
  %i.jd = shl i64 %indvars.iv353, 3
  %i.je = add i64 %i.cy, %i.jd
  %i.jf = shl i64 %indvars.iv353, 3
  %i.jg = add i64 %i.cy, %i.jf
  %i.jh = mul i64 %i.b, %indvars.iv353
  %i.ji = add i64 %i.cx, %i.jh
  %i.jj = sub i64 0, %i.ji
  %i.jk = and i64 %i.jj, 15
  %smin443 = call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.jk)
  %i.jl = sub i64 %i.b, %smin443                  ; 2 uses
  %i.jm = and i64 %i.jl, 15                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  %i.jn = load ptr, ptr %4, align 8, !tbaa !22
  %i.jo = getelementptr [4 x i8], ptr %i.jn, i64 %indvars.iv353 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !70
  %i.jq = sext i32 %i.jp to i64
  %i.jr = load ptr, ptr %2, align 8, !tbaa !67, !noalias !112 ; 2 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.jq ; 3 uses
  %i.jt = load i64, ptr %i.cq, align 8, !tbaa !9  ; 3 uses
  %i.ju = load double, ptr %i.js, align 8, !tbaa !74
  store double %i.ju, ptr %25, align 8, !tbaa !74
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.js, i64 %i.jt
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !74
  store double %i.jw, ptr %i.cr, align 8, !tbaa !74
  %.idx.i.i.i.i.i.i.i.i.i.i156 = shl nsw i64 %i.jt, 4 ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %i.js, i64 %.idx.i.i.i.i.i.i.i.i.i.i156
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !74
  store double %i.jy, ptr %i.cs, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %i.jz = load i64, ptr %i.g, align 8, !tbaa !17
  %i.ka = getelementptr [4 x i8], ptr %i.jo, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !70
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.kc ; 3 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !74
  store double %i.ke, ptr %26, align 8, !tbaa !74
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.jt
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !74
  store double %i.kg, ptr %i.ct, align 8, !tbaa !74
  %i.kh = getelementptr inbounds i8, ptr %i.kd, i64 %.idx.i.i.i.i.i.i.i.i.i.i156
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !74
  store double %i.ki, ptr %i.cu, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl23project_to_line_segmentIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEES4_NS2_IdLin1ELi1ELi0ELin1ELi1EEES5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EERNSJ_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %25, ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.kj = add nsw i64 %indvars.iv353, %i.cv       ; 2 uses
  %i.kk = load ptr, ptr %22, align 8, !tbaa !67, !noalias !115 ; 2 uses
  %i.kl = ptrtoaddr ptr %i.kk to i64              ; 2 uses
  %i.km = load i64, ptr %i.cd, align 8, !tbaa !9, !noalias !115 ; 11 uses
  %i.kn = mul nsw i64 %i.km, %i.kj
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kn ; 14 uses
  %i.kp = load ptr, ptr %28, align 8, !tbaa !118  ; 14 uses
  %i.kq = ptrtoaddr ptr %i.kp to i64              ; 2 uses
  %i.kr = ptrtoint ptr %i.ko to i64               ; 2 uses
  %i.ks = and i64 %i.kr, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ks, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ag, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.kt = lshr exact i64 %i.kr, 3
  %i.ku = and i64 %i.kt, 1
  %i.kv = call i64 @llvm.smin.i64(i64 %i.ku, i64 %i.km)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kv, %bb.ag ], [ %i.km, %bb.af ] ; 11 uses
  %i.kw = sub nsw i64 %i.km, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.kx = sdiv i64 %i.kw, 2
  %i.ky = shl nsw i64 %i.kx, 1                    ; 2 uses
  %i.kz = add nsw i64 %i.ky, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.la = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.la, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader:        ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check488 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check488, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader501, label %vector.memcheck485

vector.memcheck485:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader
  %i.lb = mul i64 %i.km, %i.je
  %i.lc = add i64 %i.lb, %i.kl
  %i.ld = sub i64 %i.kq, %i.lc
  %diff.check486 = icmp ugt i64 %i.ld, -16
  br i1 %diff.check486, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader501, label %vector.ph489

vector.ph489:                                     ; preds = %vector.memcheck485
  %n.vec490 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph489
  %index492 = phi i64 [ 0, %vector.ph489 ], [ %index.next494, %vector.body491 ] ; 3 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %index492
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %index492
  %wide.load493 = load <2 x double>, ptr %i.lf, align 8, !tbaa !74
  %i.lg = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %wide.load493)
  store <2 x double> %i.lg, ptr %i.le, align 8, !tbaa !74
  %index.next494 = add nuw i64 %index492, 2       ; 2 uses
  %i.lh = icmp eq i64 %index.next494, %n.vec490
  br i1 %i.lh, label %middle.block495, label %vector.body491, !llvm.loop !120

middle.block495:                                  ; preds = %vector.body491
  %cmp.n496 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec490
  br i1 %cmp.n496, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader501

.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader501:     ; preds = %vector.memcheck485, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader, %middle.block495
  %.05.i.i.i.i.i.i.i.i.i.i.i163.ph = phi i64 [ 0, %vector.memcheck485 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader ], [ %n.vec490, %middle.block495 ] ; 4 uses
  %i.li = sub nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i163.ph
  %xtraiter506 = and i64 %i.li, 3                 ; 2 uses
  %lcmp.mod507.not = icmp eq i64 %xtraiter506, 0
  br i1 %lcmp.mod507.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader501, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i163.prol = phi i64 [ %i.lm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i163.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader501 ] ; 3 uses
  %prol.iter508 = phi i64 [ %prol.iter508.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader501 ]
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.05.i.i.i.i.i.i.i.i.i.i.i163.prol
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %.05.i.i.i.i.i.i.i.i.i.i.i163.prol
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !74
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = call noundef double @llvm.sqrt.f64(double %i.ll)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.lj, align 8, !tbaa !74
  %i.lm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i163.prol, 1 ; 2 uses
  %prol.iter508.next = add i64 %prol.iter508, 1   ; 2 uses
  %prol.iter508.cmp.not = icmp eq i64 %prol.iter508.next, %xtraiter506
  br i1 %prol.iter508.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol, !llvm.loop !121

.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader501
  %.05.i.i.i.i.i.i.i.i.i.i.i163.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i163.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.preheader501 ], [ %i.lm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol ]
  %i.ln = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i163.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.lo = icmp ugt i64 %i.ln, -4
  br i1 %i.lo, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162

.lr.ph.i.i.i.i.i.i.i.i.i.i.i162:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162
  %.05.i.i.i.i.i.i.i.i.i.i.i163 = phi i64 [ %i.me, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i163.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol.loopexit ] ; 6 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.05.i.i.i.i.i.i.i.i.i.i.i163
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %.05.i.i.i.i.i.i.i.i.i.i.i163
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !74
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.lr)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.lp, align 8, !tbaa !74
  %i.ls = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i163, 1 ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.ls
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.ls
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !74
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = call noundef double @llvm.sqrt.f64(double %i.lv)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.lt, align 8, !tbaa !74
  %i.lw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i163, 2 ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.lw
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.lw
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !74
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = call noundef double @llvm.sqrt.f64(double %i.lz)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.lx, align 8, !tbaa !74
  %i.ma = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i163, 3 ; 2 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.ma
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.ma
  %i.md = load double, ptr %i.mc, align 8, !tbaa !74
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = call noundef double @llvm.sqrt.f64(double %i.md)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.mb, align 8, !tbaa !74
  %i.me = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i163, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i164.3 = icmp eq i64 %i.me, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i164.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162, !llvm.loop !122

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i162, %middle.block495, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.mf = icmp sgt i64 %i.kw, 1
  br i1 %i.mf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i161, label %._crit_edge.i.i.i.i.i.i.i.i.i.i158

._crit_edge.i.i.i.i.i.i.i.i.i.i158:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i161, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.mg = icmp slt i64 %i.kz, %i.km
  br i1 %i.mg, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader, label %.loopexit333

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader:      ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i158
  %i.mh = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %i.ky
  %i.mi = sub i64 %i.km, %i.mh                    ; 3 uses
  %min.iters.check475 = icmp ult i64 %i.mi, 8
  br i1 %min.iters.check475, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader500, label %vector.memcheck472

vector.memcheck472:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader
  %i.mj = mul i64 %i.km, %i.jg
  %i.mk = add i64 %i.mj, %i.kl
  %i.ml = sub i64 %i.kq, %i.mk
  %diff.check473 = icmp ugt i64 %i.ml, -16
  br i1 %diff.check473, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader500, label %vector.ph476

vector.ph476:                                     ; preds = %vector.memcheck472
  %n.vec477 = and i64 %i.mi, -2                   ; 3 uses
  %i.mm = add i64 %i.kz, %n.vec477
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph476
  %index479 = phi i64 [ 0, %vector.ph476 ], [ %index.next481, %vector.body478 ] ; 2 uses
  %i.mn = add i64 %i.kz, %index479                ; 2 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.mn
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.mn
  %wide.load480 = load <2 x double>, ptr %i.mp, align 8, !tbaa !74
  %i.mq = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %wide.load480)
  store <2 x double> %i.mq, ptr %i.mo, align 8, !tbaa !74
  %index.next481 = add nuw i64 %index479, 2       ; 2 uses
  %i.mr = icmp eq i64 %index.next481, %n.vec477
  br i1 %i.mr, label %middle.block482, label %vector.body478, !llvm.loop !123

middle.block482:                                  ; preds = %vector.body478
  %cmp.n483 = icmp eq i64 %i.mi, %n.vec477
  br i1 %cmp.n483, label %.loopexit333, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader500

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader500:   ; preds = %vector.memcheck472, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader, %middle.block482
  %.05.i18.i.i.i.i.i.i.i.i.i.i160.ph = phi i64 [ %i.kz, %vector.memcheck472 ], [ %i.kz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader ], [ %i.mm, %middle.block482 ] ; 4 uses
  %i.ms = sub i64 %i.km, %.05.i18.i.i.i.i.i.i.i.i.i.i160.ph
  %xtraiter509 = and i64 %i.ms, 3                 ; 2 uses
  %lcmp.mod510.not = icmp eq i64 %xtraiter509, 0
  br i1 %lcmp.mod510.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader500, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i160.prol = phi i64 [ %i.mw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i160.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader500 ] ; 3 uses
  %prol.iter511 = phi i64 [ %prol.iter511.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader500 ]
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i160.prol
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i160.prol
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !74
  %.scalar.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.prol = call noundef double @llvm.sqrt.f64(double %i.mv)
  store double %.scalar.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.mt, align 8, !tbaa !74
  %i.mw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i160.prol, 1 ; 2 uses
  %prol.iter511.next = add i64 %prol.iter511, 1   ; 2 uses
  %prol.iter511.cmp.not = icmp eq i64 %prol.iter511.next, %xtraiter509
  br i1 %prol.iter511.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol, !llvm.loop !124

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol.loopexit:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader500
  %.05.i18.i.i.i.i.i.i.i.i.i.i160.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i160.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.preheader500 ], [ %i.mw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol ]
  %i.mx = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i160.ph, %i.km
  %i.my = icmp ugt i64 %i.mx, -4
  br i1 %i.my, label %.loopexit333, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159:                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159
  %.05.i18.i.i.i.i.i.i.i.i.i.i160 = phi i64 [ %i.no, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i160.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol.loopexit ] ; 6 uses
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i160
  %i.na = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i160
  %i.nb = load double, ptr %i.na, align 8, !tbaa !74
  %.scalar.i.i.i.i19.i.i.i.i.i.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.nb)
  store double %.scalar.i.i.i.i19.i.i.i.i.i.i.i.i.i.i, ptr %i.mz, align 8, !tbaa !74
  %i.nc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i160, 1 ; 2 uses
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.nc
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.nc
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !74
  %.scalar.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.1 = call noundef double @llvm.sqrt.f64(double %i.nf)
  store double %.scalar.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.1, ptr %i.nd, align 8, !tbaa !74
  %i.ng = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i160, 2 ; 2 uses
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.ng
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.ng
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !74
  %.scalar.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.2 = call noundef double @llvm.sqrt.f64(double %i.nj)
  store double %.scalar.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.2, ptr %i.nh, align 8, !tbaa !74
  %i.nk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i160, 3 ; 2 uses
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.nk
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.nk
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !74
  %.scalar.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.3 = call noundef double @llvm.sqrt.f64(double %i.nn)
  store double %.scalar.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.3, ptr %i.nl, align 8, !tbaa !74
  %i.no = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i160, 4 ; 2 uses
  %exitcond.not.i20.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.no, %i.km
  br i1 %exitcond.not.i20.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit333, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159, !llvm.loop !125

.lr.ph.i.i.i.i.i.i.i.i.i.i161:                    ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i161
  %.022.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nt, %.lr.ph.i.i.i.i.i.i.i.i.i.i161 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.np = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %.022.i.i.i.i.i.i.i.i.i.i
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %.022.i.i.i.i.i.i.i.i.i.i
  %i.nr = load <2 x double>, ptr %i.nq, align 1, !tbaa !109
  %i.ns = call noundef <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.nr)
  store <2 x double> %i.ns, ptr %i.np, align 16, !tbaa !109
  %i.nt = add nsw i64 %.022.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.nu = icmp slt i64 %i.nt, %i.kz
  br i1 %i.nu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i161, label %._crit_edge.i.i.i.i.i.i.i.i.i.i158, !llvm.loop !126

.loopexit333:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i159, %middle.block482, %._crit_edge.i.i.i.i.i.i.i.i.i.i158
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl6embree12bone_visibleIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEENS3_IdLi3ELi1ELi0ELi3ELi1EEENS3_IbLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS0_17EmbreeIntersectorERKNS8_IT1_EESN_RNS2_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 1 dereferenceable(1) %25, ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef nonnull align 8 dereferenceable(16) %29)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %.loopexit333
  %i.nv = mul nsw i64 %i.bp, %i.kj
  %i.nw = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.nv ; 13 uses
  %i.nx = load ptr, ptr %29, align 8, !tbaa !96   ; 14 uses
  %i.ny = ptrtoaddr ptr %i.nx to i64
  %i.nz = ptrtoint ptr %i.nw to i64               ; 2 uses
  %i.oa = sub i64 0, %i.nz
  %i.ob = and i64 %i.oa, 15
  %i.oc = call noundef i64 @llvm.smin.i64(i64 %i.ob, i64 %i.bp) ; 6 uses
  %i.od = sub nsw i64 %i.bp, %i.oc
  %i.oe = and i64 %i.od, -16                      ; 2 uses
  %i.of = add nsw i64 %i.oe, %i.oc                ; 5 uses
  %i.og = icmp sgt i64 %i.oc, 0
  br i1 %i.og, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i165

.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.preheader:        ; preds = %bb.ah
  %xtraiter513 = and i64 %i.oc, 3                 ; 3 uses
  %i.oh = icmp ult i64 %i.jc, 3
  br i1 %i.oh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.preheader.new:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.preheader
  %unroll_iter517 = and i64 %i.oc, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173

.lr.ph.i.i.i.i.i.i.i.i.i.i.i173:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.preheader.new
  %.05.i.i.i.i.i.i.i.i.i.i.i174 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.preheader.new ], [ %i.ox, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173 ] ; 6 uses
  %niter518 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.preheader.new ], [ %niter518.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173 ]
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i174
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i174
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.ok, ptr %i.oi, align 1, !tbaa !99
  %i.ol = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i174, 1 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ol
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.oo, ptr %i.om, align 1, !tbaa !99
  %i.op = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i174, 2 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.op
  %i.os = load i8, ptr %i.or, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.os, ptr %i.oq, align 1, !tbaa !99
  %i.ot = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i174, 3 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ot
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.ow, ptr %i.ou, align 1, !tbaa !99
  %i.ox = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i174, 4 ; 2 uses
  %niter518.next.3 = add i64 %niter518, 4         ; 2 uses
  %niter518.ncmp.3 = icmp eq i64 %niter518.next.3, %unroll_iter517
  br i1 %niter518.ncmp.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i165.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173, !llvm.loop !103

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i165.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173
  %lcmp.mod515.not = icmp eq i64 %xtraiter513, 0
  br i1 %lcmp.mod515.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i165, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil.preheader:   ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i165.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i174.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.preheader ], [ %i.ox, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i165.loopexit.unr-lcssa ]
  %lcmp.mod516 = icmp ne i64 %xtraiter513, 0
  call void @llvm.assume(i1 %lcmp.mod516)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i174.epil = phi i64 [ %i.pb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil ], [ %.05.i.i.i.i.i.i.i.i.i.i.i174.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil.preheader ] ; 3 uses
  %epil.iter514 = phi i64 [ %epil.iter514.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil.preheader ]
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i174.epil
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i174.epil
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.pa, ptr %i.oy, align 1, !tbaa !99
  %i.pb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i174.epil, 1
  %epil.iter514.next = add i64 %epil.iter514, 1   ; 2 uses
  %epil.iter514.cmp.not = icmp eq i64 %epil.iter514.next, %xtraiter513
  br i1 %epil.iter514.cmp.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i165, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil, !llvm.loop !127

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i165: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i165.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i173.epil, %bb.ah
  %.not.i.i.i.i.i.i.i.i.i.i166 = icmp eq i64 %i.oe, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i166, label %._crit_edge.i.i.i.i.i.i.i.i.i.i169, label %.lr.ph.i.i.i.i.i.i.i.i.i.i167

._crit_edge.i.i.i.i.i.i.i.i.i.i169:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i167, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i165
  %i.pc = icmp slt i64 %i.of, %i.bp
  br i1 %i.pc, label %iter.check459, label %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit176

iter.check459:                                    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i169
  %min.iters.check445 = icmp samesign ult i64 %i.jm, 8
  %i.pd = sub i64 %i.ny, %i.nz
  %diff.check442 = icmp ugt i64 %i.pd, -32
  %or.cond498 = select i1 %min.iters.check445, i1 true, i1 %diff.check442
  br i1 %or.cond498, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.preheader, label %vec.epilog.ph463

vec.epilog.ph463:                                 ; preds = %iter.check459
  %n.vec464 = and i64 %i.jl, 8                    ; 3 uses
  %i.pe = add i64 %i.of, %n.vec464
  br label %vec.epilog.vector.body465

vec.epilog.vector.body465:                        ; preds = %vec.epilog.vector.body465, %vec.epilog.ph463
  %index466 = phi i64 [ 0, %vec.epilog.ph463 ], [ %index.next468, %vec.epilog.vector.body465 ] ; 2 uses
  %i.pf = add i64 %i.of, %index466                ; 2 uses
  %i.pg = getelementptr inbounds i8, ptr %i.nw, i64 %i.pf
  %i.ph = getelementptr inbounds i8, ptr %i.nx, i64 %i.pf
  %wide.load467 = load <8 x i8>, ptr %i.ph, align 1, !tbaa !99
  store <8 x i8> %wide.load467, ptr %i.pg, align 1, !tbaa !99
  %index.next468 = add nuw i64 %index466, 8       ; 2 uses
  %i.pi = icmp eq i64 %index.next468, %n.vec464
  br i1 %i.pi, label %vec.epilog.middle.block469, label %vec.epilog.vector.body465, !llvm.loop !128

vec.epilog.middle.block469:                       ; preds = %vec.epilog.vector.body465
  %cmp.n470 = icmp eq i64 %i.jm, %n.vec464
  br i1 %cmp.n470, label %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit176, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.preheader

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.preheader:      ; preds = %iter.check459, %vec.epilog.middle.block469
  %.05.i18.i.i.i.i.i.i.i.i.i.i171.ph = phi i64 [ %i.of, %iter.check459 ], [ %i.pe, %vec.epilog.middle.block469 ] ; 4 uses
  %i.pj = sub i64 %i.b, %.05.i18.i.i.i.i.i.i.i.i.i.i171.ph
  %xtraiter519 = and i64 %i.pj, 3                 ; 2 uses
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.preheader, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i171.prol = phi i64 [ %i.pn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i171.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.preheader ] ; 3 uses
  %prol.iter521 = phi i64 [ %prol.iter521.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.preheader ]
  %i.pk = getelementptr inbounds i8, ptr %i.nw, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i171.prol
  %i.pl = getelementptr inbounds i8, ptr %i.nx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i171.prol
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.pm, ptr %i.pk, align 1, !tbaa !99
  %i.pn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i171.prol, 1 ; 2 uses
  %prol.iter521.next = add i64 %prol.iter521, 1   ; 2 uses
  %prol.iter521.cmp.not = icmp eq i64 %prol.iter521.next, %xtraiter519
  br i1 %prol.iter521.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol, !llvm.loop !129

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol.loopexit:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.preheader
  %.05.i18.i.i.i.i.i.i.i.i.i.i171.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i171.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.preheader ], [ %i.pn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol ]
  %i.po = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i171.ph, %i.bp
  %i.pp = icmp ugt i64 %i.po, -4
  br i1 %i.pp, label %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit176, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170:                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170
  %.05.i18.i.i.i.i.i.i.i.i.i.i171 = phi i64 [ %i.qf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i171.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol.loopexit ] ; 6 uses
  %i.pq = getelementptr inbounds i8, ptr %i.nw, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i171
  %i.pr = getelementptr inbounds i8, ptr %i.nx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i171
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.ps, ptr %i.pq, align 1, !tbaa !99
  %i.pt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i171, 1 ; 2 uses
  %i.pu = getelementptr inbounds i8, ptr %i.nw, i64 %i.pt
  %i.pv = getelementptr inbounds i8, ptr %i.nx, i64 %i.pt
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.pw, ptr %i.pu, align 1, !tbaa !99
  %i.px = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i171, 2 ; 2 uses
  %i.py = getelementptr inbounds i8, ptr %i.nw, i64 %i.px
  %i.pz = getelementptr inbounds i8, ptr %i.nx, i64 %i.px
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.qa, ptr %i.py, align 1, !tbaa !99
  %i.qb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i171, 3 ; 2 uses
  %i.qc = getelementptr inbounds i8, ptr %i.nw, i64 %i.qb
  %i.qd = getelementptr inbounds i8, ptr %i.nx, i64 %i.qb
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !99, !range !101, !noundef !102
  store i8 %i.qe, ptr %i.qc, align 1, !tbaa !99
  %i.qf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i171, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i172.3 = icmp eq i64 %i.qf, %i.bp
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i172.3, label %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit176, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170, !llvm.loop !130

.lr.ph.i.i.i.i.i.i.i.i.i.i167:                    ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i165, %.lr.ph.i.i.i.i.i.i.i.i.i.i167
  %.021.i.i.i.i.i.i.i.i.i.i168 = phi i64 [ %i.qj, %.lr.ph.i.i.i.i.i.i.i.i.i.i167 ], [ %i.oc, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IbLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIbbEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i165 ] ; 3 uses
  %i.qg = getelementptr inbounds i8, ptr %i.nw, i64 %.021.i.i.i.i.i.i.i.i.i.i168
  %i.qh = getelementptr inbounds i8, ptr %i.nx, i64 %.021.i.i.i.i.i.i.i.i.i.i168
  %i.qi = load <2 x i64>, ptr %i.qh, align 1, !tbaa !109
  store <2 x i64> %i.qi, ptr %i.qg, align 16, !tbaa !109
  %i.qj = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i168, 16 ; 2 uses
  %i.qk = icmp slt i64 %i.qj, %i.of
  br i1 %i.qk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i167, label %._crit_edge.i.i.i.i.i.i.i.i.i.i169, !llvm.loop !110

_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit176: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i170, %vec.epilog.middle.block469, %._crit_edge.i.i.i.i.i.i.i.i.i.i169
  call void @free(ptr noundef %i.nx) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  %i.ql = load ptr, ptr %28, align 8, !tbaa !118
  call void @free(ptr noundef %i.ql) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.qm = load ptr, ptr %27, align 8, !tbaa !118
  call void @free(ptr noundef %i.qm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %exitcond357.not = icmp eq i64 %indvars.iv.next354, %wide.trip.count356
  br i1 %exitcond357.not, label %._crit_edge, label %bb.ae, !llvm.loop !131

bb.ai:                                            ; preds = %bb.ae
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %.loopexit333
  %i.qo = landingpad { ptr, i32 }
          cleanup
  %i.qp = load ptr, ptr %29, align 8, !tbaa !96
  call void @free(ptr noundef %i.qp) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn126.pn.pn = phi { ptr, i32 } [ %i.qo, %bb.aj ], [ %i.qn, %bb.ai ]
  %i.qq = load ptr, ptr %28, align 8, !tbaa !118
  call void @free(ptr noundef %i.qq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.qr = load ptr, ptr %27, align 8, !tbaa !118
  call void @free(ptr noundef %i.qr) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %.body153

._crit_edge:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IbLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit176, %.preheader334
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  store i64 %i.bp, ptr %31, align 8, !tbaa !32, !alias.scope !132
  %i.qs = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.bq, ptr %i.qs, align 8, !tbaa !32, !alias.scope !132
  %i.qt = getelementptr inbounds nuw i8, ptr %31, i64 16
  store double 0.000000e+00, ptr %i.qt, align 8, !tbaa !139, !alias.scope !132
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %33, i64 noundef %i.bp, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.an

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.al
  %i.qu = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !141
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.qv, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %33, i64 noundef %i.bp, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.an

.noexc.i.i:                                       ; preds = %bb.am
  %.pr.i.i.i.i.i.i = load i64, ptr %i.qu, align 8, !tbaa !141
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.qw = phi i64 [ %i.bp, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i ], [ %.pr.i.i.i.i.i.i, %.noexc.i.i ] ; 2 uses
  %i.qx = icmp slt i64 %i.qw, 1
  br i1 %i.qx, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.qy = load ptr, ptr %33, align 8, !tbaa !118
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.qw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.qy, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !74
  br label %.loopexit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %.body180

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl3minIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEiRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %22, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %.preheader unwind label %bb.ar

.preheader:                                       ; preds = %.loopexit
  %i.ra = icmp sgt i32 %i.c, 0
  br i1 %i.ra, label %.lr.ph340, label %._crit_edge341

.lr.ph340:                                        ; preds = %.preheader
  %i.rb = load ptr, ptr %34, align 8, !tbaa !69
  %i.rc = load ptr, ptr %30, align 8, !tbaa !67
  %i.rd = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !9
  %i.rf = load ptr, ptr %32, align 8
  %i.rg = load ptr, ptr %33, align 8
  %wide.trip.count361 = and i64 %i.b, 2147483647
  br label %bb.as

._crit_edge341:                                   ; preds = %bb.au, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  store i8 0, ptr %35, align 8, !tbaa !142
  %i.rh = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  store i64 -1, ptr %i.rh, align 8, !tbaa !144
  %i.ri = getelementptr inbounds nuw i8, ptr %35, i64 16
end_hunk_0
