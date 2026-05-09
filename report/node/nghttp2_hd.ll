inline.NumInlined: 156
inline.NumDeleted: 38
begin_hunk_0_@emit_indname_block:bb.a
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq i32 %3, 0                        ; 2 uses
  %i.c = add i64 %1, 1                            ; 4 uses
  %notmask.i = select i1 %i.b, i32 63, i32 15     ; 2 uses
  %i.d = zext nneg i32 %notmask.i to i64          ; 3 uses
  %i.e = icmp ult i64 %i.c, %i.d                  ; 2 uses
  br i1 %i.e, label %count_encoded_length.exit.thread, label %bb.b

end_hunk_0
begin_hunk_1_@emit_indname_block:bb.a
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 1048640, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %4 = select i1 %i.b, i8 64, i8 80
  %i.n = and i8 %4, %switch.masked                ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %switch.lookup
end_hunk_1
begin_hunk_2_@emit_indname_block:bb.a
  br label %encode_length.exit

bb.e:                                             ; preds = %switch.lookup
  %i.q = trunc nuw nsw i32 %notmask.i to i8
  %i.r = or i8 %i.n, %i.q
  store i8 %i.r, ptr %i.a, align 16, !tbaa !13
  %i.s = sub nuw i64 %i.c, %i.d                   ; 3 uses
end_hunk_2
