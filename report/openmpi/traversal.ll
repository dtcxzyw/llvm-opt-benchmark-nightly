Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/traversal?download=true
inline.NumInlined: 39
inline.NumDeleted: 13
begin_hunk_0_@hwloc_get_memory_parents_depth:bb.a

bb.f:                                             ; preds = %.backedge
  %i.o = icmp eq i32 %.01633, -1
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !51   ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not24 = icmp eq i32 %.01633, %i.q
  br i1 %.not24, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.f, %bb.g
  %.117 = phi i32 [ %.01633, %bb.g ], [ %i.q, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01534, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52   ; 2 uses
  %.not22 = icmp eq ptr %i.s, null
  br i1 %.not22, label %bb.i, label %.preheader, !llvm.loop !57

bb.i:                                             ; preds = %bb.h
  %i.t = icmp sgt i32 %.117, -1
  br i1 %i.t, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 73, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_get_memory_parents_depth) #17
  unreachable

.critedge:                                        ; preds = %bb.g, %bb.i
  %.220 = phi i32 [ %.117, %bb.i ], [ -2, %bb.g ]
  ret i32 %.220
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @hwloc_get_obj_by_depth(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36
  %.not = icmp ult i32 %1, %i.b
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 -3, %1                       ; 2 uses
  %i.d = icmp ult i32 %i.c, 6
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !48
  %i.i = icmp ult i32 %2, %i.h
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.m = sext i32 %1 to i64                       ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11
  %.not21 = icmp ult i32 %2, %i.o
  br i1 %.not21, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.m
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.d
  %.sink26.in = phi ptr [ %i.j, %bb.d ], [ %i.r, %bb.f ]
  %.sink26 = load ptr, ptr %.sink26.in, align 8, !tbaa !39
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sink26, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.e ], [ null, %bb.b ], [ null, %bb.c ], [ %i.u, %.sink.split ]
  ret ptr %.1
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @hwloc_get_nbobjs_by_depth(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36
  %.not = icmp ult i32 %1, %i.b
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 -3, %1                       ; 2 uses
  %i.d = icmp ult i32 %i.c, 6
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !48
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = sext i32 %1 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.1 = phi i32 [ %i.m, %bb.d ], [ %i.h, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @hwloc_obj_type_is_normal(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %0, 13
  %i.b = icmp eq i32 %0, 19
  %i.c = or i1 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @hwloc_obj_type_is_memory(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %0, 13
  %i.b = icmp eq i32 %0, 18
  %i.c = or i1 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @hwloc_obj_type_is_io(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, -14
  %i.b = icmp ult i32 %i.a, 3
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @hwloc_obj_type_is_cache(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, -4
  %i.b = icmp ult i32 %i.a, 8
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @hwloc_obj_type_is_dcache(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, -4
  %i.b = icmp ult i32 %i.a, 5
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @hwloc_obj_type_is_icache(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, -9
  %i.b = icmp ult i32 %i.a, 3
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @hwloc_get_obj_by_type_and_gp_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ugt i32 %1, 19
  br i1 %i.a, label %hwloc_get_obj_by_depth_and_gp_index.exit36, label %hwloc_get_type_depth.exit

hwloc_get_type_depth.exit:                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 5 uses
  switch i32 %i.e, label %bb.c [
    i32 -1, label %hwloc_get_obj_by_depth_and_gp_index.exit36
    i32 -2, label %.preheader
  ]

.preheader:                                       ; preds = %hwloc_get_type_depth.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36   ; 2 uses
  %i.h = add i32 %i.g, -1                         ; 2 uses
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %hwloc_get_obj_by_depth_and_gp_index.exit36

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = zext i32 %i.g to i64
  %wide.trip.count = zext i32 %i.h to i64
  br label %3

3:                                                ; preds = %.lr.ph, %hwloc_get_obj_by_depth_and_gp_index.exit.thread
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %hwloc_get_obj_by_depth_and_gp_index.exit.thread ] ; 4 uses
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.l
  br i1 %.not.i, label %hwloc_get_depth_type.exit.thread, label %hwloc_get_obj_by_depth_and_gp_index.exit.thread

hwloc_get_depth_type.exit.thread:                 ; preds = %3
  %4 = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !46
  %i.q = icmp eq i32 %i.p, %1
  br i1 %i.q, label %.thread, label %hwloc_get_obj_by_depth_and_gp_index.exit.thread

.thread:                                          ; preds = %hwloc_get_depth_type.exit.thread
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !11
  %.not21.i.not.i = icmp eq i32 %i.t, 0
  br i1 %.not21.i.not.i, label %hwloc_get_obj_by_depth_and_gp_index.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %bb.b
  %.010.i = phi ptr [ %i.y, %bb.b ], [ %i.o, %.thread ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i, i64 240
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60
  %i.w = icmp eq i64 %i.v, %2
  br i1 %i.w, label %hwloc_get_obj_by_depth_and_gp_index.exit36, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.010.i, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52   ; 2 uses
  %.not.i24 = icmp eq ptr %i.y, null
  br i1 %.not.i24, label %hwloc_get_obj_by_depth_and_gp_index.exit.thread, label %.lr.ph.i, !llvm.loop !58

hwloc_get_obj_by_depth_and_gp_index.exit.thread:  ; preds = %bb.b, %3, %.thread, %hwloc_get_depth_type.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %hwloc_get_obj_by_depth_and_gp_index.exit36, label %3, !llvm.loop !59

bb.c:                                             ; preds = %hwloc_get_type_depth.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !36
  %.not.i.i25 = icmp ult i32 %i.e, %i.aa
  br i1 %.not.i.i25, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp ugt i32 %i.e, -9
  br i1 %i.ab, label %bb.e, label %hwloc_get_obj_by_depth_and_gp_index.exit36

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nuw nsw i32 -3, %i.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !48
  %.not8.i27 = icmp eq i32 %i.ag, 0
  br i1 %.not8.i27, label %hwloc_get_obj_by_depth_and_gp_index.exit36, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  br label %hwloc_get_obj_by_depth.exit.i28

bb.g:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49
  %i.ak = sext i32 %i.e to i64                    ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !11
  %.not21.i.not.i35 = icmp eq i32 %i.am, 0
  br i1 %.not21.i.not.i35, label %hwloc_get_obj_by_depth_and_gp_index.exit36, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ak
  br label %hwloc_get_obj_by_depth.exit.i28

hwloc_get_obj_by_depth.exit.i28:                  ; preds = %bb.h, %bb.f
  %.sink26.in.i.i29 = phi ptr [ %i.ah, %bb.f ], [ %i.ap, %bb.h ]
  %.sink26.i.i30 = load ptr, ptr %.sink26.in.i.i29, align 8, !tbaa !39
  %i.aq = load ptr, ptr %.sink26.i.i30, align 8, !tbaa !41 ; 2 uses
  %.not9.i31 = icmp eq ptr %i.aq, null
  br i1 %.not9.i31, label %hwloc_get_obj_by_depth_and_gp_index.exit36, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %hwloc_get_obj_by_depth.exit.i28, %bb.i
  %.010.i33 = phi ptr [ %i.av, %bb.i ], [ %i.aq, %hwloc_get_obj_by_depth.exit.i28 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i33, i64 240
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !60
  %i.at = icmp eq i64 %i.as, %2
  br i1 %i.at, label %hwloc_get_obj_by_depth_and_gp_index.exit36, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i32
  %i.au = getelementptr inbounds nuw i8, ptr %.010.i33, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52 ; 2 uses
  %.not.i34 = icmp eq ptr %i.av, null
  br i1 %.not.i34, label %hwloc_get_obj_by_depth_and_gp_index.exit36, label %.lr.ph.i32, !llvm.loop !58

hwloc_get_obj_by_depth_and_gp_index.exit36:       ; preds = %hwloc_get_obj_by_depth_and_gp_index.exit.thread, %.lr.ph.i, %bb.i, %.lr.ph.i32, %.preheader, %bb.a, %hwloc_get_obj_by_depth.exit.i28, %bb.g, %bb.e, %bb.d, %hwloc_get_type_depth.exit
  %.3 = phi ptr [ %.010.i, %.lr.ph.i ], [ null, %bb.a ], [ null, %hwloc_get_type_depth.exit ], [ null, %bb.i ], [ null, %hwloc_get_obj_by_depth.exit.i28 ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.g ], [ null, %.preheader ], [ %.010.i33, %.lr.ph.i32 ], [ null, %hwloc_get_obj_by_depth_and_gp_index.exit.thread ]
  ret ptr %.3
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite) uwtable
define i32 @hwloc_get_closest_objs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit41, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !51
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %.fr59 = freeze i32 %i.i                        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.g
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  %.not58 = icmp eq i32 %3, 0
  br i1 %.not58, label %.loopexit41, label %.preheader42.lr.ph

.preheader42.lr.ph:                               ; preds = %bb.b
  %.not60 = icmp eq i32 %.fr59, 0
  br i1 %.not60, label %.preheader42, label %.preheader42.us.preheader

.preheader42.us.preheader:                        ; preds = %.preheader42.lr.ph
  %wide.trip.count = zext i32 %.fr59 to i64
  br label %.preheader42.us

.preheader42.us:                                  ; preds = %.preheader42.us.preheader, %..loopexit_crit_edge.us
  %.054.us = phi i32 [ %.2.us, %..loopexit_crit_edge.us ], [ 0, %.preheader42.us.preheader ] ; 2 uses
  %.03153.us = phi ptr [ %i.o, %..loopexit_crit_edge.us ], [ %1, %.preheader42.us.preheader ]
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.preheader42.us
  %.132.us = phi ptr [ %i.o, %bb.d ], [ %.03153.us, %.preheader42.us ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.132.us, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 4 uses
  %.not37.us = icmp eq ptr %i.o, null
  br i1 %.not37.us, label %.loopexit41, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.132.us, i64 184
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54   ; 2 uses
  %i.t = tail call i32 @hwloc_bitmap_isequal(ptr noundef %i.q, ptr noundef %i.s) #18
  %.not38.us = icmp eq i32 %i.t, 0
  br i1 %.not38.us, label %.preheader.us, label %bb.c

.preheader.us:                                    ; preds = %bb.d, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %.152.us = phi i32 [ %.2.us, %bb.g ], [ %.054.us, %bb.d ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  %i.y = tail call i32 @hwloc_bitmap_isincluded(ptr noundef %i.x, ptr noundef %i.s) #18
  %.not39.us = icmp eq i32 %i.y, 0
  br i1 %.not39.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.preheader.us
  %i.z = tail call i32 @hwloc_bitmap_isincluded(ptr noundef %i.x, ptr noundef %i.q) #18
  %.not40.us = icmp eq i32 %i.z, 0
  br i1 %.not40.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = add i32 %.152.us, 1                     ; 2 uses
  %i.ab = zext i32 %.152.us to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ab
  store ptr %i.v, ptr %i.ac, align 8, !tbaa !41
  %i.ad = icmp eq i32 %i.aa, %3
  br i1 %i.ad, label %.loopexit41, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.preheader.us
  %.2.us = phi i32 [ %.152.us, %bb.e ], [ %i.aa, %bb.f ], [ %.152.us, %.preheader.us ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %.preheader.us, !llvm.loop !61

..loopexit_crit_edge.us:                          ; preds = %bb.g
  %i.ae = icmp ult i32 %.2.us, %3
  br i1 %i.ae, label %.preheader42.us, label %.loopexit41, !llvm.loop !62

.preheader42:                                     ; preds = %.preheader42.lr.ph, %.preheader42
  %.132 = phi ptr [ %i.ag, %.preheader42 ], [ %1, %.preheader42.lr.ph ]
  %i.af = getelementptr inbounds nuw i8, ptr %.132, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50 ; 2 uses
  %.not37 = icmp eq ptr %i.ag, null
  br i1 %.not37, label %.loopexit41, label %.preheader42

.loopexit41:                                      ; preds = %..loopexit_crit_edge.us, %bb.c, %bb.f, %.preheader42, %bb.b, %bb.a
  %.033 = phi i32 [ 0, %bb.a ], [ %.054.us, %bb.c ], [ %3, %bb.f ], [ 0, %.preheader42 ], [ 0, %bb.b ], [ %.2.us, %..loopexit_crit_edge.us ]
  ret i32 %.033
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_isequal(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_isincluded(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define i32 @hwloc_get_largest_objs_inside_cpuset(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !39
  store i32 %3, ptr %i.b, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = tail call i32 @hwloc_bitmap_isincluded(ptr noundef %1, ptr noundef %i.h) #18
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %3, 1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call fastcc i32 @hwloc__get_largest_objs_inside_cpuset(ptr noundef nonnull %i.f, ptr noundef %1, ptr noundef %i.a, ptr noundef %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
end_hunk_0
