inline.NumInlined: 1020
inline.NumDeleted: 582
begin_hunk_0_@_ZN6hermes9IRBuilder25createHBCProfilePointInstEt:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN6hermes9IRBuilder21createCallBuiltinInstENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i8 noundef zeroext %1, ptr readonly captures(address) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #13 ; 25 uses
  %i.d = uitofp i8 %1 to double
  %4 = load ptr, ptr %0, align 8, !tbaa !7
  %i.e = tail call noundef ptr @_ZN6hermes6Module16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(1033) %4, double noundef %i.d) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 18
end_hunk_0
