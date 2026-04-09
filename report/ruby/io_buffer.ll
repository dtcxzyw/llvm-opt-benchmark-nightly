inline.NumInlined: 526
inline.NumDeleted: 106
begin_hunk_0_@rb_io_buffer_hexdump:bb.a
io_buffer_extract_width.exit:                     ; preds = %rb_num2ull_inline.exit.i, %rb_check_arity.exit
  %.013 = phi i64 [ 16, %rb_check_arity.exit ], [ %.0.i.i, %rb_num2ull_inline.exit.i ] ; 4 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %i.p = getelementptr i8, ptr %i.c, i64 8
  %.val = load i64, ptr %i.p, align 8, !tbaa !40  ; 2 uses
  %i.q = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.n, i64 %i.o) ; 2 uses
end_hunk_0
begin_hunk_1_@rb_io_buffer_hexdump:bb.a
  %i.ae = add i64 %i.ab, %i.ad
  %i.af = mul i64 %.013, 3
  %i.ag = add i64 %i.af, 13
  %i.ah = mul i64 %i.ae, %i.ag
  %3 = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 1)
  %spec.select.i.a = add i64 %i.ah, %3
  %i.ai = tail call i64 @rb_str_buf_new(i64 noundef %spec.select.i.a) #23 ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.ak = tail call fastcc i64 @io_buffer_hexdump(i64 noundef %i.ai, i64 noundef %.013, ptr noundef %i.aj, i64 noundef %i.s, i64 noundef %i.n, i32 noundef 1) ; 0 uses
  br label %bb.k
end_hunk_1
begin_hunk_2_@llvm.umax.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.bswap.i128(i128) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

end_hunk_2
