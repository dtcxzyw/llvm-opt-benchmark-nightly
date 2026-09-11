Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idaa?download=true
inline.NumInlined: 12
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@IDACalcICB:bb.a
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %.lr.ph, %bb.g
  %.0.lcssa = phi ptr [ null, %bb.g ], [ %.031, %.lr.ph ], [ null, %bb.h ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.0.lcssa, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.q) #8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %4, ptr noundef %i.s) #8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  store i32 1, ptr %i.t, align 8, !tbaa !39
  %i.u = tail call i32 @IDACalcIC(ptr noundef %i.n, i32 noundef 1, double noundef %2) #8
  store i32 0, ptr %i.t, align 8, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.f, %bb.d, %bb.b
  %.025 = phi i32 [ -20, %bb.b ], [ -101, %bb.d ], [ -22, %bb.f ], [ %i.u, %._crit_edge ]
  ret i32 %.025
}

declare i32 @IDACalcIC(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @IDACalcICBS(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 1473, ptr noundef nonnull @__func__.IDACalcICBS, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !47
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -101, i32 noundef 1484, ptr noundef nonnull @__func__.IDACalcICBS, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1494, ptr noundef nonnull @__func__.IDACalcICBS, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %.not49 = icmp slt i32 %1, %i.j
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1503, ptr noundef nonnull @__func__.IDACalcICBS, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #8
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.i
  %.044.sink.in = phi ptr [ %i.n, %.lr.ph ], [ %i.k, %bb.i ]
  %.044.sink = load ptr, ptr %.044.sink.in, align 8, !tbaa !90, !nonnull !113, !noundef !113 ; 5 uses
  %i.l = load i32, ptr %.044.sink, align 8, !tbaa !112
  %i.m = icmp eq i32 %1, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.044.sink, i64 128
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.044.sink, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !91
  %i.q = getelementptr inbounds nuw i8, ptr %.044.sink, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !115
  %.not51 = icmp eq i32 %i.r, 0
  br i1 %.not51, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1522, ptr noundef nonnull @__func__.IDACalcICBS, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #8
  br label %bb.n

bb.k:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.044.sink, ptr %i.s, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.u) #8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %4, ptr noundef %i.w) #8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !51   ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !65 ; 3 uses
  br i1 %i.z, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %bb.k
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.y, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph62
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.ac, align 8, !tbaa !66
  store <2 x double> splat (double 1.000000e+00), ptr %i.ad, align 8, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge63, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph62, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph62 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.af, align 8, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge63, label %scalar.ph, !llvm.loop !165

._crit_edge63:                                    ; preds = %scalar.ph, %middle.block, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.ai = tail call i32 @N_VScaleVectorArray(i32 noundef %i.y, ptr noundef %i.ab, ptr noundef %5, ptr noundef %i.ah) #8
  %.not52 = icmp eq i32 %i.ai, 0
  br i1 %.not52, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge63
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.ak = load i32, ptr %i.x, align 8, !tbaa !51
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53
  %i.ao = tail call i32 @N_VScaleVectorArray(i32 noundef %i.ak, ptr noundef %i.al, ptr noundef %6, ptr noundef %i.an) #8
  %.not53 = icmp eq i32 %i.ao, 0
  br i1 %.not53, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  store i32 1, ptr %i.ap, align 8, !tbaa !39
  %i.aq = tail call i32 @IDACalcIC(ptr noundef %i.p, i32 noundef 1, double noundef %2) #8
  store i32 0, ptr %i.ap, align 8, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %._crit_edge63, %bb.m, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.045 = phi i32 [ -20, %bb.b ], [ -101, %bb.d ], [ -22, %bb.h ], [ -22, %bb.f ], [ -28, %._crit_edge63 ], [ %i.aq, %bb.m ], [ -22, %bb.j ], [ -28, %bb.l ]
  ret i32 %.045
}

declare i32 @N_VScaleVectorArray(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @IDASolveB(ptr noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 1603, ptr noundef nonnull @__func__.IDASolveB, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %.critedge165

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !47
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -101, i32 noundef 1614, ptr noundef nonnull @__func__.IDASolveB, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %.critedge165

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -103, i32 noundef 1623, ptr noundef nonnull @__func__.IDASolveB, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #8
  br label %.critedge165

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %.fr294 = freeze ptr %i.l                       ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !43
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -102, i32 noundef 1633, ptr noundef nonnull @__func__.IDASolveB, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #8
  br label %.critedge165

bb.i:                                             ; preds = %bb.g
  %3 = load <2 x double>, ptr %i.g, align 8, !tbaa !66 ; 3 uses
  %4 = extractelement <2 x double> %3, i64 0      ; 4 uses
  %5 = extractelement <2 x double> %3, i64 1      ; 3 uses
  %i.o = fcmp ogt double %5, %4
  %i.p = select i1 %i.o, i32 1, i32 -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !45
  %.not148 = icmp eq i32 %i.r, 0
  br i1 %.not148, label %bb.v, label %.preheader182

.preheader182:                                    ; preds = %bb.i
  %.not149192 = icmp eq ptr %.fr294, null
  br i1 %.not149192, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader182
  %i.s = sitofp i32 %i.p to double                ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.r
  %.0132193 = phi ptr [ %.fr294, %.lr.ph ], [ %i.ao, %bb.r ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0132193, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !91
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1264
  %i.x = load double, ptr %i.w, align 8, !tbaa !95 ; 3 uses
  %i.y = fsub double %i.x, %4
  %i.z = fmul double %i.y, %i.s
  %i.aa = fcmp olt double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = fsub double %5, %i.x
  %i.ac = fmul double %i.ab, %i.s
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = load i32, ptr %.0132193, align 8, !tbaa !112
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -104, i32 noundef 1657, ptr noundef nonnull @__func__.IDASolveB, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %i.ae) #8
  br label %.critedge165

bb.m:                                             ; preds = %bb.k
  %i.af = fsub double %i.x, %1
  %i.ag = fmul double %i.af, %i.s
  %i.ah = fcmp ugt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load i32, ptr %.0132193, align 8, !tbaa !112
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1665, ptr noundef nonnull @__func__.IDASolveB, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, i32 noundef %i.ai) #8
  br label %.critedge165

bb.o:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %.0132193, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !115
  %.not160 = icmp eq i32 %i.ak, 0
  br i1 %.not160, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %.0132193, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !119
  %.not161 = icmp eq i32 %i.am, 0
  br i1 %.not161, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 1, ptr %i.t, align 4, !tbaa !38
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %.0132193, i64 128
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !89 ; 2 uses
  %.not149 = icmp eq ptr %i.ao, null
  br i1 %.not149, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.r, %.preheader182
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !38
  %.not150 = icmp eq i32 %i.aq, 0
  br i1 %.not150, label %bb.u, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !37
  %.not151 = icmp eq i32 %i.as, 0
  br i1 %.not151, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1682, ptr noundef nonnull @__func__.IDASolveB, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #8
  br label %.critedge165

bb.u:                                             ; preds = %bb.s, %._crit_edge
  store i32 0, ptr %i.q, align 8, !tbaa !45
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.i
  %i.at = add i32 %2, -3
  %or.cond = icmp ult i32 %i.at, -2
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1694, ptr noundef nonnull @__func__.IDASolveB, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #8
  br label %.critedge165

bb.x:                                             ; preds = %bb.v
  %i.au = sitofp i32 %i.p to double               ; 10 uses
  %i.av = fsub double %1, %4                      ; 2 uses
  %i.aw = fmul double %i.av, %i.au
  %i.ax = fcmp olt double %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = fsub double %5, %1
  %i.az = fmul double %i.ay, %i.au
  %i.ba = fcmp olt double %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !64
  %i.bd = fmul double %i.bc, 1.000000e+02
  %6 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %3)
  %7 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %6)
  %i.be = fmul double %7, %i.bd
  %i.bf = tail call double @llvm.fabs.f64(double %i.av)
  %i.bg = fcmp olt double %i.bf, %i.be
  br i1 %i.bg, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1713, ptr noundef nonnull @__func__.IDASolveB, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #8
  br label %.critedge165

bb.ab:                                            ; preds = %bb.z, %bb.y
  %.0139 = phi double [ %1, %bb.y ], [ %4, %bb.z ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !79 ; 3 uses
  %.not152194 = icmp eq ptr %.fr294, null
  br i1 %.not152194, label %.critedge.us, label %.split

.critedge.us:                                     ; preds = %bb.ab, %.critedge.us
  %.0136.us = phi ptr [ %i.bk, %.critedge.us ], [ %i.bi, %bb.ab ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0136.us, i64 592
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !81 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.loopexit.thread, label %.critedge.us

.loopexit.thread:                                 ; preds = %.critedge.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.bn = icmp eq i32 %2, 2
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !99
  %.not154.us.us = icmp eq ptr %.0136.us, %i.bo   ; 2 uses
  br i1 %i.bn, label %.split233.us.split.us, label %.split233.us.split.split.us

.split:                                           ; preds = %bb.ab
  %i.bp = icmp eq i32 %2, 1
  br i1 %i.bp, label %.lr.ph197.us, label %.lr.ph197

.lr.ph197.us:                                     ; preds = %.split, %..critedge_crit_edge.split.us214
  %.0136.us208 = phi ptr [ %i.co, %..critedge_crit_edge.split.us214 ], [ %i.bi, %.split ] ; 5 uses
  %i.bq = load double, ptr %.0136.us208, align 8, !tbaa !96 ; 4 uses
  %i.br = fsub double %.0139, %i.bq
  %i.bs = fmul double %i.br, %i.au
  %.fr = freeze double %i.bs
  %i.bt = fcmp ult double %.fr, 0.000000e+00
  br i1 %i.bt, label %.lr.ph197.split.split.us.us, label %.lr.ph197.split.split.us210

.lr.ph197.split.split.us210:                      ; preds = %.lr.ph197.us, %bb.ac
  %.1133195.us211 = phi ptr [ %i.cd, %bb.ac ], [ %.fr294, %.lr.ph197.us ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1133195.us211, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !91
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1264
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !95 ; 2 uses
  %i.by = fsub double %i.bx, %i.bq
  %i.bz = fmul double %i.by, %i.au
  %i.ca = fcmp ogt double %i.bz, 0.000000e+00
  %i.cb = fcmp oeq double %i.bx, %i.bq
  %or.cond292 = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond292, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph197.split.split.us210
  %i.cc = getelementptr inbounds nuw i8, ptr %.1133195.us211, i64 128
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !89 ; 2 uses
  %.not152.us212 = icmp eq ptr %i.cd, null
  br i1 %.not152.us212, label %..critedge_crit_edge.split.us214, label %.lr.ph197.split.split.us210

.lr.ph197.split.split.us.us:                      ; preds = %.lr.ph197.us, %bb.ad
  %.1133195.us198.us = phi ptr [ %i.cm, %bb.ad ], [ %.fr294, %.lr.ph197.us ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1133195.us198.us, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !91
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1264
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !95
  %i.ci = fsub double %i.ch, %i.bq
  %i.cj = fmul double %i.ci, %i.au
  %i.ck = fcmp ogt double %i.cj, 0.000000e+00
  br i1 %i.ck, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph197.split.split.us.us
  %i.cl = getelementptr inbounds nuw i8, ptr %.1133195.us198.us, i64 128
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !89 ; 2 uses
  %.not152.us199.us = icmp eq ptr %i.cm, null
  br i1 %.not152.us199.us, label %..critedge_crit_edge.split.us214, label %.lr.ph197.split.split.us.us

..critedge_crit_edge.split.us214:                 ; preds = %bb.ac, %bb.ad
  %i.cn = getelementptr inbounds nuw i8, ptr %.0136.us208, i64 592
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !81 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.loopexit, label %.lr.ph197.us

.lr.ph197:                                        ; preds = %.split, %..critedge_crit_edge.split.us
  %.0136 = phi ptr [ %i.db, %..critedge_crit_edge.split.us ], [ %i.bi, %.split ] ; 4 uses
  %i.cq = load double, ptr %.0136, align 8, !tbaa !96
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph197
  %.1133195.us = phi ptr [ %.fr294, %.lr.ph197 ], [ %i.cz, %bb.af ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.1133195.us, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !91
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1264
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !95
  %i.cv = fsub double %i.cu, %i.cq
  %i.cw = fmul double %i.cv, %i.au
  %i.cx = fcmp ogt double %i.cw, 0.000000e+00
  br i1 %i.cx, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %.1133195.us, i64 128
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !89 ; 2 uses
  %.not152.us = icmp eq ptr %i.cz, null
  br i1 %.not152.us, label %..critedge_crit_edge.split.us, label %bb.ae

..critedge_crit_edge.split.us:                    ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %.0136, i64 592
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !81 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %.loopexit, label %.lr.ph197

.loopexit:                                        ; preds = %..critedge_crit_edge.split.us, %bb.ae, %..critedge_crit_edge.split.us214, %.lr.ph197.split.split.us210, %.lr.ph197.split.split.us.us
  %.0136189 = phi ptr [ %.0136.us208, %..critedge_crit_edge.split.us214 ], [ %.0136, %bb.ae ], [ %.0136.us208, %.lr.ph197.split.split.us210 ], [ %.0136.us208, %.lr.ph197.split.split.us.us ], [ %.0136, %..critedge_crit_edge.split.us ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.df = icmp eq i32 %2, 2
  br i1 %i.df, label %.split233.split.us, label %.split233.split.split

.split233.us.split.us:                            ; preds = %.loopexit.thread
  br i1 %.not154.us.us, label %.critedge165, label %bb.ag

bb.ag:                                            ; preds = %.split233.us.split.us
  %i.dg = tail call fastcc i32 @IDAAdataStore(ptr noundef %0, ptr noundef %.0136.us)
  br label %.critedge165

.split233.us.split.split.us:                      ; preds = %.loopexit.thread
  br i1 %.not154.us.us, label %.critedge165, label %bb.ah

bb.ah:                                            ; preds = %.split233.us.split.split.us
  %i.dh = tail call fastcc i32 @IDAAdataStore(ptr noundef %0, ptr noundef %.0136.us)
  br label %.critedge165

.split233.split.us:                               ; preds = %.loopexit
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !99
  %.not154.us240 = icmp eq ptr %.0136189, %i.di
  br i1 %.not154.us240, label %.lr.ph225.us.preheader, label %bb.ai

bb.ai:                                            ; preds = %.split233.split.us
  %i.dj = tail call fastcc i32 @IDAAdataStore(ptr noundef %0, ptr noundef nonnull %.0136189) ; 2 uses
  %.not155.us241 = icmp eq i32 %i.dj, 0
  br i1 %.not155.us241, label %.lr.ph225.us.preheader, label %.critedge165

.lr.ph225.us.preheader:                           ; preds = %bb.ai, %.split233.split.us
  br label %.lr.ph225.us

.lr.ph225.us:                                     ; preds = %.lr.ph225.us.preheader, %bb.al
  %.2134223.us = phi ptr [ %i.ef, %bb.al ], [ %.fr294, %.lr.ph225.us.preheader ] ; 8 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.2134223.us, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !91 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1264
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !95 ; 3 uses
  %i.do = load double, ptr %.0136189, align 8, !tbaa !96 ; 3 uses
  %i.dp = fcmp oeq double %i.dn, %i.do
  %i.dq = fsub double %i.dn, %i.do
  %i.dr = fmul double %i.dq, %i.au
  %i.ds = fcmp olt double %i.dr, 0.000000e+00
  %narrow.not.us = or i1 %i.ds, %i.dp
  br i1 %narrow.not.us, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph225.us
  store ptr %.2134223.us, ptr %i.de, align 8, !tbaa !41
  %i.dt = call i32 @IDASetStopTime(ptr noundef nonnull %i.dl, double noundef %i.do) #8 ; 0 uses
  %i.du = load ptr, ptr %i.dk, align 8, !tbaa !91
  %i.dv = getelementptr inbounds nuw i8, ptr %.2134223.us, i64 112
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !92
  %i.dx = getelementptr inbounds nuw i8, ptr %.2134223.us, i64 120
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !93
  %i.dz = call i32 @IDASolve(ptr noundef %i.du, double noundef %.0139, ptr noundef nonnull %i.a, ptr noundef %i.dw, ptr noundef %i.dy, i32 noundef 2) #8 ; 3 uses
  %i.ea = load double, ptr %i.a, align 8, !tbaa !66
  %i.eb = getelementptr inbounds nuw i8, ptr %.2134223.us, i64 104
  store double %i.ea, ptr %i.eb, align 8, !tbaa !122
  %i.ec = icmp slt i32 %i.dz, 0
  br i1 %i.ec, label %.thread166, label %bb.al

bb.ak:                                            ; preds = %.lr.ph225.us
  %i.ed = getelementptr inbounds nuw i8, ptr %.2134223.us, i64 104
  store double %i.dn, ptr %i.ed, align 8, !tbaa !122
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.3.us = phi i32 [ %i.dz, %bb.aj ], [ 0, %bb.ak ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.2134223.us, i64 128
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !89 ; 2 uses
  %.not156.us = icmp eq ptr %i.ef, null
  br i1 %.not156.us, label %.critedge165, label %.lr.ph225.us

.split233.split.split:                            ; preds = %.loopexit, %bb.ar
  %.1137 = phi ptr [ %i.fq, %bb.ar ], [ %.0136189, %.loopexit ] ; 4 uses
  %i.eg = load ptr, ptr %i.dd, align 8, !tbaa !99
  %.not154 = icmp eq ptr %.1137, %i.eg
  br i1 %.not154, label %.lr.ph225.preheader, label %bb.am

bb.am:                                            ; preds = %.split233.split.split
  %i.eh = call fastcc i32 @IDAAdataStore(ptr noundef %0, ptr noundef %.1137) ; 2 uses
  %.not155 = icmp eq i32 %i.eh, 0
  br i1 %.not155, label %.lr.ph225.preheader, label %.critedge165

.lr.ph225.preheader:                              ; preds = %bb.am, %.split233.split.split
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %bb.ap
  %.2134223 = phi ptr [ %i.fg, %bb.ap ], [ %.fr294, %.lr.ph225.preheader ] ; 8 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.2134223, i64 16 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !91 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1264
  %i.el = load double, ptr %i.ek, align 8, !tbaa !95 ; 3 uses
  %i.em = load double, ptr %.1137, align 8, !tbaa !96 ; 4 uses
  %i.en = fcmp oeq double %i.el, %i.em
  %i.eo = fsub double %.0139, %i.em
end_hunk_0
begin_hunk_1_@IDAAckpntCopyVectors:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !86
  %.not89 = icmp eq i32 %i.dq, 0
  br i1 %.not89, label %bb.f, label %.preheader90

.preheader90:                                     ; preds = %.thread
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !82  ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !51 ; 4 uses
  br i1 %i.ds, label %.preheader.lr.ph, label %._crit_edge113.split

.preheader.lr.ph:                                 ; preds = %.preheader90
  %i.dv = icmp sgt i32 %i.du, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 184
  br i1 %i.dv, label %.preheader.lr.ph.split, label %._crit_edge113.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !181 ; 5 uses
  %i.eb = ptrtoaddr ptr %i.ea to i64              ; 3 uses
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !182 ; 5 uses
  %i.ed = ptrtoaddr ptr %i.ec to i64              ; 2 uses
  %i.ee = zext nneg i32 %i.du to i64              ; 8 uses
  %wide.trip.count144 = zext nneg i32 %i.dr to i64
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = mul nsw i64 %i.ee, -8
  %min.iters.check201 = icmp ult i32 %i.du, 14
  %i.eh = sub i64 %i.eb, %i.ed
  %diff.check191 = icmp ugt i64 %i.eh, -32
  %n.vec203 = and i64 %i.ee, 2147483644           ; 3 uses
  %cmp.n212 = icmp eq i64 %n.vec203, %i.ee
  %xtraiter214 = and i64 %i.ee, 1
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  %i.ei = add nsw i64 %i.ee, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge111
  %indvars.iv141 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next142, %._crit_edge111 ] ; 6 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv141
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !70 ; 5 uses
  %i.el = mul nuw nsw i64 %indvars.iv141, %i.ee   ; 4 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv141
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !70 ; 5 uses
  br i1 %min.iters.check201, label %scalar.ph200.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %.preheader
  %i.eo = ptrtoaddr ptr %i.en to i64              ; 2 uses
  %i.ep = ptrtoaddr ptr %i.ek to i64              ; 2 uses
  %i.eq = mul i64 %i.ef, %indvars.iv141           ; 2 uses
  %i.er = add i64 %i.eq, %i.ed                    ; 2 uses
  %i.es = mul i64 %i.eg, %indvars.iv141
  %i.et = sub i64 %i.es, %i.eb
  %i.eu = add i64 %i.eq, %i.eb
  %i.ev = sub i64 %i.ep, %i.eu
  %diff.check192 = icmp ugt i64 %i.ev, -32
  %conflict.rdx193 = or i1 %diff.check191, %diff.check192
  %i.ew = add i64 %i.et, %i.eo
  %i.ex = add i64 %i.ew, -1
  %diff.check194 = icmp ult i64 %i.ex, 31
  %conflict.rdx195 = or i1 %conflict.rdx193, %diff.check194
  %i.ey = sub i64 %i.ep, %i.er
  %diff.check196 = icmp ugt i64 %i.ey, -32
  %conflict.rdx197 = or i1 %conflict.rdx195, %diff.check196
  %i.ez = sub i64 %i.eo, %i.er
  %diff.check198 = icmp ugt i64 %i.ez, -32
  %conflict.rdx199 = or i1 %conflict.rdx197, %diff.check198
  br i1 %conflict.rdx199, label %scalar.ph200.preheader, label %vector.body204

vector.body204:                                   ; preds = %vector.memcheck190, %vector.body204
  %index205 = phi i64 [ %index.next210, %vector.body204 ], [ 0, %vector.memcheck190 ] ; 4 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %index205 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load206 = load <2 x ptr>, ptr %i.fa, align 8, !tbaa !69
  %wide.load207 = load <2 x ptr>, ptr %i.fb, align 8, !tbaa !69
  %i.fc = add nuw nsw i64 %i.el, %index205        ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <2 x ptr> %wide.load206, ptr %i.fd, align 8, !tbaa !69
  store <2 x ptr> %wide.load207, ptr %i.fe, align 8, !tbaa !69
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %index205 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load208 = load <2 x ptr>, ptr %i.ff, align 8, !tbaa !69
  %wide.load209 = load <2 x ptr>, ptr %i.fg, align 8, !tbaa !69
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.fc ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <2 x ptr> %wide.load208, ptr %i.fh, align 8, !tbaa !69
  store <2 x ptr> %wide.load209, ptr %i.fi, align 8, !tbaa !69
  %index.next210 = add nuw i64 %index205, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next210, %n.vec203
  br i1 %i.fj, label %middle.block211, label %vector.body204, !llvm.loop !179

middle.block211:                                  ; preds = %vector.body204
  br i1 %cmp.n212, label %._crit_edge111, label %scalar.ph200.preheader

scalar.ph200.preheader:                           ; preds = %vector.memcheck190, %.preheader, %middle.block211
  %indvars.iv136.ph = phi i64 [ 0, %vector.memcheck190 ], [ 0, %.preheader ], [ %n.vec203, %middle.block211 ] ; 6 uses
  br i1 %lcmp.mod215.not, label %scalar.ph200.prol.loopexit, label %scalar.ph200.prol

scalar.ph200.prol:                                ; preds = %scalar.ph200.preheader
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv136.ph
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !69
  %i.fm = add nuw nsw i64 %i.el, %indvars.iv136.ph ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fm
  store ptr %i.fl, ptr %i.fn, align 8, !tbaa !69
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv136.ph
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !69
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.fm
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !69
  %indvars.iv.next137.prol = or disjoint i64 %indvars.iv136.ph, 1
  br label %scalar.ph200.prol.loopexit

scalar.ph200.prol.loopexit:                       ; preds = %scalar.ph200.prol, %scalar.ph200.preheader
  %indvars.iv136.unr = phi i64 [ %indvars.iv136.ph, %scalar.ph200.preheader ], [ %indvars.iv.next137.prol, %scalar.ph200.prol ]
  %i.fr = icmp eq i64 %indvars.iv136.ph, %i.ei
  br i1 %i.fr, label %._crit_edge111, label %scalar.ph200

scalar.ph200:                                     ; preds = %scalar.ph200.prol.loopexit, %scalar.ph200
  %indvars.iv136 = phi i64 [ %indvars.iv.next137.1, %scalar.ph200 ], [ %indvars.iv136.unr, %scalar.ph200.prol.loopexit ] ; 5 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !69
  %i.fu = add nuw nsw i64 %i.el, %indvars.iv136   ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fu
  store ptr %i.ft, ptr %i.fv, align 8, !tbaa !69
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv136
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !69
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.fu
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !69
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next137
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !69
  %i.gb = add nuw nsw i64 %i.el, %indvars.iv.next137 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.gb
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !69
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next137
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !69
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.gb
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !69
  %indvars.iv.next137.1 = add nuw nsw i64 %indvars.iv136, 2 ; 2 uses
  %exitcond140.not.1 = icmp eq i64 %indvars.iv.next137.1, %i.ee
  br i1 %exitcond140.not.1, label %._crit_edge111, label %scalar.ph200, !llvm.loop !180

._crit_edge111:                                   ; preds = %scalar.ph200.prol.loopexit, %scalar.ph200, %middle.block211
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %._crit_edge113.split, label %.preheader

._crit_edge113.split:                             ; preds = %._crit_edge111, %.preheader90, %.preheader.lr.ph
  %i.gg = mul nsw i32 %i.du, %i.dr
  %i.gh = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !181
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !182
  %i.gm = tail call i32 @N_VScaleVectorArray(i32 noundef %i.gg, ptr noundef %i.gh, ptr noundef %i.gj, ptr noundef %i.gl) #8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge113.split, %.thread
  ret void
}

declare ptr @N_VCloneVectorArray(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IDASetInitStep(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @IDASensReInit(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAQuadSensReInit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @N_VLinearCombinationVectorArray(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS11SUNContext_", !8, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!"p1 _ZTS17_generic_N_Vector", !8, i64 0}
!12 = !{!"p1 double", !8, i64 0}
!13 = !{!"p1 int", !8, i64 0}
!14 = !{!"any p2 pointer", !8, i64 0}
!15 = !{!"p2 _ZTS17_generic_N_Vector", !14, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !8, i64 0}
!18 = !{!"p1 _ZTS12IDAadjMemRec", !8, i64 0}
!19 = !{!"IDAMemRec", !9, i64 0, !8, i64 8, !10, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !10, i64 48, !10, i64 56, !11, i64 64, !5, i64 72, !5, i64 76, !8, i64 80, !8, i64 88, !5, i64 96, !5, i64 100, !8, i64 104, !8, i64 112, !5, i64 120, !5, i64 124, !10, i64 128, !10, i64 136, !11, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !8, i64 168, !8, i64 176, !5, i64 184, !12, i64 192, !12, i64 200, !13, i64 208, !5, i64 216, !10, i64 224, !5, i64 232, !5, i64 236, !10, i64 240, !12, i64 248, !15, i64 256, !13, i64 264, !5, i64 272, !8, i64 280, !8, i64 288, !5, i64 296, !5, i64 300, !5, i64 304, !10, i64 312, !12, i64 320, !15, i64 328, !13, i64 336, !4, i64 344, !4, i64 392, !4, i64 440, !4, i64 488, !4, i64 536, !4, i64 584, !11, i64 632, !11, i64 640, !11, i64 648, !11, i64 656, !11, i64 664, !11, i64 672, !11, i64 680, !11, i64 688, !11, i64 696, !11, i64 704, !11, i64 712, !11, i64 720, !11, i64 728, !11, i64 736, !11, i64 744, !11, i64 752, !4, i64 760, !11, i64 808, !11, i64 816, !11, i64 824, !11, i64 832, !4, i64 840, !15, i64 888, !15, i64 896, !15, i64 904, !15, i64 912, !15, i64 920, !15, i64 928, !15, i64 936, !11, i64 944, !11, i64 952, !11, i64 960, !15, i64 968, !15, i64 976, !15, i64 984, !15, i64 992, !15, i64 1000, !15, i64 1008, !4, i64 1016, !15, i64 1064, !15, i64 1072, !15, i64 1080, !15, i64 1088, !11, i64 1096, !10, i64 1104, !11, i64 1112, !11, i64 1120, !5, i64 1128, !5, i64 1132, !5, i64 1136, !5, i64 1140, !5, i64 1144, !5, i64 1148, !5, i64 1152, !5, i64 1156, !10, i64 1160, !10, i64 1168, !10, i64 1176, !5, i64 1184, !10, i64 1192, !5, i64 1200, !5, i64 1204, !5, i64 1208, !5, i64 1212, !5, i64 1216, !10, i64 1224, !10, i64 1232, !10, i64 1240, !10, i64 1248, !10, i64 1256, !10, i64 1264, !10, i64 1272, !10, i64 1280, !10, i64 1288, !10, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !10, i64 1344, !10, i64 1352, !10, i64 1360, !10, i64 1368, !5, i64 1376, !5, i64 1380, !5, i64 1384, !5, i64 1388, !16, i64 1392, !10, i64 1400, !10, i64 1408, !10, i64 1416, !10, i64 1424, !10, i64 1432, !10, i64 1440, !10, i64 1448, !10, i64 1456, !10, i64 1464, !16, i64 1472, !16, i64 1480, !16, i64 1488, !16, i64 1496, !16, i64 1504, !16, i64 1512, !16, i64 1520, !16, i64 1528, !16, i64 1536, !16, i64 1544, !16, i64 1552, !16, i64 1560, !16, i64 1568, !16, i64 1576, !16, i64 1584, !16, i64 1592, !16, i64 1600, !16, i64 1608, !16, i64 1616, !16, i64 1624, !16, i64 1632, !16, i64 1640, !16, i64 1648, !16, i64 1656, !16, i64 1664, !16, i64 1672, !10, i64 1680, !5, i64 1688, !5, i64 1692, !5, i64 1696, !5, i64 1700, !5, i64 1704, !5, i64 1708, !5, i64 1712, !5, i64 1716, !5, i64 1720, !5, i64 1724, !5, i64 1728, !5, i64 1732, !17, i64 1736, !5, i64 1744, !17, i64 1752, !5, i64 1760, !17, i64 1768, !5, i64 1776, !11, i64 1784, !11, i64 1792, !11, i64 1800, !11, i64 1808, !11, i64 1816, !11, i64 1824, !5, i64 1832, !5, i64 1836, !8, i64 1840, !8, i64 1848, !8, i64 1856, !8, i64 1864, !8, i64 1872, !8, i64 1880, !8, i64 1888, !10, i64 1896, !5, i64 1904, !5, i64 1908, !8, i64 1912, !5, i64 1920, !13, i64 1928, !13, i64 1936, !10, i64 1944, !10, i64 1952, !10, i64 1960, !12, i64 1968, !12, i64 1976, !12, i64 1984, !10, i64 1992, !5, i64 2000, !16, i64 2008, !13, i64 2016, !5, i64 2024, !11, i64 2032, !16, i64 2040, !16, i64 2048, !5, i64 2056, !12, i64 2064, !4, i64 2072, !15, i64 2112, !15, i64 2120, !5, i64 2128, !18, i64 2136, !5, i64 2144}
!20 = !{!19, !18, i64 2136}
!21 = !{!"p1 _ZTS10IDABMemRec", !8, i64 0}
!22 = !{!"p1 _ZTS14IDAckpntMemRec", !8, i64 0}
!23 = !{!"p2 _ZTS14IDAdtpntMemRec", !14, i64 0}
!24 = !{!"IDAadjMemRec", !10, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !10, i64 24, !5, i64 32, !10, i64 40, !21, i64 48, !5, i64 56, !21, i64 64, !5, i64 72, !22, i64 80, !22, i64 88, !5, i64 96, !16, i64 104, !16, i64 112, !23, i64 120, !16, i64 128, !5, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !4, i64 200, !4, i64 248, !4, i64 296, !11, i64 344, !11, i64 352, !15, i64 360, !15, i64 368}
!25 = !{!24, !16, i64 104}
!26 = !{!24, !16, i64 112}
!27 = !{!24, !23, i64 120}
!28 = !{!"p1 _ZTS14IDAdtpntMemRec", !8, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"IDAdtpntMemRec", !10, i64 0, !8, i64 8}
!31 = !{!30, !8, i64 8}
!32 = !{!24, !8, i64 160}
!33 = !{!24, !8, i64 168}
!34 = !{!24, !8, i64 152}
!35 = !{!24, !8, i64 144}
!36 = !{!24, !5, i64 176}
!37 = !{!24, !5, i64 184}
!38 = !{!24, !5, i64 188}
!39 = !{!24, !5, i64 192}
!40 = !{!24, !21, i64 48}
!41 = !{!24, !21, i64 64}
!42 = !{!24, !5, i64 56}
!43 = !{!24, !5, i64 16}
!44 = !{!24, !5, i64 20}
!45 = !{!24, !5, i64 72}
!46 = !{!24, !5, i64 32}
!47 = !{!19, !5, i64 2144}
!48 = !{!19, !11, i64 704}
!49 = !{!24, !11, i64 344}
!50 = !{!24, !11, i64 352}
!51 = !{!19, !5, i64 160}
!52 = !{!24, !15, i64 360}
!53 = !{!24, !15, i64 368}
!54 = !{!"IDAhermiteDataMemRec", !11, i64 0, !11, i64 8, !15, i64 16, !15, i64 24}
!55 = !{!54, !11, i64 0}
!56 = !{!54, !11, i64 8}
!57 = !{!54, !15, i64 16}
!58 = !{!54, !15, i64 24}
!59 = !{!24, !10, i64 8}
!60 = !{!24, !10, i64 0}
!61 = !{!24, !5, i64 180}
!62 = !{!24, !16, i64 128}
!63 = !{!30, !10, i64 0}
!64 = !{!19, !10, i64 16}
!65 = !{!19, !12, i64 2064}
!66 = !{!10, !10, i64 0}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!11, !11, i64 0}
!70 = !{!15, !15, i64 0}
!71 = !{!19, !16, i64 1472}
!72 = !{!19, !5, i64 1204}
!73 = !{!"IDApolynomialDataMemRec", !11, i64 0, !15, i64 8, !11, i64 16, !15, i64 24, !5, i64 32}
!74 = !{!73, !11, i64 0}
!75 = !{!73, !11, i64 16}
!76 = !{!73, !15, i64 8}
!77 = !{!73, !15, i64 24}
!78 = !{!73, !5, i64 32}
!79 = !{!24, !22, i64 80}
!80 = !{!"IDAckpntMemRec", !10, i64 0, !10, i64 8, !4, i64 16, !5, i64 64, !4, i64 72, !5, i64 120, !5, i64 124, !4, i64 128, !5, i64 176, !4, i64 184, !16, i64 232, !10, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !4, i64 344, !4, i64 392, !4, i64 440, !4, i64 488, !4, i64 536, !5, i64 584, !22, i64 592}
!81 = !{!80, !22, i64 592}
!82 = !{!80, !5, i64 584}
!83 = !{!80, !5, i64 64}
!84 = !{!80, !5, i64 120}
!85 = !{!80, !5, i64 124}
!86 = !{!80, !5, i64 176}
!87 = !{!"p1 _ZTS9IDAMemRec", !8, i64 0}
!88 = !{!"IDABMemRec", !5, i64 0, !10, i64 8, !87, i64 16, !5, i64 24, !5, i64 28, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !10, i64 104, !11, i64 112, !11, i64 120, !21, i64 128}
!89 = !{!88, !21, i64 128}
!90 = !{!21, !21, i64 0}
!91 = !{!88, !87, i64 16}
!92 = !{!88, !11, i64 112}
!93 = !{!88, !11, i64 120}
!94 = !{!24, !10, i64 24}
!95 = !{!19, !10, i64 1264}
!96 = !{!80, !10, i64 0}
!97 = !{!80, !16, i64 232}
!98 = !{!5, !5, i64 0}
!99 = !{!24, !22, i64 88}
!100 = !{!80, !10, i64 8}
!101 = !{!19, !10, i64 1272}
!102 = !{!80, !10, i64 240}
!103 = !{!19, !5, i64 1216}
!104 = !{!80, !5, i64 248}
!105 = !{!19, !10, i64 1256}
!106 = !{!80, !10, i64 288}
!107 = !{!19, !10, i64 1312}
!108 = !{!80, !10, i64 328}
!109 = !{!19, !10, i64 1360}
!110 = !{!80, !10, i64 336}
!111 = !{!19, !5, i64 1904}
!112 = !{!88, !5, i64 0}
!113 = !{}
!114 = !{!88, !8, i64 32}
!115 = !{!88, !5, i64 24}
!116 = !{!88, !10, i64 8}
!117 = !{!88, !8, i64 40}
!118 = !{!88, !8, i64 64}
!119 = !{!88, !5, i64 28}
!120 = !{!88, !8, i64 48}
!121 = !{!88, !8, i64 56}
!122 = !{!88, !10, i64 104}
!123 = !{!24, !5, i64 136}
!124 = !{!19, !5, i64 2128}
!125 = distinct !{!125, !67, !68}
!126 = distinct !{!126, !68, !67}
!127 = distinct !{!127, !67, !68}
!128 = distinct !{!128, !68, !67}
!129 = distinct !{!129, !67, !68}
!130 = distinct !{!130, !68, !67}
!131 = distinct !{!131, !132}
!132 = !{!"llvm.loop.peeled.count", i32 1}
!133 = distinct !{!133, !67, !68}
!134 = distinct !{!134, !68, !67}
!135 = distinct !{!135, !67, !68}
!136 = distinct !{!136, !68, !67}
!137 = distinct !{!137, !67, !68}
!138 = distinct !{!138, !68, !67}
!139 = distinct !{!139, !67, !68}
!140 = distinct !{!140, !68, !67}
!141 = distinct !{!141, !67, !68}
!142 = distinct !{!142, !68, !67}
!143 = !{!22, !22, i64 0}
!144 = distinct !{null}
!145 = distinct !{null}
!146 = !{!8, !8, i64 0}
!147 = !{!88, !8, i64 80}
!148 = !{!88, !8, i64 96}
!149 = !{!19, !5, i64 1184}
!150 = !{!19, !10, i64 1192}
!151 = !{!80, !5, i64 252}
!152 = !{!80, !10, i64 272}
!153 = !{!19, !5, i64 100}
!154 = !{!19, !5, i64 120}
!155 = !{!19, !5, i64 156}
!156 = !{!19, !5, i64 272}
!157 = !{!19, !5, i64 300}
!158 = !{!19, !10, i64 1240}
!159 = !{!24, !10, i64 40}
!160 = !{!24, !5, i64 96}
!161 = !{!19, !16, i64 1392}
!162 = !{!19, !5, i64 1200}
!163 = !{!19, !9, i64 0}
!164 = distinct !{!164, !67, !68}
!165 = distinct !{!165, !68, !67}
!166 = distinct !{!166, !170}
!167 = distinct !{!167, !170}
!168 = !{!19, !10, i64 1232}
!169 = !{!19, !5, i64 164}
!170 = !{!"llvm.loop.unswitch.partial.disable"}
!171 = !{!16, !16, i64 0}
!172 = !{!19, !11, i64 832}
!173 = distinct !{!173, !67, !68}
!174 = distinct !{!174, !68, !67}
!175 = distinct !{!175, !67, !68}
!176 = distinct !{!176, !68, !67}
!177 = distinct !{!177, !67, !68}
!178 = distinct !{!178, !67}
!179 = distinct !{!179, !67, !68}
!180 = distinct !{!180, !67}
!181 = !{!19, !15, i64 2112}
!182 = !{!19, !15, i64 2120}
end_hunk_1
