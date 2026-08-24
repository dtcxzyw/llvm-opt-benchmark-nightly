Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_obj_tree?download=true
inline.NumInlined: 35
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lv_obj_set_parent:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = icmp eq ptr %i.n, %0
  br i1 %i.o, label %.lr.ph.split.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader13.i.preheader, label %bb.d, !llvm.loop !59

.preheader13.i.preheader:                         ; preds = %bb.e, %.preheader14.i
  br label %.preheader13.i

.preheader13.i:                                   ; preds = %.preheader13.i.preheader, %.preheader13.i
  br label %.preheader13.i

.lr.ph.split.split:                               ; preds = %bb.d
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.q = zext i16 %i.k to i32                     ; 2 uses
  %i.r = add nsw i32 %i.q, -2
  %.not4765 = icmp slt i32 %i.r, %i.p
  br i1 %.not4765, label %.split, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph.split.split
  %i.s = shl nuw nsw i64 %indvars.iv.i, 3         ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.l, i64 %i.s
  %i.t = getelementptr nuw i8, ptr %i.l, i64 %i.s
  %scevgep76 = getelementptr nuw i8, ptr %i.t, i64 8
  %i.u = trunc i64 %indvars.iv.i to i32
  %reass.sub = sub i32 %i.q, %i.u
  %i.v = add i32 %reass.sub, -2
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep76, i64 %i.y, i1 false), !tbaa !36
  br label %.split

.preheader.i50:                                   ; preds = %lv_obj_get_parent.exit.i, %.preheader.i50
  br label %.preheader.i50

.split:                                           ; preds = %.lr.ph67, %.lr.ph.split.split
  %i.z = add i16 %i.k, -1                         ; 3 uses
  store i16 %i.z, ptr %i.j, align 8, !tbaa !41
  %.not48 = icmp eq i16 %i.z, 0
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split
  %i.aa = zext i16 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call ptr @lv_realloc(ptr noundef nonnull %i.l, i64 noundef %i.ab) #7
  br label %lv_obj_get_child_count.exit54

bb.g:                                             ; preds = %.split
  tail call void @lv_free(ptr noundef nonnull %i.l) #7
  br label %lv_obj_get_child_count.exit54

lv_obj_get_child_count.exit54:                    ; preds = %bb.f, %bb.g
  %.sink = phi ptr [ %i.ac, %bb.f ], [ null, %bb.g ]
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !40
  store ptr %.sink, ptr %i.ad, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !41
  %i.ai = add i16 %i.ah, 1                        ; 2 uses
  store i16 %i.ai, ptr %i.ag, align 8, !tbaa !41
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !45
  %i.ak = zext i16 %i.ai to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = tail call ptr @lv_realloc(ptr noundef %i.aj, i64 noundef %i.al) #7 ; 2 uses
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !41
  %i.aq = zext i16 %i.ap to i64
  %i.ar = add nuw nsw i64 %i.aq, 4294967295
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.as
  store ptr %0, ptr %i.at, align 8, !tbaa !36
  store ptr %1, ptr %i.a, align 8, !tbaa !8
  tail call void @lv_obj_scrollbar_invalidate(ptr noundef nonnull %i.f) #7
  %i.au = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.f, i32 noundef 43, ptr noundef nonnull %0) #7 ; 0 uses
  %i.av = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.f, i32 noundef 45, ptr noundef null) #7 ; 0 uses
  %i.aw = tail call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 43, ptr noundef nonnull %0) #7 ; 0 uses
  %i.ax = tail call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 44, ptr noundef null) #7 ; 0 uses
  tail call void @lv_obj_mark_layout_as_dirty(ptr noundef nonnull %0) #7
  %i.ay = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %lv_obj_get_child_count.exit54
  ret void
}

declare void @lv_obj_allocate_spec_attr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 65535) i32 @lv_obj_get_index(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %lv_obj_get_parent.exit

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

lv_obj_get_parent.exit:                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %.preheader14

.preheader14:                                     ; preds = %lv_obj_get_parent.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load i16, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %.not17 = icmp eq i16 %i.g, 0
  br i1 %.not17, label %.preheader13.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader14
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !45
  %wide.trip.count = zext i16 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %.loopexit.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader13.preheader, label %bb.b, !llvm.loop !59

.preheader13.preheader:                           ; preds = %bb.c, %.preheader14
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.preheader, %.preheader13
  br label %.preheader13

.loopexit.loopexit:                               ; preds = %bb.b
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %lv_obj_get_parent.exit
  %.010 = phi i32 [ -1, %lv_obj_get_parent.exit ], [ %i.l, %.loopexit.loopexit ]
  ret i32 %.010
}

declare ptr @lv_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lv_free(ptr noundef) local_unnamed_addr #1

declare void @lv_obj_mark_layout_as_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @lv_obj_move_to_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %lv_obj_get_parent.exit

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

lv_obj_get_parent.exit:                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %.not41 = icmp eq ptr %i.b, null
  br i1 %.not41, label %bb.h, label %bb.b

bb.b:                                             ; preds = %lv_obj_get_parent.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.preheader14.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.g = load i16, ptr %i.f, align 8, !tbaa !41
  %i.h = zext i16 %i.g to i32
  br label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.b, %bb.c
  %.0.i44 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.j = load i16, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %.not17.i = icmp eq i16 %i.j, 0
  br i1 %.not17.i, label %.preheader13.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader14.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !45
  %wide.trip.count.i = zext i16 %i.j to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 8 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader13.i.preheader, label %bb.d, !llvm.loop !59

.preheader13.i.preheader:                         ; preds = %bb.e, %.preheader14.i
  br label %.preheader13.i

.preheader13.i:                                   ; preds = %.preheader13.i.preheader, %.preheader13.i
  br label %.preheader13.i

bb.f:                                             ; preds = %bb.d
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32   ; 4 uses
  %i.p = icmp slt i32 %1, 0
  %i.q = select i1 %i.p, i32 %.0.i44, i32 0
  %spec.select = add i32 %i.q, %1                 ; 8 uses
  %i.r = icmp slt i32 %spec.select, 0
  %.not42 = icmp sge i32 %spec.select, %.0.i44
  %or.cond.not48 = select i1 %i.r, i1 true, i1 %.not42
  %i.s = icmp eq i32 %spec.select, %i.o
  %or.cond43 = or i1 %or.cond.not48, %i.s
  br i1 %or.cond43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp samesign ult i32 %spec.select, %i.o
  br i1 %i.t, label %.preheader49.a, label %.preheader50

.preheader50:                                     ; preds = %bb.g
  %i.u = icmp samesign ugt i32 %spec.select, %i.o
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !45  ; 4 uses
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader50
  %i.v = shl nuw nsw i64 %indvars.iv.i, 3         ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %.pre, i64 %i.v
  %i.w = getelementptr nuw i8, ptr %.pre, i64 %i.v
  %scevgep58 = getelementptr nuw i8, ptr %i.w, i64 8
  %i.x = xor i32 %i.o, -1
  %i.y = add nsw i32 %spec.select, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep58, i64 %i.ab, i1 false), !tbaa !36
  br label %.loopexit

.preheader49.a:                                   ; preds = %bb.g
  %2 = load ptr, ptr %i.d, align 8, !tbaa !45     ; 4 uses
  %3 = zext nneg i32 %spec.select to i64          ; 2 uses
  %4 = sub nsw i64 %indvars.iv.i, %3              ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader49.a
  %n.vec = and i64 %4, -4                         ; 3 uses
  %5 = sub i64 %indvars.iv.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %6 = sub i64 %indvars.iv.i, %index
  %i.ac = getelementptr [8 x i8], ptr %2, i64 %6  ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -16
  %i.ae = getelementptr i8, ptr %i.ac, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !36
  %wide.load66 = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !36
  %i.af = getelementptr i8, ptr %i.ac, i64 -8
  %i.ag = getelementptr i8, ptr %i.ac, i64 -24
  store <2 x ptr> %wide.load, ptr %i.af, align 8, !tbaa !36
  store <2 x ptr> %wide.load66, ptr %i.ag, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader49.a, %middle.block
  %indvars.iv.ph = phi i64 [ %indvars.iv.i, %.preheader49.a ], [ %5, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !36
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.al = icmp sgt i64 %indvars.iv.next, %3
  br i1 %i.al, label %scalar.ph, label %.loopexit, !llvm.loop !70

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.lr.ph, %.preheader50
  %i.am = phi ptr [ %.pre, %.lr.ph ], [ %.pre, %.preheader50 ], [ %2, %middle.block ], [ %2, %scalar.ph ]
  %i.an = zext nneg i32 %spec.select to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  store ptr %0, ptr %i.ao, align 8, !tbaa !36
  %i.ap = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.b, i32 noundef 43, ptr noundef null) #7 ; 0 uses
  %i.aq = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %i.b) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.f, %lv_obj_get_parent.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_swap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq ptr %1, null
  br i1 %.not35, label %.preheader53, label %lv_obj_get_parent.exit.i

.preheader53:                                     ; preds = %bb.b, %.preheader53
  br label %.preheader53

lv_obj_get_parent.exit.i:                         ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 9 uses
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %lv_obj_get_parent.exit.i40, label %.preheader14.i

.preheader14.i:                                   ; preds = %lv_obj_get_parent.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i16, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %.not17.i = icmp eq i16 %i.i, 0
  br i1 %.not17.i, label %.preheader13.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader14.i
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !45
  %wide.trip.count.i = zext i16 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %lv_obj_get_parent.exit.i40, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader13.i.preheader, label %bb.c, !llvm.loop !59

.preheader13.i.preheader:                         ; preds = %bb.d, %.preheader14.i
  br label %.preheader13.i

.preheader13.i:                                   ; preds = %.preheader13.i.preheader, %.preheader13.i
  br label %.preheader13.i

lv_obj_get_parent.exit.i40:                       ; preds = %bb.c, %lv_obj_get_parent.exit.i
  %.010.i = phi i64 [ -1, %lv_obj_get_parent.exit.i ], [ %indvars.iv.i, %bb.c ]
  %i.n = icmp eq ptr %i.d, null
  br i1 %i.n, label %lv_obj_get_index.exit52, label %.preheader14.i41

.preheader14.i41:                                 ; preds = %lv_obj_get_parent.exit.i40
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load i16, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  %.not17.i42 = icmp eq i16 %i.r, 0
  br i1 %.not17.i42, label %.preheader13.i48.preheader, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.preheader14.i41
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !45
  %wide.trip.count.i44 = zext i16 %i.r to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i43
  %indvars.iv.i45 = phi i64 [ 0, %.lr.ph.i43 ], [ %indvars.iv.next.i46, %bb.f ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i45
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %lv_obj_get_index.exit52, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, %wide.trip.count.i44
  br i1 %exitcond.not.i47, label %.preheader13.i48.preheader, label %bb.e, !llvm.loop !59

.preheader13.i48.preheader:                       ; preds = %bb.f, %.preheader14.i41
  br label %.preheader13.i48

.preheader13.i48:                                 ; preds = %.preheader13.i48.preheader, %.preheader13.i48
  br label %.preheader13.i48

lv_obj_get_index.exit52:                          ; preds = %bb.e, %lv_obj_get_parent.exit.i40
  %.010.i50 = phi i64 [ -1, %lv_obj_get_parent.exit.i40 ], [ %indvars.iv.i45, %bb.e ]
  %i.w = tail call i32 @lv_obj_send_event(ptr noundef %i.d, i32 noundef 45, ptr noundef nonnull %1) #7 ; 0 uses
  %i.x = tail call i32 @lv_obj_send_event(ptr noundef %i.b, i32 noundef 45, ptr noundef nonnull %0) #7 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.010.i
  store ptr %1, ptr %i.ab, align 8, !tbaa !36
  store ptr %i.b, ptr %i.c, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.010.i50
  store ptr %0, ptr %i.af, align 8, !tbaa !36
  store ptr %i.d, ptr %i.a, align 8, !tbaa !8
  %i.ag = tail call i32 @lv_obj_send_event(ptr noundef %i.b, i32 noundef 43, ptr noundef nonnull %1) #7 ; 0 uses
  %i.ah = tail call i32 @lv_obj_send_event(ptr noundef %i.b, i32 noundef 44, ptr noundef nonnull %1) #7 ; 0 uses
  %i.ai = tail call i32 @lv_obj_send_event(ptr noundef %i.d, i32 noundef 43, ptr noundef nonnull %0) #7 ; 0 uses
  %i.aj = tail call i32 @lv_obj_send_event(ptr noundef %i.d, i32 noundef 44, ptr noundef nonnull %0) #7 ; 0 uses
  %i.ak = tail call i32 @lv_obj_invalidate(ptr noundef %i.b) #7 ; 0 uses
  %.not36 = icmp eq ptr %i.b, %i.d
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %lv_obj_get_index.exit52
  %i.al = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %i.d) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %lv_obj_get_index.exit52
  tail call void @lv_group_swap_obj(ptr noundef nonnull %0, ptr noundef nonnull %1) #7
  ret void
}

declare void @lv_group_swap_obj(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define nonnull ptr @lv_obj_get_screen(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader8

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

.preheader8:                                      ; preds = %bb.a, %.preheader8
  %.0 = phi ptr [ %i.b, %.preheader8 ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.b, label %.preheader8, !llvm.loop !39

bb.b:                                             ; preds = %.preheader8
  ret ptr %.0
}

declare ptr @lv_ll_get_head(ptr noundef) local_unnamed_addr #1

declare ptr @lv_ll_get_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @lv_obj_get_child(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %1, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = load i16, ptr %i.e, align 8, !tbaa !41
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  br i1 %i.d, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %1, %i.g                     ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ %1, %bb.c ]    ; 2 uses
  %.not19 = icmp samesign ult i32 %.0, %i.g
  br i1 %.not19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.k = zext nneg i32 %.0 to i64
end_hunk_0
begin_hunk_1_@walk_core:bb.a

.loopexit:                                        ; preds = %lv_obj_get_child.exit, %._crit_edge, %bb.b, %bb.d, %.critedge
  %.1 = phi i32 [ %i.n, %bb.d ], [ 2, %bb.b ], [ 0, %.critedge ], [ 2, %._crit_edge ], [ 2, %lv_obj_get_child.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define void @lv_obj_dump_tree(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @lv_display_get_next(ptr noundef null) #7 ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %.0812 = phi ptr [ %i.i, %._crit_edge ], [ %i.b, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0812, i64 840
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %.0812, i64 784
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %wide.trip.count = zext i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  tail call fastcc void @dump_tree_core(ptr noundef %i.h, i32 noundef 0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.i = tail call ptr @lv_display_get_next(ptr noundef nonnull %.0812) #7 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !82

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @dump_tree_core(ptr noundef nonnull %0, i32 noundef 0)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %bb.d
  ret void
}

declare ptr @lv_display_get_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dump_tree_core(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i16, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %.not11 = icmp eq i16 %i.d, 0
  br i1 %.not11, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.f = add nsw i32 %1, 1
  %wide.trip.count = zext i16 %i.d to i64
  br label %lv_obj_get_child.exit

lv_obj_get_child.exit:                            ; preds = %.preheader, %lv_obj_get_child.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %lv_obj_get_child.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  tail call fastcc void @dump_tree_core(ptr noundef %i.h, i32 noundef %i.f)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %lv_obj_get_child.exit, !llvm.loop !83

.loopexit:                                        ; preds = %lv_obj_get_child.exit, %bb.c, %bb.b, %bb.a
  ret void
}

declare void @lv_event_remove_all(ptr noundef) local_unnamed_addr #1

declare ptr @lv_obj_get_group(ptr noundef) local_unnamed_addr #1

declare ptr @lv_indev_get_next(ptr noundef) local_unnamed_addr #1

declare i32 @lv_indev_get_type(ptr noundef) local_unnamed_addr #1

declare ptr @lv_indev_get_active_obj() local_unnamed_addr #1

declare i32 @lv_async_call_cancel(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lv_obj_destruct(ptr noundef) local_unnamed_addr #1

declare i32 @lv_indev_get_state(ptr noundef) local_unnamed_addr #1

declare void @lv_indev_wait_release(ptr noundef) local_unnamed_addr #1

declare void @lv_indev_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"_lv_obj_t", !10, i64 0, !12, i64 8, !13, i64 16, !14, i64 24, !11, i64 32, !15, i64 40, !5, i64 56, !16, i64 60, !16, i64 62, !16, i64 62, !16, i64 62, !16, i64 62, !16, i64 62, !16, i64 63, !16, i64 63, !16, i64 63, !16, i64 63, !16, i64 63, !16, i64 63, !16, i64 64}
!10 = !{!"p1 _ZTS15_lv_obj_class_t", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS9_lv_obj_t", !11, i64 0}
!13 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !11, i64 0}
!14 = !{!"p1 _ZTS15_lv_obj_style_t", !11, i64 0}
!15 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!16 = !{!"short", !6, i64 0}
!17 = !{!18, !5, i64 840}
!18 = !{!"_lv_display_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !11, i64 64, !11, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 96, !5, i64 97, !5, i64 97, !5, i64 100, !6, i64 104, !6, i64 616, !5, i64 648, !5, i64 652, !20, i64 656, !22, i64 680, !22, i64 720, !25, i64 760, !11, i64 768, !11, i64 776, !26, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !12, i64 832, !5, i64 840, !6, i64 844, !6, i64 844, !11, i64 848, !11, i64 856, !28, i64 864, !5, i64 896, !5, i64 896, !31, i64 904, !32, i64 912, !5, i64 920, !15, i64 924, !5, i64 940}
!19 = !{!"p1 _ZTS14_lv_draw_buf_t", !11, i64 0}
!20 = !{!"", !5, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"p1 omnipotent char", !11, i64 0}
!22 = !{!"_lv_draw_buf_t", !23, i64 0, !5, i64 12, !21, i64 16, !11, i64 24, !24, i64 32}
!23 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 4, !5, i64 6, !5, i64 8, !5, i64 10}
!24 = !{!"p1 _ZTS23_lv_draw_buf_handlers_t", !11, i64 0}
!25 = !{!"p1 _ZTS11_lv_layer_t", !11, i64 0}
!26 = !{!"p2 _ZTS9_lv_obj_t", !27, i64 0}
!27 = !{!"any p2 pointer", !11, i64 0}
!28 = !{!"", !29, i64 0, !6, i64 24, !6, i64 24}
!29 = !{!"_lv_array_t", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !30, i64 20}
!30 = !{!"_Bool", !6, i64 0}
!31 = !{!"p1 _ZTS11_lv_theme_t", !11, i64 0}
!32 = !{!"p1 _ZTS11_lv_timer_t", !11, i64 0}
!33 = !{!18, !26, i64 784}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!12, !12, i64 0}
!37 = distinct !{!37, !35}
!38 = !{!18, !12, i64 808}
!39 = distinct !{!39, !35}
!40 = !{!9, !13, i64 16}
!41 = !{!42, !16, i64 64}
!42 = !{!"_lv_obj_spec_attr_t", !26, i64 0, !43, i64 8, !28, i64 16, !44, i64 48, !5, i64 56, !5, i64 60, !16, i64 64, !16, i64 66, !16, i64 66, !16, i64 66, !16, i64 66, !16, i64 67, !16, i64 67}
!43 = !{!"p1 _ZTS11_lv_group_t", !11, i64 0}
!44 = !{!"", !5, i64 0, !5, i64 4}
!45 = !{!42, !26, i64 0}
!46 = distinct !{!46, !35}
!47 = !{!48, !12, i64 256}
!48 = !{!"_lv_indev_t", !5, i64 0, !11, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !6, i64 28, !6, i64 28, !6, i64 28, !6, i64 28, !6, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !11, i64 48, !11, i64 56, !49, i64 64, !32, i64 72, !6, i64 80, !6, i64 81, !6, i64 82, !6, i64 83, !16, i64 84, !16, i64 86, !5, i64 88, !50, i64 96, !44, i64 336, !12, i64 344, !43, i64 352, !11, i64 360, !28, i64 368, !51, i64 400, !11, i64 408}
!49 = !{!"p1 _ZTS13_lv_display_t", !11, i64 0}
!50 = !{!"", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !6, i64 32, !6, i64 96, !6, i64 128, !44, i64 132, !44, i64 140, !44, i64 148, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !15, i64 192, !44, i64 208, !5, i64 216, !6, i64 220, !44, i64 224, !5, i64 232, !6, i64 236, !6, i64 236, !6, i64 237, !6, i64 237, !6, i64 237}
!51 = !{!"p1 _ZTS10_lv_anim_t", !11, i64 0}
!52 = !{!48, !12, i64 264}
!53 = !{!48, !12, i64 272}
!54 = !{!48, !12, i64 280}
!55 = !{!48, !43, i64 352}
!56 = distinct !{!56, !35}
!57 = distinct !{!57, !35}
!58 = distinct !{!58, !35}
!59 = distinct !{!59, !35}
!60 = distinct !{!60, !35}
!61 = distinct !{!61, !35}
!62 = distinct !{!62, !35}
!63 = !{!42, !5, i64 48}
!64 = !{!42, !5, i64 52}
!65 = !{!66, !11, i64 0}
!66 = !{!"_lv_anim_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !6, i64 108, !5, i64 116, !5, i64 120, !5, i64 124, !6, i64 128, !6, i64 128, !6, i64 128, !6, i64 128, !6, i64 128}
!67 = distinct !{!67, !35, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = distinct !{!70, !35, !69, !68}
!71 = !{!9, !10, i64 0}
!72 = distinct !{!72, !35}
!73 = distinct !{!73, !35}
!74 = distinct !{!74, !35}
!75 = distinct !{!75, !35}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !35}
!79 = distinct !{!79, !35}
!80 = distinct !{!80, !35}
!81 = distinct !{!81, !35}
!82 = distinct !{!82, !35}
!83 = distinct !{!83, !35}
end_hunk_1
