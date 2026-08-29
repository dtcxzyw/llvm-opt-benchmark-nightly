Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/logcat?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@logcat_seek_read
define internal noundef zeroext i1 @logcat_seek_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @file_seek(ptr noundef %i.b, i64 noundef %1, i32 noundef 0, ptr noundef %3)
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call fastcc zeroext i1 @logcat_read_packet(ptr noundef %0, ptr noundef %i.e, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %3, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -12, ptr %3, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @wtap_add_generated_idb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @register_logcat() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @wtap_register_file_type_subtype(ptr noundef nonnull @logcat_info) ; 2 uses
  store i32 %i.a, ptr @logcat_file_type_subtype, align 4
  tail call void @wtap_register_backwards_compatibility_lua_name(ptr noundef nonnull @.str, i32 noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_register_file_type_subtype(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @wtap_register_backwards_compatibility_lua_name(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes_or_eof(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare i64 @file_tell(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @logcat_read_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef %3, ptr noundef %4)
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val = load i16, ptr %i.a, align 2
  %i.e = load i32, ptr %i.c, align 4
  switch i32 %i.e, label %bb.f [
    i32 1, label %bb.d
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink36 = phi i32 [ 24, %bb.c ], [ 20, %bb.b ]
  %i.f = zext i16 %.val to i32
  %i.g = add nuw nsw i32 %.sink36, %i.f           ; 4 uses
  %i.h = getelementptr i8, ptr %2, i64 264        ; 4 uses
  %i.i = zext nneg i32 %i.g to i64
  call void @ws_buffer_assure_space(ptr noundef %i.h, i64 noundef %i.i)
  %.val34 = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %2, i64 280
  %.val35 = load i64, ptr %i.j, align 8
  call void @ws_buffer_append(ptr noundef %i.h, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.k = add nsw i32 %i.g, -2
  %i.l = call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %1, ptr noundef %i.h, i32 noundef %i.k, ptr noundef %3, ptr noundef %4)
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.val34, i64 %.val35 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 168
  %i.o = load i32, ptr %i.n, align 8
  call void @wtap_setup_packet_rec(ptr noundef %2, i32 noundef %i.o)
  %i.p = call ptr @wtap_block_create(i32 noundef 5)
  %i.q = getelementptr i8, ptr %2, i64 216
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %2, i64 4
  store i32 1, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %i.m, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr i8, ptr %2, i64 16
  store i64 %i.u, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.m, i64 16
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr i8, ptr %2, i64 24
  store i32 %i.x, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %2, i64 48
  store i32 %i.g, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %2, i64 52
  store i32 %i.g, ptr %i.aa, align 4
  %i.ab = load i32, ptr %i.c, align 4
  %i.ac = getelementptr i8, ptr %2, i64 64
  store i32 %i.ab, ptr %i.ac, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  %.031 = phi i1 [ true, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %.031
}

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_assure_space(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_append(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes_buffer(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_packet_rec(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_create(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal range(i32 -9, 1) i32 @logcat_dump_can_write_encap(i32 noundef %0) #7 {
bb.a:
  switch i32 %0, label %.fold.split [
    i32 -1, label %bb.c
    i32 163, label %bb.b
    i32 155, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.c

.fold.split:                                      ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.fold.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -9, %bb.a ], [ -8, %.fold.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @logcat_binary_dump_open(ptr nofree noundef writeonly captures(none) initializes((64, 72)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  store ptr @logcat_binary_dump, ptr %i.a, align 8
  ret i1 true
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @logcat_binary_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #3 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -24, ptr %2, align 4
  %i.b = tail call ptr @wtap_unwritable_rec_type_err_string(ptr noundef %1)
  store ptr %i.b, ptr %3, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 56
  %i.f = load i32, ptr %i.e, align 8
  %.not26 = icmp eq i32 %i.d, %i.f
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -9, ptr %2, align 4
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %1, i64 280
  %.val27 = load i64, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.val, i64 %.val27 ; 5 uses
  %i.l = icmp eq i32 %i.d, 155
  br i1 %i.l, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.m = zext i32 %i.h to i64
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 2 uses
  %i.o = getelementptr i8, ptr %i.k, i64 4
  %i.p = icmp ult ptr %i.o, %i.n
  br i1 %i.p, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %i.q = phi i32 [ %i.ag, %bb.g ], [ 0, %bb.f ]   ; 2 uses
  %.01316.i = phi ptr [ %i.ak, %bb.g ], [ %i.k, %bb.f ] ; 5 uses
  %.013.val.i = load i8, ptr %.01316.i, align 1
  %i.r = getelementptr i8, ptr %.01316.i, i64 1
  %.013.val15.i = load i8, ptr %i.r, align 1
  %i.s = or i8 %.013.val15.i, %.013.val.i
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr i8, ptr %.01316.i, i64 2
  %.val.i = load i8, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %.01316.i, i64 3
  %.val14.i = load i8, ptr %i.v, align 1
  %i.w = zext i8 %.val.i to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = zext i8 %.val14.i to i32
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = add nuw nsw i32 %i.z, 4                 ; 2 uses
  %i.ab = zext i32 %i.q to i33
  %i.ac = zext nneg i32 %i.aa to i33
  %i.ad = tail call { i33, i1 } @llvm.sadd.with.overflow.i33(i33 %i.ab, i33 %i.ac) ; 2 uses
  %i.ae = extractvalue { i33, i1 } %i.ad, 1
  %i.af = extractvalue { i33, i1 } %i.ad, 0       ; 2 uses
  %i.ag = trunc nuw i33 %i.af to i32
  %i.ah = icmp slt i33 %i.af, 0
  %i.ai = or i1 %i.ae, %i.ah
  %i.aj = zext nneg i32 %i.aa to i64
  %i.ak = getelementptr i8, ptr %.01316.i, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %i.am = icmp uge ptr %i.al, %i.n
  %or.cond.not.i = select i1 %i.ai, i1 true, i1 %i.am
  br i1 %or.cond.not.i, label %.critedge, label %.lr.ph.i, !llvm.loop !6

bb.h:                                             ; preds = %.lr.ph.i
  %i.an = add i32 %i.q, 4                         ; 3 uses
  %4 = icmp ult i32 %i.h, %i.an
  br i1 %4, label %.critedge, label %bb.i

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.h
  store i32 -13, ptr %2, align 4
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %5 = sub nuw i32 %i.h, %i.an
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr i8, ptr %i.k, i64 %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.2 = phi i32 [ %5, %bb.i ], [ %i.h, %bb.e ]
  %.1 = phi ptr [ %i.ap, %bb.i ], [ %i.k, %bb.e ]
  %i.aq = zext i32 %.2 to i64
  %i.ar = tail call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %.1, i64 noundef %i.aq, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.j, %bb.d, %bb.b
  %.225 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %.critedge ], [ %i.ar, %bb.j ]
  ret i1 %.225
}

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_unwritable_rec_type_err_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_dump_file_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
end_hunk_0
