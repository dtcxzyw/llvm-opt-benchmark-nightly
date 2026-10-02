Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/fsmonitor?download=true
inline.NumInlined: 48
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.trace_key = type { ptr, i32, i8 }
%struct.strvec = type { ptr, i64, i64 }
%struct.strbuf = type { i64, i64, ptr }
%struct.child_process = type { %struct.strvec, %struct.strvec, i32, i32, i64, ptr, ptr, i32, i32, i32, ptr, i8, ptr, i8, ptr }

@.str = private unnamed_addr constant [20 x i8] c"GIT_TRACE_FSMONITOR\00", align 1
@trace_fsmonitor = dso_local global { ptr, i32, i8, [3 x i8] } { ptr @.str, i32 0, i8 0, [3 x i8] zeroinitializer }, align 8
@strbuf_slopbuf = external global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"corrupt fsmonitor extension (too short)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"bad fsmonitor version %d\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"failed to parse ewah bitmap reading fsmonitor index extension\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"fsmonitor.c\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"extension/fsmn/read/token\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"read fsmonitor extension successful '%s'\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"extension/fsmn/write/token\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"write fsmonitor extension successful '%s'\00", align 1
@refresh_fsmonitor.warn_once = internal unnamed_addr global i1 false, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"refresh fsmonitor\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"builtin:fake\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"fsm_client\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"query/trivial-response\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"fsm_mode == FSMONITOR_MODE_HOOK\00", align 1
@__PRETTY_FUNCTION__.refresh_fsmonitor = private unnamed_addr constant [45 x i8] c"void refresh_fsmonitor(struct index_state *)\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Empty last update token.\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"fsm_hook\00", align 1
@trace_perf_key = external local_unnamed_addr global %struct.trace_key, align 8
@.str.19 = private unnamed_addr constant [23 x i8] c"fsmonitor process '%s'\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"fsmonitor process '%s' returned %s\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"fsmonitor\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"apply_results\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"apply_count\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"add fsmonitor\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"remove fsmonitor\00", align 1
@.str.28 = private unnamed_addr constant [59 x i8] c"fsmonitor_dirty has more entries than the index (%lu > %u)\00", align 1
@the_repository = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [26 x i8] c"core.fsmonitorhookversion\00", align 1
@.str.30 = private unnamed_addr constant [72 x i8] c"Invalid hook version '%i' in core.fsmonitorhookversion. Must be 1 or 2.\00", align 1
@empty_strvec = external global [0 x ptr], align 8
@__const.query_fsmonitor_hook.cp = private unnamed_addr constant { %struct.strvec, %struct.strvec, i32, i32, i64, ptr, ptr, i32, i32, i32, [4 x i8], ptr, i8, [7 x i8], ptr, i8, [7 x i8], ptr } { %struct.strvec { ptr @empty_strvec, i64 0, i64 0 }, %struct.strvec { ptr @empty_strvec, i64 0, i64 0 }, i32 0, i32 0, i64 0, ptr null, ptr null, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer, ptr null }, align 8
@.str.31 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"query/failed\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"query/response-length\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"fsmonitor_refresh_callback '%s' (pos %d)\00", align 1
@ignore_case = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [35 x i8] c"fsmonitor_refresh_callback CNT: %d\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"fsmonitor_refresh_callback INV: '%s'\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"fsmonitor_refresh_callback MAP: '%s' '%s'\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"handle_using_dir_name_hash_icase(%s) did not exact match\00", align 1
@__const.initialize_fsmonitor_last_update.last_update = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @read_fsmonitor_extension(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.initialize_fsmonitor_last_update.last_update, i64 24, i1 false)
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1) #9 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  switch i32 %i.d, label %bb.f [
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %.val = load i64, ptr %i.e, align 1
  %op.rdx = tail call i64 @llvm.bswap.i64(i64 %.val)
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.2, i64 noundef %op.rdx) #9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #10
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %i.e, i64 noundef %i.g) #9
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.e, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3, i32 noundef %i.d) #9 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.f, %bb.d ], [ %i.k, %bb.e ]  ; 2 uses
  %i.m = call ptr @strbuf_detach(ptr noundef nonnull %3, ptr noundef null) #9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !33
  %i.o = load i32, ptr %.0, align 1
  %i.p = call i32 @llvm.bswap.i32(i32 %i.o)       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.r = call ptr @ewah_new() #9                  ; 4 uses
  %i.s = zext i32 %i.p to i64
  %i.t = call i64 @ewah_read_mmap(ptr noundef %i.r, ptr noundef nonnull %i.q, i64 noundef %i.s) #9
  %i.u = trunc i64 %i.t to i32
  %.not = icmp eq i32 %i.p, %i.u
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @ewah_free(ptr noundef %i.r) #9
  %i.v = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4) #9 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.r, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not30 = icmp eq ptr %i.y, null
  br i1 %.not30, label %bb.j, label %assert_index_minimum.exit

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !38  ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 12
  %.val.a = load i32, ptr %i.ab, align 4, !tbaa !39 ; 2 uses
  %i.ac = zext i32 %.val.a to i64
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.k, label %assert_index_minimum.exit

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.5, i32 noundef 28, ptr noundef nonnull @.str.28, i64 noundef %i.aa, i32 noundef %.val.a) #11
  unreachable

assert_index_minimum.exit:                        ; preds = %bb.j, %bb.i
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !33
  call void @trace2_data_string_fl(ptr noundef nonnull @.str.5, i32 noundef 102, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef %i.ae) #9
  %trace_fsmonitor.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @trace_fsmonitor, i64 8), align 8, !tbaa !41
  %trace_fsmonitor.val32 = load i8, ptr getelementptr inbounds nuw (i8, ptr @trace_fsmonitor, i64 12), align 4
  %.not.i = icmp eq i32 %trace_fsmonitor.val, 0
  %.not3133 = trunc i8 %trace_fsmonitor.val32 to i1
  %.not31 = select i1 %.not.i, i1 %.not3133, i1 false
  br i1 %.not31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %assert_index_minimum.exit
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !33
  call void (ptr, i32, ptr, ptr, ...) @trace_printf_key_fl(ptr noundef nonnull @.str.5, i32 noundef 105, ptr noundef nonnull @trace_fsmonitor, ptr noundef nonnull @.str.8, ptr noundef %i.af) #9
  br label %bb.m

bb.m:                                             ; preds = %assert_index_minimum.exit, %bb.l, %bb.h, %bb.f, %bb.b
  %.028 = phi i32 [ -1, %bb.b ], [ -1, %bb.h ], [ -1, %bb.f ], [ 0, %bb.l ], [ 0, %assert_index_minimum.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %.028
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @strbuf_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ewah_new() local_unnamed_addr #2

declare i64 @ewah_read_mmap(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ewah_free(ptr noundef) local_unnamed_addr #2

declare void @trace2_data_string_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @trace_printf_key_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @fill_fsmonitor_bitmap(ptr nofree noundef captures(none) initializes((216, 224)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ewah_new() #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 2 uses
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.e = phi i32 [ %i.r, %bb.e ], [ %i.d, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %.014 = phi i32 [ %.1, %bb.e ], [ 0, %bb.a ]    ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.k = and i32 %i.j, 131072
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = add i32 %.014, 1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.m = and i32 %i.j, 2097152
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.o = trunc nuw i64 %indvars.iv to i32
  %i.p = sub i32 %i.o, %.014
  %i.q = zext i32 %i.p to i64
  tail call void @ewah_set(ptr noundef %i.n, i64 noundef %i.q) #9
  %.pre = load i32, ptr %i.c, align 4, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.r = phi i32 [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.l, %bb.b ], [ %.014, %bb.c ], [ %.014, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

declare void @ewah_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @write_fsmonitor_extension(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %assert_index_minimum.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 12
  %.val = load i32, ptr %i.i, align 4, !tbaa !39  ; 2 uses
  %i.j = zext i32 %.val to i64
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %assert_index_minimum.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.5, i32 noundef 28, ptr noundef nonnull @.str.28, i64 noundef %i.h, i32 noundef %.val) #11
  unreachable

assert_index_minimum.exit:                        ; preds = %bb.b, %bb.a
  store <4 x i8> <i8 0, i8 0, i8 0, i8 2>, ptr %i.a, align 4, !tbaa !47
  call void @strbuf_add(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4) #9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #10
  call void @strbuf_add(ptr noundef %0, ptr noundef nonnull %i.m, i64 noundef %i.n) #9
  %i.o = load i64, ptr %0, align 8, !tbaa !48     ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %assert_index_minimum.exit
end_hunk_0
