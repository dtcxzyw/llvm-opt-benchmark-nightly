Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ompi_datatype_create_indexed?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_datatype_t = type { %struct.ompi_datatype_t, [208 x i8] }
%struct.ompi_datatype_t = type { %struct.opal_datatype_t, i32, i32, ptr, ptr, i64, i64, [64 x i8] }
%struct.opal_datatype_t = type { %struct.opal_object_t, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, [64 x i8], %struct.dt_type_desc_t, %struct.dt_type_desc_t, ptr }
%struct.opal_object_t = type { ptr, i32 }
%struct.dt_type_desc_t = type { i64, i64, ptr }

@ompi_mpi_datatype_null = external global %struct.ompi_predefined_datatype_t, align 8

; Function Attrs: nounwind uwtable
define i32 @ompi_datatype_create_indexed(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 24
  %.val = load i64, ptr %i.a, align 8, !tbaa !17
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !28

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %.critedge.loopexit ] ; 4 uses
  %i.g = icmp eq i32 %.0.lcssa, %0
  %i.h = icmp eq i64 %.val, 0
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %.critedge.thread, label %bb.c

.critedge.thread:                                 ; preds = %bb.b, %.critedge
  %i.i = tail call i32 @ompi_datatype_duplicate(ptr noundef nonnull @ompi_mpi_datatype_null, ptr noundef %4) #2
  br label %bb.h

bb.c:                                             ; preds = %.critedge
  %i.j = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18
  %i.p = sext i32 %i.o to i64                     ; 3 uses
  %i.q = getelementptr i8, ptr %3, i64 48
  %.val55 = load i64, ptr %i.q, align 8, !tbaa !20
  %i.r = getelementptr i8, ptr %3, i64 56
  %.val56 = load i64, ptr %i.r, align 8, !tbaa !21
  %i.s = sub nsw i64 %.val56, %.val55             ; 4 uses
  %i.t = sub nsw i32 %0, %.0.lcssa
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24
  %i.w = trunc i64 %i.v to i32
  %i.x = add i32 %i.w, 2
  %i.y = mul i32 %i.x, %i.t
  %i.z = tail call ptr @ompi_datatype_create(i32 noundef %i.y) #2 ; 3 uses
  %.167 = add nuw nsw i32 %.0.lcssa, 1            ; 2 uses
  %i.aa = icmp slt i32 %.167, %0
  br i1 %i.aa, label %.lr.ph72.preheader, label %._crit_edge

.lr.ph72.preheader:                               ; preds = %bb.c
  %i.ab = add nsw i64 %i.p, %i.m
  %i.ac = zext i32 %.167 to i64
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %bb.g
  %indvars.iv76 = phi i64 [ %i.ac, %.lr.ph72.preheader ], [ %indvars.iv.next77, %bb.g ] ; 3 uses
  %.04870 = phi i64 [ %i.ab, %.lr.ph72.preheader ], [ %.149, %bb.g ] ; 3 uses
  %.05069 = phi i64 [ %i.m, %.lr.ph72.preheader ], [ %.151, %bb.g ] ; 3 uses
  %.06268 = phi i64 [ %i.p, %.lr.ph72.preheader ], [ %.163, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv76 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph72
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv76 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i64 %.04870, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = sext i32 %i.ae to i64                   ; 2 uses
  %i.al = add i64 %.06268, %i.ak
  %i.am = add nsw i64 %.04870, %i.ak
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.an = mul nsw i64 %.05069, %i.s
  %i.ao = tail call i32 @opal_datatype_add(ptr noundef %i.z, ptr noundef %3, i64 noundef %.06268, i64 noundef %i.an, i64 noundef %i.s) #2 ; 0 uses
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !18
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = load i32, ptr %i.ad, align 4, !tbaa !18
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = add nsw i64 %i.as, %i.aq
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.lr.ph72
  %.163 = phi i64 [ %.06268, %.lr.ph72 ], [ %i.al, %bb.e ], [ %i.as, %bb.f ] ; 2 uses
  %.151 = phi i64 [ %.05069, %.lr.ph72 ], [ %.05069, %bb.e ], [ %i.aq, %bb.f ] ; 2 uses
  %.149 = phi i64 [ %.04870, %.lr.ph72 ], [ %i.am, %bb.e ], [ %i.at, %bb.f ]
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.au = trunc nuw i64 %indvars.iv.next77 to i32
  %i.av = icmp sgt i32 %0, %i.au
  br i1 %i.av, label %.lr.ph72, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %.062.lcssa = phi i64 [ %i.p, %bb.c ], [ %.163, %bb.g ]
  %.050.lcssa = phi i64 [ %i.m, %bb.c ], [ %.151, %bb.g ]
  %i.aw = mul nsw i64 %.050.lcssa, %i.s
  %i.ax = tail call i32 @opal_datatype_add(ptr noundef %i.z, ptr noundef %3, i64 noundef %.062.lcssa, i64 noundef %i.aw, i64 noundef %i.s) #2 ; 0 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %.critedge.thread
  %.052 = phi i32 [ %i.i, %.critedge.thread ], [ 0, %._crit_edge ]
  ret i32 %.052
}

declare i32 @ompi_datatype_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ompi_datatype_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @ompi_datatype_create_hindexed(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 24
  %.val = load i64, ptr %i.a, align 8, !tbaa !17
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !30

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %.critedge.loopexit ] ; 4 uses
  %i.g = icmp eq i32 %.0.lcssa, %0
  %i.h = icmp eq i64 %.val, 0
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %.critedge.thread, label %bb.c

.critedge.thread:                                 ; preds = %bb.b, %.critedge
  %i.i = tail call i32 @ompi_datatype_duplicate(ptr noundef nonnull @ompi_mpi_datatype_null, ptr noundef %4) #2
  br label %bb.h

bb.c:                                             ; preds = %.critedge
  %i.j = getelementptr i8, ptr %3, i64 48
  %.val55 = load i64, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr i8, ptr %3, i64 56
  %.val56 = load i64, ptr %i.k, align 8, !tbaa !21
  %i.l = sub nsw i64 %.val56, %.val55             ; 5 uses
  %i.m = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.m
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = sub nsw i32 %0, %.0.lcssa
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.u = load i64, ptr %i.t, align 8, !tbaa !24
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, 2
  %i.x = mul i32 %i.w, %i.s
  %i.y = tail call ptr @ompi_datatype_create(i32 noundef %i.x) #2 ; 3 uses
  %.170 = add nuw nsw i32 %.0.lcssa, 1            ; 2 uses
  %i.z = icmp slt i32 %.170, %0
  br i1 %i.z, label %.lr.ph75.preheader, label %._crit_edge

.lr.ph75.preheader:                               ; preds = %bb.c
  %i.aa = mul i64 %i.l, %i.r
  %i.ab = add i64 %i.aa, %i.o
  %i.ac = zext i32 %.170 to i64
  br label %.lr.ph75

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %bb.g
  %indvars.iv79 = phi i64 [ %i.ac, %.lr.ph75.preheader ], [ %indvars.iv.next80, %bb.g ] ; 3 uses
  %.04873 = phi i64 [ %i.ab, %.lr.ph75.preheader ], [ %.149, %bb.g ] ; 3 uses
  %.05072 = phi i64 [ %i.o, %.lr.ph75.preheader ], [ %.151, %bb.g ] ; 3 uses
  %.06571 = phi i64 [ %i.r, %.lr.ph75.preheader ], [ %.166, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv79 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph75
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv79 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.ai = icmp eq i64 %.04873, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = sext i32 %i.ae to i64                   ; 2 uses
  %i.ak = add i64 %.06571, %i.aj
  %i.al = mul nsw i64 %i.l, %i.aj
  %i.am = add nsw i64 %i.al, %.04873
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.an = tail call i32 @opal_datatype_add(ptr noundef %i.y, ptr noundef %3, i64 noundef %.06571, i64 noundef %.05072, i64 noundef %i.l) #2 ; 0 uses
  %i.ao = load i64, ptr %i.ag, align 8, !tbaa !27 ; 2 uses
  %i.ap = load i32, ptr %i.ad, align 4, !tbaa !18
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = mul nsw i64 %i.l, %i.aq
  %i.as = add nsw i64 %i.ar, %i.ao
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.lr.ph75
  %.166 = phi i64 [ %.06571, %.lr.ph75 ], [ %i.ak, %bb.e ], [ %i.aq, %bb.f ] ; 2 uses
  %.151 = phi i64 [ %.05072, %.lr.ph75 ], [ %.05072, %bb.e ], [ %i.ao, %bb.f ] ; 2 uses
  %.149 = phi i64 [ %.04873, %.lr.ph75 ], [ %i.am, %bb.e ], [ %i.as, %bb.f ]
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.at = trunc nuw i64 %indvars.iv.next80 to i32
  %i.au = icmp sgt i32 %0, %i.at
  br i1 %i.au, label %.lr.ph75, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %.065.lcssa = phi i64 [ %i.r, %bb.c ], [ %.166, %bb.g ]
  %.050.lcssa = phi i64 [ %i.o, %bb.c ], [ %.151, %bb.g ]
  %i.av = tail call i32 @opal_datatype_add(ptr noundef %i.y, ptr noundef %3, i64 noundef %.065.lcssa, i64 noundef %.050.lcssa, i64 noundef %i.l) #2 ; 0 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %.critedge.thread
  %.052 = phi i32 [ %i.i, %.critedge.thread ], [ 0, %._crit_edge ]
  ret i32 %.052
}

; Function Attrs: nounwind uwtable
define i32 @ompi_datatype_create_indexed_block(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %i.b = icmp eq i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ompi_datatype_duplicate(ptr noundef nonnull @ompi_mpi_datatype_null, ptr noundef %4) #2
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 48
  %.val = load i64, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr i8, ptr %3, i64 56
  %.val44 = load i64, ptr %i.e, align 8, !tbaa !21
  %i.f = sub nsw i64 %.val44, %.val               ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, 2
  %i.k = mul i32 %i.j, %0
  %i.l = tail call ptr @ompi_datatype_create(i32 noundef %i.k) #2 ; 3 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !18
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = sext i32 %1 to i64                       ; 5 uses
  %i.p = icmp sgt i32 %0, 1
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.037.pn.pn = phi i64 [ %i.n, %.lr.ph.preheader ], [ %.037.pn, %bb.f ]
  %.03648 = phi i64 [ %i.o, %.lr.ph.preheader ], [ %.1, %bb.f ] ; 2 uses
  %.03947 = phi i64 [ %i.n, %.lr.ph.preheader ], [ %.140, %bb.f ] ; 2 uses
  %.03750 = add nsw i64 %.037.pn.pn, %i.o         ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i64 %.03750, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.u = add i64 %.03648, %i.o
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.v = mul nsw i64 %.03947, %i.f
  %i.w = tail call i32 @opal_datatype_add(ptr noundef %i.l, ptr noundef %3, i64 noundef %.03648, i64 noundef %i.v, i64 noundef %i.f) #2 ; 0 uses
  %i.x = load i32, ptr %i.q, align 4, !tbaa !18
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.140 = phi i64 [ %.03947, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  %.037.pn = phi i64 [ %.03750, %bb.d ], [ %i.y, %bb.e ]
  %.1 = phi i64 [ %i.u, %bb.d ], [ %i.o, %bb.e ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.039.lcssa = phi i64 [ %i.n, %bb.c ], [ %.140, %bb.f ]
  %.036.lcssa = phi i64 [ %i.o, %bb.c ], [ %.1, %bb.f ]
  %i.z = mul nsw i64 %.039.lcssa, %i.f
  %i.aa = tail call i32 @opal_datatype_add(ptr noundef %i.l, ptr noundef %3, i64 noundef %.036.lcssa, i64 noundef %i.z, i64 noundef %i.f) #2 ; 0 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.b
  %.041 = phi i32 [ %i.c, %bb.b ], [ 0, %._crit_edge ]
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define i32 @ompi_datatype_create_hindexed_block(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %i.b = icmp eq i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ompi_datatype_duplicate(ptr noundef nonnull @ompi_mpi_datatype_null, ptr noundef %4) #2
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 48
  %.val = load i64, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr i8, ptr %3, i64 56
  %.val44 = load i64, ptr %i.e, align 8, !tbaa !21
  %i.f = sub nsw i64 %.val44, %.val               ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, 2
  %i.k = mul i32 %i.j, %0
  %i.l = tail call ptr @ompi_datatype_create(i32 noundef %i.k) #2 ; 3 uses
  %i.m = load i64, ptr %2, align 8, !tbaa !27     ; 3 uses
  %i.n = sext i32 %1 to i64                       ; 5 uses
  %i.o = mul i64 %i.f, %i.n
  %i.p = icmp sgt i32 %0, 1
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.037.pn.pn = phi i64 [ %i.m, %.lr.ph.preheader ], [ %.037.pn, %bb.f ]
  %.03651 = phi i64 [ %i.n, %.lr.ph.preheader ], [ %.1, %bb.f ] ; 2 uses
  %.03950 = phi i64 [ %i.m, %.lr.ph.preheader ], [ %.140, %bb.f ] ; 2 uses
  %.03753 = add i64 %.037.pn.pn, %i.o             ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !27
  %i.s = icmp eq i64 %.03753, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.t = add i64 %.03651, %i.n
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = tail call i32 @opal_datatype_add(ptr noundef %i.l, ptr noundef %3, i64 noundef %.03651, i64 noundef %.03950, i64 noundef %i.f) #2 ; 0 uses
  %i.v = load i64, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  br label %bb.f
end_hunk_0
