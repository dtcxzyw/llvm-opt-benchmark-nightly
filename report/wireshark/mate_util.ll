Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/mate_util?download=true
inline.NumInlined: 31
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@dbg_print.debug_buffer = internal global [4096 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"MATE\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"plugins/epan/mate/mate_util.c\00", align 1
@__func__.scs_subscribe = private unnamed_addr constant [14 x i8] c"scs_subscribe\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"mate SCS: string truncated due to huge size\00", align 1
@__func__.scs_unsubscribe = private unnamed_addr constant [16 x i8] c"scs_unsubscribe\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"mate SCS: not subscribed\00", align 1
@avp_strings = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" %s;\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" .%s;\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"MATE Will not run as root\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Error while reading '%f'\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Maximum item length exceeded\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"expecting name got: '%c'\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"operator expected found new line\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"name or match operator expected found '%c'\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"';' expected found new line\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Cannot Open file '%s'\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"Error Loading LoAL from file: in %s at line: %i, %s\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Error Loading LoAL at line: %i, %s\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dbg_print(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3, ...) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4
  %i.b = icmp slt i32 %i.a, %1
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.c = call i32 @__vsnprintf_chk(ptr noundef nonnull @dbg_print.debug_buffer, i64 noundef 4096, i32 noundef 2, i64 noundef 4096, ptr noundef %3, ptr noundef nonnull %4) #15 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %.not7 = icmp eq ptr %2, null
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str, i32 noundef 4, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef @.str.1, ptr noundef @dbg_print.debug_buffer)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = call i32 @fputs(ptr noundef @dbg_print.debug_buffer, ptr noundef nonnull %2) ; 0 uses
  %fputc = call i32 @fputc(i32 10, ptr nonnull %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @scs_subscribe(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = call i32 @g_hash_table_lookup_extended(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = call noalias dereferenceable_or_null(4) ptr @g_malloc0(i64 noundef 4) #16
  store ptr %i.h, ptr %i.b, align 8
  %i.i = call i64 @strlen(ptr noundef %1) #17
  %i.j = icmp ugt i64 %i.i, 65535
  br i1 %i.j, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.k = call noalias ptr @g_strdup(ptr noundef %1)
  br label %g_strdup_inline.exit

bb.e:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str, i32 noundef 5, ptr noundef @.str.3, i64 noundef 146, ptr noundef @__func__.scs_subscribe, ptr noundef @.str.4)
  %i.l = call noalias ptr @g_strndup(ptr noundef %1, i64 noundef 65535)
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.d, %bb.e
  %storemerge = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  store ptr %storemerge, ptr %i.a, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = call i32 @g_hash_table_insert(ptr noundef %i.m, ptr noundef %storemerge, ptr noundef %i.n) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %g_strdup_inline.exit, %bb.b
  %i.p = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %i.p
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_lookup_extended(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @scs_unsubscribe(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = call i32 @g_hash_table_lookup_extended(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call i32 @g_hash_table_remove(ptr noundef %i.h, ptr noundef %i.i) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i32 %i.f, -1
  store i32 %i.k, ptr %i.e, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str, i32 noundef 5, ptr noundef @.str.3, i64 noundef 176, ptr noundef @__func__.scs_unsubscribe, ptr noundef @.str.5)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @scs_subscribe_printf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call noalias ptr @g_strdup_vprintf(ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = call ptr @scs_subscribe(ptr noundef %0, ptr noundef %i.a)
  call void @g_free(ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %i.b
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup_vprintf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @avp_init() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @avp_strings, align 8      ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %destroy_scs_collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %destroy_scs_collection.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_hash_table_destroy(ptr noundef nonnull %.val)
  br label %destroy_scs_collection.exit

destroy_scs_collection.exit:                      ; preds = %bb.c, %bb.b, %bb.a
  %i.b = tail call noalias dereferenceable_or_null(8) ptr @g_malloc(i64 noundef 8) #16 ; 2 uses
  %i.c = tail call ptr @g_hash_table_new_full(ptr noundef @scs_hash, ptr noundef @scs_equal, ptr noundef @g_free, ptr noundef @g_free)
  store ptr %i.c, ptr %i.b, align 8
  store ptr %i.b, ptr @avp_strings, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noalias noundef ptr @new_avp_from_finfo(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 4 uses
  %i.b = load ptr, ptr @avp_strings, align 8
  %i.c = tail call ptr @scs_subscribe(ptr noundef %i.b, ptr noundef %0)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call ptr @fvalue_to_string_repr(ptr noundef null, ptr noundef %i.e, i32 noundef 0, i32 noundef %i.h) ; 3 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = load ptr, ptr @avp_strings, align 8      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @scs_subscribe(ptr noundef %i.j, ptr noundef nonnull %i.i)
  tail call void @wmem_free(ptr noundef null, ptr noundef nonnull %i.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call ptr @scs_subscribe(ptr noundef %i.j, ptr noundef @.str.6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  %i.m = getelementptr i8, ptr %i.a, i64 8
  store ptr %.0, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.a, i64 16
  store i8 61, ptr %i.n, align 8
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_slice_alloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @fvalue_to_string_repr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noalias noundef ptr @new_avp(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 4 uses
  %i.b = load ptr, ptr @avp_strings, align 8
  %i.c = tail call ptr @scs_subscribe(ptr noundef %i.b, ptr noundef %0)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr @avp_strings, align 8
  %i.e = tail call ptr @scs_subscribe(ptr noundef %i.d, ptr noundef %1)
  %i.f = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.a, i64 16
  store i8 %2, ptr %i.g, align 8
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @delete_avp(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = load ptr, ptr @avp_strings, align 8      ; 2 uses
  %i.f = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
end_hunk_0
begin_hunk_1_@delete_avp:bb.a
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = call i32 @g_hash_table_remove(ptr noundef %i.l, ptr noundef %i.m) ; 0 uses
  br label %scs_unsubscribe.exit

bb.d:                                             ; preds = %bb.b
  %i.o = add i32 %i.j, -1
  store i32 %i.o, ptr %i.i, align 4
  br label %scs_unsubscribe.exit

bb.e:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str, i32 noundef 5, ptr noundef @.str.3, i64 noundef 176, ptr noundef @__func__.scs_unsubscribe, ptr noundef @.str.5)
  br label %scs_unsubscribe.exit

scs_unsubscribe.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.p = load ptr, ptr @avp_strings, align 8      ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = call i32 @g_hash_table_lookup_extended(ptr noundef %i.s, ptr noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not.i3 = icmp eq i32 %i.t, 0
  br i1 %.not.i3, label %bb.i, label %bb.f

bb.f:                                             ; preds = %scs_unsubscribe.exit
  %i.u = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.p, align 8
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = call i32 @g_hash_table_remove(ptr noundef %i.x, ptr noundef %i.y) ; 0 uses
  br label %scs_unsubscribe.exit4

bb.h:                                             ; preds = %bb.f
  %i.aa = add i32 %i.v, -1
  store i32 %i.aa, ptr %i.u, align 4
  br label %scs_unsubscribe.exit4

bb.i:                                             ; preds = %scs_unsubscribe.exit
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str, i32 noundef 5, ptr noundef @.str.3, i64 noundef 176, ptr noundef @__func__.scs_unsubscribe, ptr noundef @.str.5)
  br label %scs_unsubscribe.exit4

scs_unsubscribe.exit4:                            ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @g_slice_free1(i64 noundef 40, ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_slice_free1(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noalias noundef ptr @avp_copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 4 uses
  %i.b = load ptr, ptr @avp_strings, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call ptr @scs_subscribe(ptr noundef %i.b, ptr noundef %i.c)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = load ptr, ptr @avp_strings, align 8
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @scs_subscribe(ptr noundef %i.e, ptr noundef %i.g)
  %i.i = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load i8, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.a, i64 16
  store i8 %i.k, ptr %i.l, align 8
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef ptr @new_avpl(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 6 uses
  %.not = icmp eq ptr %0, null
  %i.b = load ptr, ptr @avp_strings, align 8
  %.str.6. = select i1 %.not, ptr @.str.6, ptr %0
  %i.c = tail call ptr @scs_subscribe(ptr noundef %i.b, ptr noundef %.str.6.)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 8
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.g, align 8
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @rename_avpl(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr @avp_strings, align 8      ; 2 uses
  %i.d = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = call i32 @g_hash_table_lookup_extended(ptr noundef %i.e, ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = call i32 @g_hash_table_remove(ptr noundef %i.j, ptr noundef %i.k) ; 0 uses
  br label %scs_unsubscribe.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i32 %i.h, -1
  store i32 %i.m, ptr %i.g, align 4
  br label %scs_unsubscribe.exit

bb.e:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str, i32 noundef 5, ptr noundef @.str.3, i64 noundef 176, ptr noundef @__func__.scs_unsubscribe, ptr noundef @.str.5)
  br label %scs_unsubscribe.exit

scs_unsubscribe.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.n = load ptr, ptr @avp_strings, align 8
  %i.o = call ptr @scs_subscribe(ptr noundef %i.n, ptr noundef %1)
  store ptr %i.o, ptr %0, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @insert_avp(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.01936 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = load ptr, ptr %.01936, align 8           ; 2 uses
  %.not37 = icmp eq ptr %i.b, null
  br i1 %.not37, label %.thread29, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = getelementptr i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread34
  %i.f = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %.thread34 ] ; 3 uses
  %.01938 = phi ptr [ %.01936, %.lr.ph ], [ %.019, %.thread34 ] ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @strcmp(ptr noundef %i.c, ptr noundef %i.g) #17 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 @strcmp(ptr noundef %i.j, ptr noundef %i.l) #17 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.thread29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.m, 0
  br i1 %i.o, label %bb.e, label %.thread34

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.f, i64 16
  %i.q = load i8, ptr %i.p, align 8
  %i.r = load i8, ptr %i.e, align 8
  %i.s = icmp eq i8 %i.r, 61
  %i.t = icmp eq i8 %i.q, 61
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %.thread31, label %.thread34

bb.f:                                             ; preds = %bb.b
  %i.u = icmp slt i32 %i.h, 0
  br i1 %i.u, label %.thread29, label %.thread34

.thread34:                                        ; preds = %bb.d, %bb.e, %bb.f
  %i.v = getelementptr i8, ptr %.01938, i64 8
  %.019 = load ptr, ptr %i.v, align 8             ; 3 uses
  %i.w = load ptr, ptr %.019, align 8             ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.thread29, label %bb.b, !llvm.loop !0

.thread29:                                        ; preds = %.thread34, %bb.c, %bb.f, %bb.a
  %.019.lcssa = phi ptr [ %.01936, %bb.a ], [ %.01938, %bb.f ], [ %.01938, %bb.c ], [ %.019, %.thread34 ] ; 2 uses
  %i.x = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 5 uses
  store ptr %1, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store ptr %.019.lcssa, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %.019.lcssa, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 16
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.x, ptr %i.ac, align 8
  store ptr %i.x, ptr %i.z, align 8
  %i.ad = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8
  br label %.thread31

.thread31:                                        ; preds = %bb.e, %.thread29
  %.4 = phi i1 [ true, %.thread29 ], [ false, %bb.e ]
  ret i1 %.4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @get_avp_by_name(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  %i.d = load ptr, ptr @avp_strings, align 8
  %i.e = tail call ptr @scs_subscribe(ptr noundef %i.d, ptr noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.a ], [ %i.g, %bb.b ]  ; 3 uses
  %i.h = load ptr, ptr %.0, align 8               ; 2 uses
  %.not1617 = icmp eq ptr %i.h, null
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ]
  %.01318 = phi ptr [ %i.m, %bb.d ], [ %.0, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.01318, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.n, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.013.lcssa = phi ptr [ %.0, %bb.c ], [ %.01318, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  store ptr %.013.lcssa, ptr %2, align 8
  %i.o = load ptr, ptr @avp_strings, align 8      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i32 @g_hash_table_lookup_extended(ptr noundef %i.p, ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.o, align 8
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = call i32 @g_hash_table_remove(ptr noundef %i.u, ptr noundef %i.v) ; 0 uses
  br label %scs_unsubscribe.exit

bb.g:                                             ; preds = %bb.e
  %i.x = add i32 %i.s, -1
  store i32 %i.x, ptr %i.r, align 4
  br label %scs_unsubscribe.exit

bb.h:                                             ; preds = %._crit_edge
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str, i32 noundef 5, ptr noundef @.str.3, i64 noundef 176, ptr noundef @__func__.scs_unsubscribe, ptr noundef @.str.5)
  br label %scs_unsubscribe.exit

scs_unsubscribe.exit:                             ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.y = load ptr, ptr %.013.lcssa, align 8
  ret ptr %i.y
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @extract_avp_by_name(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr @avp_strings, align 8
  %i.d = tail call ptr @scs_subscribe(ptr noundef %i.c, ptr noundef %1) ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 24
  %.020 = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.f = load ptr, ptr %.020, align 8             ; 2 uses
  %.not21 = icmp eq ptr %i.f, null
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.k, %bb.b ], [ %i.f, %bb.a ]
  %.022 = phi ptr [ %.0, %bb.b ], [ %.020, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %.022, i64 8
  %.0 = load ptr, ptr %i.j, align 8               ; 3 uses
  %i.k = load ptr, ptr %.0, align 8               ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %.020, %bb.a ], [ %.022, %.lr.ph ], [ %.0, %bb.b ] ; 5 uses
  %i.l = load ptr, ptr @avp_strings, align 8      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call i32 @g_hash_table_lookup_extended(ptr noundef %i.m, ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = call i32 @g_hash_table_remove(ptr noundef %i.r, ptr noundef %i.s) ; 0 uses
  br label %scs_unsubscribe.exit

bb.e:                                             ; preds = %bb.c
  %i.u = add i32 %i.p, -1
  store i32 %i.u, ptr %i.o, align 4
  br label %scs_unsubscribe.exit

bb.f:                                             ; preds = %._crit_edge
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str, i32 noundef 5, ptr noundef @.str.3, i64 noundef 176, ptr noundef @__func__.scs_unsubscribe, ptr noundef @.str.5)
  br label %scs_unsubscribe.exit

scs_unsubscribe.exit:                             ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.v = load ptr, ptr %.0.lcssa, align 8
  %.not19 = icmp eq ptr %i.v, null
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %scs_unsubscribe.exit
  %i.w = getelementptr i8, ptr %.0.lcssa, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %.0.lcssa, i64 8   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store ptr %i.x, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = getelementptr i8, ptr %i.x, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %.0.lcssa, align 8
  call void @g_slice_free1(i64 noundef 40, ptr noundef %.0.lcssa)
  %i.ae = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr %i.ae, align 8
  br label %bb.h

bb.h:                                             ; preds = %scs_unsubscribe.exit, %bb.g
  %.017 = phi ptr [ %i.ad, %bb.g ], [ null, %scs_unsubscribe.exit ]
  ret ptr %.017
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @extract_first_avp(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = getelementptr i8, ptr %0, i64 24         ; 2 uses
end_hunk_1
begin_hunk_2_@merge_avpl:bb.a
  br i1 %.not38, label %.lr.ph53, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = tail call i32 @strcmp(ptr noundef %i.i, ptr noundef %i.j) #17 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.03045, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %.not40 = icmp eq i32 %i.k, 0
  br i1 %.not40, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 5 uses
  br i1 %2, label %bb.g, label %insert_avp_before_node.exit

bb.g:                                             ; preds = %bb.f
  %i.p = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 4 uses
  %i.q = load ptr, ptr @avp_strings, align 8
  %i.r = load ptr, ptr %i.g, align 8
  %i.s = tail call ptr @scs_subscribe(ptr noundef %i.q, ptr noundef %i.r)
  store ptr %i.s, ptr %i.p, align 8
  %i.t = load ptr, ptr @avp_strings, align 8
  %i.u = getelementptr i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr @scs_subscribe(ptr noundef %i.t, ptr noundef %i.v)
  %i.x = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.g, i64 16
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.p, i64 16
  store i8 %i.z, ptr %i.aa, align 8
  br label %insert_avp_before_node.exit

insert_avp_before_node.exit:                      ; preds = %bb.f, %bb.g
  %i.ab = phi ptr [ %i.p, %bb.g ], [ %i.g, %bb.f ]
  store ptr %i.ab, ptr %i.o, align 8
  %i.ac = getelementptr i8, ptr %i.o, i64 8
  store ptr %.03045, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %.03045, i64 16   ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr i8, ptr %i.o, i64 16
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  store ptr %i.o, ptr %i.ag, align 8
  store ptr %i.o, ptr %i.ad, align 8
  %i.ah = load i32, ptr %i.f, align 8
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.f, align 8
  %i.aj = getelementptr i8, ptr %.046, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.al = getelementptr i8, ptr %i.h, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.g, i64 8       ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i32 @strcmp(ptr noundef %i.am, ptr noundef %i.ao) #17 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %.03045, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %.not41 = icmp eq i32 %i.ap, 0
  br i1 %.not41, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 5 uses
  br i1 %2, label %bb.l, label %insert_avp_before_node.exit42

bb.l:                                             ; preds = %bb.k
  %i.au = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 4 uses
  %i.av = load ptr, ptr @avp_strings, align 8
  %i.aw = load ptr, ptr %i.g, align 8
  %i.ax = tail call ptr @scs_subscribe(ptr noundef %i.av, ptr noundef %i.aw)
  store ptr %i.ax, ptr %i.au, align 8
  %i.ay = load ptr, ptr @avp_strings, align 8
  %i.az = load ptr, ptr %i.an, align 8
  %i.ba = tail call ptr @scs_subscribe(ptr noundef %i.ay, ptr noundef %i.az)
  %i.bb = getelementptr i8, ptr %i.au, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %i.g, i64 16
  %i.bd = load i8, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %i.au, i64 16
  store i8 %i.bd, ptr %i.be, align 8
  br label %insert_avp_before_node.exit42

insert_avp_before_node.exit42:                    ; preds = %bb.k, %bb.l
  %i.bf = phi ptr [ %i.au, %bb.l ], [ %i.g, %bb.k ]
  store ptr %i.bf, ptr %i.at, align 8
  %i.bg = getelementptr i8, ptr %i.at, i64 8
  store ptr %.03045, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %.03045, i64 16   ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr i8, ptr %i.at, i64 16
  store ptr %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 8
  store ptr %i.at, ptr %i.bk, align 8
  store ptr %i.at, ptr %i.bh, align 8
  %i.bl = load i32, ptr %i.f, align 8
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.f, align 8
  %i.bn = getelementptr i8, ptr %.046, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.bp = getelementptr i8, ptr %.046, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m, %insert_avp_before_node.exit42, %insert_avp_before_node.exit, %bb.d
  %.232 = phi ptr [ %i.n, %bb.d ], [ %.03045, %insert_avp_before_node.exit ], [ %i.as, %bb.i ], [ %.03045, %insert_avp_before_node.exit42 ], [ %.03045, %bb.m ]
  %.2 = phi ptr [ %.046, %bb.d ], [ %i.ak, %insert_avp_before_node.exit ], [ %.046, %bb.i ], [ %i.bo, %insert_avp_before_node.exit42 ], [ %i.bq, %bb.m ] ; 2 uses
  %i.br = load ptr, ptr %.2, align 8              ; 2 uses
  %.not = icmp eq ptr %i.br, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14

.lr.ph53:                                         ; preds = %bb.b
  %i.bs = getelementptr i8, ptr %.03045, i64 16   ; 4 uses
  %i.bt = getelementptr i8, ptr %0, i64 8         ; 4 uses
  br i1 %2, label %insert_avp_before_node.exit43.us, label %insert_avp_before_node.exit43

insert_avp_before_node.exit43.us:                 ; preds = %.lr.ph53, %insert_avp_before_node.exit43.us
  %i.bu = phi ptr [ %i.cq, %insert_avp_before_node.exit43.us ], [ %i.g, %.lr.ph53 ] ; 3 uses
  %.352.us = phi ptr [ %i.cp, %insert_avp_before_node.exit43.us ], [ %.046, %.lr.ph53 ]
  %i.bv = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 5 uses
  %i.bw = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 4 uses
  %i.bx = load ptr, ptr @avp_strings, align 8
  %i.by = load ptr, ptr %i.bu, align 8
  %i.bz = tail call ptr @scs_subscribe(ptr noundef %i.bx, ptr noundef %i.by)
  store ptr %i.bz, ptr %i.bw, align 8
  %i.ca = load ptr, ptr @avp_strings, align 8
  %i.cb = getelementptr i8, ptr %i.bu, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call ptr @scs_subscribe(ptr noundef %i.ca, ptr noundef %i.cc)
  %i.ce = getelementptr i8, ptr %i.bw, i64 8
  store ptr %i.cd, ptr %i.ce, align 8
  %i.cf = getelementptr i8, ptr %i.bu, i64 16
  %i.cg = load i8, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %i.bw, i64 16
  store i8 %i.cg, ptr %i.ch, align 8
  store ptr %i.bw, ptr %i.bv, align 8
  %i.ci = getelementptr i8, ptr %i.bv, i64 8
  store ptr %.03045, ptr %i.ci, align 8
  %i.cj = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bv, i64 16
  store ptr %i.cj, ptr %i.ck, align 8
  %i.cl = getelementptr i8, ptr %i.cj, i64 8
  store ptr %i.bv, ptr %i.cl, align 8
  store ptr %i.bv, ptr %i.bs, align 8
  %i.cm = load i32, ptr %i.bt, align 8
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.bt, align 8
  %i.co = getelementptr i8, ptr %.352.us, i64 8
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not39.us = icmp eq ptr %i.cq, null
  br i1 %.not39.us, label %._crit_edge, label %insert_avp_before_node.exit43.us, !llvm.loop !15

insert_avp_before_node.exit43:                    ; preds = %.lr.ph53, %insert_avp_before_node.exit43
  %i.cr = phi ptr [ %i.db, %insert_avp_before_node.exit43 ], [ %i.g, %.lr.ph53 ]
  %.352 = phi ptr [ %i.da, %insert_avp_before_node.exit43 ], [ %.046, %.lr.ph53 ]
  %i.cs = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 5 uses
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  store ptr %.03045, ptr %i.ct, align 8
  %i.cu = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cs, i64 16
  store ptr %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr i8, ptr %i.cu, i64 8
  store ptr %i.cs, ptr %i.cw, align 8
  store ptr %i.cs, ptr %i.bs, align 8
  %i.cx = load i32, ptr %i.bt, align 8
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.bt, align 8
  %i.cz = getelementptr i8, ptr %.352, i64 8
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.not39 = icmp eq ptr %i.db, null
  br i1 %.not39, label %._crit_edge, label %insert_avp_before_node.exit43, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.n, %insert_avp_before_node.exit43, %insert_avp_before_node.exit43.us, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef ptr @new_avpl_from_avpl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 7 uses
  %.not.i = icmp eq ptr %0, null
  %i.b = load ptr, ptr @avp_strings, align 8
  %.str.6..i = select i1 %.not.i, ptr @.str.6, ptr %0
  %i.c = tail call ptr @scs_subscribe(ptr noundef %i.b, ptr noundef nonnull %.str.6..i)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 8        ; 3 uses
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %1, i64 24         ; 2 uses
  br i1 %2, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.split.us.backedge
  %.0.us = phi ptr [ %i.k, %.split.us.backedge ], [ null, %bb.a ] ; 2 uses
  %.not.i9.us = icmp eq ptr %.0.us, null
  br i1 %.not.i9.us, label %bb.b, label %get_next_avp.exit.us

bb.b:                                             ; preds = %.split.us
  %i.i = load ptr, ptr %i.h, align 8
  br label %get_next_avp.exit.us

get_next_avp.exit.us:                             ; preds = %bb.b, %.split.us
  %.0.i.us = phi ptr [ %i.i, %bb.b ], [ %.0.us, %.split.us ] ; 2 uses
  %i.j = getelementptr i8, ptr %.0.i.us, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %.0.i.us, align 8          ; 4 uses
  %.not.us = icmp eq ptr %i.l, null
  br i1 %.not.us, label %.split11.us, label %bb.c

bb.c:                                             ; preds = %get_next_avp.exit.us
  %i.m = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 6 uses
  %i.n = load ptr, ptr @avp_strings, align 8
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = tail call ptr @scs_subscribe(ptr noundef %i.n, ptr noundef %i.o)
  store ptr %i.p, ptr %i.m, align 8
  %i.q = load ptr, ptr @avp_strings, align 8
  %i.r = getelementptr i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @scs_subscribe(ptr noundef %i.q, ptr noundef %i.s) ; 3 uses
  %i.u = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.l, i64 16
  %i.w = load i8, ptr %i.v, align 8
  %.fr = freeze i8 %i.w                           ; 2 uses
  %i.x = getelementptr i8, ptr %i.m, i64 16
  store i8 %.fr, ptr %i.x, align 8
  %.01936.i.us = load ptr, ptr %i.f, align 8      ; 4 uses
  %3 = load ptr, ptr %.01936.i.us, align 8        ; 3 uses
  %.not37.i.us = icmp eq ptr %3, null
  br i1 %.not37.i.us, label %insert_avp.exit.thread.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.c
  %4 = load ptr, ptr %i.m, align 8                ; 2 uses
  %5 = icmp eq i8 %.fr, 61
  br i1 %5, label %.lr.ph.i.split.us12, label %.lr.ph.i.split.us.us

.lr.ph.i.split.us.us:                             ; preds = %.lr.ph.i.us, %.thread34.i.us.us
  %6 = phi ptr [ %18, %.thread34.i.us.us ], [ %3, %.lr.ph.i.us ] ; 2 uses
  %.01938.i.us.us = phi ptr [ %.019.i.us.us, %.thread34.i.us.us ], [ %.01936.i.us, %.lr.ph.i.us ] ; 3 uses
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @strcmp(ptr noundef %4, ptr noundef %7) #17 ; 2 uses
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %.lr.ph.i.split.us.us
  %11 = icmp slt i32 %8, 0
  br i1 %11, label %insert_avp.exit.thread.us, label %.thread34.i.us.us

12:                                               ; preds = %.lr.ph.i.split.us.us
  %13 = getelementptr i8, ptr %6, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @strcmp(ptr noundef %i.t, ptr noundef %14) #17
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %insert_avp.exit.thread.us, label %.thread34.i.us.us

.thread34.i.us.us:                                ; preds = %12, %10
  %17 = getelementptr i8, ptr %.01938.i.us.us, i64 8
  %.019.i.us.us = load ptr, ptr %17, align 8      ; 3 uses
  %18 = load ptr, ptr %.019.i.us.us, align 8      ; 2 uses
  %.not.i10.us.us = icmp eq ptr %18, null
  br i1 %.not.i10.us.us, label %insert_avp.exit.thread.us, label %.lr.ph.i.split.us.us, !llvm.loop !0

.lr.ph.i.split.us12:                              ; preds = %.lr.ph.i.us, %.thread34.i.us14
  %19 = phi ptr [ %37, %.thread34.i.us14 ], [ %3, %.lr.ph.i.us ] ; 3 uses
  %.01938.i.us13 = phi ptr [ %.019.i.us15, %.thread34.i.us14 ], [ %.01936.i.us, %.lr.ph.i.us ] ; 3 uses
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @strcmp(ptr noundef %4, ptr noundef %20) #17 ; 2 uses
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %.lr.ph.i.split.us12
  %24 = icmp slt i32 %21, 0
  br i1 %24, label %insert_avp.exit.thread.us, label %.thread34.i.us14

25:                                               ; preds = %.lr.ph.i.split.us12
  %26 = getelementptr i8, ptr %19, i64 8
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @strcmp(ptr noundef %i.t, ptr noundef %27) #17 ; 2 uses
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %insert_avp.exit.thread.us, label %30

30:                                               ; preds = %25
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %.thread34.i.us14

32:                                               ; preds = %30
  %33 = getelementptr i8, ptr %19, i64 16
  %34 = load i8, ptr %33, align 8
  %35 = icmp eq i8 %34, 61
  br i1 %35, label %bb.d, label %.thread34.i.us14

.thread34.i.us14:                                 ; preds = %32, %30, %23
  %36 = getelementptr i8, ptr %.01938.i.us13, i64 8
  %.019.i.us15 = load ptr, ptr %36, align 8       ; 3 uses
  %37 = load ptr, ptr %.019.i.us15, align 8       ; 2 uses
  %.not.i10.us16 = icmp eq ptr %37, null
  br i1 %.not.i10.us16, label %insert_avp.exit.thread.us, label %.lr.ph.i.split.us12, !llvm.loop !0

bb.d:                                             ; preds = %32
  tail call void @delete_avp(ptr noundef %i.m)
  br label %.split.us.backedge

insert_avp.exit.thread.us:                        ; preds = %.thread34.i.us.us, %12, %10, %.thread34.i.us14, %25, %23, %bb.c
  %.019.lcssa.i.us = phi ptr [ %.01936.i.us, %bb.c ], [ %.019.i.us15, %.thread34.i.us14 ], [ %.01938.i.us13, %25 ], [ %.01938.i.us13, %23 ], [ %.01938.i.us.us, %10 ], [ %.019.i.us.us, %.thread34.i.us.us ], [ %.01938.i.us.us, %12 ] ; 2 uses
  %38 = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 5 uses
  store ptr %i.m, ptr %38, align 8
  %39 = getelementptr i8, ptr %38, i64 8
  store ptr %.019.lcssa.i.us, ptr %39, align 8
  %40 = getelementptr i8, ptr %.019.lcssa.i.us, i64 16 ; 2 uses
  %41 = load ptr, ptr %40, align 8                ; 2 uses
  %42 = getelementptr i8, ptr %38, i64 16
  store ptr %41, ptr %42, align 8
  %43 = getelementptr i8, ptr %41, i64 8
  store ptr %38, ptr %43, align 8
  store ptr %38, ptr %40, align 8
  %44 = load i32, ptr %i.d, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %i.d, align 8
  br label %.split.us.backedge

.split.us.backedge:                               ; preds = %insert_avp.exit.thread.us, %bb.d
  br label %.split.us, !llvm.loop !16

.split:                                           ; preds = %bb.a, %bb.f
  %.0 = phi ptr [ %i.ab, %bb.f ], [ null, %bb.a ] ; 2 uses
  %.not.i9 = icmp eq ptr %.0, null
  br i1 %.not.i9, label %bb.e, label %get_next_avp.exit

bb.e:                                             ; preds = %.split
  %i.y = load ptr, ptr %i.h, align 8
  br label %get_next_avp.exit

get_next_avp.exit:                                ; preds = %.split, %bb.e
  %.0.i = phi ptr [ %i.y, %bb.e ], [ %.0, %.split ] ; 2 uses
  %i.z = load ptr, ptr %.0.i, align 8             ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.split11.us, label %bb.f

bb.f:                                             ; preds = %get_next_avp.exit
  %i.aa = getelementptr i8, ptr %.0.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call zeroext i1 @insert_avp(ptr noundef %i.a, ptr noundef nonnull %i.z) ; 0 uses
  br label %.split, !llvm.loop !16

.split11.us:                                      ; preds = %get_next_avp.exit, %get_next_avp.exit.us
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @match_avp(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8
  switch i8 %i.d, label %bb.q [
    i8 63, label %bb.r
    i8 61, label %bb.c
    i8 33, label %bb.d
    i8 94, label %bb.e
    i8 124, label %bb.f
    i8 60, label %bb.j
    i8 62, label %bb.k
    i8 36, label %bb.n
    i8 126, label %bb.p
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  %i.j = select i1 %i.i, ptr %0, ptr null
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  %i.p = select i1 %i.o, ptr null, ptr %0
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = tail call i64 @strlen(ptr noundef %i.t) #17
  %i.v = tail call i32 @strncmp(ptr noundef %i.r, ptr noundef %i.t, i64 noundef %i.u) #17
  %i.w = icmp eq i32 %i.v, 0
  %i.x = select i1 %i.w, ptr %0, ptr null
  br label %bb.r

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call ptr @g_strsplit(ptr noundef %i.z, ptr noundef @.str.10, i32 noundef 0) ; 5 uses
  %.not54 = icmp eq ptr %i.aa, null
  br i1 %.not54, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not5557 = icmp eq ptr %i.ab, null
  br i1 %.not5557, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = getelementptr i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.ae = add i32 %.04758, 1                      ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [8 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not55 = icmp eq ptr %i.ah, null
  br i1 %.not55, label %._crit_edge, label %bb.h, !llvm.loop !17

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.ai = phi ptr [ %i.ab, %.lr.ph ], [ %i.ah, %bb.g ]
  %.04758 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.g ]
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef %i.ad) #17
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  tail call void @g_strfreev(ptr noundef nonnull %i.aa)
  br label %bb.r

._crit_edge:                                      ; preds = %bb.g, %.preheader
  tail call void @g_strfreev(ptr noundef nonnull %i.aa)
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.0 = phi i1 [ true, %bb.j ], [ false, %bb.b ]
  %i.al = getelementptr i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call double @g_ascii_strtod(ptr noundef %i.am, ptr noundef null) ; 2 uses
  %i.ao = getelementptr i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call double @g_ascii_strtod(ptr noundef %i.ap, ptr noundef null) ; 2 uses
  br i1 %.0, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = fcmp olt double %i.an, %i.aq
  %. = select i1 %i.ar, ptr %0, ptr null
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.as = fcmp ogt double %i.an, %i.aq
  %.56 = select i1 %i.as, ptr %0, ptr null
  br label %bb.r

bb.n:                                             ; preds = %bb.b
  %i.at = getelementptr i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = tail call i64 @strlen(ptr noundef %i.au) #17 ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = tail call i64 @strlen(ptr noundef %i.ay) #17 ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp ult i32 %i.aw, %i.ba
  br i1 %i.bb, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = sub i64 %i.av, %i.az
  %i.bd = and i64 %i.bc, 4294967295
  %i.be = getelementptr i8, ptr %i.au, i64 %i.bd
  %i.bf = tail call i32 @strcmp(ptr noundef %i.be, ptr noundef %i.ay) #17
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = select i1 %i.bg, ptr %0, ptr null
  br label %bb.r

bb.p:                                             ; preds = %bb.b
  %i.bi = getelementptr i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %1, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call ptr @g_strrstr(ptr noundef %i.bj, ptr noundef %i.bl)
  %.not53 = icmp eq ptr %i.bm, null
  %i.bn = select i1 %.not53, ptr null, ptr %0
  br label %bb.r

bb.q:                                             ; preds = %bb.b
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.f, %._crit_edge, %bb.b, %bb.a, %bb.q, %bb.p, %bb.o, %bb.i, %bb.e, %bb.d, %bb.c
  %.048 = phi ptr [ %i.bn, %bb.p ], [ null, %bb.q ], [ null, %bb.a ], [ %i.j, %bb.c ], [ %i.p, %bb.d ], [ %i.x, %bb.e ], [ %0, %bb.i ], [ %0, %bb.b ], [ %., %bb.l ], [ null, %bb.f ], [ %.56, %bb.m ], [ null, %._crit_edge ], [ %i.bh, %bb.o ], [ null, %bb.n ]
  ret ptr %.048
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare ptr @g_strsplit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @g_strfreev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare double @g_ascii_strtod(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_strrstr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef ptr @new_avpl_loose_match(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @avp_strings, align 8
end_hunk_2
begin_hunk_3_@extract_last_avpl:bb.a
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %i.f, align 8
  %i.g = load ptr, ptr %i.d, align 8
  store ptr %i.g, ptr %i.b, align 8
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8
  %i.k = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_slice_free1(i64 noundef 40, ptr noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @get_next_avpl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]  ; 2 uses
  %i.d = getelementptr i8, ptr %.0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.e, ptr %1, align 8
  %i.f = load ptr, ptr %.0, align 8
  ret ptr %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @delete_loal(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 32         ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.f = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.c, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.g, align 8
  store ptr %i.j, ptr %i.d, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = add i32 %i.k, -1
  store i32 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i6 = icmp eq ptr %i.m, null
  br i1 %.not.i6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.n = phi ptr [ %i.w, %.lr.ph.split.us ], [ %i.m, %.lr.ph ]
  %i.o = phi ptr [ %i.p, %.lr.ph.split.us ], [ %i.f, %.lr.ph ]
  tail call void @g_slice_free1(i64 noundef 40, ptr noundef %i.o)
  tail call void @delete_avpl(ptr noundef nonnull %i.n, i1 noundef zeroext %2)
  %i.p = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16       ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store ptr %i.c, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.q, align 8
  store ptr %i.t, ptr %i.d, align 8
  %i.u = load i32, ptr %i.e, align 8
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.e, align 8
  %i.w = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.us = icmp eq ptr %i.w, null
  br i1 %.not.i.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !23

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.x = phi ptr [ %i.y, %.lr.ph.split ], [ %i.f, %.lr.ph ]
  tail call void @g_slice_free1(i64 noundef 40, ptr noundef %i.x)
  %i.y = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16       ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.c, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.z, align 8
  store ptr %i.ac, ptr %i.d, align 8
  %i.ad = load i32, ptr %i.e, align 8
  %i.ae = add i32 %i.ad, -1
  store i32 %i.ae, ptr %i.e, align 8
  %i.af = load ptr, ptr %i.y, align 8
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.split, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %i.ag = load ptr, ptr @avp_strings, align 8     ; 2 uses
  %i.ah = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  %i.ai = load ptr, ptr %i.ag, align 8
  %i.aj = call i32 @g_hash_table_lookup_extended(ptr noundef %i.ai, ptr noundef %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not.i5 = icmp eq i32 %i.aj, 0
  br i1 %.not.i5, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ak = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.an = load ptr, ptr %i.ag, align 8
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = call i32 @g_hash_table_remove(ptr noundef %i.an, ptr noundef %i.ao) ; 0 uses
  br label %scs_unsubscribe.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = add i32 %i.al, -1
  store i32 %i.aq, ptr %i.ak, align 4
  br label %scs_unsubscribe.exit

bb.e:                                             ; preds = %._crit_edge
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str, i32 noundef 5, ptr noundef @.str.3, i64 noundef 176, ptr noundef @__func__.scs_unsubscribe, ptr noundef @.str.5)
  br label %scs_unsubscribe.exit

scs_unsubscribe.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @g_slice_free1(i64 noundef 40, ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef ptr @loal_from_file(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 17 uses
  %.not.i = icmp eq ptr %0, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str.11, ptr %0
  %i.b = load ptr, ptr @avp_strings, align 8
  %i.c = tail call ptr @scs_subscribe(ptr noundef %i.b, ptr noundef nonnull %spec.store.select.i)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 16       ; 4 uses
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.a, i64 32       ; 3 uses
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.a, i64 8        ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = tail call ptr @g_string_new(ptr noundef null) ; 4 uses
  %i.i = tail call noalias dereferenceable_or_null(8192) ptr @g_malloc(i64 noundef 8192) #16 ; 10 uses
  %i.j = tail call noalias dereferenceable_or_null(8192) ptr @g_malloc(i64 noundef 8192) #16 ; 6 uses
  %i.k = tail call i32 @getuid() #15
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr (ptr, ptr, ptr, i32, ptr, ...) @load_loal_error(ptr noundef null, ptr noundef %i.a, ptr noundef null, i32 noundef 1, ptr noundef @.str.12)
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef @.str.13) ; 30 uses
  %.not124 = icmp eq ptr %i.m, null
  br i1 %.not124, label %bb.ag, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.n = tail call i32 @fgetc(ptr noundef nonnull %i.m) ; 2 uses
  %i.o = trunc i32 %i.n to i8                     ; 2 uses
  %.not125162 = icmp eq i8 %i.o, 0
  br i1 %.not125162, label %.loopexit.thread, label %.lr.ph

.loopexit.thread:                                 ; preds = %.preheader
  %i.p = tail call i32 @fclose(ptr noundef nonnull %i.m) ; 0 uses
  br label %bb.ah

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr i8, ptr %i.i, i64 1        ; 2 uses
  %i.r = tail call i32 @feof(ptr noundef nonnull %i.m) #15
  %.not126 = icmp eq i32 %i.r, 0
  br i1 %.not126, label %bb.m, label %.loopexit237

bb.d:                                             ; preds = %.backedge.jt4
  %i.s = tail call i32 @feof(ptr noundef nonnull %i.m) #15
  %.not126.jt4 = icmp eq i32 %i.s, 0
  br i1 %.not126.jt4, label %bb.n, label %.loopexit237

bb.e:                                             ; preds = %.lr.ph485, %.backedge.jt2
  %i.t = phi i8 [ %i.bk, %.lr.ph485 ], [ %i.ct, %.backedge.jt2 ] ; 3 uses
  %i.u = phi i32 [ %i.bl, %.lr.ph485 ], [ %i.cs, %.backedge.jt2 ]
  %.0120.be.jt2484 = phi i32 [ 1, %.lr.ph485 ], [ %i.cp, %.backedge.jt2 ] ; 5 uses
  %spec.select229483 = phi i32 [ %spec.select229.ph499, %.lr.ph485 ], [ %spec.select.jt2, %.backedge.jt2 ] ; 2 uses
  %i.v = tail call i32 @feof(ptr noundef nonnull %i.m) #15
  %.not126.jt2 = icmp eq i32 %i.v, 0
  br i1 %.not126.jt2, label %bb.j, label %.loopexit237

bb.f:                                             ; preds = %.backedge.jt0
  %i.w = tail call i32 @feof(ptr noundef nonnull %i.m) #15
  %.not126.jt0 = icmp eq i32 %i.w, 0
  br i1 %.not126.jt0, label %bb.k, label %.loopexit237

bb.g:                                             ; preds = %.lr.ph495, %.backedge.jt1.backedge
  %i.x = phi i8 [ %i.dj, %.lr.ph495 ], [ %i.bt, %.backedge.jt1.backedge ]
  %i.y = phi i32 [ %i.di, %.lr.ph495 ], [ %i.bs, %.backedge.jt1.backedge ]
  %spec.select226494 = phi i32 [ %spec.select236.ph, %.lr.ph495 ], [ %spec.select.jt1, %.backedge.jt1.backedge ] ; 2 uses
  %i.z = tail call i32 @feof(ptr noundef nonnull %i.m) #15
  %.not126.jt1 = icmp eq i32 %i.z, 0
  br i1 %.not126.jt1, label %bb.r, label %.loopexit237

bb.h:                                             ; preds = %.lr.ph490, %.backedge.jt3.backedge
  %i.aa = phi i8 [ %i.co, %.lr.ph490 ], [ %i.dp, %.backedge.jt3.backedge ]
  %i.ab = phi i32 [ %i.cn, %.lr.ph490 ], [ %i.do, %.backedge.jt3.backedge ]
  %.0120.be.jt3489 = phi i32 [ 0, %.lr.ph490 ], [ %i.dl, %.backedge.jt3.backedge ] ; 4 uses
  %spec.select227488 = phi i32 [ %spec.select.jt2, %.lr.ph490 ], [ %spec.select.jt3, %.backedge.jt3.backedge ] ; 2 uses
  %i.ac = tail call i32 @feof(ptr noundef nonnull %i.m) #15
  %.not126.jt3 = icmp eq i32 %i.ac, 0
  br i1 %.not126.jt3, label %bb.l, label %.loopexit237

.loopexit237:                                     ; preds = %bb.f, %bb.d, %bb.e, %bb.h, %bb.g, %.lr.ph
  %.0119164215 = phi i32 [ %spec.select227488, %bb.h ], [ %spec.select226494, %bb.g ], [ %spec.select229483, %bb.e ], [ 1, %.lr.ph ], [ %spec.select230, %bb.d ], [ %spec.select228, %bb.f ]
  %.0116166203 = phi ptr [ %i.ba, %bb.h ], [ %i.ba, %bb.g ], [ %i.ba, %bb.e ], [ null, %.lr.ph ], [ null, %bb.d ], [ null, %bb.f ] ; 2 uses
  %i.ad = tail call i32 @ferror(ptr noundef nonnull %i.m) #15
  %.not128 = icmp eq i32 %i.ad, 0
  br i1 %.not128, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.loopexit237
  %i.ae = tail call ptr @__errno_location() #18
  %i.af = load i32, ptr %i.ae, align 4
  tail call void @report_read_failure(ptr noundef %0, i32 noundef %i.af)
  %i.ag = tail call ptr (ptr, ptr, ptr, i32, ptr, ...) @load_loal_error(ptr noundef nonnull %i.m, ptr noundef %i.a, ptr noundef %.0116166203, i32 noundef %.0119164215, ptr noundef @.str.14, ptr noundef %0)
  br label %bb.ah

bb.j:                                             ; preds = %bb.e
  %sext.jt2 = shl i32 %i.u, 24                    ; 2 uses
  %i.ah = icmp eq i32 %sext.jt2, 167772160
  %i.ai = zext i1 %i.ah to i32
  %spec.select.jt2 = add i32 %spec.select229483, %i.ai ; 7 uses
  %i.aj = icmp samesign ugt i32 %.0120.be.jt2484, 8190
  br i1 %i.aj, label %.loopexit240, label %bb.w

bb.k:                                             ; preds = %bb.f
  %sext.jt0 = shl i32 %i.ax, 24                   ; 2 uses
  %i.ak = icmp eq i32 %sext.jt0, 167772160
  %i.al = zext i1 %i.ak to i32
  %spec.select.jt0 = add i32 %spec.select228, %i.al
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  %sext.jt3 = shl i32 %i.ab, 24                   ; 2 uses
  %i.am = icmp eq i32 %sext.jt3, 167772160
  %i.an = zext i1 %i.am to i32
  %spec.select.jt3 = add i32 %spec.select227488, %i.an ; 5 uses
  %i.ao = icmp samesign ugt i32 %.0120.be.jt3489, 8190
  br i1 %i.ao, label %.loopexit240, label %bb.ab

.loopexit240:                                     ; preds = %bb.j, %bb.l
  %spec.select220 = phi i32 [ %spec.select.jt3, %bb.l ], [ %spec.select.jt2, %bb.j ]
  %i.ap = tail call ptr (ptr, ptr, ptr, i32, ptr, ...) @load_loal_error(ptr noundef nonnull %i.m, ptr noundef %i.a, ptr noundef %i.ba, i32 noundef %spec.select220, ptr noundef @.str.15)
  br label %bb.ah

bb.m:                                             ; preds = %.lr.ph
  %sext = shl i32 %i.n, 24                        ; 2 uses
  %i.aq = icmp eq i32 %sext, 167772160
  %spec.select = select i1 %i.aq, i32 2, i32 1
  br label %bb.o

bb.n:                                             ; preds = %bb.d
  %sext.jt4.mask = and i32 %i.av, 255
  %i.ar = icmp eq i32 %sext.jt4.mask, 10          ; 2 uses
  %i.as = zext i1 %i.ar to i32
  %spec.select.jt4 = add i32 %spec.select230, %i.as ; 2 uses
  br i1 %i.ar, label %.backedge.jt0, label %.backedge.jt4

bb.o:                                             ; preds = %bb.k, %bb.m
  %spec.select225 = phi i32 [ %spec.select, %bb.m ], [ %spec.select.jt0, %bb.k ] ; 7 uses
  %.in = phi i32 [ %sext, %bb.m ], [ %sext.jt0, %bb.k ]
  %i.at = phi i8 [ %i.o, %bb.m ], [ %i.ay, %bb.k ]
  %i.au = ashr exact i32 %.in, 24                 ; 2 uses
  switch i32 %i.au, label %bb.q [
    i32 32, label %.backedge.jt0
    i32 9, label %.backedge.jt0
    i32 10, label %.backedge.jt0
    i32 65, label %bb.p
    i32 66, label %bb.p
    i32 67, label %bb.p
    i32 68, label %bb.p
    i32 69, label %bb.p
    i32 70, label %bb.p
    i32 71, label %bb.p
    i32 72, label %bb.p
    i32 73, label %bb.p
    i32 74, label %bb.p
    i32 75, label %bb.p
    i32 76, label %bb.p
    i32 77, label %bb.p
    i32 78, label %bb.p
    i32 79, label %bb.p
    i32 80, label %bb.p
    i32 81, label %bb.p
    i32 82, label %bb.p
    i32 83, label %bb.p
    i32 84, label %bb.p
    i32 85, label %bb.p
    i32 86, label %bb.p
    i32 87, label %bb.p
    i32 88, label %bb.p
    i32 89, label %bb.p
    i32 90, label %bb.p
    i32 97, label %bb.p
    i32 98, label %bb.p
    i32 99, label %bb.p
    i32 100, label %bb.p
    i32 101, label %bb.p
    i32 102, label %bb.p
    i32 103, label %bb.p
    i32 104, label %bb.p
    i32 105, label %bb.p
    i32 106, label %bb.p
    i32 107, label %bb.p
    i32 108, label %bb.p
    i32 109, label %bb.p
    i32 110, label %bb.p
    i32 111, label %bb.p
    i32 112, label %bb.p
    i32 113, label %bb.p
    i32 114, label %bb.p
    i32 115, label %bb.p
    i32 116, label %bb.p
    i32 117, label %bb.p
    i32 118, label %bb.p
    i32 119, label %bb.p
    i32 120, label %bb.p
    i32 121, label %bb.p
    i32 122, label %bb.p
    i32 95, label %bb.p
    i32 48, label %bb.p
    i32 49, label %bb.p
    i32 50, label %bb.p
    i32 51, label %bb.p
    i32 52, label %bb.p
    i32 53, label %bb.p
    i32 54, label %bb.p
    i32 55, label %bb.p
    i32 56, label %bb.p
    i32 57, label %bb.p
    i32 46, label %bb.p
    i32 35, label %.backedge.jt4
  ]

.backedge.jt4:                                    ; preds = %bb.o, %bb.n
  %spec.select230 = phi i32 [ %spec.select.jt4, %bb.n ], [ %spec.select225, %bb.o ] ; 2 uses
  %i.av = tail call i32 @fgetc(ptr noundef nonnull %i.m) ; 2 uses
  %i.aw = and i32 %i.av, 255
  %.not125.jt4 = icmp eq i32 %i.aw, 0
  br i1 %.not125.jt4, label %.loopexit, label %bb.d, !llvm.loop !24

.backedge.jt0:                                    ; preds = %bb.n, %bb.o, %bb.o, %bb.u, %bb.o
  %spec.select228 = phi i32 [ %spec.select.jt1, %bb.u ], [ %spec.select225, %bb.o ], [ %spec.select225, %bb.o ], [ %spec.select225, %bb.o ], [ %spec.select.jt4, %bb.n ] ; 2 uses
  %i.ax = tail call i32 @fgetc(ptr noundef nonnull %i.m) ; 2 uses
  %i.ay = trunc i32 %i.ax to i8                   ; 2 uses
  %.not125.jt0 = icmp eq i8 %i.ay, 0
  br i1 %.not125.jt0, label %.loopexit, label %bb.f, !llvm.loop !24

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  store i8 %i.at, ptr %i.i, align 1
  store i8 0, ptr %i.q, align 1
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.h, ptr noundef @.str.16, ptr noundef %0, i32 noundef %spec.select225)
  %i.az = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ba = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 23 uses
  %.not.i132 = icmp eq ptr %i.az, null
  %i.bb = load ptr, ptr @avp_strings, align 8
  %.str.6..i = select i1 %.not.i132, ptr @.str.6, ptr %i.az
  %i.bc = tail call ptr @scs_subscribe(ptr noundef %i.bb, ptr noundef nonnull %.str.6..i)
  store ptr %i.bc, ptr %i.ba, align 8
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  store i32 0, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %i.ba, i64 16     ; 3 uses
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %i.ba, i64 24
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %i.ba, i64 32
  store ptr %i.be, ptr %i.bg, align 8
  %i.bh = tail call ptr @g_string_set_size(ptr noundef %i.h, i64 noundef 0) ; 0 uses
  %i.bi = tail call i32 @fgetc(ptr noundef nonnull %i.m) ; 2 uses
  %i.bj = trunc i32 %i.bi to i8                   ; 2 uses
  %.not125.jt2482498 = icmp eq i8 %i.bj, 0
  br i1 %.not125.jt2482498, label %.backedge.jt2.outer..backedge.jt2.outer..loopexit.loopexit379_crit_edge_crit_edge, label %.lr.ph485.lr.ph, !llvm.loop !24

.lr.ph485.lr.ph:                                  ; preds = %bb.p
  %1 = getelementptr i8, ptr %i.ba, i64 24
  %2 = getelementptr i8, ptr %i.ba, i64 8         ; 2 uses
  br label %.lr.ph485, !llvm.loop !24

.lr.ph485:                                        ; preds = %.lr.ph485.lr.ph, %.backedge.jt2.outer
  %i.bk = phi i8 [ %i.bj, %.lr.ph485.lr.ph ], [ %i.bx, %.backedge.jt2.outer ]
  %i.bl = phi i32 [ %i.bi, %.lr.ph485.lr.ph ], [ %i.bw, %.backedge.jt2.outer ]
  %spec.select229.ph499 = phi i32 [ %spec.select225, %.lr.ph485.lr.ph ], [ %spec.select.jt1, %.backedge.jt2.outer ]
  br label %bb.e, !llvm.loop !24

bb.q:                                             ; preds = %bb.o
  %i.bm = tail call ptr (ptr, ptr, ptr, i32, ptr, ...) @load_loal_error(ptr noundef nonnull %i.m, ptr noundef %i.a, ptr noundef null, i32 noundef %spec.select225, ptr noundef @.str.17, i32 noundef %i.au)
  br label %bb.ah

bb.r:                                             ; preds = %bb.g
  %sext.jt1 = shl i32 %i.y, 24                    ; 2 uses
  %i.bn = ashr exact i32 %sext.jt1, 24            ; 2 uses
  %i.bo = icmp eq i32 %sext.jt1, 167772160
  %i.bp = zext i1 %i.bo to i32
  %spec.select.jt1 = add i32 %spec.select226494, %i.bp ; 4 uses
  store i8 0, ptr %i.i, align 1
  switch i32 %i.bn, label %bb.v [
    i32 92, label %bb.s
    i32 32, label %.backedge.jt1.backedge
    i32 9, label %.backedge.jt1.backedge
    i32 65, label %.backedge.jt2.outer
    i32 66, label %.backedge.jt2.outer
    i32 67, label %.backedge.jt2.outer
    i32 68, label %.backedge.jt2.outer
    i32 69, label %.backedge.jt2.outer
    i32 70, label %.backedge.jt2.outer
    i32 71, label %.backedge.jt2.outer
    i32 72, label %.backedge.jt2.outer
    i32 73, label %.backedge.jt2.outer
    i32 74, label %.backedge.jt2.outer
    i32 75, label %.backedge.jt2.outer
    i32 76, label %.backedge.jt2.outer
    i32 77, label %.backedge.jt2.outer
    i32 78, label %.backedge.jt2.outer
    i32 79, label %.backedge.jt2.outer
    i32 80, label %.backedge.jt2.outer
    i32 81, label %.backedge.jt2.outer
    i32 82, label %.backedge.jt2.outer
    i32 83, label %.backedge.jt2.outer
    i32 84, label %.backedge.jt2.outer
    i32 85, label %.backedge.jt2.outer
    i32 86, label %.backedge.jt2.outer
    i32 87, label %.backedge.jt2.outer
    i32 88, label %.backedge.jt2.outer
    i32 89, label %.backedge.jt2.outer
    i32 90, label %.backedge.jt2.outer
    i32 97, label %.backedge.jt2.outer
    i32 98, label %.backedge.jt2.outer
    i32 99, label %.backedge.jt2.outer
    i32 100, label %.backedge.jt2.outer
    i32 101, label %.backedge.jt2.outer
    i32 102, label %.backedge.jt2.outer
    i32 103, label %.backedge.jt2.outer
    i32 104, label %.backedge.jt2.outer
    i32 105, label %.backedge.jt2.outer
    i32 106, label %.backedge.jt2.outer
    i32 107, label %.backedge.jt2.outer
    i32 108, label %.backedge.jt2.outer
    i32 109, label %.backedge.jt2.outer
    i32 110, label %.backedge.jt2.outer
    i32 111, label %.backedge.jt2.outer
    i32 112, label %.backedge.jt2.outer
    i32 113, label %.backedge.jt2.outer
    i32 114, label %.backedge.jt2.outer
    i32 115, label %.backedge.jt2.outer
    i32 116, label %.backedge.jt2.outer
    i32 117, label %.backedge.jt2.outer
    i32 118, label %.backedge.jt2.outer
    i32 119, label %.backedge.jt2.outer
    i32 120, label %.backedge.jt2.outer
    i32 121, label %.backedge.jt2.outer
    i32 122, label %.backedge.jt2.outer
    i32 95, label %.backedge.jt2.outer
    i32 48, label %.backedge.jt2.outer
    i32 49, label %.backedge.jt2.outer
    i32 50, label %.backedge.jt2.outer
    i32 51, label %.backedge.jt2.outer
    i32 52, label %.backedge.jt2.outer
    i32 53, label %.backedge.jt2.outer
    i32 54, label %.backedge.jt2.outer
    i32 55, label %.backedge.jt2.outer
    i32 56, label %.backedge.jt2.outer
    i32 57, label %.backedge.jt2.outer
    i32 46, label %.backedge.jt2.outer
    i32 10, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.bq = tail call i32 @fgetc(ptr noundef nonnull %i.m)
  %i.br = shl i32 %i.bq, 24                       ; 2 uses
  %.not127 = icmp eq i32 %i.br, 167772160
  br i1 %.not127, label %.backedge.jt1.backedge, label %bb.t

.backedge.jt1.backedge:                           ; preds = %bb.s, %bb.r, %bb.r, %bb.t
  %i.bs = tail call i32 @fgetc(ptr noundef nonnull %i.m) ; 2 uses
  %i.bt = trunc i32 %i.bs to i8                   ; 2 uses
  %.not125.jt1 = icmp eq i8 %i.bt, 0
  br i1 %.not125.jt1, label %.loopexit, label %bb.g, !llvm.loop !24

bb.t:                                             ; preds = %bb.s
  %i.bu = ashr exact i32 %i.br, 24
  %i.bv = tail call i32 @ungetc(i32 noundef %i.bu, ptr noundef nonnull %i.m) ; 0 uses
  br label %.backedge.jt1.backedge

.backedge.jt2.outer:                              ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  store i8 %i.x, ptr %i.i, align 1
  store i8 0, ptr %i.q, align 1
  %i.bw = tail call i32 @fgetc(ptr noundef nonnull %i.m) ; 2 uses
  %i.bx = trunc i32 %i.bw to i8                   ; 2 uses
  %.not125.jt2482 = icmp eq i8 %i.bx, 0
  br i1 %.not125.jt2482, label %.backedge.jt2.outer..backedge.jt2.outer..loopexit.loopexit379_crit_edge_crit_edge, label %.lr.ph485, !llvm.loop !24

bb.u:                                             ; preds = %bb.r
  %i.by = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 5 uses
  store ptr %i.ba, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store ptr %i.d, ptr %i.bz, align 8
  %i.ca = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cb = getelementptr i8, ptr %i.by, i64 16
  store ptr %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr i8, ptr %i.ca, i64 8
  store ptr %i.by, ptr %i.cc, align 8
  store ptr %i.by, ptr %i.f, align 8
  %i.cd = load i32, ptr %i.g, align 8
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.g, align 8
  br label %.backedge.jt0

bb.v:                                             ; preds = %bb.r
  %i.cf = tail call ptr (ptr, ptr, ptr, i32, ptr, ...) @load_loal_error(ptr noundef nonnull %i.m, ptr noundef %i.a, ptr noundef %i.ba, i32 noundef %spec.select.jt1, ptr noundef @.str.17, i32 noundef %i.bn)
  br label %bb.ah

bb.w:                                             ; preds = %bb.j
  %i.cg = ashr exact i32 %sext.jt2, 24            ; 2 uses
  switch i32 %i.cg, label %bb.aa [
    i32 59, label %bb.x
    i32 61, label %bb.y
    i32 94, label %bb.y
    i32 36, label %bb.y
    i32 126, label %bb.y
    i32 60, label %bb.y
    i32 62, label %bb.y
    i32 63, label %bb.y
    i32 124, label %bb.y
    i32 38, label %bb.y
    i32 33, label %bb.y
    i32 65, label %.backedge.jt2
    i32 66, label %.backedge.jt2
    i32 67, label %.backedge.jt2
    i32 68, label %.backedge.jt2
    i32 69, label %.backedge.jt2
    i32 70, label %.backedge.jt2
    i32 71, label %.backedge.jt2
    i32 72, label %.backedge.jt2
    i32 73, label %.backedge.jt2
    i32 74, label %.backedge.jt2
    i32 75, label %.backedge.jt2
    i32 76, label %.backedge.jt2
    i32 77, label %.backedge.jt2
    i32 78, label %.backedge.jt2
    i32 79, label %.backedge.jt2
    i32 80, label %.backedge.jt2
    i32 81, label %.backedge.jt2
    i32 82, label %.backedge.jt2
    i32 83, label %.backedge.jt2
    i32 84, label %.backedge.jt2
    i32 85, label %.backedge.jt2
    i32 86, label %.backedge.jt2
    i32 87, label %.backedge.jt2
    i32 88, label %.backedge.jt2
    i32 89, label %.backedge.jt2
    i32 90, label %.backedge.jt2
    i32 97, label %.backedge.jt2
    i32 98, label %.backedge.jt2
    i32 99, label %.backedge.jt2
    i32 100, label %.backedge.jt2
    i32 101, label %.backedge.jt2
    i32 102, label %.backedge.jt2
    i32 103, label %.backedge.jt2
    i32 104, label %.backedge.jt2
    i32 105, label %.backedge.jt2
    i32 106, label %.backedge.jt2
    i32 107, label %.backedge.jt2
    i32 108, label %.backedge.jt2
    i32 109, label %.backedge.jt2
    i32 110, label %.backedge.jt2
    i32 111, label %.backedge.jt2
    i32 112, label %.backedge.jt2
    i32 113, label %.backedge.jt2
    i32 114, label %.backedge.jt2
    i32 115, label %.backedge.jt2
    i32 116, label %.backedge.jt2
    i32 117, label %.backedge.jt2
    i32 118, label %.backedge.jt2
    i32 119, label %.backedge.jt2
    i32 120, label %.backedge.jt2
    i32 121, label %.backedge.jt2
    i32 122, label %.backedge.jt2
    i32 95, label %.backedge.jt2
    i32 48, label %.backedge.jt2
    i32 49, label %.backedge.jt2
    i32 50, label %.backedge.jt2
    i32 51, label %.backedge.jt2
    i32 52, label %.backedge.jt2
    i32 53, label %.backedge.jt2
    i32 54, label %.backedge.jt2
    i32 55, label %.backedge.jt2
    i32 56, label %.backedge.jt2
    i32 57, label %.backedge.jt2
    i32 46, label %.backedge.jt2
    i32 10, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.ch = zext nneg i32 %.0120.be.jt2484 to i64
  %i.ci = getelementptr i8, ptr %i.i, i64 %i.ch
  store i8 0, ptr %i.ci, align 1
  store i8 0, ptr %i.j, align 1
  %i.cj = tail call ptr @new_avp(ptr noundef %i.i, ptr noundef %i.j, i8 noundef signext 63) ; 2 uses
  %i.ck = tail call zeroext i1 @insert_avp(ptr noundef %i.ba, ptr noundef %i.cj)
  br i1 %i.ck, label %.backedge.jt1.preheader, label %3

3:                                                ; preds = %bb.x
  tail call void @delete_avp(ptr noundef %i.cj)
  br label %.backedge.jt1.preheader

bb.y:                                             ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.cl = zext nneg i32 %.0120.be.jt2484 to i64
  %i.cm = getelementptr i8, ptr %i.i, i64 %i.cl
  store i8 0, ptr %i.cm, align 1
  %i.cn = tail call i32 @fgetc(ptr noundef nonnull %i.m) ; 2 uses
  %i.co = trunc i32 %i.cn to i8                   ; 2 uses
  %.not125.jt3487 = icmp eq i8 %i.co, 0
  br i1 %.not125.jt3487, label %.loopexit, label %.lr.ph490, !llvm.loop !24

.lr.ph490:                                        ; preds = %bb.y
  br label %bb.h, !llvm.loop !24

.backedge.jt2:                                    ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.cp = add nuw nsw i32 %.0120.be.jt2484, 1
  %i.cq = zext nneg i32 %.0120.be.jt2484 to i64
  %i.cr = getelementptr i8, ptr %i.i, i64 %i.cq
  store i8 %i.t, ptr %i.cr, align 1
  %i.cs = tail call i32 @fgetc(ptr noundef nonnull %i.m) ; 2 uses
  %i.ct = trunc i32 %i.cs to i8                   ; 2 uses
  %.not125.jt2 = icmp eq i8 %i.ct, 0
  br i1 %.not125.jt2, label %.loopexit, label %bb.e, !llvm.loop !24

bb.z:                                             ; preds = %bb.w
  %i.cu = tail call ptr (ptr, ptr, ptr, i32, ptr, ...) @load_loal_error(ptr noundef nonnull %i.m, ptr noundef %i.a, ptr noundef %i.ba, i32 noundef %spec.select.jt2, ptr noundef @.str.18)
  br label %bb.ah

bb.aa:                                            ; preds = %bb.w
  %i.cv = tail call ptr (ptr, ptr, ptr, i32, ptr, ...) @load_loal_error(ptr noundef nonnull %i.m, ptr noundef %i.a, ptr noundef %i.ba, i32 noundef %spec.select.jt2, ptr noundef @.str.19, i32 noundef %i.cg)
  br label %bb.ah

bb.ab:                                            ; preds = %bb.l
  %i.cw = ashr exact i32 %sext.jt3, 24
  switch i32 %i.cw, label %.backedge.jt3.backedge [
    i32 92, label %bb.ac
    i32 59, label %bb.ad
    i32 10, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cx = tail call i32 @fgetc(ptr noundef nonnull %i.m)
  %i.cy = trunc i32 %i.cx to i8
  br label %.backedge.jt3.backedge

bb.ad:                                            ; preds = %bb.ab
  %i.cz = zext nneg i32 %.0120.be.jt3489 to i64
  %i.da = getelementptr i8, ptr %i.j, i64 %i.cz
  store i8 0, ptr %i.da, align 1
  %i.db = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 6 uses
  %i.dc = load ptr, ptr @avp_strings, align 8
  %i.dd = tail call ptr @scs_subscribe(ptr noundef %i.dc, ptr noundef %i.i)
  store ptr %i.dd, ptr %i.db, align 8
  %i.de = load ptr, ptr @avp_strings, align 8
  %i.df = tail call ptr @scs_subscribe(ptr noundef %i.de, ptr noundef %i.j) ; 3 uses
  %i.dg = getelementptr i8, ptr %i.db, i64 8
  store ptr %i.df, ptr %i.dg, align 8
  %i.dh = getelementptr i8, ptr %i.db, i64 16
  store i8 %i.t, ptr %i.dh, align 8
  %.01936.i = load ptr, ptr %1, align 8           ; 4 uses
  %4 = load ptr, ptr %.01936.i, align 8           ; 3 uses
  %.not37.i = icmp eq ptr %4, null
  br i1 %.not37.i, label %.backedge.jt1.preheader.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad
  %5 = load ptr, ptr %i.db, align 8               ; 2 uses
  %6 = icmp eq i8 %i.t, 61
  br i1 %6, label %.lr.ph.i.split, label %.lr.ph.i.split.us

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.thread34.i.us
  %7 = phi ptr [ %19, %.thread34.i.us ], [ %4, %.lr.ph.i ] ; 2 uses
  %.01938.i.us = phi ptr [ %.019.i.us, %.thread34.i.us ], [ %.01936.i, %.lr.ph.i ] ; 3 uses
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @strcmp(ptr noundef %5, ptr noundef %8) #17 ; 2 uses
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %.lr.ph.i.split.us
  %12 = icmp slt i32 %9, 0
  br i1 %12, label %.backedge.jt1.preheader.sink.split, label %.thread34.i.us

13:                                               ; preds = %.lr.ph.i.split.us
  %14 = getelementptr i8, ptr %7, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @strcmp(ptr noundef %i.df, ptr noundef %15) #17
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %.backedge.jt1.preheader.sink.split, label %.thread34.i.us

.thread34.i.us:                                   ; preds = %13, %11
  %18 = getelementptr i8, ptr %.01938.i.us, i64 8
  %.019.i.us = load ptr, ptr %18, align 8         ; 3 uses
  %19 = load ptr, ptr %.019.i.us, align 8         ; 2 uses
  %.not.i133.us = icmp eq ptr %19, null
  br i1 %.not.i133.us, label %.backedge.jt1.preheader.sink.split, label %.lr.ph.i.split.us, !llvm.loop !0

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %.thread34.i
  %20 = phi ptr [ %38, %.thread34.i ], [ %4, %.lr.ph.i ] ; 3 uses
  %.01938.i = phi ptr [ %.019.i, %.thread34.i ], [ %.01936.i, %.lr.ph.i ] ; 3 uses
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @strcmp(ptr noundef %5, ptr noundef %21) #17 ; 2 uses
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %.lr.ph.i.split
  %25 = getelementptr i8, ptr %20, i64 8
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @strcmp(ptr noundef %i.df, ptr noundef %26) #17 ; 2 uses
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %.backedge.jt1.preheader.sink.split, label %29

29:                                               ; preds = %24
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %.thread34.i

31:                                               ; preds = %29
  %32 = getelementptr i8, ptr %20, i64 16
  %33 = load i8, ptr %32, align 8
  %34 = icmp eq i8 %33, 61
  br i1 %34, label %insert_avp.exit, label %.thread34.i

35:                                               ; preds = %.lr.ph.i.split
  %36 = icmp slt i32 %22, 0
  br i1 %36, label %.backedge.jt1.preheader.sink.split, label %.thread34.i

.thread34.i:                                      ; preds = %35, %31, %29
  %37 = getelementptr i8, ptr %.01938.i, i64 8
  %.019.i = load ptr, ptr %37, align 8            ; 3 uses
  %38 = load ptr, ptr %.019.i, align 8            ; 2 uses
  %.not.i133 = icmp eq ptr %38, null
  br i1 %.not.i133, label %.backedge.jt1.preheader.sink.split, label %.lr.ph.i.split, !llvm.loop !0

.backedge.jt1.preheader.sink.split:               ; preds = %.thread34.i.us, %13, %11, %.thread34.i, %35, %24, %bb.ad
  %.019.lcssa.i = phi ptr [ %.01936.i, %bb.ad ], [ %.019.i, %.thread34.i ], [ %.01938.i, %24 ], [ %.01938.i, %35 ], [ %.01938.i.us, %11 ], [ %.019.i.us, %.thread34.i.us ], [ %.01938.i.us, %13 ] ; 2 uses
  %39 = tail call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 5 uses
  store ptr %i.db, ptr %39, align 8
  %40 = getelementptr i8, ptr %39, i64 8
  store ptr %.019.lcssa.i, ptr %40, align 8
  %41 = getelementptr i8, ptr %.019.lcssa.i, i64 16 ; 2 uses
  %42 = load ptr, ptr %41, align 8                ; 2 uses
  %43 = getelementptr i8, ptr %39, i64 16
  store ptr %42, ptr %43, align 8
  %44 = getelementptr i8, ptr %42, i64 8
  store ptr %39, ptr %44, align 8
  store ptr %39, ptr %41, align 8
  %45 = load i32, ptr %2, align 8
  %46 = add i32 %45, 1
  store i32 %46, ptr %2, align 8
  br label %.backedge.jt1.preheader

insert_avp.exit:                                  ; preds = %31
  tail call void @delete_avp(ptr noundef %i.db)
  br label %.backedge.jt1.preheader

.backedge.jt1.preheader:                          ; preds = %bb.x, %3, %.backedge.jt1.preheader.sink.split, %insert_avp.exit
  %spec.select236.ph = phi i32 [ %spec.select.jt2, %bb.x ], [ %spec.select.jt2, %3 ], [ %spec.select.jt3, %.backedge.jt1.preheader.sink.split ], [ %spec.select.jt3, %insert_avp.exit ]
  %i.di = tail call i32 @fgetc(ptr noundef nonnull %i.m) ; 2 uses
  %i.dj = trunc i32 %i.di to i8                   ; 2 uses
  %.not125.jt1493 = icmp eq i8 %i.dj, 0
  br i1 %.not125.jt1493, label %.loopexit, label %.lr.ph495, !llvm.loop !24

.lr.ph495:                                        ; preds = %.backedge.jt1.preheader
  br label %bb.g, !llvm.loop !24

bb.ae:                                            ; preds = %bb.ab
  %i.dk = tail call ptr (ptr, ptr, ptr, i32, ptr, ...) @load_loal_error(ptr noundef nonnull %i.m, ptr noundef %i.a, ptr noundef %i.ba, i32 noundef %spec.select.jt3, ptr noundef @.str.20)
  br label %bb.ah

.backedge.jt3.backedge:                           ; preds = %bb.ab, %bb.ac
  %.sink371 = phi i8 [ %i.cy, %bb.ac ], [ %i.aa, %bb.ab ]
  %i.dl = add nuw nsw i32 %.0120.be.jt3489, 1
  %i.dm = zext nneg i32 %.0120.be.jt3489 to i64
  %i.dn = getelementptr i8, ptr %i.j, i64 %i.dm
  store i8 %.sink371, ptr %i.dn, align 1
  %i.do = tail call i32 @fgetc(ptr noundef nonnull %i.m) ; 2 uses
  %i.dp = trunc i32 %i.do to i8                   ; 2 uses
  %.not125.jt3 = icmp eq i8 %i.dp, 0
  br i1 %.not125.jt3, label %.loopexit, label %bb.h, !llvm.loop !24

.backedge.jt2.outer..backedge.jt2.outer..loopexit.loopexit379_crit_edge_crit_edge: ; preds = %bb.p, %.backedge.jt2.outer
  br label %.loopexit, !llvm.loop !24

.loopexit:                                        ; preds = %.backedge.jt0, %.backedge.jt4, %.backedge.jt1.preheader, %bb.y, %.backedge.jt2, %.backedge.jt3.backedge, %.backedge.jt1.backedge, %.backedge.jt2.outer..backedge.jt2.outer..loopexit.loopexit379_crit_edge_crit_edge, %.loopexit237
  %.0116141 = phi ptr [ %.0116166203, %.loopexit237 ], [ %i.ba, %.backedge.jt2 ], [ %i.ba, %.backedge.jt1.preheader ], [ %i.ba, %.backedge.jt1.backedge ], [ %i.ba, %.backedge.jt2.outer..backedge.jt2.outer..loopexit.loopexit379_crit_edge_crit_edge ], [ null, %.backedge.jt4 ], [ %i.ba, %.backedge.jt3.backedge ], [ %i.ba, %bb.y ], [ null, %.backedge.jt0 ] ; 2 uses
  %i.dq = tail call i32 @fclose(ptr noundef nonnull %i.m) ; 0 uses
  %.not129 = icmp eq ptr %.0116141, null
  br i1 %.not129, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.loopexit
  tail call void @delete_avpl(ptr noundef nonnull %.0116141, i1 noundef zeroext true)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.c
  %i.dr = tail call ptr @__errno_location() #18
  %i.ds = load i32, ptr %i.dr, align 4
  tail call void @report_open_failure(ptr noundef %0, i32 noundef %i.ds, i1 noundef zeroext false)
  %i.dt = tail call ptr (ptr, ptr, ptr, i32, ptr, ...) @load_loal_error(ptr noundef null, ptr noundef %i.a, ptr noundef null, i32 noundef 0, ptr noundef @.str.21, ptr noundef %0)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.b, %bb.i, %.loopexit240, %bb.q, %bb.v, %bb.z, %bb.aa, %bb.ae, %bb.ag, %.loopexit, %bb.af, %.loopexit.thread
  %.0121 = phi ptr [ %i.a, %.loopexit ], [ %i.a, %.loopexit.thread ], [ %i.a, %bb.af ], [ %i.ag, %bb.i ], [ %i.ap, %.loopexit240 ], [ %i.bm, %bb.q ], [ %i.cf, %bb.v ], [ %i.cv, %bb.aa ], [ %i.cu, %bb.z ], [ %i.dk, %bb.ae ], [ %i.dt, %bb.ag ], [ %i.l, %bb.b ]
  %i.du = tail call ptr @g_string_free(ptr noundef %i.h, i32 noundef 1) ; 0 uses
  tail call void @g_free(ptr noundef %i.i)
  tail call void @g_free(ptr noundef %i.j)
  ret ptr %.0121
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @getuid() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef ptr @load_loal_error(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.va_start.p0(ptr nonnull %5)
  %i.a = call noalias ptr @wmem_strdup_vprintf(ptr noundef null, ptr noundef %4, ptr noundef nonnull %5) ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %5)
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.22, ptr noundef %i.b, i32 noundef %3, ptr noundef %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.23, i32 noundef %3, ptr noundef %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]  ; 3 uses
  %i.e = call noalias dereferenceable_or_null(40) ptr @g_slice_alloc(i64 noundef 40) #16 ; 6 uses
  %.not.i = icmp eq ptr %.0, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str.11, ptr %.0
  %i.f = load ptr, ptr @avp_strings, align 8
  %i.g = call ptr @scs_subscribe(ptr noundef %i.f, ptr noundef nonnull %spec.store.select.i)
  store ptr %i.g, ptr %i.e, align 8
  %i.h = getelementptr i8, ptr %i.e, i64 16       ; 3 uses
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 24
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.e, i64 8
  store i32 0, ptr %i.k, align 8
  call void @g_free(ptr noundef %i.a)
  call void @g_free(ptr noundef %.0)
  %.not19 = icmp eq ptr %0, null
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @fclose(ptr noundef nonnull %0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @delete_loal(ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @delete_avpl(ptr noundef nonnull %2, i1 noundef zeroext true)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret ptr %i.e
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare void @report_read_failure(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_set_size(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @ungetc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @report_open_failure(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__vsnprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable
define internal i32 @scs_hash(ptr nofree noundef readonly captures(none) %0) #12 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not10.not = icmp eq i8 %i.a, 0
  br i1 %.not10.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i8 [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %.013 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.0712 = phi i32 [ %i.f, %.lr.ph ], [ 5381, %bb.a ]
  %.0811 = phi ptr [ %i.g, %.lr.ph ], [ %0, %bb.a ]
  %i.c = sext i8 %i.b to i32
  %i.d = add nuw nsw i64 %.013, 1
  %i.e = mul i32 %.0712, 33
  %i.f = add i32 %i.e, %i.c                       ; 2 uses
  %i.g = getelementptr i8, ptr %.0811, i64 1      ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %.not = icmp ne i8 %i.h, 0
  %i.i = icmp samesign ult i64 %.013, 65534
  %or.cond = select i1 %.not, i1 %i.i, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !25

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.07.lcssa = phi i32 [ 5381, %bb.a ], [ %i.f, %.lr.ph ]
  ret i32 %.07.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @scs_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef 65535) #17
  %i.b = icmp eq i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_vprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #14

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind null_pointer_is_valid memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { allocsize(0) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
end_hunk_3
