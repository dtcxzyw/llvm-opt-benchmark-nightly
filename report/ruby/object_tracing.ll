inline.NumInlined: 36
inline.NumDeleted: 19
begin_hunk_0_@allocation_info_tracer_compact:bb.a
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.11) #15
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #1

declare i32 @rb_st_foreach(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @free_values_i(i64 %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  tail call void @ruby_xfree(ptr noundef %i.a) #12
  ret i32 0
}

declare void @rb_st_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @free_keys_i(i64 noundef %0, i64 %1, i64 %2) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  tail call void @ruby_xfree(ptr noundef %i.a) #12
  ret i32 0
}

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_memsize(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @allocation_info_tracer_compact_update_object_table_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  %i.b = tail call zeroext i1 @rb_gc_pointer_to_heap_p(i64 noundef %0) #12
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr
  tail call void @ruby_xfree(ptr noundef %i.c) #12
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_gc_location(i64 noundef %0) #12
  %.not = icmp eq i64 %0, %i.d
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @rb_gc_disable_no_rest() #12
  %i.f = tail call i64 @rb_gc_location(i64 noundef %0) #12
  %i.g = tail call i32 @rb_st_insert(ptr noundef %i.a, i64 noundef %i.f, i64 noundef %1) #12 ; 0 uses
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i64 @rb_gc_enable() #12        ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ 2, %bb.b ], [ 2, %bb.d ], [ 2, %bb.e ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #5

declare zeroext i1 @rb_gc_pointer_to_heap_p(i64 noundef) local_unnamed_addr #1

declare i64 @rb_gc_location(i64 noundef) local_unnamed_addr #1

declare i64 @rb_gc_disable_no_rest() local_unnamed_addr #1

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_gc_enable() local_unnamed_addr #1

declare nonnull ptr @rb_tracearg_from_tracepoint(i64 noundef) local_unnamed_addr #1

declare i64 @rb_tracearg_object(ptr noundef) local_unnamed_addr #1

declare i64 @rb_tracearg_path(ptr noundef) local_unnamed_addr #1

declare i64 @rb_tracearg_lineno(ptr noundef) local_unnamed_addr #1

declare i64 @rb_tracearg_method_id(ptr noundef) local_unnamed_addr #1

declare i64 @rb_tracearg_defined_class(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_unique_str(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = call i32 @rb_st_lookup(ptr noundef %0, i64 noundef %i.b, ptr noundef nonnull %i.a) #12
  %.not18 = icmp eq i32 %i.c, 0
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %i.a, align 8, !tbaa !17
  %i.e = add i64 %i.d, 1
  %i.f = call i32 @rb_st_insert(ptr noundef %0, i64 noundef %i.b, i64 noundef %i.e) #12 ; 0 uses
  %i.g = call i32 @rb_st_get_key(ptr noundef %0, i64 noundef %i.b, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !17
  %i.i = inttoptr i64 %i.h to ptr
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = add nsw i64 %2, 1
  %i.k = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.j) #13 ; 4 uses
  %i.l = call ptr @strncpy(ptr noundef nonnull %i.k, ptr noundef nonnull %1, i64 noundef %2) #12 ; 0 uses
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %2
  store i8 0, ptr %i.m, align 1, !tbaa !35
  %i.n = ptrtoint ptr %i.k to i64
  call void @rb_st_add_direct(ptr noundef %0, i64 noundef %i.n, i64 noundef 1) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.016 = phi ptr [ %.0, %bb.e ], [ null, %bb.a ]
  ret ptr %.016
}

declare i64 @rb_class_path_cached(i64 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #6

declare i64 @rb_gc_count() local_unnamed_addr #1

declare i32 @rb_st_get_key(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

declare void @rb_st_add_direct(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_st_update(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @delete_unique_str_dec(ptr readnone captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1, i64 noundef %2, i32 %3) #8 {
bb.a:
  store i64 %2, ptr %1, align 8, !tbaa !17
  ret i32 0
}

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_tracepoint_disable(i64 noundef) local_unnamed_addr #1

declare void @rb_st_clear(ptr noundef) local_unnamed_addr #1

declare i32 @rb_bug_reporter_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @object_allocations_reporter(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.12, i64 38, i64 1, ptr %0) ; 0 uses
  %i.b = load ptr, ptr @tmp_trace_arg, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = ptrtoint ptr %0 to i64
  %i.f = tail call i32 @rb_st_foreach(ptr noundef %i.d, ptr noundef nonnull @object_allocations_reporter_i, i64 noundef %i.e) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i64 @fwrite(ptr nonnull @.str.13, i64 36, i64 1, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_allocations_reporter_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 6 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 7 uses
  %i.c = inttoptr i64 %0 to ptr
  %i.d = load i32, ptr %i.b, align 8, !tbaa !38
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, ptr @.str.16, ptr @.str.15
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.14, ptr noundef %i.c, ptr noundef nonnull %i.e, ptr noundef %i.h) #12 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %bb.b, label %3

3:                                                ; preds = %bb.a
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.k) #12 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40
  %i.n = inttoptr i64 %i.m to ptr
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.18, ptr noundef %i.n) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %3
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %.not22 = icmp eq ptr %i.p, null
  %spec.select = select i1 %.not22, ptr @.str.20, ptr %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.19, ptr noundef nonnull %spec.select, i64 noundef %i.r) #12 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %i.v = icmp eq i64 %i.u, 4
  br i1 %i.v, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call i64 @rb_sym2str(i64 noundef %i.u) #12
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !34
  %i.z = and i64 %i.y, 8192
  %.not.i = icmp eq i64 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.ac = phi ptr [ %i.ab, %bb.e ], [ %i.aa, %bb.d ]
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.21, ptr noundef %i.ac) #12 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit, %bb.c
  %i.ae = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %i.a) ; 0 uses
  ret i32 0
}

declare i64 @rb_sym2str(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #1

declare i64 @rb_ull2inum(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS12traceobj_arg", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!14, !16, i64 24}
!14 = !{!"traceobj_arg", !7, i64 0, !7, i64 4, !15, i64 8, !15, i64 16, !16, i64 24, !16, i64 32, !11, i64 40}
!15 = !{!"long", !8, i64 0}
!16 = !{!"p1 _ZTS8st_table", !12, i64 0}
!17 = !{!15, !15, i64 0}
!18 = !{!19, !15, i64 24}
!19 = !{!"RTypedData", !20, i64 0, !15, i64 16, !15, i64 24, !12, i64 32}
!20 = !{!"RBasic", !15, i64 0, !15, i64 8}
!21 = !{!19, !12, i64 32}
!22 = !{!14, !7, i64 0}
!23 = !{!14, !7, i64 4}
!24 = !{!14, !16, i64 32}
!25 = !{!14, !15, i64 8}
!26 = !{!14, !15, i64 16}
!27 = !{!28, !29, i64 24}
!28 = !{!"allocation_info", !7, i64 0, !15, i64 8, !15, i64 16, !29, i64 24, !15, i64 32, !29, i64 40, !15, i64 48, !15, i64 56}
!29 = !{!"p1 omnipotent char", !12, i64 0}
!30 = !{!28, !15, i64 32}
!31 = !{!28, !29, i64 40}
!32 = !{!28, !15, i64 48}
!33 = !{!28, !15, i64 56}
!34 = !{!20, !15, i64 0}
!35 = !{!8, !8, i64 0}
!36 = !{!37, !15, i64 16}
!37 = !{!"RString", !20, i64 0, !15, i64 16, !8, i64 24}
!38 = !{!28, !7, i64 0}
!39 = !{!28, !15, i64 8}
!40 = !{!28, !15, i64 16}
end_hunk_0
