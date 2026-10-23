Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-bundle-uri?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.strbuf = type { i64, i64, ptr }
%struct.option = type { i32, i32, ptr, ptr, i64, ptr, ptr, i32, ptr, i64, ptr, i64, ptr }
%struct.bundle_list = type { i32, i32, %struct.hashmap, ptr, i32 }
%struct.hashmap = type { ptr, ptr, ptr, i32, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [46 x i8] c"test-tool bundle-uri <subcommand> [<options>]\00", align 1
@__const.cmd__bundle_uri.usage = private unnamed_addr constant [2 x ptr] [ptr @.str, ptr null], align 16
@.str.1 = private unnamed_addr constant [17 x i8] c"parse-key-values\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"parse-config\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ls-remote\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"there is no test-tool bundle-uri tool '%s'\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"test-tool bundle-uri parse-key-values <input>\00", align 1
@__const.cmd__bundle_uri_parse.key_value_usage = private unnamed_addr constant [2 x ptr] [ptr @.str.5, ptr null], align 16
@.str.6 = private unnamed_addr constant [42 x i8] c"test-tool bundle-uri parse-config <input>\00", align 1
@__const.cmd__bundle_uri_parse.config_usage = private unnamed_addr constant [2 x ptr] [ptr @.str.6, ptr null], align 16
@strbuf_slopbuf = external global [0 x i8], align 1
@__const.cmd__bundle_uri_parse.sb = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"<uri>\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"failed to open '%s'\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"bad line: '%s'\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"bad repository '%s'\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"no remote configured to get bundle URIs from\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"could not get the bundle-uri list\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @cmd__bundle_uri(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %2 = alloca [1 x %struct.option], align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.cmd__bundle_uri.usage, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %i.b = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef 6) #9 ; 4 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 4 uses
  %i.f = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(17) @.str.1) #10
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.b, -1
  %i.h = call fastcc i32 @cmd__bundle_uri_parse(i32 noundef %i.g, ptr noundef nonnull %i.d, i32 noundef 0)
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(13) @.str.2) #10
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i32 %i.b, -1
  %i.k = call fastcc i32 @cmd__bundle_uri_parse(i32 noundef %i.j, ptr noundef nonnull %i.d, i32 noundef 1)
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(10) @.str.3) #10
  %.not15 = icmp eq i32 %i.l, 0
  br i1 %.not15, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.m = icmp sgt i32 %i.b, 2
  br i1 %i.m, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 3 uses
  %i.p = call ptr @remote_get(ptr noundef %i.o) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.i, label %bb.k

.thread.i:                                        ; preds = %bb.g
  %i.q = call ptr @remote_get(ptr noundef null) #9 ; 2 uses
  %.not16.i = icmp eq ptr %i.q, null
  br i1 %.not16.i, label %.thread17.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not14.i = icmp eq ptr %i.o, null
  br i1 %.not14.i, label %.thread17.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = call fastcc ptr @_(ptr noundef nonnull @.str.11)
  call void (ptr, ...) @die(ptr noundef %i.r, ptr noundef nonnull %i.o) #11
  unreachable

.thread17.i:                                      ; preds = %bb.i, %.thread.i
  %i.s = call fastcc ptr @_(ptr noundef nonnull @.str.12)
  call void (ptr, ...) @die(ptr noundef %i.s) #11
  unreachable

bb.k:                                             ; preds = %.thread.i, %bb.h
  %i.t = phi ptr [ %i.q, %.thread.i ], [ %i.p, %bb.h ]
  %i.u = call ptr @transport_get(ptr noundef nonnull %i.t, ptr noundef null) #9 ; 3 uses
  %i.v = call i32 @transport_get_remote_bundle_uri(ptr noundef %i.u) #9
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.x = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i.i = icmp eq i32 %i.x, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #9
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ %i.y, %bb.m ], [ @.str.13, %bb.l ]
  %i.z = call i32 (ptr, ...) @error(ptr noundef %.0.i.i) #9 ; 0 uses
  br label %cmd_ls_remote.exit

bb.n:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  call void @print_bundle_list(ptr noundef %i.aa, ptr noundef %i.ac) #9
  br label %cmd_ls_remote.exit

cmd_ls_remote.exit:                               ; preds = %_.exit.i, %bb.n
  %.0.i = phi i32 [ 1, %_.exit.i ], [ 0, %bb.n ]
  %i.ad = call i32 @transport_disconnect(ptr noundef %i.u) #9
  %.not15.i = icmp eq i32 %i.ad, 0
  %.0..i = select i1 %.not15.i, i32 %.0.i, i32 1
  br label %bb.q

bb.o:                                             ; preds = %bb.f
  %i.ae = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  call void @usage_with_options(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #11
  unreachable

bb.q:                                             ; preds = %cmd_ls_remote.exit, %bb.e, %bb.c
  %.0 = phi i32 [ %.0..i, %cmd_ls_remote.exit ], [ %i.k, %bb.e ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @parse_options(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @cmd__bundle_uri_parse(i32 noundef range(i32 -2147483648, 2147483647) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 4 uses
  %i.b = alloca [2 x ptr], align 16               ; 4 uses
  %3 = alloca [1 x %struct.option], align 16      ; 5 uses
  %4 = alloca %struct.strbuf, align 8             ; 7 uses
  %5 = alloca %struct.bundle_list, align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.cmd__bundle_uri_parse.key_value_usage, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.cmd__bundle_uri_parse.config_usage, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %3, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd__bundle_uri_parse.sb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %spec.select = select i1 %.not, ptr %i.a, ptr %i.b ; 2 uses
  %i.c = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %spec.select, i32 noundef 2) #9
  call void @init_bundle_list(ptr noundef nonnull %5) #9
  %i.d = call ptr @xstrdup(ptr noundef nonnull @.str.7) #9
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.d, ptr %i.e, align 8, !tbaa !35
  %.not15 = icmp eq i32 %i.c, 1                   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %.not15, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !14
  %i.g = call ptr @git_fopen(ptr noundef %i.f, ptr noundef nonnull @.str.8) #9 ; 4 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.h = call i32 @strbuf_getline(ptr noundef nonnull %4, ptr noundef nonnull %i.g) #9
  %.not1820 = icmp eq i32 %i.h, -1
  br i1 %.not1820, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !14
  call void (ptr, ...) @die(ptr noundef nonnull @.str.9, ptr noundef %i.j) #11
  unreachable

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.021 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.g ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.l = call i32 @bundle_uri_parse_line(ptr noundef nonnull %5, ptr noundef %i.k) #9
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.n = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.10, ptr noundef %i.m) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ -1, %bb.f ], [ %.021, %bb.e ]   ; 2 uses
  %i.o = call i32 @strbuf_getline(ptr noundef nonnull %4, ptr noundef nonnull %i.g) #9
  %.not18 = icmp eq i32 %i.o, -1
  br i1 %.not18, label %._crit_edge, label %bb.e, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %.1, %bb.g ]
  %i.p = call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  br i1 %.not15, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %1, align 8, !tbaa !14
  %i.r = call i32 @bundle_uri_parse_config_format(ptr noundef nonnull @.str.7, ptr noundef %i.q, ptr noundef nonnull %5) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.2 = phi i32 [ %i.r, %bb.i ], [ %.0.lcssa, %._crit_edge ]
  call void @strbuf_release(ptr noundef nonnull %4) #9
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !17
  call void @print_bundle_list(ptr noundef %i.s, ptr noundef nonnull %5) #9
  call void @clear_bundle_list(ptr noundef nonnull %5) #9
  %i.t = icmp ne i32 %.2, 0
  %i.u = zext i1 %i.t to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.u

bb.k:                                             ; preds = %bb.h, %bb.b
  call void @usage_with_options(ptr noundef nonnull %spec.select, ptr noundef nonnull %3) #11
  unreachable
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @usage_with_options(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @init_bundle_list(ptr noundef) local_unnamed_addr #3

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

declare ptr @git_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #5

declare i32 @strbuf_getline(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bundle_uri_parse_line(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @bundle_uri_parse_config_format(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

declare void @print_bundle_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @clear_bundle_list(ptr noundef) local_unnamed_addr #3

declare ptr @remote_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !39
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.14, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

declare ptr @transport_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @transport_get_remote_bundle_uri(ptr noundef) local_unnamed_addr #3

declare i32 @transport_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!"p1 _ZTS16transport_vtable", !12, i64 0}
!20 = !{!"p1 _ZTS6remote", !12, i64 0}
!21 = !{!"p1 _ZTS3ref", !12, i64 0}
!22 = !{!"p1 _ZTS11bundle_list", !12, i64 0}
!23 = !{!"p1 _ZTS11string_list", !12, i64 0}
!24 = !{!"p1 _ZTS16string_list_item", !12, i64 0}
!25 = !{!"string_list", !24, i64 0, !18, i64 8, !18, i64 16, !9, i64 24, !12, i64 32}
!26 = !{!"p1 _ZTS21git_transport_options", !12, i64 0}
!27 = !{!"p1 _ZTS13git_hash_algo", !12, i64 0}
!28 = !{!"transport", !19, i64 0, !20, i64 8, !13, i64 16, !12, i64 24, !21, i64 32, !9, i64 40, !9, i64 40, !22, i64 48, !9, i64 56, !9, i64 56, !9, i64 56, !23, i64 64, !23, i64 72, !25, i64 80, !9, i64 120, !9, i64 120, !26, i64 128, !9, i64 136, !27, i64 144}
!29 = !{!28, !22, i64 48}
!30 = distinct !{!30, !38}
!31 = !{!"any p2 pointer", !12, i64 0}
!32 = !{!"p2 _ZTS13hashmap_entry", !31, i64 0}
!33 = !{!"hashmap", !32, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!34 = !{!"bundle_list", !9, i64 0, !9, i64 4, !33, i64 8, !13, i64 56, !9, i64 64}
!35 = !{!34, !13, i64 56}
!36 = !{!"strbuf", !18, i64 0, !18, i64 8, !13, i64 16}
!37 = !{!36, !13, i64 16}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!8, !8, i64 0}
end_hunk_0
