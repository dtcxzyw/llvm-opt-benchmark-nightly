Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/view?download=true
inline.NumInlined: 14012
inline.NumDeleted: 4156
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 42
begin_hunk_0_@"_ZSt5applyIRZN26ViewMultiStorage_Each_Test8TestBodyEvE3$_1St5tupleIJRKiRKcEEEDcOT_OT0_":bb.a
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33.i.i.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit35.i.i.i.i

_ZN7testing15AssertionResultD2Ev.exit35.i.i.i.i:  ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.ag, label %bb.ac, label %"_ZSt12__apply_implIRZN26ViewMultiStorage_Each_Test8TestBodyEvE3$_1St5tupleIJRKiRKcEEJLm0ELm1EEEDcOT_OT0_St16integer_sequenceImJXspT1_EEE.exit"

bb.ac:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit35.i.i.i.i
  %i.bd = load i32, ptr %0, align 4, !tbaa !2901
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %0, align 4, !tbaa !2901
  br label %"_ZSt12__apply_implIRZN26ViewMultiStorage_Each_Test8TestBodyEvE3$_1St5tupleIJRKiRKcEEJLm0ELm1EEEDcOT_OT0_St16integer_sequenceImJXspT1_EEE.exit"

bb.ad:                                            ; preds = %_ZN7testing7MessageD2Ev.exit30.i.i.i.i, %_ZN7testing7MessageD2Ev.exit21.i.i.i.i
  %.pn15.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn15.pn.i.i.i.i, %_ZN7testing7MessageD2Ev.exit30.i.i.i.i ], [ %.pn.pn.i.i.i.i, %_ZN7testing7MessageD2Ev.exit21.i.i.i.i ]
  resume { ptr, i32 } %.pn15.pn.pn.i.i.i.i

"_ZSt12__apply_implIRZN26ViewMultiStorage_Each_Test8TestBodyEvE3$_1St5tupleIJRKiRKcEEJLm0ELm1EEEDcOT_OT0_St16integer_sequenceImJXspT1_EEE.exit": ; preds = %_ZN7testing15AssertionResultD2Ev.exit.i.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit35.i.i.i.i, %bb.ac
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt5applyIRZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_0St5tupleIJRiRcEEEDcOT_OT0_"(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, i32 %.8.val.0.val) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.8.val.0.val, ptr %i.a, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = load i32, ptr %0, align 4, !tbaa !2904   ; 3 uses
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr %0, align 4, !tbaa !2904
  store i32 %i.c, ptr %i.b, align 4, !tbaa !98
  %i.e = icmp eq i32 %.8.val.0.val, %i.c
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.357, ptr noundef nonnull @.str.358, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i.i.i.i

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.f = load i8, ptr %1, align 8, !tbaa !91, !range !92, !noundef !93
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.k = phi ptr [ %i.j, %bb.f ], [ @.str.319, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1013, ptr noundef %i.k)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.l = load ptr, ptr %2, align 8, !tbaa !79     ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7testing7MessageD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(128) %i.l) #26, !inline_history !2902
  br label %_ZN7testing7MessageD2Ev.exit.i.i.i.i

_ZN7testing7MessageD2Ev.exit.i.i.i.i:             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit8.i.i.i.i

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.q, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.s = load ptr, ptr %2, align 8, !tbaa !79     ; 3 uses
  %.not.i.i6.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i6.i.i.i.i, label %_ZN7testing7MessageD2Ev.exit8.i.i.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i.i.i.i: ; preds = %bb.l
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #26, !inline_history !2902
  br label %_ZN7testing7MessageD2Ev.exit8.i.i.i.i

_ZN7testing7MessageD2Ev.exit8.i.i.i.i:            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i.i.i.i, %bb.l, %bb.i
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.p, %bb.i ], [ %.pn.i.i.i.i, %bb.l ], [ %.pn.i.i.i.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn.pn.i.i.i.i

bb.m:                                             ; preds = %_ZN7testing7MessageD2Ev.exit.i.i.i.i, %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94   ; 4 uses
  %.not.i.i9.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i9.i.i.i.i, label %"_ZSt12__apply_implIRZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_0St5tupleIJRiRcEEJLm0ELm1EEEDcOT_OT0_St16integer_sequenceImJXspT1_EEE.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !77
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 32) #27
  br label %"_ZSt12__apply_implIRZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_0St5tupleIJRiRcEEJLm0ELm1EEEDcOT_OT0_St16integer_sequenceImJXspT1_EEE.exit"

"_ZSt12__apply_implIRZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_0St5tupleIJRiRcEEJLm0ELm1EEEDcOT_OT0_St16integer_sequenceImJXspT1_EEE.exit": ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_T0_T1_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef nonnull align 8 captures(none) dead_on_return dereferenceable(8) %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  %3 = alloca %"class.std::reverse_iterator.643", align 8 ; 2 uses
  %4 = alloca %"class.std::reverse_iterator.643", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i23 = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i24 = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i23 to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i24 to i64 ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.preheader, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_T0_.exit"

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph61

.lr.ph:                                           ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEET_SG_SG_T0_.exit"
  %i.f = icmp eq i64 %i.fd, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph61, !llvm.loop !2905

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa58 = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.gl, %.lr.ph ] ; 2 uses
  %.lcssa56 = phi i64 [ %i.a, %.lr.ph.preheader ], [ %i.gm, %.lr.ph ] ; 3 uses
  %i.g = inttoptr i64 %.lcssa58 to ptr
  %i.h = inttoptr i64 %.lcssa56 to ptr            ; 28 uses
  %i.i = sub i64 %.lcssa56, %.lcssa58
  %.fr.i.i.i = freeze i64 %i.i                    ; 3 uses
  %i.j = ashr i64 %.fr.i.i.i, 2                   ; 4 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_T0_.exit.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.l = add nsw i64 %i.j, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 4 uses
  %i.p = and i64 %.fr.i.i.i, 4
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %bb.b
  %5 = or disjoint i64 %i.l, 1
  %i.r = sub nsw i64 1, %i.j
  %i.s = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = sub nsw i64 0, %i.m
  %i.v = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.b, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"
  %.08.us.i.i.i = phi i64 [ %i.bh, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i" ], [ %i.m, %bb.b ] ; 6 uses
  %i.x = sub i64 0, %.08.us.i.i.i                 ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !102 ; 2 uses
  %i.ab = icmp slt i64 %.08.us.i.i.i, %i.o
  br i1 %i.ab, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.032.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.08.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.ac = shl i64 %.032.i.us.i.i.i, 1             ; 4 uses
  %i.ad = add i64 %i.ac, 2
  %i.ae = sub nuw nsw i64 -2, %i.ac
  %i.af = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ae
  %i.ag = or disjoint i64 %i.ac, 1
  %i.ah = xor i64 %i.ac, -1
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !102
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !102
  %i.an = icmp ult i32 %i.ak, %i.am
  %spec.select.i.us.i.i.i = select i1 %i.an, i64 %i.ag, i64 %i.ad ; 4 uses
  %i.ao = sub i64 0, %spec.select.i.us.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !102
  %i.as = sub i64 0, %.032.i.us.i.i.i
  %i.at = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !102
  %i.av = icmp slt i64 %spec.select.i.us.i.i.i, %i.o
  br i1 %i.av, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !2906

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.097.i.i.us.i.i.i = phi i64 [ %.08.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 2 uses
  %.08.in.i.i.us.i.i.i = add nsw i64 %.097.i.i.us.i.i.i, -1
  %.08.i.i.us.i.i.i = sdiv i64 %.08.in.i.i.us.i.i.i, 2 ; 3 uses
  %i.aw = sub nsw i64 0, %.08.i.i.us.i.i.i        ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !102 ; 2 uses
  %i.ba = icmp ult i32 %i.az, %i.aa
  %i.bb = sub nsw i64 0, %.097.i.i.us.i.i.i       ; 2 uses
  br i1 %i.ba, label %bb.c, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  store i32 %i.az, ptr %i.bd, align 4, !tbaa !102
  %i.be = icmp sgt i64 %.08.i.i.us.i.i.i, %.08.us.i.i.i
  br i1 %i.be, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", !llvm.loop !2907

"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.x, %.split.us.i.i.i ], [ %i.aw, %bb.c ], [ %i.bb, %.lr.ph.i.i.us.i.i.i ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.h, i64 %.pre-phi.i.i
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.aa, ptr %i.bg, align 4, !tbaa !102
  %.not.us.i.i.i = icmp eq i64 %.08.us.i.i.i, 0
  %i.bh = add nsw i64 %.08.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_T0_.exit.i", label %.split.us.i.i.i, !llvm.loop !2908

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.cw, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i" ], [ %i.m, %.split.preheader.i.i.i ] ; 8 uses
  %i.bi = sub i64 0, %.08.i.i.i
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !102 ; 2 uses
  %i.bm = icmp slt i64 %.08.i.i.i, %i.o
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.032.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.bn = shl i64 %.032.i.i.i.i, 1                ; 4 uses
  %i.bo = add i64 %i.bn, 2
  %i.bp = sub nuw nsw i64 -2, %i.bn
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bp
  %i.br = or disjoint i64 %i.bn, 1
  %i.bs = xor i64 %i.bn, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !102
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !102
  %i.by = icmp ult i32 %i.bv, %i.bx
  %spec.select.i.i.i.i = select i1 %i.by, i64 %i.br, i64 %i.bo ; 4 uses
  %i.bz = sub i64 0, %spec.select.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !102
  %i.cd = sub i64 0, %.032.i.i.i.i
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  store i32 %i.cc, ptr %i.cf, align 4, !tbaa !102
  %i.cg = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.cg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2906

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ch = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  br i1 %i.ch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ci = load i32, ptr %i.t, align 4, !tbaa !102
  store i32 %i.ci, ptr %i.w, align 4, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.122.i.i.i.i = phi i64 [ %5, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cj = icmp sgt i64 %.122.i.i.i.i, %.08.i.i.i
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.097.i.i.i.i.i = phi i64 [ %.08.i.i.i.i.i, %bb.f ], [ %.122.i.i.i.i, %bb.e ] ; 3 uses
  %.08.in.i.i.i.i.i = add nsw i64 %.097.i.i.i.i.i, -1
  %.08.i.i.i.i.i = sdiv i64 %.08.in.i.i.i.i.i, 2  ; 4 uses
  %i.ck = sub nsw i64 0, %.08.i.i.i.i.i
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !102 ; 2 uses
  %i.co = icmp ult i32 %i.cn, %i.bl
  br i1 %i.co, label %bb.f, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cp = sub nsw i64 0, %.097.i.i.i.i.i
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -4
  store i32 %i.cn, ptr %i.cr, align 4, !tbaa !102
  %i.cs = icmp sgt i64 %.08.i.i.i.i.i, %.08.i.i.i
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !2907

"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.09.lcssa.i.i.i.i.i = phi i64 [ %.122.i.i.i.i, %bb.e ], [ %.097.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i, %bb.f ]
  %i.ct = sub nsw i64 0, %.09.lcssa.i.i.i.i.i
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4
  store i32 %i.bl, ptr %i.cv, align 4, !tbaa !102
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.cw = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_T0_.exit.i", label %.split.i.i.i, !llvm.loop !2908

"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_T0_.exit.i": ; preds = %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.lr.ph._crit_edge
  %i.cx = icmp sgt i64 %.fr.i.i.i, 4
  br i1 %i.cx, label %.lr.ph.i3.preheader.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_T0_.exit"

.lr.ph.i3.preheader.i:                            ; preds = %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_T0_.exit.i"
  %i.cy = getelementptr inbounds i8, ptr %i.h, i64 -4
  br label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_RT0_.exit.i.i", %.lr.ph.i3.preheader.i
  %.sroa.0.0.copyload.i2.i5.i.i = phi ptr [ %i.cz, %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_RT0_.exit.i.i" ], [ %i.g, %.lr.ph.i3.preheader.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i2.i5.i.i, i64 4 ; 2 uses
  %.cast.i.i = ptrtoint ptr %i.cz to i64
  %i.da = load i32, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !102 ; 2 uses
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !102
  store i32 %i.db, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !102
  %i.dc = sub i64 %.lcssa56, %.cast.i.i           ; 3 uses
  %i.dd = ashr exact i64 %i.dc, 2                 ; 3 uses
  %i.de = add nsw i64 %i.dd, -1
  %i.df = lshr i64 %i.de, 1
  %i.dg = icmp sgt i64 %i.dd, 2
  br i1 %i.dg, label %.lr.ph.i.i.i11.i, label %._crit_edge.i.i.i4.i

.lr.ph.i.i.i11.i:                                 ; preds = %.lr.ph.i3.i, %.lr.ph.i.i.i11.i
  %.032.i.i.i12.i = phi i64 [ %spec.select.i.i.i13.i, %.lr.ph.i.i.i11.i ], [ 0, %.lr.ph.i3.i ] ; 2 uses
  %i.dh = shl i64 %.032.i.i.i12.i, 1              ; 4 uses
  %i.di = add i64 %i.dh, 2
  %i.dj = sub nuw nsw i64 -2, %i.dh
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dj
  %i.dl = or disjoint i64 %i.dh, 1
  %i.dm = xor i64 %i.dh, -1
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !102
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !102
  %i.ds = icmp ult i32 %i.dp, %i.dr
  %spec.select.i.i.i13.i = select i1 %i.ds, i64 %i.dl, i64 %i.di ; 4 uses
  %i.dt = sub i64 0, %spec.select.i.i.i13.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !102
  %i.dx = sub i64 0, %.032.i.i.i12.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %i.dw, ptr %i.dz, align 4, !tbaa !102
  %i.ea = icmp slt i64 %spec.select.i.i.i13.i, %i.df
  br i1 %i.ea, label %.lr.ph.i.i.i11.i, label %._crit_edge.i.i.i4.i, !llvm.loop !2906

._crit_edge.i.i.i4.i:                             ; preds = %.lr.ph.i.i.i11.i, %.lr.ph.i3.i
  %.0.lcssa.i.i.i5.i = phi i64 [ 0, %.lr.ph.i3.i ], [ %spec.select.i.i.i13.i, %.lr.ph.i.i.i11.i ] ; 5 uses
  %i.eb = and i64 %i.dc, 4
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i4.i
  %i.ed = add nsw i64 %i.dd, -2
  %i.ee = ashr exact i64 %i.ed, 1
  %i.ef = icmp eq i64 %.0.lcssa.i.i.i5.i, %i.ee
  br i1 %i.ef, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.eg = shl nuw nsw i64 %.0.lcssa.i.i.i5.i, 1   ; 2 uses
  %i.eh = or disjoint i64 %i.eg, 1
  %i.ei = xor i64 %i.eg, -1
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !102
  %i.em = sub nsw i64 0, %.0.lcssa.i.i.i5.i
  %i.en = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -4
  store i32 %i.el, ptr %i.eo, align 4, !tbaa !102
  br label %.lr.ph.i.i.i.i7.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i4.i
  %.not.i.i6.i = icmp eq i64 %.0.lcssa.i.i.i5.i, 0
  br i1 %.not.i.i6.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i7.i.preheader

.lr.ph.i.i.i.i7.i.preheader:                      ; preds = %bb.h, %.thread.i.i.i
  %.097.i.i.i.i8.i.ph = phi i64 [ %.0.lcssa.i.i.i5.i, %bb.h ], [ %i.eh, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i7.i

.lr.ph.i.i.i.i7.i:                                ; preds = %.lr.ph.i.i.i.i7.i.preheader, %bb.i
  %.097.i.i.i.i8.i = phi i64 [ %.08.i.i45.i.i.i, %bb.i ], [ %.097.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i7.i.preheader ] ; 3 uses
  %.08.in.i.i.i.i9.i = add nsw i64 %.097.i.i.i.i8.i, -1
  %.08.i.i45.i.i.i = lshr i64 %.08.in.i.i.i.i9.i, 1 ; 3 uses
  %i.ep = sub nsw i64 0, %.08.i.i45.i.i.i
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !102 ; 2 uses
  %i.et = icmp ult i32 %i.es, %i.da
  br i1 %i.et, label %bb.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i7.i
  %i.eu = sub nsw i64 0, %.097.i.i.i.i8.i
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4
  store i32 %i.es, ptr %i.ew, align 4, !tbaa !102
  %.not6.i.i.i = icmp eq i64 %.08.i.i45.i.i.i, 0
  br i1 %.not6.i.i.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i7.i, !llvm.loop !2907

"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i7.i, %bb.h
  %.09.lcssa.i.i.i.i10.i = phi i64 [ 0, %bb.h ], [ %.097.i.i.i.i8.i, %.lr.ph.i.i.i.i7.i ], [ 0, %bb.i ]
  %i.ex = sub nsw i64 0, %.09.lcssa.i.i.i.i10.i
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ex
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4
  store i32 %i.da, ptr %i.ez, align 4, !tbaa !102
  %i.fa = icmp sgt i64 %i.dc, 4
  br i1 %i.fa, label %.lr.ph.i3.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_T0_.exit", !llvm.loop !2909

.lr.ph61:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02560 = phi i64 [ %i.fd, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.fb = phi i64 [ %i.gm, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.fc = phi i64 [ %i.gl, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.fd = add nsw i64 %.02560, -1                 ; 3 uses
  %i.fe = inttoptr i64 %i.fb to ptr               ; 3 uses
  %i.ff = inttoptr i64 %i.fc to ptr               ; 4 uses
  %i.fg = sub i64 %i.fb, %i.fc
  %i.fh = ashr exact i64 %i.fg, 2
  %.neg.i = sdiv i64 %i.fh, -2
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %.neg.i
  %i.fj = getelementptr inbounds i8, ptr %i.fe, i64 -4 ; 12 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fe, i64 -8 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !102, !noalias !2917 ; 5 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !102, !noalias !2917 ; 5 uses
  %i.fo = icmp ult i32 %i.fl, %i.fn
  %i.fp = load i32, ptr %i.ff, align 4, !tbaa !102, !noalias !2917 ; 6 uses
  br i1 %i.fo, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph61
  %i.fq = icmp ult i32 %i.fn, %i.fp
  br i1 %i.fq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fr = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2917
  store i32 %i.fn, ptr %i.fj, align 4, !tbaa !102, !noalias !2917
  store i32 %i.fr, ptr %i.fm, align 4, !tbaa !102, !noalias !2917
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.fs = icmp ult i32 %i.fl, %i.fp
  %i.ft = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2917 ; 2 uses
  br i1 %i.fs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.fp, ptr %i.fj, align 4, !tbaa !102, !noalias !2917
  store i32 %i.ft, ptr %i.ff, align 4, !tbaa !102, !noalias !2917
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !102, !noalias !2917
  store i32 %i.ft, ptr %i.fk, align 4, !tbaa !102, !noalias !2917
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph61
  %i.fu = icmp ult i32 %i.fl, %i.fp
  br i1 %i.fu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fv = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2917
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !102, !noalias !2917
  store i32 %i.fv, ptr %i.fk, align 4, !tbaa !102, !noalias !2917
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.fw = icmp ult i32 %i.fn, %i.fp
  %i.fx = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2917 ; 2 uses
  br i1 %i.fw, label %bb.r, label %bb.s
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_T0_T1_":bb.a
bb.v:                                             ; preds = %bb.u
  %i.gj = getelementptr inbounds i8, ptr %.sroa.010.1.i, i64 -4 ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !102, !noalias !2918
  store i32 %i.gh, ptr %i.gj, align 4, !tbaa !102, !noalias !2918
  store i32 %i.gk, ptr %.pn.i.i, align 4, !tbaa !102, !noalias !2918
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !2916

"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEET_SG_SG_T0_.exit": ; preds = %bb.u
  %i.gl = ptrtoint ptr %.sroa.010.1.i to i64      ; 5 uses
  store i64 %i.gl, ptr %3, align 8, !tbaa !99
  store i64 %i.fc, ptr %4, align 8, !tbaa !99
  call fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_T0_T1_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %4, i64 noundef %i.fd)
  store i64 %i.gl, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.gm = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.gn = sub i64 %i.gm, %i.gl
  %i.go = icmp sgt i64 %i.gn, 64
  br i1 %i.go, label %.lr.ph, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_T0_.exit", !llvm.loop !2905

"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_RT0_.exit.i.i", %bb.a, %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_1EEEvT_SG_SG_T0_.exit.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt5applyIRZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_2St5tupleIJRiRcEEEDcOT_OT0_"(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, i32 %.8.val.0.val) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.8.val.0.val, ptr %i.a, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = load i32, ptr %0, align 4, !tbaa !2921   ; 3 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !2921
  store i32 %i.c, ptr %i.b, align 4, !tbaa !98
  %i.e = icmp eq i32 %.8.val.0.val, %i.c
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.357, ptr noundef nonnull @.str.359, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i.i.i.i

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.f = load i8, ptr %1, align 8, !tbaa !91, !range !92, !noundef !93
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.k = phi ptr [ %i.j, %bb.f ], [ @.str.319, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1022, ptr noundef %i.k)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.l = load ptr, ptr %2, align 8, !tbaa !79     ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7testing7MessageD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(128) %i.l) #26, !inline_history !2919
  br label %_ZN7testing7MessageD2Ev.exit.i.i.i.i

_ZN7testing7MessageD2Ev.exit.i.i.i.i:             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit8.i.i.i.i

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.q, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.s = load ptr, ptr %2, align 8, !tbaa !79     ; 3 uses
  %.not.i.i6.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i6.i.i.i.i, label %_ZN7testing7MessageD2Ev.exit8.i.i.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i.i.i.i: ; preds = %bb.l
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #26, !inline_history !2919
  br label %_ZN7testing7MessageD2Ev.exit8.i.i.i.i

_ZN7testing7MessageD2Ev.exit8.i.i.i.i:            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i.i.i.i, %bb.l, %bb.i
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.p, %bb.i ], [ %.pn.i.i.i.i, %bb.l ], [ %.pn.i.i.i.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn.pn.i.i.i.i

bb.m:                                             ; preds = %_ZN7testing7MessageD2Ev.exit.i.i.i.i, %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94   ; 4 uses
  %.not.i.i9.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i9.i.i.i.i, label %"_ZSt12__apply_implIRZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_2St5tupleIJRiRcEEJLm0ELm1EEEDcOT_OT0_St16integer_sequenceImJXspT1_EEE.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !77
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 32) #27
  br label %"_ZSt12__apply_implIRZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_2St5tupleIJRiRcEEJLm0ELm1EEEDcOT_OT0_St16integer_sequenceImJXspT1_EEE.exit"

"_ZSt12__apply_implIRZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_2St5tupleIJRiRcEEJLm0ELm1EEEDcOT_OT0_St16integer_sequenceImJXspT1_EEE.exit": ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_T0_T1_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef nonnull align 8 captures(none) dead_on_return dereferenceable(8) %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  %3 = alloca %"class.std::reverse_iterator.643", align 8 ; 2 uses
  %4 = alloca %"class.std::reverse_iterator.643", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i23 = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i24 = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i23 to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i24 to i64 ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.preheader, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_T0_.exit"

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph61

.lr.ph:                                           ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEET_SG_SG_T0_.exit"
  %i.f = icmp eq i64 %i.fd, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph61, !llvm.loop !2922

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa58 = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.gl, %.lr.ph ] ; 2 uses
  %.lcssa56 = phi i64 [ %i.a, %.lr.ph.preheader ], [ %i.gm, %.lr.ph ] ; 3 uses
  %i.g = inttoptr i64 %.lcssa58 to ptr
  %i.h = inttoptr i64 %.lcssa56 to ptr            ; 28 uses
  %i.i = sub i64 %.lcssa56, %.lcssa58
  %.fr.i.i.i = freeze i64 %i.i                    ; 3 uses
  %i.j = ashr i64 %.fr.i.i.i, 2                   ; 4 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_T0_.exit.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.l = add nsw i64 %i.j, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 4 uses
  %i.p = and i64 %.fr.i.i.i, 4
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %bb.b
  %5 = or disjoint i64 %i.l, 1
  %i.r = sub nsw i64 1, %i.j
  %i.s = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = sub nsw i64 0, %i.m
  %i.v = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.b, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"
  %.08.us.i.i.i = phi i64 [ %i.bh, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.us.i.i.i" ], [ %i.m, %bb.b ] ; 6 uses
  %i.x = sub i64 0, %.08.us.i.i.i                 ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !102 ; 2 uses
  %i.ab = icmp slt i64 %.08.us.i.i.i, %i.o
  br i1 %i.ab, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.032.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.08.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.ac = shl i64 %.032.i.us.i.i.i, 1             ; 4 uses
  %i.ad = add i64 %i.ac, 2
  %i.ae = sub nuw nsw i64 -2, %i.ac
  %i.af = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ae
  %i.ag = or disjoint i64 %i.ac, 1
  %i.ah = xor i64 %i.ac, -1
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !102
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !102
  %i.an = icmp ugt i32 %i.ak, %i.am
  %spec.select.i.us.i.i.i = select i1 %i.an, i64 %i.ag, i64 %i.ad ; 4 uses
  %i.ao = sub i64 0, %spec.select.i.us.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !102
  %i.as = sub i64 0, %.032.i.us.i.i.i
  %i.at = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !102
  %i.av = icmp slt i64 %spec.select.i.us.i.i.i, %i.o
  br i1 %i.av, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !2923

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.097.i.i.us.i.i.i = phi i64 [ %.08.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 2 uses
  %.08.in.i.i.us.i.i.i = add nsw i64 %.097.i.i.us.i.i.i, -1
  %.08.i.i.us.i.i.i = sdiv i64 %.08.in.i.i.us.i.i.i, 2 ; 3 uses
  %i.aw = sub nsw i64 0, %.08.i.i.us.i.i.i        ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !102 ; 2 uses
  %i.ba = icmp ugt i32 %i.az, %i.aa
  %i.bb = sub nsw i64 0, %.097.i.i.us.i.i.i       ; 2 uses
  br i1 %i.ba, label %bb.c, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  store i32 %i.az, ptr %i.bd, align 4, !tbaa !102
  %i.be = icmp sgt i64 %.08.i.i.us.i.i.i, %.08.us.i.i.i
  br i1 %i.be, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", !llvm.loop !2924

"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.x, %.split.us.i.i.i ], [ %i.aw, %bb.c ], [ %i.bb, %.lr.ph.i.i.us.i.i.i ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.h, i64 %.pre-phi.i.i
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.aa, ptr %i.bg, align 4, !tbaa !102
  %.not.us.i.i.i = icmp eq i64 %.08.us.i.i.i, 0
  %i.bh = add nsw i64 %.08.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_T0_.exit.i", label %.split.us.i.i.i, !llvm.loop !2925

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.cw, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.i.i.i" ], [ %i.m, %.split.preheader.i.i.i ] ; 8 uses
  %i.bi = sub i64 0, %.08.i.i.i
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !102 ; 2 uses
  %i.bm = icmp slt i64 %.08.i.i.i, %i.o
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.032.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.bn = shl i64 %.032.i.i.i.i, 1                ; 4 uses
  %i.bo = add i64 %i.bn, 2
  %i.bp = sub nuw nsw i64 -2, %i.bn
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bp
  %i.br = or disjoint i64 %i.bn, 1
  %i.bs = xor i64 %i.bn, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !102
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !102
  %i.by = icmp ugt i32 %i.bv, %i.bx
  %spec.select.i.i.i.i = select i1 %i.by, i64 %i.br, i64 %i.bo ; 4 uses
  %i.bz = sub i64 0, %spec.select.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !102
  %i.cd = sub i64 0, %.032.i.i.i.i
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  store i32 %i.cc, ptr %i.cf, align 4, !tbaa !102
  %i.cg = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.cg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2923

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ch = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  br i1 %i.ch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ci = load i32, ptr %i.t, align 4, !tbaa !102
  store i32 %i.ci, ptr %i.w, align 4, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.122.i.i.i.i = phi i64 [ %5, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cj = icmp sgt i64 %.122.i.i.i.i, %.08.i.i.i
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.097.i.i.i.i.i = phi i64 [ %.08.i.i.i.i.i, %bb.f ], [ %.122.i.i.i.i, %bb.e ] ; 3 uses
  %.08.in.i.i.i.i.i = add nsw i64 %.097.i.i.i.i.i, -1
  %.08.i.i.i.i.i = sdiv i64 %.08.in.i.i.i.i.i, 2  ; 4 uses
  %i.ck = sub nsw i64 0, %.08.i.i.i.i.i
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !102 ; 2 uses
  %i.co = icmp ugt i32 %i.cn, %i.bl
  br i1 %i.co, label %bb.f, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cp = sub nsw i64 0, %.097.i.i.i.i.i
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -4
  store i32 %i.cn, ptr %i.cr, align 4, !tbaa !102
  %i.cs = icmp sgt i64 %.08.i.i.i.i.i, %.08.i.i.i
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !2924

"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.09.lcssa.i.i.i.i.i = phi i64 [ %.122.i.i.i.i, %bb.e ], [ %.097.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i, %bb.f ]
  %i.ct = sub nsw i64 0, %.09.lcssa.i.i.i.i.i
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4
  store i32 %i.bl, ptr %i.cv, align 4, !tbaa !102
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.cw = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_T0_.exit.i", label %.split.i.i.i, !llvm.loop !2925

"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_T0_.exit.i": ; preds = %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.lr.ph._crit_edge
  %i.cx = icmp sgt i64 %.fr.i.i.i, 4
  br i1 %i.cx, label %.lr.ph.i3.preheader.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_T0_.exit"

.lr.ph.i3.preheader.i:                            ; preds = %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_T0_.exit.i"
  %i.cy = getelementptr inbounds i8, ptr %i.h, i64 -4
  br label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_RT0_.exit.i.i", %.lr.ph.i3.preheader.i
  %.sroa.0.0.copyload.i2.i5.i.i = phi ptr [ %i.cz, %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_RT0_.exit.i.i" ], [ %i.g, %.lr.ph.i3.preheader.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i2.i5.i.i, i64 4 ; 2 uses
  %.cast.i.i = ptrtoint ptr %i.cz to i64
  %i.da = load i32, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !102 ; 2 uses
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !102
  store i32 %i.db, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !102
  %i.dc = sub i64 %.lcssa56, %.cast.i.i           ; 3 uses
  %i.dd = ashr exact i64 %i.dc, 2                 ; 3 uses
  %i.de = add nsw i64 %i.dd, -1
  %i.df = lshr i64 %i.de, 1
  %i.dg = icmp sgt i64 %i.dd, 2
  br i1 %i.dg, label %.lr.ph.i.i.i11.i, label %._crit_edge.i.i.i4.i

.lr.ph.i.i.i11.i:                                 ; preds = %.lr.ph.i3.i, %.lr.ph.i.i.i11.i
  %.032.i.i.i12.i = phi i64 [ %spec.select.i.i.i13.i, %.lr.ph.i.i.i11.i ], [ 0, %.lr.ph.i3.i ] ; 2 uses
  %i.dh = shl i64 %.032.i.i.i12.i, 1              ; 4 uses
  %i.di = add i64 %i.dh, 2
  %i.dj = sub nuw nsw i64 -2, %i.dh
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dj
  %i.dl = or disjoint i64 %i.dh, 1
  %i.dm = xor i64 %i.dh, -1
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !102
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !102
  %i.ds = icmp ugt i32 %i.dp, %i.dr
  %spec.select.i.i.i13.i = select i1 %i.ds, i64 %i.dl, i64 %i.di ; 4 uses
  %i.dt = sub i64 0, %spec.select.i.i.i13.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !102
  %i.dx = sub i64 0, %.032.i.i.i12.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %i.dw, ptr %i.dz, align 4, !tbaa !102
  %i.ea = icmp slt i64 %spec.select.i.i.i13.i, %i.df
  br i1 %i.ea, label %.lr.ph.i.i.i11.i, label %._crit_edge.i.i.i4.i, !llvm.loop !2923

._crit_edge.i.i.i4.i:                             ; preds = %.lr.ph.i.i.i11.i, %.lr.ph.i3.i
  %.0.lcssa.i.i.i5.i = phi i64 [ 0, %.lr.ph.i3.i ], [ %spec.select.i.i.i13.i, %.lr.ph.i.i.i11.i ] ; 5 uses
  %i.eb = and i64 %i.dc, 4
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i4.i
  %i.ed = add nsw i64 %i.dd, -2
  %i.ee = ashr exact i64 %i.ed, 1
  %i.ef = icmp eq i64 %.0.lcssa.i.i.i5.i, %i.ee
  br i1 %i.ef, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.eg = shl nuw nsw i64 %.0.lcssa.i.i.i5.i, 1   ; 2 uses
  %i.eh = or disjoint i64 %i.eg, 1
  %i.ei = xor i64 %i.eg, -1
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !102
  %i.em = sub nsw i64 0, %.0.lcssa.i.i.i5.i
  %i.en = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -4
  store i32 %i.el, ptr %i.eo, align 4, !tbaa !102
  br label %.lr.ph.i.i.i.i7.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i4.i
  %.not.i.i6.i = icmp eq i64 %.0.lcssa.i.i.i5.i, 0
  br i1 %.not.i.i6.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i7.i.preheader

.lr.ph.i.i.i.i7.i.preheader:                      ; preds = %bb.h, %.thread.i.i.i
  %.097.i.i.i.i8.i.ph = phi i64 [ %.0.lcssa.i.i.i5.i, %bb.h ], [ %i.eh, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i7.i

.lr.ph.i.i.i.i7.i:                                ; preds = %.lr.ph.i.i.i.i7.i.preheader, %bb.i
  %.097.i.i.i.i8.i = phi i64 [ %.08.i.i45.i.i.i, %bb.i ], [ %.097.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i7.i.preheader ] ; 3 uses
  %.08.in.i.i.i.i9.i = add nsw i64 %.097.i.i.i.i8.i, -1
  %.08.i.i45.i.i.i = lshr i64 %.08.in.i.i.i.i9.i, 1 ; 3 uses
  %i.ep = sub nsw i64 0, %.08.i.i45.i.i.i
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !102 ; 2 uses
  %i.et = icmp ugt i32 %i.es, %i.da
  br i1 %i.et, label %bb.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i7.i
  %i.eu = sub nsw i64 0, %.097.i.i.i.i8.i
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4
  store i32 %i.es, ptr %i.ew, align 4, !tbaa !102
  %.not6.i.i.i = icmp eq i64 %.08.i.i45.i.i.i, 0
  br i1 %.not6.i.i.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i7.i, !llvm.loop !2924

"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i7.i, %bb.h
  %.09.lcssa.i.i.i.i10.i = phi i64 [ 0, %bb.h ], [ %.097.i.i.i.i8.i, %.lr.ph.i.i.i.i7.i ], [ 0, %bb.i ]
  %i.ex = sub nsw i64 0, %.09.lcssa.i.i.i.i10.i
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ex
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4
  store i32 %i.da, ptr %i.ez, align 4, !tbaa !102
  %i.fa = icmp sgt i64 %i.dc, 4
  br i1 %i.fa, label %.lr.ph.i3.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_T0_.exit", !llvm.loop !2926

.lr.ph61:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02560 = phi i64 [ %i.fd, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.fb = phi i64 [ %i.gm, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.fc = phi i64 [ %i.gl, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.fd = add nsw i64 %.02560, -1                 ; 3 uses
  %i.fe = inttoptr i64 %i.fb to ptr               ; 3 uses
  %i.ff = inttoptr i64 %i.fc to ptr               ; 4 uses
  %i.fg = sub i64 %i.fb, %i.fc
  %i.fh = ashr exact i64 %i.fg, 2
  %.neg.i = sdiv i64 %i.fh, -2
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %.neg.i
  %i.fj = getelementptr inbounds i8, ptr %i.fe, i64 -4 ; 12 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fe, i64 -8 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !102, !noalias !2934 ; 5 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !102, !noalias !2934 ; 5 uses
  %i.fo = icmp ugt i32 %i.fl, %i.fn
  %i.fp = load i32, ptr %i.ff, align 4, !tbaa !102, !noalias !2934 ; 6 uses
  br i1 %i.fo, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph61
  %i.fq = icmp ugt i32 %i.fn, %i.fp
  br i1 %i.fq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fr = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2934
  store i32 %i.fn, ptr %i.fj, align 4, !tbaa !102, !noalias !2934
  store i32 %i.fr, ptr %i.fm, align 4, !tbaa !102, !noalias !2934
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.fs = icmp ugt i32 %i.fl, %i.fp
  %i.ft = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2934 ; 2 uses
  br i1 %i.fs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.fp, ptr %i.fj, align 4, !tbaa !102, !noalias !2934
  store i32 %i.ft, ptr %i.ff, align 4, !tbaa !102, !noalias !2934
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !102, !noalias !2934
  store i32 %i.ft, ptr %i.fk, align 4, !tbaa !102, !noalias !2934
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph61
  %i.fu = icmp ugt i32 %i.fl, %i.fp
  br i1 %i.fu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fv = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2934
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !102, !noalias !2934
  store i32 %i.fv, ptr %i.fk, align 4, !tbaa !102, !noalias !2934
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.fw = icmp ugt i32 %i.fn, %i.fp
  %i.fx = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2934 ; 2 uses
  br i1 %i.fw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.fp, ptr %i.fj, align 4, !tbaa !102, !noalias !2934
  store i32 %i.fx, ptr %i.ff, align 4, !tbaa !102, !noalias !2934
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store i32 %i.fn, ptr %i.fj, align 4, !tbaa !102, !noalias !2934
  store i32 %i.fx, ptr %i.fm, align 4, !tbaa !102, !noalias !2934
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i.preheader", %bb.v
  %.sroa.010.0.i = phi ptr [ %i.gj, %bb.v ], [ %i.fj, %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i.preheader" ] ; 3 uses
  %.sroa.09.0.i = phi ptr [ %storemerge.i.i, %bb.v ], [ %i.ff, %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %i.fy = getelementptr inbounds i8, ptr %.sroa.010.0.i, i64 -4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !102, !noalias !2935
  %i.ga = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2935 ; 3 uses
  %i.gb = icmp ugt i32 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.i.i11, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i11, %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i"
  %.sroa.010.1.i = phi ptr [ %.sroa.010.0.i, %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i" ], [ %i.gd, %.lr.ph.i.i11 ] ; 3 uses
  br label %bb.t

.lr.ph.i.i11:                                     ; preds = %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i", %.lr.ph.i.i11
  %i.gc = phi ptr [ %i.gd, %.lr.ph.i.i11 ], [ %.sroa.010.0.i, %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i" ] ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -4 ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -8
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !102, !noalias !2935
  %i.gg = icmp ugt i32 %i.gf, %i.ga
  br i1 %i.gg, label %.lr.ph.i.i11, label %.preheader.i.i, !llvm.loop !2931

bb.t:                                             ; preds = %bb.t, %.preheader.i.i
  %.pn.i.i = phi ptr [ %.sroa.09.0.i, %.preheader.i.i ], [ %storemerge.i.i, %bb.t ] ; 3 uses
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4 ; 3 uses
  %i.gh = load i32, ptr %.pn.i.i, align 4, !tbaa !102, !noalias !2935 ; 2 uses
  %i.gi = icmp ugt i32 %i.ga, %i.gh
  br i1 %i.gi, label %bb.t, label %bb.u, !llvm.loop !2932

bb.u:                                             ; preds = %bb.t
  %.not.i.i10 = icmp ult ptr %storemerge.i.i, %.sroa.010.1.i
  br i1 %.not.i.i10, label %bb.v, label %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEET_SG_SG_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.gj = getelementptr inbounds i8, ptr %.sroa.010.1.i, i64 -4 ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !102, !noalias !2935
  store i32 %i.gh, ptr %i.gj, align 4, !tbaa !102, !noalias !2935
  store i32 %i.gk, ptr %.pn.i.i, align 4, !tbaa !102, !noalias !2935
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !2933

"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEET_SG_SG_T0_.exit": ; preds = %bb.u
  %i.gl = ptrtoint ptr %.sroa.010.1.i to i64      ; 5 uses
  store i64 %i.gl, ptr %3, align 8, !tbaa !99
  store i64 %i.fc, ptr %4, align 8, !tbaa !99
  call fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_T0_T1_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %4, i64 noundef %i.fd)
  store i64 %i.gl, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.gm = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.gn = sub i64 %i.gm, %i.gl
  %i.go = icmp sgt i64 %i.gn, 64
  br i1 %i.go, label %.lr.ph, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_T0_.exit", !llvm.loop !2922

"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_RT0_.exit.i.i", %bb.a, %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_3EEEvT_SG_SG_T0_.exit.i"
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_T0_T1_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef nonnull align 8 captures(none) dead_on_return dereferenceable(8) %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  %3 = alloca %"class.std::reverse_iterator.643", align 8 ; 2 uses
  %4 = alloca %"class.std::reverse_iterator.643", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i23 = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i24 = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i23 to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i24 to i64 ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.preheader, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_T0_.exit"

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph61

.lr.ph:                                           ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEET_SG_SG_T0_.exit"
  %i.f = icmp eq i64 %i.fd, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph61, !llvm.loop !2936

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa58 = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.gl, %.lr.ph ] ; 2 uses
  %.lcssa56 = phi i64 [ %i.a, %.lr.ph.preheader ], [ %i.gm, %.lr.ph ] ; 3 uses
  %i.g = inttoptr i64 %.lcssa58 to ptr
  %i.h = inttoptr i64 %.lcssa56 to ptr            ; 28 uses
  %i.i = sub i64 %.lcssa56, %.lcssa58
  %.fr.i.i.i = freeze i64 %i.i                    ; 3 uses
  %i.j = ashr i64 %.fr.i.i.i, 2                   ; 4 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_T0_.exit.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.l = add nsw i64 %i.j, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 4 uses
  %i.p = and i64 %.fr.i.i.i, 4
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %bb.b
  %5 = or disjoint i64 %i.l, 1
  %i.r = sub nsw i64 1, %i.j
  %i.s = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = sub nsw i64 0, %i.m
  %i.v = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.b, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"
  %.08.us.i.i.i = phi i64 [ %i.bh, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.us.i.i.i" ], [ %i.m, %bb.b ] ; 6 uses
  %i.x = sub i64 0, %.08.us.i.i.i                 ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !102 ; 2 uses
  %i.ab = icmp slt i64 %.08.us.i.i.i, %i.o
  br i1 %i.ab, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.032.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.08.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.ac = shl i64 %.032.i.us.i.i.i, 1             ; 4 uses
  %i.ad = add i64 %i.ac, 2
  %i.ae = sub nuw nsw i64 -2, %i.ac
  %i.af = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ae
  %i.ag = or disjoint i64 %i.ac, 1
  %i.ah = xor i64 %i.ac, -1
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !102
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !102
  %i.an = icmp ult i32 %i.ak, %i.am
  %spec.select.i.us.i.i.i = select i1 %i.an, i64 %i.ag, i64 %i.ad ; 4 uses
  %i.ao = sub i64 0, %spec.select.i.us.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !102
  %i.as = sub i64 0, %.032.i.us.i.i.i
  %i.at = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !102
  %i.av = icmp slt i64 %spec.select.i.us.i.i.i, %i.o
  br i1 %i.av, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !2937

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.097.i.i.us.i.i.i = phi i64 [ %.08.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 2 uses
  %.08.in.i.i.us.i.i.i = add nsw i64 %.097.i.i.us.i.i.i, -1
  %.08.i.i.us.i.i.i = sdiv i64 %.08.in.i.i.us.i.i.i, 2 ; 3 uses
  %i.aw = sub nsw i64 0, %.08.i.i.us.i.i.i        ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !102 ; 2 uses
  %i.ba = icmp ult i32 %i.az, %i.aa
  %i.bb = sub nsw i64 0, %.097.i.i.us.i.i.i       ; 2 uses
  br i1 %i.ba, label %bb.c, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  store i32 %i.az, ptr %i.bd, align 4, !tbaa !102
  %i.be = icmp sgt i64 %.08.i.i.us.i.i.i, %.08.us.i.i.i
  br i1 %i.be, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", !llvm.loop !2938

"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.x, %.split.us.i.i.i ], [ %i.aw, %bb.c ], [ %i.bb, %.lr.ph.i.i.us.i.i.i ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.h, i64 %.pre-phi.i.i
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.aa, ptr %i.bg, align 4, !tbaa !102
  %.not.us.i.i.i = icmp eq i64 %.08.us.i.i.i, 0
  %i.bh = add nsw i64 %.08.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_T0_.exit.i", label %.split.us.i.i.i, !llvm.loop !2939

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.cw, %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.i.i.i" ], [ %i.m, %.split.preheader.i.i.i ] ; 8 uses
  %i.bi = sub i64 0, %.08.i.i.i
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !102 ; 2 uses
  %i.bm = icmp slt i64 %.08.i.i.i, %i.o
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.032.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.bn = shl i64 %.032.i.i.i.i, 1                ; 4 uses
  %i.bo = add i64 %i.bn, 2
  %i.bp = sub nuw nsw i64 -2, %i.bn
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bp
  %i.br = or disjoint i64 %i.bn, 1
  %i.bs = xor i64 %i.bn, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !102
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !102
  %i.by = icmp ult i32 %i.bv, %i.bx
  %spec.select.i.i.i.i = select i1 %i.by, i64 %i.br, i64 %i.bo ; 4 uses
  %i.bz = sub i64 0, %spec.select.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !102
  %i.cd = sub i64 0, %.032.i.i.i.i
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  store i32 %i.cc, ptr %i.cf, align 4, !tbaa !102
  %i.cg = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.cg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2937

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ch = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  br i1 %i.ch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ci = load i32, ptr %i.t, align 4, !tbaa !102
  store i32 %i.ci, ptr %i.w, align 4, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.122.i.i.i.i = phi i64 [ %5, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cj = icmp sgt i64 %.122.i.i.i.i, %.08.i.i.i
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.097.i.i.i.i.i = phi i64 [ %.08.i.i.i.i.i, %bb.f ], [ %.122.i.i.i.i, %bb.e ] ; 3 uses
  %.08.in.i.i.i.i.i = add nsw i64 %.097.i.i.i.i.i, -1
  %.08.i.i.i.i.i = sdiv i64 %.08.in.i.i.i.i.i, 2  ; 4 uses
  %i.ck = sub nsw i64 0, %.08.i.i.i.i.i
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !102 ; 2 uses
  %i.co = icmp ult i32 %i.cn, %i.bl
  br i1 %i.co, label %bb.f, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cp = sub nsw i64 0, %.097.i.i.i.i.i
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -4
  store i32 %i.cn, ptr %i.cr, align 4, !tbaa !102
  %i.cs = icmp sgt i64 %.08.i.i.i.i.i, %.08.i.i.i
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !2938

"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.09.lcssa.i.i.i.i.i = phi i64 [ %.122.i.i.i.i, %bb.e ], [ %.097.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i, %bb.f ]
  %i.ct = sub nsw i64 0, %.09.lcssa.i.i.i.i.i
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4
  store i32 %i.bl, ptr %i.cv, align 4, !tbaa !102
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.cw = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_T0_.exit.i", label %.split.i.i.i, !llvm.loop !2939

"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_T0_.exit.i": ; preds = %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.lr.ph._crit_edge
  %i.cx = icmp sgt i64 %.fr.i.i.i, 4
  br i1 %i.cx, label %.lr.ph.i3.preheader.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_T0_.exit"

.lr.ph.i3.preheader.i:                            ; preds = %"_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_T0_.exit.i"
  %i.cy = getelementptr inbounds i8, ptr %i.h, i64 -4
  br label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_RT0_.exit.i.i", %.lr.ph.i3.preheader.i
  %.sroa.0.0.copyload.i2.i5.i.i = phi ptr [ %i.cz, %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_RT0_.exit.i.i" ], [ %i.g, %.lr.ph.i3.preheader.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i2.i5.i.i, i64 4 ; 2 uses
  %.cast.i.i = ptrtoint ptr %i.cz to i64
  %i.da = load i32, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !102 ; 2 uses
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !102
  store i32 %i.db, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !102
  %i.dc = sub i64 %.lcssa56, %.cast.i.i           ; 3 uses
  %i.dd = ashr exact i64 %i.dc, 2                 ; 3 uses
  %i.de = add nsw i64 %i.dd, -1
  %i.df = lshr i64 %i.de, 1
  %i.dg = icmp sgt i64 %i.dd, 2
  br i1 %i.dg, label %.lr.ph.i.i.i11.i, label %._crit_edge.i.i.i4.i

.lr.ph.i.i.i11.i:                                 ; preds = %.lr.ph.i3.i, %.lr.ph.i.i.i11.i
  %.032.i.i.i12.i = phi i64 [ %spec.select.i.i.i13.i, %.lr.ph.i.i.i11.i ], [ 0, %.lr.ph.i3.i ] ; 2 uses
  %i.dh = shl i64 %.032.i.i.i12.i, 1              ; 4 uses
  %i.di = add i64 %i.dh, 2
  %i.dj = sub nuw nsw i64 -2, %i.dh
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dj
  %i.dl = or disjoint i64 %i.dh, 1
  %i.dm = xor i64 %i.dh, -1
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !102
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !102
  %i.ds = icmp ult i32 %i.dp, %i.dr
  %spec.select.i.i.i13.i = select i1 %i.ds, i64 %i.dl, i64 %i.di ; 4 uses
  %i.dt = sub i64 0, %spec.select.i.i.i13.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !102
  %i.dx = sub i64 0, %.032.i.i.i12.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %i.dw, ptr %i.dz, align 4, !tbaa !102
  %i.ea = icmp slt i64 %spec.select.i.i.i13.i, %i.df
  br i1 %i.ea, label %.lr.ph.i.i.i11.i, label %._crit_edge.i.i.i4.i, !llvm.loop !2937

._crit_edge.i.i.i4.i:                             ; preds = %.lr.ph.i.i.i11.i, %.lr.ph.i3.i
  %.0.lcssa.i.i.i5.i = phi i64 [ 0, %.lr.ph.i3.i ], [ %spec.select.i.i.i13.i, %.lr.ph.i.i.i11.i ] ; 5 uses
  %i.eb = and i64 %i.dc, 4
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i4.i
  %i.ed = add nsw i64 %i.dd, -2
  %i.ee = ashr exact i64 %i.ed, 1
  %i.ef = icmp eq i64 %.0.lcssa.i.i.i5.i, %i.ee
  br i1 %i.ef, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.eg = shl nuw nsw i64 %.0.lcssa.i.i.i5.i, 1   ; 2 uses
  %i.eh = or disjoint i64 %i.eg, 1
  %i.ei = xor i64 %i.eg, -1
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !102
  %i.em = sub nsw i64 0, %.0.lcssa.i.i.i5.i
  %i.en = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -4
  store i32 %i.el, ptr %i.eo, align 4, !tbaa !102
  br label %.lr.ph.i.i.i.i7.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i4.i
  %.not.i.i6.i = icmp eq i64 %.0.lcssa.i.i.i5.i, 0
  br i1 %.not.i.i6.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i7.i.preheader

.lr.ph.i.i.i.i7.i.preheader:                      ; preds = %bb.h, %.thread.i.i.i
  %.097.i.i.i.i8.i.ph = phi i64 [ %.0.lcssa.i.i.i5.i, %bb.h ], [ %i.eh, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i7.i

.lr.ph.i.i.i.i7.i:                                ; preds = %.lr.ph.i.i.i.i7.i.preheader, %bb.i
  %.097.i.i.i.i8.i = phi i64 [ %.08.i.i45.i.i.i, %bb.i ], [ %.097.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i7.i.preheader ] ; 3 uses
  %.08.in.i.i.i.i9.i = add nsw i64 %.097.i.i.i.i8.i, -1
  %.08.i.i45.i.i.i = lshr i64 %.08.in.i.i.i.i9.i, 1 ; 3 uses
  %i.ep = sub nsw i64 0, %.08.i.i45.i.i.i
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !102 ; 2 uses
  %i.et = icmp ult i32 %i.es, %i.da
  br i1 %i.et, label %bb.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i7.i
  %i.eu = sub nsw i64 0, %.097.i.i.i.i8.i
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4
  store i32 %i.es, ptr %i.ew, align 4, !tbaa !102
  %.not6.i.i.i = icmp eq i64 %.08.i.i45.i.i.i, 0
  br i1 %.not6.i.i.i, label %"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i7.i, !llvm.loop !2938

"_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i7.i, %bb.h
  %.09.lcssa.i.i.i.i10.i = phi i64 [ 0, %bb.h ], [ %.097.i.i.i.i8.i, %.lr.ph.i.i.i.i7.i ], [ 0, %bb.i ]
  %i.ex = sub nsw i64 0, %.09.lcssa.i.i.i.i10.i
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ex
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4
  store i32 %i.da, ptr %i.ez, align 4, !tbaa !102
  %i.fa = icmp sgt i64 %i.dc, 4
  br i1 %i.fa, label %.lr.ph.i3.i, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_T0_.exit", !llvm.loop !2940

.lr.ph61:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02560 = phi i64 [ %i.fd, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.fb = phi i64 [ %i.gm, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.fc = phi i64 [ %i.gl, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.fd = add nsw i64 %.02560, -1                 ; 3 uses
  %i.fe = inttoptr i64 %i.fb to ptr               ; 3 uses
  %i.ff = inttoptr i64 %i.fc to ptr               ; 4 uses
  %i.fg = sub i64 %i.fb, %i.fc
  %i.fh = ashr exact i64 %i.fg, 2
  %.neg.i = sdiv i64 %i.fh, -2
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %.neg.i
  %i.fj = getelementptr inbounds i8, ptr %i.fe, i64 -4 ; 12 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fe, i64 -8 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !102, !noalias !2948 ; 5 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !102, !noalias !2948 ; 5 uses
  %i.fo = icmp ult i32 %i.fl, %i.fn
  %i.fp = load i32, ptr %i.ff, align 4, !tbaa !102, !noalias !2948 ; 6 uses
  br i1 %i.fo, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph61
  %i.fq = icmp ult i32 %i.fn, %i.fp
  br i1 %i.fq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fr = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2948
  store i32 %i.fn, ptr %i.fj, align 4, !tbaa !102, !noalias !2948
  store i32 %i.fr, ptr %i.fm, align 4, !tbaa !102, !noalias !2948
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.fs = icmp ult i32 %i.fl, %i.fp
  %i.ft = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2948 ; 2 uses
  br i1 %i.fs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.fp, ptr %i.fj, align 4, !tbaa !102, !noalias !2948
  store i32 %i.ft, ptr %i.ff, align 4, !tbaa !102, !noalias !2948
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !102, !noalias !2948
  store i32 %i.ft, ptr %i.fk, align 4, !tbaa !102, !noalias !2948
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph61
  %i.fu = icmp ult i32 %i.fl, %i.fp
  br i1 %i.fu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fv = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2948
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !102, !noalias !2948
  store i32 %i.fv, ptr %i.fk, align 4, !tbaa !102, !noalias !2948
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN43ViewMultiStorage_EachWithSuggestedType_Test8TestBodyEvE3$_4EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.fw = icmp ult i32 %i.fn, %i.fp
  %i.fx = load i32, ptr %i.fj, align 4, !tbaa !102, !noalias !2948 ; 2 uses
  br i1 %i.fw, label %bb.r, label %bb.s
end_hunk_1
