Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-submodule?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.strbuf = type { i64, i64, ptr }
%struct.option = type { i32, i32, ptr, ptr, i64, ptr, ptr, i32, ptr, i64, ptr, i64, ptr }

@.str = private unnamed_addr constant [11 x i8] c"test-tools\00", align 1
@submodule_usage = internal constant [5 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr null], align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown subcommand '%s'\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"test-tool submodule check-name\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"test-tool submodule check-url\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"test-tool submodule is-active <name>\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"test-tool submodule resolve-relative-url <up_path> <remoteurl> <url>\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"check-name\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"check-url\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"is-active\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"resolve-relative-url\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"config-list\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"config-set\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"config-unset\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"config-writeable\00", align 1
@submodule_check_name_usage = internal constant [2 x ptr] [ptr @.str.2, ptr null], align 16
@strbuf_slopbuf = external global [0 x i8], align 1
@__const.check_submodule.buf = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@submodule_check_url_usage = internal constant [2 x ptr] [ptr @.str.3, ptr null], align 16
@submodule_is_active_usage = internal constant [2 x ptr] [ptr @.str.4, ptr null], align 16
@the_repository = external local_unnamed_addr global ptr, align 8
@submodule_resolve_relative_url_usage = internal constant [2 x ptr] [ptr @.str.5, ptr null], align 16
@.str.15 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"test-tool submodule config-list <key>\00", align 1
@__const.cmd__submodule_config_list.usage = private unnamed_addr constant [2 x ptr] [ptr @.str.16, ptr null], align 16
@.str.17 = private unnamed_addr constant [45 x i8] c"test-tool submodule config-set <key> <value>\00", align 1
@__const.cmd__submodule_config_set.usage = private unnamed_addr constant [2 x ptr] [ptr @.str.17, ptr null], align 16
@.str.18 = private unnamed_addr constant [66 x i8] c"please make sure that the .gitmodules file is in the working tree\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"test-tool submodule config-unset <key>\00", align 1
@__const.cmd__submodule_config_unset.usage = private unnamed_addr constant [2 x ptr] [ptr @.str.19, ptr null], align 16
@.str.20 = private unnamed_addr constant [37 x i8] c"test-tool submodule config-writeable\00", align 1
@__const.cmd__submodule_config_writeable.usage = private unnamed_addr constant [2 x ptr] [ptr @.str.20, ptr null], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd__submodule(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.option], align 16      ; 4 uses
  %3 = alloca [2 x ptr], align 16                 ; 4 uses
  %4 = alloca [1 x %struct.option], align 16      ; 4 uses
  %5 = alloca [2 x ptr], align 16                 ; 4 uses
  %6 = alloca [1 x %struct.option], align 16      ; 5 uses
  %7 = alloca [2 x ptr], align 16                 ; 5 uses
  %8 = alloca [1 x %struct.option], align 16      ; 5 uses
  %9 = alloca [1 x %struct.option], align 16      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %9, i8 0, i64 96, i1 false)
  %i.a = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %9, ptr noundef nonnull @submodule_usage, i32 noundef 2) #8 ; 9 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 9 uses
  %i.d = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.6, ptr noundef nonnull dereferenceable(1) %i.c) #9
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %call.0, label %41

bb.b:                                             ; preds = %bb.a
  call void @usage_with_options(ptr noundef nonnull @submodule_usage, ptr noundef nonnull %9) #10
  unreachable

call.0:                                           ; preds = %.preheader
  %10 = call fastcc i32 @cmd__submodule_check_name(i32 noundef %i.a, ptr noundef nonnull %1) #8
  br label %.tail

call.1:                                           ; preds = %41
  %11 = call fastcc i32 @cmd__submodule_check_url(i32 noundef %i.a, ptr noundef nonnull %1) #8
  br label %.tail

bb.c:                                             ; preds = %43
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %8, i8 0, i64 96, i1 false)
  %12 = call i32 @parse_options(i32 noundef %i.a, ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull %8, ptr noundef nonnull @submodule_is_active_usage, i32 noundef 0) #8
  %.not.1.a = icmp eq i32 %12, 1
  br i1 %.not.1.a, label %bb.d, label %13

13:                                               ; preds = %bb.c
  call void @usage_with_options(ptr noundef nonnull @submodule_is_active_usage, ptr noundef nonnull %8) #10
  unreachable

bb.d:                                             ; preds = %bb.c
  %14 = load ptr, ptr @the_repository, align 8, !tbaa !18
  %15 = call ptr @setup_git_directory(ptr noundef %14) #8 ; 0 uses
  %16 = load ptr, ptr @the_repository, align 8, !tbaa !18
  %17 = load ptr, ptr %1, align 8, !tbaa !16
  %i.e = call i32 @is_submodule_active(ptr noundef %16, ptr noundef %17) #8
  %.not.2.a = icmp eq i32 %i.e, 0
  %18 = zext i1 %.not.2.a to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %.tail

call.3:                                           ; preds = %45
  %19 = call fastcc i32 @cmd__submodule_resolve_relative_url(i32 noundef %i.a, ptr noundef nonnull %1) #8
  br label %.tail

bb.e:                                             ; preds = %47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %6, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) @__const.cmd__submodule_config_list.usage, i64 16, i1 false)
  %20 = call i32 @parse_options(i32 noundef %i.a, ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 4) #8
  %21 = load ptr, ptr @the_repository, align 8, !tbaa !18
  %22 = call ptr @setup_git_directory(ptr noundef %21) #8 ; 0 uses
  %.not.3.a = icmp eq i32 %20, 2
  br i1 %.not.3.a, label %cmd__submodule_config_list.exit, label %23

23:                                               ; preds = %bb.e
  call void @usage_with_options(ptr noundef nonnull %7, ptr noundef nonnull %6) #10
  unreachable

cmd__submodule_config_list.exit:                  ; preds = %bb.e
  %24 = load ptr, ptr @the_repository, align 8, !tbaa !18
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = call i32 @print_config_from_gitmodules(ptr noundef %24, ptr noundef %26) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.tail

call.5:                                           ; preds = %49
  %28 = call fastcc i32 @cmd__submodule_config_set(i32 noundef %i.a, ptr noundef nonnull %1) #8
  br label %.tail

bb.f:                                             ; preds = %51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.cmd__submodule_config_unset.usage, i64 16, i1 false)
  %29 = load ptr, ptr @the_repository, align 8, !tbaa !18
  %30 = call ptr @setup_git_directory(ptr noundef %29) #8 ; 0 uses
  %.not.4.a = icmp eq i32 %i.a, 2
  br i1 %.not.4.a, label %bb.g, label %33

bb.g:                                             ; preds = %bb.f
  %31 = call i32 @is_writing_gitmodules_ok() #8
  %.not.5.a = icmp eq i32 %31, 0
  br i1 %.not.5.a, label %32, label %bb.h

32:                                               ; preds = %bb.g
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #10
  unreachable

33:                                               ; preds = %bb.f
  call void @usage_with_options(ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  unreachable

bb.h:                                             ; preds = %bb.g
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %35 = load ptr, ptr %34, align 8, !tbaa !16
  %i.f = call i32 @config_set_in_gitmodules_file_gently(ptr noundef %35, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %.tail

bb.i:                                             ; preds = %53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const.cmd__submodule_config_writeable.usage, i64 16, i1 false)
  %36 = load ptr, ptr @the_repository, align 8, !tbaa !18
  %37 = call ptr @setup_git_directory(ptr noundef %36) #8 ; 0 uses
  %.not.7.a = icmp eq i32 %i.a, 1
  br i1 %.not.7.a, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @usage_with_options(ptr noundef nonnull %3, ptr noundef nonnull %2) #10
  unreachable

bb.k:                                             ; preds = %bb.i
  %38 = call i32 @is_writing_gitmodules_ok() #8
  %.not.i28 = icmp eq i32 %38, 0
  %39 = sext i1 %.not.i28 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %.tail

.tail:                                            ; preds = %bb.k, %bb.h, %call.5, %cmd__submodule_config_list.exit, %call.3, %bb.d, %call.1, %call.0
  %40 = phi i32 [ %10, %call.0 ], [ %11, %call.1 ], [ %18, %bb.d ], [ %19, %call.3 ], [ %27, %cmd__submodule_config_list.exit ], [ %28, %call.5 ], [ %i.f, %bb.h ], [ %39, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  ret i32 %40

41:                                               ; preds = %.preheader
  %42 = call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.7, ptr noundef nonnull dereferenceable(1) %i.c) #9
  %.not.1 = icmp eq i32 %42, 0
  br i1 %.not.1, label %call.1, label %43

43:                                               ; preds = %41
  %44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.8, ptr noundef nonnull dereferenceable(1) %i.c) #9
  %.not.2 = icmp eq i32 %44, 0
  br i1 %.not.2, label %bb.c, label %45

45:                                               ; preds = %43
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.9, ptr noundef nonnull dereferenceable(1) %i.c) #9
  %.not.3 = icmp eq i32 %46, 0
  br i1 %.not.3, label %call.3, label %47

47:                                               ; preds = %45
  %48 = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.10, ptr noundef nonnull dereferenceable(1) %i.c) #9
  %.not.4 = icmp eq i32 %48, 0
  br i1 %.not.4, label %bb.e, label %49

49:                                               ; preds = %47
  %50 = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.11, ptr noundef nonnull dereferenceable(1) %i.c) #9
  %.not.5 = icmp eq i32 %50, 0
  br i1 %.not.5, label %call.5, label %51

51:                                               ; preds = %49
  %52 = call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.12, ptr noundef nonnull dereferenceable(1) %i.c) #9
  %.not.6 = icmp eq i32 %52, 0
  br i1 %.not.6, label %bb.f, label %53

53:                                               ; preds = %51
  %54 = call i32 @strcmp(ptr noundef nonnull dereferenceable(17) @.str.13, ptr noundef nonnull dereferenceable(1) %i.c) #9
  %.not.7 = icmp eq i32 %54, 0
  br i1 %.not.7, label %bb.i, label %55

55:                                               ; preds = %53
  call void (ptr, ptr, ptr, ...) @usage_msg_optf(ptr noundef nonnull @.str.1, ptr noundef nonnull @submodule_usage, ptr noundef nonnull %9, ptr noundef nonnull %i.c) #10
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @parse_options(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @usage_with_options(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @usage_msg_optf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @cmd__submodule_check_name(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 7 uses
  %3 = alloca [1 x %struct.option], align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %3, i8 0, i64 96, i1 false)
  %i.a = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %3, ptr noundef nonnull @submodule_check_name_usage, i32 noundef 0) #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @usage_with_options(ptr noundef nonnull @submodule_check_name_usage, ptr noundef nonnull %3) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.check_submodule.buf, i64 24, i1 false)
  %i.b = load ptr, ptr @stdin, align 8, !tbaa !20
  %i.c = call i32 @strbuf_getline(ptr noundef nonnull %2, ptr noundef %i.b) #8
  %.not2.i = icmp eq i32 %i.c, -1
  br i1 %.not2.i, label %check_submodule.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = call i32 @check_submodule_name(ptr noundef %i.e) #8, !callees !24, !inline_history !0
  %.not1.i = icmp eq i32 %i.f, 0
  br i1 %.not1.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !23
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = load ptr, ptr @stdin, align 8, !tbaa !20
  %i.i = call i32 @strbuf_getline(ptr noundef nonnull %2, ptr noundef %i.h) #8
  %.not.i = icmp eq i32 %i.i, -1
  br i1 %.not.i, label %check_submodule.exit, label %bb.d, !llvm.loop !1

check_submodule.exit:                             ; preds = %bb.f, %bb.c
  call void @strbuf_release(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @cmd__submodule_check_url(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 7 uses
  %3 = alloca [1 x %struct.option], align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %3, i8 0, i64 96, i1 false)
  %i.a = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %3, ptr noundef nonnull @submodule_check_url_usage, i32 noundef 0) #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @usage_with_options(ptr noundef nonnull @submodule_check_url_usage, ptr noundef nonnull %3) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.check_submodule.buf, i64 24, i1 false)
  %i.b = load ptr, ptr @stdin, align 8, !tbaa !20
  %i.c = call i32 @strbuf_getline(ptr noundef nonnull %2, ptr noundef %i.b) #8
  %.not2.i = icmp eq i32 %i.c, -1
  br i1 %.not2.i, label %check_submodule.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = call i32 @check_submodule_url(ptr noundef %i.e) #8, !callees !24, !inline_history !0
  %.not1.i = icmp eq i32 %i.f, 0
  br i1 %.not1.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !23
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = load ptr, ptr @stdin, align 8, !tbaa !20
  %i.i = call i32 @strbuf_getline(ptr noundef nonnull %2, ptr noundef %i.h) #8
  %.not.i = icmp eq i32 %i.i, -1
  br i1 %.not.i, label %check_submodule.exit, label %bb.d, !llvm.loop !1

check_submodule.exit:                             ; preds = %bb.f, %bb.c
  call void @strbuf_release(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @cmd__submodule_resolve_relative_url(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.option], align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %i.a = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %2, ptr noundef nonnull @submodule_resolve_relative_url_usage, i32 noundef 0) #8
  %.not = icmp eq i32 %i.a, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @usage_with_options(ptr noundef nonnull @submodule_resolve_relative_url_usage, ptr noundef nonnull %2) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = call ptr @xstrdup(ptr noundef %i.d) #8   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(7) @.str.15) #9
  %.not12 = icmp eq i32 %i.h, 0
  %spec.store.select = select i1 %.not12, ptr null, ptr %i.b
  %i.i = call ptr @relative_url(ptr noundef %i.e, ptr noundef %i.g, ptr noundef %spec.store.select) #8 ; 2 uses
  %i.j = call i32 @puts(ptr noundef nonnull dereferenceable(1) %i.i) ; 0 uses
  call void @free(ptr noundef %i.i) #8
  call void @free(ptr noundef %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cmd__submodule_config_set(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.option], align 16      ; 5 uses
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.cmd__submodule_config_set.usage, i64 16, i1 false)
  %i.b = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef 4) #8
  %i.c = load ptr, ptr @the_repository, align 8, !tbaa !18
  %i.d = call ptr @setup_git_directory(ptr noundef %i.c) #8 ; 0 uses
  %i.e = icmp eq i32 %i.b, 3
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @is_writing_gitmodules_ok() #8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = call i32 @config_set_in_gitmodules_file_gently(ptr noundef %i.h, ptr noundef %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %i.k

bb.e:                                             ; preds = %bb.a
  call void @usage_with_options(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #10
  unreachable
}

declare i32 @check_submodule_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @strbuf_getline(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

declare i32 @check_submodule_url(ptr noundef) local_unnamed_addr #3

declare ptr @setup_git_directory(ptr noundef) local_unnamed_addr #3

declare i32 @is_submodule_active(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

declare ptr @relative_url(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i32 @print_config_from_gitmodules(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @is_writing_gitmodules_ok() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #4

declare i32 @config_set_in_gitmodules_file_gently(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{null}
!1 = distinct !{!1, !25}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTS10repository", !14, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"long", !10, i64 0}
!22 = !{!"strbuf", !21, i64 0, !21, i64 8, !15, i64 16}
!23 = !{!22, !15, i64 16}
!24 = !{ptr @check_submodule_name, ptr @check_submodule_url}
!25 = !{!"llvm.loop.mustprogress"}
end_hunk_0
