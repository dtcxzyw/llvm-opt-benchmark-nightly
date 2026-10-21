Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/type_node?download=true
inline.NumInlined: 1390
inline.NumDeleted: 650
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4cvc58internal8TypeNode22isInstantiatedDatatypeEv:bb.a

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #22
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.ah = tail call noundef i64 @_ZNK4cvc58internal5DType16getNumParametersEv(ptr noundef nonnull align 8 dereferenceable(448) %i.x) ; 2 uses
  %exitcond.not35 = icmp eq i64 %i.ah, 0
  br i1 %exitcond.not35, label %.critedge, label %.lr.ph

bb.j:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit30
  %exitcond.not = icmp eq i64 %i.aj, %i.ah
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !267

bb.k:                                             ; preds = %_ZNK4cvc58internal8TypeNodeixEi.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.v

.lr.ph:                                           ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %bb.j
  %.036 = phi i64 [ %i.aj, %bb.j ], [ 0, %_ZN4cvc58internal8TypeNodeD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNK4cvc58internal5DType12getParameterEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %2, ptr noundef nonnull align 8 dereferenceable(448) %i.x, i64 noundef %.036)
  %i.aj = add i64 %.036, 1                        ; 3 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !18, !noalias !271 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noalias !271
  %i.an = trunc i64 %i.am to i32
  %i.ao = and i32 %i.an, 1023                     ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 1023
  %i.aq = select i1 %i.ap, i32 -1, i32 %i.ao
  %i.ar = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.aq)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.lr.ph
  %i.as = icmp eq i32 %i.ar, 2
  %i.at = zext i1 %i.as to i64
  %spec.select.i.i = add i64 %i.aj, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %sext = shl i64 %spec.select.i.i, 32
  %i.av = ashr exact i64 %sext, 29
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !40, !noalias !271 ; 8 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !271 ; 4 uses
  %i.az = lshr i64 %i.ay, 40
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = and i32 %i.ba, 1048575                  ; 3 uses
  %i.bc = icmp samesign ult i32 %i.bb, 1048574
  br i1 %i.bc, label %bb.l, label %bb.m, !prof !36

bb.l:                                             ; preds = %.noexc
  %i.bd = add nuw nsw i32 %i.bb, 1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 40
  %i.bg = and i64 %i.ay, -1152920405095219201
  %i.bh = or i64 %i.bf, %i.bg                     ; 2 uses
  store i64 %i.bh, ptr %i.ax, align 8, !noalias !271
  br label %_ZNK4cvc58internal8TypeNodeixEi.exit26

bb.m:                                             ; preds = %.noexc
  %i.bi = icmp eq i32 %i.bb, 1048574
  br i1 %i.bi, label %bb.n, label %_ZNK4cvc58internal8TypeNodeixEi.exit26, !prof !19

bb.n:                                             ; preds = %bb.m
  %i.bj = or i64 %i.ay, 1152920405095219200
  store i64 %i.bj, ptr %i.ax, align 8, !noalias !271
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %._ZNK4cvc58internal8TypeNodeixEi.exit26_crit_edge unwind label %bb.u

._ZNK4cvc58internal8TypeNodeixEi.exit26_crit_edge: ; preds = %bb.n
  %.pre = load i64, ptr %i.ax, align 8
  br label %_ZNK4cvc58internal8TypeNodeixEi.exit26

_ZNK4cvc58internal8TypeNodeixEi.exit26:           ; preds = %._ZNK4cvc58internal8TypeNodeixEi.exit26_crit_edge, %bb.m, %bb.l
  %i.bk = phi i64 [ %.pre, %._ZNK4cvc58internal8TypeNodeixEi.exit26_crit_edge ], [ %i.ay, %bb.m ], [ %i.bh, %bb.l ] ; 3 uses
  %i.bl = load ptr, ptr %2, align 8, !tbaa !18
  %i.bm = icmp eq ptr %i.bl, %i.ax
  %i.bn = and i64 %i.bk, 1152920405095219200
  %.not.i.i27 = icmp eq i64 %i.bn, 1152920405095219200
  br i1 %.not.i.i27, label %_ZN4cvc58internal8TypeNodeD2Ev.exit28, label %bb.o, !prof !19

bb.o:                                             ; preds = %_ZNK4cvc58internal8TypeNodeixEi.exit26
  %i.bo = add i64 %i.bk, 1152920405095219200
  %i.bp = and i64 %i.bo, 1152920405095219200      ; 2 uses
  %i.bq = and i64 %i.bk, -1152920405095219201
  %i.br = or disjoint i64 %i.bp, %i.bq
  store i64 %i.br, ptr %i.ax, align 8
  %i.bs = icmp eq i64 %i.bp, 0
  br i1 %i.bs, label %bb.p, label %_ZN4cvc58internal8TypeNodeD2Ev.exit28, !prof !19

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit28 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #22
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit28:            ; preds = %_ZNK4cvc58internal8TypeNodeixEi.exit26, %bb.o, %bb.p
  %i.bv = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8            ; 3 uses
  %i.bx = and i64 %i.bw, 1152920405095219200
  %.not.i.i29 = icmp eq i64 %i.bx, 1152920405095219200
  br i1 %.not.i.i29, label %_ZN4cvc58internal8TypeNodeD2Ev.exit30, label %bb.r, !prof !19

bb.r:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit28
  %i.by = add i64 %i.bw, 1152920405095219200
  %i.bz = and i64 %i.by, 1152920405095219200      ; 2 uses
  %i.ca = and i64 %i.bw, -1152920405095219201
  %i.cb = or disjoint i64 %i.bz, %i.ca
  store i64 %i.cb, ptr %i.bv, align 8
  %i.cc = icmp eq i64 %i.bz, 0
  br i1 %i.cc, label %bb.s, label %_ZN4cvc58internal8TypeNodeD2Ev.exit30, !prof !19

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit30 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #22
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit30:            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit28, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.bm, label %_ZN4cvc58internal8TypeNodeD2Ev.exit30..critedge.loopexit_crit_edge, label %bb.j, !llvm.loop !267

bb.u:                                             ; preds = %bb.n, %.lr.ph
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %i.ai, %bb.k ]
  resume { ptr, i32 } %.pn

_ZN4cvc58internal8TypeNodeD2Ev.exit30..critedge.loopexit_crit_edge: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit30, %bb.a
  br label %.critedge, !llvm.loop !267

.critedge:                                        ; preds = %bb.j, %_ZN4cvc58internal8TypeNodeD2Ev.exit, %_ZN4cvc58internal8TypeNodeD2Ev.exit30..critedge.loopexit_crit_edge, %bb.a, %bb.a, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %_ZN4cvc58internal8TypeNodeD2Ev.exit ], [ true, %bb.a ], [ true, %bb.a ], [ false, %_ZN4cvc58internal8TypeNodeD2Ev.exit30..critedge.loopexit_crit_edge ], [ true, %bb.j ]
  ret i1 %.2
}

declare noundef i64 @_ZNK4cvc58internal5DType16getNumParametersEv(ptr noundef nonnull align 8 dereferenceable(448)) local_unnamed_addr #5

declare void @_ZNK4cvc58internal5DType12getParameterEm(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8, ptr noundef nonnull align 8 dereferenceable(448), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK4cvc58internal8TypeNode31isInstantiatedUninterpretedSortEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 1023
  %i.e = icmp eq i64 %i.d, 2
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4cvc58internal8TypeNode14isInstantiatedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4cvc58internal8TypeNode22isInstantiatedDatatypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 1023
  %i.f = icmp eq i64 %i.e, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4cvc58internal8TypeNode11instantiateERKSt6vectorIS1_SaIS1_EE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  %6 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 8 uses
  %8 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN4cvc58internal8TypeNodeC2Ev.exit, !prof !144

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeC2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %_ZN4cvc58internal8TypeNodeC2Ev.exit

common.resume:                                    ; preds = %bb.bi, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.e ], [ %.pn21.pn.pn, %bb.bi ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %common.resume

_ZN4cvc58internal8TypeNodeC2Ev.exit:              ; preds = %bb.a, %bb.b, %bb.d
  %i.l = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40 ; 9 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !18
  %i.m = and i64 %i.e, 1023
  %i.n = icmp eq i64 %i.m, 231
  br i1 %i.n, label %bb.f, label %bb.al

bb.f:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.o = load ptr, ptr %1, align 8, !tbaa !18, !noalias !276 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !276
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 1023                       ; 2 uses
  %i.t = icmp eq i32 %i.s, 1023
  %i.u = select i1 %i.t, i32 -1, i32 %i.s
  %i.v = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.u)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  %i.w = icmp eq i32 %i.v, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.y = zext i1 %i.w to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40, !noalias !276 ; 5 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !18, !alias.scope !276
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !276 ; 3 uses
  %i.ac = lshr i64 %i.ab, 40
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1048575                  ; 3 uses
  %i.af = icmp samesign ult i32 %i.ae, 1048574
  br i1 %i.af, label %bb.g, label %bb.h, !prof !36

bb.g:                                             ; preds = %.noexc
  %i.ag = add nuw nsw i32 %i.ae, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 40
  %i.aj = and i64 %i.ab, -1152920405095219201
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.aa, align 8, !noalias !276
  br label %_ZNK4cvc58internal8TypeNodeixEi.exit

bb.h:                                             ; preds = %.noexc
  %i.al = icmp eq i32 %i.ae, 1048574
  br i1 %i.al, label %bb.i, label %_ZNK4cvc58internal8TypeNodeixEi.exit, !prof !19

bb.i:                                             ; preds = %bb.h
  %i.am = or i64 %i.ab, 1152920405095219200
  store i64 %i.am, ptr %i.aa, align 8, !noalias !276
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_ZNK4cvc58internal8TypeNodeixEi.exit unwind label %bb.l

_ZNK4cvc58internal8TypeNodeixEi.exit:             ; preds = %bb.h, %bb.g, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backERKS2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNK4cvc58internal8TypeNodeixEi.exit
  %i.ao = load ptr, ptr %2, align 8, !tbaa !145   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !145 ; 2 uses
  %.not59 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not59, label %._crit_edge, label %.lr.ph.a

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backERKS2_.exit33, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !277
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull align 8 dereferenceable(3592) %i.c, i32 noundef 231)
          to label %.noexc28 unwind label %bb.ai

.noexc28:                                         ; preds = %._crit_edge
  %i.ar = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendERKSt6vectorINS0_8TypeNodeESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.j unwind label %bb.k, !noalias !277

bb.j:                                             ; preds = %.noexc28
  invoke void @_ZN4cvc58internal11NodeBuilder17constructTypeNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %6, ptr noundef nonnull align 8 dereferenceable(124) %i.ar)
          to label %bb.r unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc28
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !277
  br label %.body

bb.l:                                             ; preds = %bb.i, %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.lr.ph.a:                                         ; preds = %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backERKS2_.exit33
  %.sroa.056.060 = phi ptr [ %i.bl, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backERKS2_.exit33 ], [ %i.ao, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.au = load ptr, ptr %9, align 8, !tbaa !127   ; 3 uses
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !134
  %.not.i29 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i29, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.lr.ph.a
  %i.aw = load ptr, ptr %.sroa.056.060, align 8, !tbaa !18 ; 5 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !18
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = lshr i64 %i.ax, 40
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = and i32 %i.az, 1048575                  ; 3 uses
  %i.bb = icmp samesign ult i32 %i.ba, 1048574
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !36

bb.n:                                             ; preds = %bb.m
  %i.bc = add nuw nsw i32 %i.ba, 1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 40
  %i.bf = and i64 %i.ax, -1152920405095219201
  %i.bg = or i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.aw, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i30

bb.o:                                             ; preds = %bb.m
  %i.bh = icmp eq i32 %i.ba, 1048574
  br i1 %i.bh, label %bb.p, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i30, !prof !19

bb.p:                                             ; preds = %bb.o
  %i.bi = or i64 %i.ax, 1152920405095219200
  store i64 %i.bi, ptr %i.aw, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i30:      ; preds = %bb.p, %bb.o, %bb.n
  %i.bj = load ptr, ptr %9, align 8, !tbaa !127
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %9, align 8, !tbaa !127
  br label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backERKS2_.exit33

bb.q:                                             ; preds = %.lr.ph.a
  invoke void @_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.au, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.056.060)
          to label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backERKS2_.exit33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backERKS2_.exit33: ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i30, %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.056.060, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.aq
  br i1 %.not, label %._crit_edge, label %.lr.ph.a

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.p, %_ZNK4cvc58internal8TypeNodeixEi.exit
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.j
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !277
  %i.bm = load ptr, ptr %6, align 8, !tbaa !18
  %.not.i34 = icmp eq ptr %i.l, %i.bm
  br i1 %.not.i34, label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit, label %bb.s, !prof !19

bb.s:                                             ; preds = %bb.r
  %i.bn = load i64, ptr %i.l, align 8             ; 3 uses
  %i.bo = and i64 %i.bn, 1152920405095219200
  %.not.i.i35 = icmp eq i64 %i.bo, 1152920405095219200
  br i1 %.not.i.i35, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.t, !prof !19

bb.t:                                             ; preds = %bb.s
  %i.bp = add i64 %i.bn, 1152920405095219200
  %i.bq = and i64 %i.bp, 1152920405095219200      ; 2 uses
  %i.br = and i64 %i.bn, -1152920405095219201
  %i.bs = or disjoint i64 %i.bq, %i.br
  store i64 %i.bs, ptr %i.l, align 8
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %bb.u, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !19

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.aj

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.u, %bb.t, %bb.s
  %i.bu = load ptr, ptr %6, align 8, !tbaa !18    ; 5 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !18
  %i.bv = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.bw = lshr i64 %i.bv, 40
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = and i32 %i.bx, 1048575                  ; 3 uses
  %i.bz = icmp samesign ult i32 %i.by, 1048574
  br i1 %i.bz, label %bb.v, label %bb.w, !prof !36

bb.v:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ca = add nuw nsw i32 %i.by, 1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 40
  %i.cd = and i64 %i.bv, -1152920405095219201
  %i.ce = or i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.bu, align 8
  br label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit

bb.w:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.cf = icmp eq i32 %i.by, 1048574
  br i1 %i.cf, label %bb.x, label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit, !prof !19

bb.x:                                             ; preds = %bb.w
  %i.cg = or i64 %i.bv, 1152920405095219200
  store i64 %i.cg, ptr %i.bu, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit unwind label %bb.aj

_ZN4cvc58internal8TypeNodeaSERKS1_.exit:          ; preds = %bb.w, %bb.v, %bb.r, %bb.x
  %i.ch = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8            ; 3 uses
  %i.cj = and i64 %i.ci, 1152920405095219200
  %.not.i.i38 = icmp eq i64 %i.cj, 1152920405095219200
  br i1 %.not.i.i38, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.y, !prof !19

bb.y:                                             ; preds = %_ZN4cvc58internal8TypeNodeaSERKS1_.exit
  %i.ck = add i64 %i.ci, 1152920405095219200
  %i.cl = and i64 %i.ck, 1152920405095219200      ; 2 uses
  %i.cm = and i64 %i.ci, -1152920405095219201
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.ch, align 8
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %bb.z, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !19

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #22
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZN4cvc58internal8TypeNodeaSERKS1_.exit, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.cr = load ptr, ptr %5, align 8, !tbaa !128   ; 3 uses
  %i.cs = load ptr, ptr %9, align 8, !tbaa !127   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dd, %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i ], [ %i.cr, %_ZN4cvc58internal8TypeNodeD2Ev.exit ] ; 2 uses
  %i.ct = load ptr, ptr %.05.i.i.i, align 8, !tbaa !18 ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8            ; 3 uses
  %i.cv = and i64 %i.cu, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cv, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i, label %bb.ab, !prof !19

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.cw = add i64 %i.cu, 1152920405095219200
  %i.cx = and i64 %i.cw, 1152920405095219200      ; 2 uses
  %i.cy = and i64 %i.cu, -1152920405095219201
  %i.cz = or disjoint i64 %i.cx, %i.cy
  store i64 %i.cz, ptr %i.ct, align 8
  %i.da = icmp eq i64 %i.cx, 0
  br i1 %i.da, label %bb.ac, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i, !prof !19

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #22
  unreachable

_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i: ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dd, %i.cs
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !128
  br label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.de = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.cr, %_ZN4cvc58internal8TypeNodeD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i
  %i.df = load ptr, ptr %i.an, align 8, !tbaa !134
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.di) #24
  br label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.dj = load ptr, ptr %4, align 8, !tbaa !18    ; 3 uses
  %i.dk = load i64, ptr %i.dj, align 8            ; 3 uses
  %i.dl = and i64 %i.dk, 1152920405095219200
  %.not.i.i40 = icmp eq i64 %i.dl, 1152920405095219200
  br i1 %.not.i.i40, label %_ZN4cvc58internal8TypeNodeD2Ev.exit42, label %bb.af, !prof !19

bb.af:                                            ; preds = %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit
  %i.dm = add i64 %i.dk, 1152920405095219200
  %i.dn = and i64 %i.dm, 1152920405095219200      ; 2 uses
  %i.do = and i64 %i.dk, -1152920405095219201
  %i.dp = or disjoint i64 %i.dn, %i.do
  store i64 %i.dp, ptr %i.dj, align 8
  %i.dq = icmp eq i64 %i.dn, 0
  br i1 %i.dq, label %bb.ag, label %_ZN4cvc58internal8TypeNodeD2Ev.exit42, !prof !19

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit42 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #22
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit42:            ; preds = %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bh

bb.ai:                                            ; preds = %._crit_edge
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.x, %bb.u
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  br label %.body

.body:                                            ; preds = %bb.ai, %bb.k, %bb.aj
  %.pn19 = phi { ptr, i32 } [ %i.du, %bb.aj ], [ %i.dt, %bb.ai ], [ %i.as, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn21 = phi { ptr, i32 } [ %.pn19, %.body ], [ %lpad.loopexit.split-lp83, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %bb.l
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %.loopexit.split-lp ], [ %i.at, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bi

bb.al:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.dv = load ptr, ptr %1, align 8, !tbaa !18    ; 5 uses
  store ptr %i.dv, ptr %8, align 8, !tbaa !18
  %i.dw = load i64, ptr %i.dv, align 8            ; 3 uses
  %i.dx = lshr i64 %i.dw, 40
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 1048575                  ; 3 uses
  %i.ea = icmp samesign ult i32 %i.dz, 1048574
  br i1 %i.ea, label %bb.am, label %bb.an, !prof !36

bb.am:                                            ; preds = %bb.al
  %i.eb = add nuw nsw i32 %i.dz, 1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 40
  %i.ee = and i64 %i.dw, -1152920405095219201
  %i.ef = or i64 %i.ed, %i.ee
  store i64 %i.ef, ptr %i.dv, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.an:                                            ; preds = %bb.al
  %i.eg = icmp eq i32 %i.dz, 1048574
  br i1 %i.eg, label %bb.ao, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !19

bb.ao:                                            ; preds = %bb.an
  %i.eh = or i64 %i.dw, 1152920405095219200
  store i64 %i.eh, ptr %i.dv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.bc

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.an, %bb.am, %bb.ao
  invoke void @_ZN4cvc58internal11NodeManager6mkSortENS0_8TypeNodeERKSt6vectorIS2_SaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %7, ptr noundef nonnull align 8 dereferenceable(3592) %i.c, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ap unwind label %bb.bd

bb.ap:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.ei = load ptr, ptr %7, align 8, !tbaa !18    ; 3 uses
  %.not.i44 = icmp eq ptr %i.l, %i.ei
  br i1 %.not.i44, label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit49, label %bb.aq, !prof !19

bb.aq:                                            ; preds = %bb.ap
  %i.ej = load i64, ptr %i.l, align 8             ; 3 uses
  %i.ek = and i64 %i.ej, 1152920405095219200
  %.not.i.i45 = icmp eq i64 %i.ek, 1152920405095219200
  br i1 %.not.i.i45, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i46, label %bb.ar, !prof !19

bb.ar:                                            ; preds = %bb.aq
  %i.el = add i64 %i.ej, 1152920405095219200
  %i.em = and i64 %i.el, 1152920405095219200      ; 2 uses
  %i.en = and i64 %i.ej, -1152920405095219201
  %i.eo = or disjoint i64 %i.em, %i.en
  store i64 %i.eo, ptr %i.l, align 8
  %i.ep = icmp eq i64 %i.em, 0
  br i1 %i.ep, label %bb.as, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i46, !prof !19

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i46_crit_edge unwind label %bb.be

._ZN4cvc58internal4expr9NodeValue3decEv.exit.i46_crit_edge: ; preds = %bb.as
  %.pre = load ptr, ptr %7, align 8, !tbaa !18
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i46

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i46:  ; preds = %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i46_crit_edge, %bb.ar, %bb.aq
  %i.eq = phi ptr [ %.pre, %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i46_crit_edge ], [ %i.ei, %bb.ar ], [ %i.ei, %bb.aq ] ; 5 uses
  store ptr %i.eq, ptr %0, align 8, !tbaa !18
  %i.er = load i64, ptr %i.eq, align 8            ; 3 uses
  %i.es = lshr i64 %i.er, 40
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = and i32 %i.et, 1048575                  ; 3 uses
  %i.ev = icmp samesign ult i32 %i.eu, 1048574
  br i1 %i.ev, label %bb.at, label %bb.au, !prof !36

bb.at:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i46
  %i.ew = add nuw nsw i32 %i.eu, 1
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, 40
  %i.ez = and i64 %i.er, -1152920405095219201
  %i.fa = or i64 %i.ey, %i.ez
  store i64 %i.fa, ptr %i.eq, align 8
  br label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit49

bb.au:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i46
  %i.fb = icmp eq i32 %i.eu, 1048574
  br i1 %i.fb, label %bb.av, label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit49, !prof !19

bb.av:                                            ; preds = %bb.au
  %i.fc = or i64 %i.er, 1152920405095219200
  store i64 %i.fc, ptr %i.eq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit49 unwind label %bb.be

_ZN4cvc58internal8TypeNodeaSERKS1_.exit49:        ; preds = %bb.au, %bb.at, %bb.ap, %bb.av
  %i.fd = load ptr, ptr %7, align 8, !tbaa !18    ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 8            ; 3 uses
  %i.ff = and i64 %i.fe, 1152920405095219200
  %.not.i.i50 = icmp eq i64 %i.ff, 1152920405095219200
  br i1 %.not.i.i50, label %_ZN4cvc58internal8TypeNodeD2Ev.exit52, label %bb.aw, !prof !19

bb.aw:                                            ; preds = %_ZN4cvc58internal8TypeNodeaSERKS1_.exit49
  %i.fg = add i64 %i.fe, 1152920405095219200
  %i.fh = and i64 %i.fg, 1152920405095219200      ; 2 uses
  %i.fi = and i64 %i.fe, -1152920405095219201
  %i.fj = or disjoint i64 %i.fh, %i.fi
  store i64 %i.fj, ptr %i.fd, align 8
  %i.fk = icmp eq i64 %i.fh, 0
  br i1 %i.fk, label %bb.ax, label %_ZN4cvc58internal8TypeNodeD2Ev.exit52, !prof !19

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit52 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #22
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit52:            ; preds = %_ZN4cvc58internal8TypeNodeaSERKS1_.exit49, %bb.aw, %bb.ax
  %i.fn = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  %i.fo = load i64, ptr %i.fn, align 8            ; 3 uses
  %i.fp = and i64 %i.fo, 1152920405095219200
  %.not.i.i53 = icmp eq i64 %i.fp, 1152920405095219200
  br i1 %.not.i.i53, label %_ZN4cvc58internal8TypeNodeD2Ev.exit55, label %bb.az, !prof !19

bb.az:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit52
  %i.fq = add i64 %i.fo, 1152920405095219200
  %i.fr = and i64 %i.fq, 1152920405095219200      ; 2 uses
  %i.fs = and i64 %i.fo, -1152920405095219201
  %i.ft = or disjoint i64 %i.fr, %i.fs
  store i64 %i.ft, ptr %i.fn, align 8
  %i.fu = icmp eq i64 %i.fr, 0
  br i1 %i.fu, label %bb.ba, label %_ZN4cvc58internal8TypeNodeD2Ev.exit55, !prof !19

end_hunk_0
