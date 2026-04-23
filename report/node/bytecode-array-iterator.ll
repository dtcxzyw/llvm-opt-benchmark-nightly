inline.NumInlined: 190
inline.NumDeleted: 84
begin_hunk_0_@_ZNK2v88internal11interpreter21BytecodeArrayIterator26GetConstantForIndexOperandINS0_7IsolateEEENS0_6HandleINS0_6ObjectEEEiPT_:bb.a
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.j
  %i.v = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.u, i8 noundef zeroext %i.i, i8 noundef zeroext %i.l) #12
  %.sroa.0.0.copyload.i3.i = load ptr, ptr %0, align 8
  %i.w = load i64, ptr %.sroa.0.0.copyload.i3.i, align 8
  %i.x = add i64 %i.w, 39
end_hunk_0
begin_hunk_1_@_ZNK2v88internal11interpreter21BytecodeArrayIterator26GetConstantForIndexOperandINS0_7IsolateEEENS0_6HandleINS0_6ObjectEEEiPT_:bb.a
  br i1 %i.ak, label %bb.b, label %_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetConstantAtIndexINS0_7IsolateEEENS0_6HandleINS0_6ObjectEEEiPT_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #12
  br label %_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetConstantAtIndexINS0_7IsolateEEENS0_6HandleINS0_6ObjectEEEiPT_.exit

_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetConstantAtIndexINS0_7IsolateEEENS0_6HandleINS0_6ObjectEEEiPT_.exit: ; preds = %bb.a, %bb.b
end_hunk_1
begin_hunk_2_@_ZNK2v88internal11interpreter21BytecodeArrayIterator15GetIndexOperandEi:bb.a
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.j
  %i.v = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.u, i8 noundef zeroext %i.i, i8 noundef zeroext %i.l) #12
  ret i32 %i.v
}

end_hunk_2
begin_hunk_3_@_ZNK2v88internal11interpreter21BytecodeArrayIterator26GetConstantForIndexOperandINS0_12LocalIsolateEEENS0_6HandleINS0_6ObjectEEEiPT_:bb.a
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.j
  %i.v = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.u, i8 noundef zeroext %i.i, i8 noundef zeroext %i.l) #12
  %.sroa.0.0.copyload.i3.i = load ptr, ptr %0, align 8
  %i.w = load i64, ptr %.sroa.0.0.copyload.i3.i, align 8
  %i.x = add i64 %i.w, 39
end_hunk_3
begin_hunk_4_@_ZNK2v88internal11interpreter21BytecodeArrayIterator26GetConstantForIndexOperandINS0_12LocalIsolateEEENS0_6HandleINS0_6ObjectEEEiPT_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.aj, i64 noundef %i.af) #12
  br label %_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetConstantAtIndexINS0_12LocalIsolateEEENS0_6HandleINS0_6ObjectEEEiPT_.exit

bb.c:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_ZNK2v88internal11interpreter21BytecodeArrayIterator26GetConstantForIndexOperandINS0_12LocalIsolateEEENS0_6HandleINS0_6ObjectEEEiPT_:bb.a
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.am) #12
  %.pre.i = load ptr, ptr %i.am, align 8
  br label %bb.e

end_hunk_5
begin_hunk_6_@_ZN2v88internal11interpreter21BytecodeArrayIteratorC2ENS0_6HandleINS0_13BytecodeArrayEEEi:bb.a
bb.b:                                             ; preds = %bb.a
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr @_ZN2v88internal7Isolate22main_thread_local_heapEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.s) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.u = phi ptr [ %i.t, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  store ptr %i.u, ptr %i.o, align 8
  tail call void @_ZN2v88internal9LocalHeap21AddGCEpilogueCallbackEPFvPvES2_NS0_22GCCallbacksInSafepoint6GCTypeE(ptr noundef nonnull align 8 dereferenceable(1944) %i.u, ptr noundef nonnull @_ZN2v88internal11interpreter21BytecodeArrayIterator22UpdatePointersCallbackEPv, ptr noundef nonnull %0, i32 noundef 3) #12
  %i.v = load ptr, ptr %i.l, align 8              ; 5 uses
  %i.w = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i = icmp ult ptr %i.v, %i.w
end_hunk_6
begin_hunk_7_@_ZN2v88internal11interpreter21BytecodeArrayIteratorC2ENS0_6HandleINS0_13BytecodeArrayEEEi:bb.a
  br i1 %.not.i3, label %_ZN2v88internal11interpreter21BytecodeArrayIterator9AdvanceToEi.exit, label %bb.g, !llvm.loop !8

.critedge.i:                                      ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  unreachable

_ZN2v88internal11interpreter21BytecodeArrayIterator9AdvanceToEi.exit: ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i, %bb.f, %_ZN2v88internal11interpreter21BytecodeArrayIterator18UpdateOperandScaleEv.exit
end_hunk_7
begin_hunk_8_@_ZN2v88internal11interpreter21BytecodeArrayIterator9AdvanceToEi:bb.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !8

.critedge:                                        ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  unreachable

._crit_edge:                                      ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit, %bb.a
end_hunk_8
begin_hunk_9_@_ZN2v88internal11interpreter21BytecodeArrayIteratorC2ENS0_6HandleINS0_13BytecodeArrayEEEiRNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE:bb.a
  br i1 %.not.i2, label %_ZN2v88internal11interpreter21BytecodeArrayIterator9AdvanceToEi.exit, label %.lr.ph.i, !llvm.loop !8

.critedge.i:                                      ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  unreachable

_ZN2v88internal11interpreter21BytecodeArrayIterator9AdvanceToEi.exit: ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i, %bb.c, %_ZN2v88internal11interpreter21BytecodeArrayIterator18UpdateOperandScaleEv.exit
end_hunk_9
begin_hunk_10_@_ZN2v88internal11interpreter21BytecodeArrayIteratorD2Ev:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9LocalHeap24RemoveGCEpilogueCallbackEPFvPvES2_(ptr noundef nonnull align 8 dereferenceable(1944) %i.b, ptr noundef nonnull @_ZN2v88internal11interpreter21BytecodeArrayIterator22UpdatePointersCallbackEPv, ptr noundef nonnull %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_10
begin_hunk_11_@_ZN2v88internal11interpreter21BytecodeArrayIterator9SetOffsetEi:bb.a
  br i1 %.not.i, label %_ZN2v88internal11interpreter21BytecodeArrayIterator9AdvanceToEi.exit, label %bb.e, !llvm.loop !8

.critedge.i:                                      ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  unreachable

_ZN2v88internal11interpreter21BytecodeArrayIterator9AdvanceToEi.exit: ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i, %_ZN2v88internal11interpreter21BytecodeArrayIterator5ResetEv.exit
end_hunk_11
begin_hunk_12_@_ZN2v88internal11interpreter21BytecodeArrayIterator13IsValidOffsetENS0_6HandleINS0_13BytecodeArrayEEEi
define hidden noundef zeroext i1 @_ZN2v88internal11interpreter21BytecodeArrayIterator13IsValidOffsetENS0_6HandleINS0_13BytecodeArrayEEEi(ptr %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::interpreter::BytecodeArrayIterator", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8                ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN2v88internal11interpreter21BytecodeArrayIterator13IsValidOffsetENS0_6HandleINS0_13BytecodeArrayEEEi:bb.a
bb.b:                                             ; preds = %bb.a
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr @_ZN2v88internal7Isolate22main_thread_local_heapEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.r) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %i.s, %bb.b ], [ %i.p, %bb.a ] ; 2 uses
  store ptr %i.t, ptr %i.n, align 8
  call void @_ZN2v88internal9LocalHeap21AddGCEpilogueCallbackEPFvPvES2_NS0_22GCCallbacksInSafepoint6GCTypeE(ptr noundef nonnull align 8 dereferenceable(1944) %i.t, ptr noundef nonnull @_ZN2v88internal11interpreter21BytecodeArrayIterator22UpdatePointersCallbackEPv, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef 3) #12
  %i.u = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.v = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not.i.i = icmp ult ptr %i.u, %i.v
end_hunk_13
begin_hunk_14_@_ZN2v88internal11interpreter21BytecodeArrayIterator13IsValidOffsetENS0_6HandleINS0_13BytecodeArrayEEEi:bb.a
  br i1 %.not.i13, label %_ZN2v88internal11interpreter21BytecodeArrayIteratorD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  call void @_ZN2v88internal9LocalHeap24RemoveGCEpilogueCallbackEPFvPvES2_(ptr noundef nonnull align 8 dereferenceable(1944) %i.az, ptr noundef nonnull @_ZN2v88internal11interpreter21BytecodeArrayIterator22UpdatePointersCallbackEPv, ptr noundef nonnull align 8 dereferenceable(48) %2) #12
  br label %_ZN2v88internal11interpreter21BytecodeArrayIteratorD2Ev.exit

_ZN2v88internal11interpreter21BytecodeArrayIteratorD2Ev.exit: ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %not.
}

end_hunk_14
begin_hunk_15_@_ZN2v88internal11interpreter21BytecodeArrayIterator21IsValidOSREntryOffsetENS0_6HandleINS0_13BytecodeArrayEEEi
define hidden noundef zeroext i1 @_ZN2v88internal11interpreter21BytecodeArrayIterator21IsValidOSREntryOffsetENS0_6HandleINS0_13BytecodeArrayEEEi(ptr %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::interpreter::BytecodeArrayIterator", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN2v88internal11interpreter21BytecodeArrayIteratorC2ENS0_6HandleINS0_13BytecodeArrayEEEi(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8
end_hunk_15
begin_hunk_16_@_ZN2v88internal11interpreter21BytecodeArrayIterator21IsValidOSREntryOffsetENS0_6HandleINS0_13BytecodeArrayEEEi:bb.a
  br i1 %.not.i, label %_ZN2v88internal11interpreter21BytecodeArrayIteratorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v88internal9LocalHeap24RemoveGCEpilogueCallbackEPFvPvES2_(ptr noundef nonnull align 8 dereferenceable(1944) %i.e, ptr noundef nonnull @_ZN2v88internal11interpreter21BytecodeArrayIterator22UpdatePointersCallbackEPv, ptr noundef nonnull align 8 dereferenceable(48) %2) #12
  br label %_ZN2v88internal11interpreter21BytecodeArrayIteratorD2Ev.exit

_ZN2v88internal11interpreter21BytecodeArrayIteratorD2Ev.exit: ; preds = %bb.a, %bb.b
  %i.f = icmp eq i8 %i.c, -107
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %i.f
}

end_hunk_16
begin_hunk_17_@_ZN2v88internal11interpreter21BytecodeArrayIterator15ApplyDebugBreakEv:bb.a
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN2v88internal11interpreter9Bytecodes12IsDebugBreakENS1_8BytecodeE(i8 noundef zeroext %i.h) #12
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i8 @_ZN2v88internal11interpreter9Bytecodes13GetDebugBreakENS1_8BytecodeE(i8 noundef zeroext %i.h) #12
  store i8 %i.j, ptr %i.g, align 1
  br label %bb.c

end_hunk_17
begin_hunk_18_@_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetUnsignedOperandEiNS1_11OperandTypeE:bb.a
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = add i64 %i.p, %i.c
  %i.r = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.q, i8 noundef zeroext %2, i8 noundef zeroext %i.f) #12
  ret i32 %i.r
}

end_hunk_18
begin_hunk_19_@_ZNK2v88internal11interpreter21BytecodeArrayIterator16GetSignedOperandEiNS1_11OperandTypeE:bb.a
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = add i64 %i.p, %i.c
  %i.r = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder19DecodeSignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.q, i8 noundef zeroext %2, i8 noundef zeroext %i.f) #12
  ret i32 %i.r
}

end_hunk_19
begin_hunk_20_@_ZNK2v88internal11interpreter21BytecodeArrayIterator15GetFlag8OperandEi:bb.a
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = add i64 %i.p, %i.c
  %i.r = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.q, i8 noundef zeroext 1, i8 noundef zeroext %i.f) #12
  ret i32 %i.r
}

end_hunk_20
begin_hunk_21_@_ZNK2v88internal11interpreter21BytecodeArrayIterator16GetFlag16OperandEi:bb.a
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = add i64 %i.p, %i.c
  %i.r = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.q, i8 noundef zeroext 2, i8 noundef zeroext %i.f) #12
  ret i32 %i.r
}

end_hunk_21
begin_hunk_22_@_ZNK2v88internal11interpreter21BytecodeArrayIterator27GetUnsignedImmediateOperandEi:bb.a
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = add i64 %i.p, %i.c
  %i.r = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.q, i8 noundef zeroext 7, i8 noundef zeroext %i.f) #12
  ret i32 %i.r
}

end_hunk_22
begin_hunk_23_@_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetImmediateOperandEi:bb.a
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = add i64 %i.p, %i.c
  %i.r = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder19DecodeSignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.q, i8 noundef zeroext 9, i8 noundef zeroext %i.f) #12
  ret i32 %i.r
}

end_hunk_23
begin_hunk_24_@_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi:bb.a
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = add i64 %i.p, %i.c
  %i.r = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.q, i8 noundef zeroext 8, i8 noundef zeroext %i.f) #12
  ret i32 %i.r
}

end_hunk_24
begin_hunk_25_@_ZNK2v88internal11interpreter21BytecodeArrayIterator14GetSlotOperandEi:bb.a
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.j
  %i.v = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.u, i8 noundef zeroext %i.i, i8 noundef zeroext %i.l) #12
  ret i32 %i.v
}

end_hunk_25
begin_hunk_26_@_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi:bb.a
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.j
  %i.v = tail call i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeRegisterOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.u, i8 noundef zeroext %i.i, i8 noundef zeroext %i.l) #12
  ret i32 %i.v
}

end_hunk_26
begin_hunk_27_@_ZNK2v88internal11interpreter21BytecodeArrayIterator21GetStarTargetRegisterEv:bb.a
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %i.u, %i.l
  %i.w = tail call i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeRegisterOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.v, i8 noundef zeroext %i.k, i8 noundef zeroext %i.n) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_27
begin_hunk_28_@_ZNK2v88internal11interpreter21BytecodeArrayIterator22GetRegisterPairOperandEi:bb.a
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.j
  %i.v = tail call i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeRegisterOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.u, i8 noundef zeroext %i.i, i8 noundef zeroext %i.l) #12 ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  %.sroa.2.0.insert.ext.i = zext i32 %i.w to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
end_hunk_28
begin_hunk_29_@_ZNK2v88internal11interpreter21BytecodeArrayIterator22GetRegisterListOperandEi:bb.a
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.j
  %i.v = tail call i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeRegisterOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.u, i8 noundef zeroext %i.i, i8 noundef zeroext %i.l) #12
  %i.w = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = load i8, ptr %i.w, align 1
end_hunk_29
begin_hunk_30_@_ZNK2v88internal11interpreter21BytecodeArrayIterator22GetRegisterListOperandEi:bb.a
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add i64 %i.aj, %i.x
  %i.al = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.ak, i8 noundef zeroext 8, i8 noundef zeroext %i.z) #12
  %.sroa.2.0.insert.ext = zext i32 %i.al to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.03.0.insert.ext = zext i32 %i.v to i64
end_hunk_30
begin_hunk_31_@_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterOperandRangeEi:bb.a
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %i.u, %i.j
  %i.w = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.v, i8 noundef zeroext 8, i8 noundef zeroext %i.l) #12
  br label %_ZN2v88internal11interpreter9Bytecodes33GetNumberOfRegistersRepresentedByENS1_11OperandTypeE.exit

bb.c:                                             ; preds = %bb.a, %bb.a
end_hunk_31
begin_hunk_32_@_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetRuntimeIdOperandEi:bb.a
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.j
  %i.v = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.u, i8 noundef zeroext %i.i, i8 noundef zeroext %i.l) #12
  ret i32 %i.v
}

end_hunk_32
begin_hunk_33_@_ZNK2v88internal11interpreter21BytecodeArrayIterator28GetNativeContextIndexOperandEi:bb.a
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.j
  %i.v = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.u, i8 noundef zeroext %i.i, i8 noundef zeroext %i.l) #12
  ret i32 %i.v
}

end_hunk_33
begin_hunk_34_@_ZNK2v88internal11interpreter21BytecodeArrayIterator21GetIntrinsicIdOperandEi:bb.a
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.j
  %i.v = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.u, i8 noundef zeroext %i.i, i8 noundef zeroext %i.l) #12
  %i.w = tail call noundef i32 @_ZN2v88internal11interpreter16IntrinsicsHelper11ToRuntimeIdENS2_11IntrinsicIdE(i32 noundef %i.v) #12
  ret i32 %i.w
}

declare noundef i32 @_ZN2v88internal11interpreter16IntrinsicsHelper11ToRuntimeIdENS2_11IntrinsicIdE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal11interpreter21BytecodeArrayIterator20IsConstantAtIndexSmiEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.sroa.0.0.copyload.i1 = load ptr, ptr %0, align 8
end_hunk_34
begin_hunk_35_@_ZNK2v88internal11interpreter21BytecodeArrayIterator20IsConstantAtIndexSmiEi:bb.a
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetConstantAtIndexAsSmiEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.sroa.0.0.copyload.i3 = load ptr, ptr %0, align 8
end_hunk_35
begin_hunk_36_@_ZNK2v88internal11interpreter21BytecodeArrayIterator27GetRelativeJumpTargetOffsetEv:bb.a
  %i.q = load i32, ptr %i.p, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = add i64 %i.r, %i.h
  %i.t = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.s, i8 noundef zeroext 7, i8 noundef zeroext %i.j) #12 ; 2 uses
  %i.u = icmp eq i8 %i.c, -107
  %i.v = sub nsw i32 0, %i.t
  %spec.select = select i1 %i.u, i32 %i.v, i32 %i.t
end_hunk_36
begin_hunk_37_@_ZNK2v88internal11interpreter21BytecodeArrayIterator27GetRelativeJumpTargetOffsetEv:bb.a
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = sext i32 %i.ak to i64
  %i.am = add i64 %i.al, %i.ac
  %i.an = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.am, i8 noundef zeroext %i.ab, i8 noundef zeroext %i.ae) #12
  %.sroa.0.0.copyload.i3.i = load ptr, ptr %0, align 8
  %i.ao = load i64, ptr %.sroa.0.0.copyload.i3.i, align 8
  %i.ap = add i64 %i.ao, 39
end_hunk_37
begin_hunk_38_@_ZNK2v88internal11interpreter21BytecodeArrayIterator27GetRelativeJumpTargetOffsetEv:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #13
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
end_hunk_38
begin_hunk_39_@_ZNK2v88internal11interpreter21BytecodeArrayIterator25GetJumpTableTargetOffsetsEv:bb.a
  %i.q = load i32, ptr %i.p, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = add i64 %i.r, %i.h
  %i.t = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.s, i8 noundef zeroext %i.g, i8 noundef zeroext %i.j) #12
  %i.u = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = load i8, ptr %i.u, align 1
end_hunk_39
begin_hunk_40_@_ZNK2v88internal11interpreter21BytecodeArrayIterator25GetJumpTableTargetOffsetsEv:bb.a
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = add i64 %i.ag, %i.v
  %i.ai = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.ah, i8 noundef zeroext 7, i8 noundef zeroext %i.x) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_40
begin_hunk_41_@_ZNK2v88internal11interpreter21BytecodeArrayIterator25GetJumpTableTargetOffsetsEv:bb.a
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %i.aw, %i.an
  %i.ay = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.ax, i8 noundef zeroext %i.am, i8 noundef zeroext %i.ap) #12
  %i.az = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = load i8, ptr %i.az, align 1
end_hunk_41
begin_hunk_42_@_ZNK2v88internal11interpreter21BytecodeArrayIterator25GetJumpTableTargetOffsetsEv:bb.a
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = sext i32 %i.bk to i64
  %i.bm = add i64 %i.bl, %i.ba
  %i.bn = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder21DecodeUnsignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.bm, i8 noundef zeroext 7, i8 noundef zeroext %i.bc) #12
  %i.bo = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = load i8, ptr %i.bo, align 1
end_hunk_42
begin_hunk_43_@_ZNK2v88internal11interpreter21BytecodeArrayIterator25GetJumpTableTargetOffsetsEv:bb.a
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add i64 %i.ca, %i.bp
  %i.cc = tail call noundef i32 @_ZN2v88internal11interpreter15BytecodeDecoder19DecodeSignedOperandEmNS1_11OperandTypeENS1_12OperandScaleE(i64 noundef %i.cb, i8 noundef zeroext 9, i8 noundef zeroext %i.br) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_43
begin_hunk_44_@_ZNK2v88internal11interpreter21BytecodeArrayIterator7PrintToERSo:bb.a
  %i.e = sext i32 %i.d to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal11interpreter15BytecodeDecoder6DecodeERSoPKhb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.g, i1 noundef zeroext true) #12
  ret ptr %i.h
}

end_hunk_44
begin_hunk_45_@_ZN2v88internal11interpreter22JumpTableTargetOffsetsC2EPKNS1_21BytecodeArrayIteratorEiii:bb.a
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZNK2v88internal11interpreter22JumpTableTargetOffsets5beginEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.v8::internal::interpreter::JumpTableTargetOffsets::iterator") align 8 captures(none) initializes((0, 28)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
end_hunk_45
begin_hunk_46_@_ZNK2v88internal11interpreter22JumpTableTargetOffsets5beginEv:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK2v88internal11interpreter22JumpTableTargetOffsets3endEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.v8::internal::interpreter::JumpTableTargetOffsets::iterator") align 8 captures(none) initializes((0, 28)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_46
begin_hunk_47_@_ZNK2v88internal11interpreter22JumpTableTargetOffsets3endEv:bb.a
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal11interpreter22JumpTableTargetOffsets4sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noalias !12 ; 4 uses
end_hunk_47
begin_hunk_48_@_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratordeEv:bb.a
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorppEv(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
end_hunk_48
begin_hunk_49_@_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorppEv:bb.a
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 28)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #7 align 2 {
bb.a:
  store ptr %4, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_49
begin_hunk_50_@_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE:bb.a
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal11interpreter22JumpTableTargetOffsets8iterator23UpdateAndAdvanceToValidEv(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_50
begin_hunk_51_@_ZN2v88internal11interpreter22JumpTableTargetOffsets8iterator23UpdateAndAdvanceToValidEv:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

end_hunk_51
begin_hunk_52_@_ZN2v88internal12LocalHandles8AddBlockEv
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
end_hunk_52
