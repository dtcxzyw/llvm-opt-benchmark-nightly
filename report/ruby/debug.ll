inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
@ruby_dummy_gdb_enums = hidden local_unnamed_addr constant %union.anon zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [31 x i8] c"unexpected debug option: %.*s\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @ruby_debug_print_indent(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.c = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %2, ptr noundef nonnull @.str.1) #7 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.e = tail call i32 @fflush(ptr noundef %i.d)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_debug_printf(ptr noundef %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.b = call i32 @__vfprintf_chk(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %0, ptr noundef nonnull %1) #7 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @ruby_debug_print_value(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef returned %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = icmp slt i32 %0, %1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = call ptr @rb_raw_obj_info(ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef %3) #7 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.e = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef %2, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.g = call i32 @fflush(ptr noundef %i.f)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i64 %3
}

declare ptr @rb_raw_obj_info(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_debug_print_v(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call ptr @rb_raw_obj_info(ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef %0) #7 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.d = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.f = call i32 @fflush(ptr noundef %i.e)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @ruby_debug_print_id(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef returned %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.c = tail call ptr @rb_id2name(i64 noundef %3) #7
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef %2, ptr noundef %i.c) #7 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.f = tail call i32 @fflush(ptr noundef %i.e)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i64 %3
}

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @ruby_debug_print_node(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly returned captures(ret: address, provenance) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, %1
  br i1 %i.a, label %nd_line.exit, label %bb.b

nd_line.exit:                                     ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.c = load i64, ptr %3, align 8, !tbaa !14
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 8
  %i.f = and i32 %i.e, 127
  %i.g = tail call ptr @ruby_node_name(i32 noundef %i.f) #7
  %i.h = getelementptr i8, ptr %3, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = load i64, ptr %3, align 8, !tbaa !14
  %i.k = lshr i64 %i.j, 15
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr i8, ptr %3, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr i8, ptr %3, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21
  %i.q = getelementptr i8, ptr %3, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr i8, ptr %3, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !23
  %i.u = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %2, ptr noundef %i.g, i32 noundef %i.i, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.t) #7 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %nd_line.exit, %bb.a
  ret ptr %3
}

declare ptr @ruby_node_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_debug_print_n(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.b = load i64, ptr %0, align 8, !tbaa !14
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 8
  %i.e = and i32 %i.d, 127
  %i.f = tail call ptr @ruby_node_name(i32 noundef %i.e) #7
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19
  %i.i = load i64, ptr %0, align 8, !tbaa !14
  %i.j = lshr i64 %i.i, 15
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21
  %i.p = getelementptr i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !23
  %i.t = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.a, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %i.f, i32 noundef %i.h, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s) #7 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local void @ruby_debug_breakpoint() local_unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @ruby_env_debug_option(ptr noundef %0, i32 noundef %1, ptr readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  switch i32 %1, label %bb.e [
    i32 9, label %bb.b
    i32 4, label %bb.d
    i32 2, label %sub_0
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.4, i64 noundef 9) #8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread45

bb.c:                                             ; preds = %bb.b
  tail call void @rb_gc_initial_stress_set(i64 noundef 20) #7
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.e = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.5, i64 noundef 4) #8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %3, label %.thread

3:                                                ; preds = %bb.d
  store i32 1, ptr @ruby_enable_coredump, align 4, !tbaa !7
  br label %.thread

sub_0:                                            ; preds = %bb.a
  %i.g = load i8, ptr %0, align 1
  %.not56 = icmp eq i8 %i.g, 99
  br i1 %.not56, label %.tail, label %.thread

.tail:                                            ; preds = %sub_0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 105
  br i1 %i.j, label %4, label %.thread

4:                                                ; preds = %.tail
  store i32 1, ptr @ruby_on_ci, align 4, !tbaa !7
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %i.k = icmp ugt i32 %1, 5
  br i1 %i.k, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.7, i64 noundef 6) #8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %.thread

.thread45:                                        ; preds = %bb.b
  %i.n = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.7, i64 noundef 6) #8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.thread46, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq i32 %1, 6
  br i1 %i.p, label %.thread47, label %.thread46

.thread46:                                        ; preds = %.thread45, %bb.g
  %i.q = getelementptr i8, ptr %0, i64 6
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = icmp eq i8 %i.r, 61
  br i1 %i.s, label %bb.h, label %.thread

bb.h:                                             ; preds = %.thread46
  %i.t = getelementptr i8, ptr %0, i64 7          ; 2 uses
  %i.u = add i32 %1, -7                           ; 4 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.thread47, label %.preheader

.thread47:                                        ; preds = %bb.g, %bb.h
  store i32 1, ptr @ruby_rgengc_debug, align 4, !tbaa !7
  br label %.thread

.preheader:                                       ; preds = %bb.h
  %i.v = sext i32 %i.u to i64
  %i.w = call i64 @ruby_scan_digits(ptr noundef %i.t, i64 noundef %i.v, i32 noundef 10, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7
  %i.x = load i32, ptr %i.a, align 4, !tbaa !7
  %i.y = icmp eq i32 %i.x, 0
  %i.z = load i64, ptr %i.b, align 8              ; 3 uses
  %i.aa = icmp ne i64 %i.z, 0
  %or.cond = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.ab = trunc i64 %i.w to i32
  store i32 %i.ab, ptr @ruby_rgengc_debug, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader
  %i.ac = trunc i64 %i.z to i32                   ; 2 uses
  %.not42 = icmp eq i32 %i.u, %i.ac
  br i1 %.not42, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = sub i32 %i.u, %i.ac
  %i.ae = getelementptr i8, ptr %i.t, i64 %i.z    ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !24
  %.not43 = icmp eq i8 %i.af, 58                  ; 2 uses
  %i.ag = sext i1 %.not43 to i32
  %.236 = add i32 %i.ad, %i.ag                    ; 2 uses
  %i.ah = icmp sgt i32 %.236, 0
  br i1 %i.ah, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.2.idx = zext i1 %.not43 to i64
  %.2 = getelementptr i8, ptr %i.ae, i64 %.2.idx
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.aj = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ai, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %.236, ptr noundef %.2) #7 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %sub_0, %bb.j, %.tail, %bb.d, %.thread45, %bb.e, %bb.f, %.thread46, %.thread47, %bb.l, %bb.k, %4, %3, %bb.c
  %.032 = phi i32 [ 1, %bb.c ], [ 1, %3 ], [ 1, %4 ], [ 1, %.thread47 ], [ 1, %bb.k ], [ 1, %bb.l ], [ 0, %.thread46 ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %.tail ], [ 0, %.thread45 ], [ 0, %bb.d ], [ 1, %bb.j ], [ 0, %sub_0 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.032
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

declare void @rb_gc_initial_stress_set(i64 noundef) local_unnamed_addr #1

declare i64 @ruby_scan_digits(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_set_debug_option(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @ruby_each_words(ptr noundef %0, ptr noundef nonnull @set_debug_option, ptr noundef null) #7
  ret void
}

declare void @ruby_each_words(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @set_debug_option(ptr noundef %0, i32 noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 @ruby_env_debug_option(ptr noundef %0, i32 noundef %1, ptr poison)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.c = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %1, ptr noundef %0) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @ruby_debug_log(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.b = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.a, i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef %0, i32 noundef %1, ptr noundef %2) #7 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.d = call i32 @__vfprintf_chk(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef %3, ptr noundef nonnull %4) #7 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.f = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.10) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void
}

declare i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"RNode", !16, i64 0, !17, i64 8, !8, i64 24}
!16 = !{!"long", !9, i64 0}
!17 = !{!"rb_code_location_struct", !18, i64 0, !18, i64 8}
!18 = !{!"rb_code_position_struct", !8, i64 0, !8, i64 4}
!19 = !{!15, !8, i64 24}
!20 = !{!15, !8, i64 8}
!21 = !{!15, !8, i64 12}
!22 = !{!15, !8, i64 16}
!23 = !{!15, !8, i64 20}
!24 = !{!9, !9, i64 0}
end_hunk_0
