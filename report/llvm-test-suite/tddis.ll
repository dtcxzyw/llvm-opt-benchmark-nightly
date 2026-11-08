Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tddis?download=true
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@njob = external local_unnamed_addr global i32, align 4
@amino_dis = external local_unnamed_addr global [128 x [128 x i32]], align 16
@penalty = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [26 x i8] c"score in score_calc = %f\0A\00", align 1, !guid !8
@amino_n = external local_unnamed_addr global [128 x i32], align 16
@strnbcat.b = internal global [5000000 x i8] zeroinitializer, align 16, !guid !9
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1, !guid !10
@nodeFromABranch.outergroup2 = internal unnamed_addr global ptr null, align 8, !guid !11
@nodeFromABranch.table = internal unnamed_addr global ptr null, align 8, !guid !12
@geta2 = external local_unnamed_addr global float, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mdfymtx(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 !guid !44 {
bb.a:
  %i.a = load i32, ptr @njob, align 4, !tbaa !7   ; 3 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph29, label %._crit_edge

.lr.ph29:                                         ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 4 uses
  %wide.trip.count37 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 3 uses
  %i.g = add nsw i64 %wide.trip.count, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph29, %.loopexit
  %indvars.iv33 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next34, %.loopexit ] ; 5 uses
  %indvars.iv.a = phi i64 [ 1, %.lr.ph29 ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.01928 = phi i32 [ 0, %.lr.ph29 ], [ %.120, %.loopexit ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv33
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
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
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.a
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %.not23.prol = icmp eq i8 %i.q, 0
  br i1 %.not23.prol, label %.prol.loopexit.unr-lcssa, label %bb.c

bb.c:                                             ; preds = %.prol.preheader
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.a
  %i.t = load double, ptr %i.s, align 8, !tbaa !20
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.v = sext i32 %i.j to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  store double %i.t, ptr %i.w, align 8, !tbaa !20
  %i.x = add nsw i32 %.01928, 2
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c, %.prol.preheader
  %.1.prol = phi i32 [ %i.x, %bb.c ], [ %i.j, %.prol.preheader ]
  %indvars.iv.next31.prol = add nuw nsw i64 %indvars.iv.a, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv30.unr = phi i64 [ %indvars.iv.a, %.lr.ph ], [ %indvars.iv.next31.prol, %.prol.loopexit.unr-lcssa ]
  %.025.unr = phi i32 [ %i.j, %.lr.ph ], [ %.1.prol, %.prol.loopexit.unr-lcssa ]
  %i.y = icmp eq i64 %i.g, %indvars.iv33
  br i1 %i.y, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.g
  %indvars.iv30 = phi i64 [ %indvars.iv.next31.1, %bb.g ], [ %indvars.iv30.unr, %.prol.loopexit ] ; 4 uses
  %.025 = phi i32 [ %.1.1, %bb.g ], [ %.025.unr, %.prol.loopexit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv30
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
  %.not23 = icmp eq i8 %i.aa, 0
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.new
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv30
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !20
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.af = sext i32 %.025 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  store double %i.ad, ptr %i.ag, align 8, !tbaa !20
  %i.ah = add nsw i32 %.025, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.new, %bb.d
  %.1 = phi i32 [ %i.ah, %bb.d ], [ %.025, %.lr.ph.new ] ; 3 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next31
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %.not23.1 = icmp eq i8 %i.aj, 0
  br i1 %.not23.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next31
  %i.am = load double, ptr %i.al, align 8, !tbaa !20
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.ao = sext i32 %.1 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  store double %i.am, ptr %i.ap, align 8, !tbaa !20
  %i.aq = add nsw i32 %.1, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.aq, %bb.f ], [ %.1, %bb.e ]
  %indvars.iv.next31.1 = add nuw nsw i64 %indvars.iv30, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next31.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.new, !llvm.loop !42

.loopexit:                                        ; preds = %.prol.loopexit, %bb.g, %bb.b
  %.120 = phi i32 [ %.01928, %bb.b ], [ %i.j, %bb.g ], [ %i.j, %.prol.loopexit ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count37
  br i1 %exitcond38.not, label %._crit_edge, label %bb.b, !llvm.loop !43

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local float @score_calc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 !guid !50 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17
  %.fr = freeze i64 %i.b
  %i.c = trunc i64 %.fr to i32                    ; 3 uses
  %i.d = add nsw i32 %1, -1
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

.lr.ph72.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv90 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next91, %.loopexit.us ] ; 2 uses
  %indvars.iv84.a = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next85, %.loopexit.us ] ; 2 uses
  %.04875.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bb, %.loopexit.us ]
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv90
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph72.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %._crit_edge.us.us ], [ %indvars.iv84.a, %.lr.ph72.us ] ; 2 uses
  %.14970.us.us = phi float [ %i.bb, %._crit_edge.us.us ], [ %.04875.us, %.lr.ph72.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv86
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.us.us
  %.061.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %.1.us.us, %bb.i ] ; 3 uses
  %.05060.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %.151.us.us, %bb.i ] ; 3 uses
  %.05359.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.au, %bb.i ] ; 3 uses
  %i.m = sext i32 %.05359.us.us to i64            ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16    ; 2 uses
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %.05060.us.us, 1             ; 3 uses
  %i.r = sext i8 %i.o to i64
  %i.s = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16    ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %i.y = add nsw i32 %i.x, %.061.us.us            ; 2 uses
  %i.z = icmp eq i8 %i.u, 45
  br i1 %i.z, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.c, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %i.m, %bb.c ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = icmp eq i8 %i.ab, 45
  br i1 %i.ac, label %.preheader, label %bb.d, !llvm.loop !45

bb.d:                                             ; preds = %.preheader
  %i.ad = add nsw i32 %i.h, %i.y                  ; 2 uses
  %i.ae = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.af = icmp slt i32 %i.f, %i.ae
  br i1 %i.af, label %._crit_edge.us.us, label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 45
  br i1 %i.ai, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sext i8 %i.ah to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv.next82
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %i.ao = icmp eq i8 %i.an, 45
  br i1 %i.ao, label %bb.g, label %bb.h, !llvm.loop !46

bb.h:                                             ; preds = %bb.g
  %i.ap = add nsw i32 %.05060.us.us, 1            ; 2 uses
  %i.aq = add nsw i32 %i.al, %.061.us.us
  %i.ar = add nsw i32 %i.aq, %i.h                 ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv81 to i32      ; 2 uses
  %i.at = icmp slt i32 %i.f, %i.as
  br i1 %i.at, label %._crit_edge.us.us, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d, %bb.c
  %.3.us.us = phi i32 [ %.05359.us.us, %bb.e ], [ %i.as, %bb.h ], [ %i.ae, %bb.d ], [ %.05359.us.us, %bb.c ]
  %.151.us.us = phi i32 [ %.05060.us.us, %bb.e ], [ %i.ap, %bb.h ], [ %i.q, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %.1.us.us = phi i32 [ %.061.us.us, %bb.e ], [ %i.ar, %bb.h ], [ %i.ad, %bb.d ], [ %i.y, %bb.c ] ; 2 uses
  %i.au = add nsw i32 %.3.us.us, 1                ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.c
  br i1 %i.av, label %bb.b, label %._crit_edge.us.us, !llvm.loop !47

._crit_edge.us.us:                                ; preds = %bb.i, %bb.h, %bb.d
  %.252.us.us = phi i32 [ %i.q, %bb.d ], [ %i.ap, %bb.h ], [ %.151.us.us, %bb.i ]
  %.2.us.us = phi i32 [ %i.ad, %bb.d ], [ %i.ar, %bb.h ], [ %.1.us.us, %bb.i ]
  %i.aw = sitofp i32 %.2.us.us to double
  %i.ax = sitofp i32 %.252.us.us to double
  %i.ay = fdiv double %i.aw, %i.ax
  %i.az = fpext float %.14970.us.us to double
  %i.ba = fadd double %i.ay, %i.az
  %i.bb = fptrunc double %i.ba to float           ; 3 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count
  br i1 %exitcond89.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !48

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84.a, 1
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge.loopexit, label %.lr.ph72.us, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.bc = fpext float %i.bb to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.048.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bc, %._crit_edge.loopexit ], [ +qnan, %.lr.ph ]
  %i.bd = sitofp i32 %1 to double                 ; 2 uses
  %i.be = fadd nnan double %i.bd, -1.000000e+00
  %i.bf = fmul double %i.be, %i.bd
  %i.bg = fmul double %i.bf, 5.000000e-01
  %i.bh = fdiv double %.048.lcssa, %i.bg
  %i.bi = fptrunc double %i.bh to float           ; 2 uses
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.bk = fpext float %i.bi to double
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str, double noundef %i.bk) #18 ; 0 uses
  ret float %i.bi
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cpmx_calc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !57 {
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
  %lcmp.mod67 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.036.epil = phi double [ %.036.epil.init, %.lr.ph.epil.preheader ], [ %i.e, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.d = load double, ptr %i.c, align 8, !tbaa !20
  %i.e = fadd double %.036.epil, %i.d             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader34, label %.lr.ph.epil, !llvm.loop !53

.preheader34:                                     ; preds = %.preheader34.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ak, %.preheader34.loopexit.unr-lcssa ], [ %i.e, %.lr.ph.epil ]
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.preheader32.split, label %._crit_edge44.split

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %.036 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.h = load double, ptr %i.g, align 8, !tbaa !20
  %i.i = fadd double %.036, %i.h
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !20
  %i.m = fadd double %i.i, %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !20
  %i.q = fadd double %i.m, %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !20
  %i.u = fadd double %i.q, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load double, ptr %i.w, align 8, !tbaa !20
  %i.y = fadd double %i.u, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !20
  %i.ac = fadd double %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load double, ptr %i.ae, align 8, !tbaa !20
  %i.ag = fadd double %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !20
  %i.ak = fadd double %i.ag, %i.aj                ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader34.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !54

.preheader32.split:                               ; preds = %.preheader34
  %i.al = zext nneg i32 %3 to i64
  %i.am = shl nuw nsw i64 %i.al, 2                ; 26 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.at, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ax, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bb, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bd, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bf, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bh, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bj, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bn, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bp, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.br, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bt, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bv, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bz, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cb, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cd, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cf, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ch, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cj, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cl, i8 0, i64 %i.am, i1 false), !tbaa !26
  br i1 %i.a, label %.preheader.preheader, label %._crit_edge44.split

.preheader.preheader:                             ; preds = %.preheader32.split
  %wide.trip.count61 = zext nneg i32 %3 to i64
  %wide.trip.count56 = zext nneg i32 %4 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge42
  %indvars.iv58 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next59, %._crit_edge42 ] ; 3 uses
end_hunk_0
