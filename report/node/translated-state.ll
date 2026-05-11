inline.NumInlined: 2070
inline.NumDeleted: 743
begin_hunk_0_@_ZN2v88internal15TranslatedState20InitializeJSObjectAtEPNS0_15TranslatedFrameEPiPNS0_15TranslatedValueENS0_12DirectHandleINS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSB_2EEEE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15TranslatedState31EnsureCapturedObjectAllocatedAtEiPSt5stackIiSt5dequeIiSaIiEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(156) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
end_hunk_0
begin_hunk_1_@_ZN2v88internal15TranslatedState31EnsureCapturedObjectAllocatedAtEiPSt5stackIiSt5dequeIiSaIiEEE:bb.a

_ZNSt5dequeIN2v88internal15TranslatedValueESaIS2_EEixEm.exit: ; preds = %bb.j, %bb.m
  %storemerge.i.i.i.i84 = phi ptr [ %i.by, %bb.m ], [ %i.bp, %bb.j ] ; 20 uses
  %i.bz = add nsw i32 %.sroa.4.0.copyload, 1      ; 2 uses
  store i32 %i.bz, ptr %i.a, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i84, i64 1
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = icmp eq i8 %i.cb, 1
end_hunk_1
