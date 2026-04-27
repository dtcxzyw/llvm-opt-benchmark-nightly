inline.NumInlined: 287
inline.NumDeleted: 159
begin_hunk_0_@_ZN12v8_inspector16V8DebuggerScript22getPossibleBreakpointsERKN2v85debug8LocationES5_bPSt6vectorINS2_13BreakLocationESaIS7_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ac = call noundef zeroext i1 @_ZNK2v85debug6Script22GetPossibleBreakpointsERKNS0_8LocationES4_bPSt6vectorINS0_13BreakLocationESaIS6_EE(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, ptr noundef nonnull align 4 dereferenceable(9) %1, ptr noundef nonnull align 4 dereferenceable(9) %2, i1 noundef zeroext %3, ptr noundef nonnull %6) #11 ; 2 uses
  %.pr.pre37 = load ptr, ptr %6, align 8          ; 6 uses
  br i1 %i.ac, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit
end_hunk_0
begin_hunk_1_@_ZN12v8_inspector16V8DebuggerScript22getPossibleBreakpointsERKN2v85debug8LocationES5_bPSt6vectorINS2_13BreakLocationESaIS7_EE:bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %.pr.pre37, i64 16, i1 false)
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %.pr.pre37 to i64
end_hunk_1
begin_hunk_2_@_ZNK12v8_inspector16V8DebuggerScript7buildIdEv:bb.a

.lr.ph:                                           ; preds = %_ZNKR2v85MaybeINS_10MemorySpanIKhEEE8FromJustEv.exit, %.lr.ph
  %.023 = phi i64 [ %i.bz, %.lr.ph ], [ 0, %_ZNKR2v85MaybeINS_10MemorySpanIKhEEE8FromJustEv.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.023
  %i.by = load i8, ptr %i.bx, align 1
  call void @_ZN12v8_inspector15String16Builder19appendUnsignedAsHexEh(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext %i.by) #11
  %i.bz = add nuw i64 %.023, 1                    ; 2 uses
end_hunk_2
