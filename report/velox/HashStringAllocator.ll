inline.NumInlined: 1426
inline.NumDeleted: 580
begin_hunk_0_@_ZN8facebook5velox19HashStringAllocator7newSlabEv:bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !211
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 37336
  %i.h = load i64, ptr %i.g, align 8, !tbaa !212
  %.not = icmp slt i64 %i.f, %i.h
  %i.i = select i1 %.not, i64 65536, i64 2097152  ; 3 uses
  %i.j = tail call noundef ptr @_ZN8facebook5velox6memory14AllocationPool13allocateFixedEmi(ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 noundef %i.i, i32 noundef 1) ; 4 uses
  %.not8 = icmp eq ptr %i.j, null
  br i1 %.not8, label %bb.c, label %bb.d, !prof !91
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox19HashStringAllocator7newSlabEv:bb.a
  resume { ptr, i32 } %i.x

_ZN8facebook5velox19HashStringAllocator5State12currentBytesEv.exit: ; preds = %_ZN8facebook5velox19HashStringAllocator5State4poolEv.exit12
  %3 = add nsw i64 %i.i, -32                      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  store i32 -256988403, ptr %i.ad, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 37216 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.ag = add i64 %i.af, %3
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !46
  %4 = trunc nuw nsw i64 %i.i to i32
  %5 = add nsw i32 %4, -36
  store i32 %5, ptr %i.j, align 4, !tbaa !7
  tail call void @_ZN8facebook5velox19HashStringAllocator4freeEPNS1_6HeaderE(ptr noundef nonnull align 8 dereferenceable(37384) %0, ptr noundef nonnull %i.j)
  ret void
}
end_hunk_1
