Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_bv_type_rules?download=true
inline.NumInlined: 331
inline.NumDeleted: 70
begin_hunk_0_@_ZN4cvc58internal6theory2bv23BitVectorBVPredTypeRule11computeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEbPSo:bb.a
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  resume { ptr, i32 } %.pn14

bb.y:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit27, %bb.a
  call void @_ZN4cvc58internal11NodeManager15mkBitVectorTypeEj(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, i32 noundef 1)
  br label %bb.z

bb.z:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit27, %bb.y
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv21BitVectorSizeTypeRule14preComputeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull %1, ptr nofree noundef readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4cvc58internal11NodeManager11integerTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1)
  ret void
}

declare void @_ZN4cvc58internal11NodeManager11integerTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8, ptr noundef nonnull align 8 dereferenceable(3592)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv21BitVectorSizeTypeRule11computeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate.67", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !118 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !118
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g), !noalias !118
  %i.i = icmp eq i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = zext i1 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16, !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.m, ptr %5, align 8, !tbaa !15, !noalias !119
  call void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %6, ptr noundef nonnull align 8 %5, i1 noundef zeroext %3, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.n = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode11isMaybeKindENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 89)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %4, null
  %or.cond.i = or i1 %.not.i, %i.n
  br i1 %or.cond.i, label %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str, i64 noundef 27)
          to label %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit unwind label %bb.g ; 0 uses

_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit: ; preds = %.noexc, %bb.b
  br i1 %i.n, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.p = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !120 ; 5 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !11, !alias.scope !120
  %i.q = load i64, ptr %i.p, align 8, !noalias !120 ; 3 uses
  %i.r = lshr i64 %i.q, 40
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 1048575                    ; 3 uses
  %i.u = icmp samesign ult i32 %i.t, 1048574
  br i1 %i.u, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i32 %i.t, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 40
  %i.y = and i64 %i.q, -1152920405095219201
  %i.z = or i64 %i.x, %i.y
  store i64 %i.z, ptr %i.p, align 8, !noalias !120
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i32 %i.t, 1048574
  br i1 %i.aa, label %bb.f, label %_ZN4cvc58internal8TypeNode4nullEv.exit, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.ab = or i64 %i.q, 1152920405095219200
  store i64 %i.ab, ptr %i.p, align 8, !noalias !120
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZN4cvc58internal8TypeNode4nullEv.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.a, %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.ac

bb.h:                                             ; preds = %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit
  invoke void @_ZN4cvc58internal11NodeManager11integerTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1)
          to label %_ZN4cvc58internal8TypeNode4nullEv.exit unwind label %bb.g

_ZN4cvc58internal8TypeNode4nullEv.exit:           ; preds = %bb.e, %bb.d, %bb.f, %bb.h
  %i.ad = load ptr, ptr %6, align 8, !tbaa !11    ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = and i64 %i.ae, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.af, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.i, !prof !13

bb.i:                                             ; preds = %_ZN4cvc58internal8TypeNode4nullEv.exit
  %i.ag = add i64 %i.ae, 1152920405095219200
  %i.ah = and i64 %i.ag, 1152920405095219200      ; 2 uses
  %i.ai = and i64 %i.ae, -1152920405095219201
  %i.aj = or disjoint i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.ad, align 8
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %bb.j, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !13

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #13
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZN4cvc58internal8TypeNode4nullEv.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv23BitVectorConcatTypeRule14preComputeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::internal::TypeNode") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.a = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !123 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11, !alias.scope !123
  %i.b = load i64, ptr %i.a, align 8, !noalias !123 ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8, !noalias !123
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal8TypeNode4nullEv.exit, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8, !noalias !123
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !123
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

_ZN4cvc58internal8TypeNode4nullEv.exit:           ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv23BitVectorConcatTypeRule11computeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate.67", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 11 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 2
  %spec.select.v.i.i = select i1 %i.i, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.v.i.i ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = lshr i64 %i.m, 32
  %i.o = and i64 %i.n, 67108863
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.o ; 2 uses
  %.not51 = icmp eq ptr %spec.select.i.i, %i.p
  br i1 %.not51, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %4, null                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4cvc58internal8TypeNodeD2Ev.exit.jt3
  %.02254 = phi i8 [ 0, %.lr.ph ], [ %.123.jt3, %_ZN4cvc58internal8TypeNodeD2Ev.exit.jt3 ]
  %.02553 = phi i32 [ 0, %.lr.ph ], [ %.227.jt3, %_ZN4cvc58internal8TypeNodeD2Ev.exit.jt3 ] ; 4 uses
  %.sroa.038.052 = phi ptr [ %spec.select.i.i, %.lr.ph ], [ %i.bj, %_ZN4cvc58internal8TypeNodeD2Ev.exit.jt3 ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.038.052, align 8, !tbaa !16, !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.q, ptr %5, align 8, !tbaa !15, !noalias !133
  call void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %6, ptr noundef nonnull align 8 %5, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.r = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode11isMaybeKindENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 89)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.b
  %or.cond.i = or i1 %.not.i, %i.r
  br i1 %or.cond.i, label %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str, i64 noundef 27)
          to label %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit unwind label %.loopexit ; 0 uses

_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit: ; preds = %.noexc, %bb.c
  br i1 %i.r, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.t = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !134 ; 5 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !11, !alias.scope !134
  %i.u = load i64, ptr %i.t, align 8, !noalias !134 ; 3 uses
  %i.v = lshr i64 %i.u, 40
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = and i32 %i.w, 1048575                    ; 3 uses
  %i.y = icmp samesign ult i32 %i.x, 1048574
  br i1 %i.y, label %_ZN4cvc58internal8TypeNode4nullEv.exit.jt1.sink.split, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i32 %i.x, 1048574
  br i1 %i.z, label %bb.f, label %_ZN4cvc58internal8TypeNode4nullEv.exit.jt1, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.aa = or i64 %i.u, 1152920405095219200
  store i64 %i.aa, ptr %i.t, align 8, !noalias !134
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_ZN4cvc58internal8TypeNode4nullEv.exit.jt1 unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.h, %bb.b, %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.g:                                             ; preds = %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit
  %i.ab = trunc nuw i8 %.02254 to i1
  br i1 %i.ab, label %_ZN4cvc58internal8TypeNode4nullEv.exit.jt3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode10isAbstractEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.i unwind label %.loopexit

bb.i:                                             ; preds = %bb.h
  br i1 %i.ac, label %_ZN4cvc58internal8TypeNode4nullEv.exit.jt3, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = invoke noundef i32 @_ZNK4cvc58internal8TypeNode16getBitVectorSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %.loopexit70

bb.k:                                             ; preds = %bb.j
  %add = add i32 %i.ad, %.02553                   ; 2 uses
  %not.add.overflow = icmp uge i32 %add, %.02553  ; 2 uses
  %or.cond.i33 = or i1 %.not.i, %not.add.overflow
  br i1 %or.cond.i33, label %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.12, i64 noundef 74)
          to label %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread unwind label %.loopexit.split-lp71 ; 0 uses

_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit: ; preds = %bb.k
  br i1 %not.add.overflow, label %_ZN4cvc58internal8TypeNode4nullEv.exit.jt3, label %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread

_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread: ; preds = %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.af = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !135 ; 5 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !11, !alias.scope !135
  %i.ag = load i64, ptr %i.af, align 8, !noalias !135 ; 3 uses
  %i.ah = lshr i64 %i.ag, 40
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1048575                  ; 3 uses
  %i.ak = icmp samesign ult i32 %i.aj, 1048574
  br i1 %i.ak, label %_ZN4cvc58internal8TypeNode4nullEv.exit.jt1.sink.split, label %bb.m, !prof !12

bb.m:                                             ; preds = %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread
  %i.al = icmp eq i32 %i.aj, 1048574
  br i1 %i.al, label %bb.n, label %_ZN4cvc58internal8TypeNode4nullEv.exit.jt1, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.am = or i64 %i.ag, 1152920405095219200
  store i64 %i.am, ptr %i.af, align 8, !noalias !135
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZN4cvc58internal8TypeNode4nullEv.exit.jt1 unwind label %.loopexit.split-lp71

.loopexit70:                                      ; preds = %bb.j
  %lpad.loopexit72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp71:                             ; preds = %bb.l, %bb.n
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZN4cvc58internal8TypeNode4nullEv.exit.jt3:       ; preds = %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit, %bb.i, %bb.g
  %.227.jt3 = phi i32 [ %add, %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit ], [ %.02553, %bb.g ], [ %.02553, %bb.i ] ; 2 uses
  %.123.jt3 = phi i8 [ 0, %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit ], [ 1, %bb.g ], [ 1, %bb.i ] ; 2 uses
  %i.an = load ptr, ptr %6, align 8, !tbaa !11    ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = and i64 %i.ao, 1152920405095219200
  %.not.i.i.jt3 = icmp eq i64 %i.ap, 1152920405095219200
  br i1 %.not.i.i.jt3, label %_ZN4cvc58internal8TypeNodeD2Ev.exit.jt3, label %bb.o, !prof !13

_ZN4cvc58internal8TypeNode4nullEv.exit.jt1.sink.split: ; preds = %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread, %bb.d
  %.sink87 = phi i32 [ %i.x, %bb.d ], [ %i.aj, %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread ]
  %.sink = phi i64 [ %i.u, %bb.d ], [ %i.ag, %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread ]
  %.sink82 = phi ptr [ %i.t, %bb.d ], [ %i.af, %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread ]
  %i.aq = add nuw nsw i32 %.sink87, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 40
  %i.at = and i64 %.sink, -1152920405095219201
  %i.au = or i64 %i.as, %i.at
  store i64 %i.au, ptr %.sink82, align 8, !noalias !20
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit.jt1

_ZN4cvc58internal8TypeNode4nullEv.exit.jt1:       ; preds = %_ZN4cvc58internal8TypeNode4nullEv.exit.jt1.sink.split, %bb.n, %bb.f, %bb.m, %bb.e
  %i.av = load ptr, ptr %6, align 8, !tbaa !11    ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = and i64 %i.aw, 1152920405095219200
  %.not.i.i.jt1 = icmp eq i64 %i.ax, 1152920405095219200
  br i1 %.not.i.i.jt1, label %_ZN4cvc58internal8TypeNodeD2Ev.exit.jt1, label %bb.p, !prof !13

bb.o:                                             ; preds = %_ZN4cvc58internal8TypeNode4nullEv.exit.jt3
  %i.ay = add i64 %i.ao, 1152920405095219200
  %i.az = and i64 %i.ay, 1152920405095219200      ; 2 uses
  %i.ba = and i64 %i.ao, -1152920405095219201
  %i.bb = or disjoint i64 %i.az, %i.ba
  store i64 %i.bb, ptr %i.an, align 8
  %i.bc = icmp eq i64 %i.az, 0
  br i1 %i.bc, label %bb.q, label %_ZN4cvc58internal8TypeNodeD2Ev.exit.jt3, !prof !13

bb.p:                                             ; preds = %_ZN4cvc58internal8TypeNode4nullEv.exit.jt1
  %i.bd = add i64 %i.aw, 1152920405095219200
  %i.be = and i64 %i.bd, 1152920405095219200      ; 2 uses
  %i.bf = and i64 %i.aw, -1152920405095219201
  %i.bg = or disjoint i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.av, align 8
  %i.bh = icmp eq i64 %i.be, 0
  br i1 %i.bh, label %bb.r, label %_ZN4cvc58internal8TypeNodeD2Ev.exit.jt1, !prof !13

bb.q:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit.jt3 unwind label %.loopexit75

bb.r:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit.jt1 unwind label %.loopexit.split-lp76

.loopexit75:                                      ; preds = %bb.q
  %lpad.loopexit77 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.loopexit.split-lp76:                             ; preds = %bb.r
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp76, %.loopexit75
  %lpad.phi79 = phi { ptr, i32 } [ %lpad.loopexit77, %.loopexit75 ], [ %lpad.loopexit.split-lp78, %.loopexit.split-lp76 ]
  %i.bi = extractvalue { ptr, i32 } %lpad.phi79, 0
  call void @__clang_call_terminate(ptr %i.bi) #13
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit.jt3:          ; preds = %bb.o, %bb.q, %_ZN4cvc58internal8TypeNode4nullEv.exit.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.038.052, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.p
  br i1 %.not, label %._crit_edge, label %bb.b

_ZN4cvc58internal8TypeNodeD2Ev.exit.jt1:          ; preds = %bb.p, %bb.r, %_ZN4cvc58internal8TypeNode4nullEv.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.thread

bb.t:                                             ; preds = %.loopexit70, %.loopexit.split-lp71, %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit72, %.loopexit70 ], [ %lpad.loopexit.split-lp73, %.loopexit.split-lp71 ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %.pn

._crit_edge:                                      ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit.jt3
  %i.bk = trunc nuw i8 %.123.jt3 to i1
  br i1 %i.bk, label %bb.u, label %._crit_edge.thread

bb.u:                                             ; preds = %._crit_edge
  call void @_ZN4cvc58internal11NodeManager14mkAbstractTypeENS0_4kind6Kind_tE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, i32 noundef 89)
  br label %.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.025.lcssa69 = phi i32 [ %.227.jt3, %._crit_edge ], [ 0, %bb.a ]
  call void @_ZN4cvc58internal11NodeManager15mkBitVectorTypeEj(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, i32 noundef %.025.lcssa69)
  br label %.thread

.thread:                                          ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit.jt1, %._crit_edge.thread, %bb.u
  ret void
}

declare noundef zeroext i1 @_ZNK4cvc58internal8TypeNode10isAbstractEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i32 @_ZNK4cvc58internal8TypeNode16getBitVectorSizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv21BitVectorToBVTypeRule14preComputeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 2
  %i.j = load i64, ptr %i.b, align 8
  %i.k = lshr i64 %i.j, 32
  %i.l = and i64 %i.k, 67108863
  %i.m = sext i1 %i.i to i64
  %i.n = add nsw i64 %i.l, %i.m
  %i.o = trunc nsw i64 %i.n to i32
  tail call void @_ZN4cvc58internal11NodeManager15mkBitVectorTypeEj(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, i32 noundef %i.o)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv21BitVectorToBVTypeRule11computeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate.67", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 2
  %spec.select.v.i.i = select i1 %i.i, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.v.i.i ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !15     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = lshr i64 %i.m, 32
  %i.o = and i64 %i.n, 67108863
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.o ; 2 uses
  %.not2526 = icmp eq ptr %spec.select.i.i, %i.p
  br i1 %.not2526, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.o
  %.sroa.021.027 = phi ptr [ %i.bb, %bb.o ], [ %spec.select.i.i, %bb.a ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.021.027, align 8, !tbaa !16, !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.q, ptr %5, align 8, !tbaa !15, !noalias !143
  call void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %6, ptr noundef nonnull align 8 %5, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.r = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isBooleanEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph
  br i1 %i.r, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.s = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode15isFullyAbstractEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN4cvc58internal6theory2bv14isMaybeBooleanERKNS0_8TypeNodeE.exit unwind label %.loopexit

_ZN4cvc58internal6theory2bv14isMaybeBooleanERKNS0_8TypeNodeE.exit: ; preds = %bb.b
  br i1 %i.s, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZN4cvc58internal6theory2bv14isMaybeBooleanERKNS0_8TypeNodeE.exit
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.4, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %.lr.ph, %bb.b
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.d, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %lpad.phi

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.u = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !144 ; 5 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !11, !alias.scope !144
  %i.v = load i64, ptr %i.u, align 8, !noalias !144 ; 3 uses
  %i.w = lshr i64 %i.v, 40
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = and i32 %i.x, 1048575                    ; 3 uses
  %i.z = icmp samesign ult i32 %i.y, 1048574
  br i1 %i.z, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = add nuw nsw i32 %i.y, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = and i64 %i.v, -1152920405095219201
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.u, align 8, !noalias !144
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.af = icmp eq i32 %i.y, 1048574
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory2bv23BitVectorExtendTypeRule11computeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEbPSo:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !245 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !245
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g), !noalias !245
  %i.i = icmp eq i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = zext i1 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.m, ptr %5, align 8, !tbaa !15, !noalias !246
  call void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %6, ptr noundef nonnull align 8 %5, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.n = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode11isMaybeKindENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 89)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %4, null                  ; 2 uses
  %or.cond.i = or i1 %.not.i, %i.n
  br i1 %or.cond.i, label %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str, i64 noundef 27)
          to label %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit unwind label %bb.e ; 0 uses

_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit: ; preds = %.noexc, %bb.b
  br i1 %i.n, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.p = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !247 ; 4 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !11, !alias.scope !247
  %i.q = load i64, ptr %i.p, align 8, !noalias !247 ; 3 uses
  %i.r = lshr i64 %i.q, 40
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 1048575                    ; 3 uses
  %i.u = icmp samesign ult i32 %i.t, 1048574
  br i1 %i.u, label %_ZN4cvc58internal8TypeNode4nullEv.exit.sink.split, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %i.t, 1048574
  br i1 %i.v, label %.invoke, label %_ZN4cvc58internal8TypeNode4nullEv.exit, !prof !13

bb.e:                                             ; preds = %.invoke, %bb.j, %bb.i, %bb.b, %bb.a, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.f:                                             ; preds = %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit
  %i.x = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode10isAbstractEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.y = load ptr, ptr %6, align 8, !tbaa !11, !noalias !248 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noalias !248
  %i.ab = and i64 %i.aa, 1023
  %i.ac = icmp eq i64 %i.ab, 14
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = invoke noundef i32 @_ZNK4cvc58internal8TypeNode17getAbstractedKindEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc44 unwind label %bb.e

.noexc44:                                         ; preds = %bb.i
  %i.ae = icmp eq i32 %i.ad, 14
  br i1 %i.ae, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc44
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !11, !noalias !248
  br label %bb.k

bb.j:                                             ; preds = %.noexc44
  invoke void @_ZN4cvc58internal11NodeManager14mkAbstractTypeENS0_4kind6Kind_tE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, i32 noundef 89)
          to label %_ZN4cvc58internal8TypeNode4nullEv.exit unwind label %bb.e

bb.k:                                             ; preds = %._crit_edge.i, %bb.h
  %i.af = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.y, %bb.h ] ; 4 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !11, !alias.scope !248
  %i.ag = load i64, ptr %i.af, align 8, !noalias !248 ; 3 uses
  %i.ah = lshr i64 %i.ag, 40
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1048575                  ; 3 uses
  %i.ak = icmp samesign ult i32 %i.aj, 1048574
  br i1 %i.ak, label %_ZN4cvc58internal8TypeNode4nullEv.exit.sink.split, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.al = icmp eq i32 %i.aj, 1048574
  br i1 %i.al, label %.invoke, label %_ZN4cvc58internal8TypeNode4nullEv.exit, !prof !13

.invoke:                                          ; preds = %bb.l, %bb.d
  %.sink72.a = phi i64 [ %i.q, %bb.d ], [ %i.ag, %bb.l ]
  %.sink71 = phi ptr [ %i.p, %bb.d ], [ %i.af, %bb.l ] ; 2 uses
  %i.am = or i64 %.sink72.a, 1152920405095219200
  store i64 %i.am, ptr %.sink71, align 8, !noalias !20
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.sink71)
          to label %_ZN4cvc58internal8TypeNode4nullEv.exit unwind label %bb.e

bb.m:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %2, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, 1023
  %.not = icmp eq i64 %i.aq, 150
  br i1 %.not, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.o unwind label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %7, align 8, !tbaa !18
  %i.as = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorSignExtendEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.critedge41 unwind label %bb.ae

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.q unwind label %bb.ac

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr %8, align 8, !tbaa !18
  %i.au = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorZeroExtendEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.critedge unwind label %bb.ad

.critedge:                                        ; preds = %bb.q
  %i.av = load i32, ptr %i.au, align 4, !tbaa !250
  %i.aw = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = and i64 %i.ax, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ay, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.r, !prof !13

bb.r:                                             ; preds = %.critedge
  %i.az = add i64 %i.ax, 1152920405095219200
  %i.ba = and i64 %i.az, 1152920405095219200      ; 2 uses
  %i.bb = and i64 %i.ax, -1152920405095219201
  %i.bc = or disjoint i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.aw, align 8
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %bb.s, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !13

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #13
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %.critedge, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %.critedge40

.critedge41:                                      ; preds = %bb.o
  %i.bg = load i32, ptr %i.as, align 4, !tbaa !252
  %i.bh = load ptr, ptr %7, align 8, !tbaa !18    ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = and i64 %i.bi, 1152920405095219200
  %.not.i.i49 = icmp eq i64 %i.bj, 1152920405095219200
  br i1 %.not.i.i49, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit50, label %bb.u, !prof !13

bb.u:                                             ; preds = %.critedge41
  %i.bk = add i64 %i.bi, 1152920405095219200
  %i.bl = and i64 %i.bk, 1152920405095219200      ; 2 uses
  %i.bm = and i64 %i.bi, -1152920405095219201
  %i.bn = or disjoint i64 %i.bl, %i.bm
  store i64 %i.bn, ptr %i.bh, align 8
  %i.bo = icmp eq i64 %i.bl, 0
  br i1 %i.bo, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit50, !prof !13

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit50 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #13
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit50: ; preds = %.critedge41, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %.critedge40

.critedge40:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit50
  %i.br = phi i32 [ %i.av, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %i.bg, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit50 ] ; 2 uses
  %i.bs = invoke noundef i32 @_ZNK4cvc58internal8TypeNode16getBitVectorSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %.critedge40
  %add = add i32 %i.bs, %i.br                     ; 2 uses
  %not.add.overflow = icmp uge i32 %add, %i.br    ; 2 uses
  %or.cond.i52 = or i1 %.not.i, %not.add.overflow
  br i1 %or.cond.i52, label %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.12, i64 noundef 74)
          to label %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread unwind label %bb.ah ; 0 uses

_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit: ; preds = %bb.x
  br i1 %not.add.overflow, label %bb.ai, label %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread

_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread: ; preds = %bb.y, %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.bu = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !253 ; 5 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !11, !alias.scope !253
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !253 ; 3 uses
  %i.bw = lshr i64 %i.bv, 40
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = and i32 %i.bx, 1048575                  ; 3 uses
  %i.bz = icmp samesign ult i32 %i.by, 1048574
  br i1 %i.bz, label %_ZN4cvc58internal8TypeNode4nullEv.exit.sink.split, label %bb.z, !prof !12

bb.z:                                             ; preds = %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread
  %i.ca = icmp eq i32 %i.by, 1048574
  br i1 %i.ca, label %bb.aa, label %_ZN4cvc58internal8TypeNode4nullEv.exit, !prof !13

bb.aa:                                            ; preds = %bb.z
  %i.cb = or i64 %i.bv, 1152920405095219200
  store i64 %i.cb, ptr %i.bu, align 8, !noalias !253
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_ZN4cvc58internal8TypeNode4nullEv.exit unwind label %bb.ah

bb.ab:                                            ; preds = %bb.n
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ac:                                            ; preds = %bb.p
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #12
  br label %bb.af

bb.ae:                                            ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.ad ], [ %i.cd, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae, %bb.ab
  %.pn30.pn.ph = phi { ptr, i32 } [ %i.cc, %bb.ab ], [ %i.cf, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.am

bb.ah:                                            ; preds = %bb.aa, %bb.y, %bb.ai, %.critedge40
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ai:                                            ; preds = %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit
  invoke void @_ZN4cvc58internal11NodeManager15mkBitVectorTypeEj(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, i32 noundef %add)
          to label %_ZN4cvc58internal8TypeNode4nullEv.exit unwind label %bb.ah

_ZN4cvc58internal8TypeNode4nullEv.exit.sink.split: ; preds = %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread, %bb.k, %bb.c
  %.sink78 = phi i32 [ %i.aj, %bb.k ], [ %i.t, %bb.c ], [ %i.by, %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread ]
  %.sink = phi i64 [ %i.ag, %bb.k ], [ %i.q, %bb.c ], [ %i.bv, %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread ]
  %.sink73 = phi ptr [ %i.af, %bb.k ], [ %i.p, %bb.c ], [ %i.bu, %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread ]
  %i.ch = add nuw nsw i32 %.sink78, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 40
  %i.ck = and i64 %.sink, -1152920405095219201
  %i.cl = or i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %.sink73, align 8, !noalias !20
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

_ZN4cvc58internal8TypeNode4nullEv.exit:           ; preds = %_ZN4cvc58internal8TypeNode4nullEv.exit.sink.split, %.invoke, %bb.z, %bb.aa, %bb.l, %bb.j, %bb.d, %bb.ai
  %i.cm = load ptr, ptr %6, align 8, !tbaa !11    ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8            ; 3 uses
  %i.co = and i64 %i.cn, 1152920405095219200
  %.not.i.i56 = icmp eq i64 %i.co, 1152920405095219200
  br i1 %.not.i.i56, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.aj, !prof !13

bb.aj:                                            ; preds = %_ZN4cvc58internal8TypeNode4nullEv.exit
  %i.cp = add i64 %i.cn, 1152920405095219200
  %i.cq = and i64 %i.cp, 1152920405095219200      ; 2 uses
  %i.cr = and i64 %i.cn, -1152920405095219201
  %i.cs = or disjoint i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.cm, align 8
  %i.ct = icmp eq i64 %i.cq, 0
  br i1 %i.ct, label %bb.ak, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !13

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #13
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZN4cvc58internal8TypeNode4nullEv.exit, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.am:                                            ; preds = %bb.af, %bb.ah, %bb.ag, %bb.e
  %.pn35 = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.cg, %bb.ah ], [ %.pn30.pn.ph, %bb.ag ], [ %.pn, %bb.af ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %.pn35
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv26BitVectorEagerAtomTypeRule14preComputeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull %1, ptr nofree noundef readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4cvc58internal11NodeManager11booleanTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv26BitVectorEagerAtomTypeRule11computeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate.67", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  br i1 %3, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !260 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !260
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g), !noalias !260
  %i.i = icmp eq i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = zext i1 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16, !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.m, ptr %5, align 8, !tbaa !15, !noalias !261
  call void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %6, ptr noundef nonnull align 8 %5, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.n = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isBooleanEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %bb.b
  br i1 %i.n, label %_ZN4cvc58internal8TypeNode4nullEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.11, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.i, %bb.e, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.p

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.q = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !262 ; 5 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !11, !alias.scope !262
  %i.r = load i64, ptr %i.q, align 8, !noalias !262 ; 3 uses
  %i.s = lshr i64 %i.r, 40
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 1048575                    ; 3 uses
  %i.v = icmp samesign ult i32 %i.u, 1048574
  br i1 %i.v, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = add nuw nsw i32 %i.u, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 40
  %i.z = and i64 %i.r, -1152920405095219201
  %i.aa = or i64 %i.y, %i.z
  store i64 %i.aa, ptr %i.q, align 8, !noalias !262
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = icmp eq i32 %i.u, 1048574
  br i1 %i.ab, label %bb.i, label %_ZN4cvc58internal8TypeNode4nullEv.exit, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.ac = or i64 %i.r, 1152920405095219200
  store i64 %i.ac, ptr %i.q, align 8, !noalias !262
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_ZN4cvc58internal8TypeNode4nullEv.exit unwind label %bb.f

_ZN4cvc58internal8TypeNode4nullEv.exit:           ; preds = %bb.h, %bb.g, %bb.i, %bb.c
  %i.ad = load ptr, ptr %6, align 8, !tbaa !11    ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = and i64 %i.ae, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.af, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.j, !prof !13

bb.j:                                             ; preds = %_ZN4cvc58internal8TypeNode4nullEv.exit
  %i.ag = add i64 %i.ae, 1152920405095219200
  %i.ah = and i64 %i.ag, 1152920405095219200      ; 2 uses
  %i.ai = and i64 %i.ae, -1152920405095219201
  %i.aj = or disjoint i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.ad, align 8
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %bb.k, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !13

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #13
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZN4cvc58internal8TypeNode4nullEv.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br i1 %i.n, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %bb.a
  call void @_ZN4cvc58internal11NodeManager11booleanTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1)
  br label %bb.n

bb.n:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv36BitVectorAckermanizationUdivTypeRule14preComputeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::internal::TypeNode") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.a = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !265 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11, !alias.scope !265
  %i.b = load i64, ptr %i.a, align 8, !noalias !265 ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8, !noalias !265
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal8TypeNode4nullEv.exit, !prof !13
end_hunk_1
