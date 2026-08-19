inline.NumInlined: 42
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@hwloc_bitmap_tma_dup:bb.a
  %i.o = phi ptr [ %i.d, %bb.c ], [ %i.j, %bb.d ]
  %.0.i2830 = phi ptr [ %i.c, %bb.c ], [ %i.a, %bb.d ] ; 6 uses
  %.0.i24 = phi ptr [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2830, i64 8
  store ptr %.0.i24, ptr %i.p, align 8, !tbaa !16
  %.not22 = icmp eq ptr %.0.i24, null
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %hwloc_tma_malloc.exit25
  tail call void @free(ptr noundef nonnull %.0.i2830) #20
  br label %bb.g

bb.f:                                             ; preds = %hwloc_tma_malloc.exit25
  %i.q = load i32, ptr %i.o, align 4, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2830, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !15
  %i.s = load i32, ptr %1, align 8, !tbaa !11     ; 2 uses
  store i32 %i.s, ptr %.0.i2830, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.v = zext i32 %i.s to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.0.i24, ptr align 8 %i.u, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i2830, i64 16
  store i32 %i.y, ptr %i.z, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %hwloc_tma_malloc.exit.thread, %hwloc_tma_malloc.exit, %bb.a, %bb.f, %bb.e
  %.0 = phi ptr [ %.0.i2830, %bb.f ], [ null, %bb.e ], [ null, %bb.a ], [ null, %hwloc_tma_malloc.exit ], [ null, %hwloc_tma_malloc.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @hwloc_bitmap_dup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %hwloc_bitmap_tma_dup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19 ; 7 uses
  %.not21.i = icmp eq ptr %i.a, null
  br i1 %.not21.i, label %hwloc_bitmap_tma_dup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef range(i64 0, 34359738361) %i.e) #19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !16
  %.not22.i = icmp eq ptr %i.f, null
  br i1 %.not22.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #20
  br label %hwloc_bitmap_tma_dup.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.c, ptr %i.h, align 4, !tbaa !15
  %i.i = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = zext i32 %i.i to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.k, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.o, ptr %i.p, align 8, !tbaa !19
  br label %hwloc_bitmap_tma_dup.exit

hwloc_bitmap_tma_dup.exit:                        ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.a, %bb.e ], [ null, %bb.d ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_copy(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %hwloc_flsl_manual.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.c, 4294967295            ; 2 uses
  %i.e = lshr i64 %i.c, 32
  %spec.select.i.i.i = select i1 %i.d, i64 %i.e, i64 %i.c ; 3 uses
  %spec.select33.i.i.i = select i1 %i.d, i32 33, i32 1 ; 2 uses
  %.not28.i.i.i = icmp samesign ult i64 %spec.select.i.i.i, 65536 ; 2 uses
  %i.f = lshr i64 %spec.select.i.i.i, 16
  %i.g = or disjoint i32 %spec.select33.i.i.i, 16
  %.122.i.i.i = select i1 %.not28.i.i.i, i64 %spec.select.i.i.i, i64 %i.f ; 3 uses
  %.1.i.i.i = select i1 %.not28.i.i.i, i32 %spec.select33.i.i.i, i32 %i.g ; 2 uses
  %.not29.i.i.i = icmp samesign ult i64 %.122.i.i.i, 256 ; 2 uses
  %i.h = lshr i64 %.122.i.i.i, 8
  %i.i = or disjoint i32 %.1.i.i.i, 8
  %.223.i.i.i = select i1 %.not29.i.i.i, i64 %.122.i.i.i, i64 %i.h ; 3 uses
  %.2.i.i.i = select i1 %.not29.i.i.i, i32 %.1.i.i.i, i32 %i.i ; 2 uses
  %.not30.i.i.i = icmp samesign ult i64 %.223.i.i.i, 16 ; 2 uses
  %i.j = lshr i64 %.223.i.i.i, 4
  %i.k = or disjoint i32 %.2.i.i.i, 4
  %.324.i.i.i = select i1 %.not30.i.i.i, i64 %.223.i.i.i, i64 %i.j ; 3 uses
  %.3.i.i.i = select i1 %.not30.i.i.i, i32 %.2.i.i.i, i32 %i.k ; 2 uses
  %i.l = and i64 %.324.i.i.i, 12
  %.not31.i.i.i = icmp eq i64 %i.l, 0             ; 2 uses
  %i.m = lshr i64 %.324.i.i.i, 2
  %i.n = add nuw nsw i32 %.3.i.i.i, 2
  %.425.i.i.i = select i1 %.not31.i.i.i, i64 %.324.i.i.i, i64 %i.m
  %.4.i.i.i = select i1 %.not31.i.i.i, i32 %.3.i.i.i, i32 %i.n
  %i.o = trunc nuw nsw i64 %.425.i.i.i to i32
  %i.p = lshr i32 %i.o, 1
  %i.q = and i32 %i.p, 1
  %.5.i.i.i = add nuw nsw i32 %i.q, %.4.i.i.i
  br label %hwloc_flsl_manual.exit.i.i

hwloc_flsl_manual.exit.i.i:                       ; preds = %bb.b, %bb.a
  %.026.i.i.i = phi i32 [ %.5.i.i.i, %bb.b ], [ 0, %bb.a ]
  %i.r = shl nuw i32 1, %.026.i.i.i               ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !15
  %i.u = icmp ugt i32 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16   ; 2 uses
  br i1 %i.u, label %bb.c, label %hwloc_flsl_manual.exit.i.i._crit_edge

bb.c:                                             ; preds = %hwloc_flsl_manual.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call ptr @realloc(ptr noundef %i.w, i64 noundef %i.y) #21 ; 3 uses
  %.not.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.not.i.i, label %hwloc_bitmap_reset_by_ulongs.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.z, ptr %i.v, align 8, !tbaa !16
  store i32 %i.r, ptr %i.s, align 4, !tbaa !15
  br label %hwloc_flsl_manual.exit.i.i._crit_edge

hwloc_flsl_manual.exit.i.i._crit_edge:            ; preds = %hwloc_flsl_manual.exit.i.i, %bb.d
  %i.aa = phi ptr [ %i.z, %bb.d ], [ %i.w, %hwloc_flsl_manual.exit.i.i ]
  store i32 %i.a, ptr %0, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = load i32, ptr %1, align 8, !tbaa !11
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr align 8 %i.ac, i64 %i.af, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !19
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

hwloc_bitmap_reset_by_ulongs.exit.thread:         ; preds = %bb.c, %hwloc_flsl_manual.exit.i.i._crit_edge
  %.0 = phi i32 [ 0, %hwloc_flsl_manual.exit.i.i._crit_edge ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define range(i32 -1, -2147483648) i32 @hwloc_bitmap_snprintf(ptr noalias nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 1, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not91 = icmp eq i32 %i.b, 0
  br i1 %.not91, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str) #20 ; 6 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.preheader104

.preheader104:                                    ; preds = %bb.d
  %i.e = zext nneg i32 %i.c to i64
  %.not92 = icmp sgt i64 %1, %i.e
  %i.f = icmp sgt i64 %1, 0
  %i.g = trunc i64 %1 to i32
  %i.h = add nsw i32 %i.g, -1
  %i.i = select i1 %i.f, i32 %i.h, i32 0
  %.079 = select i1 %.not92, i32 %i.c, i32 %i.i
  %i.j = sext i32 %.079 to i64                    ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 3 uses
  %i.l = sub nsw i64 %1, %i.j                     ; 3 uses
  %i.m = load i32, ptr %2, align 8, !tbaa !11     ; 2 uses
  %3 = add i32 %i.m, -1                           ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.lr.ph125.a

.lr.ph:                                           ; preds = %.preheader104
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %4 = zext nneg i32 %3 to i64
  br label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.q = load i32, ptr %2, align 8, !tbaa !11     ; 2 uses
  %5 = add i32 %i.q, -1                           ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph113, label %.lr.ph125.a

.lr.ph113:                                        ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %6 = zext nneg i32 %5 to i64
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %4, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !17
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.f, label %.critedge.loopexit161

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.x = icmp sgt i64 %indvars.iv, 0
  br i1 %i.x, label %bb.e, label %._crit_edge, !llvm.loop !24

bb.g:                                             ; preds = %.lr.ph113, %bb.h
  %indvars.iv134 = phi i64 [ %6, %.lr.ph113 ], [ %indvars.iv.next135, %bb.h ] ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv134
  %i.z = load i64, ptr %i.y, align 8, !tbaa !17
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %.critedge.loopexit

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, -1
  %i.ab = icmp sgt i64 %indvars.iv134, 0
  br i1 %i.ab, label %bb.g, label %._crit_edge.thread, !llvm.loop !26

.critedge.loopexit:                               ; preds = %bb.g
  %7 = trunc nuw nsw i64 %indvars.iv134 to i32
  br label %.lr.ph125.a

.critedge.loopexit161:                            ; preds = %bb.e
  %8 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph125.a

.lr.ph125.a:                                      ; preds = %.critedge.loopexit161, %.critedge.loopexit, %.preheader104, %.preheader
  %.073148 = phi i32 [ 1, %.preheader104 ], [ 0, %.preheader ], [ 0, %.critedge.loopexit ], [ 1, %.critedge.loopexit161 ]
  %.076146 = phi i32 [ %i.c, %.preheader104 ], [ 0, %.preheader ], [ 0, %.critedge.loopexit ], [ %i.c, %.critedge.loopexit161 ] ; 2 uses
  %.082144 = phi ptr [ %i.k, %.preheader104 ], [ %0, %.preheader ], [ %0, %.critedge.loopexit ], [ %i.k, %.critedge.loopexit161 ] ; 2 uses
  %.084142 = phi i64 [ %i.l, %.preheader104 ], [ %1, %.preheader ], [ %1, %.critedge.loopexit ], [ %i.l, %.critedge.loopexit161 ] ; 2 uses
  %.2 = phi i32 [ %3, %.preheader104 ], [ %5, %.preheader ], [ %7, %.critedge.loopexit ], [ %8, %.critedge.loopexit161 ] ; 2 uses
  %9 = icmp sgt i32 %.2, -1
  br i1 %9, label %.lr.ph125, label %._crit_edge

.lr.ph125:                                        ; preds = %.lr.ph125.a
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph125, %.thread
  %i.ac = phi i1 [ false, %.lr.ph125 ], [ %i.bd, %.thread ]
  %.0124 = phi i32 [ 0, %.lr.ph125 ], [ %i.at, %.thread ]
  %.069123 = phi i64 [ 0, %.lr.ph125 ], [ %i.as, %.thread ]
  %.3122 = phi i32 [ %.2, %.lr.ph125 ], [ %.4, %.thread ] ; 3 uses
  %.174121 = phi i32 [ %.073148, %.lr.ph125 ], [ %.275103, %.thread ] ; 3 uses
  %.177120 = phi i32 [ %.076146, %.lr.ph125 ], [ %i.ar, %.thread ]
  %.183118 = phi ptr [ %.082144, %.lr.ph125 ], [ %i.ba, %.thread ] ; 4 uses
  %.185117 = phi i64 [ %.084142, %.lr.ph125 ], [ %i.bb, %.thread ] ; 7 uses
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %10, align 8, !tbaa !16
  %i.ae = add nsw i32 %.3122, -1
  %i.af = sext i32 %.3122 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4 = phi i32 [ %.3122, %bb.i ], [ %i.ae, %bb.j ] ; 3 uses
  %.170 = phi i64 [ %.069123, %bb.i ], [ %i.ah, %bb.j ] ; 3 uses
  %.1 = phi i32 [ %.0124, %bb.i ], [ 64, %bb.j ]  ; 2 uses
  %.not95 = icmp ult i64 %.170, 4294967296
  br i1 %.not95, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not98 = icmp eq i32 %.174121, 0
  %i.ai = select i1 %.not98, ptr @.str.2, ptr @.str.1
  %i.aj = lshr i64 %.170, 32
  %i.ak = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.183118, i64 noundef %.185117, ptr noundef nonnull %i.ai, i64 noundef %i.aj) #20
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.al = icmp eq i32 %.4, -1
  %i.am = icmp eq i32 %.1, 32
  %or.cond = select i1 %i.al, i1 %i.am, i1 false
  %.not97 = icmp eq i32 %.174121, 0               ; 2 uses
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = select i1 %.not97, ptr @.str.4, ptr @.str.3
  %i.ao = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.183118, i64 noundef %.185117, ptr noundef nonnull %i.an) #20
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  br i1 %.not97, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.183118, i64 noundef %.185117, ptr noundef nonnull @.str.5) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.l
  %.180 = phi i32 [ %i.ak, %bb.l ], [ %i.ao, %bb.n ], [ %i.ap, %bb.p ] ; 2 uses
  %.275 = phi i32 [ 1, %bb.l ], [ %.174121, %bb.n ], [ 1, %bb.p ]
  %i.aq = icmp slt i32 %.180, 0
  br i1 %i.aq, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.o, %bb.q
  %.275103 = phi i32 [ %.275, %bb.q ], [ 0, %bb.o ]
  %.180102 = phi i32 [ %.180, %bb.q ], [ 0, %bb.o ] ; 3 uses
  %i.ar = add nuw nsw i32 %.180102, %.177120      ; 2 uses
  %i.as = shl i64 %.170, 32
  %i.at = add nsw i32 %.1, -32                    ; 2 uses
  %i.au = zext nneg i32 %.180102 to i64
  %.not99 = icmp sgt i64 %.185117, %i.au
  %i.av = icmp sgt i64 %.185117, 0
  %i.aw = trunc i64 %.185117 to i32
  %i.ax = add nsw i32 %i.aw, -1
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %.281 = select i1 %.not99, i32 %.180102, i32 %i.ay
  %i.az = sext i32 %.281 to i64                   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.183118, i64 %i.az ; 2 uses
  %i.bb = sub nsw i64 %.185117, %i.az             ; 2 uses
  %i.bc = icmp sgt i32 %.4, -1
  %i.bd = icmp ne i32 %i.at, 0                    ; 2 uses
  %i.be = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %i.be, label %bb.i, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.f, %.thread, %.lr.ph125.a
  %.185.lcssa = phi i64 [ %.084142, %.lr.ph125.a ], [ %i.bb, %.thread ], [ %i.l, %bb.f ]
  %.183.lcssa = phi ptr [ %.082144, %.lr.ph125.a ], [ %i.ba, %.thread ], [ %i.k, %bb.f ]
  %.177.lcssa = phi i32 [ %.076146, %.lr.ph125.a ], [ %i.ar, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %.not94 = icmp eq i32 %.177.lcssa, 0
  br i1 %.not94, label %._crit_edge.thread, label %.loopexit

._crit_edge.thread:                               ; preds = %bb.h, %._crit_edge
  %.183.lcssa160 = phi ptr [ %.183.lcssa, %._crit_edge ], [ %0, %bb.h ]
  %.185.lcssa159 = phi i64 [ %.185.lcssa, %._crit_edge ], [ %1, %bb.h ]
  %i.bf = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.183.lcssa160, i64 noundef %.185.lcssa159, ptr noundef nonnull @.str.4) #20
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 -1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %._crit_edge.thread, %._crit_edge, %bb.d
  %.086 = phi i32 [ %.177.lcssa, %._crit_edge ], [ -1, %bb.d ], [ %spec.select, %._crit_edge.thread ], [ -1, %bb.q ]
  ret i32 %.086
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define range(i32 -1, -2147483648) i32 @hwloc_bitmap_asprintf(ptr nofree noundef writeonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @hwloc_bitmap_snprintf(ptr noundef null, i64 noundef 0, ptr noundef %1)
  %i.b = add nsw i32 %i.a, 1
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #19 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !28
  %i.e = tail call i32 @hwloc_bitmap_snprintf(ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_sscanf(ptr nofree noundef captures(none) %0, ptr noalias noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.035 = phi ptr [ %1, %bb.a ], [ %i.c, %bb.b ]
  %.032 = phi i32 [ 1, %bb.a ], [ %i.d, %bb.b ]   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 44) #22 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = add nuw nsw i32 %.032, 1                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !30

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 7) #22
  %.not41 = icmp eq i32 %i.e, 0
  br i1 %.not41, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.g = load i8, ptr %i.f, align 1, !tbaa !23
  %.not42 = icmp eq i8 %i.g, 44
  br i1 %.not42, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %hwloc_bitmap_reset_by_ulongs.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.l, i64 noundef 8) #21 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i.i.i, label %hwloc_bitmap_reset_by_ulongs.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.k, align 8, !tbaa !16
  store i32 1, ptr %i.h, align 4, !tbaa !15
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread.i

hwloc_bitmap_reset_by_ulongs.exit.thread.i:       ; preds = %bb.g, %bb.e
  store i32 1, ptr %0, align 8, !tbaa !11
  br label %.lr.ph.i.i

hwloc_bitmap_reset_by_ulongs.exit.i:              ; preds = %bb.f
  %.pr.i = load i32, ptr %0, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i.i, label %hwloc_bitmap_fill.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i, %hwloc_bitmap_reset_by_ulongs.exit.thread.i
  %i.n = phi i32 [ 1, %hwloc_bitmap_reset_by_ulongs.exit.thread.i ], [ %.pr.i, %hwloc_bitmap_reset_by_ulongs.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = zext i32 %i.n to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, i8 -1, i64 %i.r, i1 false), !tbaa !17
  br label %hwloc_bitmap_fill.exit

hwloc_bitmap_fill.exit:                           ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i, %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.s, align 8, !tbaa !19
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

bb.h:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = add nsw i32 %.032, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.pre-phi = phi i32 [ %.032, %bb.h ], [ %i.d, %bb.c ]
  %.136 = phi ptr [ %i.t, %bb.h ], [ %1, %bb.c ]
  %.1 = phi i32 [ %i.u, %bb.h ], [ %.032, %bb.c ]
  %.031 = phi i32 [ 1, %bb.h ], [ 0, %bb.c ]
  %i.v = sdiv i32 %.pre-phi, 2                    ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = add nsw i64 %i.w, -1                     ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %hwloc_flsl_manual.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp ugt i64 %i.x, 4294967295            ; 2 uses
  %i.z = lshr i64 %i.x, 32
  %spec.select.i.i.i = select i1 %i.y, i64 %i.z, i64 %i.x ; 3 uses
  %spec.select33.i.i.i = select i1 %i.y, i32 33, i32 1 ; 2 uses
  %.not28.i.i.i = icmp samesign ult i64 %spec.select.i.i.i, 65536 ; 2 uses
  %i.aa = lshr i64 %spec.select.i.i.i, 16
  %i.ab = or disjoint i32 %spec.select33.i.i.i, 16
  %.122.i.i.i = select i1 %.not28.i.i.i, i64 %spec.select.i.i.i, i64 %i.aa ; 3 uses
  %.1.i.i.i = select i1 %.not28.i.i.i, i32 %spec.select33.i.i.i, i32 %i.ab ; 2 uses
  %.not29.i.i.i = icmp samesign ult i64 %.122.i.i.i, 256 ; 2 uses
  %i.ac = lshr i64 %.122.i.i.i, 8
  %i.ad = or disjoint i32 %.1.i.i.i, 8
  %.223.i.i.i = select i1 %.not29.i.i.i, i64 %.122.i.i.i, i64 %i.ac ; 3 uses
  %.2.i.i.i = select i1 %.not29.i.i.i, i32 %.1.i.i.i, i32 %i.ad ; 2 uses
  %.not30.i.i.i = icmp samesign ult i64 %.223.i.i.i, 16 ; 2 uses
  %i.ae = lshr i64 %.223.i.i.i, 4
  %i.af = or disjoint i32 %.2.i.i.i, 4
  %.324.i.i.i = select i1 %.not30.i.i.i, i64 %.223.i.i.i, i64 %i.ae ; 3 uses
  %.3.i.i.i = select i1 %.not30.i.i.i, i32 %.2.i.i.i, i32 %i.af ; 2 uses
  %i.ag = and i64 %.324.i.i.i, 12
  %.not31.i.i.i = icmp eq i64 %i.ag, 0            ; 2 uses
  %i.ah = lshr i64 %.324.i.i.i, 2
  %i.ai = add nuw nsw i32 %.3.i.i.i, 2
  %.425.i.i.i = select i1 %.not31.i.i.i, i64 %.324.i.i.i, i64 %i.ah
  %.4.i.i.i = select i1 %.not31.i.i.i, i32 %.3.i.i.i, i32 %i.ai
  %i.aj = trunc nuw nsw i64 %.425.i.i.i to i32
  %i.ak = lshr i32 %i.aj, 1
  %i.al = and i32 %i.ak, 1
  %.5.i.i.i = add nuw nsw i32 %i.al, %.4.i.i.i
  br label %hwloc_flsl_manual.exit.i.i

hwloc_flsl_manual.exit.i.i:                       ; preds = %bb.j, %bb.i
  %.026.i.i.i = phi i32 [ %.5.i.i.i, %bb.j ], [ 0, %bb.i ]
  %i.am = shl nuw i32 1, %.026.i.i.i              ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15
  %i.ap = icmp ugt i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %bb.m

bb.k:                                             ; preds = %hwloc_flsl_manual.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16
  %i.as = zext i32 %i.am to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.at) #21 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.not.i.i, label %hwloc_bitmap_reset_by_ulongs.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !16
  store i32 %i.am, ptr %i.an, align 4, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %hwloc_flsl_manual.exit.i.i
  store i32 %i.v, ptr %0, align 8, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %bb.m
  %.237 = phi ptr [ %.136, %bb.m ], [ %.3, %bb.s ] ; 3 uses
  %.033 = phi i64 [ 0, %bb.m ], [ %.134, %bb.s ]
  %.2 = phi i32 [ %.1, %bb.m ], [ %i.ba, %bb.s ]  ; 3 uses
  %i.ax = load i8, ptr %.237, align 1, !tbaa !23
  %.not43 = icmp eq i8 %i.ax, 0
  br i1 %.not43, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ay = call i64 @__isoc23_strtoul(ptr noundef nonnull %.237, ptr noundef nonnull %i.a, i32 noundef 16) #20
  %i.az = icmp sgt i32 %.2, 0
  br i1 %i.az, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 395, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_bitmap_sscanf) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ba = add nsw i32 %.2, -1                     ; 4 uses
  %i.bb = shl nsw i32 %i.ba, 5
  %i.bc = and i32 %i.bb, 32
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %.033                     ; 2 uses
end_hunk_0
begin_hunk_1_@hwloc_bitmap_set_range:bb.a

bb.e:                                             ; preds = %.thread, %bb.d
  %i.h = lshr i32 %1, 6                           ; 3 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.i)
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %1, 63
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nsw i64 -1, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %i.q = zext nneg i32 %i.h to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = or i64 %i.s, %i.n
  store i64 %i.t, ptr %i.r, align 8, !tbaa !17
  %i.u = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.v = icmp ult i32 %i.i, %i.u
  br i1 %i.v, label %.lr.ph61.preheader, label %._crit_edge

.lr.ph61.preheader:                               ; preds = %bb.f
  %i.w = lshr i32 %1, 3
  %i.x = and i32 %i.w, 536870904
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %scevgep62 = getelementptr i8, ptr %i.z, i64 8
  %i.aa = add i32 %i.u, -2
  %i.ab = sub i32 %i.aa, %i.h
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep62, i8 -1, i64 %i.ae, i1 false), !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph61.preheader, %bb.f
  store i32 1, ptr %i.b, align 8, !tbaa !19
  br label %.loopexit

bb.g:                                             ; preds = %.thread
  %.not56 = icmp ult i32 %2, %i.e
  %i.af = add i32 %i.e, -1
  %spec.select = select i1 %.not56, i32 %2, i32 %i.af
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.0 = phi i32 [ %spec.select, %bb.g ], [ %2, %bb.d ] ; 3 uses
  %i.ag = lshr i32 %.0, 6                         ; 5 uses
  %i.ah = add nuw nsw i32 %i.ag, 1
  %i.ai = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.ah)
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = lshr i32 %1, 6                          ; 4 uses
  %i.al = icmp eq i32 %i.ak, %i.ag
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = and i32 %.0, 63
  %i.an = xor i32 %i.am, 63
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = lshr i64 -1, %i.ao
  %i.aq = and i32 %1, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nsw i64 -1, %i.ar
  %i.at = and i64 %i.ap, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aw = and i32 %1, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nsw i64 -1, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !16 ; 2 uses
  %i.bb = zext nneg i32 %i.ak to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !17
  %i.be = or i64 %i.bd, %i.ay
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !17
  %i.bf = and i32 %.0, 63
  %i.bg = xor i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = lshr i64 -1, %i.bh
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink72 = phi ptr [ %i.ba, %bb.k ], [ %i.av, %bb.j ] ; 2 uses
  %.sink71 = phi i64 [ %i.bi, %bb.k ], [ %i.at, %bb.j ]
  %i.bj = zext nneg i32 %i.ag to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sink72, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !17
  %i.bm = or i64 %i.bl, %.sink71
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !17
  %.158 = add nuw nsw i32 %i.ak, 1
  %i.bn = icmp samesign ult i32 %.158, %i.ag
  br i1 %i.bn, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  %i.bo = lshr i32 %1, 3
  %i.bp = and i32 %i.bo, 536870904
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr nuw i8, ptr %.sink72, i64 %i.bq
  %scevgep = getelementptr nuw i8, ptr %i.br, i64 8
  %i.bs = add nsw i32 %i.ag, -2
  %i.bt = sub nsw i32 %i.bs, %i.ak
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bv, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 -1, i64 %i.bw, i1 false), !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.l, %._crit_edge, %bb.h, %bb.e, %bb.c, %bb.a
  %.047 = phi i32 [ -1, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ -1, %bb.h ], [ 0, %._crit_edge ], [ 0, %bb.l ], [ 0, %.lr.ph ]
  ret i32 %.047
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_set(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = lshr i32 %1, 6                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !11
  %i.e = shl i32 %i.d, 6
  %.not9 = icmp ult i32 %1, %i.e
  br i1 %.not9, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = add nuw nsw i32 %i.a, 1
  %i.g = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.f)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %1, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = zext nneg i32 %i.a to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17
  %i.q = or i64 %i.p, %i.k
  store i64 %i.q, ptr %i.o, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define range(i32 -1, -2147483648) i32 @hwloc_bitmap_taskset_snprintf(ptr noalias nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 1, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not85 = icmp eq i32 %i.b, 0
  br i1 %.not85, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str) #20 ; 6 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.critedge92, label %.preheader97

.preheader97:                                     ; preds = %bb.d
  %i.e = zext nneg i32 %i.c to i64
  %.not86 = icmp sgt i64 %1, %i.e
  %i.f = icmp sgt i64 %1, 0
  %i.g = trunc i64 %1 to i32
  %i.h = add nsw i32 %i.g, -1
  %i.i = select i1 %i.f, i32 %i.h, i32 0
  %.070 = select i1 %.not86, i32 %i.c, i32 %i.i
  %i.j = sext i32 %.070 to i64                    ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 3 uses
  %i.l = sub nsw i64 %1, %i.j                     ; 3 uses
  %i.m = load i32, ptr %2, align 8, !tbaa !11
  %i.n = add i32 %i.m, -1                         ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader97
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %3 = zext nneg i32 %i.n to i64
  br label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.r = load i32, ptr %2, align 8, !tbaa !11
  %i.s = add i32 %i.r, -1                         ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph106, label %.critedge

.lr.ph106:                                        ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16
  %4 = zext nneg i32 %i.s to i64
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %3, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8, !tbaa !17
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %bb.f, label %.critedge.loopexit162

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.z = icmp sgt i64 %indvars.iv, 0
  br i1 %i.z, label %bb.e, label %._crit_edge, !llvm.loop !36

bb.g:                                             ; preds = %.lr.ph106, %bb.h
  %indvars.iv125 = phi i64 [ %4, %.lr.ph106 ], [ %indvars.iv.next126, %bb.h ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv125
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %.critedge.loopexit

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next126 = add nsw i64 %indvars.iv125, -1
  %i.ad = icmp sgt i64 %indvars.iv125, 1
  br i1 %i.ad, label %bb.g, label %.lr.ph116, !llvm.loop !37

.critedge.loopexit:                               ; preds = %bb.g
  %5 = trunc nuw nsw i64 %indvars.iv125 to i32
  br label %.critedge

.critedge.loopexit162:                            ; preds = %bb.e
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit162, %.critedge.loopexit, %.preheader
  %.063144 = phi i32 [ 0, %.critedge.loopexit ], [ 0, %.preheader ], [ 1, %.critedge.loopexit162 ]
  %.066142 = phi i32 [ 0, %.critedge.loopexit ], [ 0, %.preheader ], [ %i.c, %.critedge.loopexit162 ] ; 2 uses
  %.073140 = phi ptr [ %0, %.critedge.loopexit ], [ %0, %.preheader ], [ %i.k, %.critedge.loopexit162 ] ; 2 uses
  %.076138 = phi i64 [ %1, %.critedge.loopexit ], [ %1, %.preheader ], [ %i.l, %.critedge.loopexit162 ] ; 2 uses
  %.2 = phi i32 [ %5, %.critedge.loopexit ], [ %i.s, %.preheader ], [ %6, %.critedge.loopexit162 ] ; 2 uses
  %i.ae = icmp sgt i32 %.2, -1
  br i1 %i.ae, label %.lr.ph116, label %._crit_edge

.lr.ph116:                                        ; preds = %bb.h, %.critedge
  %.2161 = phi i32 [ %.2, %.critedge ], [ 0, %bb.h ]
  %.076138160 = phi i64 [ %.076138, %.critedge ], [ %1, %bb.h ]
  %.073140159 = phi ptr [ %.073140, %.critedge ], [ %0, %bb.h ]
  %.066142158 = phi i32 [ %.066142, %.critedge ], [ 0, %bb.h ]
  %.063144157 = phi i32 [ %.063144, %.critedge ], [ 0, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.ah = zext nneg i32 %.2161 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph116, %.thread
  %indvars.iv.a = phi i64 [ %i.ah, %.lr.ph116 ], [ %indvars.iv.next.a, %.thread ] ; 4 uses
  %.164114 = phi i32 [ %.063144157, %.lr.ph116 ], [ %.26596, %.thread ]
  %.167113 = phi i32 [ %.066142158, %.lr.ph116 ], [ %i.ao, %.thread ]
  %.174111 = phi ptr [ %.073140159, %.lr.ph116 ], [ %i.av, %.thread ] ; 2 uses
  %.177110 = phi i64 [ %.076138160, %.lr.ph116 ], [ %i.aw, %.thread ] ; 5 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.a
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !17 ; 2 uses
  %.not89 = icmp eq i32 %.164114, 0
  br i1 %.not89, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = icmp eq i64 %indvars.iv.a, 0
  %or.cond = or i1 %i.al, %i.ak
  br i1 %or.cond, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  %.str.15.sink = phi ptr [ @.str.14, %bb.i ], [ @.str.15, %bb.j ]
  %i.am = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.174111, i64 noundef %.177110, ptr noundef nonnull %.str.15.sink, i64 noundef %i.aj) #20 ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %.thread, label %.critedge92

.thread:                                          ; preds = %bb.j, %bb.k
  %.26596 = phi i32 [ 1, %bb.k ], [ 0, %bb.j ]
  %.17195 = phi i32 [ %i.am, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %i.ao = add nuw nsw i32 %.17195, %.167113       ; 2 uses
  %i.ap = zext nneg i32 %.17195 to i64
  %.not90 = icmp sgt i64 %.177110, %i.ap
  %i.aq = icmp sgt i64 %.177110, 0
  %i.ar = trunc i64 %.177110 to i32
  %i.as = add nsw i32 %i.ar, -1
  %i.at = select i1 %i.aq, i32 %i.as, i32 0
  %.272 = select i1 %.not90, i32 %.17195, i32 %i.at
  %i.au = sext i32 %.272 to i64                   ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.174111, i64 %i.au ; 2 uses
  %i.aw = sub nsw i64 %.177110, %i.au             ; 2 uses
  %.not169 = icmp eq i64 %indvars.iv.a, 0
  br i1 %.not169, label %._crit_edge, label %bb.i, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.f, %.thread, %.preheader97, %.critedge
  %.177.lcssa = phi i64 [ %.076138, %.critedge ], [ %i.aw, %.thread ], [ %i.l, %.preheader97 ], [ %i.l, %bb.f ]
  %.174.lcssa = phi ptr [ %.073140, %.critedge ], [ %i.av, %.thread ], [ %i.k, %.preheader97 ], [ %i.k, %bb.f ]
  %.167.lcssa = phi i32 [ %.066142, %.critedge ], [ %i.ao, %.thread ], [ %i.c, %.preheader97 ], [ %i.c, %bb.f ] ; 2 uses
  %.not88 = icmp eq i32 %.167.lcssa, 0
  br i1 %.not88, label %._crit_edge.thread, label %.critedge92

._crit_edge.thread:                               ; preds = %._crit_edge
  %i.ax = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.174.lcssa, i64 noundef %.177.lcssa, ptr noundef nonnull @.str.4) #20
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 -1)
  br label %.critedge92

.critedge92:                                      ; preds = %bb.k, %._crit_edge.thread, %._crit_edge, %bb.d
  %.281 = phi i32 [ -1, %bb.d ], [ %.167.lcssa, %._crit_edge ], [ %spec.select, %._crit_edge.thread ], [ -1, %bb.k ]
  ret i32 %.281
}

; Function Attrs: nofree nounwind uwtable
define range(i32 -1, -2147483648) i32 @hwloc_bitmap_taskset_asprintf(ptr nofree noundef writeonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @hwloc_bitmap_taskset_snprintf(ptr noundef null, i64 noundef 0, ptr noundef %1)
  %i.b = add nsw i32 %i.a, 1
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #19 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !28
  %i.e = tail call i32 @hwloc_bitmap_taskset_snprintf(ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_taskset_sscanf(ptr nofree noundef captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 7) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %sub_0

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !23
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %hwloc_bitmap_reset_by_ulongs.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.k, i64 noundef 8) #21 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i, label %hwloc_bitmap_reset_by_ulongs.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.l, ptr %i.j, align 8, !tbaa !16
  store i32 1, ptr %i.g, align 4, !tbaa !15
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread.i

hwloc_bitmap_reset_by_ulongs.exit.thread.i:       ; preds = %bb.e, %bb.c
  store i32 1, ptr %0, align 8, !tbaa !11
  br label %.lr.ph.i.i

hwloc_bitmap_reset_by_ulongs.exit.i:              ; preds = %bb.d
  %.pr.i = load i32, ptr %0, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i.i, label %hwloc_bitmap_fill.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i, %hwloc_bitmap_reset_by_ulongs.exit.thread.i
  %i.m = phi i32 [ 1, %hwloc_bitmap_reset_by_ulongs.exit.thread.i ], [ %.pr.i, %hwloc_bitmap_reset_by_ulongs.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.p = zext i32 %i.m to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, i8 -1, i64 %i.q, i1 false), !tbaa !17
  br label %hwloc_bitmap_fill.exit

hwloc_bitmap_fill.exit:                           ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i, %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.r, align 8, !tbaa !19
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

sub_0:                                            ; preds = %bb.a
  %i.s = load i8, ptr %1, align 1                 ; 2 uses
  %i.t = zext i8 %i.s to i32
  %i.u = sub nsw i32 48, %i.t
  %.not65 = icmp eq i8 %i.s, 48
  br i1 %.not65, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 120, %i.x
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1
  %i.z = phi i32 [ %i.u, %sub_0 ], [ %i.y, %sub_1 ]
  %.not39 = icmp eq i32 %i.z, 0
  %spec.select.idx = select i1 %.not39, i64 2, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 2 uses
  %i.aa = load i8, ptr %spec.select, align 1, !tbaa !23
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.tail
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %hwloc_bitmap_reset_by_ulongs.exit.thread.i43

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.ah = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.ag, i64 noundef 8) #21 ; 2 uses
  %.not.not.i.i.i45 = icmp eq ptr %i.ah, null
  br i1 %.not.not.i.i.i45, label %hwloc_bitmap_reset_by_ulongs.exit.i46, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !16
  store i32 1, ptr %i.ac, align 4, !tbaa !15
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread.i43

hwloc_bitmap_reset_by_ulongs.exit.thread.i43:     ; preds = %bb.h, %bb.f
  store i32 1, ptr %0, align 8, !tbaa !11
  br label %.lr.ph.i.i44

hwloc_bitmap_reset_by_ulongs.exit.i46:            ; preds = %bb.g
  %.pr.i47 = load i32, ptr %0, align 8, !tbaa !11 ; 2 uses
  %.not.i.i48 = icmp eq i32 %.pr.i47, 0
  br i1 %.not.i.i48, label %hwloc_bitmap_zero.exit, label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i46, %hwloc_bitmap_reset_by_ulongs.exit.thread.i43
  %i.ai = phi i32 [ 1, %hwloc_bitmap_reset_by_ulongs.exit.thread.i43 ], [ %.pr.i47, %hwloc_bitmap_reset_by_ulongs.exit.i46 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16
  %i.al = zext i32 %i.ai to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i8 0, i64 %i.am, i1 false), !tbaa !17
  br label %hwloc_bitmap_zero.exit

hwloc_bitmap_zero.exit:                           ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i46, %.lr.ph.i.i44
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.an, align 8, !tbaa !19
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

bb.i:                                             ; preds = %.tail, %bb.b
  %.137 = phi ptr [ %spec.select, %.tail ], [ %i.d, %bb.b ] ; 2 uses
  %.032 = phi i32 [ 0, %.tail ], [ 1, %bb.b ]
  %i.ao = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.137) #22
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = shl nsw i32 %i.ap, 2
  %i.ar = add nsw i32 %i.aq, 63
  %i.as = sdiv i32 %i.ar, 64                      ; 3 uses
  %i.at = zext i32 %i.as to i64
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i, label %hwloc_flsl_manual.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = icmp ugt i64 %i.au, 4294967295          ; 2 uses
  %i.aw = lshr i64 %i.au, 32
  %spec.select.i.i.i = select i1 %i.av, i64 %i.aw, i64 %i.au ; 3 uses
  %spec.select33.i.i.i = select i1 %i.av, i32 33, i32 1 ; 2 uses
  %.not28.i.i.i = icmp samesign ult i64 %spec.select.i.i.i, 65536 ; 2 uses
  %i.ax = lshr i64 %spec.select.i.i.i, 16
  %i.ay = or disjoint i32 %spec.select33.i.i.i, 16
  %.122.i.i.i = select i1 %.not28.i.i.i, i64 %spec.select.i.i.i, i64 %i.ax ; 3 uses
  %.1.i.i.i = select i1 %.not28.i.i.i, i32 %spec.select33.i.i.i, i32 %i.ay ; 2 uses
  %.not29.i.i.i = icmp samesign ult i64 %.122.i.i.i, 256 ; 2 uses
  %i.az = lshr i64 %.122.i.i.i, 8
  %i.ba = or disjoint i32 %.1.i.i.i, 8
  %.223.i.i.i = select i1 %.not29.i.i.i, i64 %.122.i.i.i, i64 %i.az ; 3 uses
  %.2.i.i.i = select i1 %.not29.i.i.i, i32 %.1.i.i.i, i32 %i.ba ; 2 uses
  %.not30.i.i.i = icmp samesign ult i64 %.223.i.i.i, 16 ; 2 uses
  %i.bb = lshr i64 %.223.i.i.i, 4
  %i.bc = or disjoint i32 %.2.i.i.i, 4
  %.324.i.i.i = select i1 %.not30.i.i.i, i64 %.223.i.i.i, i64 %i.bb ; 3 uses
  %.3.i.i.i = select i1 %.not30.i.i.i, i32 %.2.i.i.i, i32 %i.bc ; 2 uses
  %i.bd = and i64 %.324.i.i.i, 12
  %.not31.i.i.i = icmp eq i64 %i.bd, 0            ; 2 uses
  %i.be = lshr i64 %.324.i.i.i, 2
  %i.bf = add nuw nsw i32 %.3.i.i.i, 2
  %.425.i.i.i = select i1 %.not31.i.i.i, i64 %.324.i.i.i, i64 %i.be
  %.4.i.i.i = select i1 %.not31.i.i.i, i32 %.3.i.i.i, i32 %i.bf
  %i.bg = trunc nuw nsw i64 %.425.i.i.i to i32
  %i.bh = lshr i32 %i.bg, 1
  %i.bi = and i32 %i.bh, 1
  %.5.i.i.i = add nuw nsw i32 %i.bi, %.4.i.i.i
  br label %hwloc_flsl_manual.exit.i.i

hwloc_flsl_manual.exit.i.i:                       ; preds = %bb.j, %bb.i
  %.026.i.i.i = phi i32 [ %.5.i.i.i, %bb.j ], [ 0, %bb.i ]
  %i.bj = shl nuw i32 1, %.026.i.i.i              ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !15
  %i.bm = icmp ugt i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.k, label %.lr.ph
end_hunk_1
