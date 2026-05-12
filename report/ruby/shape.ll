inline.NumInlined: 231
inline.NumDeleted: 74
begin_hunk_0_@get_next_shape_internal
define internal fastcc ptr @get_next_shape_internal(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 0, 256) %2, ptr noundef nonnull writeonly captures(none) initializes((0, 1)) %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 17 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !81
end_hunk_0
begin_hunk_1_@get_next_shape_internal:bb.a

.thread55.i:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !tbaa !41
  %i.ab = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %2) ; 2 uses
  %.not41.i = icmp eq ptr %i.ab, null
  br i1 %.not41.i, label %.thread.i, label %.thread62.i

.thread55.i.thread:                               ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !tbaa !41
  %i.ac = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %2) ; 2 uses
  %.not41.i46 = icmp eq ptr %i.ac, null
  br i1 %.not41.i46, label %.thread.i, label %bb.j

.thread55.thread.i:                               ; preds = %.split49.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !tbaa !41
  %i.ad = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %2) ; 3 uses
  %.not4163.i = icmp eq ptr %i.ad, null
  br i1 %.not4163.i, label %.thread.i, label %.split.i

.thread60.i:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !tbaa !41
  %i.ae = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %2) ; 2 uses
  %.not4161.i = icmp eq ptr %i.ae, null
  br i1 %.not4161.i, label %.thread.i, label %.thread62.i
end_hunk_1
begin_hunk_2_@get_next_shape_internal:bb.a
  br label %bb.k

bb.j:                                             ; preds = %.thread55.i.thread
  %i.ai = call i64 @rb_managed_id_table_new(i64 noundef 2) #14 ; 2 uses
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !41
  %i.aj = load i64, ptr %i.v, align 8, !tbaa !48
  %i.ak = call i32 @rb_managed_id_table_insert(i64 noundef %i.ai, i64 noundef %i.aj, i64 noundef %i.t) #14 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !41
  br label %.split35.i

.thread62.i:                                      ; preds = %.thread60.i, %.thread55.i
end_hunk_2
begin_hunk_3_@get_next_shape_internal:bb.a

.split35.i:                                       ; preds = %.thread62.i, %bb.j
  %i.an = phi ptr [ %i.al, %.thread62.i ], [ %i.ac, %bb.j ] ; 3 uses
  %i.ao = phi i64 [ %i.am, %.thread62.i ], [ %.pre.i, %bb.j ]
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !48
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = call i32 @rb_managed_id_table_insert(i64 noundef %i.ao, i64 noundef %i.aq, i64 noundef %i.ar) #14 ; 0 uses
  store i8 1, ptr %3, align 1, !tbaa !54
  %5 = load i64, ptr %i.b, align 8, !tbaa !41
  %i.at = cmpxchg volatile ptr %0, i64 %i.r, i64 %5 seq_cst seq_cst, align 8
  br label %bb.k

bb.k:                                             ; preds = %.split35.i, %.split.i
end_hunk_3
