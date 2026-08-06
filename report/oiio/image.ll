inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define ptr @opj_image_create0() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @opj_calloc(i64 noundef 1, i64 noundef 48) #7
  ret ptr %i.a
}

declare ptr @opj_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @opj_image_create(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @opj_calloc(i64 noundef 1, i64 noundef 48) #7 ; 10 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %2, ptr %i.b, align 4, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  store i32 %0, ptr %i.c, align 8, !tbaa !12
  %i.d = zext i32 %0 to i64                       ; 2 uses
  %i.e = tail call ptr @opj_calloc(i64 noundef %i.d, i64 noundef 64) #7 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 7 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !13
  %.not57 = icmp eq ptr %i.e, null
  br i1 %.not57, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not90 = icmp eq i32 %0, 0
  br i1 %.not90, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.not16.i = icmp eq ptr %i.h, null
  br i1 %.not16.i, label %.critedge.sink.split, label %.critedge.sink.split.sink.split

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %indvars.iv ; 7 uses
  %i.k = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.n = load <4 x i32>, ptr %i.k, align 4, !tbaa !3 ; 3 uses
  store <4 x i32> %i.n, ptr %i.j, align 8, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load <2 x i32>, ptr %i.o, align 4, !tbaa !3
  store <2 x i32> %i.q, ptr %i.p, align 8, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.s = load i32, ptr %i.r, align 4, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 %i.s, ptr %i.t, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 %i.v, ptr %i.w, align 8, !tbaa !22
  %i.x = extractelement <4 x i32> %i.n, i64 3     ; 2 uses
  %.not58 = icmp eq i32 %i.x, 0
  %i.y = extractelement <4 x i32> %i.n, i64 2
  %.pre = zext i32 %i.y to i64                    ; 2 uses
  br i1 %.not58, label %.lr.ph._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.z = zext i32 %i.x to i64                     ; 2 uses
  %3 = shl nuw nsw i64 %i.z, 2
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %.pre)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %.preheader.i62, label %.lr.ph._crit_edge

.preheader.i62:                                   ; preds = %bb.d
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %.not19.i63 = icmp eq i32 %i.aa, 0
  br i1 %.not19.i63, label %bb.g, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %.preheader.i62, %bb.f
  %i.ab = phi i32 [ %i.ag, %bb.f ], [ %i.aa, %.preheader.i62 ]
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i68, %bb.f ], [ 0, %.preheader.i62 ] ; 2 uses
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %indvars.iv.i65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  %.not17.i66 = icmp eq ptr %i.af, null
  br i1 %.not17.i66, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i64
  tail call void @opj_image_data_free(ptr noundef nonnull %i.af) #7
  %.pre.i67 = load i32, ptr %i.c, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i64
  %i.ag = phi i32 [ %.pre.i67, %bb.e ], [ %i.ab, %.lr.ph.i64 ] ; 2 uses
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next.i68, %i.ah
  br i1 %i.ai, label %.lr.ph.i64, label %._crit_edge.loopexit.i69, !llvm.loop !24

._crit_edge.loopexit.i69:                         ; preds = %bb.f
  %.pre21.i70 = load ptr, ptr %i.f, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %.preheader.i62, %._crit_edge.loopexit.i69
  %i.aj = phi ptr [ %.pre21.i70, %._crit_edge.loopexit.i69 ], [ %i.i, %.preheader.i62 ]
  tail call void @opj_free(ptr noundef %i.aj) #7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %.not16.i72 = icmp eq ptr %i.al, null
  br i1 %.not16.i72, label %.critedge.sink.split, label %.critedge.sink.split.sink.split

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.d
  %.pre-phi95 = phi i64 [ %i.z, %bb.d ], [ 0, %.lr.ph ]
  %i.am = shl nuw nsw i64 %.pre, 2
  %i.an = mul i64 %i.am, %.pre-phi95
  %i.ao = tail call ptr @opj_image_data_alloc(i64 noundef %i.an) #7 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !23
  %.not59 = icmp eq ptr %i.ao, null
  br i1 %.not59, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph._crit_edge
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %.not15.i75 = icmp eq ptr %i.aq, null
  br i1 %.not15.i75, label %bb.k, label %.preheader.i76

.preheader.i76:                                   ; preds = %bb.h
  %i.ar = load i32, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %.not19.i77 = icmp eq i32 %i.ar, 0
  br i1 %.not19.i77, label %._crit_edge.i85, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.preheader.i76, %bb.j
  %i.as = phi i32 [ %i.ax, %bb.j ], [ %i.ar, %.preheader.i76 ]
  %indvars.iv.i79 = phi i64 [ %indvars.iv.next.i82, %bb.j ], [ 0, %.preheader.i76 ] ; 2 uses
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.at, i64 %indvars.iv.i79
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !23 ; 2 uses
  %.not17.i80 = icmp eq ptr %i.aw, null
  br i1 %.not17.i80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i78
  tail call void @opj_image_data_free(ptr noundef nonnull %i.aw) #7
  %.pre.i81 = load i32, ptr %i.c, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i78
  %i.ax = phi i32 [ %.pre.i81, %bb.i ], [ %i.as, %.lr.ph.i78 ] ; 2 uses
  %indvars.iv.next.i82 = add nuw nsw i64 %indvars.iv.i79, 1 ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next.i82, %i.ay
  br i1 %i.az, label %.lr.ph.i78, label %._crit_edge.loopexit.i83, !llvm.loop !24

._crit_edge.loopexit.i83:                         ; preds = %bb.j
  %.pre21.i84 = load ptr, ptr %i.f, align 8, !tbaa !13
  br label %._crit_edge.i85

._crit_edge.i85:                                  ; preds = %._crit_edge.loopexit.i83, %.preheader.i76
  %i.ba = phi ptr [ %.pre21.i84, %._crit_edge.loopexit.i83 ], [ %i.aq, %.preheader.i76 ]
  tail call void @opj_free(ptr noundef %i.ba) #7
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i85, %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14 ; 2 uses
  %.not16.i86 = icmp eq ptr %i.bc, null
  br i1 %.not16.i86, label %.critedge.sink.split, label %.critedge.sink.split.sink.split

bb.l:                                             ; preds = %.lr.ph._crit_edge
  %i.bd = load i32, ptr %i.l, align 8, !tbaa !26
  %i.be = zext i32 %i.bd to i64
  %i.bf = load i32, ptr %i.m, align 4, !tbaa !27
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.be, 2
  %i.bi = mul i64 %i.bh, %i.bg
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ao, i8 0, i64 %i.bi, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !28

.critedge.sink.split.sink.split:                  ; preds = %bb.k, %bb.g, %bb.c
  %.sink = phi ptr [ %i.al, %bb.g ], [ %i.h, %bb.c ], [ %i.bc, %bb.k ]
  tail call void @opj_free(ptr noundef nonnull %.sink) #7
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %.critedge.sink.split.sink.split, %bb.k, %bb.g, %bb.c
  tail call void @opj_free(ptr noundef nonnull %i.a) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.sink.split, %.preheader, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %.critedge.sink.split ], [ %i.a, %.preheader ], [ %i.a, %bb.l ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define void @opj_image_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.e = phi i32 [ %i.j, %bb.d ], [ %i.d, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @opj_image_data_free(ptr noundef nonnull %i.i) #7
  %.pre = load i32, ptr %i.c, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.j = phi i32 [ %.pre, %bb.c ], [ %i.e, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre21 = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.m = phi ptr [ %.pre21, %._crit_edge.loopexit ], [ %i.b, %.preheader ]
  tail call void @opj_free(ptr noundef %i.m) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %.not16 = icmp eq ptr %i.o, null
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @opj_free(ptr noundef nonnull %i.o) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @opj_free(ptr noundef nonnull %0) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

declare ptr @opj_image_data_alloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @opj_image_data_free(ptr noundef) local_unnamed_addr #1

declare void @opj_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_0
begin_hunk_1_@opj_copy_image_header:bb.a
  br i1 %.not60, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.b, align 8, !tbaa !13
  store i32 0, ptr %i.q, align 8, !tbaa !12
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph57, %bb.f
  %i.w = phi ptr [ %i.t, %.lr.ph57 ], [ %i.aa, %bb.f ]
  %indvars.iv62 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next63, %bb.f ] ; 4 uses
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %indvars.iv62
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %indvars.iv62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false)
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %indvars.iv62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr null, ptr %i.ac, align 8, !tbaa !23
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.ad = load i32, ptr %i.q, align 8, !tbaa !12
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next63, %i.ae
  br i1 %i.af, label %bb.f, label %._crit_edge58, !llvm.loop !49

._crit_edge58:                                    ; preds = %bb.f, %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !50 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !50
  %.not51 = icmp eq i32 %i.ak, 0
  br i1 %.not51, label %bb.j, label %bb.g

bb.g:                                             ; preds = %._crit_edge58
  %i.am = zext i32 %i.ak to i64
  %i.an = tail call ptr @opj_malloc(i64 noundef %i.am) #7 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !14
  %.not52 = icmp eq ptr %i.an, null
  br i1 %.not52, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.ao, align 8, !tbaa !14
  store i32 0, ptr %i.al, align 8, !tbaa !50
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !14
  %i.ar = load i32, ptr %i.aj, align 8, !tbaa !50
  %i.as = zext i32 %i.ar to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge58
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.at, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.e
  ret void
}

declare ptr @opj_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define ptr @opj_image_tile_create(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @opj_calloc(i64 noundef 1, i64 noundef 48) #7 ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %2, ptr %i.b, align 4, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %0, ptr %i.c, align 8, !tbaa !12
  %i.d = zext i32 %0 to i64                       ; 3 uses
  %i.e = tail call ptr @opj_calloc(i64 noundef %i.d, i64 noundef 64) #7 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %i.f, align 8, !tbaa !13
  %.not42 = icmp eq ptr %i.e, null
  br i1 %.not42, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not44 = icmp eq i32 %0, 0
  br i1 %.not44, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %i.d, 1
  %i.g = icmp eq i32 %0, 1
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, 4294967294
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %.not16.i = icmp eq ptr %i.i, null
  br i1 %.not16.i, label %opj_image_destroy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @opj_free(ptr noundef nonnull %i.i) #7
  br label %opj_image_destroy.exit

opj_image_destroy.exit:                           ; preds = %bb.c, %bb.d
  tail call void @opj_free(ptr noundef nonnull %i.a) #7
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %indvars.iv ; 5 uses
  %i.k = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.l = load <4 x i32>, ptr %i.k, align 4, !tbaa !3
  store <4 x i32> %i.l, ptr %i.j, align 8, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !3
  store <2 x i32> %i.o, ptr %i.n, align 8, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 %i.q, ptr %i.r, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 %i.t, ptr %i.u, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr null, ptr %i.v, align 8, !tbaa !23
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %indvars.iv.next ; 5 uses
  %i.x = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv.next ; 4 uses
  %i.y = load <4 x i32>, ptr %i.x, align 4, !tbaa !3
  store <4 x i32> %i.y, ptr %i.w, align 8, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ab = load <2 x i32>, ptr %i.z, align 4, !tbaa !3
  store <2 x i32> %i.ab, ptr %i.aa, align 8, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr null, ptr %i.ai, align 8, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !51

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod49 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %indvars.iv.epil.init ; 5 uses
  %i.ak = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv.epil.init ; 4 uses
  %i.al = load <4 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <4 x i32> %i.al, ptr %i.aj, align 8, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load <2 x i32>, ptr %i.am, align 4, !tbaa !3
  store <2 x i32> %i.ao, ptr %i.an, align 8, !tbaa !3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i32 %i.at, ptr %i.au, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr null, ptr %i.av, align 8, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.a, %opj_image_destroy.exit
  %.0 = phi ptr [ null, %opj_image_destroy.exit ], [ null, %bb.a ], [ %i.a, %.preheader ], [ %i.a, %.loopexit.loopexit.unr-lcssa ], [ %i.a, %.lr.ph.epil.preheader ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 20}
!8 = !{!"opj_image", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !9, i64 24, !11, i64 32, !4, i64 40}
!9 = !{!"p1 _ZTS14opj_image_comp", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!8, !4, i64 16}
!13 = !{!8, !9, i64 24}
!14 = !{!8, !11, i64 32}
!15 = !{!16, !4, i64 24}
!16 = !{!"opj_image_comptparm", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32}
!17 = !{!18, !4, i64 24}
!18 = !{!"opj_image_comp", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !19, i64 48, !20, i64 56}
!19 = !{!"p1 int", !10, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!16, !4, i64 32}
!22 = !{!18, !4, i64 32}
!23 = !{!18, !19, i64 48}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!18, !4, i64 8}
!27 = !{!18, !4, i64 12}
!28 = distinct !{!28, !25}
!29 = !{!30, !4, i64 36}
!30 = !{!"opj_cp", !20, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !4, i64 32, !4, i64 36, !4, i64 40, !31, i64 48, !11, i64 56, !4, i64 64, !4, i64 68, !11, i64 72, !11, i64 80, !11, i64 88, !4, i64 96, !4, i64 100, !4, i64 104, !32, i64 112, !5, i64 120, !4, i64 152, !4, i64 156, !4, i64 156, !4, i64 156}
!31 = !{!"p1 _ZTS14opj_ppx_struct", !10, i64 0}
!32 = !{!"p1 _ZTS7opj_tcp", !10, i64 0}
!33 = !{!30, !4, i64 16}
!34 = !{!30, !4, i64 8}
!35 = !{!8, !4, i64 12}
!36 = !{!30, !4, i64 32}
!37 = !{!30, !4, i64 12}
!38 = !{!30, !4, i64 4}
!39 = !{!8, !4, i64 8}
!40 = !{!8, !4, i64 4}
!41 = !{!8, !4, i64 0}
!42 = !{!18, !4, i64 0}
!43 = !{!18, !4, i64 4}
!44 = !{!18, !4, i64 40}
!45 = !{!18, !4, i64 16}
!46 = !{!18, !4, i64 20}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = !{!8, !4, i64 40}
!51 = distinct !{!51, !25}
end_hunk_1
