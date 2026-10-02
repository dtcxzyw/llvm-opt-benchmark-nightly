Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/capinfos?download=true
inline.NumInlined: 134
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@count_ipv4_address:bb.a
; Function Attrs: null_pointer_is_valid
declare void @wtap_set_cb_new_ipv6(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @count_ipv6_address(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i1 zeroext %2) #6 {
bb.a:
  %i.a = load i32, ptr @num_ipv6_addresses, align 4
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr @num_ipv6_addresses, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @wtap_set_cb_new_secrets(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @count_decryption_secret(i32 %0, ptr nofree readnone captures(none) %1, i32 %2) #6 {
bb.a:
  %i.a = load i32, ptr @num_decryption_secrets, align 4
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr @num_decryption_secrets, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @wtap_rec_init(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare i32 @nstime_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_count_option(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_get_nth_string_option_value(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_rec_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_rec_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_get_debug_if_descr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_array_append_vals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @report_cfile_read_failure(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @cleanup_capture_info(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.b)
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 208        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @g_array_free(ptr noundef %i.d, i32 noundef 1) ; 0 uses
  store ptr null, ptr %i.c, align 8
  %i.f = getelementptr i8, ptr %0, i64 224        ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %.not27 = icmp eq i32 %i.i, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.j = phi ptr [ %i.n, %.lr.ph ], [ %i.g, %.preheader ]
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @g_free(ptr noundef %i.m)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi ptr [ %i.g, %.preheader ], [ %i.n, %.lr.ph ]
  %i.s = tail call ptr @g_array_free(ptr noundef %.lcssa, i32 noundef 1) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  store ptr null, ptr %i.f, align 8
  %i.t = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not2022 = icmp eq ptr %i.u, null
  br i1 %.not2022, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.b, %.lr.ph25
  %.023 = phi ptr [ %i.y, %.lr.ph25 ], [ %i.u, %bb.b ] ; 3 uses
  %i.v = getelementptr i8, ptr %.023, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @g_free(ptr noundef %i.w)
  %i.x = getelementptr i8, ptr %.023, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  tail call void @g_free(ptr noundef nonnull %.023)
  %.not20 = icmp eq ptr %i.y, null
  br i1 %.not20, label %._crit_edge26, label %.lr.ph25, !llvm.loop !29

._crit_edge26:                                    ; preds = %.lr.ph25, %bb.b
  store ptr null, ptr %i.t, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @wtap_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @wtap_file_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @g_strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_file_type_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_get_compression_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_file_encap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_file_tsprec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_snapshot_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @nstime_delta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: alwaysinline nobuiltin null_pointer_is_valid sspstrong uwtable
declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_ctl(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_md_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare ptr @g_array_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define internal void @print_stats_table_header_label(ptr noundef %0, ...) unnamed_addr #11 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = load i8, ptr @field_separator, align 1
  %i.b = zext nneg i8 %i.a to i32
  %i.c = load ptr, ptr @stdout, align 8
  %i.d = tail call i32 @putc(i32 noundef %i.b, ptr noundef %i.c), !inline_history !0 ; 0 uses
  %i.e = load i8, ptr @quote_char, align 1        ; 2 uses
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %putquote.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i8 %i.e to i32
  %i.g = load ptr, ptr @stdout, align 8
  %i.h = tail call i32 @putc(i32 noundef %i.f, ptr noundef %i.g), !inline_history !0 ; 0 uses
  br label %putquote.exit

putquote.exit:                                    ; preds = %bb.a, %bb.b
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.i = load ptr, ptr @stdout, align 8, !noalias !32
  %i.j = call i32 @__vfprintf_chk(ptr noundef %i.i, i32 noundef 2, ptr noundef %0, ptr noundef nonnull %1) #15 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.k = load i8, ptr @quote_char, align 1        ; 2 uses
  %.not.i1 = icmp eq i8 %i.k, 0
  br i1 %.not.i1, label %putquote.exit2, label %bb.c

bb.c:                                             ; preds = %putquote.exit
  %i.l = zext nneg i8 %i.k to i32
  %i.m = load ptr, ptr @stdout, align 8
  %i.n = call i32 @putc(i32 noundef %i.l, ptr noundef %i.m), !inline_history !0 ; 0 uses
  br label %putquote.exit2

putquote.exit2:                                   ; preds = %putquote.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: null_pointer_is_valid
declare i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_file_type_subtype_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_encap_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_file_type_subtype_description(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_encap_description(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ws_compression_type_description(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_tsprec_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @format_size_wmem(ptr noundef, i64 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @relative_time_string(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = select i1 %3, ptr @.str.148, ptr @.str.13
  %i.b = getelementptr i8, ptr %2, i64 48
  %i.c = load i8, ptr %i.b, align 8, !range !9, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 100
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8
  %i.h = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull @relative_time_string.time_string_buf, i64 noundef 39, i32 noundef 2, i64 noundef 39, ptr noundef nonnull @.str.150, i64 noundef %i.g) ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull @relative_time_string.time_string_buf, i64 noundef 39, i32 noundef 2, i64 noundef 39, ptr noundef nonnull @.str.151) ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.k = icmp samesign ugt i32 %i.h, 38
  br i1 %i.k, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = zext nneg i32 %i.h to i64                ; 4 uses
  %i.m = getelementptr i8, ptr @relative_time_string.time_string_buf, i64 %i.l ; 3 uses
  %i.n = sub nuw nsw i64 39, %i.l                 ; 4 uses
  %.not40 = icmp eq i32 %1, 0
  br i1 %.not40, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = load ptr, ptr @decimal_point, align 8
  %i.r = tail call i32 @format_fractional_part_nsecs(ptr noundef %i.m, i64 noundef %i.n, i32 noundef %i.p, ptr noundef %i.q, i32 noundef %1) ; 2 uses
  %i.s = zext i32 %i.r to i64
  %.not41 = icmp samesign ugt i64 %i.n, %i.s
  br i1 %.not41, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.t = sext i32 %i.r to i64                     ; 3 uses
  %i.u = add nsw i64 %i.t, %i.l
  %i.v = getelementptr i8, ptr %i.m, i64 %i.t
  %i.w = sub nsw i64 %i.n, %i.t
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.x = phi i64 [ %i.u, %bb.h ], [ %i.l, %bb.f ]
  %.035 = phi ptr [ %i.v, %bb.h ], [ %i.m, %bb.f ]
  %.0 = phi i64 [ %i.w, %bb.h ], [ %i.n, %bb.f ]
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 39, i64 %i.x)
  %i.z = load i64, ptr %0, align 8
  %i.aa = icmp ne i64 %i.z, 1
  %.not43 = and i1 %3, %i.aa
  %i.ab = select i1 %.not43, ptr @.str.149, ptr @.str.13
  %i.ac = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %.035, i64 noundef %.0, i32 noundef 2, i64 noundef %i.y, ptr noundef nonnull @.str.152, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ab) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.ad = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull @relative_time_string.time_string_buf, i64 noundef 39, i32 noundef 2, i64 noundef 39, ptr noundef nonnull @.str.153) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.i, %bb.e, %bb.g, %bb.j
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_file_get_num_shbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_file_get_shb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_get_string_option_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strescape(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @format_fractional_part_nsecs(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @display_epoch_time(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @format_nstime_as_iso8601(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { alwaysinline nobuiltin null_pointer_is_valid sspstrong uwtable "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { allocsize(0) }
attributes #17 = { allocsize(0,1) }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{null}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, i1 false, !"vprintf.inline"}
!31 = distinct !{!31, !30, !"vprintf.inline: argument 0"}
!32 = !{!31}
end_hunk_0
