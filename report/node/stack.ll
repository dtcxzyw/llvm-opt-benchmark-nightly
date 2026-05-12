inline.NumInlined: 29
inline.NumDeleted: 22
begin_hunk_0_@_ZNK4heap4base5Stack24IteratePointersInSegmentEPNS0_12StackVisitorENS1_7SegmentE:bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4heap4base5Stack37IteratePointersFromAddressUntilMarkerEPNS0_12StackVisitorEPKv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZNS1_25IteratePointersForTestingEPNS0_12StackVisitorEE3$_0EEvPS1_PvPKv":bb.a
  %3 = alloca %"class.heap::base::SuspendTagCheckingScope", align 1 ; 4 uses
  %4 = alloca %"struct.heap::base::Stack::Segment", align 16 ; 4 uses
  %5 = alloca %"class.heap::base::SuspendTagCheckingScope", align 1 ; 4 uses
  %6 = alloca %"struct.heap::base::Stack::Segment", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8                ; 4 uses
end_hunk_1
begin_hunk_2_@"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZNS1_25IteratePointersForTestingEPNS0_12StackVisitorEE3$_0EEvPS1_PvPKv":bb.a
"_ZZN4heap4base5Stack25IteratePointersForTestingEPNS0_12StackVisitorEENK3$_0clEv.exit": ; preds = %bb.d, %_ZNK4heap4base5Stack26IteratePointersUntilMarkerEPNS0_12StackVisitorE.exit.i
  call void @_ZN4heap4base23SuspendTagCheckingScopeD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

end_hunk_2
