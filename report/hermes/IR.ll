inline.NumInlined: 3701
inline.NumDeleted: 2010
begin_hunk_0_@_ZN6hermes11Instruction13removeOperandEj
define hidden void @_ZN6hermes11Instruction13removeOperandEj(ptr noundef nonnull align 8 captures(none) dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = zext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !19
  %.idx2 = shl nuw nsw i64 %i.b, 4                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx2 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 6 uses
  %i.f = icmp eq ptr %i.e, null
end_hunk_0
begin_hunk_1_@_ZN6hermes11Instruction13removeOperandEj:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %.idx = shl nuw nsw i64 %i.al, 4
  %.neg = xor i64 %.idx2, -1
  %gepdiff = add nsw i64 %.idx, %.neg
  %i.am = ashr i64 %gepdiff, 4                    ; 5 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN4llvh15SmallVectorImplISt4pairIPN6hermes5ValueEjEE5eraseEPKS5_.exit

end_hunk_1
