Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-epl?download=true
inline.NumInlined: 77
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@device_profile_list_uats_path_tostr_cb:bb.a
  store i8 0, ptr %i.f, align 1
  store ptr %i.f, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit8
  %storemerge = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.e, %g_strdup_inline.exit8 ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou16(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_hexstrtou32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @epl_uat_fld_cn_check_cb(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #3 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call zeroext i1 @ws_strtou8(ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.a)
  %i.c = load i8, ptr %i.a, align 1
  %i.d = add i8 %i.c, -1
  %i.e = icmp ult i8 %i.d, -17
  %or.cond5 = select i1 %i.b, i1 %i.e, i1 false
  br i1 %or.cond5, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @g_byte_array_new()             ; 4 uses
  %i.g = call zeroext i1 @hex_str_to_bytes(ptr noundef %1, ptr noundef %i.f, i1 noundef zeroext false)
  br i1 %i.g, label %bb.c, label %g_strdup_inline.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 6
  br i1 %i.j, label %bb.d, label %g_strdup_inline.exit

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @g_byte_array_free(ptr noundef %i.f, i32 noundef 1) ; 0 uses
  br label %bb.e

g_strdup_inline.exit:                             ; preds = %bb.c, %bb.b
  %i.l = call ptr @g_byte_array_free(ptr noundef %i.f, i32 noundef 1) ; 0 uses
  %i.m = call noalias dereferenceable_or_null(67) ptr @g_malloc(i64 noundef 67) #24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(67) %i.m, ptr noundef nonnull align 1 dereferenceable(67) @.str.1142, i64 noundef 67, i1 noundef false) #22
  store ptr %i.m, ptr %5, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %g_strdup_inline.exit, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ false, %g_strdup_inline.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @nodeid_profile_list_uats_nodeid_set_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #3 {
bb.a:
  %i.a = tail call ptr @g_byte_array_new()        ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = or i8 %i.c, 1
  store i8 %i.d, ptr %i.b, align 8
  %i.e = tail call zeroext i1 @hex_str_to_bytes(ptr noundef %1, ptr noundef %i.a, i1 noundef zeroext false)
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 6
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.i, align 8
  %i.k = tail call dereferenceable_or_null(6) ptr @wmem_memdup(ptr noundef null, ptr noundef %i.j, i64 noundef 6) #23 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 32
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %0, i64 20
  store i32 6, ptr %i.n, align 4
  %i.o = load i8, ptr %i.b, align 8
  %i.p = and i8 %i.o, -2
  store i8 %i.p, ptr %i.b, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.r = tail call zeroext i1 @ws_strtou8(ptr noundef %1, ptr noundef null, ptr noundef %i.q)
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.s = tail call ptr @g_byte_array_free(ptr noundef %i.a, i32 noundef 1) ; 0 uses
  %i.t = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @g_free(ptr noundef %i.u)
  %i.v = zext i32 %2 to i64
  %i.w = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.v)
  store ptr %i.w, ptr %i.t, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @nodeid_profile_list_uats_nodeid_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %g_strdup_inline.exit, label %g_strdup_inline.exit9

g_strdup_inline.exit9:                            ; preds = %bb.a
  %i.c = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.b)
  store ptr %i.c, ptr %1, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #20
  %i.f = trunc i64 %i.e to i32
  br label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #24 ; 2 uses
  store i8 0, ptr %i.g, align 1
  store ptr %i.g, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit9
  %storemerge = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.f, %g_strdup_inline.exit9 ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @nodeid_profile_list_uats_path_set_cb(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #3 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a)
  %i.c = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.c)
  store ptr %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @nodeid_profile_list_uats_path_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %g_strdup_inline.exit, label %g_strdup_inline.exit8

g_strdup_inline.exit8:                            ; preds = %bb.a
  %i.b = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.a)
  store ptr %i.b, ptr %1, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i64 @strlen(ptr noundef %i.c) #20
  %i.e = trunc i64 %i.d to i32
  br label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #24 ; 2 uses
  store i8 0, ptr %i.f, align 1
  store ptr %i.f, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit8
  %storemerge = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.e, %g_strdup_inline.exit8 ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_new() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @hex_str_to_bytes(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_free(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @epl_duplication_hash(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = load i8, ptr %0, align 1
  %2 = zext i8 %1 to i32
  %3 = shl nuw i32 %2, 24
  %4 = getelementptr i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = or disjoint i32 %7, %3
  %9 = getelementptr i8, ptr %0, i64 2
  %10 = load i16, ptr %9, align 1
  %11 = zext i16 %10 to i32
  %12 = or disjoint i32 %8, %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @epl_duplication_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr i8, ptr %1, i64 3
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.o, %i.q
  %i.s = zext i1 %i.r to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.t = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.s, %bb.d ]
  ret i32 %i.t
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @wmem_map_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @drop_profiles(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %.not4 = icmp eq ptr %1, null
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %profile_del.exit
  %.05 = phi ptr [ %i.b, %profile_del.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr i8, ptr %.05, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %.05, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %.05, i64 96
  %i.f = load i32, ptr %i.e, align 8
  tail call void @wmem_unregister_callback(ptr noundef %i.d, i32 noundef %i.f)
  %i.g = getelementptr i8, ptr %.05, i64 64
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %profile_del.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %.05, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @wmem_map_remove(ptr noundef nonnull %i.h, ptr noundef %i.j) ; 0 uses
  br label %profile_del.exit

profile_del.exit:                                 ; preds = %.lr.ph, %bb.b
  %i.l = getelementptr i8, ptr %.05, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @wmem_destroy_allocator(ptr noundef %i.m)
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %profile_del.exit, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @wmem_free_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @ws_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { allocsize(1) }
attributes #22 = { nounwind }
attributes #23 = { allocsize(2) }
attributes #24 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = distinct !{!25, !8}
end_hunk_0
