begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@njob = external local_unnamed_addr global i32, align 4
@amino_dis = external local_unnamed_addr global [128 x [128 x i32]], align 16
@penalty = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [26 x i8] c"score in score_calc = %f\0A\00", align 1
@amino_n = external local_unnamed_addr global [128 x i32], align 16
@strnbcat.b = internal global [5000000 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@nodeFromABranch.outergroup2 = internal unnamed_addr global ptr null, align 8
@nodeFromABranch.table = internal unnamed_addr global ptr null, align 8
@geta2 = external local_unnamed_addr global float, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mdfymtx(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @njob, align 4, !tbaa !4   ; 3 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph29, label %._crit_edge

.lr.ph29:                                         ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 4 uses
  %wide.trip.count37 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 3 uses
  %i.g = add nsw i64 %wide.trip.count, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph29, %.loopexit
  %indvars.iv33 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next34, %.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph29 ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.01928 = phi i32 [ 0, %.lr.ph29 ], [ %.120, %.loopexit ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv33
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = add nsw i32 %.01928, 1                   ; 5 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv33 ; 3 uses
  %i.l = sext i32 %.01928 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l ; 3 uses
  %i.n = sub nsw i64 %indvars.iv33, %wide.trip.count
  %i.o = and i64 %i.n, 1
  %lcmp.mod.not.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %.not23.prol = icmp eq i8 %i.q, 0
  br i1 %.not23.prol, label %.prol.loopexit.unr-lcssa, label %bb.c

bb.c:                                             ; preds = %.prol.preheader
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !14
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.v = sext i32 %i.j to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  store double %i.t, ptr %i.w, align 8, !tbaa !14
  %i.x = add nsw i32 %.01928, 2
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c, %.prol.preheader
  %.1.prol = phi i32 [ %i.x, %bb.c ], [ %i.j, %.prol.preheader ]
  %indvars.iv.next31.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv30.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next31.prol, %.prol.loopexit.unr-lcssa ]
  %.025.unr = phi i32 [ %i.j, %.lr.ph ], [ %.1.prol, %.prol.loopexit.unr-lcssa ]
  %i.y = icmp eq i64 %i.g, %indvars.iv33
  br i1 %i.y, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.g
  %indvars.iv30 = phi i64 [ %indvars.iv.next31.1, %bb.g ], [ %indvars.iv30.unr, %.prol.loopexit ] ; 4 uses
  %.025 = phi i32 [ %.1.1, %bb.g ], [ %.025.unr, %.prol.loopexit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv30
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %.not23 = icmp eq i8 %i.aa, 0
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.new
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv30
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !14
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.af = sext i32 %.025 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  store double %i.ad, ptr %i.ag, align 8, !tbaa !14
  %i.ah = add nsw i32 %.025, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.new, %bb.d
  %.1 = phi i32 [ %i.ah, %bb.d ], [ %.025, %.lr.ph.new ] ; 3 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next31
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %.not23.1 = icmp eq i8 %i.aj, 0
  br i1 %.not23.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next31
  %i.am = load double, ptr %i.al, align 8, !tbaa !14
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.ao = sext i32 %.1 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  store double %i.am, ptr %i.ap, align 8, !tbaa !14
  %i.aq = add nsw i32 %.1, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.aq, %bb.f ], [ %.1, %bb.e ]
  %indvars.iv.next31.1 = add nuw nsw i64 %indvars.iv30, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next31.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.new, !llvm.loop !16

.loopexit:                                        ; preds = %.prol.loopexit, %bb.g, %bb.b
  %.120 = phi i32 [ %.01928, %bb.b ], [ %i.j, %bb.g ], [ %i.j, %.prol.loopexit ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count37
  br i1 %exitcond38.not, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local float @score_calc(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  %.fr = freeze i64 %i.b
  %i.c = trunc i64 %.fr to i32                    ; 3 uses
  %i.d = add i32 %1, -1
  %i.e = icmp sgt i32 %1, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %i.c, -2                     ; 2 uses
  %i.g = icmp sgt i32 %i.c, 0
  %i.h = load i32, ptr @penalty, align 4          ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count93 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph72.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge.loopexit, label %.lr.ph72.us, !llvm.loop !19

.lr.ph72.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv90 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next91, %.loopexit.us ] ; 2 uses
  %indvars.iv84 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next85, %.loopexit.us ] ; 2 uses
  %.05074.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.az, %.loopexit.us ]
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv90
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph72.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %._crit_edge.us.us ], [ %indvars.iv84, %.lr.ph72.us ] ; 2 uses
  %.15169.us.us = phi float [ %i.az, %._crit_edge.us.us ], [ %.05074.us, %.lr.ph72.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv86
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.us.us
  %.04961.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %.1.us.us, %bb.i ] ; 3 uses
  %.05260.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.ba, %bb.i ] ; 3 uses
  %.05559.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %.156.us.us, %bb.i ] ; 3 uses
  %i.m = sext i32 %.05260.us.us to i64            ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11    ; 2 uses
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %.05559.us.us, 1             ; 3 uses
  %i.r = sext i8 %i.o to i64
  %i.s = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11    ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = add nsw i32 %i.x, %.04961.us.us          ; 2 uses
  %i.z = icmp eq i8 %i.u, 45
  br i1 %i.z, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.c, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %i.m, %bb.c ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = icmp eq i8 %i.ab, 45
  br i1 %i.ac, label %.preheader, label %bb.d, !llvm.loop !20

bb.d:                                             ; preds = %.preheader
  %i.ad = add nsw i32 %i.h, %i.y                  ; 2 uses
  %i.ae = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.af = icmp slt i32 %i.f, %i.ae
  br i1 %i.af, label %._crit_edge.us.us, label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 45
  br i1 %i.ai, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sext i8 %i.ah to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv.next82
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11
  %i.ao = icmp eq i8 %i.an, 45
  br i1 %i.ao, label %bb.g, label %bb.h, !llvm.loop !21

bb.h:                                             ; preds = %bb.g
  %i.ap = add nsw i32 %.05559.us.us, 1            ; 2 uses
  %i.aq = add nsw i32 %i.al, %.04961.us.us
  %i.ar = add nsw i32 %i.aq, %i.h                 ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv81 to i32      ; 2 uses
  %i.at = icmp slt i32 %i.f, %i.as
  br i1 %i.at, label %._crit_edge.us.us, label %bb.i

._crit_edge.us.us:                                ; preds = %bb.i, %bb.h, %bb.d
  %.257.us.us = phi i32 [ %i.q, %bb.d ], [ %i.ap, %bb.h ], [ %.156.us.us, %bb.i ]
  %.2.us.us = phi i32 [ %i.ad, %bb.d ], [ %i.ar, %bb.h ], [ %.1.us.us, %bb.i ]
  %i.au = sitofp i32 %.2.us.us to double
  %i.av = sitofp i32 %.257.us.us to double
  %i.aw = fdiv double %i.au, %i.av
  %i.ax = fpext float %.15169.us.us to double
  %i.ay = fadd double %i.aw, %i.ax
  %i.az = fptrunc double %i.ay to float           ; 3 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count
  br i1 %exitcond89.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !22

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d, %bb.c
  %.156.us.us = phi i32 [ %.05559.us.us, %bb.e ], [ %i.ap, %bb.h ], [ %i.q, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %.3.us.us = phi i32 [ %.05260.us.us, %bb.e ], [ %i.as, %bb.h ], [ %i.ae, %bb.d ], [ %.05260.us.us, %bb.c ]
  %.1.us.us = phi i32 [ %.04961.us.us, %bb.e ], [ %i.ar, %bb.h ], [ %i.ad, %bb.d ], [ %i.y, %bb.c ] ; 2 uses
  %i.ba = add nsw i32 %.3.us.us, 1                ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.c
  br i1 %i.bb, label %bb.b, label %._crit_edge.us.us, !llvm.loop !23

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.bc = fpext float %i.az to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.050.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bc, %._crit_edge.loopexit ], [ +qnan, %.lr.ph ]
  %i.bd = sitofp i32 %1 to double                 ; 2 uses
  %i.be = fadd nnan double %i.bd, -1.000000e+00
  %i.bf = fmul double %i.be, %i.bd
  %i.bg = fmul double %i.bf, 5.000000e-01
  %i.bh = fdiv double %.050.lcssa, %i.bg
  %i.bi = fptrunc double %i.bh to float           ; 2 uses
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.bk = fpext float %i.bi to double
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str, double noundef %i.bk) #19 ; 0 uses
  ret float %i.bi
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cpmx_calc(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader34

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %4, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.preheader34.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader34, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader34.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.preheader34.loopexit.unr-lcssa ]
  %.036.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ak, %.preheader34.loopexit.unr-lcssa ]
  %lcmp.mod68 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.036.epil = phi double [ %.036.epil.init, %.lr.ph.epil.preheader ], [ %i.e, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.d = load double, ptr %i.c, align 8, !tbaa !14
  %i.e = fadd double %.036.epil, %i.d             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader34, label %.lr.ph.epil, !llvm.loop !26

.preheader34:                                     ; preds = %.preheader34.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ak, %.preheader34.loopexit.unr-lcssa ], [ %i.e, %.lr.ph.epil ]
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge43

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %.036 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.h = load double, ptr %i.g, align 8, !tbaa !14
  %i.i = fadd double %.036, %i.h
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !14
  %i.m = fadd double %i.i, %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !14
  %i.q = fadd double %i.m, %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !14
  %i.u = fadd double %i.q, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load double, ptr %i.w, align 8, !tbaa !14
  %i.y = fadd double %i.u, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !14
  %i.ac = fadd double %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load double, ptr %i.ae, align 8, !tbaa !14
  %i.ag = fadd double %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !14
  %i.ak = fadd double %i.ag, %i.aj                ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader34.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !28

.preheader.lr.ph:                                 ; preds = %.preheader34
  %i.al = zext nneg i32 %3 to i64
  %i.am = shl nuw nsw i64 %i.al, 2                ; 26 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.at, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ax, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bb, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bd, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bf, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bh, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bj, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bn, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bp, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.br, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bt, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bv, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bz, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cb, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cd, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cf, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ch, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cj, i8 0, i64 %i.am, i1 false), !tbaa !31
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cl, i8 0, i64 %i.am, i1 false), !tbaa !31
  br i1 %i.a, label %.preheader.us.preheader, label %._crit_edge43

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count63 = zext nneg i32 %3 to i64
  %wide.trip.count58 = zext nneg i32 %4 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us44
  %indvars.iv60 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next61, %._crit_edge.us44 ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv55 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next56, %bb.b ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv55
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !14
  %i.co = fptrunc double %i.cn to float
  %i.cp = fpext float %i.co to double
  %i.cq = fdiv double %i.cp, %.0.lcssa
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv55
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv60
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !11
  %i.cv = sext i8 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !29
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv60 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !31
  %i.dd = fpext float %i.dc to double
end_hunk_0
begin_hunk_1_@MScpmx_calc_new:bb.a
  %i.ai = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ak ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !31
  %i.an = fadd float %i.am, %i.ab
  store float %i.an, ptr %i.al, align 4, !tbaa !31
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph34
  %.033.unr = phi ptr [ %i.ad, %.lr.ph34 ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %.132.unr = phi ptr [ %1, %.lr.ph34 ], [ %i.g, %.prol.loopexit.unr-lcssa ]
  %.12331.unr = phi i32 [ %3, %.lr.ph34 ], [ %i.f, %.prol.loopexit.unr-lcssa ]
  br i1 %i.h, label %._crit_edge, label %.lr.ph34.new

.lr.ph34.new:                                     ; preds = %.prol.loopexit, %.lr.ph34.new
  %.033 = phi ptr [ %i.bc, %.lr.ph34.new ], [ %.033.unr, %.prol.loopexit ] ; 3 uses
  %.132 = phi ptr [ %i.ba, %.lr.ph34.new ], [ %.132.unr, %.prol.loopexit ] ; 3 uses
  %.12331 = phi i32 [ %i.az, %.lr.ph34.new ], [ %.12331.unr, %.prol.loopexit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.132, i64 8
  %i.ap = load ptr, ptr %.132, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %i.ar = load i8, ptr %.033, align 1, !tbaa !11
  %i.as = sext i8 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.av ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !31
  %i.ay = fadd float %i.ax, %i.ab
  store float %i.ay, ptr %i.aw, align 4, !tbaa !31
  %i.az = add nsw i32 %.12331, -2                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.132, i64 16
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %.033, i64 2
  %i.bd = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.be = sext i8 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bh ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !31
  %i.bk = fadd float %i.bj, %i.ab
  store float %i.bk, ptr %i.bi, align 4, !tbaa !31
  %.not24.1 = icmp eq i32 %i.az, 0
  br i1 %.not24.1, label %._crit_edge, label %.lr.ph34.new, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph34.new, %.prol.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge37, label %.lr.ph34, !llvm.loop !42

._crit_edge37:                                    ; preds = %._crit_edge, %bb.a, %.preheader.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cpmx_ribosum(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %.not52 = icmp eq i32 %5, 0
  br i1 %.not52, label %._crit_edge62, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %5, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.in.prol = phi i32 [ %i.b, %.lr.ph.prol ], [ %5, %.lr.ph.preheader ]
  %.04253.prol = phi ptr [ %i.c, %.lr.ph.prol ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.a = load ptr, ptr %.04253.prol, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.a, i8 0, i64 148, i1 false), !tbaa !31
  %i.b = add nsw i32 %.in.prol, -1                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.04253.prol, i64 8 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !43

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.in.unr = phi i32 [ %5, %.lr.ph.preheader ], [ %i.b, %.lr.ph.prol ]
  %.04253.unr = phi ptr [ %3, %.lr.ph.preheader ], [ %i.c, %.lr.ph.prol ]
  %i.d = icmp ult i32 %5, 8
  br i1 %i.d, label %.preheader.thread, label %.lr.ph

.preheader.thread:                                ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %.lr.ph59.preheader, label %._crit_edge62

.lr.ph59.preheader:                               ; preds = %.preheader.thread
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %.lr.ph59

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.in = phi i32 [ %i.u, %.lr.ph ], [ %.in.unr, %.lr.ph.prol.loopexit ]
  %.04253 = phi ptr [ %i.v, %.lr.ph ], [ %.04253.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.f = load ptr, ptr %.04253, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.f, i8 0, i64 148, i1 false), !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %.04253, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.h, i8 0, i64 148, i1 false), !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %.04253, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.j, i8 0, i64 148, i1 false), !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %.04253, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.l, i8 0, i64 148, i1 false), !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %.04253, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.n, i8 0, i64 148, i1 false), !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %.04253, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.p, i8 0, i64 148, i1 false), !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %.04253, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.r, i8 0, i64 148, i1 false), !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %.04253, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.t, i8 0, i64 148, i1 false), !tbaa !31
  %i.u = add nsw i32 %.in, -8                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04253, i64 64
  %.not.7 = icmp eq i32 %i.u, 0
  br i1 %.not.7, label %.preheader.thread, label %.lr.ph, !llvm.loop !44

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.x = load double, ptr %i.w, align 8, !tbaa !14
  %i.y = fptrunc double %i.x to float
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph59, %bb.g
  %.in63 = phi i32 [ %5, %.lr.ph59 ], [ %i.ad, %bb.g ]
  %.03858 = phi ptr [ %2, %.lr.ph59 ], [ %i.ax, %bb.g ] ; 2 uses
  %.03957 = phi ptr [ %i.ac, %.lr.ph59 ], [ %i.aw, %bb.g ] ; 2 uses
  %.04056 = phi ptr [ %i.aa, %.lr.ph59 ], [ %i.av, %bb.g ] ; 2 uses
  %.14355 = phi ptr [ %3, %.lr.ph59 ], [ %i.ay, %bb.g ] ; 2 uses
  %i.ad = add nsw i32 %.in63, -1                  ; 2 uses
  %i.ae = load i8, ptr %.04056, align 1, !tbaa !11
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 5 uses
  %i.ai = load i8, ptr %.03957, align 1, !tbaa !11
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 3 uses
  %i.am = icmp sgt i32 %i.ah, 3
  br i1 %i.am, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = icmp sgt i32 %i.al, 3
  br i1 %i.an, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %.03858, align 1, !tbaa !11
  switch i8 %i.ao, label %bb.g [
    i8 53, label %bb.e
    i8 51, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ap = shl nsw i32 %i.al, 2
  %i.aq = add nsw i32 %i.ah, 4
  %i.ar = add i32 %i.aq, %i.ap
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.as = shl nsw i32 %i.al, 2
  %i.at = add nsw i32 %i.ah, 20
  %i.au = add i32 %i.at, %i.as
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.f, %bb.e
  %.037 = phi i32 [ %i.ah, %bb.c ], [ 36, %bb.b ], [ %i.ar, %bb.e ], [ %i.au, %bb.f ], [ %i.ah, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %.04056, i64 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.03957, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.03858, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.14355, i64 8
  %i.az = load ptr, ptr %.14355, align 8, !tbaa !29
  %i.ba = sext i32 %.037 to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !31
  %i.bd = fadd float %i.bc, %i.y
  store float %i.bd, ptr %i.bb, align 4, !tbaa !31
  %.not48 = icmp eq i32 %i.ad, 0
  br i1 %.not48, label %._crit_edge, label %bb.b, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge62, label %.lr.ph59, !llvm.loop !46

._crit_edge62:                                    ; preds = %._crit_edge, %bb.a, %.preheader.thread
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mseqcat(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef %5, ptr noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp sgt i32 %8, 0                       ; 3 uses
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader93

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sext i32 %7 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %8 to i64      ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.d ; 6 uses
  %min.iters.check = icmp ult i32 %8, 10
  br i1 %min.iters.check, label %.lr.ph.preheader270, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.e = shl nsw i64 %i.d, 3
  %i.f = add i64 %i.e, %i.b
  %i.g = sub i64 %i.f, %i.a
  %diff.check = icmp ult i64 %i.g, 32
  br i1 %diff.check, label %.lr.ph.preheader270, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <2 x ptr>, ptr %i.h, align 8, !tbaa !8
  %wide.load171 = load <2 x ptr>, ptr %i.i, align 8, !tbaa !8
  %i.j = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  store <2 x ptr> %wide.load, ptr %i.j, align 8, !tbaa !8
  store <2 x ptr> %wide.load171, ptr %i.k, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph97.preheader, label %.lr.ph.preheader270

.lr.ph.preheader270:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader270, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader270 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader270 ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  store ptr %i.n, ptr %gep.prol, align 8, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !50

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader270
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader270 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.o = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.p = icmp ugt i64 %i.o, -4
  br i1 %i.p, label %.lr.ph97.preheader, label %.lr.ph

.lr.ph97.preheader:                               ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %i.q = sext i32 %7 to i64
  %wide.trip.count120 = zext nneg i32 %8 to i64
  %invariant.gep169 = getelementptr [256 x i8], ptr %5, i64 %i.q
  br label %.lr.ph97

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  store ptr %i.s, ptr %gep, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store ptr %i.u, ptr %gep.1, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  store ptr %i.w, ptr %gep.2, align 8, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  store ptr %i.y, ptr %gep.3, align 8, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph97.preheader, label %.lr.ph, !llvm.loop !51

.preheader93:                                     ; preds = %.lr.ph97, %bb.a
  %i.z = icmp sgt i32 %7, 0
  br i1 %i.z, label %.preheader92.us.preheader, label %.preheader89.thread159

.preheader92.us.preheader:                        ; preds = %.preheader93
  %wide.trip.count130 = zext nneg i32 %7 to i64   ; 15 uses
  %i.aa = shl nuw nsw i64 %wide.trip.count130, 3  ; 2 uses
  %scevgep173 = getelementptr i8, ptr %3, i64 %i.aa
  %min.iters.check178 = icmp ult i32 %7, 6
  %n.vec181 = and i64 %wide.trip.count130, 2147483644 ; 3 uses
  %cmp.n188 = icmp eq i64 %n.vec181, %wide.trip.count130
  %xtraiter271 = and i64 %wide.trip.count130, 3   ; 2 uses
  %lcmp.mod272.not = icmp eq i64 %xtraiter271, 0
  br label %.preheader92.us

.preheader92.us:                                  ; preds = %.preheader92.us.preheader, %._crit_edge.us
  %indvars.iv127 = phi i64 [ 0, %.preheader92.us.preheader ], [ %indvars.iv.next128, %._crit_edge.us ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv127 ; 6 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv127
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 8 uses
  br i1 %min.iters.check178, label %scalar.ph177.preheader, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.preheader92.us
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.aa
  %bound0 = icmp ult ptr %i.ad, %scevgep173
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph177.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %vector.memcheck172
  %i.ae = load double, ptr %i.ab, align 8, !tbaa !14, !alias.scope !52
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph179
  %index183 = phi i64 [ 0, %vector.ph179 ], [ %index.next186, %vector.body182 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index183 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load184 = load <2 x double>, ptr %i.af, align 8, !tbaa !14, !alias.scope !55
  %wide.load185 = load <2 x double>, ptr %i.ag, align 8, !tbaa !14, !alias.scope !55
  %i.ah = fmul <2 x double> %broadcast.splat, %wide.load184
  %i.ai = fmul <2 x double> %broadcast.splat, %wide.load185
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index183 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x double> %i.ah, ptr %i.aj, align 8, !tbaa !14, !alias.scope !57, !noalias !59
  store <2 x double> %i.ai, ptr %i.ak, align 8, !tbaa !14, !alias.scope !57, !noalias !59
  %index.next186 = add nuw i64 %index183, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next186, %n.vec181
  br i1 %i.al, label %middle.block187, label %vector.body182, !llvm.loop !60

middle.block187:                                  ; preds = %vector.body182
  br i1 %cmp.n188, label %._crit_edge.us, label %scalar.ph177.preheader

scalar.ph177.preheader:                           ; preds = %vector.memcheck172, %.preheader92.us, %middle.block187
  %indvars.iv122.ph = phi i64 [ 0, %vector.memcheck172 ], [ 0, %.preheader92.us ], [ %n.vec181, %middle.block187 ] ; 3 uses
  br i1 %lcmp.mod272.not, label %scalar.ph177.prol.loopexit, label %scalar.ph177.prol

scalar.ph177.prol:                                ; preds = %scalar.ph177.preheader, %scalar.ph177.prol
  %indvars.iv122.prol = phi i64 [ %indvars.iv.next123.prol, %scalar.ph177.prol ], [ %indvars.iv122.ph, %scalar.ph177.preheader ] ; 3 uses
  %prol.iter273 = phi i64 [ %prol.iter273.next, %scalar.ph177.prol ], [ 0, %scalar.ph177.preheader ]
  %i.am = load double, ptr %i.ab, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv122.prol
  %i.ao = load double, ptr %i.an, align 8, !tbaa !14
  %i.ap = fmul double %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv122.prol
  store double %i.ap, ptr %i.aq, align 8, !tbaa !14
  %indvars.iv.next123.prol = add nuw nsw i64 %indvars.iv122.prol, 1 ; 2 uses
  %prol.iter273.next = add i64 %prol.iter273, 1   ; 2 uses
  %prol.iter273.cmp.not = icmp eq i64 %prol.iter273.next, %xtraiter271
  br i1 %prol.iter273.cmp.not, label %scalar.ph177.prol.loopexit, label %scalar.ph177.prol, !llvm.loop !61

scalar.ph177.prol.loopexit:                       ; preds = %scalar.ph177.prol, %scalar.ph177.preheader
  %indvars.iv122.unr = phi i64 [ %indvars.iv122.ph, %scalar.ph177.preheader ], [ %indvars.iv.next123.prol, %scalar.ph177.prol ]
  %i.ar = sub nsw i64 %indvars.iv122.ph, %wide.trip.count130
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %._crit_edge.us, label %scalar.ph177

scalar.ph177:                                     ; preds = %scalar.ph177.prol.loopexit, %scalar.ph177
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.3, %scalar.ph177 ], [ %indvars.iv122.unr, %scalar.ph177.prol.loopexit ] ; 6 uses
  %i.at = load double, ptr %i.ab, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv122
  %i.av = load double, ptr %i.au, align 8, !tbaa !14
  %i.aw = fmul double %i.at, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv122
  store double %i.aw, ptr %i.ax, align 8, !tbaa !14
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.ay = load double, ptr %i.ab, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next123
  %i.ba = load double, ptr %i.az, align 8, !tbaa !14
  %i.bb = fmul double %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next123
  store double %i.bb, ptr %i.bc, align 8, !tbaa !14
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %i.bd = load double, ptr %i.ab, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next123.1
  %i.bf = load double, ptr %i.be, align 8, !tbaa !14
  %i.bg = fmul double %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next123.1
  store double %i.bg, ptr %i.bh, align 8, !tbaa !14
  %indvars.iv.next123.2 = add nuw nsw i64 %indvars.iv122, 3 ; 2 uses
  %i.bi = load double, ptr %i.ab, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next123.2
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !14
  %i.bl = fmul double %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next123.2
  store double %i.bl, ptr %i.bm, align 8, !tbaa !14
  %indvars.iv.next123.3 = add nuw nsw i64 %indvars.iv122, 4 ; 2 uses
  %exitcond126.not.3 = icmp eq i64 %indvars.iv.next123.3, %wide.trip.count130
  br i1 %exitcond126.not.3, label %._crit_edge.us, label %scalar.ph177, !llvm.loop !62

._crit_edge.us:                                   ; preds = %scalar.ph177.prol.loopexit, %scalar.ph177, %middle.block187
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %.preheader90.lr.ph, label %.preheader92.us, !llvm.loop !63

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %.lr.ph97
  %indvars.iv117 = phi i64 [ 0, %.lr.ph97.preheader ], [ %indvars.iv.next118, %.lr.ph97 ] ; 3 uses
  %gep170 = getelementptr [256 x i8], ptr %invariant.gep169, i64 %indvars.iv117
  %i.bn = getelementptr inbounds nuw [256 x i8], ptr %6, i64 %indvars.iv117
  %i.bo = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %gep170, ptr noundef nonnull dereferenceable(1) %i.bn) #20 ; 0 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %.preheader93, label %.lr.ph97, !llvm.loop !64

.preheader90.lr.ph:                               ; preds = %._crit_edge.us
  %i.bp = add nsw i32 %8, %7                      ; 3 uses
  br i1 %i.c, label %.preheader90.us.preheader, label %._crit_edge112

.preheader90.us.preheader:                        ; preds = %.preheader90.lr.ph
  %i.bq = zext nneg i32 %7 to i64                 ; 5 uses
  %i.br = zext nneg i32 %i.bp to i64              ; 4 uses
  %wide.trip.count138 = zext nneg i32 %7 to i64
  %i.bs = shl nuw nsw i64 %wide.trip.count130, 3  ; 3 uses
  %i.bt = add nuw nsw i64 %wide.trip.count130, 1  ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.br)
  %i.bu = shl nuw nsw i64 %umax, 3                ; 2 uses
  %scevgep193 = getelementptr i8, ptr %3, i64 %i.bs
  %i.bv = sub nsw i64 %i.bu, %i.bs
  %scevgep194 = getelementptr i8, ptr %4, i64 %i.bv
  %umax201 = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.br)
  %i.bw = sub nsw i64 %umax201, %wide.trip.count130 ; 3 uses
  %min.iters.check203 = icmp ult i64 %i.bw, 4
  %n.vec206 = and i64 %i.bw, -4                   ; 3 uses
  %i.bx = add nsw i64 %n.vec206, %i.bq
  %cmp.n215 = icmp eq i64 %i.bw, %n.vec206
  br label %.preheader90.us

.preheader90.us:                                  ; preds = %.preheader90.us.preheader, %._crit_edge.us104
  %indvars.iv135 = phi i64 [ 0, %.preheader90.us.preheader ], [ %indvars.iv.next136, %._crit_edge.us104 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv135 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv135
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !12 ; 4 uses
  br i1 %min.iters.check203, label %scalar.ph202.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %.preheader90.us
  %scevgep191 = getelementptr nuw i8, ptr %i.ca, i64 %i.bs ; 2 uses
  %scevgep192 = getelementptr i8, ptr %i.ca, i64 %i.bu ; 2 uses
  %bound0195 = icmp ult ptr %scevgep191, %scevgep193
  %bound1196 = icmp ult ptr %3, %scevgep192
  %found.conflict197 = and i1 %bound0195, %bound1196
  %bound0198 = icmp ult ptr %scevgep191, %scevgep194
  %bound1199 = icmp ult ptr %4, %scevgep192
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx = or i1 %found.conflict197, %found.conflict200
  br i1 %conflict.rdx, label %scalar.ph202.preheader, label %vector.ph204

vector.ph204:                                     ; preds = %vector.memcheck190
  %i.cb = load double, ptr %i.by, align 8, !tbaa !14, !alias.scope !65
  %broadcast.splatinsert211 = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat212 = shufflevector <2 x double> %broadcast.splatinsert211, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep277 = getelementptr [8 x i8], ptr %i.ca, i64 %i.bq
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph204
  %index208 = phi i64 [ 0, %vector.ph204 ], [ %index.next213, %vector.body207 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index208 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load209 = load <2 x double>, ptr %i.cc, align 8, !tbaa !14, !alias.scope !68
  %wide.load210 = load <2 x double>, ptr %i.cd, align 8, !tbaa !14, !alias.scope !68
  %i.ce = fmul <2 x double> %broadcast.splat212, %wide.load209
  %i.cf = fmul <2 x double> %broadcast.splat212, %wide.load210
  %gep278 = getelementptr [8 x i8], ptr %invariant.gep277, i64 %index208 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %gep278, i64 16
  store <2 x double> %i.ce, ptr %gep278, align 8, !tbaa !14, !alias.scope !70, !noalias !72
  store <2 x double> %i.cf, ptr %i.cg, align 8, !tbaa !14, !alias.scope !70, !noalias !72
  %index.next213 = add nuw i64 %index208, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next213, %n.vec206
  br i1 %i.ch, label %middle.block214, label %vector.body207, !llvm.loop !73

middle.block214:                                  ; preds = %vector.body207
  br i1 %cmp.n215, label %._crit_edge.us104, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %vector.memcheck190, %.preheader90.us, %middle.block214
  %indvars.iv132.ph = phi i64 [ %i.bq, %vector.memcheck190 ], [ %i.bq, %.preheader90.us ], [ %i.bx, %middle.block214 ]
  br label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.preheader, %scalar.ph202
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %scalar.ph202 ], [ %indvars.iv132.ph, %scalar.ph202.preheader ] ; 3 uses
  %i.ci = load double, ptr %i.by, align 8, !tbaa !14
  %i.cj = sub nuw nsw i64 %indvars.iv132, %i.bq
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !14
  %i.cm = fmul double %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv132
  store double %i.cm, ptr %i.cn, align 8, !tbaa !14
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.co = icmp samesign ult i64 %indvars.iv.next133, %i.br
  br i1 %i.co, label %scalar.ph202, label %._crit_edge.us104, !llvm.loop !74

._crit_edge.us104:                                ; preds = %scalar.ph202, %middle.block214
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %.preheader88.us.preheader, label %.preheader90.us, !llvm.loop !75

.preheader89.thread159:                           ; preds = %.preheader93
  %.pre = add nsw i32 %8, %7
  br i1 %i.c, label %.preheader.us.preheader, label %._crit_edge112

.preheader88.us.preheader:                        ; preds = %._crit_edge.us104
  %i.cp = zext nneg i32 %7 to i64                 ; 4 uses
  %i.cq = zext nneg i32 %i.bp to i64
  %wide.trip.count143 = zext nneg i32 %7 to i64
  %i.cr = shl nuw nsw i64 %wide.trip.count130, 3  ; 2 uses
  %i.cs = add nuw nsw i64 %wide.trip.count130, 1
  %umax219 = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.br)
  %i.ct = sub nsw i64 %umax219, %wide.trip.count130
  %i.cu = shl nsw i64 %i.ct, 3
  %scevgep220 = getelementptr i8, ptr %4, i64 %i.cu
  %scevgep221 = getelementptr i8, ptr %3, i64 %i.cr
  %min.iters.check230 = icmp ult i32 %7, 6
  %n.vec233 = and i64 %wide.trip.count130, 2147483644 ; 3 uses
  %cmp.n242 = icmp eq i64 %n.vec233, %wide.trip.count130
  %xtraiter274 = and i64 %i.cp, 3                 ; 2 uses
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  br label %.preheader88.us

.preheader88.us:                                  ; preds = %.preheader88.us.preheader, %._crit_edge.us108
  %indvars.iv145 = phi i64 [ %i.cp, %.preheader88.us.preheader ], [ %indvars.iv.next146, %._crit_edge.us108 ] ; 3 uses
  %i.cv = sub nsw i64 %indvars.iv145, %i.cp
  %i.cw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cv ; 6 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv145
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !12 ; 9 uses
  br i1 %min.iters.check230, label %scalar.ph229.preheader, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.preheader88.us
  %scevgep218 = getelementptr i8, ptr %i.cy, i64 %i.cr ; 2 uses
  %bound0222 = icmp ult ptr %i.cy, %scevgep220
  %bound1223 = icmp ult ptr %4, %scevgep218
  %found.conflict224 = and i1 %bound0222, %bound1223
  %bound0225 = icmp ult ptr %i.cy, %scevgep221
  %bound1226 = icmp ult ptr %3, %scevgep218
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %found.conflict224, %found.conflict227
  br i1 %conflict.rdx228, label %scalar.ph229.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %vector.memcheck217
  %i.cz = load double, ptr %i.cw, align 8, !tbaa !14, !alias.scope !76
  %broadcast.splatinsert238 = insertelement <2 x double> poison, double %i.cz, i64 0
  %broadcast.splat239 = shufflevector <2 x double> %broadcast.splatinsert238, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph231
  %index235 = phi i64 [ 0, %vector.ph231 ], [ %index.next240, %vector.body234 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index235 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load236 = load <2 x double>, ptr %i.da, align 8, !tbaa !14, !alias.scope !79
  %wide.load237 = load <2 x double>, ptr %i.db, align 8, !tbaa !14, !alias.scope !79
  %i.dc = fmul <2 x double> %broadcast.splat239, %wide.load236
  %i.dd = fmul <2 x double> %broadcast.splat239, %wide.load237
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index235 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x double> %i.dc, ptr %i.de, align 8, !tbaa !14, !alias.scope !81, !noalias !83
  store <2 x double> %i.dd, ptr %i.df, align 8, !tbaa !14, !alias.scope !81, !noalias !83
  %index.next240 = add nuw i64 %index235, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next240, %n.vec233
  br i1 %i.dg, label %middle.block241, label %vector.body234, !llvm.loop !84

middle.block241:                                  ; preds = %vector.body234
  br i1 %cmp.n242, label %._crit_edge.us108, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %vector.memcheck217, %.preheader88.us, %middle.block241
  %indvars.iv140.ph = phi i64 [ 0, %vector.memcheck217 ], [ 0, %.preheader88.us ], [ %n.vec233, %middle.block241 ] ; 3 uses
  br i1 %lcmp.mod275.not, label %scalar.ph229.prol.loopexit, label %scalar.ph229.prol

scalar.ph229.prol:                                ; preds = %scalar.ph229.preheader, %scalar.ph229.prol
  %indvars.iv140.prol = phi i64 [ %indvars.iv.next141.prol, %scalar.ph229.prol ], [ %indvars.iv140.ph, %scalar.ph229.preheader ] ; 3 uses
  %prol.iter276 = phi i64 [ %prol.iter276.next, %scalar.ph229.prol ], [ 0, %scalar.ph229.preheader ]
  %i.dh = load double, ptr %i.cw, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv140.prol
  %i.dj = load double, ptr %i.di, align 8, !tbaa !14
  %i.dk = fmul double %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv140.prol
  store double %i.dk, ptr %i.dl, align 8, !tbaa !14
  %indvars.iv.next141.prol = add nuw nsw i64 %indvars.iv140.prol, 1 ; 2 uses
  %prol.iter276.next = add i64 %prol.iter276, 1   ; 2 uses
  %prol.iter276.cmp.not = icmp eq i64 %prol.iter276.next, %xtraiter274
  br i1 %prol.iter276.cmp.not, label %scalar.ph229.prol.loopexit, label %scalar.ph229.prol, !llvm.loop !85

scalar.ph229.prol.loopexit:                       ; preds = %scalar.ph229.prol, %scalar.ph229.preheader
  %indvars.iv140.unr = phi i64 [ %indvars.iv140.ph, %scalar.ph229.preheader ], [ %indvars.iv.next141.prol, %scalar.ph229.prol ]
  %i.dm = sub nsw i64 %indvars.iv140.ph, %i.cp
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge.us108, label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229
  %indvars.iv140 = phi i64 [ %indvars.iv.next141.3, %scalar.ph229 ], [ %indvars.iv140.unr, %scalar.ph229.prol.loopexit ] ; 6 uses
  %i.do = load double, ptr %i.cw, align 8, !tbaa !14
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv140
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !14
  %i.dr = fmul double %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv140
  store double %i.dr, ptr %i.ds, align 8, !tbaa !14
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.dt = load double, ptr %i.cw, align 8, !tbaa !14
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next141
  %i.dv = load double, ptr %i.du, align 8, !tbaa !14
  %i.dw = fmul double %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next141
  store double %i.dw, ptr %i.dx, align 8, !tbaa !14
  %indvars.iv.next141.1 = add nuw nsw i64 %indvars.iv140, 2 ; 2 uses
  %i.dy = load double, ptr %i.cw, align 8, !tbaa !14
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next141.1
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !14
  %i.eb = fmul double %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next141.1
  store double %i.eb, ptr %i.ec, align 8, !tbaa !14
  %indvars.iv.next141.2 = add nuw nsw i64 %indvars.iv140, 3 ; 2 uses
  %i.ed = load double, ptr %i.cw, align 8, !tbaa !14
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next141.2
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !14
  %i.eg = fmul double %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next141.2
  store double %i.eg, ptr %i.eh, align 8, !tbaa !14
  %indvars.iv.next141.3 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %exitcond144.not.3 = icmp eq i64 %indvars.iv.next141.3, %wide.trip.count143
  br i1 %exitcond144.not.3, label %._crit_edge.us108, label %scalar.ph229, !llvm.loop !86

._crit_edge.us108:                                ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229, %middle.block241
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.ei = icmp samesign ult i64 %indvars.iv.next146, %i.cq
  br i1 %i.ei, label %.preheader88.us, label %.preheader.us.preheader, !llvm.loop !87

.preheader.us.preheader:                          ; preds = %._crit_edge.us108, %.preheader89.thread159
  %.pre-phi158168 = phi i32 [ %.pre, %.preheader89.thread159 ], [ %i.bp, %._crit_edge.us108 ]
  %i.ej = sext i32 %7 to i64                      ; 10 uses
  %i.ek = sext i32 %.pre-phi158168 to i64         ; 4 uses
  %i.el = shl nsw i64 %i.ej, 3                    ; 2 uses
  %i.em = add nsw i64 %i.ej, 1                    ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.em, i64 %i.ek)
  %i.en = shl nsw i64 %smax, 3                    ; 2 uses
  %i.eo = sub i64 %i.en, %i.el
  %scevgep247 = getelementptr i8, ptr %4, i64 %i.eo
  %smax254 = tail call i64 @llvm.smax.i64(i64 %i.em, i64 %i.ek)
  %i.ep = sub i64 %smax254, %i.ej                 ; 3 uses
  %min.iters.check256 = icmp ult i64 %i.ep, 4
  %n.vec259 = and i64 %i.ep, -4                   ; 3 uses
  %i.eq = add i64 %n.vec259, %i.ej
  %cmp.n268 = icmp eq i64 %i.ep, %n.vec259
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us113
  %indvars.iv151 = phi i64 [ %i.ej, %.preheader.us.preheader ], [ %indvars.iv.next152, %._crit_edge.us113 ] ; 3 uses
  %i.er = sub nsw i64 %indvars.iv151, %i.ej
  %i.es = getelementptr inbounds [8 x i8], ptr %4, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv151
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !12 ; 4 uses
  br i1 %min.iters.check256, label %scalar.ph255.preheader, label %vector.memcheck244

vector.memcheck244:                               ; preds = %.preheader.us
  %scevgep245 = getelementptr i8, ptr %i.eu, i64 %i.el
  %scevgep246 = getelementptr i8, ptr %i.eu, i64 %i.en
  %bound0248 = icmp ult ptr %scevgep245, %scevgep247
  %bound1249 = icmp ult ptr %4, %scevgep246
  %found.conflict250 = and i1 %bound0248, %bound1249
  br i1 %found.conflict250, label %scalar.ph255.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck244
  %i.ev = load double, ptr %i.es, align 8, !tbaa !14, !alias.scope !88
  %broadcast.splatinsert264 = insertelement <2 x double> poison, double %i.ev, i64 0
  %broadcast.splat265 = shufflevector <2 x double> %broadcast.splatinsert264, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep279 = getelementptr [8 x i8], ptr %i.eu, i64 %i.ej
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph257
  %index261 = phi i64 [ 0, %vector.ph257 ], [ %index.next266, %vector.body260 ] ; 3 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %4, i64 %index261 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load262 = load <2 x double>, ptr %i.ew, align 8, !tbaa !14, !alias.scope !91
  %wide.load263 = load <2 x double>, ptr %i.ex, align 8, !tbaa !14, !alias.scope !91
  %i.ey = fmul <2 x double> %broadcast.splat265, %wide.load262
  %i.ez = fmul <2 x double> %broadcast.splat265, %wide.load263
  %gep280 = getelementptr [8 x i8], ptr %invariant.gep279, i64 %index261 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %gep280, i64 16
  store <2 x double> %i.ey, ptr %gep280, align 8, !tbaa !14, !alias.scope !93, !noalias !95
  store <2 x double> %i.ez, ptr %i.fa, align 8, !tbaa !14, !alias.scope !93, !noalias !95
  %index.next266 = add nuw i64 %index261, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next266, %n.vec259
  br i1 %i.fb, label %middle.block267, label %vector.body260, !llvm.loop !96

middle.block267:                                  ; preds = %vector.body260
  br i1 %cmp.n268, label %._crit_edge.us113, label %scalar.ph255.preheader

scalar.ph255.preheader:                           ; preds = %vector.memcheck244, %.preheader.us, %middle.block267
  %indvars.iv148.ph = phi i64 [ %i.ej, %vector.memcheck244 ], [ %i.ej, %.preheader.us ], [ %i.eq, %middle.block267 ]
  br label %scalar.ph255

scalar.ph255:                                     ; preds = %scalar.ph255.preheader, %scalar.ph255
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %scalar.ph255 ], [ %indvars.iv148.ph, %scalar.ph255.preheader ] ; 3 uses
  %i.fc = load double, ptr %i.es, align 8, !tbaa !14
  %i.fd = sub nsw i64 %indvars.iv148, %i.ej
  %i.fe = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !14
  %i.fg = fmul double %i.fc, %i.ff
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %indvars.iv148
  store double %i.fg, ptr %i.fh, align 8, !tbaa !14
  %indvars.iv.next149 = add nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.fi = icmp slt i64 %indvars.iv.next149, %i.ek
  br i1 %i.fi, label %scalar.ph255, label %._crit_edge.us113, !llvm.loop !97

._crit_edge.us113:                                ; preds = %scalar.ph255, %middle.block267
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.fj = icmp slt i64 %indvars.iv.next152, %i.ek
  br i1 %i.fj, label %.preheader.us, label %._crit_edge112, !llvm.loop !98

._crit_edge112:                                   ; preds = %._crit_edge.us113, %.preheader90.lr.ph, %.preheader89.thread159
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @strnbcat(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = tail call ptr @strncpy(ptr noundef nonnull @strnbcat.b, ptr noundef %0, i64 noundef %i.a) #20 ; 0 uses
  %i.c = getelementptr inbounds i8, ptr @strnbcat.b, i64 %i.a
  store i8 0, ptr %i.c, align 1, !tbaa !11
  %i.d = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @strnbcat.b, ptr noundef nonnull dereferenceable(1) %1) #20 ; 0 uses
  %i.e = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @strnbcat.b) #20 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @conjuctionforgaln(i32 noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef captures(none) %4, ptr noundef readonly captures(none) %5, ptr noundef readnone captures(none) %6, ptr noundef readnone captures(none) %7, ptr noundef initializes((0, 1)) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %8, align 1, !tbaa !11
  %i.b = icmp slt i32 %0, %1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = sext i32 %0 to i64
  %i.d = sub i32 %1, %0                           ; 6 uses
  %wide.trip.count = zext i32 %i.d to i64         ; 3 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.c
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph33.preheader

.lr.ph33.preheader:                               ; preds = %.preheader
  %wide.trip.count43 = zext i32 %i.d to i64
  %min.iters.check = icmp eq i32 %i.d, 1
  br i1 %min.iters.check, label %.lr.ph33.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph33.preheader
  %n.vec = and i64 %wide.trip.count, 4294967294   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.e, align 8, !tbaa !14
  %i.f = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.f, ptr %i.e, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph33.preheader50

.lr.ph33.preheader50:                             ; preds = %.lr.ph33.preheader, %middle.block
  %indvars.iv40.ph = phi i64 [ 0, %.lr.ph33.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph33

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv35 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %indvars.iv.next36, %bb.c ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.030 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.s, %bb.c ]
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.h = trunc nsw i64 %indvars.iv.next36 to i32
  %i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.h) #20 ; 0 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #18
  %i.k = icmp ult i64 %i.j, 100
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %i.a) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv35
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %i.n, ptr %i.o, align 8, !tbaa !8
  %i.p = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv35
  %i.q = load double, ptr %i.p, align 8, !tbaa !14 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.q, ptr %i.r, align 8, !tbaa !14
  %i.s = fadd double %.030, %i.q                  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !100

.lr.ph33:                                         ; preds = %.lr.ph33.preheader50, %.lr.ph33
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.lr.ph33 ], [ %indvars.iv40.ph, %.lr.ph33.preheader50 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv40 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !14
  %i.v = fdiv double %i.u, %i.s
  store double %i.v, ptr %i.t, align 8, !tbaa !14
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge, label %.lr.ph33, !llvm.loop !101

._crit_edge:                                      ; preds = %.lr.ph33, %middle.block, %bb.a, %.preheader
  %.026.lcssa49 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ %i.d, %middle.block ], [ %i.d, %.lr.ph33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.026.lcssa49
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @makegrouprna(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !4      ; 2 uses
  %.not8 = icmp eq i32 %i.a, -1
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.b = phi i32 [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %.010 = phi ptr [ %i.g, %.lr.ph ], [ %2, %bb.a ]
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store ptr %i.e, ptr %i.f, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %.010, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @makegrouprnait(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.b = icmp slt i32 %3, %i.a
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = sext i32 %3 to i64                       ; 5 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 3 uses
  %wide.trip.count = sext i32 %i.a to i64         ; 2 uses
  %i.f = sub nsw i64 %wide.trip.count, %i.c       ; 3 uses
  %xtraiter = and i64 %i.f, 1
  %i.g = add nsw i64 %wide.trip.count, -1
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.f, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.c, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %.0910 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  %i.m = add nsw i32 %.0910, 1
  %i.n = sext i32 %.0910 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.m, %bb.c ], [ %.0910, %bb.b ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv.next
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %.not.1 = icmp eq i8 %i.q, 0
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.t = add nsw i32 %.1, 1
  %i.u = sext i32 %.1 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8, !tbaa !102
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %i.t, %bb.e ], [ %.1, %bb.d ] ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !106

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0910.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv.epil.init
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %.not.epil = icmp eq i8 %i.x, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.y = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !102
  %i.aa = sext i32 %.0910.epil.init to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aa
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !102
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @fastconjuction_noweight(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef captures(none) %3, ptr noundef initializes((0, 1)) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %4, align 1, !tbaa !11
  %i.b = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %.not29 = icmp eq i32 %i.b, -1
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  %i.c = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %wide.trip.count = and i64 %indvars.iv.next, 4294967295 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 2
  br i1 %min.iters.check, label %.lr.ph36.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %indvars.iv.next, 4294967294   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.r, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.e = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.e, ptr %i.d, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %.preheader, %middle.block
  %indvars.iv40.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph36

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.g = phi i32 [ %i.t, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %.033 = phi double [ %i.r, %bb.c ], [ 0.000000e+00, %bb.a ]
  %.02432 = phi i32 [ %i.j, %bb.c ], [ 0, %bb.a ]
  %.02730 = phi ptr [ %i.s, %bb.c ], [ %0, %bb.a ]
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.h) #20
  %i.j = add nsw i32 %i.i, %.02432                ; 2 uses
  %i.k = icmp slt i32 %i.j, 100
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %i.a) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = sext i32 %i.g to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %1, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store ptr %i.o, ptr %i.p, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.q, align 8, !tbaa !14
  %i.r = fadd double %.033, 1.000000e+00          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02730, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !108

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %.lr.ph36
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.lr.ph36 ], [ %indvars.iv40.ph, %.lr.ph36.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv40 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !14
  %i.w = fdiv double %i.v, %i.r
  store double %i.w, ptr %i.u, align 8, !tbaa !14
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph36, !llvm.loop !109

._crit_edge:                                      ; preds = %.lr.ph36, %middle.block, %bb.a
  %.025.lcssa47 = phi i32 [ 0, %bb.a ], [ %i.c, %middle.block ], [ %i.c, %.lr.ph36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.025.lcssa47
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @fastconjuction_noname(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef initializes((0, 1)) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %5, align 1, !tbaa !11
  %i.b = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %.not31 = icmp eq i32 %i.b, -1
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  %i.c = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %wide.trip.count = and i64 %indvars.iv.next, 4294967295 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 2
  br i1 %min.iters.check, label %.lr.ph38.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %indvars.iv.next, 4294967294   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.e = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.e, ptr %i.d, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %.preheader, %middle.block
  %indvars.iv42.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph38

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.g = phi i32 [ %i.v, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %.035 = phi double [ %i.t, %bb.c ], [ 0.000000e+00, %bb.a ]
  %.02634 = phi i32 [ %i.j, %bb.c ], [ 0, %bb.a ]
  %.02932 = phi ptr [ %i.u, %bb.c ], [ %0, %bb.a ]
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.h) #20
  %i.j = add nsw i32 %i.i, %.02634                ; 2 uses
  %i.k = icmp slt i32 %i.j, 100
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %i.a) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = sext i32 %i.g to i64                     ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %1, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store ptr %i.o, ptr %i.p, align 8, !tbaa !8
  %i.q = getelementptr inbounds [8 x i8], ptr %4, i64 %i.m
  %i.r = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.r, ptr %i.s, align 8, !tbaa !14
  %i.t = fadd double %.035, %i.r                  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02932, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.v, -1
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !111

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.lr.ph38
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.lr.ph38 ], [ %indvars.iv42.ph, %.lr.ph38.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv42 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !14
  %i.y = fdiv double %i.x, %i.t
  store double %i.y, ptr %i.w, align 8, !tbaa !14
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph38, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph38, %middle.block, %bb.a
  %.027.lcssa49 = phi i32 [ 0, %bb.a ], [ %i.c, %middle.block ], [ %i.c, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.027.lcssa49
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @fastconjuction(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef readnone captures(none) %5, ptr noundef readnone captures(none) %6, ptr noundef initializes((0, 1)) %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %7, align 1, !tbaa !11
  %i.b = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %.not31 = icmp eq i32 %i.b, -1
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  %i.c = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %wide.trip.count = and i64 %indvars.iv.next, 4294967295 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 2
  br i1 %min.iters.check, label %.lr.ph38.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %indvars.iv.next, 4294967294   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.e = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.e, ptr %i.d, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %.preheader, %middle.block
  %indvars.iv42.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph38

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.g = phi i32 [ %i.v, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %.035 = phi double [ %i.t, %bb.c ], [ 0.000000e+00, %bb.a ]
  %.02634 = phi i32 [ %i.j, %bb.c ], [ 0, %bb.a ]
  %.02932 = phi ptr [ %i.u, %bb.c ], [ %0, %bb.a ]
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.h) #20
  %i.j = add nsw i32 %i.i, %.02634                ; 2 uses
  %i.k = icmp slt i32 %i.j, 100
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %i.a) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = sext i32 %i.g to i64                     ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %1, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store ptr %i.o, ptr %i.p, align 8, !tbaa !8
  %i.q = getelementptr inbounds [8 x i8], ptr %4, i64 %i.m
  %i.r = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.r, ptr %i.s, align 8, !tbaa !14
  %i.t = fadd double %.035, %i.r                  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02932, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.v, -1
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !114

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.lr.ph38
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.lr.ph38 ], [ %indvars.iv42.ph, %.lr.ph38.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv42 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !14
  %i.y = fdiv double %i.x, %i.t
  store double %i.y, ptr %i.w, align 8, !tbaa !14
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph38, !llvm.loop !115

._crit_edge:                                      ; preds = %.lr.ph38, %middle.block, %bb.a
  %.027.lcssa49 = phi i32 [ 0, %bb.a ], [ %i.c, %middle.block ], [ %i.c, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.027.lcssa49
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @conjuctionfortbfast(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef captures(none) %4, ptr noundef readonly captures(none) %5, ptr noundef initializes((0, 1)) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %6, align 1, !tbaa !11
  %i.b = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.d
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge42
  %i.f = icmp sgt i32 %.129, 0
  br i1 %i.f, label %.lr.ph37.preheader, label %._crit_edge

.lr.ph37.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.129 to i64   ; 3 uses
  %min.iters.check = icmp eq i32 %.129, 1
  br i1 %min.iters.check, label %.lr.ph37.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph37.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.g, align 8, !tbaa !14
  %i.h = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.h, ptr %i.g, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph37.preheader48

.lr.ph37.preheader48:                             ; preds = %.lr.ph37.preheader, %middle.block
  %indvars.iv39.ph = phi i64 [ 0, %.lr.ph37.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph37

bb.b:                                             ; preds = %.lr.ph, %._crit_edge42
  %i.j = phi i32 [ %i.b, %.lr.ph ], [ %i.ab, %._crit_edge42 ]
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %.pre43, %._crit_edge42 ] ; 4 uses
  %.034 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %._crit_edge42 ] ; 2 uses
  %.02833 = phi i32 [ 0, %.lr.ph ], [ %.129, %._crit_edge42 ] ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %.not = icmp eq i8 %i.m, 0
  %.pre43 = add nsw i64 %indvars.iv, 1            ; 3 uses
  br i1 %.not, label %._crit_edge42, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = trunc nsw i64 %.pre43 to i32
  %i.o = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.n) #20 ; 0 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %i.q = icmp ult i64 %i.p, 100
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %i.a) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = sext i32 %.02833 to i64                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %3, i64 %i.u
  store ptr %i.t, ptr %i.v, align 8, !tbaa !8
  %i.w = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv
  %i.x = load double, ptr %i.w, align 8, !tbaa !14 ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %4, i64 %i.u
  store double %i.x, ptr %i.y, align 8, !tbaa !14
  %i.z = fadd double %.034, %i.x
  %i.aa = add nsw i32 %.02833, 1
  %.pre = load i32, ptr @njob, align 4, !tbaa !4
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %bb.b, %bb.e
  %i.ab = phi i32 [ %.pre, %bb.e ], [ %i.j, %bb.b ] ; 2 uses
  %.129 = phi i32 [ %i.aa, %bb.e ], [ %.02833, %bb.b ] ; 7 uses
  %.1 = phi double [ %i.z, %bb.e ], [ %.034, %bb.b ] ; 3 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %.pre43, %i.ac
  br i1 %i.ad, label %bb.b, label %.preheader, !llvm.loop !117

.lr.ph37:                                         ; preds = %.lr.ph37.preheader48, %.lr.ph37
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %.lr.ph37 ], [ %indvars.iv39.ph, %.lr.ph37.preheader48 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv39 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !14
  %i.ag = fdiv double %i.af, %.1
  store double %i.ag, ptr %i.ae, align 8, !tbaa !14
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph37, !llvm.loop !118

._crit_edge:                                      ; preds = %.lr.ph37, %middle.block, %bb.a, %.preheader
  %.028.lcssa47 = phi i32 [ 0, %bb.a ], [ %.129, %.preheader ], [ %.129, %middle.block ], [ %.129, %.lr.ph37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.028.lcssa47
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @conjuction(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef readonly captures(none) %5, ptr noundef readnone captures(none) %6, ptr noundef readnone captures(none) %7, ptr noundef initializes((0, 1)) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %8, align 1, !tbaa !11
  %i.b = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.d
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge29
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.w, %._crit_edge29 ]
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %.pre30, %._crit_edge29 ] ; 4 uses
  %.02226 = phi i32 [ 0, %.lr.ph ], [ %.123, %._crit_edge29 ] ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %.not = icmp eq i8 %i.i, 0
  %.pre30 = add nsw i64 %indvars.iv, 1            ; 3 uses
  br i1 %.not, label %._crit_edge29, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc nsw i64 %.pre30 to i32
  %i.k = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.j) #20 ; 0 uses
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #18
  %i.m = icmp ult i64 %i.l, 100
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %i.a) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.q = sext i32 %.02226 to i64                  ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %3, i64 %i.q
  store ptr %i.p, ptr %i.r, align 8, !tbaa !8
  %i.s = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr inbounds [8 x i8], ptr %4, i64 %i.q
  store double %i.t, ptr %i.u, align 8, !tbaa !14
  %i.v = add nsw i32 %.02226, 1
  %.pre = load i32, ptr @njob, align 4, !tbaa !4
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %bb.b, %bb.e
  %i.w = phi i32 [ %.pre, %bb.e ], [ %i.f, %bb.b ] ; 2 uses
  %.123 = phi i32 [ %i.v, %bb.e ], [ %.02226, %bb.b ] ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %.pre30, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !119

._crit_edge:                                      ; preds = %._crit_edge29, %bb.a
  %.022.lcssa = phi i32 [ 0, %bb.a ], [ %.123, %._crit_edge29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.022.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @floatdelete(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = icmp slt i32 %1, %i.a
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %wide.trip.count = sext i32 %i.a to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !29
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre17 = load ptr, ptr %.phi.trans.insert16, align 8, !tbaa !29
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre19 = load ptr, ptr %.phi.trans.insert18, align 8, !tbaa !29
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre21 = load ptr, ptr %.phi.trans.insert20, align 8, !tbaa !29
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre23 = load ptr, ptr %.phi.trans.insert22, align 8, !tbaa !29
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre25 = load ptr, ptr %.phi.trans.insert24, align 8, !tbaa !29
  %.phi.trans.insert26 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre27 = load ptr, ptr %.phi.trans.insert26, align 8, !tbaa !29
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre29 = load ptr, ptr %.phi.trans.insert28, align 8, !tbaa !29
  %i.d = load ptr, ptr %0, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %i.c, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 27 uses
  %i.am = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !31
  store float %i.ao, ptr %i.am, align 4, !tbaa !31
  %i.ap = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !31
  store float %i.ar, ptr %i.ap, align 4, !tbaa !31
  %i.as = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !31
  store float %i.au, ptr %i.as, align 4, !tbaa !31
  %i.av = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !31
  store float %i.ax, ptr %i.av, align 4, !tbaa !31
  %i.ay = getelementptr [4 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !31
  store float %i.ba, ptr %i.ay, align 4, !tbaa !31
  %i.bb = getelementptr [4 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !31
  store float %i.bd, ptr %i.bb, align 4, !tbaa !31
  %i.be = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !31
  store float %i.bg, ptr %i.be, align 4, !tbaa !31
  %i.bh = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !31
  store float %i.bj, ptr %i.bh, align 4, !tbaa !31
  %i.bk = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !31
  store float %i.bm, ptr %i.bk, align 4, !tbaa !31
  %i.bn = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !31
  store float %i.bp, ptr %i.bn, align 4, !tbaa !31
  %i.bq = getelementptr [4 x i8], ptr %.pre, i64 %indvars.iv ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !31
  store float %i.bs, ptr %i.bq, align 4, !tbaa !31
  %i.bt = getelementptr [4 x i8], ptr %.pre17, i64 %indvars.iv ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !31
  store float %i.bv, ptr %i.bt, align 4, !tbaa !31
  %i.bw = getelementptr [4 x i8], ptr %.pre19, i64 %indvars.iv ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !31
  store float %i.by, ptr %i.bw, align 4, !tbaa !31
  %i.bz = getelementptr [4 x i8], ptr %.pre21, i64 %indvars.iv ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !31
  store float %i.cb, ptr %i.bz, align 4, !tbaa !31
  %i.cc = getelementptr [4 x i8], ptr %.pre23, i64 %indvars.iv ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !31
  store float %i.ce, ptr %i.cc, align 4, !tbaa !31
  %i.cf = getelementptr [4 x i8], ptr %.pre25, i64 %indvars.iv ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !31
  store float %i.ch, ptr %i.cf, align 4, !tbaa !31
  %i.ci = getelementptr [4 x i8], ptr %.pre27, i64 %indvars.iv ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !31
  store float %i.ck, ptr %i.ci, align 4, !tbaa !31
  %i.cl = getelementptr [4 x i8], ptr %.pre29, i64 %indvars.iv ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !31
  store float %i.cn, ptr %i.cl, align 4, !tbaa !31
  %i.co = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !31
  store float %i.cq, ptr %i.co, align 4, !tbaa !31
  %i.cr = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !31
  store float %i.ct, ptr %i.cr, align 4, !tbaa !31
  %i.cu = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !31
  store float %i.cw, ptr %i.cu, align 4, !tbaa !31
  %i.cx = getelementptr [4 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !31
  store float %i.cz, ptr %i.cx, align 4, !tbaa !31
  %i.da = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !31
  store float %i.dc, ptr %i.da, align 4, !tbaa !31
  %i.dd = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 4
  %i.df = load float, ptr %i.de, align 4, !tbaa !31
  store float %i.df, ptr %i.dd, align 4, !tbaa !31
  %i.dg = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !31
  store float %i.di, ptr %i.dg, align 4, !tbaa !31
  %i.dj = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !31
  store float %i.dl, ptr %i.dj, align 4, !tbaa !31
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !120

._crit_edge:                                      ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @chardelete(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [5000000 x i8], align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.d) #20 ; 0 uses
  %i.f = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.a) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @RootBranchNode(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = add nsw i32 %0, -2                       ; 2 uses
  %.02236 = add nsw i32 %2, 1
  %i.b = icmp slt i32 %.02236, %i.a
  br i1 %i.b, label %.preheader28.lr.ph, label %._crit_edge

.preheader28.lr.ph:                               ; preds = %bb.a
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.e = sext i32 %3 to i64                       ; 2 uses
  %i.f = add nsw i64 %i.c, 1
  br label %.preheader28

.loopexit:                                        ; preds = %bb.c, %.preheader
  %.3.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %spec.select27, %bb.c ] ; 2 uses
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next45 to i32
  %exitcond.not = icmp eq i32 %i.a, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.preheader28, !llvm.loop !121

.preheader28:                                     ; preds = %.preheader28.lr.ph, %.loopexit
  %indvars.iv44 = phi i64 [ %i.f, %.preheader28.lr.ph ], [ %indvars.iv.next45, %.loopexit ] ; 2 uses
  %.037 = phi i32 [ 1, %.preheader28.lr.ph ], [ %.3.lcssa, %.loopexit ] ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv44
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !122  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !124  ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4    ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader28
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !124
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %.preheader28
  %.1.lcssa = phi i32 [ %.037, %.preheader28 ], [ %spec.select, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124  ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %.lr.ph34, label %.loopexit

.lr.ph34:                                         ; preds = %.preheader
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.e
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !124
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %i.x = phi i32 [ %i.j, %.lr.ph ], [ %i.ab, %bb.b ]
  %.130 = phi i32 [ %.037, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.y = icmp eq i32 %i.x, %i.o
  %i.z = zext i1 %i.y to i32
  %spec.select = add nsw i32 %.130, %i.z          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4  ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.b, label %.preheader, !llvm.loop !126

bb.c:                                             ; preds = %.lr.ph34, %bb.c
  %indvars.iv41 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next42, %bb.c ]
  %i.ad = phi i32 [ %i.r, %.lr.ph34 ], [ %i.ah, %bb.c ]
  %.333 = phi i32 [ %.1.lcssa, %.lr.ph34 ], [ %spec.select27, %bb.c ]
  %i.ae = icmp eq i32 %i.ad, %i.w
  %i.af = zext i1 %i.ae to i32
  %spec.select27 = add nsw i32 %.333, %i.af       ; 2 uses
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next42
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.c, label %.loopexit, !llvm.loop !127

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %.3.lcssa, %.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @BranchLeafNode(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader35

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.c, i1 false), !tbaa !4
  br label %.preheader35

.preheader35:                                     ; preds = %.lr.ph.preheader, %bb.a
  %i.d = icmp sgt i32 %3, 1
  br i1 %i.d, label %.preheader34.preheader, label %.preheader32

.preheader34.preheader:                           ; preds = %.preheader35
  %i.e = add nsw i32 %3, -1
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader34

.preheader34:                                     ; preds = %.preheader34.preheader, %._crit_edge.1
  %indvars.iv52 = phi i64 [ 0, %.preheader34.preheader ], [ %indvars.iv.next53, %._crit_edge.1 ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv52
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %.lr.ph38, label %._crit_edge

.preheader32:                                     ; preds = %._crit_edge.1, %.preheader35
  %.not44 = icmp slt i32 %4, 0
  br i1 %.not44, label %._crit_edge46, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader32
  %i.k = sext i32 %3 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %1, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !122
  %i.n = add nuw i32 %4, 1
  %wide.trip.count61 = zext i32 %i.n to i64
  br label %.preheader

.lr.ph38:                                         ; preds = %.preheader34, %.lr.ph38
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph38 ], [ 0, %.preheader34 ]
  %i.o = phi i32 [ %i.u, %.lr.ph38 ], [ %i.i, %.preheader34 ]
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4    ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %.lr.ph38, label %._crit_edge, !llvm.loop !128

._crit_edge:                                      ; preds = %.lr.ph38, %.preheader34
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !124  ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %.lr.ph38.1, label %._crit_edge.1

.lr.ph38.1:                                       ; preds = %._crit_edge, %.lr.ph38.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %.lr.ph38.1 ], [ 0, %._crit_edge ]
  %i.aa = phi i32 [ %i.ag, %.lr.ph38.1 ], [ %i.y, %._crit_edge ]
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.1
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %.lr.ph38.1, label %._crit_edge.1, !llvm.loop !128

._crit_edge.1:                                    ; preds = %.lr.ph38.1, %._crit_edge
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond.not, label %.preheader32, label %.preheader34, !llvm.loop !129

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge43
  %indvars.iv58 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next59, %._crit_edge43 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv58
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !124 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %.preheader, %.lr.ph42
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph42 ], [ 0, %.preheader ]
  %i.am = phi i32 [ %i.as, %.lr.ph42 ], [ %i.ak, %.preheader ]
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !4
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next56
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %.lr.ph42, label %._crit_edge43, !llvm.loop !130

._crit_edge43:                                    ; preds = %.lr.ph42, %.preheader
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge46, label %.preheader, !llvm.loop !131

._crit_edge46:                                    ; preds = %._crit_edge43, %.preheader32
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @RootLeafNode(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.preheader21, label %._crit_edge27

.preheader21:                                     ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.c, i1 false), !tbaa !4
  %i.d = icmp samesign ugt i32 %0, 2
  br i1 %i.d, label %.preheader20.preheader, label %._crit_edge27

.preheader20.preheader:                           ; preds = %.preheader21
  %i.e = add nsw i32 %0, -2
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %._crit_edge.1
  %indvars.iv33 = phi i64 [ 0, %.preheader20.preheader ], [ %indvars.iv.next34, %._crit_edge.1 ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv33
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %.lr.ph24, label %._crit_edge

.lr.ph24:                                         ; preds = %.preheader20, %.lr.ph24
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph24 ], [ 0, %.preheader20 ]
  %i.k = phi i32 [ %i.q, %.lr.ph24 ], [ %i.i, %.preheader20 ]
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4    ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %.lr.ph24, label %._crit_edge, !llvm.loop !132

._crit_edge:                                      ; preds = %.lr.ph24, %.preheader20
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !124  ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4    ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %.lr.ph24.1, label %._crit_edge.1

.lr.ph24.1:                                       ; preds = %._crit_edge, %.lr.ph24.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %.lr.ph24.1 ], [ 0, %._crit_edge ]
  %i.w = phi i32 [ %i.ac, %.lr.ph24.1 ], [ %i.u, %._crit_edge ]
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %.lr.ph24.1, label %._crit_edge.1, !llvm.loop !132

._crit_edge.1:                                    ; preds = %.lr.ph24.1, %._crit_edge
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge27, label %.preheader20, !llvm.loop !133

._crit_edge27:                                    ; preds = %._crit_edge.1, %bb.a, %.preheader21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeFromABranch(i32 noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readnone captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @nodeFromABranch.outergroup2, align 8, !tbaa !124
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @AllocateIntVec(i32 noundef %0) #20
  store ptr %i.c, ptr @nodeFromABranch.outergroup2, align 8, !tbaa !124
  %i.d = tail call ptr @AllocateIntVec(i32 noundef %0) #20
  store ptr %i.d, ptr @nodeFromABranch.table, align 8, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = sext i32 %5 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %3, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122  ; 2 uses
  %i.h = sext i32 %6 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124  ; 6 uses
  %.not = icmp eq i32 %6, 0
  %i.k = zext i1 %.not to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124  ; 6 uses
  %i.n = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.n, label %.lr.ph, label %.preheader83

.lr.ph:                                           ; preds = %bb.c
  %i.o = load ptr, ptr @nodeFromABranch.table, align 8, !tbaa !124 ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> splat (i32 1), ptr %i.p, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.q, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader83, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader83:                                     ; preds = %scalar.ph, %middle.block, %bb.c
  %i.s = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %.lr.ph86, label %.preheader82

.lr.ph86:                                         ; preds = %.preheader83
  %i.u = load ptr, ptr @nodeFromABranch.table, align 8, !tbaa !124
  br label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  store i32 1, ptr %i.v, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader83, label %scalar.ph, !llvm.loop !135

.preheader82:                                     ; preds = %bb.d, %.preheader83
  %i.w = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %.lr.ph88, label %.preheader81

.lr.ph88:                                         ; preds = %.preheader82
  %i.y = load ptr, ptr @nodeFromABranch.table, align 8, !tbaa !124
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph86, %bb.d
  %indvars.iv101 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next102, %bb.d ]
  %i.z = phi i32 [ %i.s, %.lr.ph86 ], [ %i.ad, %bb.d ]
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.aa
  store i32 0, ptr %i.ab, align 4, !tbaa !4
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next102
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4  ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.d, label %.preheader82, !llvm.loop !136

.preheader81:                                     ; preds = %bb.e, %.preheader82
  %.pre = load ptr, ptr @nodeFromABranch.outergroup2, align 8, !tbaa !124 ; 8 uses
  br i1 %i.n, label %.lr.ph91, label %._crit_edge

.lr.ph91:                                         ; preds = %.preheader81
  %i.af = load ptr, ptr @nodeFromABranch.table, align 8, !tbaa !124 ; 3 uses
  %wide.trip.count110 = zext nneg i32 %0 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count110, 1
  %i.ag = icmp eq i32 %0, 1
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph91.new

.lr.ph91.new:                                     ; preds = %.lr.ph91
  %unroll_iter = and i64 %wide.trip.count110, 2147483646
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph88, %bb.e
  %indvars.iv104 = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next105, %bb.e ]
  %i.ah = phi i32 [ %i.w, %.lr.ph88 ], [ %i.al, %bb.e ]
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ai
  store i32 0, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next105
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.e, label %.preheader81, !llvm.loop !137

bb.f:                                             ; preds = %bb.j, %.lr.ph91.new
  %indvars.iv107 = phi i64 [ 0, %.lr.ph91.new ], [ %indvars.iv.next108.1, %bb.j ] ; 4 uses
  %.07089 = phi i32 [ 0, %.lr.ph91.new ], [ %.171.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph91.new ], [ %niter.next.1, %bb.j ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv107
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %.not78 = icmp eq i32 %i.ao, 0
  br i1 %.not78, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sext i32 %.07089 to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ap
  %i.ar = trunc nuw nsw i64 %indvars.iv107 to i32
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !4
  %i.as = add nsw i32 %.07089, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.171 = phi i32 [ %i.as, %bb.g ], [ %.07089, %bb.f ] ; 3 uses
  %indvars.iv.next108 = or disjoint i64 %indvars.iv107, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next108
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %.not78.1 = icmp eq i32 %i.au, 0
  br i1 %.not78.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = sext i32 %.171 to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.av
  %i.ax = trunc nuw nsw i64 %indvars.iv.next108 to i32
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !4
  %i.ay = add nsw i32 %.171, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.171.1 = phi i32 [ %i.ay, %bb.i ], [ %.171, %bb.h ] ; 3 uses
  %indvars.iv.next108.1 = add nuw nsw i64 %indvars.iv107, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !138

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph91
  %indvars.iv107.epil.init = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next108.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.07089.epil.init = phi i32 [ 0, %.lr.ph91 ], [ %.171.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod127 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv107.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %.not78.epil = icmp eq i32 %i.ba, 0
  br i1 %.not78.epil, label %._crit_edge.loopexit, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.bb = sext i32 %.07089.epil.init to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.bb
  %i.bd = trunc nuw nsw i64 %indvars.iv107.epil.init to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !4
  %i.be = add nsw i32 %.07089.epil.init, 1
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.epil.preheader, %bb.k, %._crit_edge.loopexit.unr-lcssa
  %.171.lcssa = phi i32 [ %.171.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.be, %bb.k ], [ %.07089.epil.init, %.epil.preheader ]
  %i.bf = sext i32 %.171.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader81
  %.070.lcssa = phi i64 [ 0, %.preheader81 ], [ %i.bf, %._crit_edge.loopexit ]
  %i.bg = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.070.lcssa
  store i32 -1, ptr %i.bg, align 4, !tbaa !4
  %i.bh = load i32, ptr %i.j, align 4, !tbaa !4   ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, -1
  br i1 %i.bi, label %.lr.ph94, label %.preheader80

.preheader80:                                     ; preds = %.lr.ph94, %._crit_edge
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !4   ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, -1
  br i1 %i.bk, label %.lr.ph96, label %.preheader

.lr.ph94:                                         ; preds = %._crit_edge, %.lr.ph94
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %.lr.ph94 ], [ 0, %._crit_edge ]
  %i.bl = phi i32 [ %i.ch, %.lr.ph94 ], [ %i.bh, %._crit_edge ]
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !124 ; 2 uses
  %i.bp = load i32, ptr %i.m, align 4, !tbaa !4
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
end_hunk_1
begin_hunk_2_@nodeFromABranch:bb.a
  %i.dd = sub i32 %i.dc, %i.da
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cm
  %i.df = sdiv i32 %i.dd, 2
  store i32 %i.df, ptr %i.de, align 4, !tbaa !4
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next116
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4  ; 2 uses
  %i.di = icmp sgt i32 %i.dh, -1
  br i1 %i.di, label %.lr.ph96, label %.preheader, !llvm.loop !140

.lr.ph98:                                         ; preds = %.preheader, %.lr.ph98
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %.lr.ph98 ], [ 0, %.preheader ]
  %i.dj = phi i32 [ %i.ef, %.lr.ph98 ], [ %i.cj, %.preheader ]
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !124 ; 2 uses
  %i.dn = load i32, ptr %i.m, align 4, !tbaa !4
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = load i32, ptr %i.j, align 4, !tbaa !4
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.dv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ds
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !124
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.do
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4
  %i.dz = add i32 %i.dq, 1
  %i.ea = add i32 %i.dz, %i.du
  %i.eb = sub i32 %i.ea, %i.dy
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dk
  %i.ed = sdiv i32 %i.eb, 2
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !4
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next119
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4  ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, -1
  br i1 %i.eg, label %.lr.ph98, label %._crit_edge99, !llvm.loop !141

._crit_edge99:                                    ; preds = %.lr.ph98, %.preheader
  ret void
}

declare ptr @AllocateIntVec(i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @OneClusterAndTheOther(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) initializes((0, 4)) %2, ptr noundef captures(none) %3, ptr noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %4, i64 %i.a ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.d = sext i32 %6 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 3 uses
  store i32 %i.g, ptr %2, align 4, !tbaa !4
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.lr.ph34, label %.loopexit

.lr.ph34:                                         ; preds = %.preheader
  %i.j = load i32, ptr %2, align 4, !tbaa !4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %1, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %i.n = phi i32 [ %i.y, %.lr.ph ], [ %i.g, %bb.a ]
  %i.o = load i32, ptr %2, align 4, !tbaa !4
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %1, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = zext nneg i32 %i.n to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store i8 1, ptr %i.t, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.d
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !124
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %.lr.ph, label %.preheader, !llvm.loop !142

bb.b:                                             ; preds = %.lr.ph34, %bb.d
  %indvars.iv39 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next40, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv39
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = trunc nuw nsw i64 %indvars.iv39 to i32
  store i32 %i.ac, ptr %3, align 4, !tbaa !4
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !143

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.c
  %i.ad = load i32, ptr %3, align 4, !tbaa !4     ; 2 uses
  %i.ae = icmp slt i32 %i.ad, %0
  br i1 %i.ae, label %.lr.ph36.preheader, label %._crit_edge

.lr.ph36.preheader:                               ; preds = %.loopexit
  %i.af = sext i32 %i.ad to i64                   ; 6 uses
  %wide.trip.count45 = sext i32 %0 to i64         ; 3 uses
  %i.ag = sub nsw i64 %wide.trip.count45, %i.af
  %xtraiter = and i64 %i.ag, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph36.prol.loopexit, label %.lr.ph36.prol

.lr.ph36.prol:                                    ; preds = %.lr.ph36.preheader
  %i.ah = load i32, ptr %2, align 4, !tbaa !4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.af
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %.not30.prol = icmp eq i8 %i.am, 0
  br i1 %.not30.prol, label %bb.e, label %.lr.ph36.prol.loopexit.unr-lcssa

bb.e:                                             ; preds = %.lr.ph36.prol
  %i.an = load i32, ptr %3, align 4, !tbaa !4
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.af
  store i8 1, ptr %i.ar, align 1, !tbaa !11
  br label %.lr.ph36.prol.loopexit.unr-lcssa

.lr.ph36.prol.loopexit.unr-lcssa:                 ; preds = %bb.e, %.lr.ph36.prol
  %indvars.iv.next43.prol = add nsw i64 %i.af, 1
  br label %.lr.ph36.prol.loopexit

.lr.ph36.prol.loopexit:                           ; preds = %.lr.ph36.prol.loopexit.unr-lcssa, %.lr.ph36.preheader
  %indvars.iv42.unr = phi i64 [ %i.af, %.lr.ph36.preheader ], [ %indvars.iv.next43.prol, %.lr.ph36.prol.loopexit.unr-lcssa ]
  %i.as = add nsw i64 %wide.trip.count45, -1
  %i.at = icmp eq i64 %i.as, %i.af
  br i1 %i.at, label %._crit_edge, label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.prol.loopexit, %bb.h
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.1, %bb.h ], [ %indvars.iv42.unr, %.lr.ph36.prol.loopexit ] ; 4 uses
  %i.au = load i32, ptr %2, align 4, !tbaa !4
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !8
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %indvars.iv42
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %.not30 = icmp eq i8 %i.az, 0
  br i1 %.not30, label %bb.f, label %.lr.ph36.1

bb.f:                                             ; preds = %.lr.ph36
  %i.ba = load i32, ptr %3, align 4, !tbaa !4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %indvars.iv42
  store i8 1, ptr %i.be, align 1, !tbaa !11
  br label %.lr.ph36.1

.lr.ph36.1:                                       ; preds = %.lr.ph36, %bb.f
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.bf = load i32, ptr %2, align 4, !tbaa !4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %indvars.iv.next43
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11
  %.not30.1 = icmp eq i8 %i.bk, 0
  br i1 %.not30.1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph36.1
  %i.bl = load i32, ptr %3, align 4, !tbaa !4
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %indvars.iv.next43
  store i8 1, ptr %i.bp, align 1, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph36.1
  %indvars.iv.next43.1 = add nsw i64 %indvars.iv42, 2 ; 2 uses
  %exitcond46.not.1 = icmp eq i64 %indvars.iv.next43.1, %wide.trip.count45
  br i1 %exitcond46.not.1, label %._crit_edge, label %.lr.ph36, !llvm.loop !144

._crit_edge:                                      ; preds = %.lr.ph36.prol.loopexit, %bb.h, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @makeEffMtx(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.preheader.us.preheader, label %._crit_edge16

.preheader.us.preheader:                          ; preds = %bb.a
  %wide.trip.count21 = zext nneg i32 %0 to i64    ; 7 uses
  %i.b = shl nuw nsw i64 %wide.trip.count21, 3    ; 2 uses
  %scevgep23 = getelementptr i8, ptr %2, i64 %i.b
  %min.iters.check = icmp ult i32 %0, 6
  %n.vec = and i64 %wide.trip.count21, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count21
  %xtraiter = and i64 %wide.trip.count21, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv18 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next19, %._crit_edge.us ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv18 ; 6 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv18
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.b
  %bound0 = icmp ult ptr %i.e, %scevgep23
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.f = load double, ptr %i.c, align 8, !tbaa !14, !alias.scope !145
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.f, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x double>, ptr %i.g, align 8, !tbaa !14, !alias.scope !148
  %wide.load27 = load <2 x double>, ptr %i.h, align 8, !tbaa !14, !alias.scope !148
  %i.i = fmul <2 x double> %broadcast.splat, %wide.load
  %i.j = fmul <2 x double> %broadcast.splat, %wide.load27
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x double> %i.i, ptr %i.k, align 8, !tbaa !14, !alias.scope !150, !noalias !152
  store <2 x double> %i.j, ptr %i.l, align 8, !tbaa !14, !alias.scope !150, !noalias !152
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.n = load double, ptr %i.c, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.p = load double, ptr %i.o, align 8, !tbaa !14
  %i.q = fmul double %i.n, %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.prol
  store double %i.q, ptr %i.r, align 8, !tbaa !14
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !154

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.s = sub nsw i64 %indvars.iv.ph, %wide.trip.count21
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.u = load double, ptr %i.c, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.w = load double, ptr %i.v, align 8, !tbaa !14
  %i.x = fmul double %i.u, %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.x, ptr %i.y, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load double, ptr %i.c, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !14
  %i.ac = fmul double %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  store double %i.ac, ptr %i.ad, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = load double, ptr %i.c, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.ag = load double, ptr %i.af, align 8, !tbaa !14
  %i.ah = fmul double %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.1
  store double %i.ah, ptr %i.ai, align 8, !tbaa !14
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aj = load double, ptr %i.c, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.al = load double, ptr %i.ak, align 8, !tbaa !14
  %i.am = fmul double %i.aj, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.2
  store double %i.am, ptr %i.an, align 8, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count21
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !155

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count21
  br i1 %exitcond22.not, label %._crit_edge16, label %.preheader.us, !llvm.loop !156

._crit_edge16:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_eff(i32 noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = tail call double @ipower(double noundef 5.000000e-01, i32 noundef %i.c) #20
  %i.e = load float, ptr @geta2, align 4, !tbaa !31
  %i.f = fpext float %i.e to double
  %i.g = fadd double %i.d, %i.f
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %i.g, ptr %i.h, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !157

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare double @ipower(double noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @shrinklocalhom(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @njob, align 4, !tbaa !4
  %.fr37 = freeze i32 %i.a                        ; 3 uses
  %i.b = icmp slt i32 %1, %.fr37
  br i1 %i.b, label %.lr.ph35, label %._crit_edge36

.lr.ph35:                                         ; preds = %bb.a
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %0, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = icmp slt i32 %2, %.fr37
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  br i1 %i.f, label %.lr.ph35.split.us.preheader, label %._crit_edge36

.lr.ph35.split.us.preheader:                      ; preds = %.lr.ph35
  %wide.trip.count43 = sext i32 %.fr37 to i64     ; 2 uses
  br label %.lr.ph35.split.us

.lr.ph35.split.us:                                ; preds = %.lr.ph35.split.us.preheader, %bb.e
  %indvars.iv40 = phi i64 [ %i.c, %.lr.ph35.split.us.preheader ], [ %indvars.iv.next41, %bb.e ] ; 3 uses
  %.02633.us = phi i32 [ 0, %.lr.ph35.split.us.preheader ], [ %.127.us, %bb.e ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv40
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %.not.us = icmp eq i8 %i.j, 0
  br i1 %.not.us, label %bb.e, label %.preheader.us

bb.b:                                             ; preds = %.preheader.us, %bb.d
  %indvars.iv = phi i64 [ %i.g, %.preheader.us ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.031.us = phi i32 [ 0, %.preheader.us ], [ %.1.us, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.v, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %.not29.us = icmp eq i8 %i.l, 0
  br i1 %.not29.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.w, align 8, !tbaa !158
  %i.n = getelementptr inbounds [80 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load double, ptr %i.o, align 8, !tbaa !160
  %i.q = fcmp oeq double %i.p, -1.000000e+00
  %i.r = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.s = sext i32 %.031.us to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  %. = select i1 %i.q, ptr null, ptr %i.n
  store ptr %., ptr %i.t, align 8, !tbaa !158
  %i.u = add nsw i32 %.031.us, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.us = phi i32 [ %i.u, %bb.c ], [ %.031.us, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count43
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !164

bb.e:                                             ; preds = %._crit_edge.us, %.lr.ph35.split.us
  %.127.us = phi i32 [ %i.z, %._crit_edge.us ], [ %.02633.us, %.lr.ph35.split.us ]
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge36, label %.lr.ph35.split.us, !llvm.loop !165

.preheader.us:                                    ; preds = %.lr.ph35.split.us
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.w = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv40
  %i.x = sext i32 %.02633.us to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %4, i64 %i.x
  br label %bb.b

._crit_edge.us:                                   ; preds = %bb.d
  %i.z = add nsw i32 %.02633.us, 1
  br label %bb.e

._crit_edge36:                                    ; preds = %bb.e, %.lr.ph35, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @msshrinklocalhom(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @njob, align 4, !tbaa !4
  %.fr47 = freeze i32 %i.a                        ; 3 uses
  %i.b = icmp slt i32 %1, %.fr47
  br i1 %i.b, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %bb.a
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %0, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = icmp slt i32 %2, %.fr47
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  br i1 %i.f, label %.lr.ph45.split.us.preheader, label %._crit_edge46

.lr.ph45.split.us.preheader:                      ; preds = %.lr.ph45
  %wide.trip.count53 = sext i32 %.fr47 to i64     ; 2 uses
  br label %.lr.ph45.split.us

.lr.ph45.split.us:                                ; preds = %.lr.ph45.split.us.preheader, %bb.g
  %indvars.iv50 = phi i64 [ %i.c, %.lr.ph45.split.us.preheader ], [ %indvars.iv.next51, %bb.g ] ; 4 uses
  %.03541.us = phi i32 [ 0, %.lr.ph45.split.us.preheader ], [ %.136.us, %bb.g ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv50
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %.not.us = icmp eq i8 %i.j, 0
  br i1 %.not.us, label %bb.g, label %.preheader.us

bb.b:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv = phi i64 [ %i.g, %.preheader.us ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.03340.us = phi i32 [ 0, %.preheader.us ], [ %.1.us, %bb.f ] ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.ad, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %.not37.us = icmp eq i8 %i.l, 0
  br i1 %.not37.us, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.ae, align 8, !tbaa !158
  %i.n = getelementptr inbounds [80 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load double, ptr %i.o, align 8, !tbaa !160
  %i.q = fcmp oeq double %i.p, -1.000000e+00
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 %i.r)
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.r)
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %3, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !158
  %i.x = sext i32 %i.s to i64
  %i.y = getelementptr inbounds [80 x i8], ptr %i.w, i64 %i.x
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %i.y, %bb.d ], [ null, %bb.c ]
  %i.z = load ptr, ptr %i.ag, align 8, !tbaa !162
  %i.aa = sext i32 %.03340.us to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aa
  store ptr %.sink, ptr %i.ab, align 8, !tbaa !158
  %i.ac = add nsw i32 %.03340.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1.us = phi i32 [ %i.ac, %bb.e ], [ %.03340.us, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count53
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !166

bb.g:                                             ; preds = %._crit_edge.us, %.lr.ph45.split.us
  %.136.us = phi i32 [ %i.ai, %._crit_edge.us ], [ %.03541.us, %.lr.ph45.split.us ]
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge46, label %.lr.ph45.split.us, !llvm.loop !167

.preheader.us:                                    ; preds = %.lr.ph45.split.us
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.ae = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv50
  %i.af = sext i32 %.03541.us to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %4, i64 %i.af
  %i.ah = trunc nsw i64 %indvars.iv50 to i32      ; 2 uses
  br label %bb.b

._crit_edge.us:                                   ; preds = %bb.f
  %i.ai = add nsw i32 %.03541.us, 1
  br label %bb.g

._crit_edge46:                                    ; preds = %bb.g, %.lr.ph45, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @fastshrinklocalhom(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %.not27 = icmp eq i32 %i.a, -1
  br i1 %.not27, label %._crit_edge30, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %.not2324 = icmp eq i32 %i.b, -1
  br i1 %.not2324, label %._crit_edge30, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.c = phi i32 [ %i.s, %._crit_edge ], [ %i.a, %.preheader.lr.ph ]
  %.01929 = phi ptr [ %i.r, %._crit_edge ], [ %0, %.preheader.lr.ph ]
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %2, i64 %i.d
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv33
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = phi i32 [ %i.b, %.preheader ], [ %i.q, %bb.b ]
  %.026 = phi ptr [ %1, %.preheader ], [ %i.p, %bb.b ]
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !158
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds [80 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !160
  %i.n = fcmp oeq double %i.m, -1.000000e+00
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %. = select i1 %i.n, ptr null, ptr %i.k
  store ptr %., ptr %i.o, align 8, !tbaa !158
  %i.p = getelementptr inbounds nuw i8, ptr %.026, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4    ; 2 uses
  %.not23 = icmp eq i32 %i.q, -1
  br i1 %.not23, label %._crit_edge, label %bb.b, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.01929, i64 4 ; 2 uses
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.s, -1
  br i1 %.not, label %._crit_edge30, label %.preheader, !llvm.loop !169

._crit_edge30:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @msfastshrinklocalhom(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %.not38 = icmp eq i32 %i.a, -1
  br i1 %.not38, label %._crit_edge41, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %.not3435 = icmp eq i32 %i.b, -1
  br i1 %.not3435, label %._crit_edge41, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.c = phi i32 [ %i.t, %._crit_edge ], [ %i.a, %.preheader.lr.ph ] ; 2 uses
  %.02939 = phi ptr [ %i.s, %._crit_edge ], [ %0, %.preheader.lr.ph ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv44
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = phi i32 [ %i.b, %.preheader ], [ %i.r, %bb.b ] ; 2 uses
  %.02836 = phi ptr [ %1, %.preheader ], [ %i.q, %bb.b ]
  %. = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.f)
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.f)
  %i.h = sext i32 %. to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !158
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds [80 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !160
  %i.o = fcmp oeq double %i.n, -1.000000e+00
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %.50 = select i1 %i.o, ptr null, ptr %i.l
  store ptr %.50, ptr %i.p, align 8, !tbaa !158
  %i.q = getelementptr inbounds nuw i8, ptr %.02836, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %.not34 = icmp eq i32 %i.r, -1
  br i1 %.not34, label %._crit_edge, label %bb.b, !llvm.loop !170

._crit_edge:                                      ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.02939, i64 4 ; 2 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %._crit_edge41, label %.preheader, !llvm.loop !171

._crit_edge41:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 double", !10, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !17}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 float", !10, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !6, i64 0}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17, !48, !49}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !17, !48}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = !{!58}
!58 = distinct !{!58, !54}
!59 = !{!56, !53}
!60 = distinct !{!60, !17, !48, !49}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !17, !48}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = !{!66}
!66 = distinct !{!66, !67}
!67 = distinct !{!67, !"LVerDomain"}
!68 = !{!69}
!69 = distinct !{!69, !67}
!70 = !{!71}
!71 = distinct !{!71, !67}
!72 = !{!66, !69}
!73 = distinct !{!73, !17, !48, !49}
!74 = distinct !{!74, !17, !48}
!75 = distinct !{!75, !17}
!76 = !{!77}
!77 = distinct !{!77, !78}
!78 = distinct !{!78, !"LVerDomain"}
!79 = !{!80}
!80 = distinct !{!80, !78}
!81 = !{!82}
!82 = distinct !{!82, !78}
!83 = !{!77, !80}
!84 = distinct !{!84, !17, !48, !49}
!85 = distinct !{!85, !27}
!86 = distinct !{!86, !17, !48}
!87 = distinct !{!87, !17}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = !{!94}
!94 = distinct !{!94, !90}
!95 = !{!92, !89}
!96 = distinct !{!96, !17, !48, !49}
!97 = distinct !{!97, !17, !48}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17, !48, !49}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17, !49, !48}
!102 = !{!103, !103, i64 0}
!103 = !{!"p2 _ZTS8_RNApair", !104, i64 0}
!104 = !{!"any p2 pointer", !10, i64 0}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !17}
!107 = distinct !{!107, !17, !48, !49}
!108 = distinct !{!108, !17}
!109 = distinct !{!109, !17, !49, !48}
!110 = distinct !{!110, !17, !48, !49}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17, !49, !48}
!113 = distinct !{!113, !17, !48, !49}
!114 = distinct !{!114, !17}
!115 = distinct !{!115, !17, !49, !48}
!116 = distinct !{!116, !17, !48, !49}
!117 = distinct !{!117, !17}
!118 = distinct !{!118, !17, !49, !48}
!119 = distinct !{!119, !17}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17}
!122 = !{!123, !123, i64 0}
!123 = !{!"p2 int", !104, i64 0}
!124 = !{!125, !125, i64 0}
!125 = !{!"p1 int", !10, i64 0}
!126 = distinct !{!126, !17}
!127 = distinct !{!127, !17}
!128 = distinct !{!128, !17}
!129 = distinct !{!129, !17}
!130 = distinct !{!130, !17}
!131 = distinct !{!131, !17}
!132 = distinct !{!132, !17}
!133 = distinct !{!133, !17}
!134 = distinct !{!134, !17, !48, !49}
!135 = distinct !{!135, !17, !49, !48}
!136 = distinct !{!136, !17}
!137 = distinct !{!137, !17}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = distinct !{!140, !17}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17}
!143 = distinct !{!143, !17}
!144 = distinct !{!144, !17}
!145 = !{!146}
!146 = distinct !{!146, !147}
!147 = distinct !{!147, !"LVerDomain"}
!148 = !{!149}
!149 = distinct !{!149, !147}
!150 = !{!151}
!151 = distinct !{!151, !147}
!152 = !{!149, !146}
!153 = distinct !{!153, !17, !48, !49}
!154 = distinct !{!154, !27}
!155 = distinct !{!155, !17, !48}
!156 = distinct !{!156, !17}
!157 = distinct !{!157, !17}
!158 = !{!159, !159, i64 0}
!159 = !{!"p1 _ZTS9_LocalHom", !10, i64 0}
!160 = !{!161, !15, i64 40}
!161 = !{!"_LocalHom", !5, i64 0, !159, i64 8, !159, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !15, i64 40, !5, i64 48, !5, i64 52, !15, i64 56, !32, i64 64, !15, i64 72}
!162 = !{!163, !163, i64 0}
!163 = !{!"p2 _ZTS9_LocalHom", !104, i64 0}
!164 = distinct !{!164, !17}
!165 = distinct !{!165, !17}
!166 = distinct !{!166, !17}
!167 = distinct !{!167, !17}
!168 = distinct !{!168, !17}
!169 = distinct !{!169, !17}
!170 = distinct !{!170, !17}
!171 = distinct !{!171, !17}
end_hunk_2
