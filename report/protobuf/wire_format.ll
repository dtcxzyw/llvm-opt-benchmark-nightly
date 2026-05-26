inline.NumInlined: 2614
inline.NumDeleted: 870
begin_hunk_0_@"_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0EES8_S8_T_":bb.a
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %"_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0ZNS2_16ReadPackedVarintISH_EES8_S8_T_EUliE_EES8_S8_SJ_T0_.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !111  ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = sub nsw i32 %.02666.i, %.03067.i         ; 2 uses
  %i.v = icmp slt i32 %i.u, 17
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %sext39.i = shl i64 %i.t, 32
  %i.z = ashr exact i64 %sext39.i, 32
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z
  %i.ab = call fastcc noundef ptr @"_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0EES8_S8_S8_T_"(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, ptr noundef nonnull byval(%class.anon) align 8 %3) ; 2 uses
  %.not40.i = icmp eq ptr %i.ab, %i.y
  %i.ac = load ptr, ptr %i.g, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.a to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %.1.i = select i1 %.not40.i, ptr %i.ag, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %"_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0ZNS2_16ReadPackedVarintISH_EES8_S8_T_EUliE_EES8_S8_SJ_T0_.exit"

bb.f:                                             ; preds = %bb.d
  %i.ah = trunc i64 %i.t to i32
  %i.ai = add i32 %.03067.i, %i.ah
  %i.aj = sub i32 %.02666.i, %i.ai                ; 3 uses
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !112
  %i.al = icmp slt i32 %i.ak, 17
  br i1 %i.al, label %"_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0ZNS2_16ReadPackedVarintISH_EES8_S8_T_EUliE_EES8_S8_SJ_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %"_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0ZNS2_16ReadPackedVarintISH_EES8_S8_T_EUliE_EES8_S8_SJ_T0_.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %sext.i = shl i64 %i.t, 32
  %i.ao = ashr exact i64 %sext.i, 32
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao ; 3 uses
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !111 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  %.030.i = trunc i64 %i.at to i32                ; 2 uses
  %i.au = icmp sgt i32 %i.aj, %.030.i
  br i1 %i.au, label %bb.c, label %._crit_edge.i, !llvm.loop !132

._crit_edge.i:                                    ; preds = %bb.h, %bb.b
  %.045.lcssa.i = phi ptr [ %storemerge.i50.i, %bb.b ], [ %i.ap, %bb.h ] ; 2 uses
  %.026.lcssa.i = phi i32 [ %.0.i51.i, %bb.b ], [ %i.aj, %bb.h ]
  %i.av = sext i32 %.026.lcssa.i to i64
  %i.aw = getelementptr inbounds i8, ptr %.045.lcssa.i, i64 %i.av ; 2 uses
  %i.ax = tail call fastcc noundef ptr @"_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0EES8_S8_S8_T_"(ptr noundef %.045.lcssa.i, ptr noundef %i.aw, ptr noundef nonnull byval(%class.anon) align 8 %3) ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  %i.az = select i1 %i.ay, ptr %i.ax, ptr null
  br label %"_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0ZNS2_16ReadPackedVarintISH_EES8_S8_T_EUliE_EES8_S8_SJ_T0_.exit"

"_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0ZNS2_16ReadPackedVarintISH_EES8_S8_T_EUliE_EES8_S8_SJ_T0_.exit": ; preds = %bb.c, %bb.f, %bb.g, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i, %bb.e, %._crit_edge.i
  %.4.i = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i ], [ %i.az, %._crit_edge.i ], [ %.1.i, %bb.e ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret ptr %.4.i
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream8ReadCordEPKciPN4absl12lts_202505124CordE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.g, i32 512)
  %i.h = tail call noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream28IsRequestedLessThanOrEqualToEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %2, i32 noundef %.sroa.speculated)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %2 to i64                       ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_202505124CordaSESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.i, ptr %1) ; 0 uses
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadCordFallbackEPKciPN4absl12lts_202505124CordE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %2, ptr noundef %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.b, i8 noundef signext 0)
  %i.c = load ptr, ptr %3, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %i.b, i1 false)
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.b
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal10WireFormat18_InternalSerializeERKNS0_7MessageEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 16 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 3 uses
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.d = extractvalue { ptr, ptr } %i.c, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 51
  %i.h = load i8, ptr %i.g, align 1, !tbaa !21, !range !69, !noundef !70
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !133  ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit
  %.pre75 = phi i32 [ %i.k, %.lr.ph ], [ %.pre76, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.q = phi i32 [ %i.k, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.al, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 8 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !134
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.v, ptr %i.s, align 8, !tbaa !135
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.s, ptr %i.n, align 8
  store ptr %i.r, ptr %i.o, align 8
  store ptr %i.t, ptr %3, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %4 = icmp ult i64 %i.ab, %i.aa
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %5 = select i1 %4, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %5, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %5, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #31
          to label %.noexc32 unwind label %.loopexit39 ; 4 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.y ; 2 uses
  store ptr %i.v, ptr %i.af, align 8, !tbaa !135
  %i.ag = icmp sgt i64 %i.y, 0
  br i1 %i.ag, label %bb.g, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %i.t, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.g, %.noexc32
  %.not.i17.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #26
  %.pre.pre = load i32, ptr %i.j, align 8, !tbaa !133
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %.pre = phi i32 [ %.pre.pre, %bb.h ], [ %.pre75, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %5
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.d
  %.pre76 = phi i32 [ %.pre, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre75, %bb.d ]
  %i.ai = phi i32 [ %.pre, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.aj = phi ptr [ %i.ah, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %.pn57 = phi ptr [ %i.af, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.s, %bb.d ]
  %i.ak = phi ptr [ %i.ae, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pn57, i64 8 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = sext i32 %i.ai to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.c, label %..loopexit_crit_edge, !llvm.loop !136

.loopexit39:                                      ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %i.n, align 8
  store ptr %i.r, ptr %i.o, align 8
  store ptr %i.t, ptr %3, align 8
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.i:                                             ; preds = %bb.a
  invoke void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %._crit_edge72 unwind label %bb.b

._crit_edge72:                                    ; preds = %bb.i
  %.pre73 = load ptr, ptr %3, align 8, !tbaa !137
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre74 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !137
  br label %bb.j

..loopexit_crit_edge:                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit
  store ptr %i.al, ptr %i.n, align 8
  store ptr %i.aj, ptr %i.o, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  %i.ao = phi ptr [ %i.al, %..loopexit_crit_edge ], [ null, %.preheader ]
  %.lcssa = phi ptr [ %i.ak, %..loopexit_crit_edge ], [ null, %.preheader ] ; 2 uses
  store ptr %.lcssa, ptr %3, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge72, %.loopexit
  %i.ap = phi ptr [ %.pre74, %._crit_edge72 ], [ %i.ao, %.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %.pre73, %._crit_edge72 ], [ %.lcssa, %.loopexit ] ; 2 uses
  %.not52 = icmp eq ptr %i.aq, %i.ap
  br i1 %.not52, label %._crit_edge, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.j, %bb.k
  %.02754 = phi ptr [ %i.as, %bb.k ], [ %1, %bb.j ]
  %.sroa.035.053 = phi ptr [ %i.at, %bb.k ], [ %i.aq, %bb.j ] ; 2 uses
  %i.ar = load ptr, ptr %.sroa.035.053, align 8, !tbaa !135
  %i.as = invoke noundef ptr @_ZN6google8protobuf8internal10WireFormat22InternalSerializeFieldEPKNS0_15FieldDescriptorERKNS0_7MessageEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.02754, ptr noundef %2)
          to label %bb.k unwind label %bb.l       ; 2 uses

bb.k:                                             ; preds = %.lr.ph55
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.035.053, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.ap
  br i1 %.not, label %._crit_edge, label %.lr.ph55

bb.l:                                             ; preds = %.lr.ph55
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %.027.lcssa = phi ptr [ %1, %bb.j ], [ %i.as, %bb.k ] ; 2 uses
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !21, !range !69, !noundef !70
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.n unwind label %bb.b

bb.n:                                             ; preds = %bb.m
  %i.ba = invoke noundef ptr @_ZN6google8protobuf8internal10WireFormat46InternalSerializeUnknownMessageSetItemsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef %.027.lcssa, ptr noundef %2)
          to label %bb.q unwind label %bb.b

bb.o:                                             ; preds = %._crit_edge
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.p unwind label %bb.b

bb.p:                                             ; preds = %bb.o
  %i.bc = invoke noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef %.027.lcssa, ptr noundef %2)
          to label %bb.q unwind label %bb.b

bb.q:                                             ; preds = %bb.p, %bb.n
  %.0 = phi ptr [ %i.ba, %bb.n ], [ %i.bc, %bb.p ]
  %i.bd = load ptr, ptr %3, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !141
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #26
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret ptr %.0

thread-pre-split:                                 ; preds = %bb.b, %bb.l, %.loopexit.split-lp
  %.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.au, %bb.l ], [ %i.p, %bb.b ]
  %.pr = load ptr, ptr %3, align 8, !tbaa !139
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split, %.loopexit39
  %i.bj = phi ptr [ %.pr, %thread-pre-split ], [ %i.t, %.loopexit39 ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %.pn.ph, %thread-pre-split ], [ %lpad.loopexit, %.loopexit39 ]
  %.not.i.i.i33 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit34, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !141
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #26
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit34

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit34: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn
}

declare void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal10WireFormat22InternalSerializeFieldEPKNS0_15FieldDescriptorERKNS0_7MessageEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.56", align 8    ; 10 uses
  %5 = alloca %"class.google::protobuf::MapValueConstRef", align 8 ; 7 uses
  %6 = alloca %"class.google::protobuf::ConstMapIterator", align 8 ; 8 uses
  %7 = alloca %"class.google::protobuf::ConstMapIterator", align 8 ; 8 uses
  %8 = alloca %"class.std::vector.62", align 8    ; 6 uses
  %9 = alloca %"class.google::protobuf::RepeatedField.67", align 8 ; 10 uses
  %10 = alloca %"class.google::protobuf::RepeatedField.71", align 8 ; 10 uses
  %11 = alloca %"class.google::protobuf::RepeatedField.67", align 8 ; 10 uses
  %12 = alloca %"class.google::protobuf::RepeatedField.71", align 8 ; 10 uses
  %13 = alloca %"class.google::protobuf::RepeatedField.73", align 8 ; 10 uses
  %14 = alloca %"class.google::protobuf::RepeatedField.75", align 8 ; 10 uses
  %15 = alloca %"class.google::protobuf::RepeatedField.67", align 8 ; 10 uses
  %16 = alloca %"class.google::protobuf::RepeatedField.73", align 8 ; 10 uses
  %17 = alloca %"class.google::protobuf::RepeatedField.75", align 8 ; 10 uses
  %18 = alloca %"class.google::protobuf::RepeatedField.67", align 8 ; 10 uses
  %19 = alloca %"class.google::protobuf::RepeatedField.71", align 8 ; 10 uses
  %20 = alloca %"class.google::protobuf::RepeatedField.77", align 8 ; 10 uses
  %21 = alloca %"class.google::protobuf::RepeatedField.79", align 8 ; 10 uses
  %22 = alloca %"class.google::protobuf::RepeatedField.81", align 8 ; 10 uses
  %23 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.absl::lts_20250512::Cord", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 60 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 20 uses
  %i.d = load i8, ptr %i.c, align 1               ; 3 uses
  %i.e = and i8 %i.d, 8
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i8, ptr %i.j, align 8, !tbaa !21, !range !69, !noundef !70
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 2, !tbaa !79
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !143
  %i.r = icmp ne i32 %i.q, 10
  %i.s = and i8 %i.d, 32
  %i.t = icmp ne i8 %i.s, 0
  %or.cond = or i1 %i.t, %i.r
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat31InternalSerializeMessageSetItemEPKNS0_15FieldDescriptorERKNS0_7MessageEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3)
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit981
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf6MapKey14GetStringValueEv:bb.a
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 13, ptr nonnull @.str.12)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit5 unwind label %bb.f

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit5: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  %i.e = invoke noundef i32 @_ZNK6google8protobuf6MapKey4typeEv(ptr noundef nonnull align 8 dereferenceable(20) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit5
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZN6google8protobuf15FieldDescriptor14kCppTypeToNameE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !178  ; 2 uses
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #25
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 %i.i, ptr nonnull %i.h)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #29
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.c, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit, %bb.b, %bb.d, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit5, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #29
  unreachable

bb.g:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %0, align 8, !tbaa !22
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !178
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.03.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.24.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN6google8protobuf8internal10WireFormat31InternalSerializeMessageSetItemEPKNS0_15FieldDescriptorERKNS0_7MessageEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 1
  %i.c = load ptr, ptr %3, align 8, !tbaa !32
  %.not.i = icmp ult ptr %2, %i.c
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %2, %bb.a ]  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 11, ptr %.0.i, align 1, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !131  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  store i8 16, ptr %i.e, align 1, !tbaa !21
  %i.i = icmp ugt i32 %i.g, 127
  br i1 %i.i, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !38

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.h, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i32 [ %i.l, %.lr.ph.i ], [ %i.g, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.j = trunc i32 %.07.i1.i to i8
  %i.k = or i8 %i.j, -128
  store i8 %i.k, ptr %.0.i2.i, align 1, !tbaa !21
  %i.l = lshr i32 %.07.i1.i, 7                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.n = icmp ugt i32 %.07.i1.i, 16383
  br i1 %i.n, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !39, !llvm.loop !40

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i32 [ %i.g, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.l, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %i.h, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %i.o = trunc nuw nsw i32 %.07.i.lcssa.i to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1
  store i8 %i.o, ptr %.0.i.lcssa.i, align 1, !tbaa !21
  %i.q = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  %i.r = tail call noundef i32 @_ZNK6google8protobuf11MessageLite13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  %i.s = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i32 noundef %i.r, ptr noundef nonnull %i.p, ptr noundef nonnull %3) ; 3 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !32
  %.not.i17 = icmp ult ptr %i.s, %i.t
  br i1 %.not.i17, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit19, label %bb.c, !prof !20

bb.c:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %i.u = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef %i.s)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit19

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit19: ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, %bb.c
  %.0.i18 = phi ptr [ %i.u, %bb.c ], [ %i.s, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i18, i64 1
  store i8 12, ptr %.0.i18, align 1, !tbaa !21
  ret ptr %i.v
}

declare noundef ptr @_ZNK6google8protobuf10Reflection10GetMapDataERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK6google8protobuf8internal12MapFieldBase10IsMapValidEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12MapKeySorter7SortKeyERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.google::protobuf::ConstMapIterator", align 8 ; 7 uses
  %5 = alloca %"class.google::protobuf::ConstMapIterator", align 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNK6google8protobuf10Reflection13ConstMapBeginEPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.google::protobuf::ConstMapIterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull %1, ptr noundef %3)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE9push_backERKS2_.exit
  %i.d = phi ptr [ null, %.preheader ], [ %i.ag, %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE9push_backERKS2_.exit ] ; 10 uses
  %i.e = phi ptr [ null, %.preheader ], [ %i.ah, %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE9push_backERKS2_.exit ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK6google8protobuf10Reflection11ConstMapEndEPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.google::protobuf::ConstMapIterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull %1, ptr noundef %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZNK6google8protobuf15MapIteratorBaseILb0EEeqERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr %i.e, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS3_8internal12MapKeySorter16MapKeyComparatorEEvT_SD_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = shl nuw nsw i64 %i.k, 1
  %i.m = xor i64 %i.l, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_T1_(ptr %i.e, ptr %i.d, i64 noundef %i.m)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.f
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_(ptr %i.e, ptr %i.d)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS3_8internal12MapKeySorter16MapKeyComparatorEEvT_SD_T0_.exit unwind label %bb.n

.loopexit:                                        ; preds = %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE9push_backERKS2_.exit, %_ZNKSt6vectorIN6google8protobuf6MapKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.n = phi ptr [ %i.ah, %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE9push_backERKS2_.exit ], [ %i.e, %_ZNKSt6vectorIN6google8protobuf6MapKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %0, align 8
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.a, %bb.k
  %i.o = phi ptr [ null, %bb.a ], [ %i.e, %bb.k ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  store ptr %i.e, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.m

bb.h:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !150
  %.not.i = icmp eq ptr %i.d, %i.q
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !179
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %i.r, ptr %i.b, align 8, !tbaa !180
  br label %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE9push_backERKS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.k, label %_ZNKSt6vectorIN6google8protobuf6MapKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  store ptr %i.e, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #30
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6google8protobuf6MapKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.w = sdiv exact i64 %i.u, 24                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %6 = icmp ult i64 %i.x, %i.w
  %i.y = call i64 @llvm.umin.i64(i64 %i.x, i64 384307168202282325)
  %7 = select i1 %6, i64 384307168202282325, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %7, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = mul nuw nsw i64 %7, 24
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #31
          to label %.noexc15 unwind label %.loopexit ; 5 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf6MapKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !179
  %.not10.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.aa, %.noexc15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.e, %.noexc15 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !179, !alias.scope !181
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !185

_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc15
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %.noexc15 ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.u) #26
  br label %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !180
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %7
  store ptr %i.af, ptr %i.c, align 8, !tbaa !150
  br label %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.i
  %i.ag = phi ptr [ %i.ae, %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.r, %bb.i ]
  %i.ah = phi ptr [ %i.aa, %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.e, %bb.i ] ; 2 uses
  %i.ai = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6google8protobuf15MapIteratorBaseILb0EEppEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.b unwind label %.loopexit, !llvm.loop !186 ; 0 uses

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %i.aj = phi ptr [ %i.e, %bb.g ], [ %i.n, %.loopexit ], [ %i.o, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.p, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.o

bb.n:                                             ; preds = %.noexc, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %0, align 8, !tbaa !148
  br label %bb.o

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS3_8internal12MapKeySorter16MapKeyComparatorEEvT_SD_T0_.exit: ; preds = %bb.e, %.noexc
  ret void

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.al = phi ptr [ %i.aj, %bb.m ], [ %.pre, %bb.n ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.ak, %bb.n ]
  %.not.i.i.i16 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !150
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #26
  br label %_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf6MapKeyESaIS2_EED2Ev.exit: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn.pn
}

declare noundef zeroext i1 @_ZNK6google8protobuf10Reflection14LookupMapValueERKNS0_7MessageEPKNS0_15FieldDescriptorERKNS0_6MapKeyEPNS0_16MapValueConstRefE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN6google8protobuf8internalL25InternalSerializeMapEntryEPKNS0_15FieldDescriptorERKNS0_6MapKeyERKNS0_16MapValueConstRefEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134  ; 2 uses
  %i.d = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.g = tail call noundef i64 @_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.h = add i64 %i.g, 2
  %i.i = getelementptr i8, ptr %i.f, i64 90       ; 2 uses
  %.val = load i8, ptr %i.i, align 2, !tbaa !79
  %i.j = tail call fastcc noundef i64 @_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE(i8 %.val, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %i.k = add i64 %i.h, %i.j
  %i.l = load ptr, ptr %4, align 8, !tbaa !32
  %.not.i = icmp ult ptr %3, %i.l
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %3)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %3, %bb.a ]  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !131
  %i.p = shl i32 %i.o, 3                          ; 2 uses
  %i.q = or disjoint i32 %i.p, 2                  ; 2 uses
  %i.r = icmp ugt i32 %i.p, 127
  br i1 %i.r, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !38

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.0.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i32 [ %i.u, %.lr.ph.i ], [ %i.q, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.s = trunc i32 %.07.i1.i to i8
  %i.t = or i8 %i.s, -128
  store i8 %i.t, ptr %.0.i2.i, align 1, !tbaa !21
  %i.u = lshr i32 %.07.i1.i, 7                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.w = icmp ugt i32 %.07.i1.i, 16383
  br i1 %i.w, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !39, !llvm.loop !40

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i32 [ %i.q, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.u, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %.0.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.v, %.lr.ph.i ] ; 2 uses
  %i.x = trunc nuw nsw i32 %.07.i.lcssa.i to i8
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1 ; 2 uses
  store i8 %i.x, ptr %.0.i.lcssa.i, align 1, !tbaa !21
  %i.z = trunc i64 %i.k to i32                    ; 3 uses
  %i.aa = icmp ugt i32 %i.z, 127
  br i1 %i.aa, label %.lr.ph.i24, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit27, !prof !38

.lr.ph.i24:                                       ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, %.lr.ph.i24
  %.0.i2.i25 = phi ptr [ %i.ae, %.lr.ph.i24 ], [ %i.y, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 2 uses
  %.07.i1.i26 = phi i32 [ %i.ad, %.lr.ph.i24 ], [ %i.z, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 3 uses
  %i.ab = trunc i32 %.07.i1.i26 to i8
  %i.ac = or i8 %i.ab, -128
  store i8 %i.ac, ptr %.0.i2.i25, align 1, !tbaa !21
  %i.ad = lshr i32 %.07.i1.i26, 7                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i2.i25, i64 1 ; 2 uses
  %i.af = icmp ugt i32 %.07.i1.i26, 16383
  br i1 %i.af, label %.lr.ph.i24, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit27, !prof !39, !llvm.loop !40

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit27: ; preds = %.lr.ph.i24, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %.07.i.lcssa.i22 = phi i32 [ %i.z, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ], [ %i.ad, %.lr.ph.i24 ]
  %.0.i.lcssa.i23 = phi ptr [ %i.y, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ], [ %i.ae, %.lr.ph.i24 ] ; 2 uses
  %i.ag = trunc nuw nsw i32 %.07.i.lcssa.i22 to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i23, i64 1
  store i8 %i.ag, ptr %.0.i.lcssa.i23, align 1, !tbaa !21
  %i.ai = tail call noundef ptr @_ZN6google8protobuf8internal30SerializeMapKeyWithCachedSizesEPKNS0_15FieldDescriptorERKNS0_6MapKeyEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %i.ah, ptr noundef nonnull %4) ; 3 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !32
  %.not.i.i = icmp ult ptr %i.ai, %i.aj
  br i1 %.not.i.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i, label %bb.c, !prof !20

bb.c:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit27
  %i.ak = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %i.ai)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i: ; preds = %bb.c, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit27
  %.0.i44.i = phi ptr [ %i.ak, %bb.c ], [ %i.ai, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit27 ] ; 43 uses
  %i.al = load i8, ptr %i.i, align 2, !tbaa !79
  switch i8 %i.al, label %_ZN6google8protobuf8internalL35SerializeMapValueRefWithCachedSizesEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefEPhPNS0_2io19EpsCopyOutputStreamE.exit [
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 13, label %bb.j
    i8 15, label %bb.k
    i8 16, label %bb.l
    i8 17, label %bb.m
    i8 18, label %bb.n
    i8 14, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 9, label %bb.r
    i8 12, label %bb.r
    i8 11, label %bb.t
    i8 10, label %bb.u
  ]

bb.d:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i
  %i.am = tail call noundef i64 @_ZNK6google8protobuf16MapValueConstRef13GetInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(12) %2) ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i44.i, i64 1 ; 2 uses
  store i8 16, ptr %.0.i44.i, align 1, !tbaa !21
  %i.ao = icmp ugt i64 %i.am, 127
  br i1 %i.ao, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit.i, !prof !38

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.an, %bb.d ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.ar, %.lr.ph.i.i ], [ %i.am, %bb.d ] ; 3 uses
  %i.ap = trunc i64 %.07.i1.i.i to i8
  %i.aq = or i8 %i.ap, -128
  store i8 %i.aq, ptr %.0.i2.i.i, align 1, !tbaa !21
  %i.ar = lshr i64 %.07.i1.i.i, 7                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.at = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.at, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit.i, !prof !39, !llvm.loop !42

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.07.i.lcssa.i.i = phi i64 [ %i.am, %bb.d ], [ %i.ar, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.an, %bb.d ], [ %i.as, %.lr.ph.i.i ] ; 2 uses
  %i.au = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.au, ptr %.0.i.lcssa.i.i, align 1, !tbaa !21
  br label %_ZN6google8protobuf8internalL35SerializeMapValueRefWithCachedSizesEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefEPhPNS0_2io19EpsCopyOutputStreamE.exit

bb.e:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i
  %i.aw = tail call noundef i64 @_ZNK6google8protobuf16MapValueConstRef14GetUInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(12) %2) ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i44.i, i64 1 ; 2 uses
  store i8 16, ptr %.0.i44.i, align 1, !tbaa !21
  %i.ay = icmp ugt i64 %i.aw, 127
  br i1 %i.ay, label %.lr.ph.i49.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit52.i, !prof !38

.lr.ph.i49.i:                                     ; preds = %bb.e, %.lr.ph.i49.i
  %.0.i2.i50.i = phi ptr [ %i.bc, %.lr.ph.i49.i ], [ %i.ax, %bb.e ] ; 2 uses
  %.07.i1.i51.i = phi i64 [ %i.bb, %.lr.ph.i49.i ], [ %i.aw, %bb.e ] ; 3 uses
  %i.az = trunc i64 %.07.i1.i51.i to i8
  %i.ba = or i8 %i.az, -128
  store i8 %i.ba, ptr %.0.i2.i50.i, align 1, !tbaa !21
  %i.bb = lshr i64 %.07.i1.i51.i, 7               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i2.i50.i, i64 1 ; 2 uses
  %i.bd = icmp ugt i64 %.07.i1.i51.i, 16383
  br i1 %i.bd, label %.lr.ph.i49.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit52.i, !prof !39, !llvm.loop !42

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit52.i: ; preds = %.lr.ph.i49.i, %bb.e
  %.07.i.lcssa.i47.i = phi i64 [ %i.aw, %bb.e ], [ %i.bb, %.lr.ph.i49.i ]
  %.0.i.lcssa.i48.i = phi ptr [ %i.ax, %bb.e ], [ %i.bc, %.lr.ph.i49.i ] ; 2 uses
  %i.be = trunc nuw nsw i64 %.07.i.lcssa.i47.i to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i48.i, i64 1
  store i8 %i.be, ptr %.0.i.lcssa.i48.i, align 1, !tbaa !21
  br label %_ZN6google8protobuf8internalL35SerializeMapValueRefWithCachedSizesEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefEPhPNS0_2io19EpsCopyOutputStreamE.exit

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf16DynamicMapSorter4SortERKNS0_7MessageEiPKNS0_10ReflectionEPKNS0_15FieldDescriptorE:bb.a
  store ptr %i.g, ptr %i.c, align 8, !tbaa !160
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i, %bb.b
  %.promoted50 = phi ptr [ %i.e, %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 4 uses
  %.promoted = phi ptr [ %i.g, %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %i.h = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc21 unwind label %bb.j

.noexc21:                                         ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit
  %i.i = extractvalue { ptr, ptr } %i.h, 1        ; 3 uses
  %i.j = invoke noundef ptr @_ZNK6google8protobuf10Reflection17RepeatedFieldDataERKNS0_7MessageEPKNS0_15FieldDescriptorENS0_8internal19FieldDescriptorLite7CppTypeEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %4, i32 noundef 10, ptr noundef null)
          to label %.noexc22 unwind label %bb.j   ; 9 uses

.noexc22:                                         ; preds = %.noexc21
  %i.k = invoke noundef ptr @_ZNK6google8protobuf10Reflection21RepeatedFieldAccessorEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef %4)
          to label %.noexc23 unwind label %bb.j   ; 16 uses

.noexc23:                                         ; preds = %.noexc22
  %i.l = invoke noundef ptr @_ZNK6google8protobuf10Reflection17GetMessageFactoryEv(ptr noundef nonnull align 8 dereferenceable(96) %i.i)
          to label %.noexc24 unwind label %bb.j   ; 2 uses

.noexc24:                                         ; preds = %.noexc23
  %i.m = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %.noexc25 unwind label %bb.j

.noexc25:                                         ; preds = %.noexc24
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !187, !noalias !189
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !189
  %i.q = invoke noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.m)
          to label %_ZNK6google8protobuf10Reflection19GetRepeatedFieldRefINS0_7MessageEEENS0_16RepeatedFieldRefIT_vEERKS3_PKNS0_15FieldDescriptorE.exit unwind label %bb.j, !inline_history !192

_ZNK6google8protobuf10Reflection19GetRepeatedFieldRefINS0_7MessageEEENS0_16RepeatedFieldRefIT_vEERKS3_PKNS0_15FieldDescriptorE.exit: ; preds = %.noexc25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.r = invoke noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef null)
          to label %.noexc27 unwind label %bb.k   ; 5 uses

.noexc27:                                         ; preds = %_ZNK6google8protobuf10Reflection19GetRepeatedFieldRefINS0_7MessageEEENS0_16RepeatedFieldRefIT_vEERKS3_PKNS0_15FieldDescriptorE.exit
  store ptr %i.j, ptr %5, align 8, !tbaa !196, !alias.scope !193
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.k, ptr %i.s, align 8, !tbaa !205, !alias.scope !193
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !187, !noalias !193
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !noalias !193
  %i.w = invoke noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.j)
          to label %_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE5beginEv.exit unwind label %bb.k, !inline_history !206 ; 2 uses

_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE5beginEv.exit: ; preds = %.noexc27
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !207, !alias.scope !193
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.r, ptr %i.y, align 8, !tbaa !170, !alias.scope !193
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEppEv.exit, %_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE5beginEv.exit
  %i.ad = phi ptr [ %i.bz, %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEppEv.exit ], [ %.promoted50, %_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE5beginEv.exit ] ; 5 uses
  %i.ae = phi ptr [ %i.cf, %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEppEv.exit ], [ %i.w, %_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE5beginEv.exit ] ; 4 uses
  %i.af = phi ptr [ %i.ca, %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEppEv.exit ], [ %.promoted50, %_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE5beginEv.exit ] ; 15 uses
  %i.ag = phi ptr [ %i.cb, %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEppEv.exit ], [ %.promoted, %_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE5beginEv.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  store ptr %i.j, ptr %6, align 8, !tbaa !196, !alias.scope !208
  store ptr %i.k, ptr %i.z, align 8, !tbaa !205, !alias.scope !208
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !187, !noalias !208
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !208
  %i.ak = invoke noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.j)
          to label %bb.d unwind label %bb.l, !inline_history !211 ; 3 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !207, !alias.scope !208
  store ptr null, ptr %i.ab, align 8, !tbaa !170, !alias.scope !208
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !187
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.j, ptr noundef %i.ae, ptr noundef %i.ak)
          to label %bb.e unwind label %bb.m, !inline_history !212

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !187
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.j, ptr noundef %i.ak)
          to label %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.ag, ptr %i.c, align 8
  store ptr %i.af, ptr %0, align 8
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #29
  unreachable

_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.ao, label %bb.g, label %bb.o

bb.g:                                             ; preds = %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev.exit
  store ptr %i.ag, ptr %i.c, align 8
  store ptr %i.af, ptr %0, align 8
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !187
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.j, ptr noundef %i.ae)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not.i.i31 = icmp eq ptr %i.r, null
  br i1 %.not.i.i31, label %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev.exit33, label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i.i32

_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i.i32: ; preds = %bb.h
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #25, !inline_history !213
  br label %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev.exit33

bb.i:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #29
  unreachable

_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev.exit33: ; preds = %bb.h, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bc = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %bb.x unwind label %bb.y

bb.j:                                             ; preds = %.noexc25, %.noexc24, %.noexc23, %.noexc22, %.noexc21, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.k:                                             ; preds = %.noexc27, %_ZNK6google8protobuf10Reflection19GetRepeatedFieldRefINS0_7MessageEEENS0_16RepeatedFieldRefIT_vEERKS3_PKNS0_15FieldDescriptorE.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ag, ptr %i.c, align 8
  store ptr %i.af, ptr %0, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ag, ptr %i.c, align 8
  store ptr %i.af, ptr %0, align 8
  call void @_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %i.bf, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.v

bb.o:                                             ; preds = %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev.exit
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !187
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.j, ptr noundef %i.ae, ptr noundef %i.r)
          to label %_ZNK6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEdeEv.exit unwind label %.loopexit, !inline_history !214 ; 2 uses

_ZNK6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEdeEv.exit: ; preds = %bb.o
  %.not.i.i35 = icmp eq ptr %i.ad, %i.ag
  br i1 %.not.i.i35, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEdeEv.exit
  store ptr %i.bk, ptr %i.ad, align 8, !tbaa !170
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.ac, align 8, !tbaa !159
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEdeEv.exit
  %i.bm = ptrtoint ptr %i.ad to i64
  %i.bn = ptrtoint ptr %i.af to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 6 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.r, label %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  store ptr %i.ag, ptr %i.c, align 8
  store ptr %i.af, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #30
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %7 = icmp ult i64 %i.br, %i.bq
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %8 = select i1 %7, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %8, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bt = shl nuw nsw i64 %8, 3
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #31
          to label %.noexc37 unwind label %.loopexit ; 4 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bo ; 2 uses
  store ptr %i.bk, ptr %i.bv, align 8, !tbaa !170
  %i.bw = icmp sgt i64 %i.bo, 0
  br i1 %i.bw, label %bb.s, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.s:                                             ; preds = %.noexc37
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %i.af, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.s, %.noexc37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.bo) #26
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.bx, ptr %i.ac, align 8, !tbaa !159
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %8
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.p
  %i.bz = phi ptr [ %i.bx, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.bl, %bb.p ]
  %i.ca = phi ptr [ %i.bu, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.af, %bb.p ] ; 3 uses
  %i.cb = phi ptr [ %i.by, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.ag, %bb.p ] ; 2 uses
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !187
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef ptr %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.j, ptr noundef %i.ae)
          to label %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEppEv.exit unwind label %bb.u, !inline_history !215 ; 2 uses

_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEppEv.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit
  store ptr %i.cf, ptr %i.x, align 8, !tbaa !207
  br label %bb.c

.loopexit:                                        ; preds = %bb.o, %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ag, ptr %i.c, align 8
  store ptr %i.af, ptr %0, align 8
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cb, ptr %i.c, align 8
  store ptr %i.ca, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.u, %bb.n
  %i.ch = phi ptr [ %i.ca, %bb.u ], [ %i.af, %bb.n ], [ %i.af, %.loopexit ], [ %i.af, %.loopexit.split-lp ]
  %.pn15 = phi { ptr, i32 } [ %i.cg, %bb.u ], [ %.pn, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %i.ci = phi ptr [ %i.ch, %bb.v ], [ %.promoted50, %bb.k ]
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %bb.v ], [ %i.be, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.z

bb.x:                                             ; preds = %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev.exit33
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !134
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEEvT_SH_T0_(ptr %i.af, ptr %i.ad, ptr %i.ck)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEENS3_16DynamicMapSorter25MapEntryMessageComparatorEEvT_SE_T0_.exit unwind label %bb.y

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEENS3_16DynamicMapSorter25MapEntryMessageComparatorEEvT_SE_T0_.exit: ; preds = %bb.x
  ret void

bb.y:                                             ; preds = %bb.x, %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev.exit33
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %0, align 8, !tbaa !156
  br label %bb.z

bb.z:                                             ; preds = %bb.j, %bb.w, %bb.y
  %i.cm = phi ptr [ %.promoted50, %bb.j ], [ %i.ci, %bb.w ], [ %.pre, %bb.y ] ; 3 uses
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.j ], [ %.pn15.pn, %bb.w ], [ %i.cl, %bb.y ]
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !160
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #26
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit: ; preds = %bb.z, %bb.aa
  resume { ptr, i32 } %.pn15.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection24GetRepeatedFieldInternalIiEERKNS0_13RepeatedFieldIT_EERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !162
  %i.b = load i32, ptr %1, align 8, !tbaa !31
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !162  ; 7 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIiEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.f, 3
  br i1 %i.g, label %bb.d, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i: ; preds = %bb.b
  invoke void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i1 noundef zeroext true, i32 noundef 0, i32 noundef %i.f)
          to label %.thread.i unwind label %bb.c

.thread.i:                                        ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i
  store i32 %i.f, ptr %i.a, align 4, !tbaa !162
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %.0.v.i.i.i.i25.i = select i1 %i.d, ptr %1, ptr %i.i
  %.0.i.i.i.i2426.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i25.i, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i.i28.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.e

bb.c:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf13RepeatedFieldIiED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.b
  store i32 %i.f, ptr %i.a, align 4, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %.0.v.i.i.i.i.i = select i1 %i.d, ptr %1, ptr %i.n
  %.0.i.i.i.i24.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  switch i32 %i.f, label %_ZN6google8protobuf13RepeatedFieldIiEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit [
    i32 2, label %bb.e
    i32 1, label %bb.f
  ], !prof !221

bb.e:                                             ; preds = %bb.d, %.thread.i
  %.0.i.i30.i = phi ptr [ %.0.i.i28.i, %.thread.i ], [ %.0.i.i.i, %bb.d ]
  %.0.i.i.i.i2429.i = phi ptr [ %.0.i.i.i.i2426.i, %.thread.i ], [ %.0.i.i.i.i24.i, %bb.d ]
  %i.o = zext nneg i32 %i.f to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.0.i.i30.i, ptr nonnull align 4 %.0.i.i.i.i2429.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !222
  br label %_ZN6google8protobuf13RepeatedFieldIiEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = load i32, ptr %.0.i.i.i.i24.i, align 4, !tbaa !3, !alias.scope !216, !noalias !219
  store i32 %i.p, ptr %.0.i.i.i, align 8, !tbaa !3, !alias.scope !219, !noalias !216
  br label %_ZN6google8protobuf13RepeatedFieldIiEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::ConstMapIterator", align 8 ; 9 uses
  %3 = alloca %"class.google::protobuf::ConstMapIterator", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::Cord", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 16
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZNK6google8protobuf10Reflection10GetMapDataERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0) ; 3 uses
  %i.g = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapFieldBase10IsMapValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN6google8protobuf15MapIteratorBaseILb0EEC2EPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %1, ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN6google8protobuf15MapIteratorBaseILb0EEC2EPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull %1, ptr noundef nonnull %0)
  %i.h = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.k = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !134
  call void @_ZNK6google8protobuf8internal12MapFieldBase13ConstMapBeginEPNS0_16ConstMapIteratorE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2)
  call void @_ZNK6google8protobuf8internal12MapFieldBase11ConstMapEndEPNS0_16ConstMapIteratorE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %3)
  %i.n = call noundef zeroext i1 @_ZNK6google8protobuf15MapIteratorBaseILb0EEeqERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = getelementptr i8, ptr %i.m, i64 90
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.0206249 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.d ]
  %i.r = call noundef i64 @_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE(ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(20) %i.o)
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf10Reflection24GetRepeatedFieldInternalIbEERKNS0_13RepeatedFieldIT_EERKNS0_7MessageEPKNS0_15FieldDescriptorE

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !162
  %i.b = load i32, ptr %1, align 8, !tbaa !31
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !162  ; 8 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIbEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.f, 9
  br i1 %i.g, label %bb.d, label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i: ; preds = %bb.b
  invoke void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i1 noundef zeroext true, i32 noundef 0, i32 noundef %i.f)
          to label %.thread.i unwind label %bb.c

.thread.i:                                        ; preds = %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i
  store i32 %i.f, ptr %i.a, align 4, !tbaa !162
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %.0.v.i.i.i.i21.i = select i1 %i.d, ptr %1, ptr %i.i
  %.0.i.i.i.i2022.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i21.i, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i.i24.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.e

bb.c:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load i32, ptr %0, align 8, !tbaa !31
  %i.n = and i32 %i.m, 1
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  store i32 %i.f, ptr %i.a, align 4, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %.0.v.i.i.i.i.i = select i1 %i.d, ptr %1, ptr %i.q
  %.0.i.i.i.i20.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.r = icmp sgt i32 %i.f, 1
  br i1 %i.r, label %bb.e, label %bb.f, !prof !281

bb.e:                                             ; preds = %bb.d, %.thread.i
  %.0.i.i26.i = phi ptr [ %.0.i.i24.i, %.thread.i ], [ %.0.i.i.i, %bb.d ]
  %.0.i.i.i.i2025.i = phi ptr [ %.0.i.i.i.i2022.i, %.thread.i ], [ %.0.i.i.i.i20.i, %bb.d ]
  %i.s = zext nneg i32 %i.f to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i26.i, ptr nonnull align 1 %.0.i.i.i.i2025.i, i64 %i.s, i1 false), !alias.scope !282
  br label %_ZN6google8protobuf13RepeatedFieldIbEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i32 %i.f, 1
  br i1 %i.t, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIbEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %.0.i.i.i.i20.i, align 1, !tbaa !283, !range !69, !alias.scope !276, !noalias !279, !noundef !70
  store i8 %i.u, ptr %.0.i.i.i, align 8, !tbaa !283, !alias.scope !279, !noalias !276
  br label %_ZN6google8protobuf13RepeatedFieldIbEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit

bb.h:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = add nsw i64 %i.y, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #25
  br label %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit.i

_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit.i: ; preds = %bb.h, %bb.c
  resume { ptr, i32 } %i.l

_ZN6google8protobuf13RepeatedFieldIbEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit: ; preds = %bb.a, %bb.e, %bb.f, %bb.g
  ret void
}

declare noundef i32 @_ZNK6google8protobuf10Reflection16GetRepeatedInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6google8protobuf10Reflection8GetInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK6google8protobuf10Reflection16GetRepeatedInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK6google8protobuf10Reflection8GetInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6google8protobuf10Reflection9GetUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK6google8protobuf10Reflection9GetUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef float @_ZNK6google8protobuf10Reflection16GetRepeatedFloatERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef float @_ZNK6google8protobuf10Reflection8GetFloatERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef double @_ZNK6google8protobuf10Reflection17GetRepeatedDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef double @_ZNK6google8protobuf10Reflection9GetDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK6google8protobuf10Reflection15GetRepeatedBoolERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK6google8protobuf10Reflection7GetBoolERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal14WireFormatLite18InternalWriteGroupEiRKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6google8protobuf11MessageLite13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Reflection15GetRepeatedEnumERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Reflection7GetEnumERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection26GetRepeatedStringReferenceERKNS0_7MessageEPKNS0_15FieldDescriptorEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection18GetStringReferenceERKNS0_7MessageEPKNS0_15FieldDescriptorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection7GetCordERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Cord") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6google8protobuf8internal10WireFormat8ByteSizeERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 16 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 3 uses
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.d = extractvalue { ptr, ptr } %i.c, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 51
  %i.h = load i8, ptr %i.g, align 1, !tbaa !21, !range !69, !noundef !70
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !133  ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.r, %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit
  %.pre72 = phi i32 [ %i.k, %.lr.ph ], [ %.pre73, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.q = phi i32 [ %i.k, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.al, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 8 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !134
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.v, ptr %i.s, align 8, !tbaa !135
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.s, ptr %i.n, align 8
  store ptr %i.r, ptr %i.o, align 8
  store ptr %i.t, ptr %1, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %2 = icmp ult i64 %i.ab, %i.aa
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %3 = select i1 %2, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %3, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #31
          to label %.noexc29 unwind label %.loopexit36 ; 4 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.y ; 2 uses
  store ptr %i.v, ptr %i.af, align 8, !tbaa !135
  %i.ag = icmp sgt i64 %i.y, 0
  br i1 %i.ag, label %bb.g, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc29
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %i.t, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.g, %.noexc29
  %.not.i17.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #26
  %.pre.pre = load i32, ptr %i.j, align 8, !tbaa !133
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %.pre = phi i32 [ %.pre.pre, %bb.h ], [ %.pre72, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %3
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.d
  %.pre73 = phi i32 [ %.pre, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre72, %bb.d ]
  %i.ai = phi i32 [ %.pre, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.aj = phi ptr [ %i.ah, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %.pn54 = phi ptr [ %i.af, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.s, %bb.d ]
  %i.ak = phi ptr [ %i.ae, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pn54, i64 8 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = sext i32 %i.ai to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.c, label %..loopexit_crit_edge, !llvm.loop !284

.loopexit36:                                      ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %i.n, align 8
  store ptr %i.r, ptr %i.o, align 8
  store ptr %i.t, ptr %1, align 8
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.i:                                             ; preds = %bb.a
  invoke void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1)
          to label %._crit_edge69 unwind label %bb.b

._crit_edge69:                                    ; preds = %bb.i
  %.pre70 = load ptr, ptr %1, align 8, !tbaa !137
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre71 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !137
  br label %bb.j

..loopexit_crit_edge:                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit
  store ptr %i.al, ptr %i.n, align 8
  store ptr %i.aj, ptr %i.o, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  %i.ao = phi ptr [ %i.al, %..loopexit_crit_edge ], [ null, %.preheader ]
  %.lcssa = phi ptr [ %i.ak, %..loopexit_crit_edge ], [ null, %.preheader ] ; 2 uses
  store ptr %.lcssa, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge69, %.loopexit
  %i.ap = phi ptr [ %.pre71, %._crit_edge69 ], [ %i.ao, %.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %.pre70, %._crit_edge69 ], [ %.lcssa, %.loopexit ] ; 2 uses
  %.not49 = icmp eq ptr %i.aq, %i.ap
  br i1 %.not49, label %._crit_edge, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.j, %bb.k
  %.051 = phi i64 [ %i.at, %bb.k ], [ 0, %bb.j ]
  %.sroa.032.050 = phi ptr [ %i.au, %bb.k ], [ %i.aq, %bb.j ] ; 2 uses
  %i.ar = load ptr, ptr %.sroa.032.050, align 8, !tbaa !135
  %i.as = invoke noundef i64 @_ZN6google8protobuf8internal10WireFormat13FieldByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE(ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.lr.ph52
  %i.at = add i64 %i.as, %.051                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.050, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.au, %i.ap
  br i1 %.not, label %._crit_edge, label %.lr.ph52

bb.l:                                             ; preds = %.lr.ph52
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %.0.lcssa = phi i64 [ 0, %bb.j ], [ %i.at, %bb.k ]
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !21, !range !69, !noundef !70
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.m, label %bb.r

bb.m:                                             ; preds = %._crit_edge
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.n unwind label %bb.b       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !28 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i, label %_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE.exit

.lr.ph.i:                                         ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !31
  %i.bg = and i32 %i.bf, 1
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.0.i.i.i.i.i.i.i.i = select i1 %i.bh, ptr %i.bi, ptr %i.bk
  %i.bl = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8
  %wide.trip.count.i = zext nneg i32 %i.bc to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %.016.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.q ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i.i, i64 %indvars.iv.i ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !35
  %i.bp = icmp eq i32 %i.bo, 3
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bq = add i64 %.016.i, %i.bl
  %i.br = load i32, ptr %i.bm, align 8, !tbaa !37
  %i.bs = or i32 %i.br, 1
  %i.bt = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bs, i1 true)
  %i.bu = xor i32 %i.bt, 31
  %i.bv = mul nuw nsw i32 %i.bu, 9
  %i.bw = add nuw nsw i32 %i.bv, 73
  %i.bx = lshr i32 %i.bw, 6
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !46 ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = or i32 %i.cd, 1
  %i.cf = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ce, i1 true)
  %i.cg = xor i32 %i.cf, 31
  %i.ch = mul nuw nsw i32 %i.cg, 9
  %i.ci = add nuw nsw i32 %i.ch, 73
  %i.cj = lshr i32 %i.ci, 6
  %i.ck = zext nneg i32 %i.cj to i64
  %sext.i = shl i64 %i.cc, 32
  %i.cl = ashr exact i64 %sext.i, 32
  %i.cm = add i64 %i.bq, %i.cl
  %i.cn = add i64 %i.cm, %i.by
  %i.co = add i64 %i.cn, %i.ck
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.i = phi i64 [ %i.co, %bb.p ], [ %.016.i, %bb.o ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE.exit, label %bb.o, !llvm.loop !51

bb.r:                                             ; preds = %._crit_edge
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.s unwind label %bb.b

bb.s:                                             ; preds = %bb.r
  %i.cq = call noundef i64 @_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE(ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
  br label %_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE.exit

_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE.exit: ; preds = %bb.q, %bb.s, %bb.n
  %.pn = phi i64 [ %i.cq, %bb.s ], [ 0, %bb.n ], [ %.1.i, %bb.q ]
  %i.cr = load ptr, ptr %1, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !141
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #26
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit: ; preds = %_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE.exit, %bb.t
  %.1 = add i64 %.pn, %.0.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret i64 %.1

thread-pre-split:                                 ; preds = %bb.b, %bb.l, %.loopexit.split-lp
  %.pn27.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.av, %bb.l ], [ %i.p, %bb.b ]
  %.pr = load ptr, ptr %1, align 8, !tbaa !139
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split, %.loopexit36
  %i.cx = phi ptr [ %.pr, %thread-pre-split ], [ %i.t, %.loopexit36 ] ; 3 uses
  %.pn27 = phi { ptr, i32 } [ %.pn27.ph, %thread-pre-split ], [ %lpad.loopexit, %.loopexit36 ]
  %.not.i.i.i30 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit31, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !141
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #26
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit31

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit31: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn27
}

end_hunk_3
