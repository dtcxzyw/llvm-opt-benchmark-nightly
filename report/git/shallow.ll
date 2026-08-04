begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.strbuf = type { i64, i64, ptr }
%struct.object_id = type { [32 x i8], i32 }
%struct.object_array = type { i32, i32, ptr }
%struct.rev_info = type <{ ptr, %struct.prio_queue, %struct.object_array, ptr, %struct.object_array, %struct.rev_cmdline_info, %struct.list_objects_filter_options, %struct.ref_exclusions, ptr, ptr, ptr, %struct.pathspec, i32, i32, i32, i64, i32, i32, [4 x i8], %struct.date_mode, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, [4 x i8], ptr, ptr, %struct.ident_split, ptr, i32, [4 x i8], ptr, ptr, i32, i32, i32, [4 x i8], ptr, %struct.grep_opt, ptr, i32, i32, i32, i8, [3 x i8], i64, i64, i64, i32, i32, ptr, ptr, ptr, %struct.diff_options, %struct.diff_options, ptr, %struct.decoration, %struct.decoration, %struct.decoration, %struct.display_notes_opt, ptr, ptr, ptr, ptr, ptr, %struct.strvec, i32, [4 x i8], ptr, i32, i32, i32, [4 x i8], %struct.decoration, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.oidset }>
%struct.prio_queue = type { ptr, i64, ptr, i64, i64, ptr }
%struct.rev_cmdline_info = type { i32, i32, ptr }
%struct.list_objects_filter_options = type { %struct.strbuf, i32, i8, ptr, i64, i64, i32, i64, i64, ptr }
%struct.ref_exclusions = type { %struct.string_list, %struct.strvec, i8 }
%struct.string_list = type { ptr, i64, i64, i8, ptr }
%struct.pathspec = type { i32, i8, i32, i32, ptr }
%struct.date_mode = type { i32, i32, ptr }
%struct.ident_split = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grep_opt = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [75 x i8]], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.diff_options = type { ptr, ptr, i32, i32, ptr, i32, ptr, i64, i64, ptr, ptr, ptr, ptr, %struct.diff_flags, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i64, i64, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, i32, [3 x i8], %struct.pathspec, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.diff_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.display_notes_opt = type { i32, %struct.string_list }
%struct.strvec = type { ptr, i64, i64 }
%struct.decoration = type { ptr, i32, i32, ptr }
%struct.oidset = type { %struct.kh_oid_set }
%struct.kh_oid_set = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.write_shallow_data = type { ptr, i32, i32, i32 }
%struct.shallow_lock = type { %struct.lock_file }
%struct.lock_file = type { ptr, ptr }
%struct.commit_stack = type { ptr, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"shallow.c\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"is_repository_shallow must not be called before set_alternate_shallow_file\00", align 1
@the_repository = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"bad shallow line: %s\00", align 1
@save_commit_buffer = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"no commits selected for shallow requests\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"unable to parse commit %s\00", align 1
@strbuf_slopbuf = external global [0 x i8], align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"shallow_XXXXXX\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"failed to write to %s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.prune_shallow.sb = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"GIT_TRACE_SHALLOW\00", align 1
@trace_shallow = dso_local global { ptr, i32, i8, [3 x i8] } { ptr @.str.10, i32 0, i8 0, [3 x i8] zeroinitializer }, align 8
@.str.11 = private unnamed_addr constant [31 x i8] c"shallow: prepare_shallow_info\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"shallow: remove_nonexistent_theirs_shallow\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"shallow: assign_shallow_commits_to_refs\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Removing %s from .git/shallow\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"shallow %s\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"shallow must be initialized by now\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"shallow file has changed since we read it\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"shallow %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu * %lu\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"pool size too small for %d in paint_alloc()\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"shallow: post_assign_shallow\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @set_alternate_shallow_file(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 27, ptr noundef nonnull @.str.1) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp ne i32 %2, 0
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.f) #14
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %xstrdup_or_null.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @xstrdup(ptr noundef nonnull %1) #14
  br label %xstrdup_or_null.exit

xstrdup_or_null.exit:                             ; preds = %bb.d, %bb.e
  %i.j = phi ptr [ %i.i, %bb.e ], [ null, %bb.d ]
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.j, ptr %i.l, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %xstrdup_or_null.exit
  ret void
}

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @register_shallow(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @xmalloc(i64 noundef 40) #14 ; 4 uses
  %i.b = tail call ptr @lookup_commit(ptr noundef %0, ptr noundef %1) #14 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 4, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.d, ptr %i.e, align 4, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 -1, ptr %i.f, align 4, !tbaa !50
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8
  %i.h = and i64 %i.g, 1
  %.not11 = icmp eq i64 %i.h, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  tail call void @commit_list_free(ptr noundef %i.j) #14
  store ptr null, ptr %i.i, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = tail call i32 @register_commit_graft(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 0) #14
  ret i32 %i.k
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

declare ptr @lookup_commit(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @commit_list_free(ptr noundef) local_unnamed_addr #4

declare i32 @register_commit_graft(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @unregister_shallow(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.b = tail call i32 @commit_graft_pos(ptr noundef %i.a, ptr noundef %0) #14 ; 4 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = zext nneg i32 %i.b to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  tail call void @free(ptr noundef %i.k) #14
  %i.l = add nuw nsw i32 %i.b, 1
  %i.m = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %i.q = load i32, ptr %i.p, align 4, !tbaa !60   ; 4 uses
  %i.r = icmp slt i32 %i.l, %i.q
  br i1 %i.r, label %bb.c, label %move_array.exit

bb.c:                                             ; preds = %bb.b
  %1 = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %2 = load ptr, ptr %1, align 8, !tbaa !57
  %3 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = xor i32 %i.b, -1
  %i.t = add nsw i32 %i.q, %i.s                   ; 3 uses
  %5 = sext i32 %i.t to i64                       ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %move_array.exit, label %6

6:                                                ; preds = %bb.c
  %mul.ov.i.i = icmp slt i32 %i.t, 0
  br i1 %mul.ov.i.i, label %7, label %st_mult.exit.i

7:                                                ; preds = %6
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.19, i64 noundef 8, i64 noundef range(i64 -2147483646, 2147483647) %5) #13
  unreachable

st_mult.exit.i:                                   ; preds = %6
  %i.u = shl nuw nsw i64 %5, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %3, ptr nonnull readonly align 1 %4, i64 %i.u, i1 false)
  %.pre = load ptr, ptr @the_repository, align 8, !tbaa !56
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre9 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %.pre9, i64 76
  %.pre11 = load i32, ptr %.phi.trans.insert10, align 4, !tbaa !60
  br label %move_array.exit

move_array.exit:                                  ; preds = %st_mult.exit.i, %bb.c, %bb.b
  %i.v = phi i32 [ %.pre11, %st_mult.exit.i ], [ %i.q, %bb.c ], [ %i.q, %bb.b ]
  %i.w = phi ptr [ %.pre9, %st_mult.exit.i ], [ %i.o, %bb.c ], [ %i.o, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 76
  %i.y = add nsw i32 %i.v, -1
  store i32 %i.y, ptr %i.x, align 4, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %move_array.exit
  %.0 = phi i32 [ 0, %move_array.exit ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @commit_graft_pos(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @is_repository_shallow(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  %1 = alloca %struct.object_id, align 4          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @git_path_shallow(ptr noundef nonnull %0) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]  ; 2 uses
  %i.j = load i8, ptr %.0, align 1, !tbaa !61
  %.not21 = icmp eq i8 %i.j, 0
  br i1 %.not21, label %._crit_edge25, label %bb.e

._crit_edge25:                                    ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !12
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @git_fopen(ptr noundef nonnull %.0, ptr noundef nonnull @.str.2) #14 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  %.pre26 = load ptr, ptr %i.b, align 8, !tbaa !12 ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge25, %bb.e
  %i.m = phi ptr [ %.pre, %._crit_edge25 ], [ %.pre26, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  tail call void @stat_validity_clear(ptr noundef %i.o) #14
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store i32 0, ptr %i.q, align 8, !tbaa !39
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.pre26, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.t = tail call i32 @fileno(ptr noundef nonnull %i.k) #14
  tail call void @stat_validity_update(ptr noundef %i.s, i32 noundef %i.t) #14
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store i32 1, ptr %i.v, align 8, !tbaa !39
  %i.w = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.k)
  %.not2224 = icmp eq ptr %i.w, null
  br i1 %.not2224, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %register_shallow.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.y = call i32 @get_oid_hex(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #14
  %.not23 = icmp eq i32 %i.y, 0
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @die(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.z = call ptr @xmalloc(i64 noundef 40) #14    ; 4 uses
  %i.aa = call ptr @lookup_commit(ptr noundef %0, ptr noundef nonnull %1) #14 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.z, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  store i32 -1, ptr %i.ad, align 4, !tbaa !50
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %register_shallow.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load i64, ptr %i.aa, align 8
  %i.af = and i64 %i.ae, 1
  %.not11.i = icmp eq i64 %i.af, 0
  br i1 %.not11.i, label %register_shallow.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  call void @commit_list_free(ptr noundef %i.ah) #14
  store ptr null, ptr %i.ag, align 8, !tbaa !51
  br label %register_shallow.exit

register_shallow.exit:                            ; preds = %bb.j, %bb.k, %bb.l
  %i.ai = call i32 @register_commit_graft(ptr noundef %0, ptr noundef nonnull %i.z, i32 noundef 0) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.aj = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.k)
  %.not22 = icmp eq ptr %i.aj, null
  br i1 %.not22, label %._crit_edge, label %bb.h, !llvm.loop !63

._crit_edge:                                      ; preds = %register_shallow.exit, %bb.g
  %i.ak = call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.an = load i32, ptr %i.am, align 8, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %._crit_edge, %bb.f
  %.017 = phi i32 [ %i.an, %._crit_edge ], [ 0, %bb.f ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.017
}

declare ptr @git_path_shallow(ptr noundef) local_unnamed_addr #4

declare ptr @git_fopen(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @stat_validity_clear(ptr noundef) local_unnamed_addr #4

declare void @stat_validity_update(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @get_oid_hex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @commit_shallow_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @commit_lock_file(ptr noundef %1) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 -1, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  tail call void @stat_validity_clear(ptr noundef %i.f) #14
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !12
  tail call void @parsed_object_pool_reset_commit_grafts(ptr noundef %i.g) #14
  %i.h = tail call i32 @is_repository_shallow(ptr noundef %0) ; 0 uses
  ret i32 %i.a
}

declare i32 @commit_lock_file(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @rollback_shallow_file(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rollback_lock_file(ptr noundef %1) #14 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 -1, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  tail call void @stat_validity_clear(ptr noundef %i.f) #14
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !12
  tail call void @parsed_object_pool_reset_commit_grafts(ptr noundef %i.g) #14
  ret void
}

declare i32 @rollback_lock_file(ptr noundef) local_unnamed_addr #4
end_hunk_0
