inline.NumInlined: 91
inline.NumDeleted: 28
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.strvec = type { ptr, i64, i64 }
%struct.strbuf = type { i64, i64, ptr }
%struct.midx_snapshot_ref_data = type { ptr, ptr, %struct.oidset, i32 }
%struct.oidset = type { %struct.kh_oid_set }
%struct.kh_oid_set = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.object_id = type { [32 x i8], i32 }
%struct.child_process = type { %struct.strvec, %struct.strvec, i32, i32, i64, ptr, ptr, i32, i32, i32, ptr, i8, ptr, i8, ptr }
%struct.string_list = type { ptr, i64, i64, i8, ptr }
%struct.midx_compaction_step = type { %union.anon, i32, ptr, i32 }
%union.anon = type { %struct.string_list }
%struct.lock_file = type { ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"could not open tempfile %s for writing\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"could not close refs snapshot tempfile\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"repack-midx.c\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"write_midx mode is NONE?\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"unhandled write_midx mode: %d\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@empty_strvec = external global [0 x ptr], align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"--preferred-pack=%s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c".mtimes\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"--preferred-pack=pack-%s.pack\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"--refs-snapshot=%s\00", align 1
@strbuf_slopbuf = external global [0 x i8], align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%s.idx\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"pack-%s.idx\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c".pack\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c".idx\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"./strbuf.h\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"strbuf_setlen() beyond buffer\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"!strbuf_slopbuf[0]\00", align 1
@__PRETTY_FUNCTION__.strbuf_setlen = private unnamed_addr constant [44 x i8] c"void strbuf_setlen(struct strbuf *, size_t)\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"multi-pack-index\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"--progress\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"--no-progress\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"--bitmap\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"--stdin-packs\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c".bitmap\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"could not remove stale bitmap: %s\00", align 1
@__const.write_midx_incremental.keep_hashes = private unnamed_addr constant %struct.strvec { ptr @empty_strvec, i64 0, i64 0 }, align 8
@.str.30 = private unnamed_addr constant [43 x i8] c"unable to create leading directories of %s\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"unable to open multi-pack-index chain file\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"unable to generate compaction plan\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"unable to execute compaction step %lu\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"missing result for compaction step %lu\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"repack\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"make_midx_compaction_plan\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"could not load pack %u from MIDX\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"steps:write\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"include:fresh\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"too many objects in MIDX compaction step\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"include:fresh:objects_nr\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"exclude:unmodified\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"include:unmodified\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"include:unmodified:midx\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"include:unmodified:objects_nr\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"midx:rewrote-tip\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"compact\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"candidate\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"violated\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"objects_nr\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"next_objects_nr\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"split_factor\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"could not find preferred pack for MIDX %s\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"midx:pack\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"step:objects_nr\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"step:packs_nr\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"steps:rest\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"proposed\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"proposed:objects_nr\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"compact:violated:at\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"compact:violated:at:objects_nr\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu * %lu\00", align 1
@.str.71 = private unnamed_addr constant [34 x i8] c"cannot use UNKNOWN step as a base\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"cannot use WRITE step as a base\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"unhandled midx compaction step type %d\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"cannot execute UNKNOWN midx compaction step\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"no packs to write MIDX during compaction\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"--incremental\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"--no-write-chain-file\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"--base=%s\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.80 = private unnamed_addr constant [54 x i8] c"expected exactly one line during MIDX write, got: %lu\00", align 1
@__const.midx_compaction_step_exec_compact.cmd = private unnamed_addr constant { %struct.strvec, %struct.strvec, i32, i32, i64, ptr, ptr, i32, i32, i32, [4 x i8], ptr, i8, [7 x i8], ptr, i8, [7 x i8], ptr } { %struct.strvec { ptr @empty_strvec, i64 0, i64 0 }, %struct.strvec { ptr @empty_strvec, i64 0, i64 0 }, i32 0, i32 0, i64 0, ptr null, ptr null, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer, ptr null }, align 8
@__const.midx_compaction_step_exec_compact.buf = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@.str.81 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"unexpected MIDX output: '%s'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @midx_snapshot_refs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %struct.midx_snapshot_ref_data, align 8 ; 8 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %0, ptr %2, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @oidset_init(ptr noundef nonnull %i.d, i64 noundef 0) #13
  %i.e = call ptr @fdopen_tempfile(ptr noundef %1, ptr noundef nonnull @.str) #13
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call fastcc ptr @_(ptr noundef nonnull @.str.1)
  %i.g = call ptr @get_tempfile_path(ptr noundef %1) #13
  call void (ptr, ...) @die(ptr noundef %i.f, ptr noundef %i.g) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %i.c, align 8, !tbaa !23
  call void @for_each_preferred_bitmap_tip(ptr noundef %0, ptr noundef nonnull @midx_snapshot_ref_one, ptr noundef nonnull %2) #13
  store i32 0, ptr %i.c, align 8, !tbaa !23
  %i.h = call ptr @get_main_ref_store(ptr noundef %0) #13
  %i.i = call i32 @refs_for_each_ref(ptr noundef %i.h, ptr noundef nonnull @midx_snapshot_ref_one, ptr noundef nonnull %2) #13 ; 0 uses
  %i.j = call i32 @close_tempfile_gently(ptr noundef %1) #13
  %.not3 = icmp eq i32 %i.j, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__errno_location() #15    ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  %i.m = call i32 @delete_tempfile(ptr noundef nonnull %i.a) #13 ; 0 uses
  store i32 %i.l, ptr %i.k, align 4, !tbaa !24
  %i.n = call fastcc ptr @_(ptr noundef nonnull @.str.2)
  call void (ptr, ...) @die_errno(ptr noundef %i.n) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @oidset_clear(ptr noundef nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @oidset_init(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @fdopen_tempfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !25
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.6, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

declare ptr @get_tempfile_path(ptr noundef) local_unnamed_addr #2

declare void @for_each_preferred_bitmap_tip(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @midx_snapshot_ref_one(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.object_id, align 4          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = load ptr, ptr %1, align 8, !tbaa !15
  %i.d = call i32 @reference_get_peeled_oid(ptr noundef %i.c, ptr noundef %0, ptr noundef nonnull %2) #13
  %.not = icmp eq i32 %i.d, 0
  %spec.select = select i1 %.not, ptr %2, ptr %i.b ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = call i32 @oidset_insert(ptr noundef nonnull %i.e, ptr noundef %spec.select) #13
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = call i32 @odb_read_object_info(ptr noundef %i.i, ptr noundef %spec.select, ptr noundef null) #13
  %.not13 = icmp eq i32 %i.j, 1
  br i1 %.not13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load volatile ptr, ptr %i.m, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23
  %.not14 = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not14, ptr @.str.6, ptr @.str.8
  %i.r = call ptr @oid_to_hex(ptr noundef %spec.select) #13
  %i.s = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.q, ptr noundef %i.r) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 0
}

declare i32 @refs_for_each_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_main_ref_store(ptr noundef) local_unnamed_addr #2

declare i32 @close_tempfile_gently(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare i32 @delete_tempfile(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @die_errno(ptr noundef, ...) local_unnamed_addr #3

declare void @oidset_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @repack_write_midx(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.child_process, align 8      ; 12 uses
  %2 = alloca %struct.strbuf, align 8             ; 8 uses
  %3 = alloca %struct.strbuf, align 8             ; 7 uses
  %4 = alloca %struct.strbuf, align 8             ; 6 uses
  %5 = alloca %struct.child_process, align 8      ; 12 uses
  %6 = alloca %struct.string_list, align 8        ; 8 uses
  %7 = alloca %struct.strbuf, align 8             ; 9 uses
  %8 = alloca %struct.strbuf, align 8             ; 7 uses
  %9 = alloca %struct.midx_compaction_step, align 8 ; 19 uses
  %10 = alloca %struct.strbuf, align 8            ; 17 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %11 = alloca %struct.strbuf, align 8            ; 6 uses
  %12 = alloca %struct.lock_file, align 8         ; 6 uses
  %13 = alloca %struct.strvec, align 8            ; 6 uses
  %14 = alloca %struct.strbuf, align 8            ; 15 uses
  %15 = alloca %struct.strbuf, align 8            ; 7 uses
  %16 = alloca %struct.strbuf, align 8            ; 4 uses
  %17 = alloca %struct.strbuf, align 8            ; 10 uses
  %18 = alloca %struct.strbuf, align 8            ; 21 uses
  %19 = alloca %struct.child_process, align 8     ; 12 uses
  %20 = alloca %struct.string_list, align 8       ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !60   ; 2 uses
  switch i32 %i.c, label %bb.ha [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.by
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.3, i32 noundef 1014, ptr noundef nonnull @.str.4) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %19, ptr noundef nonnull align 8 dereferenceable(136) @__const.midx_compaction_step_exec_compact.cmd, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
end_hunk_0
begin_hunk_1_@repack_write_midx:bb.a
  call void @trace2_data_intmax_fl(ptr noundef nonnull @.str.3, i32 noundef 861, ptr noundef nonnull @.str.35, ptr noundef %i.vo, ptr noundef nonnull @.str.63, i64 noundef %i.vq) #13
  %i.vr = getelementptr inbounds nuw i8, ptr %.0324.i.i, i64 160 ; 3 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !122 ; 3 uses
  %.not198.i.i = icmp eq ptr %i.vs, null
  br i1 %.not198.i.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 %i.vj, ptr %i.nd, align 8, !tbaa !115
  br label %.thread253.i.i

bb.es:                                            ; preds = %bb.eq
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 60
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !123
  %i.vv = load i32, ptr %i.ul, align 4, !tbaa !124
  %i.vw = udiv i32 %i.vu, %i.vv
  %i.vx = icmp ult i32 %i.vj, %i.vw
  br i1 %i.vx, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.vy = load ptr, ptr %0, align 8, !tbaa !66
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !104
  %i.wa = call ptr @midx_get_checksum_hex(ptr noundef nonnull %i.vs) #13
  call void @trace2_data_string_fl(ptr noundef nonnull @.str.3, i32 noundef 884, ptr noundef nonnull @.str.35, ptr noundef %i.vz, ptr noundef nonnull @.str.64, ptr noundef %i.wa) #13
  %i.wb = load ptr, ptr %0, align 8, !tbaa !66
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !104
  %i.wd = load ptr, ptr %i.vr, align 8, !tbaa !122
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 60
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !123
  %i.wg = zext i32 %i.wf to i64
  call void @trace2_data_intmax_fl(ptr noundef nonnull @.str.3, i32 noundef 887, ptr noundef nonnull @.str.35, ptr noundef %i.wc, ptr noundef nonnull @.str.65, i64 noundef %i.wg) #13
  br label %.thread253.i.i

bb.eu:                                            ; preds = %bb.es
  store i32 %i.vj, ptr %i.nd, align 8, !tbaa !115
  %i.wh = load ptr, ptr %0, align 8, !tbaa !66
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !104
  %i.wj = zext i32 %i.vj to i64
  call void @trace2_data_intmax_fl(ptr noundef nonnull @.str.3, i32 noundef 899, ptr noundef nonnull @.str.35, ptr noundef %i.wi, ptr noundef nonnull @.str.57, i64 noundef %i.wj) #13
  %i.wk = load ptr, ptr %i.vr, align 8, !tbaa !122 ; 2 uses
  %.not197.i.i = icmp eq ptr %i.wk, null
  br i1 %.not197.i.i, label %.thread253.i.i, label %bb.en

.thread253.i.i:                                   ; preds = %bb.eu, %bb.et, %bb.er
  %.0270.i.i = phi ptr [ %.0324.i.i, %bb.et ], [ %.0324.i.i, %bb.er ], [ null, %bb.eu ] ; 3 uses
  %i.wl = icmp eq ptr %.4183326.i.i, %.0270.i.i
  br i1 %i.wl, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %.thread253.i.i
  store i32 1, ptr %i.lf, align 8, !tbaa !113
  store ptr %.4183326.i.i, ptr %9, align 8, !tbaa !25
  %i.wm = load ptr, ptr %0, align 8, !tbaa !66
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !104
  call void @trace2_data_string_fl(ptr noundef nonnull @.str.3, i32 noundef 908, ptr noundef nonnull @.str.35, ptr noundef %i.wn, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) #13
  br label %bb.ex

bb.ew:                                            ; preds = %.thread253.i.i
  store i32 3, ptr %i.lf, align 8, !tbaa !113
  store ptr %.0270.i.i, ptr %9, align 8, !tbaa !25
  store ptr %.4183326.i.i, ptr %i.tv, align 8, !tbaa !25
  %i.wo = load ptr, ptr %0, align 8, !tbaa !66
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !104
  %i.wq = call ptr @midx_get_checksum_hex(ptr noundef nonnull %.4183326.i.i) #13
  call void @trace2_data_string_fl(ptr noundef nonnull @.str.3, i32 noundef 915, ptr noundef nonnull @.str.35, ptr noundef %i.wp, ptr noundef nonnull @.str.68, ptr noundef %i.wq) #13
  %i.wr = load ptr, ptr %0, align 8, !tbaa !66
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !104
  call void @trace2_data_string_fl(ptr noundef nonnull @.str.3, i32 noundef 917, ptr noundef nonnull @.str.35, ptr noundef %i.ws, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.49) #13
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.wt = getelementptr inbounds nuw i8, ptr %.0270.i.i, i64 160
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !122 ; 2 uses
  %i.wv = getelementptr inbounds nuw [64 x i8], ptr %.3177.i.i, i64 %.1171328.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.wv, ptr noundef nonnull align 8 dereferenceable(64) %9, i64 64, i1 false), !tbaa.struct !126
  %i.ww = load ptr, ptr %0, align 8, !tbaa !66
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !104
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.3, i32 noundef 922, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.60, ptr noundef %i.wx) #13
  %.not196.i.i = icmp eq ptr %i.wu, null
  br i1 %.not196.i.i, label %._crit_edge332.i.i, label %bb.ej

._crit_edge332.i.i:                               ; preds = %bb.ex, %bb.ei
  %.2176.lcssa.i.i = phi ptr [ %.1175.i.i, %bb.ei ], [ %.3177.i.i, %bb.ex ]
  %.1171.lcssa.i.i = phi i64 [ %.0170.i.i, %bb.ei ], [ %i.um, %bb.ex ]
  %i.wy = load ptr, ptr %0, align 8, !tbaa !66
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !104
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.3, i32 noundef 925, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.59, ptr noundef %i.wz) #13
  br label %repack_make_midx_compaction_plan.exit.i

repack_make_midx_compaction_plan.exit.i:          ; preds = %._crit_edge332.i.i, %.thread261.i.i, %.thread244.i.i, %bb.dk, %bb.co, %_.exit.i.i8
  %.4178.i.i = phi ptr [ null, %_.exit.i.i8 ], [ null, %bb.co ], [ null, %bb.dk ], [ %.3177.i.i, %.thread261.i.i ], [ %.2176.lcssa.i.i, %._crit_edge332.i.i ], [ null, %.thread244.i.i ] ; 2 uses
  %.3173.i.i = phi i64 [ 0, %_.exit.i.i8 ], [ 0, %bb.co ], [ 0, %bb.dk ], [ %.1171328.i.i, %.thread261.i.i ], [ %.1171.lcssa.i.i, %._crit_edge332.i.i ], [ 0, %.thread244.i.i ] ; 2 uses
  %i.xa = phi i1 [ true, %_.exit.i.i8 ], [ true, %bb.co ], [ true, %bb.dk ], [ true, %.thread261.i.i ], [ false, %._crit_edge332.i.i ], [ true, %.thread244.i.i ]
  call void @strbuf_release(ptr noundef nonnull %10) #13
  %i.xb = load ptr, ptr %0, align 8, !tbaa !66
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !104
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.3, i32 noundef 934, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef %i.xc) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br i1 %i.xa, label %bb.ey, label %repack_make_midx_append_plan.exit.i

bb.ey:                                            ; preds = %repack_make_midx_compaction_plan.exit.i
  %i.xd = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i42.i = icmp eq i32 %i.xd, 0
  br i1 %.not4.i42.i, label %_.exit44.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xe = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #13
  br label %_.exit44.i

_.exit44.i:                                       ; preds = %bb.ez, %bb.ey
  %.0.i43.i = phi ptr [ %i.xe, %bb.ez ], [ @.str.32, %bb.ey ]
  %i.xf = call i32 (ptr, ...) @error(ptr noundef %.0.i43.i) #13 ; 0 uses
  br label %bb.gy

bb.fa:                                            ; preds = %bb.cd
  %i.xg = load ptr, ptr %0, align 8, !tbaa !66
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !104
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !29
  call void @odb_reprepare(ptr noundef %i.xj) #13
  %i.xk = load ptr, ptr %0, align 8, !tbaa !66
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !103
  %i.xn = call ptr @get_multi_pack_index(ptr noundef %i.xm) #13 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !67
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !77
  %.not.i45.i = icmp eq i64 %i.xr, 0
  br i1 %.not.i45.i, label %bb.fg, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.midx_compaction_step_exec_compact.buf, i64 24, i1 false)
  %i.xs = call ptr @xrealloc(ptr noundef null, i64 noundef 1536) #13 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.xs, i8 0, i64 64, i1 false)
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 56
  store i32 2, ptr %i.xt, align 8, !tbaa !113
  call void @string_list_init_dup(ptr noundef nonnull %i.xs) #13
  %i.xu = load ptr, ptr %i.xo, align 8, !tbaa !67 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !77
  %.not71.i.i = icmp eq i64 %i.xw, 0
  br i1 %.not71.i.i, label %._crit_edge.i50.i, label %.lr.ph.i46.i

.lr.ph.i46.i:                                     ; preds = %bb.fb
  %i.xx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.xy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.fc

bb.fc:                                            ; preds = %strbuf_setlen.exit.i49.i, %.lr.ph.i46.i
  %i.xz = phi ptr [ %i.xu, %.lr.ph.i46.i ], [ %i.yl, %strbuf_setlen.exit.i49.i ]
  %i.ya = phi i64 [ 0, %.lr.ph.i46.i ], [ %i.yk, %strbuf_setlen.exit.i49.i ]
  %.061.i.i = phi i32 [ 0, %.lr.ph.i46.i ], [ %i.yj, %strbuf_setlen.exit.i49.i ]
  store i64 0, ptr %i.xx, align 8, !tbaa !72
  %i.yb = load ptr, ptr %i.xy, align 8, !tbaa !73 ; 2 uses
  %.not9.i.i47.i = icmp eq ptr %i.yb, @strbuf_slopbuf
  br i1 %.not9.i.i47.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  store i8 0, ptr %i.yb, align 1, !tbaa !25
  %.pre.i48.i = load ptr, ptr %i.xo, align 8, !tbaa !67
  br label %strbuf_setlen.exit.i49.i

bb.fe:                                            ; preds = %bb.fc
  %i.yc = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !25
  %.not10.i.i52.i = icmp eq i8 %i.yc, 0
  br i1 %.not10.i.i52.i, label %strbuf_setlen.exit.i49.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #14
  unreachable

strbuf_setlen.exit.i49.i:                         ; preds = %bb.fe, %bb.fd
  %i.yd = phi ptr [ %.pre.i48.i, %bb.fd ], [ %i.xz, %bb.fe ]
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !76
  %i.yf = getelementptr inbounds nuw [16 x i8], ptr %i.ye, i64 %i.ya
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !74
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %8, ptr noundef nonnull @.str.15, ptr noundef %i.yg) #13
  %i.yh = load ptr, ptr %i.xy, align 8, !tbaa !73
  %i.yi = call ptr @string_list_append(ptr noundef nonnull %i.xs, ptr noundef %i.yh) #13 ; 0 uses
  %i.yj = add i32 %.061.i.i, 1                    ; 2 uses
  %i.yk = zext i32 %i.yj to i64                   ; 2 uses
  %i.yl = load ptr, ptr %i.xo, align 8, !tbaa !67 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = load i64, ptr %i.ym, align 8, !tbaa !77
  %i.yo = icmp ugt i64 %i.yn, %i.yk
  br i1 %i.yo, label %bb.fc, label %._crit_edge.i50.i, !llvm.loop !128

._crit_edge.i50.i:                                ; preds = %strbuf_setlen.exit.i49.i, %bb.fb
  call void @strbuf_release(ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.fg

bb.fg:                                            ; preds = %._crit_edge.i50.i, %bb.fa
  %.147.i.i = phi ptr [ %i.xs, %._crit_edge.i50.i ], [ null, %bb.fa ] ; 2 uses
  %.044.i.i = phi i64 [ 1, %._crit_edge.i50.i ], [ 0, %bb.fa ] ; 2 uses
  %.2.i.i = phi i64 [ 24, %._crit_edge.i50.i ], [ 0, %bb.fa ]
  %.not5462.i.i = icmp eq ptr %i.xn, null
  br i1 %.not5462.i.i, label %repack_make_midx_append_plan.exit.i, label %st_add.exit.i.i

st_add.exit.i.i:                                  ; preds = %bb.fg, %bb.fi
  %.366.i.i = phi i64 [ %.5.i.i, %bb.fi ], [ %.2.i.i, %bb.fg ] ; 3 uses
  %.14565.i.i = phi i64 [ %i.yp, %bb.fi ], [ %.044.i.i, %bb.fg ] ; 3 uses
  %.24864.i.i = phi ptr [ %.349.i.i, %bb.fi ], [ %.147.i.i, %bb.fg ] ; 2 uses
  %.05063.i.i = phi ptr [ %i.zd, %bb.fi ], [ %i.xn, %bb.fg ] ; 3 uses
  %i.yp = add nuw i64 %.14565.i.i, 1              ; 3 uses
  %.not79.i.i = icmp ult i64 %.14565.i.i, %.366.i.i
  br i1 %.not79.i.i, label %bb.fi, label %st_add.exit55.i.i

st_add.exit55.i.i:                                ; preds = %st_add.exit.i.i
  %i.yq = mul i64 %.366.i.i, 3
  %i.yr = add i64 %i.yq, 48
  %i.ys = lshr i64 %i.yr, 1
  %spec.select.i.i = call i64 @llvm.umax.i64(i64 %i.ys, i64 %i.yp) ; 4 uses
  %i.yt = icmp ugt i64 %spec.select.i.i, 288230376151711743
  br i1 %i.yt, label %bb.fh, label %st_mult.exit.i51.i

bb.fh:                                            ; preds = %st_add.exit55.i.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.69, i64 noundef 64, i64 noundef %spec.select.i.i) #14
  unreachable

st_mult.exit.i51.i:                               ; preds = %st_add.exit55.i.i
  %i.yu = shl nuw i64 %spec.select.i.i, 6
  %i.yv = call ptr @xrealloc(ptr noundef %.24864.i.i, i64 noundef %i.yu) #13
  br label %bb.fi

bb.fi:                                            ; preds = %st_mult.exit.i51.i, %st_add.exit.i.i
  %.349.i.i = phi ptr [ %i.yv, %st_mult.exit.i51.i ], [ %.24864.i.i, %st_add.exit.i.i ] ; 3 uses
  %.5.i.i = phi i64 [ %spec.select.i.i, %st_mult.exit.i51.i ], [ %.366.i.i, %st_add.exit.i.i ]
  %i.yw = getelementptr inbounds nuw [64 x i8], ptr %.349.i.i, i64 %.14565.i.i ; 4 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.yx, i8 0, i64 56, i1 false)
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 56
  store i32 1, ptr %i.yy, align 8, !tbaa !113
  store ptr %.05063.i.i, ptr %i.yw, align 8, !tbaa !25
  %i.yz = getelementptr inbounds nuw i8, ptr %.05063.i.i, i64 60
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !123
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yw, i64 40
  store i32 %i.za, ptr %i.zb, align 8, !tbaa !115
  %i.zc = getelementptr inbounds nuw i8, ptr %.05063.i.i, i64 160
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !122 ; 2 uses
  %.not54.i.i = icmp eq ptr %i.zd, null
  br i1 %.not54.i.i, label %.lr.ph.i9, label %st_add.exit.i.i, !llvm.loop !129

repack_make_midx_append_plan.exit.i:              ; preds = %bb.fg, %repack_make_midx_compaction_plan.exit.i
  %.065.i = phi ptr [ %.4178.i.i, %repack_make_midx_compaction_plan.exit.i ], [ %.147.i.i, %bb.fg ] ; 2 uses
  %.063.i = phi i64 [ %.3173.i.i, %repack_make_midx_compaction_plan.exit.i ], [ %.044.i.i, %bb.fg ] ; 2 uses
  %.not132.i = icmp eq i64 %.063.i, 0
  br i1 %.not132.i, label %._crit_edge.i, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %bb.fi, %repack_make_midx_append_plan.exit.i
  %.063233.i = phi i64 [ %.063.i, %repack_make_midx_append_plan.exit.i ], [ %i.yp, %bb.fi ] ; 5 uses
  %.065231.i = phi ptr [ %.065.i, %repack_make_midx_append_plan.exit.i ], [ %.349.i.i, %bb.fi ] ; 5 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.zj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.zk = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.zl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.phi.trans.insert.i.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.phi.trans.insert17.i.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.zn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.zo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.fj

bb.fj:                                            ; preds = %bb.gv, %.lr.ph.i9
  %.030125.i = phi i64 [ 0, %.lr.ph.i9 ], [ %i.zq, %bb.gv ] ; 3 uses
  %i.zp = getelementptr inbounds nuw [64 x i8], ptr %.065231.i, i64 %.030125.i ; 11 uses
  %i.zq = add nuw i64 %.030125.i, 1               ; 4 uses
  %i.zr = icmp ult i64 %i.zq, %.063233.i
  br i1 %i.zr, label %bb.fk, label %bb.fp

bb.fk:                                            ; preds = %bb.fj
  %i.zs = getelementptr inbounds nuw [64 x i8], ptr %.065231.i, i64 %i.zq ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 56
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !113 ; 2 uses
  switch i32 %i.zu, label %bb.fo [
    i32 0, label %bb.fl
    i32 1, label %midx_compaction_step_base.exit.i
    i32 2, label %bb.fm
    i32 3, label %bb.fn
  ]

bb.fl:                                            ; preds = %bb.fk
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.3, i32 noundef 415, ptr noundef nonnull @.str.71) #14
  unreachable

bb.fm:                                            ; preds = %bb.fk
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.3, i32 noundef 419, ptr noundef nonnull @.str.72) #14
  unreachable

bb.fn:                                            ; preds = %bb.fk
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  br label %midx_compaction_step_base.exit.i

bb.fo:                                            ; preds = %bb.fk
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.3, i32 noundef 423, ptr noundef nonnull @.str.73, i32 noundef %i.zu) #14
  unreachable

midx_compaction_step_base.exit.i:                 ; preds = %bb.fn, %bb.fk
  %.sink.in.i.i = phi ptr [ %i.zv, %bb.fn ], [ %i.zs, %bb.fk ]
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !25
  %i.zw = call ptr @midx_get_checksum_hex(ptr noundef %.sink.i.i) #13
  %i.zx = call ptr @xstrdup(ptr noundef %i.zw) #13
  br label %bb.fp

bb.fp:                                            ; preds = %midx_compaction_step_base.exit.i, %bb.fj
  %.028.i = phi ptr [ %i.zx, %midx_compaction_step_base.exit.i ], [ null, %bb.fj ] ; 4 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zp, i64 56
  %i.zz = load i32, ptr %i.zy, align 8, !tbaa !113 ; 2 uses
  switch i32 %i.zz, label %bb.gs [
    i32 0, label %bb.fq
    i32 1, label %midx_compaction_step_exec.exit.thread.i
    i32 2, label %bb.fr
    i32 3, label %bb.gk
  ]

bb.fq:                                            ; preds = %bb.fp
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.3, i32 noundef 532, ptr noundef nonnull @.str.74) #14
  unreachable

midx_compaction_step_exec.exit.thread.i:          ; preds = %bb.fp
  %i.aaa = load ptr, ptr %i.zp, align 8, !tbaa !25
  %i.aab = call ptr @midx_get_checksum_hex(ptr noundef %i.aaa) #13
  %i.aac = call ptr @xstrdup(ptr noundef %i.aab) #13
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zp, i64 48
  store ptr %i.aac, ptr %i.aad, align 8, !tbaa !130
  br label %bb.gv

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(136) @__const.midx_compaction_step_exec_compact.cmd, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  store i8 1, ptr %i.zj, align 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zp, i64 8 ; 3 uses
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i10 = icmp eq i64 %i.aaf, 0
  br i1 %.not.i.i.i10, label %bb.fs, label %bb.fu

bb.fs:                                            ; preds = %bb.fr
  %i.aag = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i.i.i = icmp eq i32 %i.aag, 0
  br i1 %.not4.i.i.i.i, label %_.exit.i.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aah = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #13
  br label %_.exit.i.i.i

_.exit.i.i.i:                                     ; preds = %bb.ft, %bb.fs
  %.0.i.i.i.i = phi ptr [ %i.aah, %bb.ft ], [ @.str.75, %bb.fs ]
  %i.aai = call i32 (ptr, ...) @error(ptr noundef %.0.i.i.i.i) #13 ; 0 uses
  br label %midx_compaction_step_exec_write.exit.i.i

bb.fu:                                            ; preds = %bb.fr
  %i.aaj = load ptr, ptr %i.zp, align 8, !tbaa !25 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.aaf, 4
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %.idx.i.i.i
  %.not1828.not.i.i.i = icmp eq ptr %i.aaj, null
  br i1 %.not1828.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %bb.fu, %bb.fw
  %.01631.i.i.i = phi ptr [ %.1.i.i.i, %bb.fw ], [ null, %bb.fu ]
  %.01730.i.i.i = phi ptr [ %i.aao, %bb.fw ], [ %i.aaj, %bb.fu ] ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.01730.i.i.i, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !100
  %.not22.i.i.i = icmp eq ptr %i.aam, null
  br i1 %.not22.i.i.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph.i.i.i11
  %i.aan = load ptr, ptr %.01730.i.i.i, align 8, !tbaa !74
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %.lr.ph.i.i.i11
  %.1.i.i.i = phi ptr [ %i.aan, %bb.fv ], [ %.01631.i.i.i, %.lr.ph.i.i.i11 ] ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.01730.i.i.i, i64 16 ; 2 uses
  %i.aap = icmp ult ptr %i.aao, %i.aak
  br i1 %i.aap, label %.lr.ph.i.i.i11, label %.critedge.i.i.i, !llvm.loop !131

.critedge.i.i.i:                                  ; preds = %bb.fw, %bb.fu
  %.016.lcssa.i.i.i = phi ptr [ null, %bb.fu ], [ %.1.i.i.i, %bb.fw ] ; 3 uses
  store i8 8, ptr %i.zk, align 8
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %5, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.9, ptr noundef null) #13
  %i.aaq = load i32, ptr %i.zf, align 8, !tbaa !98
  %.not.i.i.i54.i = icmp eq i32 %i.aaq, 0
  %.str.23..str.22.i.i.i.i = select i1 %.not.i.i.i54.i, ptr @.str.23, ptr @.str.22
  %i.aar = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull %.str.23..str.22.i.i.i.i) #13 ; 0 uses
  %i.aas = load i32, ptr %i.zg, align 4, !tbaa !99
  %.not8.i.i.i.i = icmp eq i32 %i.aas, 0
  br i1 %.not8.i.i.i.i, label %repack_prepare_midx_command.exit.i.i.i, label %bb.fx

bb.fx:                                            ; preds = %.critedge.i.i.i
  %i.aat = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.24) #13 ; 0 uses
  br label %repack_prepare_midx_command.exit.i.i.i

repack_prepare_midx_command.exit.i.i.i:           ; preds = %bb.fx, %.critedge.i.i.i
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %5, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef null) #13
  %.not19.i.i.i = icmp eq ptr %.028.i, null
  %i.aau = select i1 %.not19.i.i.i, ptr @.str.79, ptr %.028.i
  %i.aav = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %5, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.aau) #13 ; 0 uses
  %.not20.i.i.i = icmp eq ptr %.016.lcssa.i.i.i, null
  br i1 %.not20.i.i.i, label %bb.gg, label %bb.fy

bb.fy:                                            ; preds = %repack_prepare_midx_command.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @__const.midx_compaction_step_exec_compact.buf, i64 24, i1 false)
  %i.aaw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.016.lcssa.i.i.i) #16
  call void @strbuf_add(ptr noundef nonnull %7, ptr noundef nonnull %.016.lcssa.i.i.i, i64 noundef %i.aaw) #13
  %i.aax = load ptr, ptr %i.zl, align 8, !tbaa !73 ; 2 uses
  %i.aay = load i64, ptr %i.zm, align 8, !tbaa !86 ; 2 uses
  %i.aaz = icmp ult i64 %i.aay, 4
  br i1 %i.aaz, label %strbuf_strip_suffix.exit.i.i.i14, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aba = add i64 %i.aay, -4                     ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.aba ; 2 uses
  %i.abc = load i32, ptr %i.abb, align 1
  %i.abd = icmp ne i32 %i.abc, 2019846446
  %i.abe = zext i1 %i.abd to i32
  %.not.i.i.i.i.i13 = icmp eq i32 %i.abe, 0
  br i1 %.not.i.i.i.i.i13, label %bb.ga, label %strbuf_strip_suffix.exit.i.i.i14

bb.ga:                                            ; preds = %bb.fz
  store i64 %i.aba, ptr %i.zm, align 8, !tbaa !86
  %i.abf = load i64, ptr %7, align 8, !tbaa !87
  %spec.select.i.i.i.i.i16 = call i64 @llvm.usub.sat.i64(i64 %i.abf, i64 1)
  %i.abg = icmp ugt i64 %i.aba, %spec.select.i.i.i.i.i16
  br i1 %i.abg, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.18, i32 noundef 167, ptr noundef nonnull @.str.19) #14
  unreachable

bb.gc:                                            ; preds = %bb.ga
  %.not9.i.i.i.i.i17 = icmp eq ptr %i.aax, @strbuf_slopbuf
  br i1 %.not9.i.i.i.i.i17, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  store i8 0, ptr %i.abb, align 1, !tbaa !25
  br label %strbuf_strip_suffix.exit.i.i.i14
end_hunk_1
