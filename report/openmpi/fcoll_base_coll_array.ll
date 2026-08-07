inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ompi_fcoll_base_coll_gatherv_array:bb.a
bb.j:                                             ; preds = %bb.i, %bb.f
  %.2.us = phi i32 [ %.1.us, %bb.i ], [ %i.aj, %bb.f ] ; 2 uses
  %.not72.us = icmp eq i32 %.2.us, 0
  br i1 %.not72.us, label %bb.k, label %.split.us

bb.k:                                             ; preds = %bb.j, %.thread.us
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !57

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.lr.ph ] ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !37
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.m, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %3, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37 ; 2 uses
  %i.at = icmp eq i32 %i.as, %.val
  br i1 %i.at, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !37 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !56
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ba = tail call i32 %i.ax(ptr noundef %i.aq, i64 noundef %i.ay, ptr noundef %6, i32 noundef %i.as, i32 noundef 101, ptr noundef %10, ptr noundef nonnull %i.az) #6 ; 2 uses
  %.not72 = icmp eq i32 %i.ba, 0
  br i1 %.not72, label %bb.n, label %.split.us

.split.us:                                        ; preds = %bb.m, %bb.j
  %.us-phi = phi i32 [ %.2.us, %bb.j ], [ %i.ba, %bb.m ]
  tail call void @free(ptr noundef nonnull %i.p) #6
  br label %bb.o

.sink.split:                                      ; preds = %bb.l, %.lr.ph.split
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store ptr @ompi_request_null, ptr %i.bb, align 8, !tbaa !54
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count82
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.n, %bb.k, %.preheader
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !58
  %i.bd = tail call i32 %i.bc(i64 noundef %i.n, ptr noundef nonnull %i.p, ptr noundef null) #6
  tail call void @free(ptr noundef nonnull %i.p) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.b, %._crit_edge, %.split.us, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ %.us-phi, %.split.us ], [ %i.bd, %._crit_edge ], [ 0, %bb.b ], [ -2, %bb.d ]
  ret i32 %.0
}

declare i32 @ompi_datatype_create_indexed(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ompi_fcoll_base_coll_bcast_array(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %6, i64 220
  %.val = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %i.b = sext i32 %3 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %4, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.d, %.val
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !60
  %i.f = sext i32 %1 to i64
  %i.g = tail call i32 %i.e(ptr noundef %0, i64 noundef %i.f, ptr noundef %2, i32 noundef %i.d, i32 noundef 102, ptr noundef nonnull %6, ptr noundef null) #6
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = sext i32 %5 to i64                       ; 2 uses
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #7 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.l = icmp sgt i32 %5, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.m = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !37   ; 2 uses
  %i.p = icmp eq i32 %i.o, %.val
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store ptr @ompi_request_null, ptr %i.q, align 8, !tbaa !54
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.t = tail call i32 %i.r(ptr noundef %0, i64 noundef %i.m, ptr noundef %2, i32 noundef %i.o, i32 noundef 102, i32 noundef 4, ptr noundef %6, ptr noundef nonnull %i.s) #6 ; 2 uses
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.j) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !58
  %i.v = tail call i32 %i.u(i64 noundef %i.h, ptr noundef nonnull %i.j, ptr noundef null) #6
  tail call void @free(ptr noundef nonnull %i.j) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %._crit_edge, %bb.g, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.v, %._crit_edge ], [ %i.t, %bb.g ], [ -2, %bb.c ]
  ret i32 %.0
}

declare i32 @ompi_datatype_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @ompi_datatype_sndrcv(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @ompi_fcoll_base_coll_scatterv_array(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %10, i64 220
  %.val = load i32, ptr %i.a, align 4, !tbaa !8   ; 4 uses
  %i.b = sext i32 %7 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %8, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.d, %.val
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !60
  %i.g = zext nneg i32 %5 to i64
  %i.h = tail call i32 %i.f(ptr noundef %4, i64 noundef %i.g, ptr noundef %6, i32 noundef %i.d, i32 noundef 103, ptr noundef nonnull %10, ptr noundef null) #6
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46
  %i.m = sub nsw i64 %i.l, %i.j                   ; 3 uses
  %i.n = sext i32 %9 to i64                       ; 2 uses
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #7 ; 11 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.r = icmp sgt i32 %9, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.not71 = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not71, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count96 = zext nneg i32 %9 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.g
  %indvars.iv93 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next94, %bb.g ] ; 6 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv93
  %i.t = load i32, ptr %i.s, align 4, !tbaa !37
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.m, %i.u
  %i.w = getelementptr inbounds i8, ptr inttoptr (i64 1 to ptr), i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv93
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37   ; 2 uses
  %i.z = icmp eq i32 %i.y, %.val
  br i1 %i.z, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv93
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !61
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv93
  %i.ag = tail call i32 %i.ad(ptr noundef nonnull %i.w, i64 noundef %i.ae, ptr noundef %3, i32 noundef %i.y, i32 noundef 103, i32 noundef 4, ptr noundef %10, ptr noundef nonnull %i.af) #6 ; 2 uses
  %.not72.us = icmp eq i32 %i.ag, 0
  br i1 %.not72.us, label %bb.g, label %.split.us

.sink.split:                                      ; preds = %.lr.ph.split.us, %bb.e
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv93
  store ptr @ompi_request_null, ptr %i.ah, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !63

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ai = icmp sgt i32 %5, 0
  %wide.trip.count91 = zext nneg i32 %9 to i64    ; 2 uses
  br i1 %i.ai, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph.split ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !37
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.m, %i.al
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !37 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, %.val
  br i1 %i.aq, label %.sink.split122, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split.us
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %.sink.split122

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !61
  %i.av = zext nneg i32 %i.as to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ax = tail call i32 %i.au(ptr noundef %i.an, i64 noundef %i.av, ptr noundef %3, i32 noundef %i.ap, i32 noundef 103, i32 noundef 4, ptr noundef %10, ptr noundef nonnull %i.aw) #6 ; 2 uses
  %.not72.us80 = icmp eq i32 %i.ax, 0
  br i1 %.not72.us80, label %bb.j, label %.split.us

.sink.split122:                                   ; preds = %.lr.ph.split.split.us, %bb.h
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store ptr @ompi_request_null, ptr %i.ay, align 8, !tbaa !54
  br label %bb.j

bb.j:                                             ; preds = %.sink.split122, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count91
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !63

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.q
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.q ], [ 0, %.lr.ph.split ] ; 7 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv88
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !37
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.m, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv88
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !37 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, %.val
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv88
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !37 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0                   ; 2 uses
  br i1 %i.bg, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.lr.ph.split.split
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.bd, i32 noundef %i.bi, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2 = phi i32 [ %i.bk, %bb.l ], [ 0, %bb.k ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv88
  store ptr @ompi_request_null, ptr %i.bl, align 8, !tbaa !54
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph.split.split
  br i1 %i.bj, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !61
  %i.bn = zext nneg i32 %i.bi to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv88
  %i.bp = tail call i32 %i.bm(ptr noundef %i.bd, i64 noundef %i.bn, ptr noundef %3, i32 noundef %i.bf, i32 noundef 103, i32 noundef 4, ptr noundef %10, ptr noundef nonnull %i.bo) #6
  br label %bb.p

.thread:                                          ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv88
  store ptr @ompi_request_null, ptr %i.bq, align 8, !tbaa !54
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m
  %.3 = phi i32 [ %.2, %bb.m ], [ %i.bp, %bb.o ]  ; 2 uses
  %.not72 = icmp eq i32 %.3, 0
  br i1 %.not72, label %bb.q, label %.split.us

.split.us:                                        ; preds = %bb.i, %bb.p, %bb.f
  %.us-phi = phi i32 [ %.3, %bb.p ], [ %i.ag, %bb.f ], [ %i.ax, %bb.i ]
  tail call void @free(ptr noundef nonnull %i.p) #6
  br label %bb.r

bb.q:                                             ; preds = %.thread, %bb.p
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.j, %bb.q, %bb.g, %.preheader
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !58
  %i.bs = tail call i32 %i.br(i64 noundef %i.n, ptr noundef nonnull %i.p, ptr noundef null) #6
  tail call void @free(ptr noundef nonnull %i.p) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.b, %bb.c, %._crit_edge, %.split.us
  %.0 = phi i32 [ %.us-phi, %.split.us ], [ %i.bs, %._crit_edge ], [ 0, %bb.b ], [ %i.h, %bb.c ], [ -2, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ompi_fcoll_base_coll_allgather_array(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %9, i64 220
  %.val = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %i.b = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  %i.c = icmp ne i32 %.val, 0
  %or.cond = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = sub nsw i64 %i.g, %i.e
  %i.i = sext i32 %.val to i64
  %i.j = sext i32 %4 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = mul i64 %i.k, %i.h
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.034 = phi ptr [ %5, %bb.b ], [ %2, %bb.a ]
  %.033 = phi i32 [ %4, %bb.b ], [ %1, %bb.a ]
  %.032 = phi ptr [ %i.m, %bb.b ], [ %0, %bb.a ]
  %i.n = tail call i32 @ompi_fcoll_base_coll_gather_array(ptr noundef %.032, i32 noundef %.033, ptr noundef %.034, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %9) ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = mul nsw i32 %8, %4
  %i.q = tail call i32 @ompi_fcoll_base_coll_bcast_array(ptr noundef %3, i32 noundef %i.p, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %9)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.031 = phi i32 [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define i32 @ompi_fcoll_base_coll_gather_array(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %9, i64 220
  %.val = load i32, ptr %i.a, align 4, !tbaa !8   ; 3 uses
  %i.b = sext i32 %6 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %7, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.d, %.val
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !52
  %i.f = sext i32 %1 to i64
  %i.g = tail call i32 %i.e(ptr noundef %0, i64 noundef %i.f, ptr noundef %2, i32 noundef %i.d, i32 noundef 100, i32 noundef 4, ptr noundef nonnull %9) #6
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46
  %i.l = sub nsw i64 %i.k, %i.i
  %i.m = sext i32 %4 to i64                       ; 3 uses
  %i.n = mul nsw i64 %i.l, %i.m                   ; 2 uses
  %i.o = sext i32 %8 to i64                       ; 2 uses
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #7 ; 7 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.s = icmp sgt i32 %8, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
end_hunk_0
