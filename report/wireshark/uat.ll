inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@g_array_append_vals

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @uat_update_record(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %wide.trip.count = zext i32 %i.d to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert21 = insertelement <16 x ptr> poison, ptr %1, i64 0
  %broadcast.splat22 = shufflevector <16 x ptr> %broadcast.splatinsert21, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.h = mul <16 x i64> %broadcast.splat, %vec.ind
  %wide.gep = getelementptr i8, ptr %i.e, <16 x i64> %i.h
  %wide.gep.fr = freeze <16 x ptr> %wide.gep
  %i.i = icmp eq <16 x ptr> %wide.gep.fr, %broadcast.splat22 ; 2 uses
  %i.j = bitcast <16 x i1> %i.i to i16
  %.not23 = icmp eq i16 %i.j, 0
  br i1 %.not23, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.l = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.i, i1 false)
  %i.m = add i64 %index, %i.l
  br label %._crit_edge.loopexit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.n = mul i64 %i.g, %indvars.iv
  %i.o = getelementptr i8, ptr %i.e, i64 %i.n
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %._crit_edge.loopexit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %scalar.ph, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %scalar.ph, %vector.early.exit
  %indvars.iv.lcssa = phi i64 [ %i.m, %vector.early.exit ], [ %indvars.iv, %scalar.ph ]
  %i.q = trunc nuw i64 %indvars.iv.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %._crit_edge.loopexit ] ; 2 uses
  %i.r = icmp eq i32 %.0.lcssa, %i.d
  br i1 %i.r, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %middle.block, %._crit_edge
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.1, i32 noundef 7, ptr noundef nonnull @.str.2, i64 noundef 157, ptr noundef nonnull @__func__.uat_update_record, ptr noundef nonnull @.str.3) #18
  unreachable

bb.c:                                             ; preds = %._crit_edge
  %i.s = zext i1 %2 to i8
  %i.t = getelementptr i8, ptr %0, i64 144
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = zext i32 %.0.lcssa to i64
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w
  store i8 %i.s, ptr %i.x, align 1
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare void @ws_log_fatal_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @uat_swap(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = tail call noalias ptr @g_malloc(i64 noundef %i.c) #16 ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load i64, ptr %i.b, align 8              ; 2 uses
  %i.i = zext i32 %1 to i64                       ; 2 uses
  %i.j = mul i64 %i.h, %i.i
  %i.k = getelementptr i8, ptr %i.g, i64 %i.j     ; 2 uses
  %i.l = icmp ne i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.d, ptr noundef align 1 %i.k, i64 noundef %i.c, i1 noundef false) #17
  %i.m = zext i32 %2 to i64                       ; 4 uses
  %i.n = mul i64 %i.h, %i.m
  %i.o = getelementptr i8, ptr %i.g, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.k, ptr noundef align 1 %i.o, i64 noundef %i.c, i1 noundef false) #17
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %i.b, align 8
  %i.s = mul i64 %i.r, %i.m
  %i.t = getelementptr i8, ptr %i.q, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.t, ptr noundef align 1 %i.d, i64 noundef %i.c, i1 noundef false) #17
  tail call void @g_free(ptr noundef %i.d)
  %i.u = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 %i.i     ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !range !13, !noundef !14
  %i.z = getelementptr i8, ptr %i.w, i64 %i.m
  %i.aa = load i8, ptr %i.z, align 1, !range !13, !noundef !14
  store i8 %i.aa, ptr %i.x, align 1
  %i.ab = load ptr, ptr %i.u, align 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.m
  store i8 %i.y, ptr %i.ad, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_array_insert_vals(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @uat_remove_record_idx(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = zext i32 %1 to i64
  %i.i = mul i64 %i.g, %i.h
  %i.j = getelementptr i8, ptr %i.e, i64 %i.i
  tail call void %i.b(ptr noundef %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr i8, ptr %0, i64 136
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @g_array_remove_index(ptr noundef %i.l, i32 noundef %1) ; 0 uses
  %i.n = getelementptr i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @g_array_remove_index(ptr noundef %i.o, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_array_remove_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @uat_remove_record_range(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 136
  %i.e = getelementptr i8, ptr %0, i64 8
  %3 = zext i32 %1 to i64
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i64, ptr %i.e, align 8
  %4 = add nuw nsw i64 %indvars.iv, %3
  %i.j = mul i64 %i.i, %4
  %i.k = getelementptr i8, ptr %i.h, i64 %i.j
  tail call void %i.f(ptr noundef %i.k)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !15

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.l = getelementptr i8, ptr %0, i64 136
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call ptr @g_array_remove_range(ptr noundef %i.m, i32 noundef %1, i32 noundef %2) ; 0 uses
  %i.o = getelementptr i8, ptr %0, i64 144
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr @g_array_remove_range(ptr noundef %i.p, i32 noundef %1, i32 noundef %2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_array_remove_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @uat_move_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, %2
  %spec.select = select i1 %i.a, i32 -1, i32 1
  %.not11 = icmp eq i32 %1, %2
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 144        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.012 = phi i32 [ %1, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.e = add i32 %.012, %spec.select              ; 3 uses
  %i.f = load i64, ptr %i.b, align 8              ; 5 uses
  %i.g = tail call noalias ptr @g_malloc(i64 noundef %i.f) #16 ; 3 uses
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load i64, ptr %i.b, align 8              ; 2 uses
  %i.k = zext i32 %.012 to i64                    ; 2 uses
  %i.l = mul i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.i, i64 %i.l     ; 2 uses
  %i.n = icmp ne i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.n)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.g, ptr noundef align 1 %i.m, i64 noundef %i.f, i1 noundef false) #17
  %i.o = zext i32 %i.e to i64                     ; 4 uses
  %i.p = mul i64 %i.j, %i.o
  %i.q = getelementptr i8, ptr %i.i, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.m, ptr noundef align 1 %i.q, i64 noundef %i.f, i1 noundef false) #17
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load i64, ptr %i.b, align 8
  %i.u = mul i64 %i.t, %i.o
  %i.v = getelementptr i8, ptr %i.s, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.v, ptr noundef align 1 %i.g, i64 noundef %i.f, i1 noundef false) #17
  tail call void @g_free(ptr noundef %i.g)
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 %i.k     ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !range !13, !noundef !14
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.o
  %i.ab = load i8, ptr %i.aa, align 1, !range !13, !noundef !14
  store i8 %i.ab, ptr %i.y, align 1
  %i.ac = load ptr, ptr %i.d, align 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.o
  store i8 %i.z, ptr %i.ae, align 1
  %.not = icmp eq i32 %i.e, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @uat_get_actual_filename(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = tail call ptr @get_persconffile_path(ptr noundef %i.b, i1 noundef zeroext %i.e, ptr noundef %2) ; 4 uses
  br i1 %1, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @file_exists(ptr noundef %i.f)
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = tail call ptr @get_datafile_path(ptr noundef %i.h, ptr noundef %2) ; 3 uses
  %i.j = tail call zeroext i1 @file_exists(ptr noundef %i.i)
  br i1 %i.j, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_free(ptr noundef %i.i)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.1.ph = phi ptr [ null, %bb.d ], [ %i.i, %bb.c ]
  tail call void @g_free(ptr noundef %i.f)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.1 = phi ptr [ %i.f, %bb.b ], [ %i.f, %bb.a ], [ %.1.ph, %.sink.split ]
  ret ptr %.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @get_persconffile_path(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @file_exists(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @get_datafile_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @uat_get_table_by_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @all_uats, align 8         ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !17

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @strcmp(ptr noundef %i.g, ptr noundef %0) #19
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @uat_set_default_values(ptr nofree noundef writeonly captures(none) initializes((112, 120)) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @uat_fld_tostr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = getelementptr i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.d(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef %i.h)
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8
  switch i32 %i.j, label %bb.d [
    i32 0, label %bb.b
    i32 3, label %bb.b
    i32 10, label %bb.b
    i32 6, label %bb.b
    i32 7, label %bb.b
    i32 8, label %bb.b
    i32 9, label %bb.b
    i32 5, label %bb.b
    i32 1, label %bb.b
    i32 4, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = load i32, ptr %i.a, align 4
end_hunk_0
