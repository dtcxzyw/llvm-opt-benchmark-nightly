inline.NumInlined: 188
inline.NumDeleted: 69
begin_hunk_0_@mbuf_add_view:bb.a

bb.k:                                             ; preds = %init_suboffsets.exit
  %i.dn = tail call i32 @PyBuffer_IsContiguous(ptr noundef nonnull %i.be, i8 noundef signext 67) #15
  %.not.i22 = icmp eq i32 %i.dn, 0                ; 2 uses
  %spec.select.i23 = select i1 %.not.i22, i32 0, i32 2
  %i.do = tail call i32 @PyBuffer_IsContiguous(ptr noundef nonnull %i.be, i8 noundef signext 70) #15
  %.not15.i = icmp eq i32 %i.do, 0
  %2 = select i1 %.not.i22, i32 4, i32 6
  %spec.select17.i = select i1 %.not15.i, i32 %spec.select.i23, i32 %2
  br label %init_flags.exit

end_hunk_0
begin_hunk_1_@PyMemoryView_GetContiguous:bb.a

init_flags.exit.i:                                ; preds = %init_strides_from_shape.exit.i
  %i.fy = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.av, i8 noundef signext 67) #15
  %.not.i51.i = icmp eq i32 %i.fy, 0              ; 2 uses
  %spec.select.i.i = select i1 %.not.i51.i, i32 0, i32 2
  %i.fz = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.av, i8 noundef signext 70) #15
  %.not15.i.i = icmp eq i32 %i.fz, 0
  %3 = select i1 %.not.i51.i, i32 4, i32 6
  %spec.select17.i.i = select i1 %.not15.i.i, i32 %spec.select.i.i, i32 %3
  %.pre.i = load ptr, ptr %i.fq, align 8, !tbaa !56
  %.pre.fr.i = freeze ptr %.pre.i
end_hunk_1
begin_hunk_2_@init_flags:bb.a
bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.n = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.m, i8 noundef signext 67) #15
  %.not = icmp eq i32 %i.n, 0                     ; 2 uses
  %spec.select = select i1 %.not, i32 0, i32 2
  %i.o = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.m, i8 noundef signext 70) #15
  %.not15 = icmp eq i32 %i.o, 0
  %1 = select i1 %.not, i32 4, i32 6
  %spec.select17 = select i1 %.not15, i32 %spec.select, i32 %1
  br label %bb.f

end_hunk_2
begin_hunk_3_@cast_to_ND:bb.a

bb.t:                                             ; preds = %bb.p
  %i.cq = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.a, i8 noundef signext 67) #15
  %.not.i22 = icmp eq i32 %i.cq, 0                ; 2 uses
  %spec.select.i = select i1 %.not.i22, i32 0, i32 2
  %i.cr = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.a, i8 noundef signext 70) #15
  %.not15.i = icmp eq i32 %i.cr, 0
  %3 = select i1 %.not.i22, i32 4, i32 6
  %spec.select17.i = select i1 %.not15.i, i32 %spec.select.i, i32 %3
  br label %init_flags.exit

end_hunk_3
