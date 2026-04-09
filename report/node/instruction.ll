inline.NumInlined: 2270
inline.NumDeleted: 946
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi:bb.a
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi:bb.a
bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.l)
  %.pre.i = load ptr, ptr %i.d, align 8           ; 2 uses
  %.pre5 = ptrtoint ptr %.pre.i to i64
  %.pre = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %3 = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.c ]  ; 3 uses
  %.pre-phi = phi i64 [ %i.g, %bb.b ], [ %.pre5, %bb.c ]
  %i.q = phi ptr [ %i.e, %bb.b ], [ %.pre.i, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l ; 2 uses
  %i.s = icmp ult ptr %3, %i.r
  br i1 %i.s, label %.lr.ph.i.preheader, label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i
  %4 = ptrtoint ptr %3 to i64
  %i.t = add i64 %.pre-phi, %i.l
  %i.u = sub i64 %i.t, %4
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 5, i64 %i.u, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit

end_hunk_1
