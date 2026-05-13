inline.NumInlined: 231
inline.NumDeleted: 74
begin_hunk_0_@rb_shape_foreach_field:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.4) #15
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.e ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_default_shapes() local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = tail call ptr @rb_gc_heap_sizes() #14    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ]     ; 8 uses
  %i.c = getelementptr [8 x i8], ptr %i.b, i64 %.0
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  %.not = icmp eq i64 %i.d, 0
  %i.e = add i64 %.0, 1                           ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !71

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.e, i64 noundef 2) #17 ; 4 uses
  %i.g = getelementptr [2 x i8], ptr %i.f, i64 %.0
  store i16 0, ptr %i.g, align 2, !tbaa !56
  %.not28 = icmp eq i64 %.0, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %min.iters.check = icmp ult i64 %.0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %.0, -4                        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %wide.load = load <2 x i64>, ptr %i.h, align 8, !tbaa !41
  %wide.load37 = load <2 x i64>, ptr %i.i, align 8, !tbaa !41
  %i.j = add <2 x i64> %wide.load, splat (i64 524272)
  %i.k = add <2 x i64> %wide.load37, splat (i64 524272)
  %i.l = lshr <2 x i64> %i.j, splat (i64 3)
  %i.m = lshr <2 x i64> %i.k, splat (i64 3)
  %i.n = trunc <2 x i64> %i.l to <2 x i16>
  %i.o = trunc <2 x i64> %i.m to <2 x i16>
  %i.p = getelementptr [2 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  store <2 x i16> %i.n, ptr %i.p, align 2, !tbaa !56
  store <2 x i16> %i.o, ptr %i.q, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader39

.lr.ph.preheader39:                               ; preds = %.lr.ph.preheader, %middle.block
  %.02127.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader39, %.lr.ph
  %.02127 = phi i64 [ %i.y, %.lr.ph ], [ %.02127.ph, %.lr.ph.preheader39 ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.b, i64 %.02127
  %i.t = load i64, ptr %i.s, align 8, !tbaa !41
  %i.u = add i64 %i.t, 524272
  %i.v = lshr i64 %i.u, 3
  %i.w = trunc i64 %i.v to i16
  %i.x = getelementptr [2 x i8], ptr %i.f, i64 %.02127
  store i16 %i.w, ptr %i.x, align 2, !tbaa !56
  %i.y = add nuw i64 %.02127, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %.0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !76
  %i.z = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !41
  %i.aa = tail call i64 @rb_size_mul_or_raise(i64 noundef 524288, i64 noundef 40, i64 noundef %i.z) #14 ; 2 uses
  %i.ab = tail call ptr @mmap(ptr noundef null, i64 noundef %i.aa, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #14 ; 3 uses
  store ptr %i.ab, ptr @rb_shape_tree, align 8, !tbaa !17
  %i.ac = icmp eq ptr %i.ab, inttoptr (i64 -1 to ptr)
  br i1 %i.ac, label %.thread, label %bb.d

.thread:                                          ; preds = %._crit_edge
  store ptr null, ptr @rb_shape_tree, align 8, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  tail call void @ruby_annotate_mmap(ptr noundef %i.ab, i64 noundef %i.aa, ptr noundef nonnull @.str.5) #14
  %.pr = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17
  %.not24 = icmp eq ptr %.pr, null
  br i1 %.not24, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  tail call void @rb_memerror() #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = tail call i64 @rb_make_internal_id() #14
  store i64 %i.ad, ptr @id_object_id, align 8, !tbaa !41
  %i.ae = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !41
  %i.af = tail call i64 @rb_size_mul_or_raise(i64 noundef 16777216, i64 noundef 24, i64 noundef %i.ae) #14 ; 2 uses
  %i.ag = tail call ptr @mmap(ptr noundef null, i64 noundef %i.af, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #14 ; 3 uses
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 32), align 8, !tbaa !77
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 40), align 8, !tbaa !78
  %i.ah = icmp eq ptr %i.ag, inttoptr (i64 -1 to ptr)
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 32), align 8, !tbaa !77
  store i32 16777216, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 40), align 8, !tbaa !78
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @ruby_annotate_mmap(ptr noundef %i.ag, i64 noundef %i.af, ptr noundef nonnull @.str.6) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @rb_gc_register_address(ptr noundef nonnull @shape_tree_obj) #14
  %i.ai = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @shape_tree_type) #14
  store i64 %i.ai, ptr @shape_tree_obj, align 8, !tbaa !41
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.aj = load atomic volatile i32, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 24) seq_cst, align 8 ; 5 uses
  %i.ak = icmp ugt i32 %i.aj, 524287
  br i1 %i.ak, label %rb_shape_alloc_with_parent_id.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nuw nsw i32 %i.aj, 1
  %i.am = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 24), i32 %i.aj, i32 %i.al seq_cst seq_cst, align 4
  %i.an = extractvalue { i32, i1 } %i.am, 0
  %.not.i.i = icmp eq i32 %i.aj, %i.an
  br i1 %.not.i.i, label %shape_alloc.exit.i, label %bb.j, !llvm.loop !79

shape_alloc.exit.i:                               ; preds = %bb.k
  %i.ao = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr [40 x i8], ptr %i.ao, i64 %i.ap ; 6 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %rb_shape_alloc_with_parent_id.exit, label %bb.l

bb.l:                                             ; preds = %shape_alloc.exit.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !48
  %i.as = getelementptr i8, ptr %i.aq, i64 28
  store i16 0, ptr %i.as, align 4, !tbaa !52
  %i.at = getelementptr i8, ptr %i.aq, i64 24
  store i32 -1, ptr %i.at, align 8, !tbaa !38
  store i64 0, ptr %i.aq, align 8, !tbaa !70
  br label %rb_shape_alloc_with_parent_id.exit

rb_shape_alloc_with_parent_id.exit:               ; preds = %bb.j, %shape_alloc.exit.i, %bb.l
  %.0.i = phi ptr [ %i.aq, %bb.l ], [ null, %shape_alloc.exit.i ], [ null, %bb.j ] ; 4 uses
  %i.au = getelementptr i8, ptr %.0.i, i64 30
  store i16 0, ptr %i.au, align 2, !tbaa !80
  %i.av = getelementptr i8, ptr %.0.i, i64 32
  store i8 0, ptr %i.av, align 8, !tbaa !43
  store ptr %.0.i, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 8), align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.aw = load i64, ptr @id_object_id, align 8, !tbaa !41
  %i.ax = call fastcc ptr @get_next_shape_internal(ptr noundef %.0.i, i64 noundef %i.aw, i32 noundef 2, ptr noundef %i.a, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare ptr @rb_gc_heap_sizes() local_unnamed_addr #8

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #9

declare i64 @rb_size_mul_or_raise(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

declare void @ruby_annotate_mmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: cold noreturn
declare void @rb_memerror() local_unnamed_addr #3

declare i64 @rb_make_internal_id() local_unnamed_addr #8

declare void @rb_gc_register_address(ptr noundef) local_unnamed_addr #8

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @get_next_shape_internal(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 0, 256) %2, ptr noundef nonnull writeonly captures(none) initializes((0, 1)) %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.e, null
  store i8 0, ptr %3, align 1, !tbaa !54
  br i1 %.not.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %.split49.i, label %.split49.us.i

.split49.us.i:                                    ; preds = %bb.b
  %i.f = load atomic ptr, ptr %0 seq_cst, align 8 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 3 uses
  %.not.us.i = icmp eq ptr %i.f, null
  br i1 %.not.us.i, label %get_next_shape_internal_atomic.exit, label %bb.c

bb.c:                                             ; preds = %.split49.us.i
  %i.h = and i64 %i.g, 1
  %.not39.us.i = icmp eq i64 %i.h, 0
  br i1 %.not39.us.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.g, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48
  %i.m = icmp eq i64 %i.l, %1
  %spec.select.us.i = select i1 %i.m, ptr %i.j, ptr null
  br label %get_next_shape_internal_atomic.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.n = call i32 @rb_managed_id_table_lookup(i64 noundef %i.g, i64 noundef %1, ptr noundef nonnull %i.a) #14
  %.not40.us.i = icmp eq i32 %i.n, 0
  %i.o = load i64, ptr %i.a, align 8
  %i.p = inttoptr i64 %i.o to ptr
  %.2.us.i = select i1 %.not40.us.i, ptr null, ptr %i.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %get_next_shape_internal_atomic.exit

.split49.i:                                       ; preds = %bb.b, %bb.n
  %i.q = load atomic ptr, ptr %0 seq_cst, align 8 ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 6 uses
  %.not.i44 = icmp eq ptr %i.q, null
  br i1 %.not.i44, label %.thread55.thread.i, label %bb.f

bb.f:                                             ; preds = %.split49.i
  %i.s = and i64 %i.r, 1
  %.not39.i = icmp eq i64 %i.s, 0
  br i1 %.not39.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = and i64 %i.r, -2                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !48
  %i.x = icmp eq i64 %i.w, %1
  br i1 %i.x, label %get_next_shape_internal_atomic.exit, label %.thread55.i.thread

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.y = call i32 @rb_managed_id_table_lookup(i64 noundef %i.r, i64 noundef %1, ptr noundef nonnull %i.a) #14
  %.not40.i = icmp eq i32 %i.y, 0
  %i.z = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.not40.i, label %.thread55.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.thread60.i, label %get_next_shape_internal_atomic.exit.loopexit.split.loop.exit48

.thread55.i:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ab = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %2) ; 2 uses
  %.not41.i = icmp eq ptr %i.ab, null
  br i1 %.not41.i, label %.thread.i, label %.thread62.i

.thread55.i.thread:                               ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ac = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %2) ; 2 uses
  %.not41.i46 = icmp eq ptr %i.ac, null
  br i1 %.not41.i46, label %.thread.i, label %bb.j

.thread55.thread.i:                               ; preds = %.split49.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ad = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %2) ; 3 uses
  %.not4163.i = icmp eq ptr %i.ad, null
  br i1 %.not4163.i, label %.thread.i, label %.split.i

.thread60.i:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ae = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %2) ; 2 uses
  %.not4161.i = icmp eq ptr %i.ae, null
  br i1 %.not4161.i, label %.thread.i, label %.thread62.i

.split.i:                                         ; preds = %.thread55.thread.i
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = or i64 %i.af, 1                         ; 2 uses
  store i64 %i.ag, ptr %i.b, align 8, !tbaa !41
  %i.ah = cmpxchg volatile ptr %0, i64 0, i64 %i.ag seq_cst seq_cst, align 8
  br label %bb.k

bb.j:                                             ; preds = %.thread55.i.thread
  %i.ai = call i64 @rb_managed_id_table_new(i64 noundef 2) #14 ; 3 uses
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !41
  %i.aj = load i64, ptr %i.v, align 8, !tbaa !48
  %i.ak = call i32 @rb_managed_id_table_insert(i64 noundef %i.ai, i64 noundef %i.aj, i64 noundef %i.t) #14 ; 0 uses
  br label %.split35.i

.thread62.i:                                      ; preds = %.thread60.i, %.thread55.i
  %i.al = phi ptr [ %i.ab, %.thread55.i ], [ %i.ae, %.thread60.i ]
  %i.am = call i64 @rb_managed_id_table_dup(i64 noundef %i.r) #14 ; 2 uses
  store i64 %i.am, ptr %i.b, align 8, !tbaa !41
  br label %.split35.i

.split35.i:                                       ; preds = %.thread62.i, %bb.j
  %i.an = phi ptr [ %i.al, %.thread62.i ], [ %i.ac, %bb.j ] ; 3 uses
  %i.ao = phi i64 [ %i.am, %.thread62.i ], [ %i.ai, %bb.j ] ; 2 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !48
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = call i32 @rb_managed_id_table_insert(i64 noundef %i.ao, i64 noundef %i.aq, i64 noundef %i.ar) #14 ; 0 uses
  store i8 1, ptr %3, align 1, !tbaa !54
  %i.at = cmpxchg volatile ptr %0, i64 %i.r, i64 %i.ao seq_cst seq_cst, align 8
  br label %bb.k

bb.k:                                             ; preds = %.split35.i, %.split.i
  %i.au = phi ptr [ %i.ad, %.split.i ], [ %i.an, %.split35.i ]
  %.pn.i = phi { i64, i1 } [ %i.ah, %.split.i ], [ %i.at, %.split35.i ]
  %phi.call.i = extractvalue { i64, i1 } %.pn.i, 0
  %.not43.i = icmp eq i64 %phi.call.i, %i.r
  br i1 %.not43.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.av = load i64, ptr %i.b, align 8, !tbaa !41  ; 3 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = and i64 %i.av, 7
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = or i1 %i.aw, %i.ay
  br i1 %i.az, label %rb_obj_written.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load i64, ptr @shape_tree_obj, align 8, !tbaa !41
  call void @rb_gc_writebarrier(i64 noundef %i.ba, i64 noundef %i.av) #14
  br label %rb_obj_written.exit.i

rb_obj_written.exit.i:                            ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr %i.b, ptr %i.c, align 8, !tbaa !83
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #14, !srcloc !84
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.bc = load volatile i64, ptr %i.bb, align 8, !tbaa !41 ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %.thread55.i.thread, %.thread60.i, %.thread55.thread.i, %.thread55.i, %rb_obj_written.exit.i
  %i.bd = phi ptr [ %i.au, %rb_obj_written.exit.i ], [ null, %.thread55.i ], [ null, %.thread55.thread.i ], [ null, %.thread60.i ], [ null, %.thread55.i.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %get_next_shape_internal_atomic.exit

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.split49.i

bb.o:                                             ; preds = %bb.a
  %i.be = load i64, ptr %0, align 8, !tbaa !70    ; 6 uses
  %.not = icmp eq i64 %i.be, 0                    ; 2 uses
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = and i64 %i.be, 1
  %.not39 = icmp eq i64 %i.bf, 0
  br i1 %.not39, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = and i64 %i.be, -2
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !48
  %i.bk = icmp eq i64 %i.bj, %1
  %spec.select = select i1 %i.bk, ptr %i.bh, ptr null
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.bl = call i32 @rb_managed_id_table_lookup(i64 noundef %i.be, i64 noundef %1, ptr noundef nonnull %i.d) #14
  %.not40 = icmp eq i32 %i.bl, 0
  %i.bm = load i64, ptr %i.d, align 8
  %i.bn = inttoptr i64 %i.bm to ptr
  %.1 = select i1 %.not40, ptr null, ptr %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %.2 = phi ptr [ %spec.select, %bb.q ], [ %.1, %bb.r ], [ null, %bb.o ] ; 2 uses
  %.not41 = icmp eq ptr %.2, null
  %brmerge.not = and i1 %4, %.not41
  br i1 %brmerge.not, label %bb.t, label %get_next_shape_internal_atomic.exit

bb.t:                                             ; preds = %bb.s
  %i.bo = load atomic volatile i32, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 24) seq_cst, align 8
  %i.bp = icmp ugt i32 %i.bo, 524287
  br i1 %i.bp, label %get_next_shape_internal_atomic.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef %2) ; 5 uses
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = or i64 %i.br, 1
  store i64 %i.bs, ptr %0, align 8, !tbaa !70
  br label %get_next_shape_internal_atomic.exit

bb.w:                                             ; preds = %bb.u
  %i.bt = and i64 %i.be, 1
  %.not42 = icmp eq i64 %i.bt, 0
  br i1 %.not42, label %rb_obj_write.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = and i64 %i.be, -2                       ; 2 uses
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = call i64 @rb_managed_id_table_new(i64 noundef 2) #14 ; 5 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !48
  %i.bz = call i32 @rb_managed_id_table_insert(i64 noundef %i.bw, i64 noundef %i.by, i64 noundef %i.bu) #14 ; 0 uses
  %i.ca = load i64, ptr @shape_tree_obj, align 8, !tbaa !41
  store i64 %i.bw, ptr %0, align 8, !tbaa !41
  %i.cb = icmp eq i64 %i.bw, 0
  %i.cc = and i64 %i.bw, 7
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = or i1 %i.cb, %i.cd
  br i1 %i.ce, label %rb_obj_write.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @rb_gc_writebarrier(i64 noundef %i.ca, i64 noundef %i.bw) #14
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.y, %bb.x, %bb.w
  %i.cf = load i64, ptr %0, align 8, !tbaa !70
  %i.cg = getelementptr i8, ptr %i.bq, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !48
  %i.ci = ptrtoint ptr %i.bq to i64
  %i.cj = call i32 @rb_managed_id_table_insert(i64 noundef %i.cf, i64 noundef %i.ch, i64 noundef %i.ci) #14 ; 0 uses
  store i8 1, ptr %3, align 1, !tbaa !54
  br label %get_next_shape_internal_atomic.exit

get_next_shape_internal_atomic.exit.loopexit.split.loop.exit48: ; preds = %bb.i
  %i.ck = inttoptr i64 %i.z to ptr
  br label %get_next_shape_internal_atomic.exit

get_next_shape_internal_atomic.exit:              ; preds = %bb.g, %get_next_shape_internal_atomic.exit.loopexit.split.loop.exit48, %.thread.i, %bb.e, %bb.d, %.split49.us.i, %bb.s, %bb.t, %rb_obj_write.exit, %bb.v
  %.0 = phi ptr [ %i.bq, %rb_obj_write.exit ], [ %.2, %bb.s ], [ %i.bq, %bb.v ], [ null, %bb.t ], [ %i.bd, %.thread.i ], [ null, %.split49.us.i ], [ %spec.select.us.i, %bb.d ], [ %.2.us.i, %bb.e ], [ %i.ck, %get_next_shape_internal_atomic.exit.loopexit.split.loop.exit48 ], [ %i.u, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_shape_free_all() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !76
  tail call void @ruby_xfree(ptr noundef %i.a) #14
  ret void
}

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden void @Init_shape() local_unnamed_addr #7 {
bb.a:
  ret void
}

declare ptr @rb_current_box() local_unnamed_addr #8

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.d = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, 65536
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %RCLASS_CLASSEXT_TBL.exit.i

RCLASS_CLASSEXT_TBL.exit.i:                       ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %bb.b

bb.b:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i
  %i.i = load i64, ptr %1, align 8, !tbaa !87
  %i.j = call i32 @rb_st_lookup(ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noundef nonnull %i.b) #14
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread:     ; preds = %bb.b, %RCLASS_CLASSEXT_TBL.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.c

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit:            ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.m = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !81
  %.not.i.i25 = icmp eq ptr %i.m, null
  br i1 %.not.i.i25, label %bb.d, label %rb_vm_lock_enter.exit

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #14
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.c, %bb.d
  %i.n = getelementptr i8, ptr %i.d, i64 160      ; 6 uses
  %i.o = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  %i.p = icmp ne i64 %0, 0
end_hunk_0
