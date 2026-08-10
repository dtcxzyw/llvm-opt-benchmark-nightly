inline.NumInlined: 3046
inline.NumDeleted: 1580
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb0EEEvRKS3_:bb.a
_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167: ; preds = %bb.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.v) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167, %.split
  %.pn144.pn.pn.pn.pn.pn.pn.pn250 = phi { ptr, i32 } [ %i.bm, %.split ], [ %i.fw, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167 ]
  tail call void @free(ptr noundef nonnull %i.n) #23
  resume { ptr, i32 } %.pn144.pn.pn.pn.pn.pn.pn.pn250
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen11AMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i8 0, ptr %3, align 8, !tbaa !142
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #24 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !148
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
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
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #23
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit:         ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !144
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 4
  invoke void @_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  invoke void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !148
  call void @free(ptr noundef %i.i) #23
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !173
  call void @free(ptr noundef %i.j) #23
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !174  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.l) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !175  ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.o) #26
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.i:                                             ; preds = %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal24permute_symm_to_fullsymmILi1ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT0_RNS2_INS4_6ScalarEXT1_ENS4_12StorageIndexEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !183  ; 25 uses
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
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !175  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !173  ; 2 uses
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
  %i.s = load <2 x i64>, ptr %.sroa.0126.2144, align 16, !tbaa !109 ; 2 uses
  %i.t = icmp sgt i64 %i.b, 7
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0126.2144, i64 16
  %i.v = load <4 x i32>, ptr %i.u, align 16, !tbaa !109 ; 2 uses
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
  %i.ad = load <4 x i32>, ptr %i.ac, align 16, !tbaa !109
  %i.ae = add <4 x i32> %i.ad, %.sroa.064.073.i.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.057.in74.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load <4 x i32>, ptr %i.ag, align 16, !tbaa !109
  %i.ai = add <4 x i32> %i.ah, %i.ab              ; 2 uses
  %.057.i.i.i = add nuw nsw i64 %.05775.i.i.i, 8  ; 2 uses
  %i.aj = icmp slt i64 %.057.i.i.i, %i.p
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !285

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %i.p
  %i.al = load <4 x i32>, ptr %i.ak, align 16, !tbaa !109
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
  %wide.load = load <4 x i32>, ptr %i.ay, align 4, !tbaa !70
  %wide.load216 = load <4 x i32>, ptr %i.az, align 4, !tbaa !70
  %i.ba = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bb = add <4 x i32> %wide.load216, %vec.phi215 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !286

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
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !70
  %i.bg = add nsw i32 %i.bf, %.177.i.i.i          ; 2 uses
  %i.bh = add nsw i64 %.05578.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %i.b
  br i1 %exitcond.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i, !llvm.loop !287

bb.g:                                             ; preds = %._crit_edge155.thread
  %i.bi = load i32, ptr %.sroa.0126.2144, align 4, !tbaa !70 ; 3 uses
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
  %wide.load225 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !70
  %wide.load226 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !70
  %i.bq = add <4 x i32> %wide.load225, %vec.phi223 ; 2 uses
  %i.br = add <4 x i32> %wide.load226, %vec.phi224 ; 2 uses
  %index.next227 = add nuw i64 %index222, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.bs, label %middle.block228, label %vector.body221, !llvm.loop !288

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
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !70
  %i.bw = add nsw i32 %i.bv, %.282.i.i.i          ; 2 uses
  %i.bx = add nuw nsw i64 %.083.i.i.i, 1          ; 2 uses
  %exitcond92.not.i.i.i = icmp eq i64 %i.bx, %i.b
  br i1 %exitcond92.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !289

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
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !70
  %i.cb = sext i32 %i.ca to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.cc = phi i64 [ %i.cb, %bb.j ], [ %.084152, %bb.i ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.084152 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !70
  %i.cf = sext i32 %i.ce to i64                   ; 4 uses
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr i8, ptr %i.cd, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !70
  %i.ci = sext i32 %i.ch to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.m:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.084152
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !70
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
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !70
  %i.cs = sext i32 %i.cr to i64                   ; 3 uses
  %i.ct = icmp eq i64 %.084152, %i.cs
  br i1 %i.ct, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.cu = icmp slt i64 %.084152, %i.cs
  br i1 %i.cu, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %i.cs ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !70
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !70
  %i.cy = load i32, ptr %i.co, align 4, !tbaa !70
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.co, align 4, !tbaa !70
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.da = load i32, ptr %i.cp, align 4, !tbaa !70
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cp, align 4, !tbaa !70
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dc = add nsw i64 %.sroa.9.0151.us, 1         ; 2 uses
  %exitcond173.not = icmp eq i64 %i.dc, %.sink.i
  br i1 %exitcond173.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !290

._crit_edge:                                      ; preds = %bb.u, %bb.q, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.dd = add nuw nsw i64 %.084152, 1             ; 2 uses
  %exitcond174.not = icmp eq i64 %i.dd, %i.b
  br i1 %exitcond174.not, label %._crit_edge155.thread, label %bb.i, !llvm.loop !291

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.u
  %.sroa.9.0151 = phi i64 [ %i.du, %bb.u ], [ %i.cf, %.lr.ph ] ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.sroa.9.0151
  %i.df = load i32, ptr %i.de, align 4, !tbaa !70
  %i.dg = sext i32 %i.df to i64                   ; 3 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !70
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %i.dk = icmp eq i64 %.084152, %i.dg
  br i1 %i.dk, label %bb.r, label %bb.s
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_:bb.a
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !70 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !70 ; 2 uses
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph.us.preheader.epil, label %._crit_edge17

.lr.ph.us.preheader.epil:                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader
  %i.bk = sext i32 %i.bi to i64
  %i.bl = sext i32 %i.bg to i64                   ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 3
  %scevgep20.epil = getelementptr i8, ptr %i.n, i64 %i.bm
  %i.bn = sub nsw i64 %i.bk, %i.bl
  %i.bo = shl nsw i64 %i.bn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep20.epil, i8 0, i64 %i.bo, i1 false), !tbaa !74
  br label %._crit_edge17

._crit_edge17.loopexit31.unr-lcssa:               ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge17, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader: ; preds = %._crit_edge17.loopexit31.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader ], [ %indvars.iv.next.1, %._crit_edge17.loopexit31.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod32)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !70 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.epil, label %._crit_edge17

.lr.ph.preheader.epil:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !70
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 3
  %scevgep.epil = getelementptr i8, ptr %i.n, i64 %i.bw
  %i.bx = shl nuw nsw i64 %i.bs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.bx, i1 false), !tbaa !74
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit31.unr-lcssa, %.lr.ph.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader, %._crit_edge17.loopexit.unr-lcssa, %.lr.ph.us.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i8 0, ptr %4, align 8, !tbaa !297, !alias.scope !299
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.by, align 8, !tbaa !155, !alias.scope !299
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %0, ptr %i.bz, align 8, !tbaa !155, !alias.scope !299
  %i.ca = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %._crit_edge17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !148
  call void @free(ptr noundef %i.cb) #23
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !173
  call void @free(ptr noundef %i.cc) #23
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !174 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !175 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #26
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.k:                                             ; preds = %._crit_edge17
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.cj, %bb.k ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !144  ; 32 uses
  %i.c = trunc i64 %i.b to i32                    ; 17 uses
  %i.d = sitofp i32 %i.c to double
  %i.e = tail call double @sqrt(double noundef %i.d) #23
  %i.f = fmul double %i.e, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %.sroa.speculated548 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 16)
  %i.h = add nsw i32 %i.c, -2
  %.sroa.speculated543 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated548, i32 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !173  ; 13 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !148  ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.b
  %i.o = load i32, ptr %i.n, align 4, !tbaa !70
  %i.p = load i32, ptr %i.m, align 4, !tbaa !70
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
  %i.ag = load <2 x i64>, ptr %i.af, align 1, !tbaa !109 ; 2 uses
  %i.ah = icmp sgt i64 %i.y, 7
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %i.aj = load <4 x i32>, ptr %i.ai, align 1, !tbaa !109 ; 2 uses
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
  %i.ar = load <4 x i32>, ptr %i.aq, align 1, !tbaa !109
  %i.as = add <4 x i32> %i.ar, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.j, i64 %.057.in79.i.i.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %i.av = load <4 x i32>, ptr %i.au, align 1, !tbaa !109
  %i.aw = add <4 x i32> %i.av, %i.ap              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.ax = icmp slt i64 %.057.i.i.i.i, %i.ad
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !302

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ad
  %i.az = load <4 x i32>, ptr %i.ay, align 1, !tbaa !109
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
  %wide.load = load <4 x i32>, ptr %i.bi, align 4, !tbaa !70
  %wide.load1170 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !70
  %i.bk = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bl = add <4 x i32> %wide.load1170, %vec.phi1169 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !303

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
  %wide.load1179 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !70
  %wide.load1180 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !70
  %i.bx = add <4 x i32> %wide.load1179, %vec.phi1177 ; 2 uses
  %i.by = add <4 x i32> %wide.load1180, %vec.phi1178 ; 2 uses
  %index.next1181 = add nuw i64 %index1176, 8     ; 2 uses
  %i.bz = icmp eq i64 %index.next1181, %n.vec1174
  br i1 %i.bz, label %middle.block1182, label %vector.body1175, !llvm.loop !304

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
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !70
  %i.cd = add nsw i32 %i.cc, %.07582.i.i.i.i      ; 2 uses
  %i.ce = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ce, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !305

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader1350, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ci, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1350 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ch, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1350 ]
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05588.i.i.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !70
  %i.ch = add nsw i32 %i.cg, %.187.i.i.i.i        ; 2 uses
  %i.ci = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cj = icmp slt i64 %i.ci, %i.b
  br i1 %i.cj, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !306

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ck = load i32, ptr %i.j, align 4, !tbaa !70  ; 3 uses
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
  %wide.load1195 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !70
  %wide.load1196 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !70
  %i.cs = add <4 x i32> %wide.load1195, %vec.phi1193 ; 2 uses
  %i.ct = add <4 x i32> %wide.load1196, %vec.phi1194 ; 2 uses
  %index.next1197 = add nuw i64 %index1192, 8     ; 2 uses
  %i.cu = icmp eq i64 %index.next1197, %n.vec1190
  br i1 %i.cu, label %middle.block1198, label %vector.body1191, !llvm.loop !307

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
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !70
  %i.cy = add nsw i32 %i.cx, %.291.i.i.i.i        ; 2 uses
  %i.cz = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cz, %i.b
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !308

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block1182, %middle.block1198, %.preheader.i.i.i.i, %bb.j, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.b ], [ 0, %bb.c ], [ %i.cy, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ck, %bb.j ], [ %i.cv, %middle.block1198 ], [ %i.ca, %middle.block1182 ], [ %i.ch, %.lr.ph89.i.i.i.i ] ; 3 uses
  %i.da = add nsw i32 %i.c, 1                     ; 11 uses
  %i.db = sext i32 %i.da to i64                   ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.dd, %i.db
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.de = load ptr, ptr %1, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.de) #23
  %i.df = icmp sgt i32 %i.c, -1
  br i1 %i.df, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, label %.sink.split.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.k
  %i.dg = shl nuw nsw i64 %i.db, 2
  %i.dh = tail call noalias ptr @malloc(i64 noundef %i.dg) #24 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.l, label %.sink.split.i.i.i

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.dj = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dj, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.k
  %.sink.i.i.i = phi ptr [ %i.dh, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i.i, ptr %1, align 8, !tbaa !69
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %.sink.split.i.i.i
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !14
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
begin_hunk_2_@_ZN5Eigen8internal20permute_symm_to_symmILi1ELi2ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT1_RNS2_INS4_6ScalarEXT2_ENS4_12StorageIndexEEEPKS8_:bb.a
  %i.gz = load i32, ptr %i.gu, align 4, !tbaa !70 ; 2 uses
  %i.ha = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gx
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !70 ; 2 uses
  %.sroa.speculated82 = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 %i.gz)
  %i.hc = sext i32 %.sroa.speculated82 to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0125, i64 %i.hc ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !70 ; 2 uses
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !70
  %i.hg = sext i32 %i.he to i64                   ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.gz, i32 %i.hb)
  %i.hh = load ptr, ptr %i.fh, align 8, !tbaa !175
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hg
  store i32 %.sroa.speculated, ptr %i.hi, align 4, !tbaa !70
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %.sroa.9.0137
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !74
  %i.hl = load ptr, ptr %i.ea, align 8, !tbaa !174
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.hg
  store double %i.hk, ptr %i.hm, align 8, !tbaa !74
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.hn = add nsw i64 %.sroa.9.0137, 1            ; 2 uses
  %exitcond159.not = icmp eq i64 %i.hn, %.sink.i74
  br i1 %exitcond159.not, label %._crit_edge139.split, label %bb.u, !llvm.loop !370
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_7ProductINS9_IS3_NS_15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EEENSB_IdLin1ELin1ELi0ELin1ELin1EEELi0EEESG_EEvRKNS_10MatrixBaseIT_EERNSI_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::assign_op.242", align 1 ; 3 uses
  %4 = alloca %"struct.Eigen::internal::assign_op.242", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Product.452", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::Product.461", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::TriangularView.478", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !159
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 5 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.f, ptr %5, align 8, !tbaa !371, !alias.scope !373
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !376, !nonnull !102, !align !182
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !68   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9
  %.not.i.i.i.i.i = icmp eq i64 %i.m, %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %.not11.i.i.i.i.i = icmp eq i64 %i.o, %i.k
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS5_INS5_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES2_Li0EEELi2EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.k, 0
  br i1 %i.p, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = sdiv i64 9223372036854775807, %i.k
  %i.r = icmp sgt i64 %i.d, %i.q
  br i1 %i.r, label %bb.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.t = mul nsw i64 %i.k, %i.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.t, i64 noundef %i.d, i64 noundef %i.k)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS5_INS5_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES2_Li0EEELi2EEEEERS2_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS5_INS5_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES2_Li0EEELi2EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.c, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i
  call void @_ZN5Eigen8internal26permutation_matrix_productINS_7ProductINS2_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EEENS6_IdLin1ELin1ELi0ELin1ELin1EEELi0EEELi1ELb0ENS_10DenseShapeEE3runISB_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKSC_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS4_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISH_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS5_INS5_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES2_Li0EEELi2EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !173  ; 15 uses
  %i.x = icmp eq ptr %i.w, null                   ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !148  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !144 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !70
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !70
  %i.af = sub nsw i32 %i.ad, %i.ae
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !144 ; 17 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ak = and i64 %i.aj, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.al = lshr exact i64 %i.aj, 2
  %i.am = sub nsw i64 0, %i.al
  %i.an = and i64 %i.am, 3
  %i.ao = call i64 @llvm.smin.i64(i64 %i.an, i64 %i.ah)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.l ], [ %i.ah, %bb.k ] ; 12 uses
  %i.ap = sub nsw i64 %i.ah, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.aq = sdiv i64 %i.ap, 8
  %i.ar = shl nsw i64 %i.aq, 3                    ; 2 uses
  %i.as = sdiv i64 %i.ap, 4                       ; 2 uses
  %i.at = shl nsw i64 %i.as, 2                    ; 2 uses
  %i.au = add nsw i64 %i.ar, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.av = add nsw i64 %i.at, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.ap, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.aw = getelementptr [4 x i8], ptr %i.w, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ax = load <2 x i64>, ptr %i.aw, align 1, !tbaa !109 ; 2 uses
  %i.ay = icmp sgt i64 %i.ap, 7
  br i1 %i.ay, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr i8, ptr %i.aw, i64 16
  %i.ba = load <4 x i32>, ptr %i.az, align 1, !tbaa !109 ; 2 uses
  %i.bb = bitcast <2 x i64> %i.ax to <4 x i32>    ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.ap, 15
  br i1 %i.bc, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.n
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.n
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ba, %bb.n ], [ %i.bn, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.bb, %bb.n ], [ %i.bj, %.lr.ph.i.i.i.i ]
  %i.bd = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.be = bitcast <4 x i32> %i.bd to <2 x i64>
  %i.bf = icmp sgt i64 %i.at, %i.ar
  br i1 %i.bf, label %bb.o, label %bb.p

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.bb, %.lr.ph.preheader.i.i.i.i ]
  %i.bg = phi <4 x i32> [ %i.bn, %.lr.ph.i.i.i.i ], [ %i.ba, %.lr.ph.preheader.i.i.i.i ]
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.w, i64 %.05780.i.i.i.i
  %i.bi = load <4 x i32>, ptr %i.bh, align 1, !tbaa !109
  %i.bj = add <4 x i32> %i.bi, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %i.w, i64 %.057.in79.i.i.i.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 48
  %i.bm = load <4 x i32>, ptr %i.bl, align 1, !tbaa !109
  %i.bn = add <4 x i32> %i.bm, %i.bg              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bo = icmp slt i64 %.057.i.i.i.i, %i.au
  br i1 %i.bo, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !302

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.au
  %i.bq = load <4 x i32>, ptr %i.bp, align 1, !tbaa !109
  %i.br = add <4 x i32> %i.bq, %i.bd
  %i.bs = bitcast <4 x i32> %i.br to <2 x i64>
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i, %bb.m
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ax, %bb.m ], [ %i.bs, %bb.o ], [ %i.be, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bt = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bu = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bv = shufflevector <4 x i32> %i.bu, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bw = add <4 x i32> %i.bv, %i.bt              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bw, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bw, %shift ; 2 uses
  %8 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bx = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bx, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.p
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader246, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.by = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.by, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi134 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load = load <4 x i32>, ptr %i.bz, align 4, !tbaa !70
  %wide.load135 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !70
  %i.cb = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cc = add <4 x i32> %wide.load135, %vec.phi134 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !378

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cc, %i.cb
  %i.ce = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader246

.lr.ph85.i.i.i.i.preheader246:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %8, %.lr.ph85.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.p
  %.075.lcssa.i.i.i.i = phi i32 [ %8, %bb.p ], [ %i.ce, %middle.block ], [ %i.cu, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.cf = icmp slt i64 %i.av, %i.ah
  br i1 %i.cf, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.cg = shl nsw i64 %i.as, 2
  %i.ch = add i64 %.0.i.i.i.i.i.i.i.i, %i.cg
  %i.ci = sub i64 %i.ah, %i.ch                    ; 3 uses
  %min.iters.check137 = icmp ult i64 %i.ci, 8
  br i1 %min.iters.check137, label %.lr.ph89.i.i.i.i.preheader241, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec139 = and i64 %i.ci, -8                   ; 3 uses
  %i.cj = add i64 %i.av, %n.vec139
  %i.ck = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.cl = getelementptr [4 x i8], ptr %i.w, i64 %i.av
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body140 ] ; 2 uses
  %vec.phi142 = phi <4 x i32> [ %i.ck, %vector.ph138 ], [ %i.co, %vector.body140 ]
  %vec.phi143 = phi <4 x i32> [ zeroinitializer, %vector.ph138 ], [ %i.cp, %vector.body140 ]
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %index141 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load144 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !70
  %wide.load145 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !70
  %i.co = add <4 x i32> %wide.load144, %vec.phi142 ; 2 uses
  %i.cp = add <4 x i32> %wide.load145, %vec.phi143 ; 2 uses
  %index.next146 = add nuw i64 %index141, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.cq, label %middle.block147, label %vector.body140, !llvm.loop !379

middle.block147:                                  ; preds = %vector.body140
  %bin.rdx148 = add <4 x i32> %i.cp, %i.co
  %i.cr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx148) ; 2 uses
  %cmp.n149 = icmp eq i64 %i.ci, %n.vec139
  br i1 %cmp.n149, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader241

.lr.ph89.i.i.i.i.preheader241:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block147
  %.05588.i.i.i.i.ph = phi i64 [ %i.av, %.lr.ph89.i.i.i.i.preheader ], [ %i.cj, %middle.block147 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.cr, %middle.block147 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader246, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cv, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader246 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cu, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader246 ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.05683.i.i.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !70
  %i.cu = add nsw i32 %i.ct, %.07582.i.i.i.i      ; 2 uses
  %i.cv = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cv, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !380

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader241, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cz, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader241 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cy, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader241 ]
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.w, i64 %.05588.i.i.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !70
  %i.cy = add nsw i32 %i.cx, %.187.i.i.i.i        ; 2 uses
  %i.cz = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.da = icmp slt i64 %i.cz, %i.ah
  br i1 %i.da, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !381

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.db = load i32, ptr %i.w, align 4, !tbaa !70  ; 3 uses
  %i.dc = icmp sgt i64 %i.ah, 1
  br i1 %i.dc, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.q
  %i.dd = add nsw i64 %i.ah, -1                   ; 2 uses
  %min.iters.check153 = icmp ult i64 %i.ah, 9
  br i1 %min.iters.check153, label %.lr.ph94.i.i.i.i.preheader237, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec155 = and i64 %i.dd, -8                   ; 3 uses
  %i.de = or disjoint i64 %n.vec155, 1
  %i.df = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.db, i64 0
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body156 ] ; 2 uses
  %vec.phi158 = phi <4 x i32> [ %i.df, %vector.ph154 ], [ %i.dj, %vector.body156 ]
  %vec.phi159 = phi <4 x i32> [ zeroinitializer, %vector.ph154 ], [ %i.dk, %vector.body156 ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index157 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  %wide.load160 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !70
  %wide.load161 = load <4 x i32>, ptr %i.di, align 4, !tbaa !70
  %i.dj = add <4 x i32> %wide.load160, %vec.phi158 ; 2 uses
  %i.dk = add <4 x i32> %wide.load161, %vec.phi159 ; 2 uses
  %index.next162 = add nuw i64 %index157, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.dl, label %middle.block163, label %vector.body156, !llvm.loop !382

middle.block163:                                  ; preds = %vector.body156
  %bin.rdx164 = add <4 x i32> %i.dk, %i.dj
  %i.dm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx164) ; 2 uses
  %cmp.n165 = icmp eq i64 %i.dd, %n.vec155
  br i1 %cmp.n165, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader237

.lr.ph94.i.i.i.i.preheader237:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block163
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.de, %middle.block163 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.db, %.lr.ph94.i.i.i.i.preheader ], [ %i.dm, %middle.block163 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader237, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.dq, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader237 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.dp, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader237 ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.092.i.i.i.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !70
  %i.dp = add nsw i32 %i.do, %.291.i.i.i.i        ; 2 uses
  %i.dq = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.dq, %i.ah
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !383

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block147, %middle.block163, %.preheader.i.i.i.i, %bb.q, %bb.i
  %i.dr = phi i64 [ %i.ab, %bb.i ], [ %i.ah, %middle.block163 ], [ %i.ah, %.preheader.i.i.i.i ], [ %i.ah, %bb.q ], [ %i.ah, %middle.block147 ], [ %i.ah, %.lr.ph94.i.i.i.i ], [ %i.ah, %.lr.ph89.i.i.i.i ] ; 2 uses
  %.0.i.in = phi i32 [ %i.af, %bb.i ], [ %i.dm, %middle.block163 ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.db, %bb.q ], [ %i.cr, %middle.block147 ], [ %i.dp, %.lr.ph94.i.i.i.i ], [ %i.cy, %.lr.ph89.i.i.i.i ]
  %i.ds = icmp sgt i32 %.0.i.in, 0
  br i1 %i.ds, label %bb.r, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit

bb.r:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !68 ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.preheader.lr.ph.i.i, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit

.preheader.lr.ph.i.i:                             ; preds = %bb.r
  %i.dw = icmp sgt i64 %i.dr, 0
  %i.dx = load ptr, ptr %2, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %i.dw, label %.preheader.i.i, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit

.preheader.i.i:                                   ; preds = %.preheader.lr.ph.i.i, %._crit_edge.i.i
  %.046.i.i = phi i64 [ %i.ee, %._crit_edge.i.i ], [ 0, %.preheader.lr.ph.i.i ] ; 2 uses
  %i.ed = mul nsw i64 %.046.i.i, %i.dz
  %invariant.gep44.i.i = getelementptr [8 x i8], ptr %i.dx, i64 %i.ed ; 4 uses
  br label %bb.s

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i
  %i.ee = add nuw nsw i64 %.046.i.i, 1            ; 2 uses
  %exitcond51.not.i.i = icmp eq i64 %i.ee, %i.du
  br i1 %exitcond51.not.i.i, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit, label %.preheader.i.i, !llvm.loop !384

bb.s:                                             ; preds = %.loopexit.i.i, %.preheader.i.i
  %.01940.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.gp, %.loopexit.i.i ] ; 6 uses
  %gep45.i.i = getelementptr [8 x i8], ptr %invariant.gep44.i.i, i64 %.01940.i.i ; 6 uses
  %i.ef = load double, ptr %gep45.i.i, align 8, !tbaa !74 ; 3 uses
  %i.eg = fcmp une double %i.ef, 0.000000e+00
  br i1 %i.eg, label %bb.t, label %.loopexit.i.i

bb.t:                                             ; preds = %bb.s
  %i.eh = load ptr, ptr %i.ea, align 8, !tbaa !174 ; 5 uses
  %i.ei = load ptr, ptr %i.eb, align 8, !tbaa !175 ; 4 uses
  %i.ej = load ptr, ptr %i.ec, align 8, !tbaa !148
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.01940.i.i ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !70
  %i.em = sext i32 %i.el to i64                   ; 4 uses
end_hunk_2
begin_hunk_3_@_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_7ProductINS9_IS3_NS_15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EEENSB_IdLin1ELin1ELi0ELin1ELin1EEELi0EEESG_EEvRKNS_10MatrixBaseIT_EERNSI_IT0_EE:bb.a
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !74
  %i.fc = fdiv double %i.ef, %i.fb
  store double %i.fc, ptr %gep45.i.i, align 8, !tbaa !74
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.sroa.11.037.i.i
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !74
  %i.ff = fdiv double %i.ef, %i.fe
  store double %i.ff, ptr %gep45.i.i, align 8, !tbaa !74
  %i.fg = icmp eq i64 %.01940.i.i, %i.ex
  %i.fh = zext i1 %i.fg to i64
  %spec.select.i.i = add nsw i64 %.sroa.11.037.i.i, %i.fh
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge.i.i
  %.sroa.11.1.i.i = phi i64 [ %.sroa.11.0.lcssa.i.i, %.critedge.i.i ], [ %spec.select.i.i, %bb.x ] ; 7 uses
  %i.fi = icmp slt i64 %.sroa.11.1.i.i, %.sink.i.i.i
  br i1 %i.fi, label %.lr.ph39.i.i.preheader, label %.loopexit.i.i

.lr.ph39.i.i.preheader:                           ; preds = %bb.y
  %i.fj = sub i64 %.sink.i.i.i, %.sroa.11.1.i.i
  %.neg = add i64 %.sroa.11.1.i.i, 1
  %xtraiter = and i64 %i.fj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph39.i.i.prol.loopexit, label %.lr.ph39.i.i.prol

.lr.ph39.i.i.prol:                                ; preds = %.lr.ph39.i.i.preheader
  %i.fk = load double, ptr %gep45.i.i, align 8, !tbaa !74
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.sroa.11.1.i.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !74
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %.sroa.11.1.i.i
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !70
  %i.fp = sext i32 %i.fo to i64
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep44.i.i, i64 %i.fp ; 2 uses
  %i.fq = load double, ptr %gep.i.i.prol, align 8, !tbaa !74
  %i.fr = fneg double %i.fk
  %i.fs = call double @llvm.fmuladd.f64(double %i.fr, double %i.fm, double %i.fq)
  store double %i.fs, ptr %gep.i.i.prol, align 8, !tbaa !74
  %i.ft = add nsw i64 %.sroa.11.1.i.i, 1
  br label %.lr.ph39.i.i.prol.loopexit

.lr.ph39.i.i.prol.loopexit:                       ; preds = %.lr.ph39.i.i.prol, %.lr.ph39.i.i.preheader
  %.sroa.11.238.i.i.unr = phi i64 [ %.sroa.11.1.i.i, %.lr.ph39.i.i.preheader ], [ %i.ft, %.lr.ph39.i.i.prol ]
  %i.fu = icmp eq i64 %.sink.i.i.i, %.neg
  br i1 %i.fu, label %.loopexit.i.i, label %.lr.ph39.i.i

.lr.ph39.i.i:                                     ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i
  %.sroa.11.238.i.i = phi i64 [ %i.go, %.lr.ph39.i.i ], [ %.sroa.11.238.i.i.unr, %.lr.ph39.i.i.prol.loopexit ] ; 4 uses
  %i.fv = load double, ptr %gep45.i.i, align 8, !tbaa !74
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.sroa.11.238.i.i
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !74
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %.sroa.11.238.i.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !70
  %i.ga = sext i32 %i.fz to i64
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep44.i.i, i64 %i.ga ; 2 uses
  %i.gb = load double, ptr %gep.i.i, align 8, !tbaa !74
  %i.gc = fneg double %i.fv
  %i.gd = call double @llvm.fmuladd.f64(double %i.gc, double %i.fx, double %i.gb)
  store double %i.gd, ptr %gep.i.i, align 8, !tbaa !74
  %i.ge = add nsw i64 %.sroa.11.238.i.i, 1        ; 2 uses
  %i.gf = load double, ptr %gep45.i.i, align 8, !tbaa !74
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ge
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !74
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ge
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !70
  %i.gk = sext i32 %i.gj to i64
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep44.i.i, i64 %i.gk ; 2 uses
  %i.gl = load double, ptr %gep.i.i.1, align 8, !tbaa !74
  %i.gm = fneg double %i.gf
  %i.gn = call double @llvm.fmuladd.f64(double %i.gm, double %i.gh, double %i.gl)
  store double %i.gn, ptr %gep.i.i.1, align 8, !tbaa !74
  %i.go = add nsw i64 %.sroa.11.238.i.i, 2        ; 2 uses
  %exitcond49.not.i.i.1 = icmp eq i64 %i.go, %.sink.i.i.i
  br i1 %exitcond49.not.i.i.1, label %.loopexit.i.i, label %.lr.ph39.i.i, !llvm.loop !386

.loopexit.i.i:                                    ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i, %bb.y, %bb.s
  %i.gp = add nuw nsw i64 %.01940.i.i, 1          ; 2 uses
  %exitcond50.not.i.i = icmp eq i64 %i.gp, %i.dr
  br i1 %exitcond50.not.i.i, label %._crit_edge.i.i, label %bb.s, !llvm.loop !387

_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit: ; preds = %._crit_edge.i.i, %bb.j, %.preheader.lr.ph.i.i, %bb.r, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !141
  %i.gs = icmp sgt i64 %i.gr, 0
  br i1 %i.gs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !388, !alias.scope !389
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %2, ptr %i.gv, align 8, !tbaa !57, !alias.scope !389
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !173
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit
  %i.gw = phi ptr [ %.pre, %bb.z ], [ %i.w, %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit ] ; 13 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !148 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !144
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !70
  %i.he = load i32, ptr %i.gz, align 4, !tbaa !70
  %i.hf = sub nsw i32 %i.hd, %i.he
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45

bb.ac:                                            ; preds = %bb.aa
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !144 ; 11 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hj = ptrtoint ptr %i.gw to i64               ; 2 uses
  %i.hk = and i64 %i.hj, 3
  %.not.i.i.i.i.i.i.i.i11 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i.i.i11, label %bb.ae, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i12

bb.ae:                                            ; preds = %bb.ad
  %i.hl = lshr exact i64 %i.hj, 2
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = and i64 %i.hm, 3
  %i.ho = call i64 @llvm.smin.i64(i64 %i.hn, i64 %i.hh)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i12

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i12: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i13 = phi i64 [ %i.ho, %bb.ae ], [ %i.hh, %bb.ad ] ; 12 uses
  %i.hp = sub nsw i64 %i.hh, %.0.i.i.i.i.i.i.i.i13 ; 5 uses
  %i.hq = sdiv i64 %i.hp, 8
  %i.hr = shl nsw i64 %i.hq, 3                    ; 2 uses
  %i.hs = sdiv i64 %i.hp, 4                       ; 2 uses
  %i.ht = shl nsw i64 %i.hs, 2                    ; 2 uses
  %i.hu = add nsw i64 %i.hr, %.0.i.i.i.i.i.i.i.i13 ; 2 uses
  %i.hv = add nsw i64 %i.ht, %.0.i.i.i.i.i.i.i.i13 ; 4 uses
  %.off.i.i.i.i14 = add i64 %i.hp, 3
  %.not.i.i.i.i15 = icmp ult i64 %.off.i.i.i.i14, 7
  br i1 %.not.i.i.i.i15, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i12
  %i.hw = getelementptr [4 x i8], ptr %i.gw, i64 %.0.i.i.i.i.i.i.i.i13 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.hw, align 1, !tbaa !109 ; 2 uses
  %i.hy = icmp sgt i64 %i.hp, 7
  br i1 %i.hy, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.hz = getelementptr i8, ptr %i.hw, i64 16
  %i.ia = load <4 x i32>, ptr %i.hz, align 1, !tbaa !109 ; 2 uses
  %i.ib = bitcast <2 x i64> %i.hx to <4 x i32>    ; 2 uses
  %i.ic = icmp samesign ugt i64 %i.hp, 15
  br i1 %i.ic, label %.lr.ph.preheader.i.i.i.i34, label %._crit_edge.i.i.i.i31

.lr.ph.preheader.i.i.i.i34:                       ; preds = %bb.ag
  %.05777.i.i.i.i35 = add nsw i64 %.0.i.i.i.i.i.i.i.i13, 8
  br label %.lr.ph.i.i.i.i36

._crit_edge.i.i.i.i31:                            ; preds = %.lr.ph.i.i.i.i36, %bb.ag
  %.lcssa.i.i.i.i32 = phi <4 x i32> [ %i.ia, %bb.ag ], [ %i.in, %.lr.ph.i.i.i.i36 ]
  %.sroa.067.0.lcssa.i.i.i.i33 = phi <4 x i32> [ %i.ib, %bb.ag ], [ %i.ij, %.lr.ph.i.i.i.i36 ]
  %i.id = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i33, %.lcssa.i.i.i.i32 ; 2 uses
  %i.ie = bitcast <4 x i32> %i.id to <2 x i64>
  %i.if = icmp sgt i64 %i.ht, %i.hr
  br i1 %i.if, label %bb.ah, label %bb.ai

.lr.ph.i.i.i.i36:                                 ; preds = %.lr.ph.i.i.i.i36, %.lr.ph.preheader.i.i.i.i34
  %.05780.i.i.i.i37 = phi i64 [ %.057.i.i.i.i40, %.lr.ph.i.i.i.i36 ], [ %.05777.i.i.i.i35, %.lr.ph.preheader.i.i.i.i34 ] ; 3 uses
  %.057.in79.i.i.i.i38 = phi i64 [ %.05780.i.i.i.i37, %.lr.ph.i.i.i.i36 ], [ %.0.i.i.i.i.i.i.i.i13, %.lr.ph.preheader.i.i.i.i34 ]
  %.sroa.067.078.i.i.i.i39 = phi <4 x i32> [ %i.ij, %.lr.ph.i.i.i.i36 ], [ %i.ib, %.lr.ph.preheader.i.i.i.i34 ]
  %i.ig = phi <4 x i32> [ %i.in, %.lr.ph.i.i.i.i36 ], [ %i.ia, %.lr.ph.preheader.i.i.i.i34 ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %.05780.i.i.i.i37
  %i.ii = load <4 x i32>, ptr %i.ih, align 1, !tbaa !109
  %i.ij = add <4 x i32> %i.ii, %.sroa.067.078.i.i.i.i39 ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %i.gw, i64 %.057.in79.i.i.i.i38
  %i.il = getelementptr i8, ptr %i.ik, i64 48
  %i.im = load <4 x i32>, ptr %i.il, align 1, !tbaa !109
  %i.in = add <4 x i32> %i.im, %i.ig              ; 2 uses
  %.057.i.i.i.i40 = add nsw i64 %.05780.i.i.i.i37, 8 ; 2 uses
  %i.io = icmp slt i64 %.057.i.i.i.i40, %i.hu
  br i1 %i.io, label %.lr.ph.i.i.i.i36, label %._crit_edge.i.i.i.i31, !llvm.loop !302

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i31
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.hu
  %i.iq = load <4 x i32>, ptr %i.ip, align 1, !tbaa !109
  %i.ir = add <4 x i32> %i.iq, %i.id
  %i.is = bitcast <4 x i32> %i.ir to <2 x i64>
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i.i.i.i31, %bb.af
  %.sroa.067.2.i.i.i.i16 = phi <2 x i64> [ %i.hx, %bb.af ], [ %i.is, %bb.ah ], [ %i.ie, %._crit_edge.i.i.i.i31 ] ; 2 uses
  %i.it = bitcast <2 x i64> %.sroa.067.2.i.i.i.i16 to <4 x i32>
  %i.iu = bitcast <2 x i64> %.sroa.067.2.i.i.i.i16 to <4 x i32>
  %i.iv = shufflevector <4 x i32> %i.iu, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.iw = add <4 x i32> %i.iv, %i.it              ; 2 uses
  %shift217 = shufflevector <4 x i32> %i.iw, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop218 = add nsw <4 x i32> %i.iw, %shift217 ; 2 uses
  %9 = extractelement <4 x i32> %foldExtExtBinop218, i64 0 ; 2 uses
  %i.ix = icmp sgt i64 %.0.i.i.i.i.i.i.i.i13, 0
  br i1 %i.ix, label %.lr.ph85.i.i.i.i27.preheader, label %.preheader.i.i.i.i19

.lr.ph85.i.i.i.i27.preheader:                     ; preds = %bb.ai
  %min.iters.check169 = icmp ult i64 %.0.i.i.i.i.i.i.i.i13, 8
  br i1 %min.iters.check169, label %.lr.ph85.i.i.i.i27.preheader228, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph85.i.i.i.i27.preheader
  %n.vec171 = and i64 %.0.i.i.i.i.i.i.i.i13, 9223372036854775800 ; 3 uses
  %i.iy = shufflevector <4 x i32> %foldExtExtBinop218, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body172 ] ; 2 uses
  %vec.phi174 = phi <4 x i32> [ %i.iy, %vector.ph170 ], [ %i.jb, %vector.body172 ]
  %vec.phi175 = phi <4 x i32> [ zeroinitializer, %vector.ph170 ], [ %i.jc, %vector.body172 ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index173 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load176 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !70
  %wide.load177 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !70
  %i.jb = add <4 x i32> %wide.load176, %vec.phi174 ; 2 uses
  %i.jc = add <4 x i32> %wide.load177, %vec.phi175 ; 2 uses
  %index.next178 = add nuw i64 %index173, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.jd, label %middle.block179, label %vector.body172, !llvm.loop !392

middle.block179:                                  ; preds = %vector.body172
  %bin.rdx180 = add <4 x i32> %i.jc, %i.jb
  %i.je = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx180) ; 2 uses
  %cmp.n181 = icmp eq i64 %.0.i.i.i.i.i.i.i.i13, %n.vec171
  br i1 %cmp.n181, label %.preheader.i.i.i.i19, label %.lr.ph85.i.i.i.i27.preheader228

.lr.ph85.i.i.i.i27.preheader228:                  ; preds = %.lr.ph85.i.i.i.i27.preheader, %middle.block179
  %.05683.i.i.i.i28.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i27.preheader ], [ %n.vec171, %middle.block179 ]
  %.07582.i.i.i.i29.ph = phi i32 [ %9, %.lr.ph85.i.i.i.i27.preheader ], [ %i.je, %middle.block179 ]
  br label %.lr.ph85.i.i.i.i27

.preheader.i.i.i.i19:                             ; preds = %.lr.ph85.i.i.i.i27, %middle.block179, %bb.ai
  %.075.lcssa.i.i.i.i20 = phi i32 [ %9, %bb.ai ], [ %i.je, %middle.block179 ], [ %i.ju, %.lr.ph85.i.i.i.i27 ] ; 3 uses
  %i.jf = icmp slt i64 %i.hv, %i.hh
  br i1 %i.jf, label %.lr.ph89.i.i.i.i24.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45

.lr.ph89.i.i.i.i24.preheader:                     ; preds = %.preheader.i.i.i.i19
  %i.jg = shl nsw i64 %i.hs, 2
  %i.jh = add i64 %.0.i.i.i.i.i.i.i.i13, %i.jg
  %i.ji = sub i64 %i.hh, %i.jh                    ; 3 uses
  %min.iters.check185 = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check185, label %.lr.ph89.i.i.i.i24.preheader223, label %vector.ph186

vector.ph186:                                     ; preds = %.lr.ph89.i.i.i.i24.preheader
  %n.vec187 = and i64 %i.ji, -8                   ; 3 uses
  %i.jj = add i64 %i.hv, %n.vec187
  %i.jk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i20, i64 0
  %i.jl = getelementptr [4 x i8], ptr %i.gw, i64 %i.hv
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body188 ] ; 2 uses
  %vec.phi190 = phi <4 x i32> [ %i.jk, %vector.ph186 ], [ %i.jo, %vector.body188 ]
  %vec.phi191 = phi <4 x i32> [ zeroinitializer, %vector.ph186 ], [ %i.jp, %vector.body188 ]
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %index189 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load192 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !70
  %wide.load193 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !70
  %i.jo = add <4 x i32> %wide.load192, %vec.phi190 ; 2 uses
  %i.jp = add <4 x i32> %wide.load193, %vec.phi191 ; 2 uses
  %index.next194 = add nuw i64 %index189, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.jq, label %middle.block195, label %vector.body188, !llvm.loop !393

middle.block195:                                  ; preds = %vector.body188
  %bin.rdx196 = add <4 x i32> %i.jp, %i.jo
  %i.jr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx196) ; 2 uses
  %cmp.n197 = icmp eq i64 %i.ji, %n.vec187
  br i1 %cmp.n197, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45, label %.lr.ph89.i.i.i.i24.preheader223

.lr.ph89.i.i.i.i24.preheader223:                  ; preds = %.lr.ph89.i.i.i.i24.preheader, %middle.block195
  %.05588.i.i.i.i25.ph = phi i64 [ %i.hv, %.lr.ph89.i.i.i.i24.preheader ], [ %i.jj, %middle.block195 ]
  %.187.i.i.i.i26.ph = phi i32 [ %.075.lcssa.i.i.i.i20, %.lr.ph89.i.i.i.i24.preheader ], [ %i.jr, %middle.block195 ]
  br label %.lr.ph89.i.i.i.i24

.lr.ph85.i.i.i.i27:                               ; preds = %.lr.ph85.i.i.i.i27.preheader228, %.lr.ph85.i.i.i.i27
  %.05683.i.i.i.i28 = phi i64 [ %i.jv, %.lr.ph85.i.i.i.i27 ], [ %.05683.i.i.i.i28.ph, %.lr.ph85.i.i.i.i27.preheader228 ] ; 2 uses
  %.07582.i.i.i.i29 = phi i32 [ %i.ju, %.lr.ph85.i.i.i.i27 ], [ %.07582.i.i.i.i29.ph, %.lr.ph85.i.i.i.i27.preheader228 ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.05683.i.i.i.i28
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !70
  %i.ju = add nsw i32 %i.jt, %.07582.i.i.i.i29    ; 2 uses
  %i.jv = add nuw nsw i64 %.05683.i.i.i.i28, 1    ; 2 uses
  %exitcond.not.i.i.i.i30 = icmp eq i64 %i.jv, %.0.i.i.i.i.i.i.i.i13
  br i1 %exitcond.not.i.i.i.i30, label %.preheader.i.i.i.i19, label %.lr.ph85.i.i.i.i27, !llvm.loop !394

.lr.ph89.i.i.i.i24:                               ; preds = %.lr.ph89.i.i.i.i24.preheader223, %.lr.ph89.i.i.i.i24
  %.05588.i.i.i.i25 = phi i64 [ %i.jz, %.lr.ph89.i.i.i.i24 ], [ %.05588.i.i.i.i25.ph, %.lr.ph89.i.i.i.i24.preheader223 ] ; 2 uses
  %.187.i.i.i.i26 = phi i32 [ %i.jy, %.lr.ph89.i.i.i.i24 ], [ %.187.i.i.i.i26.ph, %.lr.ph89.i.i.i.i24.preheader223 ]
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %.05588.i.i.i.i25
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !70
  %i.jy = add nsw i32 %i.jx, %.187.i.i.i.i26      ; 2 uses
  %i.jz = add nsw i64 %.05588.i.i.i.i25, 1        ; 2 uses
  %i.ka = icmp slt i64 %i.jz, %i.hh
  br i1 %i.ka, label %.lr.ph89.i.i.i.i24, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45, !llvm.loop !395

bb.aj:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i12
  %i.kb = load i32, ptr %i.gw, align 4, !tbaa !70 ; 3 uses
  %i.kc = icmp sgt i64 %i.hh, 1
  br i1 %i.kc, label %.lr.ph94.i.i.i.i41.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45

.lr.ph94.i.i.i.i41.preheader:                     ; preds = %bb.aj
  %i.kd = add nsw i64 %i.hh, -1                   ; 2 uses
  %min.iters.check201 = icmp ult i64 %i.hh, 9
  br i1 %min.iters.check201, label %.lr.ph94.i.i.i.i41.preheader220, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph94.i.i.i.i41.preheader
  %n.vec203 = and i64 %i.kd, -8                   ; 3 uses
  %i.ke = or disjoint i64 %n.vec203, 1
  %i.kf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kb, i64 0
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next210, %vector.body204 ] ; 2 uses
  %vec.phi206 = phi <4 x i32> [ %i.kf, %vector.ph202 ], [ %i.kj, %vector.body204 ]
  %vec.phi207 = phi <4 x i32> [ zeroinitializer, %vector.ph202 ], [ %i.kk, %vector.body204 ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index205 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %wide.load208 = load <4 x i32>, ptr %i.kh, align 4, !tbaa !70
  %wide.load209 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !70
  %i.kj = add <4 x i32> %wide.load208, %vec.phi206 ; 2 uses
  %i.kk = add <4 x i32> %wide.load209, %vec.phi207 ; 2 uses
  %index.next210 = add nuw i64 %index205, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next210, %n.vec203
  br i1 %i.kl, label %middle.block211, label %vector.body204, !llvm.loop !396

middle.block211:                                  ; preds = %vector.body204
  %bin.rdx212 = add <4 x i32> %i.kk, %i.kj
  %i.km = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx212) ; 2 uses
  %cmp.n213 = icmp eq i64 %i.kd, %n.vec203
  br i1 %cmp.n213, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45, label %.lr.ph94.i.i.i.i41.preheader220

.lr.ph94.i.i.i.i41.preheader220:                  ; preds = %.lr.ph94.i.i.i.i41.preheader, %middle.block211
  %.092.i.i.i.i42.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i41.preheader ], [ %i.ke, %middle.block211 ]
  %.291.i.i.i.i43.ph = phi i32 [ %i.kb, %.lr.ph94.i.i.i.i41.preheader ], [ %i.km, %middle.block211 ]
  br label %.lr.ph94.i.i.i.i41

.lr.ph94.i.i.i.i41:                               ; preds = %.lr.ph94.i.i.i.i41.preheader220, %.lr.ph94.i.i.i.i41
  %.092.i.i.i.i42 = phi i64 [ %i.kq, %.lr.ph94.i.i.i.i41 ], [ %.092.i.i.i.i42.ph, %.lr.ph94.i.i.i.i41.preheader220 ] ; 2 uses
  %.291.i.i.i.i43 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i41 ], [ %.291.i.i.i.i43.ph, %.lr.ph94.i.i.i.i41.preheader220 ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.092.i.i.i.i42
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !70
  %i.kp = add nsw i32 %i.ko, %.291.i.i.i.i43      ; 2 uses
  %i.kq = add nuw nsw i64 %.092.i.i.i.i42, 1      ; 2 uses
  %exitcond102.not.i.i.i.i44 = icmp eq i64 %i.kq, %i.hh
  br i1 %exitcond102.not.i.i.i.i44, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45, label %.lr.ph94.i.i.i.i41, !llvm.loop !397

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45: ; preds = %.lr.ph89.i.i.i.i24, %.lr.ph94.i.i.i.i41, %middle.block195, %middle.block211, %.preheader.i.i.i.i19, %bb.aj, %bb.ab
  %.0.i23.in = phi i32 [ %i.hf, %bb.ab ], [ %i.kp, %.lr.ph94.i.i.i.i41 ], [ %.075.lcssa.i.i.i.i20, %.preheader.i.i.i.i19 ], [ %i.kb, %bb.aj ], [ %i.km, %middle.block211 ], [ %i.jr, %middle.block195 ], [ %i.jy, %.lr.ph89.i.i.i.i24 ]
  %i.kr = icmp sgt i32 %.0.i23.in, 0
  br i1 %i.kr, label %bb.ak, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45.thread

bb.ak:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i8 0, ptr %7, align 8, !tbaa !398, !alias.scope !400
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i8 0, ptr %i.ks, align 8, !alias.scope !400
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.u, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !400
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45.thread: ; preds = %bb.ac, %bb.ak, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45
  %i.kt = load i64, ptr %i.c, align 8, !tbaa !14
  %i.ku = icmp sgt i64 %i.kt, 0
  br i1 %i.ku, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit45.thread
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !14 ; 5 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !68 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !9
  %.not.i.i.i.i.i46 = icmp eq i64 %i.lb, %i.kx
  br i1 %.not.i.i.i.i.i46, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lc = icmp eq i64 %i.kx, 0
  %i.ld = icmp eq i64 %i.kz, 0
  %or.cond.i.i.i.i.i.i.i49 = or i1 %i.lc, %i.ld
  br i1 %or.cond.i.i.i.i.i.i.i49, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i50, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.le = sdiv i64 9223372036854775807, %i.kz
  %i.lf = icmp sgt i64 %i.kx, %i.le
  br i1 %i.lf, label %bb.ao, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i50

bb.ao:                                            ; preds = %bb.an
  %i.lg = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.lg, align 8, !tbaa !20
  call void @__cxa_throw(ptr nonnull %i.lg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
end_hunk_3
