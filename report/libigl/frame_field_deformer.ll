inline.NumInlined: 7666
inline.NumDeleted: 3720
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN5Eigen22SimplicialCholeskyBaseINS_18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb1EEEvRKS3_:bb.a
_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161: ; preds = %bb.o, %bb.x, %bb.n
  %.pn136.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn187, %bb.x ]
  br i1 %i.u, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

bb.y:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161
  call void @free(ptr noundef nonnull %i.t) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161, %bb.y
  resume { ptr, i32 } %.pn136.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen11AMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i8 0, ptr %3, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #31 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !66
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !82
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #27
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit:         ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 4
  invoke void @_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  invoke void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !66
  call void @free(ptr noundef %i.i) #27
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !67
  call void @free(ptr noundef %i.j) #27
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.l) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.o) #28
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.i:                                             ; preds = %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal24permute_symm_to_fullsymmILi1ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT0_RNS2_INS4_6ScalarEXT1_ENS4_12StorageIndexEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !263  ; 25 uses
  %.not.i.i.not = icmp eq i64 %i.b, 0
  %i.c = icmp sgt i64 %i.b, 0                     ; 3 uses
  br i1 %i.c, label %bb.b, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.d, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.b
  %i.e = shl nuw i64 %i.b, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.e) ; 2 uses
  %i.f = icmp eq ptr %calloc, null
  br i1 %i.f, label %.invoke, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !82
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.a
  %.sroa.0126.2144 = phi ptr [ null, %bb.a ], [ %calloc, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ] ; 30 uses
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.b, i64 noundef %i.b)
          to label %.preheader147 unwind label %bb.h

.preheader147:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  br i1 %i.c, label %.lr.ph154, label %._crit_edge155

.lr.ph154:                                        ; preds = %.preheader147
  %.not102 = icmp eq ptr %2, null                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br label %bb.i

._crit_edge155:                                   ; preds = %.preheader147
  br i1 %.not.i.i.not, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %._crit_edge155.thread

._crit_edge155.thread:                            ; preds = %._crit_edge, %._crit_edge155
  %i.o = sdiv i64 %i.b, 8
  %i.p = shl nsw i64 %i.o, 3                      ; 3 uses
  %i.q = sdiv i64 %i.b, 4                         ; 2 uses
  %i.r = shl nsw i64 %i.q, 2                      ; 5 uses
  %.off.i.i.i = add i64 %i.b, 3
  %.not.i.i.i = icmp ult i64 %.off.i.i.i, 7
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge155.thread
  %i.s = load <2 x i64>, ptr %.sroa.0126.2144, align 16, !tbaa !91 ; 2 uses
  %i.t = icmp sgt i64 %i.b, 7
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0126.2144, i64 16
  %i.v = load <4 x i32>, ptr %i.u, align 16, !tbaa !91 ; 2 uses
  %i.w = bitcast <2 x i64> %i.s to <4 x i32>      ; 2 uses
  %i.x = icmp samesign ugt i64 %i.b, 15
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.d
  %.lcssa.i.i.i = phi <4 x i32> [ %i.v, %bb.d ], [ %i.ai, %.lr.ph.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i = phi <4 x i32> [ %i.w, %bb.d ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.y = add <4 x i32> %.sroa.064.0.lcssa.i.i.i, %.lcssa.i.i.i ; 2 uses
  %i.z = bitcast <4 x i32> %i.y to <2 x i64>
  %i.aa = icmp sgt i64 %i.r, %i.p
  br i1 %i.aa, label %bb.e, label %bb.f

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.05775.i.i.i = phi i64 [ %.057.i.i.i, %.lr.ph.i.i.i ], [ 8, %bb.d ] ; 3 uses
  %.057.in74.i.i.i = phi i64 [ %.05775.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %.sroa.064.073.i.i.i = phi <4 x i32> [ %i.ae, %.lr.ph.i.i.i ], [ %i.w, %bb.d ]
  %i.ab = phi <4 x i32> [ %i.ai, %.lr.ph.i.i.i ], [ %i.v, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.05775.i.i.i
  %i.ad = load <4 x i32>, ptr %i.ac, align 16, !tbaa !91
  %i.ae = add <4 x i32> %i.ad, %.sroa.064.073.i.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.057.in74.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load <4 x i32>, ptr %i.ag, align 16, !tbaa !91
  %i.ai = add <4 x i32> %i.ah, %i.ab              ; 2 uses
  %.057.i.i.i = add nuw nsw i64 %.05775.i.i.i, 8  ; 2 uses
  %i.aj = icmp slt i64 %.057.i.i.i, %i.p
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !396

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %i.p
  %i.al = load <4 x i32>, ptr %i.ak, align 16, !tbaa !91
  %i.am = add <4 x i32> %i.al, %i.y
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i, %bb.c
  %.sroa.064.2.i.i.i = phi <2 x i64> [ %i.s, %bb.c ], [ %i.an, %bb.e ], [ %i.z, %._crit_edge.i.i.i ] ; 2 uses
  %i.ao = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32>
  %i.ap = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32>
  %i.aq = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ar = add <4 x i32> %i.aq, %i.ao              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ar, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ar, %shift ; 2 uses
  %3 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.as = icmp slt i64 %i.r, %i.b
  br i1 %i.as, label %.lr.ph80.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph80.i.i.i.preheader:                         ; preds = %bb.f
  %i.at = shl nsw i64 %i.q, 2
  %i.au = sub i64 %i.b, %i.at                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 8
  br i1 %min.iters.check, label %.lr.ph80.i.i.i.preheader238, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.i.i.i.preheader
  %n.vec = and i64 %i.au, -8                      ; 3 uses
  %i.av = add i64 %i.r, %n.vec
  %i.aw = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ax = getelementptr [4 x i8], ptr %.sroa.0126.2144, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aw, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi215 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <4 x i32>, ptr %i.ay, align 4, !tbaa !95
  %wide.load216 = load <4 x i32>, ptr %i.az, align 4, !tbaa !95
  %i.ba = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bb = add <4 x i32> %wide.load216, %vec.phi215 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i.preheader238

.lr.ph80.i.i.i.preheader238:                      ; preds = %.lr.ph80.i.i.i.preheader, %middle.block
  %.05578.i.i.i.ph = phi i64 [ %i.r, %.lr.ph80.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.177.i.i.i.ph = phi i32 [ %3, %.lr.ph80.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph80.i.i.i

.lr.ph80.i.i.i:                                   ; preds = %.lr.ph80.i.i.i.preheader238, %.lr.ph80.i.i.i
  %.05578.i.i.i = phi i64 [ %i.bh, %.lr.ph80.i.i.i ], [ %.05578.i.i.i.ph, %.lr.ph80.i.i.i.preheader238 ] ; 2 uses
  %.177.i.i.i = phi i32 [ %i.bg, %.lr.ph80.i.i.i ], [ %.177.i.i.i.ph, %.lr.ph80.i.i.i.preheader238 ]
  %i.be = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %.05578.i.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !95
  %i.bg = add nsw i32 %i.bf, %.177.i.i.i          ; 2 uses
  %i.bh = add nsw i64 %.05578.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %i.b
  br i1 %exitcond.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i, !llvm.loop !398

bb.g:                                             ; preds = %._crit_edge155.thread
  %i.bi = load i32, ptr %.sroa.0126.2144, align 4, !tbaa !95 ; 3 uses
  %i.bj = icmp sgt i64 %i.b, 1
  br i1 %i.bj, label %.lr.ph85.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph85.i.i.i.preheader:                         ; preds = %bb.g
  %i.bk = add nsw i64 %i.b, -1                    ; 2 uses
  %min.iters.check218 = icmp ult i64 %i.b, 9
  br i1 %min.iters.check218, label %.lr.ph85.i.i.i.preheader235, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph85.i.i.i.preheader
  %n.vec220 = and i64 %i.bk, -8                   ; 3 uses
  %i.bl = or disjoint i64 %n.vec220, 1
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bi, i64 0
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next227, %vector.body221 ] ; 2 uses
  %vec.phi223 = phi <4 x i32> [ %i.bm, %vector.ph219 ], [ %i.bq, %vector.body221 ]
  %vec.phi224 = phi <4 x i32> [ zeroinitializer, %vector.ph219 ], [ %i.br, %vector.body221 ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %index222 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %wide.load225 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !95
  %wide.load226 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !95
  %i.bq = add <4 x i32> %wide.load225, %vec.phi223 ; 2 uses
  %i.br = add <4 x i32> %wide.load226, %vec.phi224 ; 2 uses
  %index.next227 = add nuw i64 %index222, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.bs, label %middle.block228, label %vector.body221, !llvm.loop !399

middle.block228:                                  ; preds = %vector.body221
  %bin.rdx229 = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx229) ; 2 uses
  %cmp.n230 = icmp eq i64 %i.bk, %n.vec220
  br i1 %cmp.n230, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i.preheader235

.lr.ph85.i.i.i.preheader235:                      ; preds = %.lr.ph85.i.i.i.preheader, %middle.block228
  %.083.i.i.i.ph = phi i64 [ 1, %.lr.ph85.i.i.i.preheader ], [ %i.bl, %middle.block228 ]
  %.282.i.i.i.ph = phi i32 [ %i.bi, %.lr.ph85.i.i.i.preheader ], [ %i.bt, %middle.block228 ]
  br label %.lr.ph85.i.i.i

.lr.ph85.i.i.i:                                   ; preds = %.lr.ph85.i.i.i.preheader235, %.lr.ph85.i.i.i
  %.083.i.i.i = phi i64 [ %i.bx, %.lr.ph85.i.i.i ], [ %.083.i.i.i.ph, %.lr.ph85.i.i.i.preheader235 ] ; 2 uses
  %.282.i.i.i = phi i32 [ %i.bw, %.lr.ph85.i.i.i ], [ %.282.i.i.i.ph, %.lr.ph85.i.i.i.preheader235 ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.083.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !95
  %i.bw = add nsw i32 %i.bv, %.282.i.i.i          ; 2 uses
  %i.bx = add nuw nsw i64 %.083.i.i.i, 1          ; 2 uses
  %exitcond92.not.i.i.i = icmp eq i64 %i.bx, %i.b
  br i1 %exitcond92.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !400

bb.h:                                             ; preds = %.invoke, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %.sroa.0126.0 = phi ptr [ %.sroa.0126.2144, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit ], [ null, %.invoke ]
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.i:                                             ; preds = %.lr.ph154, %._crit_edge
  %.084152 = phi i64 [ 0, %.lr.ph154 ], [ %i.dd, %._crit_edge ] ; 10 uses
  br i1 %.not102, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.084152
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !95
  %i.cb = sext i32 %i.ca to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cc = phi i64 [ %i.cb, %bb.j ], [ %.084152, %bb.i ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.084152 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !95
  %i.cf = sext i32 %i.ce to i64                   ; 4 uses
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr i8, ptr %i.cd, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !95
  %i.ci = sext i32 %i.ch to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.m:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.084152
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !95
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add nsw i64 %i.cl, %i.cf
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.l, %bb.m
  %.sink.i = phi i64 [ %i.ci, %bb.l ], [ %i.cm, %bb.m ] ; 3 uses
  %i.cn = icmp sgt i64 %.sink.i, %i.cf
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.co = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %i.cc ; 4 uses
  br i1 %.not102, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.084152 ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.q
  %.sroa.9.0151.us = phi i64 [ %i.dc, %bb.q ], [ %i.cf, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.sroa.9.0151.us
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !95
  %i.cs = sext i32 %i.cr to i64                   ; 3 uses
  %i.ct = icmp eq i64 %.084152, %i.cs
  br i1 %i.ct, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.cu = icmp slt i64 %.084152, %i.cs
  br i1 %i.cu, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %i.cs ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !95
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !95
  %i.cy = load i32, ptr %i.co, align 4, !tbaa !95
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.co, align 4, !tbaa !95
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.da = load i32, ptr %i.cp, align 4, !tbaa !95
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cp, align 4, !tbaa !95
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dc = add nsw i64 %.sroa.9.0151.us, 1         ; 2 uses
  %exitcond173.not = icmp eq i64 %i.dc, %.sink.i
  br i1 %exitcond173.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !401

._crit_edge:                                      ; preds = %bb.u, %bb.q, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.dd = add nuw nsw i64 %.084152, 1             ; 2 uses
  %exitcond174.not = icmp eq i64 %i.dd, %i.b
  br i1 %exitcond174.not, label %._crit_edge155.thread, label %bb.i, !llvm.loop !402

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.u
  %.sroa.9.0151 = phi i64 [ %i.du, %bb.u ], [ %i.cf, %.lr.ph ] ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.sroa.9.0151
  %i.df = load i32, ptr %i.de, align 4, !tbaa !95
  %i.dg = sext i32 %i.df to i64                   ; 3 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !95
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %i.dk = icmp eq i64 %.084152, %i.dg
  br i1 %i.dk, label %bb.r, label %bb.s
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_:bb.a
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !95 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !95 ; 2 uses
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph.us.preheader.epil, label %._crit_edge17

.lr.ph.us.preheader.epil:                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader
  %i.bk = sext i32 %i.bi to i64
  %i.bl = sext i32 %i.bg to i64                   ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 3
  %scevgep20.epil = getelementptr i8, ptr %i.n, i64 %i.bm
  %i.bn = sub nsw i64 %i.bk, %i.bl
  %i.bo = shl nsw i64 %i.bn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep20.epil, i8 0, i64 %i.bo, i1 false), !tbaa !84
  br label %._crit_edge17

._crit_edge17.loopexit31.unr-lcssa:               ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge17, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader: ; preds = %._crit_edge17.loopexit31.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader ], [ %indvars.iv.next.1, %._crit_edge17.loopexit31.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod32)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !95 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.epil, label %._crit_edge17

.lr.ph.preheader.epil:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !95
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 3
  %scevgep.epil = getelementptr i8, ptr %i.n, i64 %i.bw
  %i.bx = shl nuw nsw i64 %i.bs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.bx, i1 false), !tbaa !84
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit31.unr-lcssa, %.lr.ph.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader, %._crit_edge17.loopexit.unr-lcssa, %.lr.ph.us.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i8 0, ptr %4, align 8, !tbaa !408, !alias.scope !410
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.by, align 8, !tbaa !135, !alias.scope !410
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %0, ptr %i.bz, align 8, !tbaa !135, !alias.scope !410
  %i.ca = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %._crit_edge17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !66
  call void @free(ptr noundef %i.cb) #27
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !67
  call void @free(ptr noundef %i.cc) #27
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !68 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !69 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #28
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.k:                                             ; preds = %._crit_edge17
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.cj, %bb.k ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 32 uses
  %i.c = trunc i64 %i.b to i32                    ; 17 uses
  %i.d = sitofp i32 %i.c to double
  %i.e = tail call double @sqrt(double noundef %i.d) #27
  %i.f = fmul double %i.e, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %.sroa.speculated548 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 16)
  %i.h = add nsw i32 %i.c, -2
  %.sroa.speculated543 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated548, i32 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67   ; 13 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66   ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.b
  %i.o = load i32, ptr %i.n, align 4, !tbaa !95
  %i.p = load i32, ptr %i.m, align 4, !tbaa !95
  %i.q = sub nsw i32 %i.o, %i.p
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.b, 0
  br i1 %i.r, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.t = and i64 %i.s, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = lshr exact i64 %i.s, 2
  %i.v = sub nsw i64 0, %i.u
  %i.w = and i64 %i.v, 3
  %i.x = tail call i64 @llvm.smin.i64(i64 %i.w, i64 %i.b)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %bb.e ], [ %i.b, %bb.d ] ; 12 uses
  %i.y = sub nsw i64 %i.b, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.z = sdiv i64 %i.y, 8
  %i.aa = shl nsw i64 %i.z, 3                     ; 2 uses
  %i.ab = sdiv i64 %i.y, 4                        ; 2 uses
  %i.ac = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.ad = add nsw i64 %i.aa, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ae = add nsw i64 %i.ac, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.y, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.af = getelementptr [4 x i8], ptr %i.j, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.af, align 1, !tbaa !91 ; 2 uses
  %i.ah = icmp sgt i64 %i.y, 7
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %i.aj = load <4 x i32>, ptr %i.ai, align 1, !tbaa !91 ; 2 uses
  %i.ak = bitcast <2 x i64> %i.ag to <4 x i32>    ; 2 uses
  %i.al = icmp samesign ugt i64 %i.y, 15
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.aj, %bb.g ], [ %i.aw, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ak, %bb.g ], [ %i.as, %.lr.ph.i.i.i.i ]
  %i.am = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  %i.ao = icmp sgt i64 %i.ac, %i.aa
  br i1 %i.ao, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.as, %.lr.ph.i.i.i.i ], [ %i.ak, %.lr.ph.preheader.i.i.i.i ]
  %i.ap = phi <4 x i32> [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i.i ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05780.i.i.i.i
  %i.ar = load <4 x i32>, ptr %i.aq, align 1, !tbaa !91
  %i.as = add <4 x i32> %i.ar, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.j, i64 %.057.in79.i.i.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %i.av = load <4 x i32>, ptr %i.au, align 1, !tbaa !91
  %i.aw = add <4 x i32> %i.av, %i.ap              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.ax = icmp slt i64 %.057.i.i.i.i, %i.ad
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !413

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ad
  %i.az = load <4 x i32>, ptr %i.ay, align 1, !tbaa !91
  %i.ba = add <4 x i32> %i.az, %i.am
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ag, %bb.f ], [ %i.bb, %bb.h ], [ %i.an, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bc = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bd = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.be = shufflevector <4 x i32> %i.bd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bf = add <4 x i32> %i.be, %i.bc              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bf, %shift ; 2 uses
  %2 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bg = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader1355, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.bh = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bh, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi1169 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load = load <4 x i32>, ptr %i.bi, align 4, !tbaa !95
  %wide.load1170 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !95
  %i.bk = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bl = add <4 x i32> %wide.load1170, %vec.phi1169 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !414

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bl, %i.bk
  %i.bn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader1355

.lr.ph85.i.i.i.i.preheader1355:                   ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %2, %.lr.ph85.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %2, %bb.i ], [ %i.bn, %middle.block ], [ %i.cd, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bo = icmp slt i64 %i.ae, %i.b
  br i1 %i.bo, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bp = shl nsw i64 %i.ab, 2
  %i.bq = add i64 %.0.i.i.i.i.i.i.i.i, %i.bp
  %i.br = sub i64 %i.b, %i.bq                     ; 3 uses
  %min.iters.check1172 = icmp ult i64 %i.br, 8
  br i1 %min.iters.check1172, label %.lr.ph89.i.i.i.i.preheader1350, label %vector.ph1173

vector.ph1173:                                    ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec1174 = and i64 %i.br, -8                  ; 3 uses
  %i.bs = add i64 %i.ae, %n.vec1174
  %i.bt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.bu = getelementptr [4 x i8], ptr %i.j, i64 %i.ae
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1173
  %index1176 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1181, %vector.body1175 ] ; 2 uses
  %vec.phi1177 = phi <4 x i32> [ %i.bt, %vector.ph1173 ], [ %i.bx, %vector.body1175 ]
  %vec.phi1178 = phi <4 x i32> [ zeroinitializer, %vector.ph1173 ], [ %i.by, %vector.body1175 ]
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %index1176 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load1179 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !95
  %wide.load1180 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !95
  %i.bx = add <4 x i32> %wide.load1179, %vec.phi1177 ; 2 uses
  %i.by = add <4 x i32> %wide.load1180, %vec.phi1178 ; 2 uses
  %index.next1181 = add nuw i64 %index1176, 8     ; 2 uses
  %i.bz = icmp eq i64 %index.next1181, %n.vec1174
  br i1 %i.bz, label %middle.block1182, label %vector.body1175, !llvm.loop !415

middle.block1182:                                 ; preds = %vector.body1175
  %bin.rdx1183 = add <4 x i32> %i.by, %i.bx
  %i.ca = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1183) ; 2 uses
  %cmp.n1184 = icmp eq i64 %i.br, %n.vec1174
  br i1 %cmp.n1184, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader1350

.lr.ph89.i.i.i.i.preheader1350:                   ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block1182
  %.05588.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph89.i.i.i.i.preheader ], [ %i.bs, %middle.block1182 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.ca, %middle.block1182 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader1355, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.ce, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1355 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cd, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1355 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.05683.i.i.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !95
  %i.cd = add nsw i32 %i.cc, %.07582.i.i.i.i      ; 2 uses
  %i.ce = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ce, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !416

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader1350, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ci, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1350 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ch, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1350 ]
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05588.i.i.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !95
  %i.ch = add nsw i32 %i.cg, %.187.i.i.i.i        ; 2 uses
  %i.ci = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cj = icmp slt i64 %i.ci, %i.b
  br i1 %i.cj, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !417

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ck = load i32, ptr %i.j, align 4, !tbaa !95  ; 3 uses
  %i.cl = icmp sgt i64 %i.b, 1
  br i1 %i.cl, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cm = add nsw i64 %i.b, -1                    ; 2 uses
  %min.iters.check1188 = icmp ult i64 %i.b, 9
  br i1 %min.iters.check1188, label %.lr.ph94.i.i.i.i.preheader1346, label %vector.ph1189

vector.ph1189:                                    ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec1190 = and i64 %i.cm, -8                  ; 3 uses
  %i.cn = or disjoint i64 %n.vec1190, 1
  %i.co = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ck, i64 0
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1189
  %index1192 = phi i64 [ 0, %vector.ph1189 ], [ %index.next1197, %vector.body1191 ] ; 2 uses
  %vec.phi1193 = phi <4 x i32> [ %i.co, %vector.ph1189 ], [ %i.cs, %vector.body1191 ]
  %vec.phi1194 = phi <4 x i32> [ zeroinitializer, %vector.ph1189 ], [ %i.ct, %vector.body1191 ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1192 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %wide.load1195 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !95
  %wide.load1196 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !95
  %i.cs = add <4 x i32> %wide.load1195, %vec.phi1193 ; 2 uses
  %i.ct = add <4 x i32> %wide.load1196, %vec.phi1194 ; 2 uses
  %index.next1197 = add nuw i64 %index1192, 8     ; 2 uses
  %i.cu = icmp eq i64 %index.next1197, %n.vec1190
  br i1 %i.cu, label %middle.block1198, label %vector.body1191, !llvm.loop !418

middle.block1198:                                 ; preds = %vector.body1191
  %bin.rdx1199 = add <4 x i32> %i.ct, %i.cs
  %i.cv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1199) ; 2 uses
  %cmp.n1200 = icmp eq i64 %i.cm, %n.vec1190
  br i1 %cmp.n1200, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader1346

.lr.ph94.i.i.i.i.preheader1346:                   ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block1198
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cn, %middle.block1198 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ck, %.lr.ph94.i.i.i.i.preheader ], [ %i.cv, %middle.block1198 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader1346, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cz, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1346 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cy, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1346 ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.092.i.i.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !95
  %i.cy = add nsw i32 %i.cx, %.291.i.i.i.i        ; 2 uses
  %i.cz = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cz, %i.b
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !419

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block1182, %middle.block1198, %.preheader.i.i.i.i, %bb.j, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.b ], [ 0, %bb.c ], [ %i.cy, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ck, %bb.j ], [ %i.cv, %middle.block1198 ], [ %i.ca, %middle.block1182 ], [ %i.ch, %.lr.ph89.i.i.i.i ] ; 3 uses
  %i.da = add nsw i32 %i.c, 1                     ; 11 uses
  %i.db = sext i32 %i.da to i64                   ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !378
  %.not.i.i.i = icmp eq i64 %i.dd, %i.db
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.de = load ptr, ptr %1, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.de) #27
  %i.df = icmp sgt i32 %i.c, -1
  br i1 %i.df, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, label %.sink.split.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.k
  %i.dg = shl nuw nsw i64 %i.db, 2
  %i.dh = tail call noalias ptr @malloc(i64 noundef %i.dg) #31 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.l, label %.sink.split.i.i.i

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.dj = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dj, align 8, !tbaa !82
  tail call void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.k
  %.sink.i.i.i = phi ptr [ %i.dh, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i.i, ptr %1, align 8, !tbaa !78
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %.sink.split.i.i.i
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !378
  %i.dk = sdiv i32 %.0.i, 5
  %i.dl = shl nsw i32 %i.c, 1
  %i.dm = add i32 %.0.i, %i.dl
  %i.dn = add i32 %i.dm, %i.dk                    ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i64 noundef %i.do, double noundef 0.000000e+00)
  %i.dq = shl i32 %i.c, 3
  %i.dr = add i32 %i.dq, 8
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %bb.m, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit

bb.m:                                             ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi0ElEENS2_IdLi0EiEES3_EEvRKT_RKT0_RT1_b:bb.a
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !82
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc142 unwind label %.split226

.noexc142:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit143:     ; preds = %bb.e
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.t) #31 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !82
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc147 unwind label %.split230

.noexc147:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread
  %i.ab = phi i1 [ false, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ true, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 2 uses
  %i.ac = phi ptr [ %i.q, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.v, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 7 uses
  %i.ad = phi ptr [ %i.m, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.u, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 7 uses
  %i.ae = phi ptr [ %i.s, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.y, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !532 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !522 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !523
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !129
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !129
  %i.ap = sub nsw i64 %i.an, %i.ao
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !523 ; 5 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i64, ptr %i.ag, align 8, !tbaa !129 ; 3 uses
  %i.au = icmp sgt i64 %i.ar, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.k
  %i.av = add nsw i64 %i.ar, -1                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader401, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, -4                      ; 3 uses
  %i.aw = or disjoint i64 %n.vec, 1
  %i.ax = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.at, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ax, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi332 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.ay = getelementptr [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 24
  %wide.load = load <2 x i64>, ptr %i.az, align 8, !tbaa !129
  %wide.load333 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !129
  %i.bb = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.bc = add <2 x i64> %wide.load333, %vec.phi332 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !561

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bc, %i.bb
  %i.be = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit, label %.lr.ph.i.i.i.i.i.preheader401

.lr.ph.i.i.i.i.i.preheader401:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.01724.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.02223.i.i.i.i.i.ph = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader401, %.lr.ph.i.i.i.i.i
  %.01724.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.01724.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader401 ] ; 2 uses
  %.02223.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.02223.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader401 ]
  %i.bf = getelementptr [8 x i8], ptr %i.ag, i64 %.01724.i.i.i.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !129
  %i.bh = add nsw i64 %i.bg, %.02223.i.i.i.i.i    ; 2 uses
  %i.bi = add nuw nsw i64 %.01724.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bi, %i.ar
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !562

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.k, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.j ], [ %i.at, %bb.k ], [ %i.be, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !67 ; 13 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !66 ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.d
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !95
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !95
  %i.br = sub nsw i32 %i.bp, %i.bq
  %i.bs = sext i32 %i.br to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

bb.m:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit
  %i.bt = icmp eq i64 %i.d, 0
  br i1 %i.bt, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bv = and i64 %i.bu, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.o, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bw = lshr exact i64 %i.bu, 2
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = and i64 %i.bx, 3
  %i.bz = tail call i64 @llvm.smin.i64(i64 %i.by, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bz, %bb.o ], [ %i.d, %bb.n ] ; 12 uses
  %i.ca = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.cb = sdiv i64 %i.ca, 8
  %i.cc = shl nsw i64 %i.cb, 3                    ; 2 uses
  %i.cd = sdiv i64 %i.ca, 4                       ; 2 uses
  %i.ce = shl nsw i64 %i.cd, 2                    ; 2 uses
  %i.cf = add nsw i64 %i.cc, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cg = add nsw i64 %i.ce, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.ca, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.ch = getelementptr [4 x i8], ptr %i.bk, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ci = load <2 x i64>, ptr %i.ch, align 1, !tbaa !91 ; 2 uses
  %i.cj = icmp sgt i64 %i.ca, 7
  br i1 %i.cj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr i8, ptr %i.ch, i64 16
  %i.cl = load <4 x i32>, ptr %i.ck, align 1, !tbaa !91 ; 2 uses
  %i.cm = bitcast <2 x i64> %i.ci to <4 x i32>    ; 2 uses
  %i.cn = icmp samesign ugt i64 %i.ca, 15
  br i1 %i.cn, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.q
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i151

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i151, %bb.q
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.cl, %bb.q ], [ %i.cy, %.lr.ph.i.i.i.i.i151 ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.cm, %bb.q ], [ %i.cu, %.lr.ph.i.i.i.i.i151 ]
  %i.co = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.cp = bitcast <4 x i32> %i.co to <2 x i64>
  %i.cq = icmp sgt i64 %i.ce, %i.cc
  br i1 %i.cq, label %bb.r, label %bb.s

.lr.ph.i.i.i.i.i151:                              ; preds = %.lr.ph.i.i.i.i.i151, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i151 ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i151 ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.cu, %.lr.ph.i.i.i.i.i151 ], [ %i.cm, %.lr.ph.preheader.i.i.i.i.i ]
  %i.cr = phi <4 x i32> [ %i.cy, %.lr.ph.i.i.i.i.i151 ], [ %i.cl, %.lr.ph.preheader.i.i.i.i.i ]
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %.05780.i.i.i.i.i
  %i.ct = load <4 x i32>, ptr %i.cs, align 1, !tbaa !91
  %i.cu = add <4 x i32> %i.ct, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.bk, i64 %.057.in79.i.i.i.i.i
  %i.cw = getelementptr i8, ptr %i.cv, i64 48
  %i.cx = load <4 x i32>, ptr %i.cw, align 1, !tbaa !91
  %i.cy = add <4 x i32> %i.cx, %i.cr              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.cz = icmp slt i64 %.057.i.i.i.i.i, %i.cf
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i151, label %._crit_edge.i.i.i.i.i, !llvm.loop !413

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.cf
  %i.db = load <4 x i32>, ptr %i.da, align 1, !tbaa !91
  %i.dc = add <4 x i32> %i.db, %i.co
  %i.dd = bitcast <4 x i32> %i.dc to <2 x i64>
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i, %bb.p
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.ci, %bb.p ], [ %i.dd, %bb.r ], [ %i.cp, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.de = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.df = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.dg = shufflevector <4 x i32> %i.df, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dh = add <4 x i32> %i.dg, %i.de              ; 2 uses
  %shift = shufflevector <4 x i32> %i.dh, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.dh, %shift ; 2 uses
  %4 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.di = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.di, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.s
  %min.iters.check335 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check335, label %.lr.ph85.i.i.i.i.i.preheader395, label %vector.ph336

vector.ph336:                                     ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec337 = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.dj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph336
  %index339 = phi i64 [ 0, %vector.ph336 ], [ %index.next344, %vector.body338 ] ; 2 uses
  %vec.phi340 = phi <4 x i32> [ %i.dj, %vector.ph336 ], [ %i.dm, %vector.body338 ]
  %vec.phi341 = phi <4 x i32> [ zeroinitializer, %vector.ph336 ], [ %i.dn, %vector.body338 ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index339 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load342 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !95
  %wide.load343 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !95
  %i.dm = add <4 x i32> %wide.load342, %vec.phi340 ; 2 uses
  %i.dn = add <4 x i32> %wide.load343, %vec.phi341 ; 2 uses
  %index.next344 = add nuw i64 %index339, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next344, %n.vec337
  br i1 %i.do, label %middle.block345, label %vector.body338, !llvm.loop !563

middle.block345:                                  ; preds = %vector.body338
  %bin.rdx346 = add <4 x i32> %i.dn, %i.dm
  %i.dp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx346) ; 2 uses
  %cmp.n347 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec337
  br i1 %cmp.n347, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader395

.lr.ph85.i.i.i.i.i.preheader395:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block345
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec337, %middle.block345 ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.dp, %middle.block345 ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block345, %bb.s
  %.075.lcssa.i.i.i.i.i = phi i32 [ %4, %bb.s ], [ %i.dp, %middle.block345 ], [ %i.ef, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.dq = icmp slt i64 %i.cg, %i.d
  br i1 %i.dq, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.dr = shl nsw i64 %i.cd, 2
  %i.ds = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.dr
  %i.dt = sub i64 %i.d, %i.ds                     ; 3 uses
  %min.iters.check351 = icmp ult i64 %i.dt, 8
  br i1 %min.iters.check351, label %.lr.ph89.i.i.i.i.i.preheader390, label %vector.ph352

vector.ph352:                                     ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec353 = and i64 %i.dt, -8                   ; 3 uses
  %i.du = add i64 %i.cg, %n.vec353
  %i.dv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.dw = getelementptr [4 x i8], ptr %i.bk, i64 %i.cg
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next360, %vector.body354 ] ; 2 uses
  %vec.phi356 = phi <4 x i32> [ %i.dv, %vector.ph352 ], [ %i.dz, %vector.body354 ]
  %vec.phi357 = phi <4 x i32> [ zeroinitializer, %vector.ph352 ], [ %i.ea, %vector.body354 ]
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %index355 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load358 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !95
  %wide.load359 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !95
  %i.dz = add <4 x i32> %wide.load358, %vec.phi356 ; 2 uses
  %i.ea = add <4 x i32> %wide.load359, %vec.phi357 ; 2 uses
  %index.next360 = add nuw i64 %index355, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next360, %n.vec353
  br i1 %i.eb, label %middle.block361, label %vector.body354, !llvm.loop !564

middle.block361:                                  ; preds = %vector.body354
  %bin.rdx362 = add <4 x i32> %i.ea, %i.dz
  %i.ec = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx362) ; 2 uses
  %cmp.n363 = icmp eq i64 %i.dt, %n.vec353
  br i1 %cmp.n363, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader390

.lr.ph89.i.i.i.i.i.preheader390:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block361
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.cg, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.du, %middle.block361 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.ec, %middle.block361 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader395, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.eg, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader395 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.ef, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader395 ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.05683.i.i.i.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !95
  %i.ef = add nsw i32 %i.ee, %.07582.i.i.i.i.i    ; 2 uses
  %i.eg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i150 = icmp eq i64 %i.eg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i150, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !565

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader390, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.ek, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader390 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.ej, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader390 ]
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %.05588.i.i.i.i.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !95
  %i.ej = add nsw i32 %i.ei, %.187.i.i.i.i.i      ; 2 uses
  %i.ek = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.el = icmp slt i64 %i.ek, %i.d
  br i1 %i.el, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !566

bb.t:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.em = load i32, ptr %i.bk, align 4, !tbaa !95 ; 3 uses
  %i.en = icmp sgt i64 %i.d, 1
  br i1 %i.en, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.t
  %i.eo = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check367 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check367, label %.lr.ph94.i.i.i.i.i.preheader386, label %vector.ph368

vector.ph368:                                     ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec369 = and i64 %i.eo, -8                   ; 3 uses
  %i.ep = or disjoint i64 %n.vec369, 1
  %i.eq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.em, i64 0
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph368
  %index371 = phi i64 [ 0, %vector.ph368 ], [ %index.next376, %vector.body370 ] ; 2 uses
  %vec.phi372 = phi <4 x i32> [ %i.eq, %vector.ph368 ], [ %i.eu, %vector.body370 ]
  %vec.phi373 = phi <4 x i32> [ zeroinitializer, %vector.ph368 ], [ %i.ev, %vector.body370 ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index371 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 20
  %wide.load374 = load <4 x i32>, ptr %i.es, align 4, !tbaa !95
  %wide.load375 = load <4 x i32>, ptr %i.et, align 4, !tbaa !95
  %i.eu = add <4 x i32> %wide.load374, %vec.phi372 ; 2 uses
  %i.ev = add <4 x i32> %wide.load375, %vec.phi373 ; 2 uses
  %index.next376 = add nuw i64 %index371, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next376, %n.vec369
  br i1 %i.ew, label %middle.block377, label %vector.body370, !llvm.loop !567

middle.block377:                                  ; preds = %vector.body370
  %bin.rdx378 = add <4 x i32> %i.ev, %i.eu
  %i.ex = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx378) ; 2 uses
  %cmp.n379 = icmp eq i64 %i.eo, %n.vec369
  br i1 %cmp.n379, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader386

.lr.ph94.i.i.i.i.i.preheader386:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block377
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.ep, %middle.block377 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.em, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.ex, %middle.block377 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader386, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.fb, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader386 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.fa, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader386 ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.092.i.i.i.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !95
  %i.fa = add nsw i32 %i.ez, %.291.i.i.i.i.i      ; 2 uses
  %i.fb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.fb, %i.d
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !568

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block361, %middle.block377, %bb.t, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.fa, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.em, %bb.t ], [ %i.ex, %middle.block377 ], [ %i.ec, %middle.block361 ], [ %i.ej, %.lr.ph89.i.i.i.i.i ]
  %i.fc = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.m, %bb.l
  %.0.i.i149 = phi i64 [ %i.bs, %bb.l ], [ %i.fc, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.m ]
  %i.fd = add nsw i64 %.0.i.i149, %.0.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  store i64 0, ptr %i.fe, align 8, !tbaa !539
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !522
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !523
  %i.fj = shl i64 %i.fi, 3
  %i.fk = add i64 %i.fj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fg, i8 0, i64 %i.fk, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !532 ; 2 uses
  %.not.i = icmp eq ptr %i.fm, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0ElE7setZeroEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.fn = load i64, ptr %i.fh, align 8, !tbaa !523
  %i.fo = shl i64 %i.fn, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fm, i8 0, i64 %i.fo, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0ElE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0ElE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit, %bb.u
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdlE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.fp, i64 noundef %i.fd)
          to label %_ZN5Eigen12SparseMatrixIdLi0ElE7reserveEl.exit.preheader unwind label %bb.y

_ZN5Eigen12SparseMatrixIdLi0ElE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIdLi0ElE7setZeroEv.exit
  %i.fq = icmp sgt i64 %i.d, 0
  br i1 %i.fq, label %.lr.ph265, label %_ZN5Eigen12SparseMatrixIdLi0ElE7reserveEl.exit._crit_edge

.lr.ph265:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0ElE7reserveEl.exit.preheader
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.fy = udiv i64 %i.b, 11
end_hunk_2
begin_hunk_3_@_ZNK5Eigen18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_EEvRKNS_10MatrixBaseIT_EERNS9_IT0_EE:bb.a
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %i.ap = icmp slt i64 %i.an, %i.al
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.aq = shl nsw i64 %i.am, 1
  %i.ar = sub i64 %i.al, %i.aq                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 8
  %i.as = sub i64 %i.s, %i.ak
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader358, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, -4                      ; 3 uses
  %i.at = add i64 %i.an, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add i64 %i.an, %index                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !84
  %wide.load217 = load <2 x double>, ptr %i.ax, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <2 x double> %wide.load, ptr %i.av, align 8, !tbaa !84
  store <2 x double> %wide.load217, ptr %i.ay, align 8, !tbaa !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !692

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader358

.lr.ph.i.i.i.i.i.i.i.i.preheader358:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ] ; 4 uses
  %i.ba = sub i64 %i.al, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader358, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader358 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader358 ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !84
  store double %i.bd, ptr %i.bb, align 8, !tbaa !84
  %i.be = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !693

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader358
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader358 ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.bf = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.al
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.05.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !84
  store double %i.bj, ptr %i.bh, align 8, !tbaa !84
  %i.bk = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bk
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !84
  store double %i.bn, ptr %i.bl, align 8, !tbaa !84
  %i.bo = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bo
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bo
  %i.br = load double, ptr %i.bq, align 8, !tbaa !84
  store double %i.br, ptr %i.bp, align 8, !tbaa !84
  %i.bs = add nsw i64 %.05.i.i.i.i.i.i.i.i, 3     ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !84
  store double %i.bv, ptr %i.bt, align 8, !tbaa !84
  %i.bw = add nsw i64 %.05.i.i.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bw, %i.al
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !694

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.j ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.011.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.011.i.i.i.i.i.i.i
  %i.bz = load <2 x double>, ptr %i.by, align 16, !tbaa !91
  store <2 x double> %i.bz, ptr %i.bx, align 16, !tbaa !91
  %i.ca = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.cb = icmp slt i64 %i.ca, %i.an
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !92

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !67 ; 16 uses
  %i.cf = icmp eq ptr %i.ce, null                 ; 3 uses
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !66 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !9  ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !95
  %i.cm = load i32, ptr %i.ch, align 4, !tbaa !95
  %i.cn = sub nsw i32 %i.cl, %i.cm
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.l:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !9  ; 17 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.cs = and i64 %i.cr, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ct = lshr exact i64 %i.cr, 2
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = and i64 %i.cu, 3
  %i.cw = tail call i64 @llvm.smin.i64(i64 %i.cv, i64 %i.cp)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %bb.n ], [ %i.cp, %bb.m ] ; 12 uses
  %i.cx = sub nsw i64 %i.cp, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.cy = sdiv i64 %i.cx, 8
  %i.cz = shl nsw i64 %i.cy, 3                    ; 2 uses
  %i.da = sdiv i64 %i.cx, 4                       ; 2 uses
  %i.db = shl nsw i64 %i.da, 2                    ; 2 uses
  %i.dc = add nsw i64 %i.cz, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.dd = add nsw i64 %i.db, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.cx, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.de = getelementptr [4 x i8], ptr %i.ce, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.df = load <2 x i64>, ptr %i.de, align 1, !tbaa !91 ; 2 uses
  %i.dg = icmp sgt i64 %i.cx, 7
  br i1 %i.dg, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dh = getelementptr i8, ptr %i.de, i64 16
  %i.di = load <4 x i32>, ptr %i.dh, align 1, !tbaa !91 ; 2 uses
  %i.dj = bitcast <2 x i64> %i.df to <4 x i32>    ; 2 uses
  %i.dk = icmp samesign ugt i64 %i.cx, 15
  br i1 %i.dk, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.p
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.p
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.di, %bb.p ], [ %i.dv, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.dj, %bb.p ], [ %i.dr, %.lr.ph.i.i.i.i ]
  %i.dl = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.dm = bitcast <4 x i32> %i.dl to <2 x i64>
  %i.dn = icmp sgt i64 %i.db, %i.cz
  br i1 %i.dn, label %bb.q, label %bb.r

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.dr, %.lr.ph.i.i.i.i ], [ %i.dj, %.lr.ph.preheader.i.i.i.i ]
  %i.do = phi <4 x i32> [ %i.dv, %.lr.ph.i.i.i.i ], [ %i.di, %.lr.ph.preheader.i.i.i.i ]
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %.05780.i.i.i.i
  %i.dq = load <4 x i32>, ptr %i.dp, align 1, !tbaa !91
  %i.dr = add <4 x i32> %i.dq, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %i.ce, i64 %.057.in79.i.i.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 48
  %i.du = load <4 x i32>, ptr %i.dt, align 1, !tbaa !91
  %i.dv = add <4 x i32> %i.du, %i.do              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.dw = icmp slt i64 %.057.i.i.i.i, %i.dc
  br i1 %i.dw, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !413

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.dc
  %i.dy = load <4 x i32>, ptr %i.dx, align 1, !tbaa !91
  %i.dz = add <4 x i32> %i.dy, %i.dl
  %i.ea = bitcast <4 x i32> %i.dz to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i, %bb.o
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.df, %bb.o ], [ %i.ea, %bb.q ], [ %i.dm, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.eb = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ec = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ed = shufflevector <4 x i32> %i.ec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ee = add <4 x i32> %i.ed, %i.eb              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ee, %shift ; 2 uses
  %7 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ef = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.ef, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.r
  %min.iters.check219 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check219, label %.lr.ph85.i.i.i.i.preheader352, label %vector.ph220

vector.ph220:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec221 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.eg = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next227, %vector.body222 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.eg, %vector.ph220 ], [ %i.ej, %vector.body222 ]
  %vec.phi224 = phi <4 x i32> [ zeroinitializer, %vector.ph220 ], [ %i.ek, %vector.body222 ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index223 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load225 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !95
  %wide.load226 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !95
  %i.ej = add <4 x i32> %wide.load225, %vec.phi   ; 2 uses
  %i.ek = add <4 x i32> %wide.load226, %vec.phi224 ; 2 uses
  %index.next227 = add nuw i64 %index223, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next227, %n.vec221
  br i1 %i.el, label %middle.block228, label %vector.body222, !llvm.loop !695

middle.block228:                                  ; preds = %vector.body222
  %bin.rdx = add <4 x i32> %i.ek, %i.ej
  %i.em = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n229 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec221
  br i1 %cmp.n229, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader352

.lr.ph85.i.i.i.i.preheader352:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block228
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec221, %middle.block228 ]
  %.07582.i.i.i.i.ph = phi i32 [ %7, %.lr.ph85.i.i.i.i.preheader ], [ %i.em, %middle.block228 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block228, %bb.r
  %.075.lcssa.i.i.i.i = phi i32 [ %7, %bb.r ], [ %i.em, %middle.block228 ], [ %i.fc, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.en = icmp slt i64 %i.dd, %i.cp
  br i1 %i.en, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.eo = shl nsw i64 %i.da, 2
  %i.ep = add i64 %.0.i.i.i.i.i.i.i.i, %i.eo
  %i.eq = sub i64 %i.cp, %i.ep                    ; 3 uses
  %min.iters.check232 = icmp ult i64 %i.eq, 8
  br i1 %min.iters.check232, label %.lr.ph89.i.i.i.i.preheader347, label %vector.ph233

vector.ph233:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec234 = and i64 %i.eq, -8                   ; 3 uses
  %i.er = add i64 %i.dd, %n.vec234
  %i.es = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.et = getelementptr [4 x i8], ptr %i.ce, i64 %i.dd
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next241, %vector.body235 ] ; 2 uses
  %vec.phi237 = phi <4 x i32> [ %i.es, %vector.ph233 ], [ %i.ew, %vector.body235 ]
  %vec.phi238 = phi <4 x i32> [ zeroinitializer, %vector.ph233 ], [ %i.ex, %vector.body235 ]
  %i.eu = getelementptr [4 x i8], ptr %i.et, i64 %index236 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load239 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !95
  %wide.load240 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !95
  %i.ew = add <4 x i32> %wide.load239, %vec.phi237 ; 2 uses
  %i.ex = add <4 x i32> %wide.load240, %vec.phi238 ; 2 uses
  %index.next241 = add nuw i64 %index236, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next241, %n.vec234
  br i1 %i.ey, label %middle.block242, label %vector.body235, !llvm.loop !696

middle.block242:                                  ; preds = %vector.body235
  %bin.rdx243 = add <4 x i32> %i.ex, %i.ew
  %i.ez = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx243) ; 2 uses
  %cmp.n244 = icmp eq i64 %i.eq, %n.vec234
  br i1 %cmp.n244, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader347

.lr.ph89.i.i.i.i.preheader347:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block242
  %.05588.i.i.i.i.ph = phi i64 [ %i.dd, %.lr.ph89.i.i.i.i.preheader ], [ %i.er, %middle.block242 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.ez, %middle.block242 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader352, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.fd, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader352 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.fc, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader352 ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.05683.i.i.i.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !95
  %i.fc = add nsw i32 %i.fb, %.07582.i.i.i.i      ; 2 uses
  %i.fd = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fd, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !697

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader347, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.fh, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader347 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.fg, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader347 ]
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %.05588.i.i.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !95
  %i.fg = add nsw i32 %i.ff, %.187.i.i.i.i        ; 2 uses
  %i.fh = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.fi = icmp slt i64 %i.fh, %i.cp
  br i1 %i.fi, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !698

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.fj = load i32, ptr %i.ce, align 4, !tbaa !95 ; 3 uses
  %i.fk = icmp sgt i64 %i.cp, 1
  br i1 %i.fk, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.s
  %i.fl = add nsw i64 %i.cp, -1                   ; 2 uses
  %min.iters.check248 = icmp ult i64 %i.cp, 9
  br i1 %min.iters.check248, label %.lr.ph94.i.i.i.i.preheader343, label %vector.ph249

vector.ph249:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec250 = and i64 %i.fl, -8                   ; 3 uses
  %i.fm = or disjoint i64 %n.vec250, 1
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.fj, i64 0
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph249
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next257, %vector.body251 ] ; 2 uses
  %vec.phi253 = phi <4 x i32> [ %i.fn, %vector.ph249 ], [ %i.fr, %vector.body251 ]
  %vec.phi254 = phi <4 x i32> [ zeroinitializer, %vector.ph249 ], [ %i.fs, %vector.body251 ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index252 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 20
  %wide.load255 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !95
  %wide.load256 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !95
  %i.fr = add <4 x i32> %wide.load255, %vec.phi253 ; 2 uses
  %i.fs = add <4 x i32> %wide.load256, %vec.phi254 ; 2 uses
  %index.next257 = add nuw i64 %index252, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next257, %n.vec250
  br i1 %i.ft, label %middle.block258, label %vector.body251, !llvm.loop !699

middle.block258:                                  ; preds = %vector.body251
  %bin.rdx259 = add <4 x i32> %i.fs, %i.fr
  %i.fu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx259) ; 2 uses
  %cmp.n260 = icmp eq i64 %i.fl, %n.vec250
  br i1 %cmp.n260, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader343

.lr.ph94.i.i.i.i.preheader343:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block258
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.fm, %middle.block258 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.fj, %.lr.ph94.i.i.i.i.preheader ], [ %i.fu, %middle.block258 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader343, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.fy, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader343 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.fx, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader343 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.092.i.i.i.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !95
  %i.fx = add nsw i32 %i.fw, %.291.i.i.i.i        ; 2 uses
  %i.fy = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.fy, %i.cp
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !700

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block242, %middle.block258, %.preheader.i.i.i.i, %bb.s, %bb.k
  %i.fz = phi i64 [ %i.cj, %bb.k ], [ %i.cp, %middle.block258 ], [ %i.cp, %.preheader.i.i.i.i ], [ %i.cp, %bb.s ], [ %i.cp, %middle.block242 ], [ %i.cp, %.lr.ph94.i.i.i.i ], [ %i.cp, %.lr.ph89.i.i.i.i ] ; 5 uses
  %.0.i.in = phi i32 [ %i.cn, %bb.k ], [ %i.fu, %middle.block258 ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.fj, %bb.s ], [ %i.ez, %middle.block242 ], [ %i.fx, %.lr.ph94.i.i.i.i ], [ %i.fg, %.lr.ph89.i.i.i.i ]
  %i.ga = icmp sgt i32 %.0.i.in, 0
  br i1 %i.ga, label %bb.t, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit

bb.t:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !38, !range !143, !noundef !144
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !81 ; 4 uses
  %i.gg = icmp sgt i64 %i.gf, 0                   ; 2 uses
  br i1 %i.gd, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  br i1 %i.gg, label %.preheader.lr.ph.i.i, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit

.preheader.lr.ph.i.i:                             ; preds = %bb.u
  %i.gh = icmp sgt i64 %i.fz, 0
  %i.gi = load ptr, ptr %2, align 8               ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gk = load i64, ptr %i.gj, align 8            ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %i.gh, label %.preheader.i.i.preheader, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit

.preheader.i.i.preheader:                         ; preds = %.preheader.lr.ph.i.i
  br i1 %i.cf, label %.preheader.i.i.us, label %.preheader.i.i

.preheader.i.i.us:                                ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i.split.us.us
  %.044.i.i.us = phi i64 [ %i.ir, %._crit_edge.i.i.split.us.us ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %i.go = mul nsw i64 %.044.i.i.us, %i.gk
  %invariant.gep42.i.i.us = getelementptr [8 x i8], ptr %i.gi, i64 %i.go ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i.i.us.us, %.preheader.i.i.us
  %.01838.i.i.us.us = phi i64 [ 0, %.preheader.i.i.us ], [ %i.iq, %.loopexit.i.i.us.us ] ; 5 uses
  %gep43.i.i.us.us = getelementptr [8 x i8], ptr %invariant.gep42.i.i.us, i64 %.01838.i.i.us.us ; 4 uses
  %i.gp = load double, ptr %gep43.i.i.us.us, align 8, !tbaa !84
  %i.gq = fcmp une double %i.gp, 0.000000e+00
  br i1 %i.gq, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.us.us, label %.loopexit.i.i.us.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.us.us: ; preds = %bb.v
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !68 ; 3 uses
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !69 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZNK5Eigen18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_EEvRKNS_10MatrixBaseIT_EERNS9_IT0_EE:bb.a
  %i.me = load double, ptr %i.md, align 8, !tbaa !84
  %i.mf = fdiv double %i.li, %i.me
  store double %i.mf, ptr %gep45.i.i, align 8, !tbaa !84
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.i25
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %.sroa.11.037.i.i
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !84
  %i.mi = fdiv double %i.li, %i.mh
  store double %i.mi, ptr %gep45.i.i, align 8, !tbaa !84
  %i.mj = icmp eq i64 %.01940.i.i, %i.ma
  %i.mk = zext i1 %i.mj to i64
  %spec.select.i.i26 = add nsw i64 %.sroa.11.037.i.i, %i.mk
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.critedge.i.i22
  %.sroa.11.1.i.i = phi i64 [ %.sroa.11.0.lcssa.i.i, %.critedge.i.i22 ], [ %spec.select.i.i26, %bb.ah ] ; 7 uses
  %i.ml = icmp slt i64 %.sroa.11.1.i.i, %.sink.i.i.i21
  br i1 %i.ml, label %.lr.ph39.i.i.preheader, label %.loopexit.i.i18

.lr.ph39.i.i.preheader:                           ; preds = %bb.ai
  %i.mm = sub i64 %.sink.i.i.i21, %.sroa.11.1.i.i
  %.neg = add i64 %.sroa.11.1.i.i, 1
  %xtraiter359 = and i64 %i.mm, 1
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %.lr.ph39.i.i.prol.loopexit, label %.lr.ph39.i.i.prol

.lr.ph39.i.i.prol:                                ; preds = %.lr.ph39.i.i.preheader
  %i.mn = load double, ptr %gep45.i.i, align 8, !tbaa !84
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %.sroa.11.1.i.i
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !84
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %.sroa.11.1.i.i
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !95
  %i.ms = sext i32 %i.mr to i64
  %gep.i.i23.prol = getelementptr [8 x i8], ptr %invariant.gep44.i.i, i64 %i.ms ; 2 uses
  %i.mt = load double, ptr %gep.i.i23.prol, align 8, !tbaa !84
  %i.mu = fneg double %i.mn
  %i.mv = tail call double @llvm.fmuladd.f64(double %i.mu, double %i.mp, double %i.mt)
  store double %i.mv, ptr %gep.i.i23.prol, align 8, !tbaa !84
  %i.mw = add nsw i64 %.sroa.11.1.i.i, 1
  br label %.lr.ph39.i.i.prol.loopexit

.lr.ph39.i.i.prol.loopexit:                       ; preds = %.lr.ph39.i.i.prol, %.lr.ph39.i.i.preheader
  %.sroa.11.238.i.i.unr = phi i64 [ %.sroa.11.1.i.i, %.lr.ph39.i.i.preheader ], [ %i.mw, %.lr.ph39.i.i.prol ]
  %i.mx = icmp eq i64 %.sink.i.i.i21, %.neg
  br i1 %i.mx, label %.loopexit.i.i18, label %.lr.ph39.i.i

.lr.ph39.i.i:                                     ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i
  %.sroa.11.238.i.i = phi i64 [ %i.nr, %.lr.ph39.i.i ], [ %.sroa.11.238.i.i.unr, %.lr.ph39.i.i.prol.loopexit ] ; 4 uses
  %i.my = load double, ptr %gep45.i.i, align 8, !tbaa !84
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %.sroa.11.238.i.i
  %i.na = load double, ptr %i.mz, align 8, !tbaa !84
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %.sroa.11.238.i.i
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !95
  %i.nd = sext i32 %i.nc to i64
  %gep.i.i23 = getelementptr [8 x i8], ptr %invariant.gep44.i.i, i64 %i.nd ; 2 uses
  %i.ne = load double, ptr %gep.i.i23, align 8, !tbaa !84
  %i.nf = fneg double %i.my
  %i.ng = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.na, double %i.ne)
  store double %i.ng, ptr %gep.i.i23, align 8, !tbaa !84
  %i.nh = add nsw i64 %.sroa.11.238.i.i, 1        ; 2 uses
  %i.ni = load double, ptr %gep45.i.i, align 8, !tbaa !84
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.nh
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !84
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.nh
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !95
  %i.nn = sext i32 %i.nm to i64
  %gep.i.i23.1 = getelementptr [8 x i8], ptr %invariant.gep44.i.i, i64 %i.nn ; 2 uses
  %i.no = load double, ptr %gep.i.i23.1, align 8, !tbaa !84
  %i.np = fneg double %i.ni
  %i.nq = tail call double @llvm.fmuladd.f64(double %i.np, double %i.nk, double %i.no)
  store double %i.nq, ptr %gep.i.i23.1, align 8, !tbaa !84
  %i.nr = add nsw i64 %.sroa.11.238.i.i, 2        ; 2 uses
  %exitcond49.not.i.i24.1 = icmp eq i64 %i.nr, %.sink.i.i.i21
  br i1 %exitcond49.not.i.i24.1, label %.loopexit.i.i18, label %.lr.ph39.i.i, !llvm.loop !707

.loopexit.i.i18:                                  ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i, %bb.ai, %bb.ac
  %i.ns = add nuw nsw i64 %.01940.i.i, 1          ; 2 uses
  %exitcond50.not.i.i = icmp eq i64 %i.ns, %i.fz
  br i1 %exitcond50.not.i.i, label %._crit_edge.i.i19, label %bb.ac, !llvm.loop !708

_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit: ; preds = %._crit_edge.i.i19, %._crit_edge.i.i.split, %._crit_edge.i.i.split.us.us, %bb.l, %.preheader.lr.ph.i.i16, %bb.ab, %.preheader.lr.ph.i.i, %bb.u, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !387
  %i.nv = icmp sgt i64 %i.nu, 0
  br i1 %i.nv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.nx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.nw, ptr %i.nx, align 8, !tbaa !709, !alias.scope !711
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.ny, align 8, !tbaa !284, !alias.scope !711
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.pre = load ptr, ptr %i.cd, align 8, !tbaa !67
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit
  %i.nz = phi ptr [ %.pre, %bb.aj ], [ %i.ce, %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit ] ; 13 uses
  %i.oa = icmp eq ptr %i.nz, null
  br i1 %i.oa, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !66 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !9
  %i.of = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.oe
  %i.og = load i32, ptr %i.of, align 4, !tbaa !95
  %i.oh = load i32, ptr %i.oc, align 4, !tbaa !95
  %i.oi = sub nsw i32 %i.og, %i.oh
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62

bb.am:                                            ; preds = %bb.ak
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !9  ; 11 uses
  %i.ol = icmp eq i64 %i.ok, 0
  br i1 %i.ol, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.om = ptrtoint ptr %i.nz to i64               ; 2 uses
  %i.on = and i64 %i.om, 3
  %.not.i.i.i.i.i.i.i.i28 = icmp eq i64 %i.on, 0
  br i1 %.not.i.i.i.i.i.i.i.i28, label %bb.ao, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i29

bb.ao:                                            ; preds = %bb.an
  %i.oo = lshr exact i64 %i.om, 2
  %i.op = sub nsw i64 0, %i.oo
  %i.oq = and i64 %i.op, 3
  %i.or = call i64 @llvm.smin.i64(i64 %i.oq, i64 %i.ok)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i29

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i29: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i.i.i30 = phi i64 [ %i.or, %bb.ao ], [ %i.ok, %bb.an ] ; 12 uses
  %i.os = sub nsw i64 %i.ok, %.0.i.i.i.i.i.i.i.i30 ; 5 uses
  %i.ot = sdiv i64 %i.os, 8
  %i.ou = shl nsw i64 %i.ot, 3                    ; 2 uses
  %i.ov = sdiv i64 %i.os, 4                       ; 2 uses
  %i.ow = shl nsw i64 %i.ov, 2                    ; 2 uses
  %i.ox = add nsw i64 %i.ou, %.0.i.i.i.i.i.i.i.i30 ; 2 uses
  %i.oy = add nsw i64 %i.ow, %.0.i.i.i.i.i.i.i.i30 ; 4 uses
  %.off.i.i.i.i31 = add i64 %i.os, 3
  %.not.i.i.i.i32 = icmp ult i64 %.off.i.i.i.i31, 7
  br i1 %.not.i.i.i.i32, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i29
  %i.oz = getelementptr [4 x i8], ptr %i.nz, i64 %.0.i.i.i.i.i.i.i.i30 ; 2 uses
  %i.pa = load <2 x i64>, ptr %i.oz, align 1, !tbaa !91 ; 2 uses
  %i.pb = icmp sgt i64 %i.os, 7
  br i1 %i.pb, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.pc = getelementptr i8, ptr %i.oz, i64 16
  %i.pd = load <4 x i32>, ptr %i.pc, align 1, !tbaa !91 ; 2 uses
  %i.pe = bitcast <2 x i64> %i.pa to <4 x i32>    ; 2 uses
  %i.pf = icmp samesign ugt i64 %i.os, 15
  br i1 %i.pf, label %.lr.ph.preheader.i.i.i.i51, label %._crit_edge.i.i.i.i48

.lr.ph.preheader.i.i.i.i51:                       ; preds = %bb.aq
  %.05777.i.i.i.i52 = add nsw i64 %.0.i.i.i.i.i.i.i.i30, 8
  br label %.lr.ph.i.i.i.i53

._crit_edge.i.i.i.i48:                            ; preds = %.lr.ph.i.i.i.i53, %bb.aq
  %.lcssa.i.i.i.i49 = phi <4 x i32> [ %i.pd, %bb.aq ], [ %i.pq, %.lr.ph.i.i.i.i53 ]
  %.sroa.067.0.lcssa.i.i.i.i50 = phi <4 x i32> [ %i.pe, %bb.aq ], [ %i.pm, %.lr.ph.i.i.i.i53 ]
  %i.pg = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i50, %.lcssa.i.i.i.i49 ; 2 uses
  %i.ph = bitcast <4 x i32> %i.pg to <2 x i64>
  %i.pi = icmp sgt i64 %i.ow, %i.ou
  br i1 %i.pi, label %bb.ar, label %bb.as

.lr.ph.i.i.i.i53:                                 ; preds = %.lr.ph.i.i.i.i53, %.lr.ph.preheader.i.i.i.i51
  %.05780.i.i.i.i54 = phi i64 [ %.057.i.i.i.i57, %.lr.ph.i.i.i.i53 ], [ %.05777.i.i.i.i52, %.lr.ph.preheader.i.i.i.i51 ] ; 3 uses
  %.057.in79.i.i.i.i55 = phi i64 [ %.05780.i.i.i.i54, %.lr.ph.i.i.i.i53 ], [ %.0.i.i.i.i.i.i.i.i30, %.lr.ph.preheader.i.i.i.i51 ]
  %.sroa.067.078.i.i.i.i56 = phi <4 x i32> [ %i.pm, %.lr.ph.i.i.i.i53 ], [ %i.pe, %.lr.ph.preheader.i.i.i.i51 ]
  %i.pj = phi <4 x i32> [ %i.pq, %.lr.ph.i.i.i.i53 ], [ %i.pd, %.lr.ph.preheader.i.i.i.i51 ]
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %.05780.i.i.i.i54
  %i.pl = load <4 x i32>, ptr %i.pk, align 1, !tbaa !91
  %i.pm = add <4 x i32> %i.pl, %.sroa.067.078.i.i.i.i56 ; 2 uses
  %i.pn = getelementptr [4 x i8], ptr %i.nz, i64 %.057.in79.i.i.i.i55
  %i.po = getelementptr i8, ptr %i.pn, i64 48
  %i.pp = load <4 x i32>, ptr %i.po, align 1, !tbaa !91
  %i.pq = add <4 x i32> %i.pp, %i.pj              ; 2 uses
  %.057.i.i.i.i57 = add nsw i64 %.05780.i.i.i.i54, 8 ; 2 uses
  %i.pr = icmp slt i64 %.057.i.i.i.i57, %i.ox
  br i1 %i.pr, label %.lr.ph.i.i.i.i53, label %._crit_edge.i.i.i.i48, !llvm.loop !413

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i48
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.ox
  %i.pt = load <4 x i32>, ptr %i.ps, align 1, !tbaa !91
  %i.pu = add <4 x i32> %i.pt, %i.pg
  %i.pv = bitcast <4 x i32> %i.pu to <2 x i64>
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i.i.i.i48, %bb.ap
  %.sroa.067.2.i.i.i.i33 = phi <2 x i64> [ %i.pa, %bb.ap ], [ %i.pv, %bb.ar ], [ %i.ph, %._crit_edge.i.i.i.i48 ] ; 2 uses
  %i.pw = bitcast <2 x i64> %.sroa.067.2.i.i.i.i33 to <4 x i32>
  %i.px = bitcast <2 x i64> %.sroa.067.2.i.i.i.i33 to <4 x i32>
  %i.py = shufflevector <4 x i32> %i.px, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.pz = add <4 x i32> %i.py, %i.pw              ; 2 uses
  %shift312 = shufflevector <4 x i32> %i.pz, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop313 = add nsw <4 x i32> %i.pz, %shift312 ; 2 uses
  %8 = extractelement <4 x i32> %foldExtExtBinop313, i64 0 ; 2 uses
  %i.qa = icmp sgt i64 %.0.i.i.i.i.i.i.i.i30, 0
  br i1 %i.qa, label %.lr.ph85.i.i.i.i44.preheader, label %.preheader.i.i.i.i36

.lr.ph85.i.i.i.i44.preheader:                     ; preds = %bb.as
  %min.iters.check264 = icmp ult i64 %.0.i.i.i.i.i.i.i.i30, 8
  br i1 %min.iters.check264, label %.lr.ph85.i.i.i.i44.preheader323, label %vector.ph265

vector.ph265:                                     ; preds = %.lr.ph85.i.i.i.i44.preheader
  %n.vec266 = and i64 %.0.i.i.i.i.i.i.i.i30, 9223372036854775800 ; 3 uses
  %i.qb = shufflevector <4 x i32> %foldExtExtBinop313, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body267

vector.body267:                                   ; preds = %vector.body267, %vector.ph265
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next273, %vector.body267 ] ; 2 uses
  %vec.phi269 = phi <4 x i32> [ %i.qb, %vector.ph265 ], [ %i.qe, %vector.body267 ]
  %vec.phi270 = phi <4 x i32> [ zeroinitializer, %vector.ph265 ], [ %i.qf, %vector.body267 ]
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %index268 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %wide.load271 = load <4 x i32>, ptr %i.qc, align 4, !tbaa !95
  %wide.load272 = load <4 x i32>, ptr %i.qd, align 4, !tbaa !95
  %i.qe = add <4 x i32> %wide.load271, %vec.phi269 ; 2 uses
  %i.qf = add <4 x i32> %wide.load272, %vec.phi270 ; 2 uses
  %index.next273 = add nuw i64 %index268, 8       ; 2 uses
  %i.qg = icmp eq i64 %index.next273, %n.vec266
  br i1 %i.qg, label %middle.block274, label %vector.body267, !llvm.loop !714

middle.block274:                                  ; preds = %vector.body267
  %bin.rdx275 = add <4 x i32> %i.qf, %i.qe
  %i.qh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx275) ; 2 uses
  %cmp.n276 = icmp eq i64 %.0.i.i.i.i.i.i.i.i30, %n.vec266
  br i1 %cmp.n276, label %.preheader.i.i.i.i36, label %.lr.ph85.i.i.i.i44.preheader323

.lr.ph85.i.i.i.i44.preheader323:                  ; preds = %.lr.ph85.i.i.i.i44.preheader, %middle.block274
  %.05683.i.i.i.i45.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i44.preheader ], [ %n.vec266, %middle.block274 ]
  %.07582.i.i.i.i46.ph = phi i32 [ %8, %.lr.ph85.i.i.i.i44.preheader ], [ %i.qh, %middle.block274 ]
  br label %.lr.ph85.i.i.i.i44

.preheader.i.i.i.i36:                             ; preds = %.lr.ph85.i.i.i.i44, %middle.block274, %bb.as
  %.075.lcssa.i.i.i.i37 = phi i32 [ %8, %bb.as ], [ %i.qh, %middle.block274 ], [ %i.qx, %.lr.ph85.i.i.i.i44 ] ; 3 uses
  %i.qi = icmp slt i64 %i.oy, %i.ok
  br i1 %i.qi, label %.lr.ph89.i.i.i.i41.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62

.lr.ph89.i.i.i.i41.preheader:                     ; preds = %.preheader.i.i.i.i36
  %i.qj = shl nsw i64 %i.ov, 2
  %i.qk = add i64 %.0.i.i.i.i.i.i.i.i30, %i.qj
  %i.ql = sub i64 %i.ok, %i.qk                    ; 3 uses
  %min.iters.check280 = icmp ult i64 %i.ql, 8
  br i1 %min.iters.check280, label %.lr.ph89.i.i.i.i41.preheader318, label %vector.ph281

vector.ph281:                                     ; preds = %.lr.ph89.i.i.i.i41.preheader
  %n.vec282 = and i64 %i.ql, -8                   ; 3 uses
  %i.qm = add i64 %i.oy, %n.vec282
  %i.qn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i37, i64 0
  %i.qo = getelementptr [4 x i8], ptr %i.nz, i64 %i.oy
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next289, %vector.body283 ] ; 2 uses
  %vec.phi285 = phi <4 x i32> [ %i.qn, %vector.ph281 ], [ %i.qr, %vector.body283 ]
  %vec.phi286 = phi <4 x i32> [ zeroinitializer, %vector.ph281 ], [ %i.qs, %vector.body283 ]
  %i.qp = getelementptr [4 x i8], ptr %i.qo, i64 %index284 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %wide.load287 = load <4 x i32>, ptr %i.qp, align 4, !tbaa !95
  %wide.load288 = load <4 x i32>, ptr %i.qq, align 4, !tbaa !95
  %i.qr = add <4 x i32> %wide.load287, %vec.phi285 ; 2 uses
  %i.qs = add <4 x i32> %wide.load288, %vec.phi286 ; 2 uses
  %index.next289 = add nuw i64 %index284, 8       ; 2 uses
  %i.qt = icmp eq i64 %index.next289, %n.vec282
  br i1 %i.qt, label %middle.block290, label %vector.body283, !llvm.loop !715

middle.block290:                                  ; preds = %vector.body283
  %bin.rdx291 = add <4 x i32> %i.qs, %i.qr
  %i.qu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx291) ; 2 uses
  %cmp.n292 = icmp eq i64 %i.ql, %n.vec282
  br i1 %cmp.n292, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62, label %.lr.ph89.i.i.i.i41.preheader318

.lr.ph89.i.i.i.i41.preheader318:                  ; preds = %.lr.ph89.i.i.i.i41.preheader, %middle.block290
  %.05588.i.i.i.i42.ph = phi i64 [ %i.oy, %.lr.ph89.i.i.i.i41.preheader ], [ %i.qm, %middle.block290 ]
  %.187.i.i.i.i43.ph = phi i32 [ %.075.lcssa.i.i.i.i37, %.lr.ph89.i.i.i.i41.preheader ], [ %i.qu, %middle.block290 ]
  br label %.lr.ph89.i.i.i.i41

.lr.ph85.i.i.i.i44:                               ; preds = %.lr.ph85.i.i.i.i44.preheader323, %.lr.ph85.i.i.i.i44
  %.05683.i.i.i.i45 = phi i64 [ %i.qy, %.lr.ph85.i.i.i.i44 ], [ %.05683.i.i.i.i45.ph, %.lr.ph85.i.i.i.i44.preheader323 ] ; 2 uses
  %.07582.i.i.i.i46 = phi i32 [ %i.qx, %.lr.ph85.i.i.i.i44 ], [ %.07582.i.i.i.i46.ph, %.lr.ph85.i.i.i.i44.preheader323 ]
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %.05683.i.i.i.i45
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !95
  %i.qx = add nsw i32 %i.qw, %.07582.i.i.i.i46    ; 2 uses
  %i.qy = add nuw nsw i64 %.05683.i.i.i.i45, 1    ; 2 uses
  %exitcond.not.i.i.i.i47 = icmp eq i64 %i.qy, %.0.i.i.i.i.i.i.i.i30
  br i1 %exitcond.not.i.i.i.i47, label %.preheader.i.i.i.i36, label %.lr.ph85.i.i.i.i44, !llvm.loop !716

.lr.ph89.i.i.i.i41:                               ; preds = %.lr.ph89.i.i.i.i41.preheader318, %.lr.ph89.i.i.i.i41
  %.05588.i.i.i.i42 = phi i64 [ %i.rc, %.lr.ph89.i.i.i.i41 ], [ %.05588.i.i.i.i42.ph, %.lr.ph89.i.i.i.i41.preheader318 ] ; 2 uses
  %.187.i.i.i.i43 = phi i32 [ %i.rb, %.lr.ph89.i.i.i.i41 ], [ %.187.i.i.i.i43.ph, %.lr.ph89.i.i.i.i41.preheader318 ]
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %.05588.i.i.i.i42
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !95
  %i.rb = add nsw i32 %i.ra, %.187.i.i.i.i43      ; 2 uses
  %i.rc = add nsw i64 %.05588.i.i.i.i42, 1        ; 2 uses
  %i.rd = icmp slt i64 %i.rc, %i.ok
  br i1 %i.rd, label %.lr.ph89.i.i.i.i41, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62, !llvm.loop !717

bb.at:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i29
  %i.re = load i32, ptr %i.nz, align 4, !tbaa !95 ; 3 uses
  %i.rf = icmp sgt i64 %i.ok, 1
  br i1 %i.rf, label %.lr.ph94.i.i.i.i58.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62

.lr.ph94.i.i.i.i58.preheader:                     ; preds = %bb.at
  %i.rg = add nsw i64 %i.ok, -1                   ; 2 uses
  %min.iters.check296 = icmp ult i64 %i.ok, 9
  br i1 %min.iters.check296, label %.lr.ph94.i.i.i.i58.preheader315, label %vector.ph297

vector.ph297:                                     ; preds = %.lr.ph94.i.i.i.i58.preheader
  %n.vec298 = and i64 %i.rg, -8                   ; 3 uses
  %i.rh = or disjoint i64 %n.vec298, 1
  %i.ri = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.re, i64 0
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %vec.phi301 = phi <4 x i32> [ %i.ri, %vector.ph297 ], [ %i.rm, %vector.body299 ]
  %vec.phi302 = phi <4 x i32> [ zeroinitializer, %vector.ph297 ], [ %i.rn, %vector.body299 ]
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %index300 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 20
  %wide.load303 = load <4 x i32>, ptr %i.rk, align 4, !tbaa !95
  %wide.load304 = load <4 x i32>, ptr %i.rl, align 4, !tbaa !95
  %i.rm = add <4 x i32> %wide.load303, %vec.phi301 ; 2 uses
  %i.rn = add <4 x i32> %wide.load304, %vec.phi302 ; 2 uses
  %index.next305 = add nuw i64 %index300, 8       ; 2 uses
  %i.ro = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.ro, label %middle.block306, label %vector.body299, !llvm.loop !718

middle.block306:                                  ; preds = %vector.body299
  %bin.rdx307 = add <4 x i32> %i.rn, %i.rm
  %i.rp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx307) ; 2 uses
  %cmp.n308 = icmp eq i64 %i.rg, %n.vec298
  br i1 %cmp.n308, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62, label %.lr.ph94.i.i.i.i58.preheader315

.lr.ph94.i.i.i.i58.preheader315:                  ; preds = %.lr.ph94.i.i.i.i58.preheader, %middle.block306
  %.092.i.i.i.i59.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i58.preheader ], [ %i.rh, %middle.block306 ]
  %.291.i.i.i.i60.ph = phi i32 [ %i.re, %.lr.ph94.i.i.i.i58.preheader ], [ %i.rp, %middle.block306 ]
  br label %.lr.ph94.i.i.i.i58

.lr.ph94.i.i.i.i58:                               ; preds = %.lr.ph94.i.i.i.i58.preheader315, %.lr.ph94.i.i.i.i58
  %.092.i.i.i.i59 = phi i64 [ %i.rt, %.lr.ph94.i.i.i.i58 ], [ %.092.i.i.i.i59.ph, %.lr.ph94.i.i.i.i58.preheader315 ] ; 2 uses
  %.291.i.i.i.i60 = phi i32 [ %i.rs, %.lr.ph94.i.i.i.i58 ], [ %.291.i.i.i.i60.ph, %.lr.ph94.i.i.i.i58.preheader315 ]
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %.092.i.i.i.i59
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !95
  %i.rs = add nsw i32 %i.rr, %.291.i.i.i.i60      ; 2 uses
  %i.rt = add nuw nsw i64 %.092.i.i.i.i59, 1      ; 2 uses
  %exitcond102.not.i.i.i.i61 = icmp eq i64 %i.rt, %i.ok
  br i1 %exitcond102.not.i.i.i.i61, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62, label %.lr.ph94.i.i.i.i58, !llvm.loop !719

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62: ; preds = %.lr.ph89.i.i.i.i41, %.lr.ph94.i.i.i.i58, %middle.block290, %middle.block306, %.preheader.i.i.i.i36, %bb.at, %bb.al
  %.0.i40.in = phi i32 [ %i.oi, %bb.al ], [ %i.rs, %.lr.ph94.i.i.i.i58 ], [ %.075.lcssa.i.i.i.i37, %.preheader.i.i.i.i36 ], [ %i.re, %bb.at ], [ %i.rp, %middle.block306 ], [ %i.qu, %middle.block290 ], [ %i.rb, %.lr.ph89.i.i.i.i41 ]
  %i.ru = icmp sgt i32 %.0.i40.in, 0
  br i1 %i.ru, label %bb.au, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62.thread

bb.au:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.rw = load i8, ptr %i.rv, align 8, !tbaa !38, !range !143, !noundef !144
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i8 0, ptr %5, align 8, !tbaa !720, !alias.scope !722
  %i.ry = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 0, ptr %i.ry, align 8, !alias.scope !722
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.cc, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !722
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %i.ry, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62.thread

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i8 0, ptr %6, align 8, !tbaa !725, !alias.scope !727
  %i.rz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i8 0, ptr %i.rz, align 8, !alias.scope !727
  %.sroa.41.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.cc, ptr %.sroa.41.0..sroa_idx.i63, align 8, !alias.scope !727
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %i.rz, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62.thread: ; preds = %bb.am, %bb.av, %bb.aw, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62
  %i.sa = load i64, ptr %i.d, align 8, !tbaa !378
  %i.sb = icmp sgt i64 %i.sa, 0
  br i1 %i.sb, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit62.thread
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !378 ; 5 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !81 ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !80
  %.not.i.i.i.i.i66 = icmp eq i64 %i.si, %i.se
end_hunk_4
