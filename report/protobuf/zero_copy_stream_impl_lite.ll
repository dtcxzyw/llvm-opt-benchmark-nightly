inline.NumInlined: 489
inline.NumDeleted: 209
begin_hunk_0_@_ZN6google8protobuf2io25CopyingInputStreamAdaptor4NextEPPKvPi:bb.a
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit.i, label %_ZN6google8protobuf2io25CopyingInputStreamAdaptor22AllocateBufferIfNeededEv.exit

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io25CopyingInputStreamAdaptor4NextEPPKvPi:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #27 ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !55
  br label %_ZN6google8protobuf2io25CopyingInputStreamAdaptor22AllocateBufferIfNeededEv.exit

_ZN6google8protobuf2io25CopyingInputStreamAdaptor22AllocateBufferIfNeededEv.exit: ; preds = %bb.b, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit.i
  %3 = phi ptr [ %i.e, %bb.b ], [ %i.i, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6google8protobuf2io25CopyingInputStreamAdaptor22AllocateBufferIfNeededEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !51
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %3, i64 %i.o
  %i.q = zext nneg i32 %i.k to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf2io25CopyingInputStreamAdaptor4NextEPPKvPi:bb.a

bb.d:                                             ; preds = %_ZN6google8protobuf2io25CopyingInputStreamAdaptor22AllocateBufferIfNeededEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !50
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %3, i32 noundef %i.w) ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !51
  %i.ac = icmp slt i32 %i.aa, 1
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf2io25CopyingInputStreamAdaptor4NextEPPKvPi:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io25CopyingInputStreamAdaptor22AllocateBufferIfNeededEv(ptr noundef nonnull align 8 captures(none) dereferenceable(52) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit.a, label %bb.b
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf2io25CopyingInputStreamAdaptor22AllocateBufferIfNeededEv:bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50
  %i.e = sext i32 %i.d to i64
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #27
  store ptr %i.f, ptr %i.a, align 8, !tbaa !55
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit.a, %bb.a
  ret void
}

end_hunk_4
begin_hunk_5_@_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv:bb.a
; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io26CopyingOutputStreamAdaptor4NextEPPvPi(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor11WriteBufferEv.exit

end_hunk_5
begin_hunk_6_@_ZN6google8protobuf2io26CopyingOutputStreamAdaptor4NextEPPvPi:bb.a
  %i.v = add nsw i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !66
  store i32 0, ptr %i.a, align 4, !tbaa !64
  %.pre.pre = load i32, ptr %i.c, align 8, !tbaa !63
  br label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor11WriteBufferEv.exit

bb.f:                                             ; preds = %bb.d
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf2io26CopyingOutputStreamAdaptor4NextEPPvPi:bb.a
  br label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor11WriteBufferEv.exit.thread

_ZN6google8protobuf2io26CopyingOutputStreamAdaptor11WriteBufferEv.exit: ; preds = %bb.e, %bb.c, %bb.a
  %.pre = phi i32 [ %.pre.pre, %bb.e ], [ 0, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %3 = phi i32 [ 0, %bb.e ], [ 0, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55   ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit.i, label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor22AllocateBufferIfNeededEv.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit.i: ; preds = %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor11WriteBufferEv.exit
  %i.z = sext i32 %.pre to i64
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #27 ; 2 uses
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !55
  br label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor22AllocateBufferIfNeededEv.exit

_ZN6google8protobuf2io26CopyingOutputStreamAdaptor22AllocateBufferIfNeededEv.exit: ; preds = %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor11WriteBufferEv.exit, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit.i
  %4 = phi ptr [ %i.y, %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor11WriteBufferEv.exit ], [ %i.aa, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit.i ]
  %i.ab = sext i32 %3 to i64
  %i.ac = getelementptr inbounds i8, ptr %4, i64 %i.ab
  store ptr %i.ac, ptr %1, align 8, !tbaa !18
  %i.ad = sub nsw i32 %.pre, %3
  store i32 %i.ad, ptr %2, align 4, !tbaa !3
  %i.ae = load i32, ptr %i.c, align 8, !tbaa !63
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !64
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf2io26CopyingOutputStreamAdaptor4NextEPPvPi:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io26CopyingOutputStreamAdaptor22AllocateBufferIfNeededEv(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit.a, label %bb.b
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf2io26CopyingOutputStreamAdaptor22AllocateBufferIfNeededEv:bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63
  %i.e = sext i32 %i.d to i64
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #27
  store ptr %i.f, ptr %i.a, align 8, !tbaa !55
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit.a, %bb.a
  ret void
}

end_hunk_9
