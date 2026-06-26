inline.NumInlined: 6448
inline.NumDeleted: 2427
begin_hunk_0_@_ZN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex10EnsureFlatEv:bb.a
  br label %_ZN6google8protobufL13MergeIntoFlatINS0_25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS3_16ExtensionCompareEEEvPN4absl12lts_202505129btree_setIT_T0_SaIS9_EEEPSt6vectorIS9_SB_E.exit

bb.n:                                             ; preds = %bb.m, %.loopexit.i21
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %common.resume

_ZN6google8protobufL13MergeIntoFlatINS0_25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS3_16ExtensionCompareEEEvPN4absl12lts_202505129btree_setIT_T0_SaIS9_EEEPSt6vectorIS9_SB_E.exit: ; preds = %_ZN6google8protobufL13MergeIntoFlatINS0_25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS3_13SymbolCompareEEEvPN4absl12lts_202505129btree_setIT_T0_SaIS9_EEEPSt6vectorIS9_SB_E.exit, %_ZNSt6vectorIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryESaIS4_EED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, i32 } @_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex18FindSymbolOnlyFlatESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i64 %1, ptr %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !142
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !245
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !245
  %i.g = call ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryESt6vectorIS6_SaIS6_EEEESt17basic_string_viewIcSt11char_traitsIcEENS0_5__ops14_Val_comp_iterINS5_13SymbolCompareEEEET_SL_SL_RKT0_T1_(ptr %i.d, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %.sroa.0.0.copyload.i) ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !245
  %.not.i = icmp eq ptr %i.g, %i.h
  %spec.select.idx.i = select i1 %.not.i, i64 0, i64 -40
  %spec.select.i = getelementptr inbounds i8, ptr %i.g, i64 %spec.select.idx.i ; 4 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !245
  %.not = icmp eq ptr %spec.select.i, %i.i
  br i1 %.not, label %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %3, align 8, !tbaa !86 ; 4 uses
  %.sroa.22.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !198 ; 3 uses
  %i.j = load i32, ptr %spec.select.i, align 8, !tbaa !207
  %i.k = sext i32 %i.j to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !158
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.k ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 6 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %.sroa.01.0.copyload, %i.q
  br i1 %i.s, label %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.22.0.copyload, ptr %i.o, i64 %i.q)
  %i.t = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.t, label %bb.d, label %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.d:                                             ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 %i.q ; 3 uses
  %i.v = icmp eq i64 %.sroa.01.0.copyload, %i.q
  br i1 %i.v, label %.critedge.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i7.i.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i7.i.i: ; preds = %bb.d
  %lhsc.i.i = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %lhsc.i.i, 46
  br i1 %i.w, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i10.i.i, label %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i10.i.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i7.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.y = xor i64 %i.q, -1
  %i.z = add i64 %.sroa.01.0.copyload, %i.y
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i10.i.i, %bb.d, %bb.b
  %.sroa.7.0.i = phi ptr [ %.sroa.22.0.copyload, %bb.b ], [ %i.u, %bb.d ], [ %i.x, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i10.i.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.01.0.copyload, %bb.b ], [ 0, %bb.d ], [ %i.z, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i10.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !25 ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.af = icmp ult i64 %.sroa.0.0.i, %i.ad
  br i1 %i.af, label %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i12.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i12.i: ; preds = %bb.e
  %bcmp.i.i.i.i13.i = call i32 @bcmp(ptr %.sroa.7.0.i, ptr %i.ab, i64 %i.ad)
  %i.ag = icmp eq i32 %bcmp.i.i.i.i13.i, 0
  br i1 %i.ag, label %bb.f, label %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.f:                                             ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i12.i, %.critedge.i
  %i.ah = icmp eq i64 %.sroa.0.0.i, %i.ad
  br i1 %i.ah, label %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread9, label %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 %i.ad
  %lhsc.i16.i = load i8, ptr %i.ai, align 1
  %i.aj = icmp eq i8 %lhsc.i16.i, 46
  br i1 %i.aj, label %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread9, label %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread9: ; preds = %bb.f, %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !3
  br label %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i7.i.i, %bb.c, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i, %bb.e, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i12.i, %bb.a, %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread9
  %.sroa.07.0 = phi ptr [ %i.al, %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread9 ], [ null, %bb.a ], [ null, %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit ], [ null, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i12.i ], [ null, %bb.e ], [ null, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i ], [ null, %bb.c ], [ null, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i7.i.i ]
  %.sroa.3.0 = phi i32 [ %i.am, %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread9 ], [ 0, %bb.a ], [ 0, %_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntry13IsSubSymbolOfERKS2_St17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 0, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i12.i ], [ 0, %bb.e ], [ 0, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i ], [ 0, %bb.c ], [ 0, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i7.i.i ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex16FindAllFileNamesEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !260
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !269
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !271
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 40
  %i.n = add i64 %i.m, %i.e                       ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 5                   ; 3 uses
  %i.v = icmp ugt i64 %i.n, %i.u
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = sub nuw i64 %i.n, %i.u
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.w)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.x = icmp ult i64 %i.n, %i.u
  br i1 %i.x, label %bb.d, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.n ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, %i.y
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.y, %bb.d ] ; 3 uses
  %i.z = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.p
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.y, ptr %i.o, align 8, !tbaa !32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !276
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !277 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !277 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29  ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = icmp ne ptr %i.ag, %i.ai
  %i.an = icmp ne i8 %i.ak, 0
  %.not3.i72 = select i1 %i.am, i1 true, i1 %i.an
  br i1 %.not3.i72, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS8_11FileCompareESaIS9_ELi256ELb0EEEEERKS9_PSF_EppEv.exit
  %4 = and i64 %indvars.iv.next, 4294967295
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %.0.lcssa = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ], [ %4, %._crit_edge.loopexit ]
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !168 ; 2 uses
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !168 ; 2 uses
  %.not76 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not76, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  br label %bb.s

bb.e:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS8_11FileCompareESaIS9_ELi256ELb0EEEEERKS9_PSF_EppEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS8_11FileCompareESaIS9_ELi256ELb0EEEEERKS9_PSF_EppEv.exit ] ; 2 uses
  %.sroa.8.074 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS8_11FileCompareESaIS9_ELi256ELb0EEEEERKS9_PSF_EppEv.exit ] ; 3 uses
  %.sroa.063.073 = phi ptr [ %i.ag, %.lr.ph ], [ %.sroa.063.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS8_11FileCompareESaIS9_ELi256ELb0EEEEERKS9_PSF_EppEv.exit ] ; 7 uses
  %i.au = and i32 %.sroa.8.074, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.063.073, i64 16
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !25 ; 5 uses
  store ptr %i.ao, ptr %2, align 8, !tbaa !85
  %i.bc = icmp eq ptr %i.az, null
  %i.bd = icmp ne i64 %i.bb, 0
  %or.cond.i.i.i = and i1 %i.bc, %i.bd
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.f

.noexc:                                           ; preds = %bb.e
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #32
  unreachable

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.bb, ptr %i.b, align 8, !tbaa !86
  %i.be = icmp ugt i64 %i.bb, 15
  br i1 %i.be, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.bf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bf, ptr %2, align 8, !tbaa !21
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !86
  store i64 %i.bg, ptr %i.ao, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.f
  %i.bh = phi ptr [ %i.bf, %.noexc.i.i.i ], [ %i.ao, %bb.f ] ; 2 uses
  switch i64 %i.bb, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = load i8, ptr %i.az, align 1, !tbaa !29
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !29
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.az, i64 %i.bb, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !86  ; 2 uses
  store i64 %i.bj, ptr %i.ap, align 8, !tbaa !25
  %i.bk = load ptr, ptr %2, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i8 0, ptr %i.bl, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.bm = load ptr, ptr %1, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %indvars.iv ; 9 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !21 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 4 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  %i.br = load ptr, ptr %2, align 8, !tbaa !21    ; 6 uses
  %i.bs = icmp eq ptr %i.br, %i.ao                ; 2 uses
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.i
  br i1 %i.bs, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.i
  br i1 %i.bs, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bt = load i64, ptr %i.ap, align 8, !tbaa !25 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %.not21.i = icmp eq ptr %2, %i.bn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.k, !prof !157

bb.k:                                             ; preds = %bb.j
  switch i64 %i.bt, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !29
  store i8 %i.bv, ptr %i.bo, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.br, i64 %i.bt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bw = load i64, ptr %i.ap, align 8, !tbaa !25 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !25
  %i.by = load ptr, ptr %i.bn, align 8, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 0, ptr %i.bz, align 1, !tbaa !29
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !21
  %i.cb = load i64, ptr %i.ap, align 8, !tbaa !25
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !25
  %i.cc = load i64, ptr %i.ao, align 8, !tbaa !29
  store i64 %i.cc, ptr %i.bp, align 8, !tbaa !29
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cd = load i64, ptr %i.bp, align 8, !tbaa !29
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !21
  %i.ce = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !25
  %i.cg = load i64, ptr %i.ao, align 8, !tbaa !29
  store i64 %i.cg, ptr %i.bp, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bo, ptr %2, align 8, !tbaa !21
  store i64 %i.cd, ptr %i.ao, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ao, ptr %2, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.ch = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bo, %bb.n ], [ %i.ao, %bb.o ], [ %i.br, %bb.j ]
  store i64 0, ptr %i.ap, align 8, !tbaa !25
  store i8 0, ptr %i.ch, align 1, !tbaa !29
  %i.ci = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ao
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ck = load i64, ptr %i.ao, align 8, !tbaa !29
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.063.073, i64 11
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !29
  %.not.i.i28 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i28, label %.thread.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = add nsw i32 %.sroa.8.074, 1             ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.063.073, i64 10
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !29
  %i.cr = zext i8 %i.cq to i32
  %i.cs = icmp eq i32 %i.co, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS8_11FileCompareESaIS9_ELi256ELb0EEEEERKS9_PSF_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.p, %bb.q
  %.01521.i.i.i = phi ptr [ %i.ct, %bb.q ], [ %.sroa.063.073, %bb.p ] ; 2 uses
  %i.ct = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !277 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 11
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !29
  %.not17.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not17.i.i.i, label %bb.q, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS8_11FileCompareESaIS9_ELi256ELb0EEEEERKS9_PSF_EppEv.exit

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !29  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 10
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !29
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !306

.thread.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.063.073, i64 256
  %i.dc = add i32 %.sroa.8.074, 1
  %i.dd = and i32 %i.dc, 255
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.de
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.df, %.thread.i.i ], [ %i.di, %bb.r ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !277 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !29
  %.not.i.i.i.i29 = icmp eq i8 %i.dh, 0
  %i.di = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i29, label %bb.r, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS8_11FileCompareESaIS9_ELi256ELb0EEEEERKS9_PSF_EppEv.exit, !llvm.loop !307

.critedge.loopexit23.i.i.i:                       ; preds = %bb.q
  %i.dj = zext i8 %i.cx to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS8_11FileCompareESaIS9_ELi256ELb0EEEEERKS9_PSF_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS8_11FileCompareESaIS9_ELi256ELb0EEEEERKS9_PSF_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.r, %.critedge.loopexit23.i.i.i, %bb.p
  %.sroa.063.1 = phi ptr [ %.116.i.i.i, %bb.r ], [ %.sroa.063.073, %bb.p ], [ %i.ct, %.critedge.loopexit23.i.i.i ], [ %.sroa.063.073, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.8.1 = phi i32 [ 0, %bb.r ], [ %i.co, %bb.p ], [ %i.dj, %.critedge.loopexit23.i.i.i ], [ %i.co, %.lr.ph.i.i.i ] ; 2 uses
  %i.dk = icmp ne ptr %.sroa.063.1, %i.ai
  %i.dl = icmp ne i32 %.sroa.8.1, %i.al
  %.not3.i = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %.not3.i, label %bb.e, label %._crit_edge.loopexit

._crit_edge81:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %._crit_edge
  ret void

bb.s:                                             ; preds = %.lr.ph80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %indvars.iv86 = phi i64 [ %.0.lcssa, %.lr.ph80 ], [ %indvars.iv.next87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ] ; 2 uses
  %.sroa.055.077 = phi ptr [ %i.aq, %.lr.ph80 ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.055.077, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !21 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.055.077, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !25 ; 5 uses
  store ptr %i.as, ptr %3, align 8, !tbaa !85
  %i.dq = icmp eq ptr %i.dn, null
  %i.dr = icmp ne i64 %i.dp, 0
  %or.cond.i.i.i35 = and i1 %i.dq, %i.dr
  br i1 %or.cond.i.i.i35, label %.noexc38, label %bb.t

.noexc38:                                         ; preds = %bb.s
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #32
  unreachable

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.dp, ptr %i.a, align 8, !tbaa !86
  %i.ds = icmp ugt i64 %i.dp, 15
  br i1 %i.ds, label %.noexc.i.i.i37, label %._crit_edge.i.i.i.i36

.noexc.i.i.i37:                                   ; preds = %bb.t
  %i.dt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dt, ptr %3, align 8, !tbaa !21
  %i.du = load i64, ptr %i.a, align 8, !tbaa !86
  store i64 %i.du, ptr %i.as, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i36

._crit_edge.i.i.i.i36:                            ; preds = %.noexc.i.i.i37, %bb.t
  %i.dv = phi ptr [ %i.dt, %.noexc.i.i.i37 ], [ %i.as, %bb.t ] ; 2 uses
  switch i64 %i.dp, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i36
  %i.dw = load i8, ptr %i.dn, align 1, !tbaa !29
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !29
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i.i36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 1 %i.dn, i64 %i.dp, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i36
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  store i64 %i.dx, ptr %i.at, align 8, !tbaa !25
  %i.dy = load ptr, ptr %3, align 8, !tbaa !21
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dx
  store i8 0, ptr %i.dz, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ea = load ptr, ptr %1, align 8, !tbaa !30
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %i.ea, i64 %indvars.iv86 ; 9 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !21 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 4 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  %i.ef = load ptr, ptr %3, align 8, !tbaa !21    ; 6 uses
  %i.eg = icmp eq ptr %i.ef, %i.as                ; 2 uses
  br i1 %i.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i47: ; preds = %bb.w
  br i1 %i.eg, label %bb.x, label %.thread.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i41: ; preds = %bb.w
  br i1 %i.eg, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i42

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i47
  %i.eh = load i64, ptr %i.at, align 8, !tbaa !25 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  %.not21.i44 = icmp eq ptr %3, %i.eb
  br i1 %.not21.i44, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49, label %bb.y, !prof !157

bb.y:                                             ; preds = %bb.x
  switch i64 %i.eh, label %bb.aa [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i45
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !29
  store i8 %i.ej, ptr %i.ec, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i45

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr align 1 %i.ef, i64 %i.eh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i45: ; preds = %bb.aa, %bb.z, %bb.y
  %i.ek = load i64, ptr %i.at, align 8, !tbaa !25 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !25
  %i.em = load ptr, ptr %i.eb, align 8, !tbaa !21
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek
  store i8 0, ptr %i.en, align 1, !tbaa !29
  %.pre.i46 = load ptr, ptr %3, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49

.thread.i48:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i47
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.ef, ptr %i.eb, align 8, !tbaa !21
  %i.ep = load i64, ptr %i.at, align 8, !tbaa !25
  store i64 %i.ep, ptr %i.eo, align 8, !tbaa !25
  %i.eq = load i64, ptr %i.as, align 8, !tbaa !29
  store i64 %i.eq, ptr %i.ed, align 8, !tbaa !29
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i42: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i41
  %i.er = load i64, ptr %i.ed, align 8, !tbaa !29
  store ptr %i.ef, ptr %i.eb, align 8, !tbaa !21
  %i.es = load i64, ptr %i.at, align 8, !tbaa !25
  %i.et = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %i.es, ptr %i.et, align 8, !tbaa !25
  %i.eu = load i64, ptr %i.as, align 8, !tbaa !29
  store i64 %i.eu, ptr %i.ed, align 8, !tbaa !29
  %.not.i43 = icmp eq ptr %i.ec, null
  br i1 %.not.i43, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i42
  store ptr %i.ec, ptr %3, align 8, !tbaa !21
  store i64 %i.er, ptr %i.as, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i42, %.thread.i48
  store ptr %i.as, ptr %3, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49: ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i45, %bb.ab, %bb.ac
  %i.ev = phi ptr [ %.pre.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i45 ], [ %i.ec, %bb.ab ], [ %i.as, %bb.ac ], [ %i.ef, %bb.x ]
  store i64 0, ptr %i.at, align 8, !tbaa !25
  store i8 0, ptr %i.ev, align 1, !tbaa !29
  %i.ew = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.as
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49
  %i.ey = load i64, ptr %i.as, align 8, !tbaa !29
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.055.077, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.fa, %i.ar
  br i1 %.not, label %._crit_edge81, label %bb.s
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf25EncodedDescriptorDatabase16FindAllFileNamesEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  tail call void @_ZNK6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex16FindAllFileNamesEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(192) %i.b, ptr noundef %1)
  ret i1 true
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE(i64, ptr, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf25EncodedDescriptorDatabaseC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6google8protobuf25EncodedDescriptorDatabaseE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #31 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.b, align 8, !tbaa !276
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  store i64 %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex9FileEntryENS7_11FileCompareESaIS8_ELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.e, align 8, !tbaa !308
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.g, align 8, !tbaa !220
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %i.d, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex11SymbolEntryENS7_13SymbolCompareESaIS8_ELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.i, align 8, !tbaa !309
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.k, align 8, !tbaa !303
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf25EncodedDescriptorDatabase15DescriptorIndex14ExtensionEntryENS7_16ExtensionCompareESaIS8_ELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.m, align 8, !tbaa !310
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.o, align 8, !tbaa !142
end_hunk_0
