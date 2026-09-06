Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/api_vector?download=true
inline.NumInlined: 7609
inline.NumDeleted: 3292
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5arrow18TypedChunkLocationItEC2Ett:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !496
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationItEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !50
  %i.b = trunc i32 %1 to i16
  %i.c = icmp eq i16 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i32 %1, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIjEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIjEC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !497
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !52
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !498
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !55
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationImEC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationImEC5Emm) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !499
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !57
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute13FilterOptionsC2ENS1_21NullSelectionBehaviorE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 20)) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118kFilterOptionsTypeE, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute13FilterOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.c, align 8, !tbaa !501
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute11TakeOptionsC2Eb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(17) initializes((0, 17)) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116kTakeOptionsTypeE, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11TakeOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %i.d, align 8, !tbaa !503
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute23DictionaryEncodeOptionsC2ENS1_20NullEncodingBehaviorE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 20)) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_128kDictionaryEncodeOptionsTypeE, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute23DictionaryEncodeOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.c, align 8, !tbaa !505
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute19RunEndEncodeOptionsC2ESt10shared_ptrINS_8DataTypeEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_124kRunEndEncodeOptionsTypeE, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute19RunEndEncodeOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  store ptr null, ptr %i.e, align 8, !tbaa !70
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !71
  store ptr null, ptr %1, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute16ArraySortOptionsC2ENS0_9SortOrderENS0_13NullPlacementE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_121kArraySortOptionsTypeE, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute16ArraySortOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.c, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %2, ptr %i.d, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute11SortOptionsC2ESt6vectorINS0_7SortKeyESaIS3_EENS0_13NullPlacementE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(44) initializes((0, 44)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116kSortOptionsTypeE, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11SortOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !81
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  store ptr %i.g, ptr %i.e, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %2, ptr %i.h, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute11SortOptionsC2ERKNS0_8OrderingE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(29) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116kSortOptionsTypeE, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11SortOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89   ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !90     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %.noexc4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775776
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i, !prof !91

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24
  br label %.noexc4

.noexc4:                                          ; preds = %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !83
  %i.p = load ptr, ptr %1, align 8, !tbaa !81
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute7SortKeyESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.p, ptr %i.q, ptr noundef %i.l)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc4
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !90   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #25
  br label %.body

bb.e:                                             ; preds = %.noexc4
  store ptr %i.r, ptr %i.m, align 8, !tbaa !89
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !507
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !88
  ret void

.body:                                            ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.s
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i unwind label %bb.b, !inline_history !0

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26, !inline_history !0
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !90
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #25
  br label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute19PartitionNthOptionsC2ElNS0_13NullPlacementE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 28)) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_124kPartitionNthOptionsTypeE, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute19PartitionNthOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.d, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute16WinsorizeOptionsC2Edd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, double noundef %1, double noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_121kWinsorizeOptionsTypeE, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute16WinsorizeOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %1, ptr %i.c, align 8, !tbaa !509
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %2, ptr %i.d, align 8, !tbaa !510
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute14SelectKOptionsC2ElSt6vectorINS0_7SortKeyESaIS3_EE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_119kSelectKOptionsTypeE, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute14SelectKOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !512
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !81
  store <2 x ptr> %i.e, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  store ptr %i.h, ptr %i.f, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute17CumulativeOptionsC2Eb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(41) initializes((0, 16), (32, 33), (40, 41)) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_122kCumulativeOptionsTypeE, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute17CumulativeOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.d, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.a, ptr %i.e, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute17CumulativeOptionsC2Edb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(41) initializes((0, 33), (40, 41)) %0, double noundef %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIN5arrow12DoubleScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %3 = alloca %"class.std::allocator.239", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 2 uses
  %4 = alloca %"class.std::shared_ptr.38", align 16 ; 4 uses
  store double %1, ptr %i.a, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !515
  call void @_ZNSt12__shared_ptrIN5arrow12DoubleScalarELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRdEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !515
  %i.b = zext i1 %2 to i8
  %i.c = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_122kCumulativeOptionsTypeE, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute17CumulativeOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x ptr>, ptr %4, align 16, !tbaa !71
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.g, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.b, ptr %i.h, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute17CumulativeOptionsC2ESt10shared_ptrINS_6ScalarEEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(41) initializes((0, 33), (40, 41)) %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_122kCumulativeOptionsTypeE, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute17CumulativeOptionsE, i64 16), ptr %0, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute7SortKeyESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_:bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #26
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN5arrow7compute7SortKeyEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute7SortKeyEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i
  %.05.i = phi ptr [ %i.c, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i ], [ %0, %bb.a ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i unwind label %bb.b, !inline_history !0

bb.b:                                             ; preds = %.lr.ph.i
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #26, !inline_history !0
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i: ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute7SortKeyEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !1

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute7SortKeyEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS4_8FieldRefESaISD_EEEEC1ERKSG_EUlOT_T0_E_JRKSt7variantIJS5_SB_SF_EEEEDcOSL_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !146
  switch i8 %i.b, label %bb.n [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.m
    i8 -1, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !169    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !636  ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !159    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.i, 9223372036854775804
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !91

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.l = phi ptr [ null, %bb.b ], [ %i.k, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !159
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !636
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !160
  %i.p = load ptr, ptr %1, align 8, !tbaa !170    ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 4
  br i1 %i.u, label %bb.e, label %bb.f, !prof !117

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESO_SS_.exit

bb.f:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %i.t, 4
  br i1 %i.v, label %bb.g, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESO_SS_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.p, align 4, !tbaa !38
  store i32 %i.w, ptr %i.l, align 4, !tbaa !38
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESO_SS_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESO_SS_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  store ptr %i.x, ptr %i.m, align 8, !tbaa !636
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %0, align 8, !tbaa !169    ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !127
  %i.aa = load ptr, ptr %1, align 8, !tbaa !128   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !130 ; 8 uses
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %bb.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp slt i64 %i.ac, 0
  br i1 %i.ae, label %.noexc.i.i.i.i.i.i.i.i.i, label %bb.j

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #23
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.af = add nuw i64 %i.ac, 1                    ; 2 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %.noexc6.i.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i, !prof !91

.noexc6.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.j
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #24 ; 2 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !128
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !129
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i, %bb.h
  %i.ai = phi ptr [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %bb.h ] ; 3 uses
  switch i64 %i.ac, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.aj = load i8, ptr %i.aa, align 1, !tbaa !129
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !129
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.ac, ptr %i.ak, align 8, !tbaa !130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ac
  store i8 0, ptr %i.al, align 1, !tbaa !129
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.am = load ptr, ptr %0, align 8, !tbaa !169
  tail call void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !635
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.a, %bb.m, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESO_SS_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon, align 8                ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !163    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN5arrow8FieldRefEE8allocateEmPKv.exit.i.i.i, !prof !91

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN5arrow8FieldRefEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5arrow8FieldRefEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5arrow8FieldRefEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !163
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !164
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !165
  %i.m = load ptr, ptr %1, align 8, !tbaa !171    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5arrow8FieldRefESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZSt10_ConstructIN5arrow8FieldRefEJRKS1_EEvPT_DpOT0_.exit.i
  %.013.i = phi ptr [ %i.y, %_ZSt10_ConstructIN5arrow8FieldRefEJRKS1_EEvPT_DpOT0_.exit.i ], [ %i.i, %bb.c ] ; 6 uses
  %.sroa.08.012.i = phi ptr [ %i.x, %_ZSt10_ConstructIN5arrow8FieldRefEJRKS1_EEvPT_DpOT0_.exit.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i, i64 32 ; 2 uses
  store i8 -1, ptr %i.p, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %.013.i, ptr %2, align 8, !tbaa !169
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS4_8FieldRefESaISD_EEEEC1ERKSG_EUlOT_T0_E_JRKSt7variantIJS5_SB_SF_EEEEDcOSL_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.012.i)
          to label %_ZSt10_ConstructIN5arrow8FieldRefEJRKS1_EEvPT_DpOT0_.exit.i unwind label %bb.d, !inline_history !637

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %.013.i)
          to label %.body.i.body unwind label %bb.e, !inline_history !638

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #26, !inline_history !638
  unreachable

.body.i.body:                                     ; preds = %bb.d
  %i.t = extractvalue { ptr, i32 } %i.q, 0
  %i.u = call ptr @__cxa_begin_catch(ptr %i.t) #27, !inline_history !639 ; 0 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %.013.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow8FieldRefEEvT_S3_.exit.i, label %.lr.ph.i.i.i

_ZSt10_ConstructIN5arrow8FieldRefEJRKS1_EEvPT_DpOT0_.exit.i: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 32
  %i.w = load i8, ptr %i.v, align 8, !tbaa !146
  store i8 %i.w, ptr %i.p, align 8, !tbaa !146
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i, i64 40 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.n
  br i1 %i.z, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5arrow8FieldRefESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i, !llvm.loop !640

.lr.ph.i.i.i:                                     ; preds = %.body.i.body, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.i, %.body.i.body ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.05.i.i.i), !inline_history !641
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.aa, %.013.i
  br i1 %.not.i.i.i13, label %_ZSt8_DestroyIPN5arrow8FieldRefEEvT_S3_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow8FieldRefEEvT_S3_.exit.i:   ; preds = %.lr.ph.i.i.i, %.body.i.body
  invoke void @__cxa_rethrow() #23
          to label %bb.h unwind label %bb.f, !inline_history !639

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefEEvT_S3_.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g, !inline_history !639

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #26, !inline_history !639
  unreachable

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefEEvT_S3_.exit.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5arrow8FieldRefESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5arrow8FieldRefEJRKS1_EEvPT_DpOT0_.exit.i, %bb.c
  %.0.lcssa.i = phi ptr [ %i.i, %bb.c ], [ %i.y, %_ZSt10_ConstructIN5arrow8FieldRefEJRKS1_EEvPT_DpOT0_.exit.i ]
  store ptr %.0.lcssa.i, ptr %i.j, align 8, !tbaa !164
  ret void

.body:                                            ; preds = %bb.f
  %i.ae = load ptr, ptr %0, align 8, !tbaa !163   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !165
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #25
  br label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.ab
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !146
  switch i8 %i.b, label %bb.g [
    i8 -1, label %_ZN5arrow8FieldRefD2Ev.exit
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !159    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25, !inline_history !4
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !128    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !129
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #25, !inline_history !4
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !163    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !164  ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i.i2, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0.i.i.i3 = phi ptr [ %i.q, %.lr.ph ], [ %i.n, %bb.e ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.0.i.i.i3), !inline_history !642
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i3, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.loopexit, label %.lr.ph, !llvm.loop !6

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !163
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.loopexit, %bb.e
  %i.r = phi ptr [ %.pre, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.loopexit ], [ %i.n, %bb.e ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !165
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #25, !inline_history !643
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i

bb.g:                                             ; preds = %bb.a
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i: ; preds = %bb.d, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.b, %bb.c
  store i8 -1, ptr %i.a, align 8, !tbaa !146
  br label %_ZN5arrow8FieldRefD2Ev.exit

_ZN5arrow8FieldRefD2Ev.exit:                      ; preds = %bb.a, %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !146
  switch i8 %i.b, label %bb.g [
    i8 -1, label %bb.h
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internalL15GenericToStringB5cxx11ERKSt6vectorINS0_7SortKeyESaIS3_EE:bb.a
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.72, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNK5arrow7compute7SortKey8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.026.029)
          to label %bb.j unwind label %.loopexit32

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = load ptr, ptr %3, align 8, !tbaa !128
  %i.al = load i64, ptr %i.p, align 8, !tbaa !130
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.ak, i64 noundef %i.al)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit37 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.j
  %i.an = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.q
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ap = load i64, ptr %i.q, align 8, !tbaa !129
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.026.029, i64 48 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.n
  br i1 %i.as, label %._crit_edge, label %.peel.next, !llvm.loop !1064

.loopexit32:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %lpad.loopexit34 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

.loopexit.split-lp33:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel
  %lpad.loopexit.split-lp35 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

.loopexit37:                                      ; preds = %bb.j
  %lpad.loopexit39 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp38:                             ; preds = %bb.e
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp38, %.loopexit37
  %lpad.phi41 = phi { ptr, i32 } [ %lpad.loopexit39, %.loopexit37 ], [ %lpad.loopexit.split-lp40, %.loopexit.split-lp38 ] ; 2 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.q
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.k
  %i.av = load i64, ptr %i.q, align 8, !tbaa !129
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.k, %.loopexit32, %.loopexit.split-lp33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %.pn = phi { ptr, i32 } [ %lpad.phi41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %lpad.loopexit.split-lp35, %.loopexit.split-lp33 ], [ %lpad.loopexit34, %.loopexit32 ], [ %lpad.phi41, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body

bb.l:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !127, !alias.scope !1072
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !130, !alias.scope !1072
  store i8 0, ptr %i.ax, align 8, !tbaa !129, !alias.scope !1072
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !212, !noalias !1072 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ba, null
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1072 ; 2 uses
  %i.bd = icmp ugt ptr %i.ba, %i.bc
  %.08.i.i.i = select i1 %i.bd, ptr %i.ba, ptr %i.bc ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !213, !noalias !1072 ; 2 uses
  %i.bg = ptrtoint ptr %.08.i.i.i to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bf, i64 noundef %i.bi)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !128, !alias.scope !1072 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ax
  br i1 %i.bm, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bn = load i64, ptr %i.ax, align 8, !tbaa !129, !alias.scope !1072
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #25
  br label %.body

bb.o:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.bq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bq, ptr %2, align 8, !tbaa !64
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %2, i64 %i.bt
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !64
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bv, ptr %i.c, align 8, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bw, align 8, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !128 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !129
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bw, align 8, !tbaa !64
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cd) #27
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ce, ptr %2, align 8, !tbaa !64
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cg = getelementptr i8, ptr %i.ce, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %2, i64 %i.ch
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !64
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cj, align 8, !tbaa !215
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ck) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.p:                                             ; preds = %bb.g, %bb.f
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %lpad.loopexit, %bb.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.cl, %bb.p ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bk, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZNK5arrow7compute7SortKey8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK5arrow7compute7SortKey6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal8CopyImplINS0_11SortOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !314
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315, !nonnull !113, !align !210
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !310
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !90   ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.l, 9223372036854775776
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i, !prof !91

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !81
  %.pre10 = load ptr, ptr %i.g, align 8, !tbaa !81
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.o = phi ptr [ %i.h, %bb.a ], [ %.pre10, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ]
  %i.p = phi ptr [ %i.i, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ]
  %i.q = phi ptr [ null, %bb.a ], [ %i.n, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute7SortKeyESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.p, ptr %i.o, ptr noundef %i.q)
          to label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.l) #25
  br label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit.i

_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.s

_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.u = load i64, ptr %i.d, align 8, !tbaa !310
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.u ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !90   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83
  store ptr %i.q, ptr %i.v, align 8, !tbaa !90
  store ptr %i.r, ptr %i.x, align 8, !tbaa !89
  store ptr %i.t, ptr %i.z, align 8, !tbaa !83
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i ], [ %i.w, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #26, !inline_history !0
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.y
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.w to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ag) #25
  br label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11SortOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.227", align 8 ; 14 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %7 = alloca %"class.std::shared_ptr.34", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.d = load ptr, ptr %0, align 8, !tbaa !323, !nonnull !113, !align !210
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !310
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  call fastcc void @_ZN5arrow7compute8internalL15GenericToScalarINS0_7SortKeyEEENS_6ResultISt10shared_ptrINS_6ScalarEEEERKSt6vectorIT_SaISA_EE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = load ptr, ptr %3, align 8, !tbaa !116
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !196
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !197
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.j, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK5arrow6Status11WithMessageIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(27) @.str.74, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(18) @.str.75, ptr noundef nonnull align 1 dereferenceable(12) @_ZN5arrow7compute11SortOptions9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(3) @.str.76, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f, !prof !117

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !126, !range !112, !noundef !113
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.g, %bb.f, %bb.e
  %i.p = load ptr, ptr %4, align 8, !tbaa !116
  store ptr %i.p, ptr %i.a, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.r

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ad

bb.i:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %.sroa.0.0.copyload.i7 = load i64, ptr %1, align 8, !tbaa !196
  %.sroa.2.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i9 = load ptr, ptr %.sroa.2.0..sroa_idx.i8, align 8, !tbaa !197
  store i64 %.sroa.0.0.copyload.i7, ptr %6, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.2.0.copyload.i9, ptr %i.t, align 8
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.j unwind label %bb.ab      ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !318  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108, !noalias !1075 ; 2 uses
  store ptr %i.y, ptr %7, align 8, !tbaa !108, !alias.scope !1075
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70, !noalias !1075 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !70, !noalias !1075
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !70, !alias.scope !1075
  store ptr null, ptr %i.x, align 8, !tbaa !108, !noalias !1075
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !218 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !219
  %.not.i.i12 = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i.i12, label %bb.k, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.j
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !218
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ac

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.k
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !70  ; 8 uses
  %.not.i.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internalL15GenericToScalarINS0_7SortKeyEEENS_6ResultISt10shared_ptrINS_6ScalarEEEERKSt6vectorIT_SaISA_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27, !noalias !1153
  %i.bu = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bv = load <2 x ptr>, ptr %23, align 16, !tbaa !71, !noalias !1138
  store <2 x ptr> %i.bv, ptr %24, align 16, !tbaa !71, !alias.scope !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27, !noalias !1138
  %i.bw = load ptr, ptr %16, align 8, !tbaa !326, !noalias !1138 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !327, !noalias !1138 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bw, %i.by
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow10StructTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cq, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i ], [ %i.bw, %_ZNSt12__shared_ptrIN5arrow10StructTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !70, !noalias !1138 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8, !noalias !1138 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.cb, align 8, !tbaa !140, !noalias !1138
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !141, !noalias !1138
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !64, !noalias !1138
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1138
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #27, !noalias !1138, !inline_history !1098
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !64, !noalias !1138
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !1138
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #27, !noalias !1138, !inline_history !1098
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !1138
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !38, !noalias !1138
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4, !noalias !1138
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ce, %bb.m ], [ %i.co, %bb.n ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cp, label %bb.o, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i, !prof !91

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #27, !noalias !1138
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %.lr.ph.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i62.i = icmp eq ptr %i.cq, %i.by
  br i1 %.not.i.i.i62.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %16, align 8, !tbaa !326, !noalias !1138
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt12__shared_ptrIN5arrow10StructTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.cr = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bw, %_ZNSt12__shared_ptrIN5arrow10StructTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internalL20GenericTypeSingletonINS0_7SortKeyEEENSt9enable_ifIXsr3std7is_sameIT_S3_EE5valueESt10shared_ptrINS_8DataTypeEEE4typeEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !328, !noalias !1138
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #25, !noalias !1138
  br label %_ZN5arrow7compute8internalL20GenericTypeSingletonINS0_7SortKeyEEENSt9enable_ifIXsr3std7is_sameIT_S3_EE5valueESt10shared_ptrINS_8DataTypeEEE4typeEv.exit

bb.q:                                             ; preds = %bb.a
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread79.i

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = load ptr, ptr %17, align 8, !tbaa !128, !noalias !1138 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.d
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.thread.i: ; preds = %bb.r
  %i.db = load i64, ptr %i.d, align 8, !tbaa !129, !noalias !1138
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #25, !noalias !1138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i

.thread.i:                                        ; preds = %_ZN5arrow5FieldC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS7_IKNS_16KeyValueMetadataEE.exit.i
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #27, !noalias !1138
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #27, !noalias !1138
  %i.de = load ptr, ptr %17, align 8, !tbaa !128, !noalias !1138 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.d
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread79.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i: ; preds = %.thread.i
  %i.dg = load i64, ptr %i.d, align 8, !tbaa !129, !noalias !1138
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #25, !noalias !1138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread79.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.thread.i
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 96) #25, !noalias !1138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread79.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread79.i: ; preds = %.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i, %bb.q
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i ], [ %i.cx, %bb.q ], [ %i.dd, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !1138
  br label %bb.v

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread92.i

bb.t:                                             ; preds = %._crit_edge.i.i31.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = load ptr, ptr %20, align 8, !tbaa !128, !noalias !1138 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.am
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.thread.i: ; preds = %bb.t
  %i.dm = load i64, ptr %i.am, align 8, !tbaa !129, !noalias !1138
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #25, !noalias !1138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i

.thread85.i:                                      ; preds = %_ZN5arrow5FieldC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS7_IKNS_16KeyValueMetadataEE.exit43.i
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #27, !noalias !1138
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #27, !noalias !1138
  %i.dp = load ptr, ptr %20, align 8, !tbaa !128, !noalias !1138 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.am
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread92.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i: ; preds = %.thread85.i
  %i.dr = load i64, ptr %i.am, align 8, !tbaa !129, !noalias !1138
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #25, !noalias !1138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread92.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.thread.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 96) #25, !noalias !1138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread92.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread92.i: ; preds = %.thread85.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i, %bb.s
  %.pn17.pn.pn.i = phi { ptr, i32 } [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i ], [ %i.di, %bb.s ], [ %i.do, %.thread85.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !1138
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27, !noalias !1138
  br label %bb.v

common.resume:                                    ; preds = %.body, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %.pn21.i, %bb.v ], [ %.pn35.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread92.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread79.i
  %.pn21.i = phi { ptr, i32 } [ %i.dt, %bb.u ], [ %.pn17.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread92.i ], [ %.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread79.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #27, !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !1138
  br label %common.resume

_ZN5arrow7compute8internalL20GenericTypeSingletonINS0_7SortKeyEEENSt9enable_ifIXsr3std7is_sameIT_S3_EE5valueESt10shared_ptrINS_8DataTypeEEE4typeEv.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !89 ; 2 uses
  %i.dw = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 2 uses
  %i.ea = sdiv exact i64 %i.dz, 48                ; 2 uses
  %36 = icmp slt i64 %i.dz, 0
  br i1 %36, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN5arrow7compute8internalL20GenericTypeSingletonINS0_7SortKeyEEENSt9enable_ifIXsr3std7is_sameIT_S3_EE5valueESt10shared_ptrINS_8DataTypeEEE4typeEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #23
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_ZN5arrow7compute8internalL20GenericTypeSingletonINS0_7SortKeyEEENSt9enable_ifIXsr3std7is_sameIT_S3_EE5valueESt10shared_ptrINS_8DataTypeEEE4typeEv.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %.not238 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not238, label %.critedge, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ed = shl nuw nsw i64 %i.ea, 4
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #24
          to label %.noexc46 unwind label %bb.aa  ; 4 uses

.noexc46:                                         ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_M_allocateEm.exit.i
  %i.ef = load ptr, ptr %25, align 8, !tbaa !234  ; 5 uses
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !218 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ef, %i.eg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %.noexc46, %.lr.ph.i.i.i.i45
  %.012.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i45 ], [ %i.ee, %.noexc46 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i45 ], [ %i.ef, %.noexc46 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ei = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !71, !alias.scope !1155, !noalias !1154
  store ptr null, ptr %i.eh, align 8, !tbaa !70, !alias.scope !1155, !noalias !1154
  store <2 x ptr> %i.ei, ptr %.012.i.i.i.i, align 8, !tbaa !71, !alias.scope !1154, !noalias !1155
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !108, !alias.scope !1155, !noalias !1154
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ej, %i.eg
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i45, !llvm.loop !20

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i45, %.noexc46
  %.not.i8.i = icmp eq ptr %i.ef, null
  br i1 %.not.i8.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE7reserveEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.el = load ptr, ptr %i.eb, align 8, !tbaa !219
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ef to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.eo) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, %bb.y
  store ptr %i.ee, ptr %25, align 8, !tbaa !234
  store ptr %i.ee, ptr %i.ec, align 8, !tbaa !218
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ea
  store ptr %i.ep, ptr %i.eb, align 8, !tbaa !219
  %.pre = load ptr, ptr %1, align 8, !tbaa !81    ; 2 uses
  %.pre145 = load ptr, ptr %i.du, align 8, !tbaa !81
  %i.eq = icmp eq ptr %.pre, %.pre145
  br i1 %i.eq, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE7reserveEm.exit
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %14, i64 22
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %14, i64 53
  %i.fm = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  br label %bb.ab

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0122.0144, i64 48 ; 2 uses
  %i.fw = load ptr, ptr %i.du, align 8, !tbaa !81
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %.critedge, label %bb.ab, !llvm.loop !1102

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_M_allocateEm.exit.i, %bb.w
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %.lr.ph, %bb.z
  %.sroa.0122.0144 = phi ptr [ %.pre, %.lr.ph ], [ %i.fv, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !1156
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !1156
  invoke void @_ZNK5arrow8FieldRef9ToDotPathB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0122.0144)
          to label %.noexc64 unwind label %bb.dt

.noexc64:                                         ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !1158
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !1160
  store ptr null, ptr %4, align 8, !tbaa !1162, !alias.scope !1159, !noalias !1158
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12StringScalarESaIvEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i.i unwind label %bb.ak, !noalias !1163

.noexc.i.i:                                       ; preds = %.noexc64
  %i.fz = load ptr, ptr %4, align 8, !tbaa !1162, !alias.scope !1159, !noalias !1158 ; 5 uses
  %i.ga = icmp eq ptr %i.fz, null
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  br i1 %i.ga, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 16 ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !229, !noalias !1164 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load atomic i32, ptr %i.ge monotonic, align 8, !noalias !1164
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i.i.i, %bb.ac
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !228, !noalias !1164
  %i.gh = load ptr, ptr %i.er, align 8, !tbaa !70, !alias.scope !1159, !noalias !1158 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12 ; 3 uses
  %i.gj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !1160
  %.not.i.i3.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gj, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !38, !noalias !1164
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gi, align 4, !tbaa !38, !noalias !1164
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.gm = atomicrmw volatile add ptr %i.gi, i32 1 acq_rel, align 4, !noalias !1164 ; 0 uses
  %.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gc, align 8, !tbaa !229, !noalias !1164
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae, %_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.gn = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i, %bb.af ], [ %i.gd, %bb.ae ], [ %i.gd, %_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.not6.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 12 ; 3 uses
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !1160
  %.not.i7.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !38, !noalias !1164 ; 2 uses
  %i.gr = add nsw i32 %i.gq, -1
  store i32 %i.gr, ptr %i.go, align 4, !tbaa !38, !noalias !1164
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.gs = atomicrmw volatile add ptr %i.go, i32 -1 acq_rel, align 4, !noalias !1164
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gq, %bb.ah ], [ %i.gs, %bb.ai ]
  %i.gt = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gt, label %bb.aj, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = load ptr, ptr %i.gn, align 8, !tbaa !64, !noalias !1164
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !1164
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #27, !noalias !1164, !inline_history !1111
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m:bb.a

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !176
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %2 ; 9 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !128 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 4 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = load ptr, ptr %5, align 8, !tbaa !128   ; 6 uses
  %i.ay = icmp eq ptr %i.ax, %i.y                 ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ay, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ay, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.az = load i64, ptr %i.z, align 8, !tbaa !130 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %.not21.i = icmp eq ptr %5, %i.at
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.j, !prof !91

bb.j:                                             ; preds = %bb.i
  switch i64 %i.az, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !129
  store i8 %i.bb, ptr %i.au, align 1, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.bc = load i64, ptr %i.z, align 8, !tbaa !130 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !130
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !128
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !129
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !128
  %i.bh = load i64, ptr %i.z, align 8, !tbaa !130
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !130
  %i.bi = load i64, ptr %i.y, align 8, !tbaa !129
  store i64 %i.bi, ptr %i.av, align 8, !tbaa !129
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bj = load i64, ptr %i.av, align 8, !tbaa !129
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !128
  %i.bk = load i64, ptr %i.z, align 8, !tbaa !130
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !130
  %i.bm = load i64, ptr %i.y, align 8, !tbaa !129
  store i64 %i.bm, ptr %i.av, align 8, !tbaa !129
  %.not.i12 = icmp eq ptr %i.au, null
  br i1 %.not.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.au, ptr %5, align 8, !tbaa !128
  store i64 %i.bj, ptr %i.y, align 8, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.y, ptr %5, align 8, !tbaa !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.bn = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.au, %bb.m ], [ %i.y, %bb.n ], [ %i.ax, %bb.i ]
  store i64 0, ptr %i.z, align 8, !tbaa !130
  store i8 0, ptr %i.bn, align 1, !tbaa !129
  %i.bo = load ptr, ptr %5, align 8, !tbaa !128   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.y
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bq = load i64, ptr %i.y, align 8, !tbaa !129
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.bs = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bs, ptr %3, align 8, !tbaa !64
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %3, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !64
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bx, ptr %i.b, align 8, !tbaa !64
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.by, align 8, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !128 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !129
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.by, align 8, !tbaa !64
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cf) #27
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cg, ptr %3, align 8, !tbaa !64
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ci = getelementptr i8, ptr %i.cg, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %3, i64 %i.cj
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cl, align 8, !tbaa !215
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cm) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.o:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.d
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.q:                                             ; preds = %bb.e
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !128   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.q
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !129
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.p
  %.pn = phi { ptr, i32 } [ %i.co, %bb.p ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.cp, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.r

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.r

bb.r:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.o
  %.pn8 = phi { ptr, i32 } [ %i.al, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.cn, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal8CopyImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !381
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1524, !nonnull !113, !align !210
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !379
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !90   ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.l, 9223372036854775776
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i, !prof !91

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !81
  %.pre10 = load ptr, ptr %i.g, align 8, !tbaa !81
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.o = phi ptr [ %i.h, %bb.a ], [ %.pre10, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ]
  %i.p = phi ptr [ %i.i, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ]
  %i.q = phi ptr [ null, %bb.a ], [ %i.n, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute7SortKeyESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.p, ptr %i.o, ptr noundef %i.q)
          to label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.l) #25
  br label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit.i

_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.s

_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.u = load i64, ptr %i.d, align 8, !tbaa !379
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.u ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !90   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83
  store ptr %i.q, ptr %i.v, align 8, !tbaa !90
  store ptr %i.r, ptr %i.x, align 8, !tbaa !89
  store ptr %i.t, ptr %i.z, align 8, !tbaa !83
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i ], [ %i.w, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #26, !inline_history !0
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.y
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.w to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ag) #25
  br label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.34", align 8 ; 5 uses
  %4 = alloca %"class.arrow::Result.227", align 8 ; 10 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %6 = alloca %"class.std::shared_ptr.34", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = load ptr, ptr %0, align 8, !tbaa !389, !nonnull !113, !align !210
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !377
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  %.val = load i64, ptr %i.g, align 8, !tbaa !196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !1529
  call void @_ZN5arrow10MakeScalarIlNS_11CTypeTraitsIlEENS_11Int64ScalarES3_EESt10shared_ptrINS_6ScalarEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.34") align 8 %3, i64 noundef %.val), !noalias !1529
  store ptr null, ptr %4, align 8, !tbaa !116, !alias.scope !1529
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !108, !noalias !1529 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !108, !alias.scope !1529
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70, !noalias !1529 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !70, !alias.scope !1529
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !1529
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !383
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %.sroa.0.0.copyload.i7 = load i64, ptr %1, align 8, !tbaa !196
  %.sroa.2.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i9 = load ptr, ptr %.sroa.2.0..sroa_idx.i8, align 8, !tbaa !197
  store i64 %.sroa.0.0.copyload.i7, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.2.0.copyload.i9, ptr %i.o, align 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.c unwind label %bb.u       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !384  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  store ptr %i.i, ptr %6, align 8, !tbaa !108, !alias.scope !1530
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !70, !noalias !1530
  store ptr %i.l, ptr %i.s, align 8, !tbaa !70, !alias.scope !1530
  store ptr null, ptr %i.h, align 8, !tbaa !108, !noalias !1530
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !218  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !219
  %.not.i.i12 = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i12, label %bb.d, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.c
  store ptr %i.i, ptr %i.u, align 8, !tbaa !108
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.l, ptr %i.x, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.y, ptr %i.t, align 8, !tbaa !218
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit unwind label %bb.v

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.d
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !70  ; 8 uses
  %.not.i.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i.i13, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.z, align 8, !tbaa !140
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !141
  %i.ae = load ptr, ptr %.pre, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27, !inline_history !15
  %i.ah = load ptr, ptr %.pre, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27, !inline_history !15
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.h ], [ %i.am, %bb.i ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.j, label %bb.k, !prof !91

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27
  br label %bb.k
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_10TiebreakerEEEEEvRKT_m:bb.a
  br i1 %i.am, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %i.x, align 8, !tbaa !129, !alias.scope !1701
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #25
  br label %.body

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !176
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %2 ; 9 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !128 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 4 uses
  %i.av = icmp eq ptr %i.at, %i.au
  %i.aw = load ptr, ptr %5, align 8, !tbaa !128   ; 6 uses
  %i.ax = icmp eq ptr %i.aw, %i.x                 ; 2 uses
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ax, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ax, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ay = load i64, ptr %i.y, align 8, !tbaa !130 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %.not21.i = icmp eq ptr %5, %i.as
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.j, !prof !91

bb.j:                                             ; preds = %bb.i
  switch i64 %i.ay, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !129
  store i8 %i.ba, ptr %i.at, align 1, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.aw, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !130 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !130
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !128
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !129
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !128
  %i.bg = load i64, ptr %i.y, align 8, !tbaa !130
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !130
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !129
  store i64 %i.bh, ptr %i.au, align 8, !tbaa !129
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bi = load i64, ptr %i.au, align 8, !tbaa !129
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !128
  %i.bj = load i64, ptr %i.y, align 8, !tbaa !130
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !130
  %i.bl = load i64, ptr %i.x, align 8, !tbaa !129
  store i64 %i.bl, ptr %i.au, align 8, !tbaa !129
  %.not.i12 = icmp eq ptr %i.at, null
  br i1 %.not.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.at, ptr %5, align 8, !tbaa !128
  store i64 %i.bi, ptr %i.x, align 8, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.x, ptr %5, align 8, !tbaa !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.bm = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.at, %bb.m ], [ %i.x, %bb.n ], [ %i.aw, %bb.i ]
  store i64 0, ptr %i.y, align 8, !tbaa !130
  store i8 0, ptr %i.bm, align 1, !tbaa !129
  %i.bn = load ptr, ptr %5, align 8, !tbaa !128   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.x
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bp = load i64, ptr %i.x, align 8, !tbaa !129
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.br = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.br, ptr %3, align 8, !tbaa !64
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bt = getelementptr i8, ptr %i.br, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %3, i64 %i.bu
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !64
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bw, ptr %i.b, align 8, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bx, align 8, !tbaa !64
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !128 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !129
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bx, align 8, !tbaa !64
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #27
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cf, ptr %3, align 8, !tbaa !64
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %3, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !64
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !215
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cl) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.o:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.e
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %4, align 8, !tbaa !128   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.q
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.p
  %i.cq = load i64, ptr %i.q, align 8, !tbaa !129
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.q

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.q

bb.q:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.o
  %.pn8 = phi { ptr, i32 } [ %i.ak, %.body ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.cm, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal8CopyImplINS0_11RankOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !420
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !421, !nonnull !113, !align !210
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !413
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !90   ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.l, 9223372036854775776
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i, !prof !91

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !81
  %.pre10 = load ptr, ptr %i.g, align 8, !tbaa !81
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.o = phi ptr [ %i.h, %bb.a ], [ %.pre10, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ]
  %i.p = phi ptr [ %i.i, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ]
  %i.q = phi ptr [ null, %bb.a ], [ %i.n, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute7SortKeyESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.p, ptr %i.o, ptr noundef %i.q)
          to label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.l) #25
  br label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit.i

_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.s

_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.u = load i64, ptr %i.d, align 8, !tbaa !413
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.u ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !90   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83
  store ptr %i.q, ptr %i.v, align 8, !tbaa !90
  store ptr %i.r, ptr %i.x, align 8, !tbaa !89
  store ptr %i.t, ptr %i.z, align 8, !tbaa !83
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i ], [ %i.w, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #26, !inline_history !0
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.y
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.w to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ag) #25
  br label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11RankOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.227", align 8 ; 14 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %7 = alloca %"class.std::shared_ptr.34", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.d = load ptr, ptr %0, align 8, !tbaa !429, !nonnull !113, !align !210
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !413
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  call fastcc void @_ZN5arrow7compute8internalL15GenericToScalarINS0_7SortKeyEEENS_6ResultISt10shared_ptrINS_6ScalarEEEERKSt6vectorIT_SaISA_EE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = load ptr, ptr %3, align 8, !tbaa !116
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !196
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !197
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.j, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK5arrow6Status11WithMessageIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(27) @.str.74, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(18) @.str.75, ptr noundef nonnull align 1 dereferenceable(12) @_ZN5arrow7compute11RankOptions9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(3) @.str.76, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f, !prof !117

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !126, !range !112, !noundef !113
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.g, %bb.f, %bb.e
  %i.p = load ptr, ptr %4, align 8, !tbaa !116
  store ptr %i.p, ptr %i.a, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.r

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ad

bb.i:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %.sroa.0.0.copyload.i7 = load i64, ptr %1, align 8, !tbaa !196
  %.sroa.2.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i9 = load ptr, ptr %.sroa.2.0..sroa_idx.i8, align 8, !tbaa !197
  store i64 %.sroa.0.0.copyload.i7, ptr %6, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.2.0.copyload.i9, ptr %i.t, align 8
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.j unwind label %bb.ab      ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !424  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108, !noalias !1704 ; 2 uses
  store ptr %i.y, ptr %7, align 8, !tbaa !108, !alias.scope !1704
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70, !noalias !1704 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !70, !noalias !1704
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !70, !alias.scope !1704
  store ptr null, ptr %i.x, align 8, !tbaa !108, !noalias !1704
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !218 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !219
  %.not.i.i12 = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i.i12, label %bb.k, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.j
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !218
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ac

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.k
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !70  ; 8 uses
  %.not.i.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal13StringifyImplINS0_19RankQuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m:bb.a
  br i1 %i.am, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %i.x, align 8, !tbaa !129, !alias.scope !1784
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #25
  br label %.body

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !176
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %2 ; 9 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !128 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 4 uses
  %i.av = icmp eq ptr %i.at, %i.au
  %i.aw = load ptr, ptr %5, align 8, !tbaa !128   ; 6 uses
  %i.ax = icmp eq ptr %i.aw, %i.x                 ; 2 uses
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ax, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ax, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ay = load i64, ptr %i.y, align 8, !tbaa !130 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %.not21.i = icmp eq ptr %5, %i.as
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.j, !prof !91

bb.j:                                             ; preds = %bb.i
  switch i64 %i.ay, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !129
  store i8 %i.ba, ptr %i.at, align 1, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.aw, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !130 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !130
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !128
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !129
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !128
  %i.bg = load i64, ptr %i.y, align 8, !tbaa !130
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !130
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !129
  store i64 %i.bh, ptr %i.au, align 8, !tbaa !129
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bi = load i64, ptr %i.au, align 8, !tbaa !129
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !128
  %i.bj = load i64, ptr %i.y, align 8, !tbaa !130
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !130
  %i.bl = load i64, ptr %i.x, align 8, !tbaa !129
  store i64 %i.bl, ptr %i.au, align 8, !tbaa !129
  %.not.i12 = icmp eq ptr %i.at, null
  br i1 %.not.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.at, ptr %5, align 8, !tbaa !128
  store i64 %i.bi, ptr %i.x, align 8, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.x, ptr %5, align 8, !tbaa !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.bm = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.at, %bb.m ], [ %i.x, %bb.n ], [ %i.aw, %bb.i ]
  store i64 0, ptr %i.y, align 8, !tbaa !130
  store i8 0, ptr %i.bm, align 1, !tbaa !129
  %i.bn = load ptr, ptr %5, align 8, !tbaa !128   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.x
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bp = load i64, ptr %i.x, align 8, !tbaa !129
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.br = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.br, ptr %3, align 8, !tbaa !64
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bt = getelementptr i8, ptr %i.br, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %3, i64 %i.bu
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !64
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bw, ptr %i.b, align 8, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bx, align 8, !tbaa !64
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !128 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !129
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bx, align 8, !tbaa !64
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #27
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cf, ptr %3, align 8, !tbaa !64
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %3, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !64
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !215
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cl) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.o:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.e
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %4, align 8, !tbaa !128   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.q
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.p
  %i.cq = load i64, ptr %i.q, align 8, !tbaa !129
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.q

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.q

bb.q:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.o
  %.pn8 = phi { ptr, i32 } [ %i.ak, %.body ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.cm, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal8CopyImplINS0_19RankQuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !438
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !439, !nonnull !113, !align !210
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !434
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !90   ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.l, 9223372036854775776
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i, !prof !91

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !81
  %.pre10 = load ptr, ptr %i.g, align 8, !tbaa !81
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.o = phi ptr [ %i.h, %bb.a ], [ %.pre10, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ]
  %i.p = phi ptr [ %i.i, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ]
  %i.q = phi ptr [ null, %bb.a ], [ %i.n, %_ZNSt15__new_allocatorIN5arrow7compute7SortKeyEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute7SortKeyESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.p, ptr %i.o, ptr noundef %i.q)
          to label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.l) #25
  br label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit.i

_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.s

_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.u = load i64, ptr %i.d, align 8, !tbaa !434
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.u ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !90   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83
  store ptr %i.q, ptr %i.v, align 8, !tbaa !90
  store ptr %i.r, ptr %i.x, align 8, !tbaa !89
  store ptr %i.t, ptr %i.z, align 8, !tbaa !83
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i ], [ %i.w, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #26, !inline_history !0
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.y
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i.i, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EEC2ERKS4_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.w to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ag) #25
  br label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19RankQuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.227", align 8 ; 14 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %7 = alloca %"class.std::shared_ptr.34", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.d = load ptr, ptr %0, align 8, !tbaa !447, !nonnull !113, !align !210
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !434
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  call fastcc void @_ZN5arrow7compute8internalL15GenericToScalarINS0_7SortKeyEEENS_6ResultISt10shared_ptrINS_6ScalarEEEERKSt6vectorIT_SaISA_EE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = load ptr, ptr %3, align 8, !tbaa !116
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !196
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !197
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.j, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK5arrow6Status11WithMessageIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(27) @.str.74, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(18) @.str.75, ptr noundef nonnull align 1 dereferenceable(20) @_ZN5arrow7compute19RankQuantileOptions9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(3) @.str.76, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f, !prof !117

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !126, !range !112, !noundef !113
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.g, %bb.f, %bb.e
  %i.p = load ptr, ptr %4, align 8, !tbaa !116
  store ptr %i.p, ptr %i.a, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.r

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ad

bb.i:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %.sroa.0.0.copyload.i7 = load i64, ptr %1, align 8, !tbaa !196
  %.sroa.2.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i9 = load ptr, ptr %.sroa.2.0..sroa_idx.i8, align 8, !tbaa !197
  store i64 %.sroa.0.0.copyload.i7, ptr %6, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.2.0.copyload.i9, ptr %i.t, align 8
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.j unwind label %bb.ab      ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !442  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108, !noalias !1787 ; 2 uses
  store ptr %i.y, ptr %7, align 8, !tbaa !108, !alias.scope !1787
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70, !noalias !1787 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !70, !noalias !1787
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !70, !alias.scope !1787
  store ptr null, ptr %i.x, align 8, !tbaa !108, !noalias !1787
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !218 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !219
  %.not.i.i12 = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i.i12, label %bb.k, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.j
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !218
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ac

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.k
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !70  ; 8 uses
  %.not.i.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

end_hunk_6
