Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/io?download=true
inline.NumInlined: 109
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 23
begin_hunk_0_@WriteFloatHat2:bb.a
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %indvars.iv.next68 = add i32 %indvars.iv67, -1
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge56.loopexit, label %.preheader51, !llvm.loop !115

._crit_edge56.loopexit:                           ; preds = %._crit_edge
  %i.w = fmul double %.1.lcssa, 2.500000e+00
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.w, %._crit_edge56.loopexit ]
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1) #32 ; 0 uses
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1) #32 ; 0 uses
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, double noundef %.0.lcssa) #32 ; 0 uses
  %i.aa = icmp sgt i32 %1, 0
  br i1 %i.aa, label %.lr.ph60.preheader, label %._crit_edge65

.lr.ph60.preheader:                               ; preds = %._crit_edge56
  %wide.trip.count77 = zext nneg i32 %1 to i64
  br label %.lr.ph60

.preheader.preheader:                             ; preds = %.lr.ph60
  %i.ab = zext nneg i32 %1 to i64
  %wide.trip.count89 = zext nneg i32 %1 to i64
  br label %.preheader

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv74 = phi i64 [ 0, %.lr.ph60.preheader ], [ %indvars.iv.next75, %.lr.ph60 ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv74
  %i.ad = trunc nuw nsw i64 %indvars.iv.next75 to i32
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %i.ad, ptr noundef %i.ac) #32 ; 0 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.preheader.preheader, label %.lr.ph60, !llvm.loop !116

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge63
  %indvars.iv86 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next87, %._crit_edge63 ] ; 3 uses
  %indvars.iv82 = phi i32 [ %1, %.preheader.preheader ], [ %indvars.iv.next83, %._crit_edge63 ] ; 2 uses
  %i.af = sub nsw i64 %i.ab, %indvars.iv86        ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv86
  %i.ai = add nuw i64 %i.af, 4294967295
  %i.aj = and i64 %i.ai, 4294967295
  %wide.trip.count84 = zext i32 %indvars.iv82 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph62, %bb.e
  %indvars.iv79 = phi i64 [ 1, %.lr.ph62 ], [ %indvars.iv.next80, %bb.e ] ; 4 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv79
  %i.am = load float, ptr %i.al, align 4, !tbaa !60
  %i.an = fpext float %i.am to double
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.an) #32 ; 0 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv79 to i32
  %i.aq = urem i32 %i.ap, 12
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = icmp eq i64 %indvars.iv79, %i.aj
  %or.cond = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge63, label %bb.c, !llvm.loop !117

._crit_edge63:                                    ; preds = %bb.e, %.preheader
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %indvars.iv.next83 = add i32 %indvars.iv82, -1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge65, label %.preheader, !llvm.loop !118

._crit_edge65:                                    ; preds = %._crit_edge63, %._crit_edge56
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteHat2_int(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, -1                       ; 2 uses
  %i.b = icmp sgt i32 %1, 1                       ; 2 uses
  br i1 %i.b, label %.lr.ph55.preheader, label %._crit_edge

.lr.ph55.preheader:                               ; preds = %bb.a
  %wide.trip.count73 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.c = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph

.loopexit50:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.2.lcssa = phi double [ %.2.lcssa.unr, %.prol.loopexit ], [ %.2.1, %.lr.ph.new ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge, label %.lr.ph, !llvm.loop !119

.lr.ph:                                           ; preds = %.loopexit50, %.lr.ph55.preheader
  %indvars.iv70 = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next71, %.loopexit50 ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph55.preheader ], [ %indvars.iv.next, %.loopexit50 ] ; 4 uses
  %.054 = phi double [ 0.000000e+00, %.lr.ph55.preheader ], [ %.2.lcssa, %.loopexit50 ] ; 3 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv70
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 3 uses
  %i.f = sub nsw i64 %indvars.iv70, %wide.trip.count
  %i.g = and i64 %i.f, 1
  %lcmp.mod.not.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = sitofp i32 %i.i to double                ; 2 uses
  %i.k = fcmp olt double %.054, %i.j
  %.2.prol = select i1 %i.k, double %i.j, double %.054 ; 2 uses
  %indvars.iv.next68.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.2.lcssa.unr = phi double [ poison, %.lr.ph ], [ %.2.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv67.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next68.prol, %.prol.loopexit.unr-lcssa ]
  %.152.unr = phi double [ %.054, %.lr.ph ], [ %.2.prol, %.prol.loopexit.unr-lcssa ]
  %i.l = icmp eq i64 %i.c, %indvars.iv70
  br i1 %i.l, label %.loopexit50, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv67 = phi i64 [ %indvars.iv.next68.1, %.lr.ph.new ], [ %indvars.iv67.unr, %.prol.loopexit ] ; 3 uses
  %.152 = phi double [ %.2.1, %.lr.ph.new ], [ %.152.unr, %.prol.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv67
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = sitofp i32 %i.n to double                ; 2 uses
  %i.p = fcmp olt double %.152, %i.o
  %.2 = select i1 %i.p, double %i.o, double %.152 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv67
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = sitofp i32 %i.s to double                ; 2 uses
  %i.u = fcmp olt double %.2, %i.t
  %.2.1 = select i1 %i.u, double %i.t, double %.2 ; 2 uses
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next68.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit50, label %.lr.ph.new, !llvm.loop !120

._crit_edge:                                      ; preds = %.loopexit50, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.2.lcssa, %.loopexit50 ]
  %i.v = fdiv double %.0.lcssa, 1.000000e+06
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1) #32 ; 0 uses
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1) #32 ; 0 uses
  %i.y = fmul double %i.v, 2.500000e+00
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, double noundef %i.y) #32 ; 0 uses
  %i.aa = icmp sgt i32 %1, 0
  br i1 %i.aa, label %.lr.ph60.preheader, label %._crit_edge66

.lr.ph60.preheader:                               ; preds = %._crit_edge
  %wide.trip.count78 = zext nneg i32 %1 to i64
  br label %.lr.ph60

.preheader:                                       ; preds = %.lr.ph60
  br i1 %i.b, label %.lr.ph65.preheader, label %._crit_edge66

.lr.ph65.preheader:                               ; preds = %.preheader
  %i.ab = zext nneg i32 %i.a to i64               ; 2 uses
  %wide.trip.count85 = zext nneg i32 %1 to i64
  br label %.lr.ph63

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv75 = phi i64 [ 0, %.lr.ph60.preheader ], [ %indvars.iv.next76, %.lr.ph60 ] ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv75
  %i.ad = trunc nuw nsw i64 %indvars.iv.next76 to i32
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %i.ad, ptr noundef %i.ac) #32 ; 0 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.preheader, label %.lr.ph60, !llvm.loop !121

.loopexit:                                        ; preds = %bb.d
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %i.ab
  br i1 %exitcond91.not, label %._crit_edge66, label %.lr.ph63, !llvm.loop !122

.lr.ph63:                                         ; preds = %.loopexit, %.lr.ph65.preheader
  %indvars.iv87 = phi i64 [ 0, %.lr.ph65.preheader ], [ %indvars.iv.next88, %.loopexit ] ; 3 uses
  %indvars.iv80 = phi i64 [ 1, %.lr.ph65.preheader ], [ %indvars.iv.next81, %.loopexit ] ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv87
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph63, %bb.d
  %indvars.iv82 = phi i64 [ %indvars.iv80, %.lr.ph63 ], [ %indvars.iv.next83, %bb.d ] ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv82
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = fpext float %i.aj to double
  %i.al = fdiv double %i.ak, 1.000000e+06
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.al) #32 ; 0 uses
  %i.an = sub nuw nsw i64 %indvars.iv82, %indvars.iv87
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %.urem = urem i32 %i.ao, 12
  %i.ap = icmp eq i32 %.urem, 0
  %i.aq = icmp eq i64 %indvars.iv82, %i.ab
  %or.cond = or i1 %i.aq, %i.ap
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %.loopexit, label %bb.b, !llvm.loop !123

._crit_edge66:                                    ; preds = %.loopexit, %._crit_edge, %.preheader
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteHat2(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, -1                       ; 2 uses
  %i.b = icmp sgt i32 %1, 1                       ; 2 uses
  br i1 %i.b, label %.lr.ph54.preheader, label %._crit_edge

.lr.ph54.preheader:                               ; preds = %bb.a
  %wide.trip.count72 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.c = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph

.loopexit49:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.2.lcssa = phi double [ %.2.lcssa.unr, %.prol.loopexit ], [ %.2.3, %.lr.ph.new ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !124

.lr.ph:                                           ; preds = %.loopexit49, %.lr.ph54.preheader
  %indvars.iv69 = phi i64 [ 0, %.lr.ph54.preheader ], [ %indvars.iv.next70, %.loopexit49 ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph54.preheader ], [ %indvars.iv.next, %.loopexit49 ] ; 3 uses
  %.053 = phi double [ 0.000000e+00, %.lr.ph54.preheader ], [ %.2.lcssa, %.loopexit49 ] ; 2 uses
  %i.d = xor i64 %indvars.iv69, -1
  %i.e = add nsw i64 %i.d, %wide.trip.count
  %i.f = sub i64 %i.c, %indvars.iv69
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv69
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 5 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv66.prol = phi i64 [ %indvars.iv.next67.prol, %.prol.preheader ], [ %indvars.iv, %.lr.ph ] ; 2 uses
  %.151.prol = phi double [ %.2.prol, %.prol.preheader ], [ %.053, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv66.prol
  %i.j = load double, ptr %i.i, align 8, !tbaa !107 ; 2 uses
  %i.k = fcmp ogt double %i.j, %.151.prol
  %.2.prol = select i1 %i.k, double %i.j, double %.151.prol ; 3 uses
  %indvars.iv.next67.prol = add nuw nsw i64 %indvars.iv66.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !125

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.2.lcssa.unr = phi double [ poison, %.lr.ph ], [ %.2.prol, %.prol.preheader ]
  %indvars.iv66.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next67.prol, %.prol.preheader ]
  %.151.unr = phi double [ %.053, %.lr.ph ], [ %.2.prol, %.prol.preheader ]
  %i.l = icmp ult i64 %i.f, 3
  br i1 %i.l, label %.loopexit49, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv66 = phi i64 [ %indvars.iv.next67.3, %.lr.ph.new ], [ %indvars.iv66.unr, %.prol.loopexit ] ; 5 uses
  %.151 = phi double [ %.2.3, %.lr.ph.new ], [ %.151.unr, %.prol.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv66
  %i.n = load double, ptr %i.m, align 8, !tbaa !107 ; 2 uses
  %i.o = fcmp ogt double %i.n, %.151
  %.2 = select i1 %i.o, double %i.n, double %.151 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv66
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !107 ; 2 uses
  %i.s = fcmp ogt double %i.r, %.2
  %.2.1 = select i1 %i.s, double %i.r, double %.2 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv66
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !107 ; 2 uses
  %i.w = fcmp ogt double %i.v, %.2.1
  %.2.2 = select i1 %i.w, double %i.v, double %.2.1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv66
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !107 ; 2 uses
  %i.aa = fcmp ogt double %i.z, %.2.2
  %.2.3 = select i1 %i.aa, double %i.z, double %.2.2 ; 2 uses
  %indvars.iv.next67.3 = add nuw nsw i64 %indvars.iv66, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next67.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit49, label %.lr.ph.new, !llvm.loop !126

._crit_edge.loopexit:                             ; preds = %.loopexit49
  %i.ab = fmul double %.2.lcssa, 2.500000e+00
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ab, %._crit_edge.loopexit ]
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1) #32 ; 0 uses
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1) #32 ; 0 uses
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, double noundef %.0.lcssa) #32 ; 0 uses
  %i.af = icmp sgt i32 %1, 0
  br i1 %i.af, label %.lr.ph59.preheader, label %._crit_edge65

.lr.ph59.preheader:                               ; preds = %._crit_edge
  %wide.trip.count77 = zext nneg i32 %1 to i64
  br label %.lr.ph59

.preheader:                                       ; preds = %.lr.ph59
  br i1 %i.b, label %.lr.ph64.preheader, label %._crit_edge65

.lr.ph64.preheader:                               ; preds = %.preheader
  %i.ag = zext nneg i32 %i.a to i64               ; 2 uses
  %wide.trip.count84 = zext nneg i32 %1 to i64
  br label %.lr.ph62

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %indvars.iv74 = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next75, %.lr.ph59 ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv74
  %i.ai = trunc nuw nsw i64 %indvars.iv.next75 to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %i.ai, ptr noundef %i.ah) #32 ; 0 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.preheader, label %.lr.ph59, !llvm.loop !127

.loopexit:                                        ; preds = %bb.d
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %i.ag
  br i1 %exitcond90.not, label %._crit_edge65, label %.lr.ph62, !llvm.loop !128

.lr.ph62:                                         ; preds = %.loopexit, %.lr.ph64.preheader
  %indvars.iv86 = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next87, %.loopexit ] ; 3 uses
  %indvars.iv79 = phi i64 [ 1, %.lr.ph64.preheader ], [ %indvars.iv.next80, %.loopexit ] ; 2 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv86
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph62, %bb.d
  %indvars.iv81 = phi i64 [ %indvars.iv79, %.lr.ph62 ], [ %indvars.iv.next82, %bb.d ] ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !105
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv81
  %i.an = load double, ptr %i.am, align 8, !tbaa !107
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.an) #32 ; 0 uses
  %i.ap = sub nuw nsw i64 %indvars.iv81, %indvars.iv86
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %.urem = urem i32 %i.aq, 12
  %i.ar = icmp eq i32 %.urem, 0
  %i.as = icmp eq i64 %indvars.iv81, %i.ag
  %or.cond = or i1 %i.as, %i.ar
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.loopexit, label %bb.b, !llvm.loop !129

._crit_edge65:                                    ; preds = %.loopexit, %._crit_edge, %.preheader
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteHat2plain(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph15.preheader, label %._crit_edge

.lr.ph15.preheader:                               ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %wide.trip.count22 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.next20, %wide.trip.count22
  br i1 %exitcond23.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph15.preheader
  %indvars.iv19 = phi i64 [ 0, %.lr.ph15.preheader ], [ %indvars.iv.next20, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph15.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv19
  %i.d = trunc nuw nsw i64 %indvars.iv.next20 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv16 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next17, %bb.b ] ; 2 uses
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv16
  %i.g = load double, ptr %i.f, align 8, !tbaa !107
  %i.h = trunc nuw i64 %indvars.iv.next17 to i32
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %i.d, i32 noundef %i.h, double noundef %i.g) #32 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next17, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !131

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @ReadFasta_sub(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  %i.b = alloca [50000 x i32], align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.030 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 3 uses
  %.02229 = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %i.e = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 255, ptr noundef %0) ; 0 uses
  %i.f = load i64, ptr %i.a, align 16
  %i.g = xor i64 4412750543122677035, %i.f
  %i.h = getelementptr i8, ptr %i.a, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = zext i32 %i.i to i64
  %i.k = xor i64 725433661, %i.j
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %.not27 = icmp eq i32 %i.n, 0
  br i1 %.not27, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = call i64 @strtol(ptr noundef nonnull captures(none) %i.d, ptr noundef null, i32 noundef 10) #32, !inline_history !53
  %i.p = trunc i64 %i.o to i32
  %i.q = sext i32 %.030 to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.q
  store i32 %i.p, ptr %i.r, align 4, !tbaa !4
  %i.s = add nsw i32 %.030, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %.030, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = add nuw nsw i32 %.02229, 1
  %i.u = icmp samesign ult i32 %.02229, 9999999
  %i.v = icmp slt i32 %.1, %2
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.b, label %.lr.ph35.preheader, !llvm.loop !132

.lr.ph35.preheader:                               ; preds = %bb.d
  %i.x = zext nneg i32 %2 to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 %i.y, i1 false), !tbaa !107
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %bb.g
  %.234 = phi i32 [ %.3, %bb.g ], [ 0, %.lr.ph35.preheader ] ; 3 uses
  %.22433 = phi i32 [ %i.ak, %bb.g ], [ 0, %.lr.ph35.preheader ] ; 2 uses
  %i.z = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 255, ptr noundef %0)
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph35
  %i.aa = sext i32 %.234 to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [256 x i8], ptr %3, i64 %i.ad
  %i.af = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 20) #33
  %.not26 = icmp eq i32 %i.af, 0
  br i1 %.not26, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 255, ptr noundef %0) ; 0 uses
  %i.ah = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #32, !inline_history !52
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ad
  store double %i.ah, ptr %i.ai, align 8, !tbaa !107
  %i.aj = add nsw i32 %.234, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.3 = phi i32 [ %.234, %bb.e ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ak = add nuw nsw i32 %.22433, 1
  %i.al = icmp samesign ult i32 %.22433, 99999
  %i.am = icmp slt i32 %.3, %2
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.lr.ph35, label %._crit_edge, !llvm.loop !133

._crit_edge:                                      ; preds = %bb.g, %.lr.ph35, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @ReadSsearch(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 75
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.010 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 2 uses
  %.089 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %i.f = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 255, ptr noundef %0) ; 0 uses
  %i.g = load i64, ptr %i.a, align 16
  %i.h = xor i64 4412750543122677035, %i.g
  %i.i = getelementptr i8, ptr %i.a, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = zext i32 %i.j to i64
  %i.l = xor i64 725433661, %i.k
  %i.m = or i64 %i.h, %i.l
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = call i64 @strtol(ptr noundef nonnull captures(none) %i.d, ptr noundef null, i32 noundef 10) #32, !inline_history !53
  %i.q = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.b) #32 ; 0 uses
  %i.r = load i32, ptr %i.b, align 4, !tbaa !4
  %i.s = sitofp i32 %i.r to double
  %sext = shl i64 %i.p, 32
  %i.t = ashr exact i64 %sext, 29
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  store double %i.s, ptr %i.u, align 8, !tbaa !107
  %i.v = add nsw i32 %.010, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %.010, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.w = add nuw nsw i32 %.089, 1
  %i.x = icmp samesign ult i32 %.089, 9999999
  %i.y = icmp slt i32 %.1, %2
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !134

end_hunk_0
