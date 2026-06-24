inline.NumInlined: 617
inline.NumDeleted: 317
begin_hunk_0_@_ZN2v88internal27Builtin_StringFromCodePointEiPmPNS0_7IsolateE:bb.a
    i64 10, label %bb.ao
    i64 11, label %bb.ap
    i64 12, label %bb.aq
    i64 13, label %bb.ar
    i64 14, label %bb.as
    i64 15, label %bb.at
    i64 16, label %bb.au
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i
  ]

bb.af:                                            ; preds = %.critedge.i
  %i.eb = load i16, ptr %.sroa.097.1.i, align 2
  store i16 %i.eb, ptr %i.ea, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ag:                                            ; preds = %.critedge.i
  %i.ec = load i32, ptr %.sroa.097.1.i, align 2
  store i32 %i.ec, ptr %i.ea, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ah:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ea, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.097.1.i, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ai:                                            ; preds = %.critedge.i
  %i.ed = load i64, ptr %.sroa.097.1.i, align 2
  store i64 %i.ed, ptr %i.ea, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.aj:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.ea, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.097.1.i, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ak:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.ea, ptr noundef nonnull align 2 dereferenceable(12) %.sroa.097.1.i, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.al:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ea, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.097.1.i, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.am:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ea, ptr noundef nonnull align 2 dereferenceable(16) %.sroa.097.1.i, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.an:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ea, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.097.1.i, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ao:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.ea, ptr noundef nonnull align 2 dereferenceable(20) %.sroa.097.1.i, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ap:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.ea, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.097.1.i, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.aq:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ea, ptr noundef nonnull align 2 dereferenceable(24) %.sroa.097.1.i, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ar:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.ea, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.097.1.i, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.as:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.ea, ptr noundef nonnull align 2 dereferenceable(28) %.sroa.097.1.i, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.at:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.ea, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.097.1.i, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.au:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.ea, ptr noundef nonnull align 2 dereferenceable(32) %.sroa.097.1.i, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i: ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ea, ptr nonnull align 2 %.sroa.097.1.i, i64 %i.dm, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i:  ; preds = %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %.critedge.i, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %bb.ad
  %.pre-phi = phi i64 [ %i.dl, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i ], [ %i.dl, %bb.au ], [ %i.dl, %bb.at ], [ %i.dl, %bb.as ], [ %i.dl, %bb.ar ], [ %i.dl, %bb.aq ], [ %i.dl, %bb.ap ], [ %i.dl, %bb.ao ], [ %i.dl, %bb.an ], [ %i.dl, %bb.am ], [ %i.dl, %bb.al ], [ %i.dl, %bb.ak ], [ %i.dl, %bb.aj ], [ %i.dl, %bb.ai ], [ %i.dl, %bb.ah ], [ %i.dl, %bb.ag ], [ %i.dl, %bb.af ], [ %i.dl, %.critedge.i ], [ %i.dl, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %.pre44, %bb.ad ]
  %.sroa.0149.2.in.i = phi ptr [ %i.dq, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i ], [ %i.dq, %bb.au ], [ %i.dq, %bb.at ], [ %i.dq, %bb.as ], [ %i.dq, %bb.ar ], [ %i.dq, %bb.aq ], [ %i.dq, %bb.ap ], [ %i.dq, %bb.ao ], [ %i.dq, %bb.an ], [ %i.dq, %bb.am ], [ %i.dq, %bb.al ], [ %i.dq, %bb.ak ], [ %i.dq, %bb.aj ], [ %i.dq, %bb.ai ], [ %i.dq, %bb.ah ], [ %i.dq, %bb.ag ], [ %i.dq, %bb.af ], [ %i.dq, %.critedge.i ], [ %i.dr, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %i.dg, %bb.ad ]
  %.sroa.0149.2.i = load i64, ptr %.sroa.0149.2.in.i, align 8
  %i.ee = ptrtoint ptr %.sroa.31.1.i to i64
  %i.ef = sub i64 %i.ee, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.1.i, i64 noundef %i.ef) #14
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, %bb.k, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i
  %.sroa.24.0196.i = phi ptr [ %.sroa.24.0197.i, %bb.d ], [ %.sroa.24.0.lcssa.ph240.i, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %.sroa.24.0.lcssa.ph240.i, %bb.k ], [ %.sroa.24.0197.i, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i ]
  %.sroa.0125.0191.i = phi ptr [ %.sroa.0125.0199.i, %bb.d ], [ %.sroa.0125.0.lcssa.ph242.i, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %.sroa.0125.0.lcssa.ph242.i, %bb.k ], [ %.sroa.0125.0199.i, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i ] ; 2 uses
  %.sroa.0149.3.i = phi i64 [ %i.t, %bb.d ], [ %i.aq, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %i.ar, %bb.k ], [ %.sroa.0149.2.i, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i ] ; 2 uses
  %i.eg = ptrtoint ptr %.sroa.24.0196.i to i64
  %i.eh = ptrtoint ptr %.sroa.0125.0191.i to i64
  %i.ei = sub i64 %i.eg, %i.eh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0125.0191.i, i64 noundef %i.ei) #14
  %.pre = load i32, ptr %i.f, align 8
  %.pre43 = load ptr, ptr %i.d, align 8
  %i.ej = add nsw i32 %.pre, -1
  %i.ek = icmp eq ptr %.pre43, %i.e
  store ptr %i.c, ptr %i.b, align 8
  store i32 %i.ej, ptr %i.f, align 8
  br i1 %i.ek, label %_ZN2v88internalL32Builtin_Impl_StringFromCodePointENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.av, !prof !8

bb.av:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br label %_ZN2v88internalL32Builtin_Impl_StringFromCodePointENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL32Builtin_Impl_StringFromCodePointENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.thread, %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.av
  %.sroa.0149.4.i59 = phi i64 [ %i.l, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.thread ], [ %.sroa.0149.3.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ], [ %.sroa.0149.3.i, %bb.av ]
  ret i64 %.sroa.0149.4.i59
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal34Builtin_StringPrototypeLastIndexOfEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i7.i = icmp ult i32 %0, 4
  br i1 %.not.i7.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #12
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i = sub i64 %i.i, %i.j               ; 3 uses
  %i.k = add i64 %reass.sub.i, 40
  %i.l = inttoptr i64 %i.k to ptr
  %.not.i8.i = icmp sgt i32 %0, 5
  %i.m = add i64 %reass.sub.i, 48
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 2 uses
  %.sroa.0.0.i.i = select i1 %.not.i8.i, ptr %i.n, ptr %i.o
  %.not.i9.i = icmp sgt i32 %0, 6
  %i.p = add i64 %reass.sub.i, 56
  %i.q = inttoptr i64 %i.p to ptr
  %.sroa.0.0.i10.i = select i1 %.not.i9.i, ptr %i.q, ptr %i.o
  %i.r = tail call i64 @_ZN2v88internal6String11LastIndexOfEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_S6_(ptr noundef nonnull %2, ptr %i.l, ptr %.sroa.0.0.i.i, ptr %.sroa.0.0.i10.i) #15
  store ptr %i.b, ptr %i.a, align 8
  %i.s = load i32, ptr %i.e, align 8
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.e, align 8
  %i.u = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL39Builtin_Impl_StringPrototypeLastIndexOfENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br label %_ZN2v88internalL39Builtin_Impl_StringPrototypeLastIndexOfENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL39Builtin_Impl_StringPrototypeLastIndexOfENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, %bb.c
  ret i64 %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal17Builtin_StringRawEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %7 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 7 uses
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = add nsw i32 %0, -4
  %.not.i156.i = icmp sgt i32 %0, 5
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = shl nsw i64 %i.a, 3
  %reass.sub = sub i64 %i.j, %i.k
  %i.l = add i64 %reass.sub, 48
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i156.i, ptr %i.m, ptr %i.n ; 3 uses
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.4, i64 3, i8 noundef zeroext 0) #15 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %bb.a
  %i.q = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, !prof !11

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %i.s = add nsw i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = add i64 %i.u, 11
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i16, ptr %i.w monotonic, align 2
  %i.y = icmp ugt i16 %i.x, 299
  br i1 %i.y, label %.critedge.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, !prof !12

_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %i.z = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i, ptr noundef null) #15 ; 2 uses
  %.not367.i = icmp eq ptr %i.z, null
  br i1 %.not367.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ab = load i64, ptr %i.aa, align 8
  br label %bb.u

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.07.0.i316320.i = phi ptr [ %i.z, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.pre.pre.i.i = load i64, ptr %i.o, align 8
  %i.ac = add i64 %.pre.pre.i.i, -1
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = icmp eq i16 %i.ah, 128
  br i1 %i.ai, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i:  ; preds = %.critedge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, %.critedge.i
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i
  %i.am = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i ]
  store i32 %i.am, ptr %6, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %2, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %.sroa.07.0.i316320.i, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ax = ptrtoint ptr %.sroa.07.0.i316320.i to i64
  store i64 %i.ax, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 -1, i64 16, i1 false)
  %i.az = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = and i16 %i.bc, -96
  %.not.i21.i.i.i.i = icmp eq i16 %i.bd, 32
  br i1 %.not.i21.i.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bh = load i8, ptr %i.bg, align 8, !range !13
  %i.bi = trunc nuw i8 %i.bh to i1
  %not..i.i.i23.i.i.i.i = xor i1 %i.bf, true
  %i.bj = select i1 %not..i.i.i23.i.i.i.i, i1 true, i1 %i.bi
  br i1 %i.bj, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bl = load i8, ptr %i.bk, align 8, !range !13, !noundef !14
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i: ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bo = load ptr, ptr %i.bn, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, %bb.d
  %.pn.i.i26.i.i.i.i = phi ptr [ %i.bo, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i.i, i64 58464
  %i.bp = load ptr, ptr %.in.i.i27.i.i.i.i, align 8
  %i.bq = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.o) #15
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %.sroa.05.0.i22.i.i.i.i = phi ptr [ %i.bq, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i ], [ %i.o, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i.i, ptr %i.as, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %6) #15
  %i.br = load i32, ptr %i.an, align 4
  %.not.i157.i = icmp eq i32 %i.br, 0
  br i1 %.not.i157.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i
  %i.bs = load ptr, ptr %i.ar, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.critedge123.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i
  %i.bu = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %6, i1 noundef zeroext false) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.not368.i = icmp eq ptr %i.bu, null
  br i1 %.not368.i, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge123.i

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.bw = load i64, ptr %i.bv, align 8
  br label %bb.u

.critedge123.i:                                   ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i
  %.sroa.0.0.i158322.i = phi ptr [ %i.bt, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i ], [ %i.bu, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i ] ; 3 uses
  %i.bx = load i64, ptr %.sroa.0.0.i158322.i, align 8 ; 2 uses
  %i.by = trunc i64 %i.bx to i1
  br i1 %i.by, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i160.i, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i, !prof !11

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i160.i: ; preds = %.critedge123.i
  %i.bz = add nsw i64 %i.bx, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = icmp ugt i16 %i.ce, 299
  br i1 %i.cf, label %.critedge125.i, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i, !prof !12

_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i160.i, %.critedge123.i
  %i.cg = call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i158322.i, ptr noundef null) #15 ; 2 uses
  %.not369.i = icmp eq ptr %i.cg, null
  br i1 %.not369.i, label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge125.i

_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ci = load i64, ptr %i.ch, align 8
  br label %bb.u

.critedge125.i:                                   ; preds = %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i160.i
  %.sroa.09.0.i326.i = phi ptr [ %i.cg, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i ], [ %.sroa.0.0.i158322.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i160.i ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 712 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %.pre.pre.i161.i = load i64, ptr %i.cj, align 8
  %i.ck = add i64 %.pre.pre.i161.i, -1
  %i.cl = inttoptr i64 %i.ck to ptr               ; 3 uses
  %i.cm = load atomic volatile i64, ptr %i.cl monotonic, align 8
  %i.cn = add i64 %i.cm, 11
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = load atomic volatile i16, ptr %i.co monotonic, align 2
  %i.cq = icmp eq i16 %i.cp, 128
  br i1 %i.cq, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i174.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i162.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i174.i: ; preds = %.critedge125.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = trunc i32 %i.cs to i1
  br i1 %i.ct, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i163.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i162.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i162.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i174.i, %.critedge125.i
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i163.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i163.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i162.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i174.i
  %i.cu = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i162.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i174.i ]
  store i32 %i.cu, ptr %5, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %2, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %.sroa.09.0.i326.i, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.df = ptrtoint ptr %.sroa.09.0.i326.i to i64  ; 2 uses
  store i64 %i.df, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 -1, i64 16, i1 false)
  %i.dh = load atomic volatile i64, ptr %i.cl monotonic, align 8
  %i.di = add i64 %i.dh, 11
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i16, ptr %i.dj monotonic, align 2
  %i.dl = and i16 %i.dk, -96
  %.not.i21.i.i.i164.i = icmp eq i16 %i.dl, 32
  br i1 %.not.i21.i.i.i164.i, label %bb.g, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i165.i

bb.g:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i163.i
  %i.dm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.dp = load i8, ptr %i.do, align 8, !range !13
  %i.dq = trunc nuw i8 %i.dp to i1
  %not..i.i.i23.i.i.i169.i = xor i1 %i.dn, true
  %i.dr = select i1 %not..i.i.i23.i.i.i169.i, i1 true, i1 %i.dq
  br i1 %i.dr, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i171.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.dt = load i8, ptr %i.ds, align 8, !range !13, !noundef !14
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i170.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i170.i: ; preds = %bb.h
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.dw = load ptr, ptr %i.dv, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i171.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i171.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i170.i, %bb.g
  %.pn.i.i26.i.i.i172.i = phi ptr [ %i.dw, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i170.i ], [ %2, %bb.g ]
  %.in.i.i27.i.i.i173.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i172.i, i64 58464
  %i.dx = load ptr, ptr %.in.i.i27.i.i.i173.i, align 8
  %i.dy = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.cj) #15
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i165.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i165.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i171.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i163.i
  %.sroa.05.0.i22.i.i.i166.i = phi ptr [ %i.dy, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i171.i ], [ %i.cj, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i163.i ]
  store ptr %.sroa.05.0.i22.i.i.i166.i, ptr %i.da, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #15
  %i.dz = load i32, ptr %i.cv, align 4
  %.not.i167.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i167.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.thread.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.thread.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i165.i
  %i.ea = load ptr, ptr %i.cz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge127.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i165.i
  %i.ec = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not370.i = icmp eq ptr %i.ec, null
  br i1 %.not370.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge127.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.i
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ee = load i64, ptr %i.ed, align 8
  br label %bb.u

.critedge127.i:                                   ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.i, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.thread.i
  %.sroa.0.0.i168330.i = phi ptr [ %i.eb, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.thread.i ], [ %i.ec, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.i ] ; 2 uses
  %i.ef = load i64, ptr %.sroa.0.0.i168330.i, align 8 ; 2 uses
  %i.eg = and i64 %i.ef, 1
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.j, label %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i

bb.j:                                             ; preds = %.critedge127.i
  %i.ei = lshr i64 %i.ef, 32
  %i.ej = trunc nuw i64 %i.ei to i32
  %.sroa.speculated.i.i = call i32 @llvm.smax.i32(i32 %i.ej, i32 0)
  %i.ek = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.el = shl nuw nsw i64 %i.ek, 32
  %i.em = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.en = load ptr, ptr %i.d, align 8
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %bb.k, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit150.i, !prof !9

bb.k:                                             ; preds = %bb.j
  %i.ep = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit150.i

_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i: ; preds = %.critedge127.i
  %i.eq = call ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i168330.i) #15 ; 2 uses
  %.not371.i = icmp eq ptr %i.eq, null
  br i1 %.not371.i, label %bb.l, label %.critedge129.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit150.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.ep, %bb.k ], [ %i.em, %bb.j ] ; 3 uses
  %i.er = ptrtoint ptr %.0.i.i.i to i64
  %i.es = add i64 %i.er, 8
  %i.et = inttoptr i64 %i.es to ptr
  store ptr %i.et, ptr %i.b, align 8
  store i64 %i.el, ptr %.0.i.i.i, align 8
  br label %.critedge129.i

bb.l:                                             ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ev = load i64, ptr %i.eu, align 8
  br label %bb.u

.critedge129.i:                                   ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit150.i, %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i
  %.sroa.011.0.i334338.i = phi ptr [ %.0.i.i.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit150.i ], [ %i.eq, %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %2) #15
  %i.ew = load i64, ptr %.sroa.011.0.i334338.i, align 8 ; 3 uses
  %i.ex = and i64 %i.ew, 1
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge129.i
  %i.ez = lshr i64 %i.ew, 32
  %i.fa = trunc nuw i64 %i.ez to i32
  %i.fb = sitofp i32 %i.fa to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.n:                                             ; preds = %.critedge129.i
  %i.fc = add nsw i64 %i.ew, -1
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.fe, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.n, %bb.m
  %i.ff = phi double [ %i.fb, %bb.m ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %i.fg = fcmp ogt double %i.ff, f0x41EFFFFFFFE00000
  br i1 %i.fg, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.fh = fptoui double %i.ff to i32              ; 2 uses
  %.not.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i, label %.critedge149.i, label %.thread.i

.thread.i:                                        ; preds = %bb.o, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.fi = phi i32 [ %i.fh, %bb.o ], [ -1, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i32 3, ptr %4, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %2, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i8 0, i64 16, i1 false)
  store ptr %.sroa.09.0.i326.i, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.df, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 0, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 -1, ptr %i.ft, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #15
  %i.fu = load i32, ptr %i.fj, align 4
  %.not.i176.i = icmp eq i32 %i.fu, 0
  br i1 %.not.i176.i, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread.i, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.i

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread.i: ; preds = %.thread.i
  %i.fv = load ptr, ptr %i.fn, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.critedge131.i

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.i: ; preds = %.thread.i
  %i.fx = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.not372.i = icmp eq ptr %i.fx, null
  br i1 %.not372.i, label %.critedge145.i, label %.critedge131.i

.critedge145.i:                                   ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i

.critedge131.i:                                   ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.i, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread.i
  %.sroa.0.0.i177341.i = phi ptr [ %i.fw, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread.i ], [ %i.fx, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.i ] ; 3 uses
  %i.fz = load i64, ptr %.sroa.0.0.i177341.i, align 8 ; 2 uses
  %i.ga = trunc i64 %i.fz to i1
end_hunk_0
