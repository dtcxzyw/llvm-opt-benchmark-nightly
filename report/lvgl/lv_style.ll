Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_style?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
begin_hunk_0_@lv_style_merge:bb.a
  %i.cj = zext i8 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next53, %i.cj
  br i1 %i.ck, label %.lr.ph44.split, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %lv_style_set_prop.exit, %lv_style_set_prop.exit39, %.preheader, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_style_set_prop(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12         ; 5 uses
  %.val = load i8, ptr %i.a, align 4, !tbaa !11   ; 3 uses
  %i.b = icmp eq i8 %.val, -1
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b, %.preheader
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %.not44 = icmp eq ptr %i.c, null
  %.pre51 = zext i8 %.val to i64                  ; 3 uses
  br i1 %.not44, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = shl nuw nsw i64 %.pre51, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %.not56 = icmp eq i8 %.val, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.f = icmp sgt i64 %indvars.iv54, 1
  br i1 %i.f, label %.lr.ph, label %.loopexit, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %indvars.iv54 = phi i64 [ %indvars.iv.next, %bb.e ], [ %.pre51, %bb.d ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv54, -1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = icmp eq i8 %i.h, %1
  br i1 %i.i, label %bb.f, label %bb.e, !llvm.loop !0

bb.f:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  store ptr %2, ptr %i.j, align 8, !tbaa !16
  br label %bb.h

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c
  %i.k = mul nuw nsw i64 %.pre51, 9
  %i.l = add nuw nsw i64 %i.k, 9
  %i.m = tail call ptr @lv_realloc(ptr noundef %i.c, i64 noundef %i.l) #9 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  store ptr %i.m, ptr %0, align 8, !tbaa !12
  %i.o = load i8, ptr %i.a, align 4, !tbaa !11    ; 2 uses
  %.not46 = icmp eq i8 %i.o, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q
  %i.s = getelementptr i8, ptr %i.m, i64 %i.q
  %scevgep = getelementptr i8, ptr %i.s, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep, ptr align 1 %i.r, i64 %i.p, i1 false), !tbaa !16
  %.pre = load i8, ptr %i.a, align 4, !tbaa !11
  %i.t = add i8 %.pre, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.g
  %i.u = phi i8 [ %i.t, %.lr.ph.preheader ], [ 1, %bb.g ] ; 2 uses
  store i8 %i.u, ptr %i.a, align 4, !tbaa !11
  %i.v = zext i8 %i.u to i64                      ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 %i.v
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  store i8 %1, ptr %i.z, align 1, !tbaa !16
  %i.aa = load i8, ptr %i.a, align 4, !tbaa !11
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr [8 x i8], ptr %i.m, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  store ptr %2, ptr %i.ad, align 8, !tbaa !16
  %i.ae = tail call i8 @llvm.umin.i8(i8 %1, i8 124)
  %narrow.i = lshr i8 %i.ae, 2
  %spec.store.select.i = zext nneg i8 %narrow.i to i32
  %i.af = shl nuw i32 1, %spec.store.select.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !17
  %i.ai = or i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.loopexit, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i8 @lv_style_register_prop(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 96), align 8, !tbaa !38 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.thread20

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 84), align 4, !tbaa !39
  store i32 176, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 88), align 8, !tbaa !40
  br label %bb.c

.thread20:                                        ; preds = %bb.a
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 88), align 8, !tbaa !40 ; 2 uses
  %.pre17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 84), align 4, !tbaa !39
  %i.c = add i32 %.pre, -175                      ; 2 uses
  %i.d = icmp ult i32 %.pre17, %i.c
  br i1 %i.d, label %bb.c, label %.thread21

bb.c:                                             ; preds = %bb.b, %.thread20
  %i.e = phi i32 [ %i.c, %.thread20 ], [ 1, %bb.b ]
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = and i64 %i.g, 8589934560                 ; 2 uses
  %i.i = tail call ptr @lv_realloc(ptr noundef %i.a, i64 noundef %i.h) #9 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.c
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 96), align 8, !tbaa !38
  %i.j = trunc i64 %i.h to i32
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 84), align 4, !tbaa !39
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 88), align 8, !tbaa !40
  br label %.thread21

.thread21:                                        ; preds = %.thread20, %.thread
  %.pre.sink = phi i32 [ %i.k, %.thread ], [ %.pre, %.thread20 ] ; 2 uses
  %i.l = phi ptr [ %i.i, %.thread ], [ %i.a, %.thread20 ]
  %i.m = add i32 %.pre.sink, 1
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 88), align 8, !tbaa !40
  %i.n = add i32 %.pre.sink, -176
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  store i8 %0, ptr %i.p, align 1, !tbaa !16
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 88), align 8, !tbaa !40
  %i.r = trunc i32 %i.q to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.thread21
  %.1 = phi i8 [ %i.r, %.thread21 ], [ 0, %bb.c ]
  ret i8 %.1
}

declare ptr @lv_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i8 @lv_style_get_num_custom_props() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 88), align 8, !tbaa !40
  %i.b = trunc i32 %i.a to i8
  %i.c = add i8 %i.b, 80
  ret i8 %i.c
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @lv_style_remove_prop(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12         ; 4 uses
  %.val = load i8, ptr %i.a, align 4, !tbaa !11   ; 4 uses
  %.val.off = add i8 %.val, -1
  %switch = icmp ult i8 %.val.off, -2
  br i1 %switch, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.c = zext i8 %.val to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 2 uses
  %i.f = zext i8 %.val to i64
  %wide.trip.count = zext i8 %.val to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !44

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = icmp eq i8 %i.h, %1
  br i1 %i.i, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.j = mul nuw nsw i64 %i.f, 9
  %narrow = add nuw nsw i64 %i.j, 4294967287
  %2 = and i64 %narrow, 4294967295
  %i.k = tail call ptr @lv_malloc(i64 noundef %2) #9 ; 4 uses
  %.not45 = icmp eq ptr %i.k, null
  br i1 %.not45, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %0, align 8, !tbaa !12
  %i.l = load i8, ptr %i.a, align 4, !tbaa !11
  %i.m = add i8 %i.l, -1                          ; 3 uses
  store i8 %i.m, ptr %i.a, align 4, !tbaa !11
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %i.q = phi i8 [ %i.m, %bb.d ], [ %i.aa, %bb.g ]
  %indvars.iv52 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next53, %bb.g ] ; 4 uses
  %.148 = phi i32 [ 0, %bb.d ], [ %.2, %bb.g ]    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv52 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %.not44 = icmp eq i8 %i.s, %1
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = zext i32 %.148 to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv52
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16
  store i64 %i.w, ptr %i.u, align 8, !tbaa !16
  %i.x = load i8, ptr %i.r, align 1, !tbaa !16
  %i.y = add i32 %.148, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t
  store i8 %i.x, ptr %i.z, align 1, !tbaa !16
  %.pre = load i8, ptr %i.a, align 4, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aa = phi i8 [ %.pre, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %i.y, %bb.f ], [ %.148, %bb.e ]
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %i.ab = zext i8 %i.aa to i64
  %.not.not = icmp samesign ult i64 %indvars.iv52, %i.ab
  br i1 %.not.not, label %bb.e, label %bb.h, !llvm.loop !45

bb.h:                                             ; preds = %bb.g
  tail call void @lv_free(ptr noundef nonnull %i.b) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c, %bb.h
  %.240 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.h ], [ false, %bb.b ]
  ret i1 %.240
}

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @lv_style_get_prop(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val.i = load i8, ptr %i.a, align 4, !tbaa !11 ; 3 uses
  %i.b = icmp eq i8 %.val.i, -1
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 8, !tbaa !14    ; 2 uses
  %.not.not33.i = icmp eq i8 %i.d, 0
  br i1 %.not.not33.i, label %lv_style_get_prop_inlined.exit, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %bb.b
  %i.e = icmp eq i8 %i.d, %1
  br i1 %i.e, label %.lr.ph35.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph35.i.preheader, %.lr.ph35.i
  %.02834.i5 = phi i32 [ %i.f, %.lr.ph35.i ], [ 0, %.lr.ph35.i.preheader ]
  %i.f = add i32 %.02834.i5, 1                    ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !14    ; 2 uses
  %.not.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.not.i, label %lv_style_get_prop_inlined.exit, label %.lr.ph35.i, !llvm.loop !46

.lr.ph35.i:                                       ; preds = %.lr.ph
  %i.j = icmp eq i8 %i.i, %1
  br i1 %i.j, label %.lr.ph35.i._crit_edge, label %.lr.ph, !llvm.loop !46

.lr.ph35.i._crit_edge:                            ; preds = %.lr.ph35.i, %.lr.ph35.i.preheader
  %.lcssa = phi ptr [ %i.c, %.lr.ph35.i.preheader ], [ %i.h, %.lr.ph35.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  br label %.thread.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.l = zext i8 %.val.i to i64                   ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  %.not.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i, label %lv_style_get_prop_inlined.exit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.l
  br i1 %exitcond.not.i, label %lv_style_get_prop_inlined.exit, label %.lr.ph.i, !llvm.loop !47

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = icmp eq i8 %i.p, %1
  br i1 %i.q, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.e, %.lr.ph35.i._crit_edge
  %.sink.in.i = phi ptr [ %i.r, %bb.e ], [ %i.k, %.lr.ph35.i._crit_edge ]
  %.sink.i = load i64, ptr %.sink.in.i, align 8, !tbaa !16
  store i64 %.sink.i, ptr %2, align 8, !tbaa !16
  br label %lv_style_get_prop_inlined.exit

lv_style_get_prop_inlined.exit:                   ; preds = %bb.d, %.lr.ph, %bb.b, %bb.c, %.thread.sink.split.i
  %.2.i = phi i32 [ 1, %.thread.sink.split.i ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define void @lv_style_transition_dsc_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef 32) #9
  store ptr %1, ptr %0, align 8, !tbaa !49
  %i.a = icmp eq ptr %2, null
  %i.b = select i1 %i.a, ptr @lv_anim_path_linear, ptr %2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %3, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %4, ptr %i.e, align 4, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %i.f, align 8, !tbaa !53
  ret void
}

declare i32 @lv_anim_path_linear(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @lv_style_prop_get_default(i8 noundef zeroext %0) local_unnamed_addr #4 {
bb.a:
  switch i8 %0, label %bb.i [
    i8 -104, label %bb.j
    i8 -103, label %bb.j
    i8 73, label %bb.b
    i8 -85, label %bb.h
    i8 -82, label %bb.h
    i8 -107, label %bb.g
    i8 123, label %bb.j
    i8 11, label %bb.f
    i8 9, label %bb.f
    i8 77, label %bb.e
    i8 60, label %bb.d
    i8 46, label %bb.c
    i8 81, label %bb.c
    i8 112, label %bb.c
    i8 113, label %bb.c
    i8 58, label %bb.c
    i8 84, label %bb.c
    i8 80, label %bb.c
    i8 43, label %bb.c
    i8 42, label %bb.c
    i8 49, label %bb.c
    i8 66, label %bb.c
    i8 82, label %bb.c
    i8 83, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  br label %bb.j

bb.f:                                             ; preds = %bb.a, %bb.a
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  br label %bb.j

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.i ], [ inttoptr (i64 1 to ptr), %bb.h ], [ inttoptr (i64 16777215 to ptr), %bb.b ], [ inttoptr (i64 256 to ptr), %bb.a ], [ inttoptr (i64 255 to ptr), %bb.c ], [ inttoptr (i64 256 to ptr), %bb.a ], [ inttoptr (i64 15 to ptr), %bb.d ], [ @lv_font_montserrat_14, %bb.e ], [ inttoptr (i64 536870911 to ptr), %bb.f ], [ inttoptr (i64 256 to ptr), %bb.a ], [ inttoptr (i64 2 to ptr), %bb.g ]
end_hunk_0
