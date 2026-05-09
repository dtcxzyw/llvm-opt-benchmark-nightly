inline.NumInlined: 3392
inline.NumDeleted: 1471
begin_hunk_0_@_ZNK2v88internal9WasmFrame7IterateEPNS0_11RootVisitorE:bb.a
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = and i8 %i.g, -104
  %i.i = icmp eq i8 %i.h, -120                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.k = load i32, ptr %i.j, align 8
  %i.l = shl nsw i32 %i.k, 3
  %.neg = select i1 %i.i, i32 -40, i32 -32
  %i.m = add i32 %.neg, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %.neg51 = select i1 %i.i, i64 -24, i64 -16
end_hunk_0
begin_hunk_1_@_ZN2v88internal22ConstructStubFrameInfoC2EibNS0_13FrameInfoKindE:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal26FastConstructStubFrameInfoC2Eb(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = select i1 %1, i32 8, i32 0
  store i32 %i.a, ptr %0, align 4
  %2 = select i1 %1, i32 48, i32 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4
  ret void
end_hunk_1
