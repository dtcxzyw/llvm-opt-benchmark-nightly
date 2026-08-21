Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-string?download=true
inline.NumInlined: 617
inline.NumDeleted: 317
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2v88internal27Builtin_StringFromCodePointEiPmPNS0_7IsolateE:bb.a
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.dv, ptr noundef %.sroa.0125.0199.i, i64 noundef %i.dj)
  %i.dw = load i64, ptr %i.dq, align 8
  %i.dx = add i64 %i.dw, -1
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %i.dj ; 17 uses
  switch i64 %i.dn, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i [
    i64 1, label %bb.af
    i64 2, label %bb.ag
    i64 3, label %bb.ah
    i64 4, label %bb.ai
    i64 5, label %bb.aj
    i64 6, label %bb.ak
    i64 7, label %bb.al
    i64 8, label %bb.am
    i64 9, label %bb.an
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
  %8 = add nsw i32 %0, -4
  %.not.i156.i = icmp sgt i32 %0, 5
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = shl nsw i64 %i.a, 3
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 48
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i156.i, ptr %i.l, ptr %i.m ; 3 uses
  %i.n = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.4, i64 3, i8 noundef zeroext 0) #15 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %bb.a
  %i.p = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, !prof !11

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %i.r = add nsw i64 %i.p, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp ugt i16 %i.w, 299
  br i1 %i.x, label %.critedge.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, !prof !12

_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %i.y = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i, ptr noundef null) #15 ; 2 uses
  %.not367.i = icmp eq ptr %i.y, null
  br i1 %.not367.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.aa = load i64, ptr %i.z, align 8
  br label %bb.u

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.07.0.i316320.i = phi ptr [ %i.y, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.pre.pre.i.i = load i64, ptr %i.n, align 8
  %i.ab = add i64 %.pre.pre.i.i, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = icmp eq i16 %i.ag, 128
  br i1 %i.ah, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i:  ; preds = %.critedge.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, %.critedge.i
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i
  %i.al = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i ]
  store i32 %i.al, ptr %6, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 0, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %2, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %.sroa.07.0.i316320.i, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aw = ptrtoint ptr %.sroa.07.0.i316320.i to i64
  store i64 %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 -1, i64 16, i1 false)
  %i.ay = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = and i16 %i.bb, -96
  %.not.i21.i.i.i.i = icmp eq i16 %i.bc, 32
  br i1 %.not.i21.i.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %i.bd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bg = load i8, ptr %i.bf, align 8, !range !13
  %i.bh = trunc nuw i8 %i.bg to i1
  %not..i.i.i23.i.i.i.i = xor i1 %i.be, true
  %i.bi = select i1 %not..i.i.i23.i.i.i.i, i1 true, i1 %i.bh
  br i1 %i.bi, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bk = load i8, ptr %i.bj, align 8, !range !13, !noundef !14
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i: ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bn = load ptr, ptr %i.bm, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, %bb.d
  %.pn.i.i26.i.i.i.i = phi ptr [ %i.bn, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i.i, i64 58464
  %i.bo = load ptr, ptr %.in.i.i27.i.i.i.i, align 8
  %i.bp = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.n) #15
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %.sroa.05.0.i22.i.i.i.i = phi ptr [ %i.bp, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i ], [ %i.n, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i.i, ptr %i.ar, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %6) #15
  %i.bq = load i32, ptr %i.am, align 4
  %.not.i157.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i157.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i
  %i.br = load ptr, ptr %i.aq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.critedge123.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i
  %i.bt = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %6, i1 noundef zeroext false) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.not368.i = icmp eq ptr %i.bt, null
  br i1 %.not368.i, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge123.i

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.bv = load i64, ptr %i.bu, align 8
  br label %bb.u

.critedge123.i:                                   ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i
  %.sroa.0.0.i158322.i = phi ptr [ %i.bs, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i ], [ %i.bt, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i ] ; 3 uses
  %i.bw = load i64, ptr %.sroa.0.0.i158322.i, align 8 ; 2 uses
  %i.bx = trunc i64 %i.bw to i1
  br i1 %i.bx, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i160.i, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i, !prof !11

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i160.i: ; preds = %.critedge123.i
  %i.by = add nsw i64 %i.bw, -1
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i64, ptr %i.bz monotonic, align 8
  %i.cb = add i64 %i.ca, 11
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load atomic volatile i16, ptr %i.cc monotonic, align 2
  %i.ce = icmp ugt i16 %i.cd, 299
  br i1 %i.ce, label %.critedge125.i, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i, !prof !12

_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i160.i, %.critedge123.i
  %i.cf = call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i158322.i, ptr noundef null) #15 ; 2 uses
  %.not369.i = icmp eq ptr %i.cf, null
  br i1 %.not369.i, label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge125.i

_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ch = load i64, ptr %i.cg, align 8
  br label %bb.u

.critedge125.i:                                   ; preds = %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i160.i
  %.sroa.09.0.i326.i = phi ptr [ %i.cf, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i ], [ %.sroa.0.0.i158322.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i160.i ] ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 712 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %.pre.pre.i161.i = load i64, ptr %i.ci, align 8
  %i.cj = add i64 %.pre.pre.i161.i, -1
  %i.ck = inttoptr i64 %i.cj to ptr               ; 3 uses
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i16, ptr %i.cn monotonic, align 2
  %i.cp = icmp eq i16 %i.co, 128
  br i1 %i.cp, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i174.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i162.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i174.i: ; preds = %.critedge125.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = trunc i32 %i.cr to i1
  br i1 %i.cs, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i163.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i162.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i162.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i174.i, %.critedge125.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal17Builtin_StringRawEiPmPNS0_7IsolateE:bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.ds = load i8, ptr %i.dr, align 8, !range !13, !noundef !14
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i170.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i170.i: ; preds = %bb.h
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.dv = load ptr, ptr %i.du, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i171.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i171.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i170.i, %bb.g
  %.pn.i.i26.i.i.i172.i = phi ptr [ %i.dv, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i170.i ], [ %2, %bb.g ]
  %.in.i.i27.i.i.i173.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i172.i, i64 58464
  %i.dw = load ptr, ptr %.in.i.i27.i.i.i173.i, align 8
  %i.dx = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ci) #15
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i165.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i165.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i171.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i163.i
  %.sroa.05.0.i22.i.i.i166.i = phi ptr [ %i.dx, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i171.i ], [ %i.ci, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i163.i ]
  store ptr %.sroa.05.0.i22.i.i.i166.i, ptr %i.cz, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #15
  %i.dy = load i32, ptr %i.cu, align 4
  %.not.i167.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i167.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.thread.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.thread.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i165.i
  %i.dz = load ptr, ptr %i.cy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge127.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i165.i
  %i.eb = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not370.i = icmp eq ptr %i.eb, null
  br i1 %.not370.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge127.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.i
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ed = load i64, ptr %i.ec, align 8
  br label %bb.u

.critedge127.i:                                   ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.i, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.thread.i
  %.sroa.0.0.i168330.i = phi ptr [ %i.ea, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.thread.i ], [ %i.eb, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit175.i ] ; 2 uses
  %i.ee = load i64, ptr %.sroa.0.0.i168330.i, align 8 ; 2 uses
  %i.ef = and i64 %i.ee, 1
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.j, label %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i

bb.j:                                             ; preds = %.critedge127.i
  %i.eh = lshr i64 %i.ee, 32
  %i.ei = trunc nuw i64 %i.eh to i32
  %.sroa.speculated.i.i = call i32 @llvm.smax.i32(i32 %i.ei, i32 0)
  %i.ej = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.ek = shl nuw nsw i64 %i.ej, 32
  %i.el = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.em = load ptr, ptr %i.d, align 8
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %bb.k, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit150.i, !prof !9

bb.k:                                             ; preds = %bb.j
  %i.eo = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit150.i

_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i: ; preds = %.critedge127.i
  %i.ep = call ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i168330.i) #15 ; 2 uses
  %.not371.i = icmp eq ptr %i.ep, null
  br i1 %.not371.i, label %bb.l, label %.critedge129.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit150.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.eo, %bb.k ], [ %i.el, %bb.j ] ; 3 uses
  %i.eq = ptrtoint ptr %.0.i.i.i to i64
  %i.er = add i64 %i.eq, 8
  %i.es = inttoptr i64 %i.er to ptr
  store ptr %i.es, ptr %i.b, align 8
  store i64 %i.ek, ptr %.0.i.i.i, align 8
  br label %.critedge129.i

bb.l:                                             ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.eu = load i64, ptr %i.et, align 8
  br label %bb.u

.critedge129.i:                                   ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit150.i, %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i
  %.sroa.011.0.i334338.i = phi ptr [ %.0.i.i.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit150.i ], [ %i.ep, %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %2) #15
  %i.ev = load i64, ptr %.sroa.011.0.i334338.i, align 8 ; 3 uses
  %i.ew = and i64 %i.ev, 1
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge129.i
  %i.ey = lshr i64 %i.ev, 32
  %i.ez = trunc nuw i64 %i.ey to i32
  %i.fa = sitofp i32 %i.ez to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.n:                                             ; preds = %.critedge129.i
  %i.fb = add nsw i64 %i.ev, -1
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.fd, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.n, %bb.m
  %i.fe = phi double [ %i.fa, %bb.m ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %i.ff = fcmp ogt double %i.fe, f0x41EFFFFFFFE00000
  br i1 %i.ff, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.fg = fptoui double %i.fe to i32              ; 2 uses
  %.not.i = icmp eq i32 %i.fg, 0
  br i1 %.not.i, label %.critedge149.i, label %.thread.i

.thread.i:                                        ; preds = %bb.o, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.fh = phi i32 [ %i.fg, %bb.o ], [ -1, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i32 3, ptr %4, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.fi, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.fk, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %2, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i8 0, i64 16, i1 false)
  store ptr %.sroa.09.0.i326.i, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.de, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 0, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 -1, ptr %i.fs, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #15
  %i.ft = load i32, ptr %i.fi, align 4
  %.not.i176.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i176.i, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread.i, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.i

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread.i: ; preds = %.thread.i
  %i.fu = load ptr, ptr %i.fm, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.critedge131.i

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.i: ; preds = %.thread.i
  %i.fw = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.not372.i = icmp eq ptr %i.fw, null
  br i1 %.not372.i, label %.critedge145.i, label %.critedge131.i

.critedge145.i:                                   ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i

.critedge131.i:                                   ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.i, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread.i
  %.sroa.0.0.i177341.i = phi ptr [ %i.fv, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread.i ], [ %i.fw, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.i ] ; 3 uses
  %i.fy = load i64, ptr %.sroa.0.0.i177341.i, align 8 ; 2 uses
  %i.fz = trunc i64 %i.fy to i1
  br i1 %i.fz, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %.critedge131.i
  %i.ga = add nsw i64 %i.fy, -1
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load atomic volatile i64, ptr %i.gb monotonic, align 8
  %i.gd = add i64 %i.gc, 11
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = load atomic volatile i16, ptr %i.ge monotonic, align 2
  %i.gg = icmp ult i16 %i.gf, 128
  br i1 %i.gg, label %.critedge133.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.critedge131.i
  %i.gh = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i177341.i) #15 ; 2 uses
  %.not373.i = icmp eq ptr %i.gh, null
  br i1 %.not373.i, label %.critedge147.i, label %.critedge133.i

.critedge147.i:                                   ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i

.critedge133.i:                                   ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.07.0.i178345.i = phi ptr [ %i.gh, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.0.0.i177341.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr nonnull %.sroa.07.0.i178345.i) #15
  %.not121.not379.i = icmp ugt i32 %i.fh, 1
  br i1 %.not121.not379.i, label %.lr.ph.i, label %.critedge149.i

.lr.ph.i:                                         ; preds = %.critedge133.i
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %wide.trip.count.i = zext i32 %i.fh to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.thread.i, %.lr.ph.i
  %indvars.iv.i.a = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.a, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.thread.i ] ; 2 uses
  %.0118380.i = phi i32 [ 2, %.lr.ph.i ], [ %11, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.thread.i ] ; 4 uses
  %i.gl = icmp ult i32 %.0118380.i, %8
  br i1 %i.gl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.gm = add nsw i32 %.0118380.i, 4
  %.not.i179.i = icmp ugt i32 %i.gm, %0
  br i1 %.not.i179.i, label %bb.r, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i, !prof !9

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #12
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i: ; preds = %bb.q
  %9 = sub i32 -5, %.0118380.i
  %10 = sext i32 %9 to i64
  %i.gn = add nsw i64 %10, %i.a
  %i.go = shl nsw i64 %i.gn, 3
  %i.gp = sub i64 %i.i, %i.go
  %i.gq = inttoptr i64 %i.gp to ptr               ; 3 uses
  %i.gr = load i64, ptr %i.gq, align 8            ; 2 uses
  %i.gs = trunc i64 %i.gr to i1
  br i1 %i.gs, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i182.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i182.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.gt = add nsw i64 %i.gr, -1
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = load atomic volatile i64, ptr %i.gu monotonic, align 8
  %i.gw = add i64 %i.gv, 11
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = load atomic volatile i16, ptr %i.gx monotonic, align 2
  %i.gz = icmp ult i16 %i.gy, 128
  br i1 %i.gz, label %.critedge135.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i182.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.ha = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.gq) #15 ; 2 uses
  %.not374.i = icmp eq ptr %i.ha, null
  br i1 %.not374.i, label %.critedge137.i, label %.critedge135.i

.critedge137.i:                                   ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i

.critedge135.i:                                   ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i182.i
  %.sroa.07.0.i181349353.i = phi ptr [ %i.ha, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %i.gq, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i182.i ]
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr nonnull %.sroa.07.0.i181349353.i) #15
  br label %bb.s

bb.s:                                             ; preds = %.critedge135.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %2, ptr nonnull %.sroa.09.0.i326.i, ptr null, i64 noundef %indvars.iv.i.a, ptr nonnull %.sroa.09.0.i326.i, i32 noundef 3)
  %i.hc = load i32, ptr %i.gj, align 4
  %.not.i183.i = icmp eq i32 %i.hc, 0
  br i1 %.not.i183.i, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit185.thread.i, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit185.i

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit185.thread.i: ; preds = %bb.s
  %i.hd = load ptr, ptr %i.gk, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.critedge139.i

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit185.i: ; preds = %bb.s
  %i.hf = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.not375.i = icmp eq ptr %i.hf, null
  br i1 %.not375.i, label %.critedge143.i, label %.critedge139.i

.critedge143.i:                                   ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit185.i
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i

.critedge139.i:                                   ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit185.i, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit185.thread.i
  %.sroa.0.0.i184355.i = phi ptr [ %i.he, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit185.thread.i ], [ %i.hf, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit185.i ] ; 3 uses
  %i.hh = load i64, ptr %.sroa.0.0.i184355.i, align 8 ; 2 uses
  %i.hi = trunc i64 %i.hh to i1
  br i1 %i.hi, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i188.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i188.i: ; preds = %.critedge139.i
  %i.hj = add nsw i64 %i.hh, -1
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = load atomic volatile i64, ptr %i.hk monotonic, align 8
  %i.hm = add i64 %i.hl, 11
  %i.hn = inttoptr i64 %i.hm to ptr
  %i.ho = load atomic volatile i16, ptr %i.hn monotonic, align 2
  %i.hp = icmp ult i16 %i.ho, 128
  br i1 %i.hp, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.thread.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.i

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i188.i, %.critedge139.i
  %i.hq = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i184355.i) #15 ; 2 uses
  %.not376.i = icmp eq ptr %i.hq, null
  br i1 %.not376.i, label %bb.t, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.thread.i

bb.t:                                             ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.i
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.thread.i: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i188.i
  %.sroa.07.0.i187359.i = phi ptr [ %i.hq, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.i ], [ %.sroa.0.0.i184355.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i188.i ]
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr nonnull %.sroa.07.0.i187359.i) #15
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %11 = add i32 %.0118380.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.a, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge149.i, label %bb.p, !llvm.loop !15

.critedge149.i:                                   ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit189.thread.i, %.critedge133.i, %bb.o
  %i.hs = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #15 ; 2 uses
  %.not377.i = icmp eq ptr %i.hs, null
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 912
  %spec.select.i = select i1 %.not377.i, ptr %i.ht, ptr %i.hs
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %.critedge149.i, %bb.t, %.critedge143.i, %.critedge137.i, %.critedge147.i, %.critedge145.i
  %.sroa.0242.4.in.i = phi ptr [ %i.hb, %.critedge137.i ], [ %i.fx, %.critedge145.i ], [ %i.gi, %.critedge147.i ], [ %i.hr, %bb.t ], [ %i.hg, %.critedge143.i ], [ %spec.select.i, %.critedge149.i ]
  %.sroa.0242.4.i = load i64, ptr %.sroa.0242.4.in.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.u

bb.u:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %bb.l, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.i, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_12DirectHandleIT_EE.exit.i, %bb.c
  %.sroa.0242.7.i = phi i64 [ %i.aa, %bb.c ], [ %i.bv, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %i.ch, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.i ], [ %.sroa.0242.4.i, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %i.eu, %bb.l ], [ %i.ed, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ]
  store ptr %i.c, ptr %i.b, align 8
  %i.hu = load i32, ptr %i.f, align 8
  %i.hv = add nsw i32 %i.hu, -1
  store i32 %i.hv, ptr %i.f, align 8
  %i.hw = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.hw, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL22Builtin_Impl_StringRawENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.v, !prof !10

bb.v:                                             ; preds = %bb.u
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br label %_ZN2v88internalL22Builtin_Impl_StringRawENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL22Builtin_Impl_StringRawENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.u, %bb.v
  ret i64 %.sroa.0242.7.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_113NextCodePointEPNS0_7IsolateENS0_16BuiltinArgumentsEi(ptr noundef %0, i64 %1, ptr %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %"class.v8::internal::DirectHandle.459"], align 8 ; 4 uses
  %i.a = add nsw i32 %3, 5
  %i.b = trunc i64 %1 to i32
  %.not.i = icmp ugt i32 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #12
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %bb.a
  %i.c = sub i32 -6, %3
  %i.d = sext i32 %i.c to i64
  %i.e = add i64 %1, %i.d
  %i.f = shl nsw i64 %i.e, 3
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.f
  %i.i = inttoptr i64 %i.h to ptr                 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = and i64 %i.j, 1
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.critedge.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.m = add nsw i64 %i.j, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 130
  br i1 %i.s, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i12, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.t = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %i.i) #15 ; 5 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %_ZN2v88internal14DoubleToUint32Ed.exit, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread31

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread31: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %i.t, align 8             ; 2 uses
  %.pre35 = and i64 %.pre, 1
  %i.u = icmp eq i64 %.pre35, 0
  br i1 %i.u, label %.critedge.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i12

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i12: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread31
  %.sroa.07.0.i293349 = phi ptr [ %i.t, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread31 ], [ %i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 7 uses
  %i.v = phi i64 [ %.pre, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread31 ], [ %i.j, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.w = add nsw i64 %i.v, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 130
  br i1 %i.ac, label %.critedge.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i12
  %i.ad = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = icmp eq i16 %i.ag, 130
  br i1 %i.ah, label %.critedge.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ai = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.07.0.i293349) #15 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ai, null
  br i1 %.not.i13, label %bb.k, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i12, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread31
  %.sroa.07.0.i293345 = phi ptr [ %i.t, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread31 ], [ %.sroa.07.0.i293349, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.07.0.i293349, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i12 ], [ %.sroa.07.0.i293349, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit ] ; 4 uses
  %.sroa.015.0.i = phi ptr [ %i.t, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread31 ], [ %i.ai, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.07.0.i293349, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i12 ], [ %.sroa.07.0.i293349, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit ] ; 2 uses
  %i.aj = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.015.0.i) #15 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.ak = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.al = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = lshr i64 %i.ak, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  br label %_ZNKR2v85MaybeIdE8FromJustEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aq = add nsw i64 %i.ak, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.as, align 1 ; 6 uses
  %or.cond.i.i.i = fcmp ueq double %.0.copyload.i.i.i.i.i.i, 0.000000e+00
  br i1 %or.cond.i.i.i, label %_ZNKR2v85MaybeIdE8FromJustEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i.i)
  %i.au = fcmp ueq double %i.at, +inf
  br i1 %i.au, label %_ZNKR2v85MaybeIdE8FromJustEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = fcmp ogt double %.0.copyload.i.i.i.i.i.i, 0.000000e+00
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call double @llvm.floor.f64(double %.0.copyload.i.i.i.i.i.i)
  br label %_ZNKR2v85MaybeIdE8FromJustEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ax = tail call double @llvm.ceil.f64(double %.0.copyload.i.i.i.i.i.i)
  %i.ay = fadd double %i.ax, 0.000000e+00
  br label %_ZNKR2v85MaybeIdE8FromJustEv.exit.i

bb.j:                                             ; preds = %.critedge.i
  tail call void @_ZN2v812api_internal17FromJustIsNothingEv() #15
  br label %_ZNKR2v85MaybeIdE8FromJustEv.exit.i

_ZNKR2v85MaybeIdE8FromJustEv.exit.i:              ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %.sroa.4.0.i48.i = phi double [ undef, %bb.j ], [ %i.ay, %bb.i ], [ %i.aw, %bb.h ], [ %.0.copyload.i.i.i.i.i.i, %bb.f ], [ 0.000000e+00, %bb.e ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = load i64, ptr %.sroa.015.0.i, align 8   ; 4 uses
  %i.ba = and i64 %i.az, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %_ZNKR2v85MaybeIdE8FromJustEv.exit.i
  %i.bc = lshr i64 %i.az, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = sitofp i32 %i.bd to double              ; 2 uses
  %i.bf = fcmp une double %.sroa.4.0.i48.i, %i.be
  %i.bg = icmp slt i64 %i.az, 0
  %or.cond.i = or i1 %i.bg, %i.bf
  br i1 %or.cond.i, label %bb.k, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit11.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i: ; preds = %_ZNKR2v85MaybeIdE8FromJustEv.exit.i
  %i.bh = add nsw i64 %i.az, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bj, align 1 ; 3 uses
  %i.bk = fcmp une double %.sroa.4.0.i48.i, %.0.copyload.i.i.i.i.i.i.i
  %i.bl = fcmp olt double %.0.copyload.i.i.i.i.i.i.i, 0.000000e+00
  %or.cond53.i = or i1 %i.bk, %i.bl
  br i1 %or.cond53.i, label %bb.k, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit11.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit11.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bm = phi double [ %i.be, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ %.0.copyload.i.i.i.i.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i ]
  %i.bn = fcmp ogt double %i.bm, f0x4130FFFF00000000
  br i1 %i.bn, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit

bb.k:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit11.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %.sroa.07.0.i293344 = phi ptr [ %.sroa.07.0.i293345, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i ], [ %.sroa.07.0.i293345, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ %.sroa.07.0.i293345, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit11.i ], [ %.sroa.07.0.i293349, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %.sroa.07.0.i293344, ptr %4, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 241, ptr nonnull %4, i64 1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bp, ptr noundef null) #15 ; 0 uses
  br label %_ZN2v88internal14DoubleToUint32Ed.exit

_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit11.i
  %i.br = load i64, ptr %.sroa.07.0.i293345, align 8 ; 3 uses
  %i.bs = and i64 %i.br, 1
  %i.bt = icmp eq i64 %i.bs, 0
end_hunk_1
