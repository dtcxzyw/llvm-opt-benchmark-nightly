Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_arith_private?download=true
inline.NumInlined: 11213
inline.NumDeleted: 3242
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb:bb.a

bb.i:                                             ; preds = %bb.h
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal8TypeNodeaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.n = call ptr @__cxa_allocate_exception(i64 48) #27 ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !448
  store ptr %i.o, ptr %7, align 8, !tbaa !758
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal28TypeCheckingExceptionPrivateC1ENS0_12NodeTemplateILb0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN4cvc58internal28TypeCheckingExceptionPrivateE, ptr nonnull @_ZN4cvc58internal28TypeCheckingExceptionPrivateD1Ev) #37
          to label %bb.v unwind label %bb.q

bb.m:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.n:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.r, %bb.o ], [ %i.q, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.u = load ptr, ptr %8, align 8, !tbaa !422    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.x = load i64, ptr %i.v, align 8, !tbaa !423
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #35
  br i1 %.0, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q
  br i1 %.0, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1523 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #27
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %bb.p
  %.pn15.pn = phi { ptr, i32 } [ %.pn1523, %bb.r ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.p ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %bb.s ], [ %i.p, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.body

bb.u:                                             ; preds = %bb.f
  ret void

.body:                                            ; preds = %bb.e, %bb.t
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.t ], [ %i.h, %bb.e ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  resume { ptr, i32 } %.pn15.pn.pn.pn

bb.v:                                             ; preds = %bb.l
  unreachable
}

declare noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4cvc58internal6theory9Valuation18isLegalEliminationENS0_12NodeTemplateILb0EEES4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #1

declare noundef ptr @_ZN4cvc58internal6theory20TrustSubstitutionMap21addSubstitutionSolvedENS0_12NodeTemplateILb0EEES4_NS0_9TrustNodeE(ptr noundef nonnull align 8 dereferenceable(608), ptr noundef align 8, ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal9TrustNodeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !812
  store i32 %i.a, ptr %0, align 8, !tbaa !812
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !448  ; 5 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !448
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i64 %i.e, 40
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 1048575                    ; 3 uses
  %i.i = icmp samesign ult i32 %i.h, 1048574
  br i1 %i.i, label %bb.b, label %bb.c, !prof !449

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i32 %i.h, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 40
  %i.m = and i64 %i.e, -1152920405095219201
  %i.n = or i64 %i.l, %i.m
  store i64 %i.n, ptr %i.d, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.h, 1048574
  br i1 %i.o, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !450

bb.d:                                             ; preds = %bb.c
  %i.p = or i64 %i.e, 1152920405095219200
  store i64 %i.p, ptr %i.d, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !813
  store ptr %i.s, ptr %i.q, align 8, !tbaa !813
  ret void
}

declare void @_ZN4cvc58internal6theory5arith6linear18ArithStaticLearner8addBoundENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13ppStaticLearnENS0_12NodeTemplateILb0EEERSt6vectorINS0_9TrustNodeESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(9440) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::CodeTimer", align 8 ; 6 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.600", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8912
  call void @_ZN4cvc58internal9CodeTimerC1ERNS0_9TimerStatEb(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.c = load ptr, ptr %1, align 8, !tbaa !758
  store ptr %i.c, ptr %4, align 8, !tbaa !758
  invoke void @_ZN4cvc58internal6theory5arith6linear18ArithStaticLearner14staticLearningENS0_12NodeTemplateILb0EEERSt6vectorINS0_9TrustNodeESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.d
}

declare void @_ZN4cvc58internal6theory5arith6linear18ArithStaticLearner14staticLearningENS0_12NodeTemplateILb0EEERSt6vectorINS0_9TrustNodeESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate20findShortestBasicRowEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9440) %0, i32 noundef %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN4cvc58internal6theory5arith6linear17ARITHVAR_SENTINELE, align 4, !tbaa !455 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.c = zext i32 %1 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !833
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %.sroa.0.020 = load i32, ptr %i.e, align 4, !tbaa !455 ; 2 uses
  %i.f = icmp eq i32 %.sroa.0.020, -1
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !836
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !837
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !675
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !838
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.023 = phi i32 [ %.sroa.0.020, %.lr.ph ], [ %.sroa.0.0, %bb.d ]
  %.022 = phi i64 [ -1, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.01321 = phi i32 [ %i.a, %.lr.ph ], [ %.114, %bb.d ]
  %i.n = zext i32 %.sroa.0.023 to i64
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !839
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !841
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = icmp ugt i64 %.022, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.q
  %3 = load i32, ptr %2, align 4, !tbaa !455
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.114 = phi i32 [ %3, %bb.c ], [ %.01321, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %i.u, %bb.c ], [ %.022, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.0.0 = load i32, ptr %i.w, align 4, !tbaa !455 ; 2 uses
  %i.x = icmp eq i32 %.sroa.0.0, -1
  br i1 %i.x, label %._crit_edge, label %bb.b, !llvm.loop !1599

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.013.lcssa = phi i32 [ %i.a, %bb.a ], [ %.114, %bb.d ]
  ret i32 %.013.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13setupVariableERKNS3_8VariableE(ptr noundef nonnull align 8 dereferenceable(9440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.600", align 8 ; 2 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !448    ; 14 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !448
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !449

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !450

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8872
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.q       ; 0 uses

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  store ptr %i.a, ptr %4, align 8, !tbaa !758
  %i.p = invoke noundef i32 @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate15requestArithVarENS0_12NodeTemplateILb0EEEbb(ptr noundef nonnull align 8 dereferenceable(9440) %0, ptr noundef nonnull align 8 %4, i1 noundef zeroext false, i1 zeroext poison)
          to label %bb.f unwind label %bb.r       ; 0 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.a, ptr %5, align 8, !tbaa !448
  %i.q = load i64, ptr %i.a, align 8              ; 3 uses
  %i.r = lshr i64 %i.q, 40
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 1048575                    ; 3 uses
  %i.u = icmp samesign ult i32 %i.t, 1048574
  br i1 %i.u, label %bb.g, label %bb.h, !prof !449

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw nsw i32 %i.t, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 40
  %i.y = and i64 %i.q, -1152920405095219201
  %i.z = or i64 %i.x, %i.y
  store i64 %i.z, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit5

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp eq i32 %i.t, 1048574
  br i1 %i.aa, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit5, !prof !450

bb.i:                                             ; preds = %bb.h
  %i.ab = or i64 %i.q, 1152920405095219200
  store i64 %i.ab, ptr %i.a, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit5 unwind label %bb.q

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit5: ; preds = %bb.h, %bb.g, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.ac, ptr %2, align 8, !tbaa !823
  %i.ad = invoke { ptr, i8 } @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.j unwind label %bb.s       ; 0 uses

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.ae = load ptr, ptr %5, align 8, !tbaa !448   ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = and i64 %i.af, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ag, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.k, !prof !450

bb.k:                                             ; preds = %bb.j
  %i.ah = add i64 %i.af, 1152920405095219200
  %i.ai = and i64 %i.ah, 1152920405095219200      ; 2 uses
  %i.aj = and i64 %i.af, -1152920405095219201
  %i.ak = or disjoint i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.ae, align 8
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %bb.l, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !450

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #36
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.j, %bb.k, %bb.l
  %i.ao = load i64, ptr %i.a, align 8             ; 3 uses
  %i.ap = and i64 %i.ao, 1152920405095219200
  %.not.i.i7 = icmp eq i64 %i.ap, 1152920405095219200
  br i1 %.not.i.i7, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit8, label %bb.n, !prof !450

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.aq = add i64 %i.ao, 1152920405095219200
  %i.ar = and i64 %i.aq, 1152920405095219200      ; 2 uses
  %i.as = and i64 %i.ao, -1152920405095219201
  %i.at = or disjoint i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.a, align 8
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit8, !prof !450

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit8 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #36
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit8:  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.q:                                             ; preds = %bb.i, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit5
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.az, %bb.s ], [ %i.ax, %bb.q ], [ %i.ay, %bb.r ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate15requestArithVarENS0_12NodeTemplateILb0EEEbb(ptr noundef nonnull align 8 dereferenceable(9440) %0, ptr nofree noundef readonly align 8 captures(none) %1, i1 noundef zeroext %2, i1 zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !758
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK4cvc58internal6EnvObj9logicInfoEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.g = tail call noundef zeroext i1 @_ZNK4cvc58internal9LogicInfo8isLinearEv(ptr noundef nonnull align 8 dereferenceable(88) %i.f)
  br i1 %i.g, label %bb.b, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !758    ; 5 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !448
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = lshr i64 %i.i, 40
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = and i32 %i.k, 1048575                    ; 3 uses
  %i.m = icmp samesign ult i32 %i.l, 1048574
  br i1 %i.m, label %bb.c, label %bb.d, !prof !449

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw nsw i32 %i.l, 1
end_hunk_0
