Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/sequence_analysis?download=true
inline.NumInlined: 38
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sainfo_counter = type { ptr, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s:%u: failed assertion \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"epan/sequence_analysis.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"tap_func\00", align 1
@registered_seq_analysis = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Conv.| Time    \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"     |         \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"|Time     \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"|         \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"| %s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"|\0A%s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"|%s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"(%i)\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @register_seq_analysis(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 43, ptr noundef @.str.2) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call ptr @wmem_epan_scope()
  %i.b = tail call noalias dereferenceable_or_null(48) ptr @wmem_alloc0(ptr noundef %i.a, i64 noundef 48) #18 ; 7 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 16
  store i32 %2, ptr %i.d, align 8
  %.not18 = icmp eq ptr %3, null
  br i1 %.not18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @proto_get_protocol_filter_name(i32 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %i.e, %bb.d ], [ %3, %bb.c ]
  %i.f = getelementptr i8, ptr %i.b, i64 24
  store ptr %.sink, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 32
  store i32 %4, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.b, i64 40
  store ptr %5, ptr %i.h, align 8
  %i.i = load ptr, ptr @registered_seq_analysis, align 8 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @wmem_epan_scope()
  %i.l = tail call ptr @wmem_tree_new(ptr noundef %i.k) ; 2 uses
  store ptr %i.l, ptr @registered_seq_analysis, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %i.l, %bb.f ], [ %i.i, %bb.e ]
  tail call void @wmem_tree_insert_string(ptr noundef %i.m, ptr noundef %0, ptr noundef %i.b, i32 noundef 0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_epan_scope() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @proto_get_protocol_filter_name(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @wmem_tree_insert_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define ptr @sequence_analysis_get_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define ptr @sequence_analysis_get_ui_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define ptr @sequence_analysis_get_tap_listener_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define ptr @sequence_analysis_get_packet_func(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define i32 @sequence_analysis_get_tap_flags(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @sequence_analysis_find_by_name(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @registered_seq_analysis, align 8
  %i.b = tail call ptr @wmem_tree_lookup_string(ptr noundef %i.a, ptr noundef %0, i32 noundef 0)
  ret ptr %i.b
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @sequence_analysis_table_iterate_tables(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @registered_seq_analysis, align 8
  %i.b = tail call zeroext i1 @wmem_tree_foreach(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wmem_tree_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noalias noundef ptr @sequence_analysis_create_sai_with_addresses(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %copy_address.exit47.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 184        ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not43 = icmp eq i32 %i.h, 0
  br i1 %.not43, label %copy_address.exit47.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(144) ptr @g_malloc0(i64 noundef 144) #20 ; 7 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.k = load i32, ptr %i.e, align 8
  %i.l = getelementptr i8, ptr %0, i64 164
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 168
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store i32 %i.k, ptr %i.j, align 8
  %i.p = icmp eq i32 %i.m, 0
  br i1 %i.p, label %copy_address.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = sext i32 %i.m to i64
  %i.r = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.o, i64 noundef %i.q) #21 ; 2 uses
  %i.s = getelementptr i8, ptr %i.i, i64 24
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %i.i, i64 16
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.i, i64 12
  store i32 %i.m, ptr %i.u, align 4
  br label %copy_address.exit

copy_address.exit:                                ; preds = %bb.d, %bb.e
  %i.v = getelementptr i8, ptr %i.i, i64 40       ; 2 uses
  %i.w = load i32, ptr %i.g, align 8
  %i.x = getelementptr i8, ptr %0, i64 188
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 192
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  store i32 %i.w, ptr %i.v, align 8
  %i.ab = icmp eq i32 %i.y, 0
  br i1 %i.ab, label %copy_address.exit47, label %copy_address.exit47.sink.split

bb.f:                                             ; preds = %bb.a
  %i.ac = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %.not44 = icmp eq i32 %i.ad, 0
  br i1 %.not44, label %copy_address.exit47.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %0, i64 232       ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %.not45 = icmp eq i32 %i.af, 0
  br i1 %.not45, label %copy_address.exit47.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call noalias dereferenceable_or_null(144) ptr @g_malloc0(i64 noundef 144) #20 ; 7 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8      ; 2 uses
  %i.ai = load i32, ptr %i.ac, align 8
  %i.aj = getelementptr i8, ptr %0, i64 212
  %i.ak = load i32, ptr %i.aj, align 4            ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 216
  %i.am = load ptr, ptr %i.al, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  store i32 %i.ai, ptr %i.ah, align 8
  %i.an = icmp eq i32 %i.ak, 0
  br i1 %i.an, label %copy_address.exit48, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = sext i32 %i.ak to i64
  %i.ap = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.am, i64 noundef %i.ao) #21 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 24
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %i.ag, i64 16
  store ptr %i.ap, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %i.ag, i64 12
  store i32 %i.ak, ptr %i.as, align 4
  br label %copy_address.exit48

copy_address.exit48:                              ; preds = %bb.h, %bb.i
  %i.at = getelementptr i8, ptr %i.ag, i64 40     ; 2 uses
  %i.au = load i32, ptr %i.ae, align 8
  %i.av = getelementptr i8, ptr %0, i64 236
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = getelementptr i8, ptr %0, i64 240
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store i32 %i.au, ptr %i.at, align 8
  %i.az = icmp eq i32 %i.aw, 0
  br i1 %i.az, label %copy_address.exit47, label %copy_address.exit47.sink.split

copy_address.exit47.sink.split:                   ; preds = %copy_address.exit48, %copy_address.exit
  %.sink67 = phi i32 [ %i.y, %copy_address.exit ], [ %i.aw, %copy_address.exit48 ] ; 2 uses
  %.sink65 = phi ptr [ %i.aa, %copy_address.exit ], [ %i.ay, %copy_address.exit48 ]
  %.sink64 = phi ptr [ %i.i, %copy_address.exit ], [ %i.ag, %copy_address.exit48 ] ; 4 uses
  %i.ba = sext i32 %.sink67 to i64
  %i.bb = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %.sink65, i64 noundef %i.ba) #21 ; 2 uses
  %i.bc = getelementptr i8, ptr %.sink64, i64 56
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %.sink64, i64 48
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %.sink64, i64 44
  store i32 %.sink67, ptr %i.be, align 4
  br label %copy_address.exit47

copy_address.exit47:                              ; preds = %copy_address.exit47.sink.split, %copy_address.exit48, %copy_address.exit
  %.0 = phi ptr [ %i.i, %copy_address.exit ], [ %i.ag, %copy_address.exit48 ], [ %.sink64, %copy_address.exit47.sink.split ] ; 3 uses
  %.not46 = icmp eq ptr %.0, null
  br i1 %.not46, label %copy_address.exit47.thread, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %copy_address.exit47
  %i.bf = getelementptr i8, ptr %0, i64 424
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %0, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8
  call void @set_fd_time(ptr noundef %i.bg, ptr noundef %i.bi, ptr noundef nonnull %i.a)
  %i.bj = call noalias ptr @g_strdup(ptr noundef nonnull %i.a)
  %i.bk = getelementptr i8, ptr %.0, i64 80
  store ptr %i.bj, ptr %i.bk, align 8
  br label %copy_address.exit47.thread

copy_address.exit47.thread:                       ; preds = %bb.c, %bb.b, %bb.f, %bb.g, %g_strdup_inline.exit, %copy_address.exit47
  %.052 = phi ptr [ null, %copy_address.exit47 ], [ %.0, %g_strdup_inline.exit ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.052
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @set_fd_time(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @sequence_analysis_use_color_filter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load i16, ptr %i.e, align 2
  %i.g = lshr i16 %i.f, 8
  %i.h = zext nneg i16 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 16
  %i.j = getelementptr i8, ptr %i.d, i64 18
  %i.k = load i16, ptr %i.j, align 2
  %i.l = and i16 %i.k, -256
  %i.m = zext i16 %i.l to i32
  %i.n = or disjoint i32 %i.i, %i.m
  %i.o = getelementptr i8, ptr %i.d, i64 20
  %i.p = load i16, ptr %i.o, align 2
  %i.q = lshr i16 %i.p, 8
  %i.r = zext nneg i16 %i.q to i32
  %i.s = or disjoint i32 %i.n, %i.r
  %i.t = getelementptr i8, ptr %1, i64 104
  store i32 %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 22
  %i.y = load i16, ptr %i.x, align 2
  %i.z = lshr i16 %i.y, 8
  %i.aa = zext nneg i16 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = getelementptr i8, ptr %i.w, i64 24
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = and i16 %i.ad, -256
  %i.af = zext i16 %i.ae to i32
  %i.ag = or disjoint i32 %i.ab, %i.af
  %i.ah = getelementptr i8, ptr %i.w, i64 26
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = lshr i16 %i.ai, 8
  %i.ak = zext nneg i16 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr i8, ptr %1, i64 100
  store i32 %i.al, ptr %i.am, align 4
  %i.an = getelementptr i8, ptr %1, i64 108
  store i8 1, ptr %i.an, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @sequence_analysis_use_col_info_as_label_comment(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread41, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @col_get_text(ptr noundef nonnull %i.b, i32 noundef 25) ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call ptr @col_get_text(ptr noundef %i.d, i32 noundef 35) ; 5 uses
  %.not19 = icmp eq ptr %i.c, null
  br i1 %.not19, label %bb.e, label %g_strdup_inline.exit36

g_strdup_inline.exit36:                           ; preds = %bb.b
  %i.f = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.c)
  %i.g = getelementptr i8, ptr %1, i64 72
  store ptr %i.f, ptr %i.g, align 8
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %g_strdup_inline.exit36
  %i.h = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c)
  br label %.thread41.sink.split

bb.d:                                             ; preds = %g_strdup_inline.exit36
  %i.i = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.c)
  br label %.thread41.sink.split

bb.e:                                             ; preds = %bb.b
  %.not20 = icmp eq ptr %i.e, null
  br i1 %.not20, label %.thread41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.e)
  %i.k = getelementptr i8, ptr %1, i64 72
  store ptr %i.j, ptr %i.k, align 8
  %i.l = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.e)
  br label %.thread41.sink.split

.thread41.sink.split:                             ; preds = %bb.f, %bb.d, %bb.c
  %.0.i.sink = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ], [ %i.l, %bb.f ]
  %i.m = getelementptr i8, ptr %1, i64 88
  store ptr %.0.i.sink, ptr %i.m, align 8
  br label %.thread41

.thread41:                                        ; preds = %.thread41.sink.split, %bb.a, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @col_get_text(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noalias noundef ptr @sequence_analysis_info_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(1040) ptr @g_malloc0(i64 noundef 1040) #20 ; 3 uses
  %i.b = tail call ptr @g_queue_new()
  %i.c = getelementptr i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %i.d = tail call ptr @g_hash_table_new(ptr noundef @g_direct_hash, ptr noundef @g_direct_equal)
  %i.e = getelementptr i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_queue_new() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #8

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @sequence_analysis_info_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.b, null
  br i1 %.not10.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_queue_free_full(ptr noundef nonnull %i.b, ptr noundef @sequence_analysis_item_free)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call ptr @g_queue_new()
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.e, null
  br i1 %.not11.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @g_hash_table_remove_all(ptr noundef nonnull %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr i8, ptr %0, i64 12
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %0, i64 32
  br label %bb.g

bb.g:                                             ; preds = %free_address.exit.i.i, %bb.f
  %indvars.iv.i.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i, %free_address.exit.i.i ] ; 2 uses
  %i.h = getelementptr [24 x i8], ptr %i.g, i64 %indvars.iv.i.i ; 4 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %free_address.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.i, label %free_address.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not6.i.i.i.i, label %free_address.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @wmem_free(ptr noundef null, ptr noundef nonnull %i.n)
  br label %free_address.exit.i.i

free_address.exit.i.i:                            ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 40
  br i1 %exitcond.not.i.i, label %sequence_analysis_list_free.exit, label %bb.g, !llvm.loop !0

sequence_analysis_list_free.exit:                 ; preds = %free_address.exit.i.i
  %i.o = getelementptr i8, ptr %0, i64 1032
  store i32 0, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.a, align 8
  tail call void @g_queue_free(ptr noundef %i.p)
  %i.q = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.q, null
  br i1 %.not7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %sequence_analysis_list_free.exit
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.q)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %sequence_analysis_list_free.exit
  tail call void @g_free(ptr noundef nonnull %0)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @sequence_analysis_list_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_queue_free_full(ptr noundef nonnull %i.b, ptr noundef @sequence_analysis_item_free)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call ptr @g_queue_new()
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @g_hash_table_remove_all(ptr noundef nonnull %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr i8, ptr %0, i64 12
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %0, i64 32
  br label %bb.g

bb.g:                                             ; preds = %free_address.exit.i, %bb.f
  %indvars.iv.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i, %free_address.exit.i ] ; 2 uses
  %i.h = getelementptr [24 x i8], ptr %i.g, i64 %indvars.iv.i ; 4 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %free_address.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.i, label %free_address.exit.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not6.i.i.i, label %free_address.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @wmem_free(ptr noundef null, ptr noundef nonnull %i.n)
  br label %free_address.exit.i

free_address.exit.i:                              ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 40
  br i1 %exitcond.not.i, label %sequence_analysis_free_nodes.exit, label %bb.g, !llvm.loop !0

sequence_analysis_free_nodes.exit:                ; preds = %free_address.exit.i
  %i.o = getelementptr i8, ptr %0, i64 1032
  store i32 0, ptr %i.o, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %sequence_analysis_free_nodes.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_queue_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @sequence_analysis_list_sort(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_queue_sort(ptr noundef %i.b, ptr noundef @sequence_analysis_sort_compare, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_queue_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @sequence_analysis_sort_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = load i32, ptr %1, align 8
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @g_queue_free_full(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sequence_analysis_item_free(ptr noundef initializes((16, 24), (48, 56)) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.b)
  %i.c = getelementptr i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d)
  %i.e = getelementptr i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @g_free(ptr noundef %i.f)
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %free_address.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %free_address.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not6.i.i = icmp eq ptr %i.m, null
  br i1 %.not6.i.i, label %free_address.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @wmem_free(ptr noundef null, ptr noundef nonnull %i.m)
  br label %free_address.exit

free_address.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.n = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %.not.i.i13 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i13, label %free_address.exit15, label %bb.e

bb.e:                                             ; preds = %free_address.exit
  %i.p = getelementptr i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %free_address.exit15

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not6.i.i14 = icmp eq ptr %i.t, null
  br i1 %.not6.i.i14, label %free_address.exit15, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @wmem_free(ptr noundef null, ptr noundef nonnull %i.t)
  br label %free_address.exit15

free_address.exit15:                              ; preds = %free_address.exit, %bb.e, %bb.f, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.u = getelementptr i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %free_address.exit15
  %i.w = getelementptr i8, ptr %0, i64 136
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.x, null
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void %i.x(ptr noundef nonnull %i.v)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %free_address.exit15
  tail call void @g_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_remove_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @sequence_analysis_free_nodes(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %free_address.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %free_address.exit ] ; 2 uses
  %i.b = getelementptr [24 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %free_address.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %free_address.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not6.i.i = icmp eq ptr %i.h, null
  br i1 %.not6.i.i, label %free_address.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @wmem_free(ptr noundef null, ptr noundef nonnull %i.h)
  br label %free_address.exit

free_address.exit:                                ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !0

bb.f:                                             ; preds = %free_address.exit
  %i.i = getelementptr i8, ptr %0, i64 1032
  store i32 0, ptr %i.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @sequence_analysis_get_nodes(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.sainfo_counter, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  call void @g_queue_foreach(ptr noundef %i.d, ptr noundef @sequence_analysis_get_nodes_item_proc, ptr noundef nonnull %1)
  %i.e = load i32, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare void @g_queue_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sequence_analysis_get_nodes_item_proc(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 109
  %i.b = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 40         ; 7 uses
  %i.i = load i32, ptr %i.g, align 8              ; 10 uses
  %i.j = load i32, ptr %i.h, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %addresses_equal.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 12         ; 3 uses
  %i.m = load i32, ptr %i.l, align 4              ; 7 uses
  %i.n = getelementptr i8, ptr %0, i64 44         ; 5 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %addresses_equal.exit

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i32 %i.m, 0                      ; 3 uses
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = sext i32 %i.m to i64
  %bcmp.i = tail call i32 @bcmp(ptr %i.s, ptr %i.u, i64 %i.v)
  %i.w = icmp eq i32 %bcmp.i, 0
  br i1 %i.w, label %bb.f, label %addresses_equal.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr i8, ptr %0, i64 32
  %i.y = load i16, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %0, i64 64
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = icmp ult i16 %i.y, %i.aa
  %i.ac = icmp eq i32 %i.i, 0                     ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  br i1 %i.ac, label %add_or_get_node_local.exit.thread, label %.preheader.i

add_or_get_node_local.exit.thread:                ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %0, i64 112
  store i32 41, ptr %i.ad, align 8
  br label %.sink.split

.preheader.i:                                     ; preds = %bb.g
  %i.ae = load ptr, ptr %1, align 8               ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 1032   ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 32     ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ae, i64 992    ; 2 uses
  %i.ak = zext i32 %i.ag to i64                   ; 3 uses
  %i.al = sext i32 %i.m to i64
  br label %bb.h

bb.h:                                             ; preds = %cmp_address.exit.thread.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %cmp_address.exit.thread.i ] ; 5 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.ak
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr [24 x i8], ptr %i.ah, i64 %indvars.iv.i ; 3 uses
  %i.an = load i32, ptr %i.am, align 8
  %or.cond.not.i = icmp eq i32 %i.an, %i.i
  br i1 %or.cond.not.i, label %bb.j, label %cmp_address.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.am, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %or.cond25.not.i = icmp eq i32 %i.ap, %i.m
  br i1 %or.cond25.not.i, label %bb.k, label %cmp_address.exit.thread.i

bb.k:                                             ; preds = %bb.j
  br i1 %i.q, label %cmp_address.exit.thread23.i, label %cmp_address.exit.i

cmp_address.exit.i:                               ; preds = %bb.k
  %i.aq = getelementptr i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %i.ai, align 8
  %bcmp.i26 = tail call i32 @bcmp(ptr %i.ar, ptr %i.as, i64 %i.al)
  %i.at = icmp eq i32 %bcmp.i26, 0
  br i1 %i.at, label %cmp_address.exit.thread23.i, label %cmp_address.exit.thread.i

cmp_address.exit.thread23.i:                      ; preds = %cmp_address.exit.i, %bb.k
  %i.au = getelementptr i8, ptr %i.aj, i64 %indvars.iv.i
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %.critedge.thread.loopexit.split.loop.exit.i, label %cmp_address.exit.thread.i

cmp_address.exit.thread.i:                        ; preds = %cmp_address.exit.thread23.i, %cmp_address.exit.i, %bb.j, %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next.i, 40
  br i1 %exitcond30.not.i, label %add_or_get_node_local.exit, label %bb.h, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.h
  %i.ax = add nuw i32 %i.ag, 1
  store i32 %i.ax, ptr %i.af, align 8
  %i.ay = getelementptr [24 x i8], ptr %i.ah, i64 %i.ak ; 5 uses
  %i.az = load i32, ptr %i.g, align 8
  %i.ba = load i32, ptr %i.l, align 4             ; 3 uses
  %i.bb = load ptr, ptr %i.ai, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store i32 %i.az, ptr %i.ay, align 8
  %i.bc = icmp eq i32 %i.ba, 0
  br i1 %i.bc, label %copy_address.exit.i, label %bb.l

bb.l:                                             ; preds = %.critedge.i
  %i.bd = sext i32 %i.ba to i64
  %i.be = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.bb, i64 noundef %i.bd) #21 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ay, i64 16
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %i.ay, i64 8
  store ptr %i.be, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %i.ay, i64 4
  store i32 %i.ba, ptr %i.bh, align 4
  br label %copy_address.exit.i

copy_address.exit.i:                              ; preds = %bb.l, %.critedge.i
  %i.bi = getelementptr i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.bi, align 1
  %.pre130 = load i32, ptr %i.h, align 8
  br label %add_or_get_node_local.exit

.critedge.thread.loopexit.split.loop.exit.i:      ; preds = %cmp_address.exit.thread23.i
  %i.bj = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %add_or_get_node_local.exit

add_or_get_node_local.exit:                       ; preds = %cmp_address.exit.thread.i, %copy_address.exit.i, %.critedge.thread.loopexit.split.loop.exit.i
  %i.bk = phi i32 [ %.pre130, %copy_address.exit.i ], [ %i.i, %.critedge.thread.loopexit.split.loop.exit.i ], [ %i.i, %cmp_address.exit.thread.i ] ; 2 uses
  %.021.i = phi i32 [ %i.ag, %copy_address.exit.i ], [ %i.bj, %.critedge.thread.loopexit.split.loop.exit.i ], [ 41, %cmp_address.exit.thread.i ]
  %i.bl = getelementptr i8, ptr %0, i64 112
  store i32 %.021.i, ptr %i.bl, align 8
  %i.bm = icmp eq i32 %i.bk, 0
  br i1 %i.bm, label %.sink.split, label %.preheader.i27

.preheader.i27:                                   ; preds = %add_or_get_node_local.exit
  %i.bn = load ptr, ptr %1, align 8               ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 1032   ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8            ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bn, i64 32     ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bn, i64 992    ; 2 uses
  %i.bt = zext i32 %i.bp to i64                   ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %cmp_address.exit.thread.i31, %.preheader.i27
  %indvars.iv.i28 = phi i64 [ 0, %.preheader.i27 ], [ %indvars.iv.next.i32, %cmp_address.exit.thread.i31 ] ; 5 uses
  %exitcond.not.i29 = icmp eq i64 %indvars.iv.i28, %i.bt
  br i1 %exitcond.not.i29, label %.critedge.i40, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr [24 x i8], ptr %i.bq, i64 %indvars.iv.i28 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8
  %or.cond.not.i30 = icmp eq i32 %i.bv, %i.bk
  br i1 %or.cond.not.i30, label %bb.o, label %cmp_address.exit.thread.i31

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr i8, ptr %i.bu, i64 4
  %i.bx = load i32, ptr %i.bw, align 4            ; 3 uses
  %i.by = load i32, ptr %i.n, align 4
  %or.cond25.not.i35 = icmp eq i32 %i.bx, %i.by
  br i1 %or.cond25.not.i35, label %bb.p, label %cmp_address.exit.thread.i31

bb.p:                                             ; preds = %bb.o
  %i.bz = icmp eq i32 %i.bx, 0
  br i1 %i.bz, label %cmp_address.exit.thread23.i38, label %cmp_address.exit.i36

cmp_address.exit.i36:                             ; preds = %bb.p
  %i.ca = getelementptr i8, ptr %i.bu, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = load ptr, ptr %i.br, align 8
  %i.cd = sext i32 %i.bx to i64
  %bcmp.i37 = tail call i32 @bcmp(ptr %i.cb, ptr %i.cc, i64 %i.cd)
  %i.ce = icmp eq i32 %bcmp.i37, 0
  br i1 %i.ce, label %cmp_address.exit.thread23.i38, label %cmp_address.exit.thread.i31

cmp_address.exit.thread23.i38:                    ; preds = %cmp_address.exit.i36, %bb.p
  %i.cf = getelementptr i8, ptr %i.bs, i64 %indvars.iv.i28
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = icmp eq i8 %i.cg, 1
  br i1 %i.ch, label %.critedge.thread.loopexit.split.loop.exit.i39, label %cmp_address.exit.thread.i31

cmp_address.exit.thread.i31:                      ; preds = %cmp_address.exit.thread23.i38, %cmp_address.exit.i36, %bb.o, %bb.n
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %exitcond30.not.i33 = icmp eq i64 %indvars.iv.next.i32, 40
  br i1 %exitcond30.not.i33, label %.sink.split, label %bb.m, !llvm.loop !10

.critedge.i40:                                    ; preds = %bb.m
  %i.ci = add nuw i32 %i.bp, 1
  store i32 %i.ci, ptr %i.bo, align 8
  %i.cj = getelementptr [24 x i8], ptr %i.bq, i64 %i.bt ; 5 uses
  %i.ck = load i32, ptr %i.h, align 8
  %i.cl = load i32, ptr %i.n, align 4             ; 3 uses
  %i.cm = load ptr, ptr %i.br, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  store i32 %i.ck, ptr %i.cj, align 8
  %i.cn = icmp eq i32 %i.cl, 0
  br i1 %i.cn, label %copy_address.exit.i41, label %bb.q

bb.q:                                             ; preds = %.critedge.i40
  %i.co = sext i32 %i.cl to i64
  %i.cp = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.cm, i64 noundef %i.co) #21 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cj, i64 16
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %i.cj, i64 8
  store ptr %i.cp, ptr %i.cr, align 8
  %i.cs = getelementptr i8, ptr %i.cj, i64 4
  store i32 %i.cl, ptr %i.cs, align 4
  br label %copy_address.exit.i41

copy_address.exit.i41:                            ; preds = %bb.q, %.critedge.i40
  %i.ct = getelementptr i8, ptr %i.bs, i64 %i.bt
  store i8 1, ptr %i.ct, align 1
  br label %.sink.split

.critedge.thread.loopexit.split.loop.exit.i39:    ; preds = %cmp_address.exit.thread23.i38
  %i.cu = trunc nuw nsw i64 %indvars.iv.i28 to i32
  br label %.sink.split

bb.r:                                             ; preds = %bb.f
  br i1 %i.ac, label %add_or_get_node_local.exit58.thread, label %.preheader.i43

add_or_get_node_local.exit58.thread:              ; preds = %bb.r
  %i.cv = getelementptr i8, ptr %0, i64 112
  store i32 41, ptr %i.cv, align 8
  br label %.sink.split

.preheader.i43:                                   ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8               ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 1032   ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8            ; 3 uses
  %i.cz = getelementptr i8, ptr %i.cw, i64 32     ; 2 uses
  %i.da = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.db = getelementptr i8, ptr %i.cw, i64 992    ; 2 uses
  %i.dc = zext i32 %i.cy to i64                   ; 3 uses
  %i.dd = sext i32 %i.m to i64
  br label %bb.s

bb.s:                                             ; preds = %cmp_address.exit.thread.i47, %.preheader.i43
  %indvars.iv.i44 = phi i64 [ 0, %.preheader.i43 ], [ %indvars.iv.next.i48, %cmp_address.exit.thread.i47 ] ; 5 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.i44, %i.dc
  br i1 %exitcond.not.i45, label %.critedge.i56, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr [24 x i8], ptr %i.cz, i64 %indvars.iv.i44 ; 3 uses
  %i.df = load i32, ptr %i.de, align 8
  %or.cond.not.i46 = icmp eq i32 %i.df, %i.i
  br i1 %or.cond.not.i46, label %bb.u, label %cmp_address.exit.thread.i47

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr i8, ptr %i.de, i64 4
  %i.dh = load i32, ptr %i.dg, align 4
  %or.cond25.not.i51 = icmp eq i32 %i.dh, %i.m
  br i1 %or.cond25.not.i51, label %bb.v, label %cmp_address.exit.thread.i47

bb.v:                                             ; preds = %bb.u
  br i1 %i.q, label %cmp_address.exit.thread23.i54, label %cmp_address.exit.i52

cmp_address.exit.i52:                             ; preds = %bb.v
  %i.di = getelementptr i8, ptr %i.de, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = load ptr, ptr %i.da, align 8
  %bcmp.i53 = tail call i32 @bcmp(ptr %i.dj, ptr %i.dk, i64 %i.dd)
  %i.dl = icmp eq i32 %bcmp.i53, 0
  br i1 %i.dl, label %cmp_address.exit.thread23.i54, label %cmp_address.exit.thread.i47

cmp_address.exit.thread23.i54:                    ; preds = %cmp_address.exit.i52, %bb.v
  %i.dm = getelementptr i8, ptr %i.db, i64 %indvars.iv.i44
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = icmp eq i8 %i.dn, 1
  br i1 %i.do, label %.critedge.thread.loopexit.split.loop.exit.i55, label %cmp_address.exit.thread.i47

cmp_address.exit.thread.i47:                      ; preds = %cmp_address.exit.thread23.i54, %cmp_address.exit.i52, %bb.u, %bb.t
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i44, 1 ; 2 uses
  %exitcond30.not.i49 = icmp eq i64 %indvars.iv.next.i48, 40
  br i1 %exitcond30.not.i49, label %add_or_get_node_local.exit58, label %bb.s, !llvm.loop !10

.critedge.i56:                                    ; preds = %bb.s
  %i.dp = add nuw i32 %i.cy, 1
  store i32 %i.dp, ptr %i.cx, align 8
  %i.dq = getelementptr [24 x i8], ptr %i.cz, i64 %i.dc ; 5 uses
  %i.dr = load i32, ptr %i.g, align 8
  %i.ds = load i32, ptr %i.l, align 4             ; 3 uses
  %i.dt = load ptr, ptr %i.da, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false)
  store i32 %i.dr, ptr %i.dq, align 8
  %i.du = icmp eq i32 %i.ds, 0
  br i1 %i.du, label %copy_address.exit.i57, label %bb.w

bb.w:                                             ; preds = %.critedge.i56
  %i.dv = sext i32 %i.ds to i64
  %i.dw = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.dt, i64 noundef %i.dv) #21 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dq, i64 16
  store ptr %i.dw, ptr %i.dx, align 8
  %i.dy = getelementptr i8, ptr %i.dq, i64 8
  store ptr %i.dw, ptr %i.dy, align 8
  %i.dz = getelementptr i8, ptr %i.dq, i64 4
  store i32 %i.ds, ptr %i.dz, align 4
  br label %copy_address.exit.i57

copy_address.exit.i57:                            ; preds = %bb.w, %.critedge.i56
  %i.ea = getelementptr i8, ptr %i.db, i64 %i.dc
  store i8 1, ptr %i.ea, align 1
  %.pre = load i32, ptr %i.h, align 8
  br label %add_or_get_node_local.exit58

.critedge.thread.loopexit.split.loop.exit.i55:    ; preds = %cmp_address.exit.thread23.i54
  %i.eb = trunc nuw nsw i64 %indvars.iv.i44 to i32
  br label %add_or_get_node_local.exit58

add_or_get_node_local.exit58:                     ; preds = %cmp_address.exit.thread.i47, %copy_address.exit.i57, %.critedge.thread.loopexit.split.loop.exit.i55
  %i.ec = phi i32 [ %.pre, %copy_address.exit.i57 ], [ %i.i, %.critedge.thread.loopexit.split.loop.exit.i55 ], [ %i.i, %cmp_address.exit.thread.i47 ] ; 2 uses
  %.021.i50 = phi i32 [ %i.cy, %copy_address.exit.i57 ], [ %i.eb, %.critedge.thread.loopexit.split.loop.exit.i55 ], [ 41, %cmp_address.exit.thread.i47 ]
  %i.ed = getelementptr i8, ptr %0, i64 112
  store i32 %.021.i50, ptr %i.ed, align 8
  %i.ee = icmp eq i32 %i.ec, 0
  br i1 %i.ee, label %.sink.split, label %.preheader.i59

.preheader.i59:                                   ; preds = %add_or_get_node_local.exit58
  %i.ef = load ptr, ptr %1, align 8               ; 3 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 1032   ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8            ; 3 uses
  %i.ei = getelementptr i8, ptr %i.ef, i64 32     ; 2 uses
  %i.ej = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ef, i64 992    ; 2 uses
  %i.el = zext i32 %i.eh to i64                   ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %cmp_address.exit.thread.i63, %.preheader.i59
  %indvars.iv.i60 = phi i64 [ 0, %.preheader.i59 ], [ %indvars.iv.next.i64, %cmp_address.exit.thread.i63 ] ; 5 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.i60, %i.el
  br i1 %exitcond.not.i61, label %.critedge.i72, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.em = getelementptr [24 x i8], ptr %i.ei, i64 %indvars.iv.i60 ; 3 uses
  %i.en = load i32, ptr %i.em, align 8
  %or.cond.not.i62 = icmp eq i32 %i.en, %i.ec
  br i1 %or.cond.not.i62, label %bb.z, label %cmp_address.exit.thread.i63

bb.z:                                             ; preds = %bb.y
  %i.eo = getelementptr i8, ptr %i.em, i64 4
  %i.ep = load i32, ptr %i.eo, align 4            ; 3 uses
  %i.eq = load i32, ptr %i.n, align 4
  %or.cond25.not.i67 = icmp eq i32 %i.ep, %i.eq
  br i1 %or.cond25.not.i67, label %bb.aa, label %cmp_address.exit.thread.i63

bb.aa:                                            ; preds = %bb.z
  %i.er = icmp eq i32 %i.ep, 0
  br i1 %i.er, label %cmp_address.exit.thread23.i70, label %cmp_address.exit.i68

cmp_address.exit.i68:                             ; preds = %bb.aa
  %i.es = getelementptr i8, ptr %i.em, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = load ptr, ptr %i.ej, align 8
  %i.ev = sext i32 %i.ep to i64
  %bcmp.i69 = tail call i32 @bcmp(ptr %i.et, ptr %i.eu, i64 %i.ev)
  %i.ew = icmp eq i32 %bcmp.i69, 0
  br i1 %i.ew, label %cmp_address.exit.thread23.i70, label %cmp_address.exit.thread.i63

cmp_address.exit.thread23.i70:                    ; preds = %cmp_address.exit.i68, %bb.aa
  %i.ex = getelementptr i8, ptr %i.ek, i64 %indvars.iv.i60
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = icmp eq i8 %i.ey, 0
  br i1 %i.ez, label %.critedge.thread.loopexit.split.loop.exit.i71, label %cmp_address.exit.thread.i63

cmp_address.exit.thread.i63:                      ; preds = %cmp_address.exit.thread23.i70, %cmp_address.exit.i68, %bb.z, %bb.y
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %exitcond30.not.i65 = icmp eq i64 %indvars.iv.next.i64, 40
  br i1 %exitcond30.not.i65, label %.sink.split, label %bb.x, !llvm.loop !10

.critedge.i72:                                    ; preds = %bb.x
  %i.fa = add nuw i32 %i.eh, 1
  store i32 %i.fa, ptr %i.eg, align 8
  %i.fb = getelementptr [24 x i8], ptr %i.ei, i64 %i.el ; 5 uses
  %i.fc = load i32, ptr %i.h, align 8
  %i.fd = load i32, ptr %i.n, align 4             ; 3 uses
  %i.fe = load ptr, ptr %i.ej, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.fb, i8 0, i64 24, i1 false)
  store i32 %i.fc, ptr %i.fb, align 8
  %i.ff = icmp eq i32 %i.fd, 0
  br i1 %i.ff, label %copy_address.exit.i73, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i72
  %i.fg = sext i32 %i.fd to i64
  %i.fh = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.fe, i64 noundef %i.fg) #21 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fb, i64 16
  store ptr %i.fh, ptr %i.fi, align 8
  %i.fj = getelementptr i8, ptr %i.fb, i64 8
  store ptr %i.fh, ptr %i.fj, align 8
  %i.fk = getelementptr i8, ptr %i.fb, i64 4
  store i32 %i.fd, ptr %i.fk, align 4
  br label %copy_address.exit.i73

copy_address.exit.i73:                            ; preds = %bb.ab, %.critedge.i72
  %i.fl = getelementptr i8, ptr %i.ek, i64 %i.el
  store i8 0, ptr %i.fl, align 1
  br label %.sink.split

.critedge.thread.loopexit.split.loop.exit.i71:    ; preds = %cmp_address.exit.thread23.i70
  %i.fm = trunc nuw nsw i64 %indvars.iv.i60 to i32
  br label %.sink.split

addresses_equal.exit:                             ; preds = %bb.e, %bb.c, %bb.b
  %i.fn = icmp eq i32 %i.i, 0
  br i1 %i.fn, label %add_or_get_node.exit, label %.preheader.i75

.preheader.i75:                                   ; preds = %addresses_equal.exit
  %i.fo = load ptr, ptr %1, align 8               ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 1032   ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8            ; 4 uses
  %i.fr = getelementptr i8, ptr %i.fo, i64 32     ; 2 uses
  %i.fs = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %i.ft = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.fu = zext i32 %i.fq to i64                   ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %cmp_address.exit.thread.i79, %.preheader.i75
  %indvars.iv.i76 = phi i64 [ 0, %.preheader.i75 ], [ %indvars.iv.next.i80, %cmp_address.exit.thread.i79 ] ; 5 uses
  %exitcond.not.i77 = icmp eq i64 %indvars.iv.i76, %i.fu
  br i1 %exitcond.not.i77, label %.critedge.i84, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fv = getelementptr [24 x i8], ptr %i.fr, i64 %indvars.iv.i76 ; 3 uses
  %i.fw = load i32, ptr %i.fv, align 8
  %or.cond.not.i78 = icmp eq i32 %i.fw, %i.i
  br i1 %or.cond.not.i78, label %bb.ae, label %cmp_address.exit.thread.i79

bb.ae:                                            ; preds = %bb.ad
  %i.fx = getelementptr i8, ptr %i.fv, i64 4
  %i.fy = load i32, ptr %i.fx, align 4            ; 3 uses
  %i.fz = load i32, ptr %i.fs, align 4
  %or.cond19.not.i = icmp eq i32 %i.fy, %i.fz
  br i1 %or.cond19.not.i, label %bb.af, label %cmp_address.exit.thread.i79

bb.af:                                            ; preds = %bb.ae
  %i.ga = icmp eq i32 %i.fy, 0
  br i1 %i.ga, label %copy_address.exit.loopexit.split.loop.exit30.i, label %cmp_address.exit.i82

cmp_address.exit.i82:                             ; preds = %bb.af
  %i.gb = getelementptr i8, ptr %i.fv, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = load ptr, ptr %i.ft, align 8
  %i.ge = sext i32 %i.fy to i64
  %bcmp.i83 = tail call i32 @bcmp(ptr %i.gc, ptr %i.gd, i64 %i.ge)
  %i.gf = icmp eq i32 %bcmp.i83, 0
  br i1 %i.gf, label %copy_address.exit.loopexit.split.loop.exit.i, label %cmp_address.exit.thread.i79

cmp_address.exit.thread.i79:                      ; preds = %cmp_address.exit.i82, %bb.ae, %bb.ad
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next.i80, 40
  br i1 %exitcond24.not.i, label %add_or_get_node.exit, label %bb.ac, !llvm.loop !11

.critedge.i84:                                    ; preds = %bb.ac
  %i.gg = add nuw i32 %i.fq, 1
  store i32 %i.gg, ptr %i.fp, align 8
  %i.gh = getelementptr [24 x i8], ptr %i.fr, i64 %i.fu ; 5 uses
  %i.gi = load i32, ptr %i.g, align 8
  %i.gj = load i32, ptr %i.fs, align 4            ; 3 uses
  %i.gk = load ptr, ptr %i.ft, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.gh, i8 0, i64 24, i1 false)
  store i32 %i.gi, ptr %i.gh, align 8
  %i.gl = icmp eq i32 %i.gj, 0
  br i1 %i.gl, label %add_or_get_node.exit, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i84
  %i.gm = sext i32 %i.gj to i64
  %i.gn = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.gk, i64 noundef %i.gm) #21 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gh, i64 16
  store ptr %i.gn, ptr %i.go, align 8
  %i.gp = getelementptr i8, ptr %i.gh, i64 8
  store ptr %i.gn, ptr %i.gp, align 8
  %i.gq = getelementptr i8, ptr %i.gh, i64 4
  store i32 %i.gj, ptr %i.gq, align 4
  br label %add_or_get_node.exit

copy_address.exit.loopexit.split.loop.exit.i:     ; preds = %cmp_address.exit.i82
  %i.gr = trunc nuw nsw i64 %indvars.iv.i76 to i32
  br label %add_or_get_node.exit

copy_address.exit.loopexit.split.loop.exit30.i:   ; preds = %bb.af
  %i.gs = trunc nuw nsw i64 %indvars.iv.i76 to i32
  br label %add_or_get_node.exit

add_or_get_node.exit:                             ; preds = %cmp_address.exit.thread.i79, %addresses_equal.exit, %.critedge.i84, %bb.ag, %copy_address.exit.loopexit.split.loop.exit.i, %copy_address.exit.loopexit.split.loop.exit30.i
  %.015.i = phi i32 [ %i.fq, %bb.ag ], [ 41, %addresses_equal.exit ], [ %i.fq, %.critedge.i84 ], [ %i.gs, %copy_address.exit.loopexit.split.loop.exit30.i ], [ %i.gr, %copy_address.exit.loopexit.split.loop.exit.i ], [ 41, %cmp_address.exit.thread.i79 ]
  %i.gt = getelementptr i8, ptr %0, i64 112
  store i32 %.015.i, ptr %i.gt, align 8
  %i.gu = load i32, ptr %i.h, align 8             ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %.sink.split, label %.preheader.i85

.preheader.i85:                                   ; preds = %add_or_get_node.exit
  %i.gw = load ptr, ptr %1, align 8               ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 1032   ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8            ; 4 uses
  %i.gz = getelementptr i8, ptr %i.gw, i64 32     ; 2 uses
  %i.ha = getelementptr i8, ptr %0, i64 44        ; 2 uses
  %i.hb = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.hc = zext i32 %i.gy to i64                   ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %cmp_address.exit.thread.i89, %.preheader.i85
  %indvars.iv.i86 = phi i64 [ 0, %.preheader.i85 ], [ %indvars.iv.next.i90, %cmp_address.exit.thread.i89 ] ; 5 uses
  %exitcond.not.i87 = icmp eq i64 %indvars.iv.i86, %i.hc
  br i1 %exitcond.not.i87, label %.critedge.i99, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hd = getelementptr [24 x i8], ptr %i.gz, i64 %indvars.iv.i86 ; 3 uses
  %i.he = load i32, ptr %i.hd, align 8
  %or.cond.not.i88 = icmp eq i32 %i.he, %i.gu
  br i1 %or.cond.not.i88, label %bb.aj, label %cmp_address.exit.thread.i89

bb.aj:                                            ; preds = %bb.ai
  %i.hf = getelementptr i8, ptr %i.hd, i64 4
  %i.hg = load i32, ptr %i.hf, align 4            ; 3 uses
  %i.hh = load i32, ptr %i.ha, align 4
  %or.cond19.not.i94 = icmp eq i32 %i.hg, %i.hh
  br i1 %or.cond19.not.i94, label %bb.ak, label %cmp_address.exit.thread.i89

bb.ak:                                            ; preds = %bb.aj
  %i.hi = icmp eq i32 %i.hg, 0
  br i1 %i.hi, label %copy_address.exit.loopexit.split.loop.exit30.i98, label %cmp_address.exit.i95

cmp_address.exit.i95:                             ; preds = %bb.ak
  %i.hj = getelementptr i8, ptr %i.hd, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = load ptr, ptr %i.hb, align 8
  %i.hm = sext i32 %i.hg to i64
  %bcmp.i96 = tail call i32 @bcmp(ptr %i.hk, ptr %i.hl, i64 %i.hm)
  %i.hn = icmp eq i32 %bcmp.i96, 0
  br i1 %i.hn, label %copy_address.exit.loopexit.split.loop.exit.i97, label %cmp_address.exit.thread.i89

cmp_address.exit.thread.i89:                      ; preds = %cmp_address.exit.i95, %bb.aj, %bb.ai
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %exitcond24.not.i91 = icmp eq i64 %indvars.iv.next.i90, 40
  br i1 %exitcond24.not.i91, label %.sink.split, label %bb.ah, !llvm.loop !11

.critedge.i99:                                    ; preds = %bb.ah
  %i.ho = add nuw i32 %i.gy, 1
  store i32 %i.ho, ptr %i.gx, align 8
  %i.hp = getelementptr [24 x i8], ptr %i.gz, i64 %i.hc ; 5 uses
  %i.hq = load i32, ptr %i.h, align 8
  %i.hr = load i32, ptr %i.ha, align 4            ; 3 uses
  %i.hs = load ptr, ptr %i.hb, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.hp, i8 0, i64 24, i1 false)
  store i32 %i.hq, ptr %i.hp, align 8
  %i.ht = icmp eq i32 %i.hr, 0
  br i1 %i.ht, label %.sink.split, label %bb.al

bb.al:                                            ; preds = %.critedge.i99
  %i.hu = sext i32 %i.hr to i64
  %i.hv = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.hs, i64 noundef %i.hu) #21 ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hp, i64 16
  store ptr %i.hv, ptr %i.hw, align 8
  %i.hx = getelementptr i8, ptr %i.hp, i64 8
  store ptr %i.hv, ptr %i.hx, align 8
  %i.hy = getelementptr i8, ptr %i.hp, i64 4
  store i32 %i.hr, ptr %i.hy, align 4
  br label %.sink.split

copy_address.exit.loopexit.split.loop.exit.i97:   ; preds = %cmp_address.exit.i95
  %i.hz = trunc nuw nsw i64 %indvars.iv.i86 to i32
  br label %.sink.split

copy_address.exit.loopexit.split.loop.exit30.i98: ; preds = %bb.ak
  %i.ia = trunc nuw nsw i64 %indvars.iv.i86 to i32
  br label %.sink.split

.sink.split:                                      ; preds = %cmp_address.exit.thread.i89, %cmp_address.exit.thread.i63, %cmp_address.exit.thread.i31, %copy_address.exit.loopexit.split.loop.exit30.i98, %copy_address.exit.loopexit.split.loop.exit.i97, %bb.al, %.critedge.i99, %add_or_get_node.exit, %.critedge.thread.loopexit.split.loop.exit.i71, %copy_address.exit.i73, %add_or_get_node_local.exit58, %add_or_get_node_local.exit58.thread, %.critedge.thread.loopexit.split.loop.exit.i39, %copy_address.exit.i41, %add_or_get_node_local.exit, %add_or_get_node_local.exit.thread
  %.015.i93.sink = phi i32 [ 41, %cmp_address.exit.thread.i63 ], [ 41, %cmp_address.exit.thread.i31 ], [ %i.bp, %copy_address.exit.i41 ], [ 41, %add_or_get_node_local.exit ], [ %i.cu, %.critedge.thread.loopexit.split.loop.exit.i39 ], [ 41, %add_or_get_node_local.exit.thread ], [ %i.eh, %copy_address.exit.i73 ], [ 41, %add_or_get_node_local.exit58 ], [ %i.fm, %.critedge.thread.loopexit.split.loop.exit.i71 ], [ 41, %add_or_get_node_local.exit58.thread ], [ %i.gy, %bb.al ], [ 41, %add_or_get_node.exit ], [ %i.gy, %.critedge.i99 ], [ %i.ia, %copy_address.exit.loopexit.split.loop.exit30.i98 ], [ %i.hz, %copy_address.exit.loopexit.split.loop.exit.i97 ], [ 41, %cmp_address.exit.thread.i89 ]
  %i.ib = getelementptr i8, ptr %0, i64 116
  store i32 %.015.i93.sink, ptr %i.ib, align 4
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @sequence_analysis_dump_to_file(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.outer321.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @g_queue_peek_nth_link(ptr noundef nonnull %i.d, i32 noundef 0)
  br label %.outer321.preheader

.outer321.preheader:                              ; preds = %bb.b, %bb.a
  %.1152.ph.ph = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ]
  br label %.outer321

.outer321:                                        ; preds = %.outer321.preheader, %bb.e
  %.0158.ph = phi i16 [ %.1159, %bb.e ], [ 0, %.outer321.preheader ] ; 3 uses
  %.0156.ph = phi i1 [ %.1157, %bb.e ], [ false, %.outer321.preheader ] ; 5 uses
  %.0154.ph.not = phi i1 [ true, %bb.e ], [ false, %.outer321.preheader ] ; 2 uses
  %.1152.ph = phi ptr [ %i.h, %bb.e ], [ %.1152.ph.ph, %.outer321.preheader ]
  %.0150.ph = phi i32 [ %i.l, %bb.e ], [ 0, %.outer321.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.outer321, %bb.d
  %.1152 = phi ptr [ %i.h, %bb.d ], [ %.1152.ph, %.outer321 ] ; 3 uses
  %.not173 = icmp eq ptr %.1152, null
  br i1 %.not173, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %.1152, align 8            ; 2 uses
  %i.g = getelementptr i8, ptr %.1152, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 109
  %i.j = load i8, ptr %i.i, align 1, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.c, !llvm.loop !12

bb.e:                                             ; preds = %bb.d
  %i.l = add i32 %.0150.ph, 1
  %i.m = getelementptr i8, ptr %i.f, i64 96
  %i.n = load i16, ptr %i.m, align 8              ; 2 uses
  %.not177 = icmp ne i16 %i.n, %.0158.ph
  %.1159 = select i1 %.0154.ph.not, i16 %.0158.ph, i16 %i.n
  %.not420 = select i1 %.0154.ph.not, i1 %.not177, i1 false
  %.1157 = select i1 %.not420, i1 true, i1 %.0156.ph
  br label %.outer321, !llvm.loop !12

bb.f:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %.0150.ph, 0
  br i1 %i.o, label %bb.bm, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @g_string_new(ptr noundef @.str.4) ; 52 uses
  %i.q = tail call ptr @g_string_new(ptr noundef @.str.4) ; 24 uses
  %i.r = tail call ptr @g_string_new(ptr noundef @.str.4) ; 8 uses
  %i.s = tail call ptr @g_string_new(ptr noundef @.str.4) ; 9 uses
  %i.t = tail call ptr @g_string_new(ptr noundef @.str.4) ; 16 uses
  %i.u = getelementptr i8, ptr %1, i64 1032
  %i.v = load i32, ptr %i.u, align 8              ; 4 uses
  %.str.5..str.7 = select i1 %.0156.ph, ptr @.str.5, ptr @.str.7
  %. = select i1 %.0156.ph, i64 16, i64 10
  %.str.6..str.8 = select i1 %.0156.ph, ptr @.str.6, ptr @.str.8 ; 2 uses
  %i.w = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef %.str.5..str.7) ; 0 uses
  %.not329 = icmp eq i32 %i.v, 0
  br i1 %.not329, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.x = getelementptr i8, ptr %1, i64 32
  %i.y = getelementptr i8, ptr %i.p, i64 8        ; 8 uses
  %.not.i.i = icmp eq ptr %i.p, null              ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 16       ; 2 uses
  %.not.i185 = icmp eq ptr %i.q, null
  %i.aa = getelementptr i8, ptr %i.q, i64 8       ; 3 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %g_string_append_len_inline.exit192
  %.0325 = phi i32 [ 0, %.lr.ph ], [ %i.cd, %g_string_append_len_inline.exit192 ] ; 2 uses
  %i.ac = add i32 %.0325, %2
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr [24 x i8], ptr %i.x, i64 %i.ad
  %i.af = tail call ptr @address_to_display(ptr noundef null, ptr noundef %i.ae) ; 2 uses
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.p, ptr noundef @.str.9, ptr noundef %i.af)
  tail call void @wmem_free(ptr noundef null, ptr noundef %i.af)
  %i.ag = load i64, ptr %i.y, align 8             ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 40
  br i1 %i.ah, label %.lr.ph.i, label %enlarge_string.exit

.lr.ph.i:                                         ; preds = %bb.h
  br i1 %.not.i.i, label %.critedge.i.us.i, label %.lr.ph.split.i

.critedge.i.us.i:                                 ; preds = %.lr.ph.i, %.critedge.i.us.i
  %.05.us.i = phi i64 [ %i.aj, %.critedge.i.us.i ], [ %i.ag, %.lr.ph.i ]
  %i.ai = tail call ptr @g_string_insert_c(ptr noundef null, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  %i.aj = add nuw nsw i64 %.05.us.i, 1            ; 2 uses
  %exitcond7.not.i = icmp eq i64 %i.aj, 40
  br i1 %exitcond7.not.i, label %enlarge_string.exit, label %.critedge.i.us.i, !llvm.loop !13

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %g_string_append_c_inline.exit.i
  %.05.i = phi i64 [ %i.au, %g_string_append_c_inline.exit.i ], [ %i.ag, %.lr.ph.i ]
  %i.ak = load i64, ptr %i.y, align 8             ; 2 uses
  %i.al = add i64 %i.ak, 1                        ; 2 uses
  %i.am = load i64, ptr %i.z, align 8
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %bb.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.split.i
  %i.ao = tail call ptr @g_string_insert_c(ptr noundef nonnull %i.p, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  br label %g_string_append_c_inline.exit.i

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.ap = load ptr, ptr %i.p, align 8
  store i64 %i.al, ptr %i.y, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ak
  store i8 32, ptr %i.aq, align 1
  %i.ar = load ptr, ptr %i.p, align 8
  %i.as = load i64, ptr %i.y, align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.as
  store i8 0, ptr %i.at, align 1
  br label %g_string_append_c_inline.exit.i

g_string_append_c_inline.exit.i:                  ; preds = %bb.i, %.critedge.i.i
  %i.au = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, 40
  br i1 %exitcond.not.i, label %enlarge_string.exit, label %.lr.ph.split.i, !llvm.loop !13

enlarge_string.exit:                              ; preds = %g_string_append_c_inline.exit.i, %.critedge.i.us.i, %bb.h
  %i.av = load ptr, ptr %i.p, align 8
  %i.aw = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef @.str.10, ptr noundef %i.av) ; 0 uses
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.p, ptr noundef @.str.11)
  %i.ax = load i64, ptr %i.y, align 8             ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 20
  br i1 %i.ay, label %.lr.ph.i197, label %enlarge_string.exit207

.lr.ph.i197:                                      ; preds = %enlarge_string.exit
  br i1 %.not.i.i, label %.critedge.i.us.i204, label %.lr.ph.split.i199

.critedge.i.us.i204:                              ; preds = %.lr.ph.i197, %.critedge.i.us.i204
  %.05.us.i205 = phi i64 [ %i.ba, %.critedge.i.us.i204 ], [ %i.ax, %.lr.ph.i197 ]
  %i.az = tail call ptr @g_string_insert_c(ptr noundef null, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  %i.ba = add nuw nsw i64 %.05.us.i205, 1         ; 2 uses
  %exitcond7.not.i206 = icmp eq i64 %i.ba, 20
  br i1 %exitcond7.not.i206, label %enlarge_string.exit207, label %.critedge.i.us.i204, !llvm.loop !13

.lr.ph.split.i199:                                ; preds = %.lr.ph.i197, %g_string_append_c_inline.exit.i202
  %.05.i200 = phi i64 [ %i.bl, %g_string_append_c_inline.exit.i202 ], [ %i.ax, %.lr.ph.i197 ]
  %i.bb = load i64, ptr %i.y, align 8             ; 2 uses
  %i.bc = add i64 %i.bb, 1                        ; 2 uses
  %i.bd = load i64, ptr %i.z, align 8
  %i.be = icmp ult i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.j, label %.critedge.i.i201

.critedge.i.i201:                                 ; preds = %.lr.ph.split.i199
  %i.bf = tail call ptr @g_string_insert_c(ptr noundef nonnull %i.p, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  br label %g_string_append_c_inline.exit.i202

bb.j:                                             ; preds = %.lr.ph.split.i199
  %i.bg = load ptr, ptr %i.p, align 8
  store i64 %i.bc, ptr %i.y, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bb
  store i8 32, ptr %i.bh, align 1
  %i.bi = load ptr, ptr %i.p, align 8
  %i.bj = load i64, ptr %i.y, align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 %i.bj
  store i8 0, ptr %i.bk, align 1
  br label %g_string_append_c_inline.exit.i202

g_string_append_c_inline.exit.i202:               ; preds = %bb.j, %.critedge.i.i201
  %i.bl = add nuw nsw i64 %.05.i200, 1            ; 2 uses
  %exitcond.not.i203 = icmp eq i64 %i.bl, 20
  br i1 %exitcond.not.i203, label %enlarge_string.exit207, label %.lr.ph.split.i199, !llvm.loop !13

enlarge_string.exit207:                           ; preds = %g_string_append_c_inline.exit.i202, %.critedge.i.us.i204, %enlarge_string.exit
  %i.bm = load ptr, ptr %i.p, align 8             ; 8 uses
  br i1 %.not.i185, label %bb.k, label %bb.l, !prof !17

bb.k:                                             ; preds = %enlarge_string.exit207
  %i.bn = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef %i.bm, i64 noundef -1) ; 0 uses
  br label %g_string_append_len_inline.exit192

bb.l:                                             ; preds = %enlarge_string.exit207
  %.not54.i186 = icmp eq ptr %i.bm, null
  br i1 %.not54.i186, label %bb.m, label %bb.n, !prof !17

bb.m:                                             ; preds = %bb.l
  %i.bo = tail call ptr @g_string_append_len(ptr noundef nonnull %i.q, ptr noundef null, i64 noundef -1) ; 0 uses
  br label %g_string_append_len_inline.exit192

bb.n:                                             ; preds = %bb.l
  %i.bp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bm) #22 ; 6 uses
  %i.bq = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.br = add i64 %i.bq, %i.bp
  %i.bs = load i64, ptr %i.ab, align 8
  %.not56.i187 = icmp ult i64 %i.br, %i.bs
  br i1 %.not56.i187, label %bb.o, label %bb.s, !prof !18

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.q, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bq  ; 4 uses
  %i.bv = getelementptr i8, ptr %i.bm, i64 %i.bp
  %.not57.i189 = icmp ugt ptr %i.bv, %i.bu
  %i.bw = getelementptr i8, ptr %i.bu, i64 %i.bp
  %i.bx = icmp ule ptr %i.bm, %i.bw
  %or.cond.i190.not = and i1 %.not57.i189, %i.bx
  br i1 %or.cond.i190.not, label %bb.q, label %bb.p, !prof !17

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.bu, ptr noundef nonnull align 1 %i.bm, i64 noundef %i.bp, i1 noundef false) #19
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.bu, ptr noundef nonnull align 1 %i.bm, i64 noundef %i.bp, i1 noundef false) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.by = load i64, ptr %i.aa, align 8
  %i.bz = add i64 %i.by, %i.bp                    ; 2 uses
  store i64 %i.bz, ptr %i.aa, align 8
  %i.ca = load ptr, ptr %i.q, align 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bz
  store i8 0, ptr %i.cb, align 1
  br label %g_string_append_len_inline.exit192

bb.s:                                             ; preds = %bb.n
  %i.cc = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.q, i64 noundef -1, ptr noundef nonnull %i.bm, i64 noundef -1) ; 0 uses
  br label %g_string_append_len_inline.exit192

g_string_append_len_inline.exit192:               ; preds = %bb.k, %bb.m, %bb.r, %bb.s
  %i.cd = add i32 %.0325, 2                       ; 2 uses
  %i.ce = icmp ult i32 %i.cd, %i.v
  br i1 %i.ce, label %bb.h, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %g_string_append_len_inline.exit192, %bb.g
  %i.cf = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef @.str.12, ptr noundef %.str.6..str.8) ; 0 uses
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.p, ptr noundef @.str.11)
  %i.cg = getelementptr i8, ptr %i.p, i64 8       ; 27 uses
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 20
  br i1 %i.ci, label %.lr.ph.i208, label %enlarge_string.exit218

.lr.ph.i208:                                      ; preds = %._crit_edge
  %.not.i.i209 = icmp eq ptr %i.p, null
  %i.cj = getelementptr i8, ptr %i.p, i64 16
  br i1 %.not.i.i209, label %.critedge.i.us.i215, label %.lr.ph.split.i210

.critedge.i.us.i215:                              ; preds = %.lr.ph.i208, %.critedge.i.us.i215
  %.05.us.i216 = phi i64 [ %i.cl, %.critedge.i.us.i215 ], [ %i.ch, %.lr.ph.i208 ]
  %i.ck = tail call ptr @g_string_insert_c(ptr noundef null, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  %i.cl = add nuw nsw i64 %.05.us.i216, 1         ; 2 uses
  %exitcond7.not.i217 = icmp eq i64 %i.cl, 20
  br i1 %exitcond7.not.i217, label %enlarge_string.exit218, label %.critedge.i.us.i215, !llvm.loop !13

.lr.ph.split.i210:                                ; preds = %.lr.ph.i208, %g_string_append_c_inline.exit.i213
  %.05.i211 = phi i64 [ %i.cw, %g_string_append_c_inline.exit.i213 ], [ %i.ch, %.lr.ph.i208 ]
  %i.cm = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.cn = add i64 %i.cm, 1                        ; 2 uses
  %i.co = load i64, ptr %i.cj, align 8
  %i.cp = icmp ult i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.t, label %.critedge.i.i212

.critedge.i.i212:                                 ; preds = %.lr.ph.split.i210
  %i.cq = tail call ptr @g_string_insert_c(ptr noundef nonnull %i.p, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  br label %g_string_append_c_inline.exit.i213

bb.t:                                             ; preds = %.lr.ph.split.i210
  %i.cr = load ptr, ptr %i.p, align 8
  store i64 %i.cn, ptr %i.cg, align 8
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cm
  store i8 32, ptr %i.cs, align 1
  %i.ct = load ptr, ptr %i.p, align 8
  %i.cu = load i64, ptr %i.cg, align 8
  %i.cv = getelementptr i8, ptr %i.ct, i64 %i.cu
  store i8 0, ptr %i.cv, align 1
  br label %g_string_append_c_inline.exit.i213

g_string_append_c_inline.exit.i213:               ; preds = %bb.t, %.critedge.i.i212
  %i.cw = add nuw nsw i64 %.05.i211, 1            ; 2 uses
  %exitcond.not.i214 = icmp eq i64 %i.cw, 20
  br i1 %exitcond.not.i214, label %enlarge_string.exit218, label %.lr.ph.split.i210, !llvm.loop !13

enlarge_string.exit218:                           ; preds = %g_string_append_c_inline.exit.i213, %.critedge.i.us.i215, %._crit_edge
  %i.cx = load ptr, ptr %i.p, align 8
  %i.cy = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef @.str.10, ptr noundef %i.cx) ; 0 uses
  %i.cz = icmp ugt i32 %i.v, 1
  br i1 %i.cz, label %.lr.ph327, label %._crit_edge328

.lr.ph327:                                        ; preds = %enlarge_string.exit218
  %i.da = getelementptr i8, ptr %1, i64 32
  %.not.i.i220 = icmp eq ptr %i.p, null           ; 3 uses
  %i.db = getelementptr i8, ptr %i.p, i64 16      ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  %i.dc = getelementptr i8, ptr %i.q, i64 8       ; 3 uses
  %i.dd = getelementptr i8, ptr %i.q, i64 16
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph327, %g_string_append_len_inline.exit
  %.1326 = phi i32 [ 1, %.lr.ph327 ], [ %i.gf, %g_string_append_len_inline.exit ] ; 2 uses
  %i.de = add i32 %.1326, %2
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr [24 x i8], ptr %i.da, i64 %i.df
  %i.dh = tail call ptr @address_to_display(ptr noundef null, ptr noundef %i.dg) ; 2 uses
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.p, ptr noundef @.str.9, ptr noundef %i.dh)
  tail call void @wmem_free(ptr noundef null, ptr noundef %i.dh)
  %i.di = load i64, ptr %i.cg, align 8            ; 4 uses
  %i.dj = icmp ult i64 %i.di, 20
  br i1 %i.dj, label %.lr.ph.i219, label %g_string_append_len_inline.exit184

.lr.ph.i219:                                      ; preds = %bb.u
  br i1 %.not.i.i220, label %.critedge.i.us.i226, label %.lr.ph.split.i221

.critedge.i.us.i226:                              ; preds = %.lr.ph.i219, %.critedge.i.us.i226
  %.05.us.i227 = phi i64 [ %i.dl, %.critedge.i.us.i226 ], [ %i.di, %.lr.ph.i219 ]
  %i.dk = tail call ptr @g_string_insert_c(ptr noundef null, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  %i.dl = add nuw nsw i64 %.05.us.i227, 1         ; 2 uses
  %exitcond7.not.i228 = icmp eq i64 %i.dl, 20
  br i1 %exitcond7.not.i228, label %enlarge_string.exit229.thread.loopexit, label %.critedge.i.us.i226, !llvm.loop !13

.lr.ph.split.i221:                                ; preds = %.lr.ph.i219, %g_string_append_c_inline.exit.i224
  %.05.i222 = phi i64 [ %i.dw, %g_string_append_c_inline.exit.i224 ], [ %i.di, %.lr.ph.i219 ]
  %i.dm = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.dn = add i64 %i.dm, 1                        ; 2 uses
  %i.do = load i64, ptr %i.db, align 8
  %i.dp = icmp ult i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.v, label %.critedge.i.i223

.critedge.i.i223:                                 ; preds = %.lr.ph.split.i221
  %i.dq = tail call ptr @g_string_insert_c(ptr noundef nonnull %i.p, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  br label %g_string_append_c_inline.exit.i224

bb.v:                                             ; preds = %.lr.ph.split.i221
  %i.dr = load ptr, ptr %i.p, align 8
  store i64 %i.dn, ptr %i.cg, align 8
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dm
  store i8 32, ptr %i.ds, align 1
  %i.dt = load ptr, ptr %i.p, align 8
  %i.du = load i64, ptr %i.cg, align 8
  %i.dv = getelementptr i8, ptr %i.dt, i64 %i.du
  store i8 0, ptr %i.dv, align 1
  br label %g_string_append_c_inline.exit.i224

g_string_append_c_inline.exit.i224:               ; preds = %bb.v, %.critedge.i.i223
  %i.dw = add nuw nsw i64 %.05.i222, 1            ; 2 uses
  %exitcond.not.i225 = icmp eq i64 %i.dw, 20
  br i1 %exitcond.not.i225, label %enlarge_string.exit229, label %.lr.ph.split.i221, !llvm.loop !13

enlarge_string.exit229:                           ; preds = %g_string_append_c_inline.exit.i224
  %i.dx = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.dy = add i64 %i.dx, 2
  %i.dz = load i64, ptr %i.db, align 8
  %.not56.i179 = icmp ult i64 %i.dy, %i.dz
  br i1 %.not56.i179, label %bb.w, label %bb.x, !prof !18

enlarge_string.exit229.thread.loopexit:           ; preds = %.critedge.i.us.i226
  %i.ea = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef @.str.11, i64 noundef 2) ; 0 uses
  br label %g_string_append_len_inline.exit184thread-pre-split

bb.w:                                             ; preds = %enlarge_string.exit229
  %i.eb = load ptr, ptr %i.p, align 8
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.dx
  store i16 8316, ptr %i.ec, align 1
  %i.ed = load i64, ptr %i.cg, align 8
  %i.ee = add i64 %i.ed, 2                        ; 2 uses
  store i64 %i.ee, ptr %i.cg, align 8
  %i.ef = load ptr, ptr %i.p, align 8
  %i.eg = getelementptr i8, ptr %i.ef, i64 %i.ee
  store i8 0, ptr %i.eg, align 1
  br label %g_string_append_len_inline.exit184thread-pre-split

bb.x:                                             ; preds = %enlarge_string.exit229
  %i.eh = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.p, i64 noundef -1, ptr noundef nonnull @.str.11, i64 noundef 2) ; 0 uses
  br label %g_string_append_len_inline.exit184thread-pre-split

g_string_append_len_inline.exit184thread-pre-split: ; preds = %enlarge_string.exit229.thread.loopexit, %bb.w, %bb.x
  %.pr = load i64, ptr %i.cg, align 8
  br label %g_string_append_len_inline.exit184

g_string_append_len_inline.exit184:               ; preds = %g_string_append_len_inline.exit184thread-pre-split, %bb.u
  %i.ei = phi i64 [ %.pr, %g_string_append_len_inline.exit184thread-pre-split ], [ %i.di, %bb.u ] ; 3 uses
  %i.ej = icmp ult i64 %i.ei, 40
  br i1 %i.ej, label %.lr.ph.i230, label %enlarge_string.exit240

.lr.ph.i230:                                      ; preds = %g_string_append_len_inline.exit184
  br i1 %.not.i.i220, label %.critedge.i.us.i237, label %.lr.ph.split.i232

.critedge.i.us.i237:                              ; preds = %.lr.ph.i230, %.critedge.i.us.i237
  %.05.us.i238 = phi i64 [ %i.el, %.critedge.i.us.i237 ], [ %i.ei, %.lr.ph.i230 ]
  %i.ek = tail call ptr @g_string_insert_c(ptr noundef null, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  %i.el = add nuw nsw i64 %.05.us.i238, 1         ; 2 uses
  %exitcond7.not.i239 = icmp eq i64 %i.el, 40
  br i1 %exitcond7.not.i239, label %enlarge_string.exit240, label %.critedge.i.us.i237, !llvm.loop !13

.lr.ph.split.i232:                                ; preds = %.lr.ph.i230, %g_string_append_c_inline.exit.i235
  %.05.i233 = phi i64 [ %i.ew, %g_string_append_c_inline.exit.i235 ], [ %i.ei, %.lr.ph.i230 ]
  %i.em = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.en = add i64 %i.em, 1                        ; 2 uses
  %i.eo = load i64, ptr %i.db, align 8
  %i.ep = icmp ult i64 %i.en, %i.eo
  br i1 %i.ep, label %bb.y, label %.critedge.i.i234

.critedge.i.i234:                                 ; preds = %.lr.ph.split.i232
  %i.eq = tail call ptr @g_string_insert_c(ptr noundef nonnull %i.p, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  br label %g_string_append_c_inline.exit.i235

bb.y:                                             ; preds = %.lr.ph.split.i232
  %i.er = load ptr, ptr %i.p, align 8
  store i64 %i.en, ptr %i.cg, align 8
  %i.es = getelementptr i8, ptr %i.er, i64 %i.em
  store i8 32, ptr %i.es, align 1
  %i.et = load ptr, ptr %i.p, align 8
  %i.eu = load i64, ptr %i.cg, align 8
  %i.ev = getelementptr i8, ptr %i.et, i64 %i.eu
  store i8 0, ptr %i.ev, align 1
  br label %g_string_append_c_inline.exit.i235

g_string_append_c_inline.exit.i235:               ; preds = %bb.y, %.critedge.i.i234
  %i.ew = add nuw nsw i64 %.05.i233, 1            ; 2 uses
  %exitcond.not.i236 = icmp eq i64 %i.ew, 40
  br i1 %exitcond.not.i236, label %enlarge_string.exit240, label %.lr.ph.split.i232, !llvm.loop !13

enlarge_string.exit240:                           ; preds = %g_string_append_c_inline.exit.i235, %.critedge.i.us.i237, %g_string_append_len_inline.exit184
  %i.ex = load ptr, ptr %i.p, align 8
  %i.ey = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef @.str.10, ptr noundef %i.ex) ; 0 uses
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.p, ptr noundef @.str.11)
  %i.ez = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 20
  br i1 %i.fa, label %.lr.ph.i241, label %enlarge_string.exit251

.lr.ph.i241:                                      ; preds = %enlarge_string.exit240
  br i1 %.not.i.i220, label %.critedge.i.us.i248, label %.lr.ph.split.i243

.critedge.i.us.i248:                              ; preds = %.lr.ph.i241, %.critedge.i.us.i248
  %.05.us.i249 = phi i64 [ %i.fc, %.critedge.i.us.i248 ], [ %i.ez, %.lr.ph.i241 ]
  %i.fb = tail call ptr @g_string_insert_c(ptr noundef null, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  %i.fc = add nuw nsw i64 %.05.us.i249, 1         ; 2 uses
  %exitcond7.not.i250 = icmp eq i64 %i.fc, 20
  br i1 %exitcond7.not.i250, label %enlarge_string.exit251, label %.critedge.i.us.i248, !llvm.loop !13

.lr.ph.split.i243:                                ; preds = %.lr.ph.i241, %g_string_append_c_inline.exit.i246
  %.05.i244 = phi i64 [ %i.fn, %g_string_append_c_inline.exit.i246 ], [ %i.ez, %.lr.ph.i241 ]
  %i.fd = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.fe = add i64 %i.fd, 1                        ; 2 uses
  %i.ff = load i64, ptr %i.db, align 8
  %i.fg = icmp ult i64 %i.fe, %i.ff
  br i1 %i.fg, label %bb.z, label %.critedge.i.i245

.critedge.i.i245:                                 ; preds = %.lr.ph.split.i243
  %i.fh = tail call ptr @g_string_insert_c(ptr noundef nonnull %i.p, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  br label %g_string_append_c_inline.exit.i246

bb.z:                                             ; preds = %.lr.ph.split.i243
  %i.fi = load ptr, ptr %i.p, align 8
  store i64 %i.fe, ptr %i.cg, align 8
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.fd
  store i8 32, ptr %i.fj, align 1
  %i.fk = load ptr, ptr %i.p, align 8
  %i.fl = load i64, ptr %i.cg, align 8
  %i.fm = getelementptr i8, ptr %i.fk, i64 %i.fl
  store i8 0, ptr %i.fm, align 1
  br label %g_string_append_c_inline.exit.i246

g_string_append_c_inline.exit.i246:               ; preds = %bb.z, %.critedge.i.i245
  %i.fn = add nuw nsw i64 %.05.i244, 1            ; 2 uses
  %exitcond.not.i247 = icmp eq i64 %i.fn, 20
  br i1 %exitcond.not.i247, label %enlarge_string.exit251, label %.lr.ph.split.i243, !llvm.loop !13

enlarge_string.exit251:                           ; preds = %g_string_append_c_inline.exit.i246, %.critedge.i.us.i248, %enlarge_string.exit240
  %i.fo = load ptr, ptr %i.p, align 8             ; 8 uses
  br i1 %.not.i, label %bb.aa, label %bb.ab, !prof !17

bb.aa:                                            ; preds = %enlarge_string.exit251
  %i.fp = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef %i.fo, i64 noundef -1) ; 0 uses
  br label %g_string_append_len_inline.exit

bb.ab:                                            ; preds = %enlarge_string.exit251
  %.not54.i = icmp eq ptr %i.fo, null
  br i1 %.not54.i, label %bb.ac, label %bb.ad, !prof !17

bb.ac:                                            ; preds = %bb.ab
  %i.fq = tail call ptr @g_string_append_len(ptr noundef nonnull %i.q, ptr noundef null, i64 noundef -1) ; 0 uses
  br label %g_string_append_len_inline.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fo) #22 ; 6 uses
  %i.fs = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.ft = add i64 %i.fs, %i.fr
  %i.fu = load i64, ptr %i.dd, align 8
  %.not56.i = icmp ult i64 %i.ft, %i.fu
  br i1 %.not56.i, label %bb.ae, label %bb.ai, !prof !18

bb.ae:                                            ; preds = %bb.ad
  %i.fv = load ptr, ptr %i.q, align 8
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.fs  ; 4 uses
  %i.fx = getelementptr i8, ptr %i.fo, i64 %i.fr
  %.not57.i = icmp ugt ptr %i.fx, %i.fw
  %i.fy = getelementptr i8, ptr %i.fw, i64 %i.fr
  %i.fz = icmp ule ptr %i.fo, %i.fy
  %or.cond.i.not = and i1 %.not57.i, %i.fz
  br i1 %or.cond.i.not, label %bb.ag, label %bb.af, !prof !17

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.fw, ptr noundef nonnull align 1 %i.fo, i64 noundef %i.fr, i1 noundef false) #19
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.fw, ptr noundef nonnull align 1 %i.fo, i64 noundef %i.fr, i1 noundef false) #19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ga = load i64, ptr %i.dc, align 8
  %i.gb = add i64 %i.ga, %i.fr                    ; 2 uses
  store i64 %i.gb, ptr %i.dc, align 8
  %i.gc = load ptr, ptr %i.q, align 8
  %i.gd = getelementptr i8, ptr %i.gc, i64 %i.gb
  store i8 0, ptr %i.gd, align 1
  br label %g_string_append_len_inline.exit

bb.ai:                                            ; preds = %bb.ad
  %i.ge = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.q, i64 noundef -1, ptr noundef nonnull %i.fo, i64 noundef -1) ; 0 uses
  br label %g_string_append_len_inline.exit

g_string_append_len_inline.exit:                  ; preds = %bb.aa, %bb.ac, %bb.ah, %bb.ai
  %i.gf = add i32 %.1326, 2                       ; 2 uses
  %i.gg = icmp ult i32 %i.gf, %i.v
  br i1 %i.gg, label %bb.u, label %._crit_edge328, !llvm.loop !15

._crit_edge328:                                   ; preds = %g_string_append_len_inline.exit, %enlarge_string.exit218
  %i.gh = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef @.str.13) ; 0 uses
  %.not.i194 = icmp eq ptr %i.q, null
  br i1 %.not.i194, label %.critedge.i195, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge328
  %i.gi = getelementptr i8, ptr %i.q, i64 8       ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8            ; 2 uses
  %i.gk = add i64 %i.gj, 1                        ; 2 uses
  %i.gl = getelementptr i8, ptr %i.q, i64 16
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = icmp ult i64 %i.gk, %i.gm
  br i1 %i.gn, label %bb.ak, label %.critedge.i195

.critedge.i195:                                   ; preds = %bb.aj, %._crit_edge328
  %i.go = tail call ptr @g_string_insert_c(ptr noundef %i.q, i64 noundef -1, i8 noundef signext 124) ; 0 uses
  br label %g_string_append_c_inline.exit196

bb.ak:                                            ; preds = %bb.aj
  %i.gp = load ptr, ptr %i.q, align 8
  store i64 %i.gk, ptr %i.gi, align 8
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.gj
  store i8 124, ptr %i.gq, align 1
  %i.gr = load ptr, ptr %i.q, align 8
  %i.gs = load i64, ptr %i.gi, align 8
  %i.gt = getelementptr i8, ptr %i.gr, i64 %i.gs
  store i8 0, ptr %i.gt, align 1
  br label %g_string_append_c_inline.exit196

g_string_append_c_inline.exit196:                 ; preds = %.critedge.i195, %bb.ak
  %i.gu = getelementptr i8, ptr %i.q, i64 8
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = add i64 %i.gv, %.
  %i.gx = getelementptr i8, ptr %i.r, i64 8       ; 4 uses
  %i.gy = load i64, ptr %i.gx, align 8            ; 3 uses
  %i.gz = and i64 %i.gw, 4294967295               ; 3 uses
  %i.ha = icmp ult i64 %i.gy, %i.gz
  br i1 %i.ha, label %.lr.ph.i252, label %enlarge_string.exit262

.lr.ph.i252:                                      ; preds = %g_string_append_c_inline.exit196
  %.not.i.i253 = icmp eq ptr %i.r, null
  %i.hb = getelementptr i8, ptr %i.r, i64 16
  br i1 %.not.i.i253, label %.critedge.i.us.i259, label %.lr.ph.split.i254

.critedge.i.us.i259:                              ; preds = %.lr.ph.i252, %.critedge.i.us.i259
  %.05.us.i260 = phi i64 [ %i.hd, %.critedge.i.us.i259 ], [ %i.gy, %.lr.ph.i252 ]
  %i.hc = tail call ptr @g_string_insert_c(ptr noundef null, i64 noundef -1, i8 noundef signext range(i8 32, 125) 45) ; 0 uses
  %i.hd = add i64 %.05.us.i260, 1                 ; 2 uses
  %exitcond7.not.i261 = icmp eq i64 %i.hd, %i.gz
  br i1 %exitcond7.not.i261, label %enlarge_string.exit262, label %.critedge.i.us.i259, !llvm.loop !13

.lr.ph.split.i254:                                ; preds = %.lr.ph.i252, %g_string_append_c_inline.exit.i257
  %.05.i255 = phi i64 [ %i.ho, %g_string_append_c_inline.exit.i257 ], [ %i.gy, %.lr.ph.i252 ]
  %i.he = load i64, ptr %i.gx, align 8            ; 2 uses
  %i.hf = add i64 %i.he, 1                        ; 2 uses
  %i.hg = load i64, ptr %i.hb, align 8
  %i.hh = icmp ult i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.al, label %.critedge.i.i256

.critedge.i.i256:                                 ; preds = %.lr.ph.split.i254
  %i.hi = tail call ptr @g_string_insert_c(ptr noundef nonnull %i.r, i64 noundef -1, i8 noundef signext range(i8 32, 125) 45) ; 0 uses
  br label %g_string_append_c_inline.exit.i257

bb.al:                                            ; preds = %.lr.ph.split.i254
  %i.hj = load ptr, ptr %i.r, align 8
  store i64 %i.hf, ptr %i.gx, align 8
  %i.hk = getelementptr i8, ptr %i.hj, i64 %i.he
  store i8 45, ptr %i.hk, align 1
  %i.hl = load ptr, ptr %i.r, align 8
  %i.hm = load i64, ptr %i.gx, align 8
  %i.hn = getelementptr i8, ptr %i.hl, i64 %i.hm
  store i8 0, ptr %i.hn, align 1
  br label %g_string_append_c_inline.exit.i257

g_string_append_c_inline.exit.i257:               ; preds = %bb.al, %.critedge.i.i256
  %i.ho = add i64 %.05.i255, 1                    ; 2 uses
  %exitcond.not.i258 = icmp eq i64 %i.ho, %i.gz
  br i1 %exitcond.not.i258, label %enlarge_string.exit262, label %.lr.ph.split.i254, !llvm.loop !13

enlarge_string.exit262:                           ; preds = %g_string_append_c_inline.exit.i257, %.critedge.i.us.i259, %g_string_append_c_inline.exit196
  %i.hp = load ptr, ptr %i.c, align 8
  %i.hq = tail call ptr @g_queue_peek_nth_link(ptr noundef %i.hp, i32 noundef 0)
  %.not.i.i264 = icmp eq ptr %i.p, null           ; 2 uses
  %i.hr = getelementptr i8, ptr %i.p, i64 16      ; 2 uses
  %i.hs = getelementptr i8, ptr %i.t, i64 8       ; 12 uses
  %.not.i.i297 = icmp eq ptr %i.t, null           ; 3 uses
  %i.ht = getelementptr i8, ptr %i.t, i64 16      ; 3 uses
  br label %.outer

.outer:                                           ; preds = %bb.bk, %enlarge_string.exit262
  %.2160.ph = phi i16 [ %i.iu, %bb.bk ], [ %.0158.ph, %enlarge_string.exit262 ] ; 2 uses
  %.2.ph = phi ptr [ %i.hw, %bb.bk ], [ %i.hq, %enlarge_string.exit262 ]
  br label %bb.am

bb.am:                                            ; preds = %.outer, %bb.an
  %.2 = phi ptr [ %i.hw, %bb.an ], [ %.2.ph, %.outer ] ; 3 uses
  %.not174 = icmp eq ptr %.2, null
  br i1 %.not174, label %bb.bl, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hu = load ptr, ptr %.2, align 8              ; 9 uses
  %i.hv = getelementptr i8, ptr %.2, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hu, i64 109
  %i.hy = load i8, ptr %i.hx, align 1, !range !7, !noundef !8
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.ao, label %bb.am, !llvm.loop !16

bb.ao:                                            ; preds = %bb.an
  %i.ia = getelementptr i8, ptr %i.hu, i64 112
  %i.ib = load i32, ptr %i.ia, align 8
  %i.ic = sub i32 %i.ib, %2
  %i.id = mul i32 %i.ic, 20                       ; 7 uses
  %i.ie = add i32 %i.id, 10                       ; 5 uses
  %i.if = getelementptr i8, ptr %i.hu, i64 116
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = sub i32 %i.ig, %2
  %i.ii = mul i32 %i.ih, 20                       ; 3 uses
  %i.ij = add i32 %i.ii, 10                       ; 4 uses
  %i.ik = icmp ugt i32 %i.ie, %i.ij
  br i1 %i.ik, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.il = sub i32 %i.id, %i.ii
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.im = icmp ult i32 %i.ie, %i.ij
  br i1 %i.im, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.in = sub i32 %i.ii, %i.id
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.io = add i32 %i.id, 30
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.ap
  %.0163 = phi i32 [ %i.ij, %bb.ap ], [ %i.ij, %bb.ar ], [ %i.io, %bb.as ] ; 5 uses
  %.0162 = phi i32 [ %i.il, %bb.ap ], [ %i.in, %bb.ar ], [ 20, %bb.as ] ; 2 uses
  %i.ip = getelementptr i8, ptr %i.hu, i64 96     ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 8
  %.not175 = icmp eq i16 %i.iq, %.2160.ph
  br i1 %.not175, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ir = load ptr, ptr %i.r, align 8
  %i.is = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef @.str.14, ptr noundef %i.ir) ; 0 uses
  %i.it = load i16, ptr %i.ip, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.iu = phi i16 [ %i.it, %bb.au ], [ %.2160.ph, %bb.at ] ; 2 uses
  br i1 %.0156.ph, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.iv = zext i16 %i.iu to i32
  call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.p, ptr noundef @.str.15, i32 noundef %i.iv)
  %i.iw = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ix = icmp ult i64 %i.iw, 5
  br i1 %i.ix, label %.lr.ph.i263, label %enlarge_string.exit273

.lr.ph.i263:                                      ; preds = %bb.aw
  br i1 %.not.i.i264, label %.critedge.i.us.i270, label %.lr.ph.split.i265

.critedge.i.us.i270:                              ; preds = %.lr.ph.i263, %.critedge.i.us.i270
  %.05.us.i271 = phi i64 [ %i.iz, %.critedge.i.us.i270 ], [ %i.iw, %.lr.ph.i263 ]
  %i.iy = call ptr @g_string_insert_c(ptr noundef null, i64 noundef -1, i8 noundef signext range(i8 32, 125) 32) ; 0 uses
  %i.iz = add nuw nsw i64 %.05.us.i271, 1         ; 2 uses
  %exitcond7.not.i272 = icmp eq i64 %i.iz, 5
  br i1 %exitcond7.not.i272, label %enlarge_string.exit273, label %.critedge.i.us.i270, !llvm.loop !13

.lr.ph.split.i265:                                ; preds = %.lr.ph.i263, %g_string_append_c_inline.exit.i268
  %.05.i266 = phi i64 [ %i.jk, %g_string_append_c_inline.exit.i268 ], [ %i.iw, %.lr.ph.i263 ]
  %i.ja = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.jb = add i64 %i.ja, 1                        ; 2 uses
  %i.jc = load i64, ptr %i.hr, align 8
  %i.jd = icmp ult i64 %i.jb, %i.jc
  br i1 %i.jd, label %bb.ax, label %.critedge.i.i267
end_hunk_0
begin_hunk_1_@sequence_analysis_dump_to_file:bb.a
  %i.jy = load ptr, ptr %i.p, align 8
  store i64 %i.ju, ptr %i.cg, align 8
  %i.jz = getelementptr i8, ptr %i.jy, i64 %i.jt
  store i8 32, ptr %i.jz, align 1
  %i.ka = load ptr, ptr %i.p, align 8
  %i.kb = load i64, ptr %i.cg, align 8
  %i.kc = getelementptr i8, ptr %i.ka, i64 %i.kb
  store i8 0, ptr %i.kc, align 1
  br label %g_string_append_c_inline.exit.i279

g_string_append_c_inline.exit.i279:               ; preds = %bb.ba, %.critedge.i.i278
  %i.kd = add nuw nsw i64 %.05.i277, 1            ; 2 uses
  %exitcond.not.i280 = icmp eq i64 %i.kd, 10
  br i1 %exitcond.not.i280, label %enlarge_string.exit284, label %.lr.ph.split.i276, !llvm.loop !13

enlarge_string.exit284:                           ; preds = %g_string_append_c_inline.exit.i279, %.critedge.i.us.i281, %bb.az
  %i.ke = load ptr, ptr %i.p, align 8
  %i.kf = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef @.str.10, ptr noundef %i.ke) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %enlarge_string.exit284, %bb.ay
  %i.kg = load ptr, ptr %i.q, align 8
  call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.s, ptr noundef @.str.10, ptr noundef %i.kg)
  %i.kh = getelementptr i8, ptr %i.hu, i64 72
  %i.ki = load ptr, ptr %i.kh, align 8
  call fastcc void @overwrite(ptr noundef %i.s, ptr noundef %i.ki, i32 noundef %i.ie, i32 noundef %.0163)
  %i.kj = load ptr, ptr %i.s, align 8
  %i.kk = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef @.str.10, ptr noundef %i.kj) ; 0 uses
  %i.kl = getelementptr i8, ptr %i.hu, i64 88
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef @.str.14, ptr noundef %i.km) ; 0 uses
  %i.ko = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef @.str.10, ptr noundef %.str.6..str.8) ; 0 uses
  %i.kp = load ptr, ptr %i.q, align 8
  call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.s, ptr noundef @.str.10, ptr noundef %i.kp)
  store i64 0, ptr %i.hs, align 8
  %i.kq = load ptr, ptr %i.t, align 8
  store i8 0, ptr %i.kq, align 1
  %i.kr = icmp ult i32 %i.ie, %.0163              ; 2 uses
  br i1 %i.kr, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ks = add i32 %.0162, -2
  %i.kt = load i64, ptr %i.hs, align 8            ; 3 uses
  %i.ku = zext i32 %i.ks to i64                   ; 3 uses
  %i.kv = icmp ult i64 %i.kt, %i.ku
  br i1 %i.kv, label %.lr.ph.i285, label %enlarge_string.exit295

.lr.ph.i285:                                      ; preds = %bb.bc
  br i1 %.not.i.i297, label %.critedge.i.us.i292, label %.lr.ph.split.i287

.critedge.i.us.i292:                              ; preds = %.lr.ph.i285, %.critedge.i.us.i292
  %.05.us.i293 = phi i64 [ %i.kx, %.critedge.i.us.i292 ], [ %i.kt, %.lr.ph.i285 ]
  %i.kw = call ptr @g_string_insert_c(ptr noundef null, i64 noundef -1, i8 noundef signext range(i8 32, 125) 45) ; 0 uses
  %i.kx = add i64 %.05.us.i293, 1                 ; 2 uses
  %exitcond7.not.i294 = icmp eq i64 %i.kx, %i.ku
  br i1 %exitcond7.not.i294, label %.critedge.i, label %.critedge.i.us.i292, !llvm.loop !13

.lr.ph.split.i287:                                ; preds = %.lr.ph.i285, %g_string_append_c_inline.exit.i290
  %.05.i288 = phi i64 [ %i.li, %g_string_append_c_inline.exit.i290 ], [ %i.kt, %.lr.ph.i285 ]
  %i.ky = load i64, ptr %i.hs, align 8            ; 2 uses
  %i.kz = add i64 %i.ky, 1                        ; 2 uses
  %i.la = load i64, ptr %i.ht, align 8
  %i.lb = icmp ult i64 %i.kz, %i.la
  br i1 %i.lb, label %bb.bd, label %.critedge.i.i289

.critedge.i.i289:                                 ; preds = %.lr.ph.split.i287
  %i.lc = call ptr @g_string_insert_c(ptr noundef nonnull %i.t, i64 noundef -1, i8 noundef signext range(i8 32, 125) 45) ; 0 uses
  br label %g_string_append_c_inline.exit.i290

bb.bd:                                            ; preds = %.lr.ph.split.i287
  %i.ld = load ptr, ptr %i.t, align 8
  store i64 %i.kz, ptr %i.hs, align 8
  %i.le = getelementptr i8, ptr %i.ld, i64 %i.ky
  store i8 45, ptr %i.le, align 1
  %i.lf = load ptr, ptr %i.t, align 8
  %i.lg = load i64, ptr %i.hs, align 8
  %i.lh = getelementptr i8, ptr %i.lf, i64 %i.lg
  store i8 0, ptr %i.lh, align 1
  br label %g_string_append_c_inline.exit.i290

g_string_append_c_inline.exit.i290:               ; preds = %bb.bd, %.critedge.i.i289
  %i.li = add i64 %.05.i288, 1                    ; 2 uses
  %exitcond.not.i291 = icmp eq i64 %i.li, %i.ku
  br i1 %exitcond.not.i291, label %enlarge_string.exit295, label %.lr.ph.split.i287, !llvm.loop !13

enlarge_string.exit295:                           ; preds = %g_string_append_c_inline.exit.i290, %bb.bc
  br i1 %.not.i.i297, label %.critedge.i, label %bb.be

bb.be:                                            ; preds = %enlarge_string.exit295
  %i.lj = load i64, ptr %i.hs, align 8            ; 2 uses
  %i.lk = add i64 %i.lj, 1                        ; 2 uses
  %i.ll = load i64, ptr %i.ht, align 8
  %i.lm = icmp ult i64 %i.lk, %i.ll
  br i1 %i.lm, label %bb.bf, label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.us.i292, %bb.be, %enlarge_string.exit295
  %i.ln = call ptr @g_string_insert_c(ptr noundef %i.t, i64 noundef -1, i8 noundef signext 62) ; 0 uses
  br label %g_string_append_c_inline.exit

bb.bf:                                            ; preds = %bb.be
  %i.lo = load ptr, ptr %i.t, align 8
  store i64 %i.lk, ptr %i.hs, align 8
  %i.lp = getelementptr i8, ptr %i.lo, i64 %i.lj
  store i8 62, ptr %i.lp, align 1
  %i.lq = load ptr, ptr %i.t, align 8
  %i.lr = load i64, ptr %i.hs, align 8
  %i.ls = getelementptr i8, ptr %i.lq, i64 %i.lr
  store i8 0, ptr %i.ls, align 1
  br label %g_string_append_c_inline.exit

bb.bg:                                            ; preds = %bb.bb
  call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.t, ptr noundef @.str.17)
  %i.lt = add i32 %.0162, -1
  %i.lu = load i64, ptr %i.hs, align 8            ; 3 uses
  %i.lv = zext i32 %i.lt to i64                   ; 3 uses
  %i.lw = icmp ult i64 %i.lu, %i.lv
  br i1 %i.lw, label %.lr.ph.i296, label %g_string_append_c_inline.exit

.lr.ph.i296:                                      ; preds = %bb.bg
  br i1 %.not.i.i297, label %.critedge.i.us.i303, label %.lr.ph.split.i298

.critedge.i.us.i303:                              ; preds = %.lr.ph.i296, %.critedge.i.us.i303
  %.05.us.i304 = phi i64 [ %i.ly, %.critedge.i.us.i303 ], [ %i.lu, %.lr.ph.i296 ]
  %i.lx = call ptr @g_string_insert_c(ptr noundef null, i64 noundef -1, i8 noundef signext range(i8 32, 125) 45) ; 0 uses
  %i.ly = add i64 %.05.us.i304, 1                 ; 2 uses
  %exitcond7.not.i305 = icmp eq i64 %i.ly, %i.lv
  br i1 %exitcond7.not.i305, label %g_string_append_c_inline.exit, label %.critedge.i.us.i303, !llvm.loop !13

.lr.ph.split.i298:                                ; preds = %.lr.ph.i296, %g_string_append_c_inline.exit.i301
  %.05.i299 = phi i64 [ %i.mj, %g_string_append_c_inline.exit.i301 ], [ %i.lu, %.lr.ph.i296 ]
  %i.lz = load i64, ptr %i.hs, align 8            ; 2 uses
  %i.ma = add i64 %i.lz, 1                        ; 2 uses
  %i.mb = load i64, ptr %i.ht, align 8
  %i.mc = icmp ult i64 %i.ma, %i.mb
  br i1 %i.mc, label %bb.bh, label %.critedge.i.i300

.critedge.i.i300:                                 ; preds = %.lr.ph.split.i298
  %i.md = call ptr @g_string_insert_c(ptr noundef nonnull %i.t, i64 noundef -1, i8 noundef signext range(i8 32, 125) 45) ; 0 uses
  br label %g_string_append_c_inline.exit.i301

bb.bh:                                            ; preds = %.lr.ph.split.i298
  %i.me = load ptr, ptr %i.t, align 8
  store i64 %i.ma, ptr %i.hs, align 8
  %i.mf = getelementptr i8, ptr %i.me, i64 %i.lz
  store i8 45, ptr %i.mf, align 1
  %i.mg = load ptr, ptr %i.t, align 8
  %i.mh = load i64, ptr %i.hs, align 8
  %i.mi = getelementptr i8, ptr %i.mg, i64 %i.mh
  store i8 0, ptr %i.mi, align 1
  br label %g_string_append_c_inline.exit.i301

g_string_append_c_inline.exit.i301:               ; preds = %bb.bh, %.critedge.i.i300
  %i.mj = add i64 %.05.i299, 1                    ; 2 uses
  %exitcond.not.i302 = icmp eq i64 %i.mj, %i.lv
  br i1 %exitcond.not.i302, label %g_string_append_c_inline.exit, label %.lr.ph.split.i298, !llvm.loop !13

g_string_append_c_inline.exit:                    ; preds = %g_string_append_c_inline.exit.i301, %.critedge.i.us.i303, %bb.bg, %bb.bf, %.critedge.i
  %i.mk = load ptr, ptr %i.t, align 8
  call fastcc void @overwrite(ptr noundef %i.s, ptr noundef %i.mk, i32 noundef %i.ie, i32 noundef %.0163)
  %i.ml = getelementptr i8, ptr %i.hu, i64 32
  %i.mm = load i16, ptr %i.ml, align 8
  %i.mn = zext i16 %i.mm to i32
  %i.mo = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 8, i32 noundef 2, i64 noundef 8, ptr noundef @.str.18, i32 noundef %i.mn) ; 0 uses
  %i.mp = getelementptr i8, ptr %i.hu, i64 64
  %i.mq = load i16, ptr %i.mp, align 8
  %i.mr = zext i16 %i.mq to i32
  %i.ms = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.b, i64 noundef 8, i32 noundef 2, i64 noundef 8, ptr noundef @.str.18, i32 noundef %i.mr) ; 0 uses
  br i1 %i.kr, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %g_string_append_c_inline.exit
  %i.mt = or disjoint i32 %i.id, 1
  br label %bb.bk

bb.bj:                                            ; preds = %g_string_append_c_inline.exit
  %i.mu = add i32 %i.id, 11
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sink419 = phi i32 [ 19, %bb.bj ], [ 9, %bb.bi ]
  %.sink = phi i32 [ %i.mu, %bb.bj ], [ %i.mt, %bb.bi ]
  %.sink417 = phi i32 [ -9, %bb.bj ], [ 1, %bb.bi ]
  %.sink416 = phi i32 [ 1, %bb.bj ], [ 9, %bb.bi ]
  %i.mv = add i32 %i.id, %.sink419
  call fastcc void @overwrite(ptr noundef %i.s, ptr noundef nonnull %i.a, i32 noundef %.sink, i32 noundef %i.mv)
  %i.mw = add i32 %.0163, %.sink417
  %i.mx = add i32 %.0163, %.sink416
  call fastcc void @overwrite(ptr noundef %i.s, ptr noundef nonnull %i.b, i32 noundef %i.mw, i32 noundef %i.mx)
  %i.my = load ptr, ptr %i.s, align 8
  %i.mz = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef @.str.14, ptr noundef %i.my) ; 0 uses
  br label %.outer, !llvm.loop !16

bb.bl:                                            ; preds = %bb.am
  %i.na = call ptr @g_string_free(ptr noundef %i.p, i32 noundef 1) ; 0 uses
  %i.nb = call ptr @g_string_free(ptr noundef %i.q, i32 noundef 1) ; 0 uses
  %i.nc = call ptr @g_string_free(ptr noundef %i.r, i32 noundef 1) ; 0 uses
  %i.nd = call ptr @g_string_free(ptr noundef %i.s, i32 noundef 1) ; 0 uses
  %i.ne = call ptr @g_string_free(ptr noundef %i.t, i32 noundef 1) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.f, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_queue_peek_nth_link(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_new(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @address_to_display(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_string_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @overwrite(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, %3
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nsw i32 %2, %3
  %.031.in = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true)
  %.029.in = tail call i32 @llvm.umin.i32(i32 %2, i32 %3)
  %.029 = zext i32 %.029.in to i64
  %.031 = zext nneg i32 %.031.in to i64           ; 6 uses
  %i.c = tail call i64 @g_utf8_strlen(ptr noundef %1, i64 noundef -1) #22 ; 3 uses
  %i.d = icmp slt i64 %i.c, %.031
  br i1 %i.d, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %i.c, %.031
  br i1 %i.e, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias ptr @g_utf8_substring(ptr noundef %1, i64 noundef 0, i64 noundef %.031) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %g_strdup_inline.exit

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.13242 = phi i64 [ %.031, %bb.d ], [ %i.c, %bb.b ], [ %.031, %bb.c ]
  %i.g = tail call noalias ptr @g_strdup(ptr noundef %1)
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %.thread, %bb.d
  %.13241 = phi i64 [ %.031, %bb.d ], [ %.13242, %.thread ]
  %.1 = phi ptr [ %i.f, %bb.d ], [ %i.g, %.thread ] ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %.029) ; 2 uses
  %i.j = tail call ptr @g_string_erase(ptr noundef %0, i64 noundef %spec.select, i64 noundef %.13241) ; 0 uses
  %i.k = tail call ptr @g_string_insert(ptr noundef %0, i64 noundef %spec.select, ptr noundef %.1) ; 0 uses
  tail call void @g_free(ptr noundef %.1)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %g_strdup_inline.exit
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_append_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_insert_len(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_insert_c(ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read)
declare i64 @g_utf8_strlen(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_utf8_substring(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_erase(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noreturn }
attributes #18 = { allocsize(1) }
attributes #19 = { nounwind }
attributes #20 = { allocsize(0) }
attributes #21 = { allocsize(2) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !9}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
