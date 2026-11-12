Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_arith_type_rules?download=true
inline.NumInlined: 174
inline.NumDeleted: 66
begin_hunk_0_@_ZN4cvc58internal6theory5arith21ArithConstantTypeRule11computeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEbPSo:bb.a
  %i.q = load i64, ptr %i.o, align 8, !tbaa !21
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %.0, label %bb.i, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %.0, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #18
  br label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN4cvc58internal11NodeManager11integerTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.pn10 = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.m:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZN4cvc58internal11NodeManager8realTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8, ptr noundef nonnull align 8 dereferenceable(3592)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !29
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.d, ptr %i.a, align 8, !tbaa !30
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !20
  %i.g = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.g, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !21
  store i8 %i.i, ptr %i.h, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !31
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare void @_ZN4cvc58internal28TypeCheckingExceptionPrivateC1ENS0_12NodeTemplateILb0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef align 8, ptr noundef align 8) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4cvc58internal28TypeCheckingExceptionPrivateD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZN4cvc58internal11NodeManager11integerTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8, ptr noundef nonnull align 8 dereferenceable(3592)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith34ArithRealAlgebraicNumberOpTypeRule14preComputeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull %1, ptr nofree noundef readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4cvc58internal11NodeManager8realTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith34ArithRealAlgebraicNumberOpTypeRule11computeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull %1, ptr nofree noundef readnone align 8 captures(none) %2, i1 noundef zeroext %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4cvc58internal11NodeManager8realTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith32ArithRealAlgebraicNumberTypeRule14preComputeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull %1, ptr nofree noundef readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4cvc58internal11NodeManager8realTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith32ArithRealAlgebraicNumberTypeRule11computeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull %1, ptr nofree noundef readnone align 8 captures(none) %2, i1 noundef zeroext %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4cvc58internal11NodeManager8realTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith21ArithOperatorTypeRule14preComputeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::internal::TypeNode") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.a = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !34 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11, !alias.scope !34
  %i.b = load i64, ptr %i.a, align 8, !noalias !34 ; 3 uses
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
  store i64 %i.k, ptr %i.a, align 8, !noalias !34
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal8TypeNode4nullEv.exit, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8, !noalias !34
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !34
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

_ZN4cvc58internal8TypeNode4nullEv.exit:           ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith21ArithOperatorTypeRule11computeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull %1, ptr nofree noundef readonly align 8 captures(none) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 8 uses
  %8 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN4cvc58internal11NodeManager11integerTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3592) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN4cvc58internal11NodeManager8realTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %7, ptr noundef nonnull align 8 dereferenceable(3592) %1)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g)
          to label %bb.c unwind label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.h, 2
  %spec.select.v.i.i = select i1 %i.i, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.v.i.i ; 3 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %9 = load i64, ptr %i.l, align 8                ; 2 uses
  %10 = lshr i64 %9, 32
  %11 = and i64 %10, 67108863
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %11 ; 3 uses
  %i.n = trunc i64 %9 to i32
  %i.o = and i32 %i.n, 1023                       ; 2 uses
  %.not6163 = icmp eq ptr %spec.select.i.i, %i.m
  br i1 %.not6163, label %_ZN4cvc58internal8TypeNodeD2Ev.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.not = icmp eq ptr %4, null                    ; 2 uses
  %i.p = icmp eq i32 %i.o, 84
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.t
  %.01566.us = phi i1 [ %.1.us, %bb.t ], [ true, %.lr.ph ] ; 2 uses
  %.01665.us = phi i1 [ %.117.us, %bb.t ], [ false, %.lr.ph ]
  %.sroa.058.064.us = phi ptr [ %i.ba, %bb.t ], [ %spec.select.i.i, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.q = load ptr, ptr %.sroa.058.064.us, align 8, !tbaa !22, !noalias !44
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.q, ptr %5, align 8, !tbaa !15, !noalias !45
  invoke void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %8, ptr noundef nonnull align 8 %5, i1 noundef zeroext false, ptr noundef null)
          to label %bb.d unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.r = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode10isAbstractEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.e unwind label %.split71.loopexit.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.g unwind label %.split71.loopexit.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %.015.mux.us = select i1 %i.s, i1 %.01566.us, i1 false
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.117.us = phi i1 [ true, %bb.e ], [ %.01665.us, %bb.g ] ; 2 uses
  %.1.us = phi i1 [ %.01566.us, %bb.e ], [ %.015.mux.us, %bb.g ] ; 2 uses
  %i.t = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode11isRealOrIntEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc.us unwind label %.split71.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc.us:                                        ; preds = %bb.h
  br i1 %i.t, label %_ZN4cvc58internal6theory5arith16isMaybeRealOrIntERKNS0_8TypeNodeE.exit.thread.us, label %bb.i

bb.i:                                             ; preds = %.noexc.us
  %i.u = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode15isFullyAbstractEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN4cvc58internal6theory5arith16isMaybeRealOrIntERKNS0_8TypeNodeE.exit.us unwind label %.split71.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal6theory5arith16isMaybeRealOrIntERKNS0_8TypeNodeE.exit.us: ; preds = %bb.i
  br i1 %i.u, label %_ZN4cvc58internal6theory5arith16isMaybeRealOrIntERKNS0_8TypeNodeE.exit.thread.us, label %bb.j

bb.j:                                             ; preds = %_ZN4cvc58internal6theory5arith16isMaybeRealOrIntERKNS0_8TypeNodeE.exit.us
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.1, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us unwind label %.split71.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us: ; preds = %bb.k, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.w = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !46 ; 4 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !11, !alias.scope !46
  %i.x = load i64, ptr %i.w, align 8, !noalias !46 ; 3 uses
  %i.y = lshr i64 %i.x, 40
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = and i32 %i.z, 1048575                   ; 3 uses
  %i.ab = icmp samesign ult i32 %i.aa, 1048574
  br i1 %i.ab, label %_ZN4cvc58internal8TypeNode4nullEv.exit.us.sink.split, label %bb.l, !prof !12

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
  %i.ac = icmp eq i32 %i.aa, 1048574
  br i1 %i.ac, label %.invoke121, label %_ZN4cvc58internal8TypeNode4nullEv.exit.us, !prof !13

_ZN4cvc58internal6theory5arith16isMaybeRealOrIntERKNS0_8TypeNodeE.exit.thread.us: ; preds = %_ZN4cvc58internal6theory5arith16isMaybeRealOrIntERKNS0_8TypeNodeE.exit.us, %.noexc.us
  br i1 %i.p, label %bb.m, label %_ZN4cvc58internal8TypeNode4nullEv.exit.us

bb.m:                                             ; preds = %_ZN4cvc58internal6theory5arith16isMaybeRealOrIntERKNS0_8TypeNodeE.exit.thread.us
  %i.ad = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.n unwind label %.split71.loopexit.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  br i1 %i.ad, label %_ZN4cvc58internal8TypeNode4nullEv.exit.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.2, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.us unwind label %.split71.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.us: ; preds = %bb.p, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.af = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !47 ; 4 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !11, !alias.scope !47
  %i.ag = load i64, ptr %i.af, align 8, !noalias !47 ; 3 uses
  %i.ah = lshr i64 %i.ag, 40
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1048575                  ; 3 uses
  %i.ak = icmp samesign ult i32 %i.aj, 1048574
  br i1 %i.ak, label %_ZN4cvc58internal8TypeNode4nullEv.exit.us.sink.split, label %bb.q, !prof !12

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.us
  %i.al = icmp eq i32 %i.aj, 1048574
  br i1 %i.al, label %.invoke121, label %_ZN4cvc58internal8TypeNode4nullEv.exit.us, !prof !13

.invoke121:                                       ; preds = %bb.q, %bb.l
  %.sink135 = phi i64 [ %i.x, %bb.l ], [ %i.ag, %bb.q ]
  %.sink134 = phi ptr [ %i.w, %bb.l ], [ %i.af, %bb.q ] ; 2 uses
  %i.am = or i64 %.sink135, 1152920405095219200
  store i64 %i.am, ptr %.sink134, align 8, !noalias !23
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.sink134)
          to label %_ZN4cvc58internal8TypeNode4nullEv.exit.us unwind label %.split71.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal8TypeNode4nullEv.exit.us.sink.split: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
  %.sink120 = phi i32 [ %i.aa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us ], [ %i.aj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.us ]
  %.sink = phi i64 [ %i.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us ], [ %i.ag, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.us ]
  %.sink115 = phi ptr [ %i.w, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us ], [ %i.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.us ]
  %i.an = add nuw nsw i32 %.sink120, 1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 40
  %i.aq = and i64 %.sink, -1152920405095219201
  %i.ar = or i64 %i.ap, %i.aq
  store i64 %i.ar, ptr %.sink115, align 8, !noalias !23
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit.us

_ZN4cvc58internal8TypeNode4nullEv.exit.us:        ; preds = %.invoke121, %_ZN4cvc58internal8TypeNode4nullEv.exit.us.sink.split, %bb.q, %bb.n, %_ZN4cvc58internal6theory5arith16isMaybeRealOrIntERKNS0_8TypeNodeE.exit.thread.us, %bb.l
  %cond = phi i1 [ false, %bb.l ], [ false, %bb.q ], [ false, %.invoke121 ], [ true, %_ZN4cvc58internal6theory5arith16isMaybeRealOrIntERKNS0_8TypeNodeE.exit.thread.us ], [ true, %bb.n ], [ false, %_ZN4cvc58internal8TypeNode4nullEv.exit.us.sink.split ]
  %i.as = load ptr, ptr %8, align 8, !tbaa !11    ; 3 uses
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = and i64 %i.at, 1152920405095219200
  %.not.i.i.us = icmp eq i64 %i.au, 1152920405095219200
  br i1 %.not.i.i.us, label %_ZN4cvc58internal8TypeNodeD2Ev.exit.us, label %bb.r, !prof !13

bb.r:                                             ; preds = %_ZN4cvc58internal8TypeNode4nullEv.exit.us
  %i.av = add i64 %i.at, 1152920405095219200
  %i.aw = and i64 %i.av, 1152920405095219200      ; 2 uses
  %i.ax = and i64 %i.at, -1152920405095219201
  %i.ay = or disjoint i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.as, align 8
  %i.az = icmp eq i64 %i.aw, 0
  br i1 %i.az, label %bb.s, label %_ZN4cvc58internal8TypeNodeD2Ev.exit.us, !prof !13

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit.us unwind label %.split74.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal8TypeNodeD2Ev.exit.us:           ; preds = %bb.s, %bb.r, %_ZN4cvc58internal8TypeNode4nullEv.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %cond, label %bb.t, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.t:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit.us
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.058.064.us, i64 8 ; 2 uses
  %.not61.us = icmp eq ptr %i.ba, %i.m
  br i1 %.not61.us, label %_ZN4cvc58internal8TypeNodeD2Ev.exit._crit_edge, label %.lr.ph.split.us, !llvm.loop !43

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %.01566 = phi i1 [ %.2, %_ZN4cvc58internal8TypeNodeD2Ev.exit ], [ true, %.lr.ph ] ; 2 uses
  %.01665 = phi i1 [ %.218, %_ZN4cvc58internal8TypeNodeD2Ev.exit ], [ false, %.lr.ph ]
  %.sroa.058.064 = phi ptr [ %i.bp, %_ZN4cvc58internal8TypeNodeD2Ev.exit ], [ %spec.select.i.i, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bb = load ptr, ptr %.sroa.058.064, align 8, !tbaa !22, !noalias !44
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.bb, ptr %5, align 8, !tbaa !15, !noalias !45
  invoke void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %8, ptr noundef nonnull align 8 %5, i1 noundef zeroext false, ptr noundef null)
          to label %bb.u unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bc = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode10isAbstractEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.v unwind label %.split71.loopexit.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  br i1 %i.bc, label %_ZN4cvc58internal8TypeNode4nullEv.exit, label %bb.y

bb.w:                                             ; preds = %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.x:                                             ; preds = %.invoke, %bb.b, %bb.ah
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.split.us, %.lr.ph.split
  %lpad.loopexit.split-lp149 = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split71.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke121, %bb.p, %bb.m, %bb.k, %bb.i, %bb.h, %bb.f, %bb.d, %bb.y, %bb.u
  %lpad.loopexit.split-lp151 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #18
  br label %.split

bb.y:                                             ; preds = %bb.v
  %i.bf = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.z unwind label %.split71.loopexit.loopexit.split-lp.loopexit.split-lp ; 2 uses

end_hunk_0
