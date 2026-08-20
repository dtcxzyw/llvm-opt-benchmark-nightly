loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@CVodeResizeHistory:bb.a
.loopexit:                                        ; preds = %.lr.ph275, %._crit_edge272, %._crit_edge278, %bb.bg, %bb.ba
  %.7 = phi i32 [ %.0196, %bb.ba ], [ -20, %._crit_edge278 ], [ %.1197, %bb.bg ], [ 0, %._crit_edge272 ], [ 0, %.lr.ph275 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread248

.thread248:                                       ; preds = %bb.aq, %bb.as, %bb.al, %bb.q, %bb.m, %bb.d, %bb.f, %bb.h, %.loopexit, %bb.ao, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.o, %bb.k, %bb.b
  %.10 = phi i32 [ -21, %bb.b ], [ -22, %bb.d ], [ -22, %bb.h ], [ -22, %bb.f ], [ -22, %bb.k ], [ -20, %bb.ao ], [ %.7, %.loopexit ], [ -22, %bb.q ], [ -20, %bb.al ], [ -20, %bb.ad ], [ -20, %bb.ab ], [ -20, %bb.z ], [ -20, %bb.x ], [ -20, %bb.v ], [ -20, %bb.t ], [ -20, %bb.r ], [ -22, %bb.m ], [ -22, %bb.o ], [ -20, %bb.as ], [ -20, %bb.aq ]
  ret i32 %.10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cvProcessError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

declare i32 @SUNNonlinSolFree(ptr noundef) local_unnamed_addr #2

declare ptr @SUNNonlinSol_Newton(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetNonlinearSolver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -22, 1) i32 @cvBuildNordsieckArrayAdams(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, double noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %.not = icmp ne ptr %1, null
  %i.a = icmp sgt i32 %4, 0
  %or.cond7.not110 = and i1 %.not, %i.a
  br i1 %or.cond7.not110, label %.preheader120.preheader, label %.thread

.preheader120.preheader:                          ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  br label %.preheader120

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %.preheader120

.preheader120:                                    ; preds = %.preheader120.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader120.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %.not111 = icmp eq ptr %i.c, null
  br i1 %.not111, label %.thread, label %bb.c

bb.c:                                             ; preds = %.preheader120
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %.not112 = icmp eq ptr %i.e, null
  br i1 %.not112, label %.thread, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %4, 1
  br i1 %i.f, label %.preheader119, label %.lr.ph138.preheader

.preheader117.preheader:                          ; preds = %.preheader119
  %i.g = zext nneg i32 %4 to i64
  br label %.preheader117

.preheader119:                                    ; preds = %bb.d, %.preheader119
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %.preheader119 ], [ 0, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv142
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv142
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.i, ptr noundef %i.k) #4
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count
  br i1 %exitcond146.not, label %.preheader117.preheader, label %.preheader119

.preheader117:                                    ; preds = %.preheader117.preheader, %bb.e
  %indvars.iv150 = phi i64 [ 1, %.preheader117.preheader ], [ %indvars.iv.next151, %bb.e ] ; 3 uses
  br label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.l = add nsw i32 %4, -1
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.o, ptr noundef %i.q) #4
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 2)
  %i.r = add nuw i32 %smax, 1
  %wide.trip.count158 = zext i32 %i.r to i64
  br label %.lr.ph

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count
  br i1 %exitcond154.not, label %.lr.ph.preheader, label %.preheader117

bb.f:                                             ; preds = %.preheader117, %bb.f
  %indvars.iv147 = phi i64 [ %i.g, %.preheader117 ], [ %indvars.iv.next148, %bb.f ] ; 2 uses
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, -1 ; 5 uses
  %i.s = sub nsw i64 %indvars.iv.next148, %indvars.iv150
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !42
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next148
  %i.w = load double, ptr %i.v, align 8, !tbaa !42
  %i.x = fsub double %i.u, %i.w
  %i.y = fdiv double 1.000000e+00, %i.x           ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %3, i64 %indvars.iv147
  %i.aa = getelementptr i8, ptr %i.z, i64 -16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = fneg double %i.y
  %i.ad = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next148
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.y, ptr noundef %i.ab, double noundef %i.ac, ptr noundef %i.ae, ptr noundef %i.ae) #4
  %.not115.not = icmp sgt i64 %indvars.iv.next148, %indvars.iv150
  br i1 %.not115.not, label %bb.f, label %bb.e

.preheader.us.preheader:                          ; preds = %.lr.ph
  %i.af = add nsw i32 %4, -2
  %i.ag = zext nneg i32 %i.af to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge132.us
  %indvars.iv163 = phi i64 [ %i.ag, %.preheader.us.preheader ], [ %indvars.iv.next164, %._crit_edge132.us ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv163 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv160 = phi i64 [ %i.m, %.preheader.us ], [ %indvars.iv.next161, %bb.g ] ; 3 uses
  %i.ai = load double, ptr %0, align 8, !tbaa !42
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !42
  %i.ak = fsub double %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv160 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.ao = trunc nuw i64 %indvars.iv160 to i32     ; 2 uses
  %i.ap = uitofp nneg i32 %i.ao to double
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !25
  tail call void @N_VLinearSum(double noundef %i.ak, ptr noundef %i.an, double noundef %i.ap, ptr noundef %i.aq, ptr noundef %i.an) #4
  %indvars.iv.next161 = add nsw i64 %indvars.iv160, -1
  %i.ar = icmp sgt i32 %i.ao, 1
  br i1 %i.ar, label %bb.g, label %._crit_edge132.us

._crit_edge132.us:                                ; preds = %bb.g
  %i.as = load double, ptr %0, align 8, !tbaa !42
  %i.at = load double, ptr %i.ah, align 8, !tbaa !42
  %i.au = fsub double %i.as, %i.at
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !25  ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv163
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  tail call void @N_VLinearSum(double noundef %i.au, ptr noundef %i.av, double noundef 1.000000e+00, ptr noundef %i.ax, ptr noundef %i.av) #4
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, -1
  %i.ay = trunc nuw i64 %indvars.iv163 to i32
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader.us, label %.lr.ph138.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv155 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next156, %.lr.ph ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv155
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.bb) #4
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %.preheader.us.preheader, label %.lr.ph

.lr.ph138.preheader:                              ; preds = %._crit_edge132.us, %bb.d
  %i.bc = load ptr, ptr %6, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %1, ptr noundef %i.bc) #4
  %i.bd = load ptr, ptr %2, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bd, ptr noundef %i.bf) #4
  %i.bg = add nuw i32 %4, 1
  %wide.trip.count170 = zext i32 %i.bg to i64
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %.lr.ph138
  %indvars.iv166 = phi i64 [ 1, %.lr.ph138.preheader ], [ %indvars.iv.next167, %.lr.ph138 ] ; 3 uses
  %.097135 = phi double [ 1.000000e+00, %.lr.ph138.preheader ], [ %i.bk, %.lr.ph138 ]
  %i.bh = trunc nuw nsw i64 %indvars.iv166 to i32
  %i.bi = uitofp nneg i32 %i.bh to double
  %i.bj = fdiv double %5, %i.bi
  %i.bk = fmul double %.097135, %i.bj             ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv166
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !25 ; 2 uses
  tail call void @N_VScale(double noundef %i.bk, ptr noundef %i.bm, ptr noundef %i.bm) #4
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count170
  br i1 %exitcond171.not, label %.thread, label %.lr.ph138

.thread:                                          ; preds = %bb.c, %.preheader120, %.lr.ph138, %bb.a
  %.1 = phi i32 [ -22, %bb.a ], [ 0, %.lr.ph138 ], [ -22, %.preheader120 ], [ -22, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -22, 1) i32 @cvBuildNordsieckArrayBDF(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, double noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 9 uses
  %.not = icmp ne ptr %2, null
  %i.b = icmp sgt i32 %4, 0
  %or.cond7.not127 = and i1 %.not, %i.b
  br i1 %or.cond7.not127, label %.preheader145.preheader, label %.thread

.preheader145.preheader:                          ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 5 uses
  br label %.preheader145

bb.b:                                             ; preds = %.preheader145
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.preheader, label %.preheader145

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.c = add nuw i32 %4, 1
  %wide.trip.count181 = zext i32 %i.c to i64
  br label %.lr.ph

.preheader145:                                    ; preds = %.preheader145.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader145.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %.not128 = icmp eq ptr %i.e, null
  br i1 %.not128, label %.thread, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv178 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next179, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv178
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %.not130 = icmp eq ptr %i.g, null
  br i1 %.not130, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.h = icmp sgt i32 %4, 1
  br i1 %i.h, label %.lr.ph154.preheader, label %.lr.ph173.preheader

.lr.ph154.preheader:                              ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.i = load double, ptr %0, align 8, !tbaa !42  ; 2 uses
  store double %i.i, ptr %i.a, align 16, !tbaa !42
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = shl nuw nsw i64 %wide.trip.count, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr nonnull align 8 %0, i64 %i.j, i1 false), !tbaa !42
  %i.k = load ptr, ptr %1, align 8, !tbaa !25
  %i.l = load ptr, ptr %3, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.k, ptr noundef %i.l) #4
  %i.m = add nuw i32 %4, 1
  %wide.trip.count189 = zext i32 %i.m to i64
  br label %.lr.ph154

.preheader141.lr.ph:                              ; preds = %.lr.ph154
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = zext nneg i32 %4 to i64                  ; 2 uses
  br label %.preheader141

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %.lr.ph154
  %indvars.iv186 = phi i64 [ 1, %.lr.ph154.preheader ], [ %indvars.iv.next187, %.lr.ph154 ] ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %1, i64 %indvars.iv186
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv186
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.r, ptr noundef %i.t) #4
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.preheader141.lr.ph, label %.lr.ph154

.preheader141:                                    ; preds = %.preheader141.lr.ph, %.split.us
  %.0117157 = phi i32 [ 1, %.preheader141.lr.ph ], [ %21, %.split.us ] ; 3 uses
  %7 = icmp eq i32 %.0117157, 1
  br i1 %7, label %.preheader141.split, label %.preheader141.split.us.preheader

.preheader141.split.us.preheader:                 ; preds = %.preheader141
  %8 = sext i32 %.0117157 to i64                  ; 2 uses
  br label %.preheader141.split.us

.preheader141.split.us:                           ; preds = %.preheader141.split.us.preheader, %.preheader141.split.us
  %indvars.iv191 = phi i64 [ %i.o, %.preheader141.split.us.preheader ], [ %indvars.iv.next192, %.preheader141.split.us ] ; 5 uses
  %9 = sub nsw i64 %indvars.iv191, %8
  %10 = getelementptr inbounds [8 x i8], ptr %i.a, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv191
  %13 = load double, ptr %12, align 8, !tbaa !42
  %14 = fsub double %11, %13
  %15 = fdiv double 1.000000e+00, %14             ; 2 uses
  %16 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv191 ; 2 uses
  %17 = getelementptr i8, ptr %16, i64 -8
  %18 = load ptr, ptr %17, align 8, !tbaa !25
  %19 = fneg double %15
  %20 = load ptr, ptr %16, align 8, !tbaa !25     ; 2 uses
  tail call void @N_VLinearSum(double noundef %15, ptr noundef %18, double noundef %19, ptr noundef %20, ptr noundef %20) #4
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, -1
  %.not136.us.not = icmp sgt i64 %indvars.iv191, %8
  br i1 %.not136.us.not, label %.preheader141.split.us, label %.split.us

.lr.ph162.preheader:                              ; preds = %.split.us
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %wide.trip.count
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = load ptr, ptr %6, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.v, ptr noundef %i.w) #4
  %i.x = add nuw nsw i32 %4, 1
  %wide.trip.count200 = zext nneg i32 %i.x to i64
  br label %.lr.ph162

.split.us:                                        ; preds = %.preheader141.split.us, %bb.d, %.thread222
  %21 = add i32 %.0117157, 1                      ; 2 uses
  %.not133 = icmp sgt i32 %21, %4
  br i1 %.not133, label %.lr.ph162.preheader, label %.preheader141

.preheader141.split:                              ; preds = %.preheader141, %bb.d
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %bb.d ], [ %i.o, %.preheader141 ] ; 6 uses
  %i.y = icmp eq i64 %indvars.iv194, 1
  br i1 %i.y, label %.thread222, label %bb.d

.thread222:                                       ; preds = %.preheader141.split
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %2, ptr noundef %i.z) #4
  br label %.split.us

bb.d:                                             ; preds = %.preheader141.split
  %22 = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv194
  %23 = getelementptr i8, ptr %22, i64 -8
  %i.aa = load double, ptr %23, align 8, !tbaa !42
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv194
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !42
  %i.ad = fsub double %i.aa, %i.ac
  %i.ae = fdiv double 1.000000e+00, %i.ad         ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %3, i64 %indvars.iv194 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = fneg double %i.ae
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ae, ptr noundef %i.ah, double noundef %i.ai, ptr noundef %i.aj, ptr noundef %i.aj) #4
  %indvars.iv.next195 = add nsw i64 %indvars.iv194, -1
  %.not136.not = icmp sgt i64 %indvars.iv194, 1
  br i1 %.not136.not, label %.preheader141.split, label %.split.us

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %.lr.ph162
  %indvars.iv197 = phi i64 [ 1, %.lr.ph162.preheader ], [ %indvars.iv.next198, %.lr.ph162 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv197
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.al) #4
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %.lr.ph164, label %.lr.ph162

.lr.ph164:                                        ; preds = %.lr.ph162, %._crit_edge165
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %._crit_edge165 ], [ %wide.trip.count, %.lr.ph162 ] ; 2 uses
  %indvars.iv.next206 = add nsw i64 %indvars.iv205, -1 ; 2 uses
  %i.am = and i64 %indvars.iv.next206, 4294967295 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !42
  %i.ap = fsub double %i.i, %i.ao                 ; 2 uses
  br label %bb.e

._crit_edge168:                                   ; preds = %._crit_edge165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.lr.ph173.preheader

._crit_edge165:                                   ; preds = %bb.e
  %.phi.trans.insert216 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.am
  %.pre217 = load ptr, ptr %.phi.trans.insert216, align 8, !tbaa !25
  %i.aq = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ap, ptr noundef %i.aq, double noundef 1.000000e+00, ptr noundef %.pre217, ptr noundef %i.aq) #4
  %i.ar = trunc nuw i64 %indvars.iv205 to i32
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph164, label %._crit_edge168

bb.e:                                             ; preds = %.lr.ph164, %bb.e
  %indvars.iv202 = phi i64 [ %wide.trip.count, %.lr.ph164 ], [ %indvars.iv.next203, %bb.e ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv202 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25 ; 2 uses
  %i.av = trunc nuw i64 %indvars.iv202 to i32     ; 2 uses
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = getelementptr i8, ptr %i.at, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25
  tail call void @N_VLinearSum(double noundef %i.ap, ptr noundef %i.au, double noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.au) #4
  %indvars.iv.next203 = add nsw i64 %indvars.iv202, -1
  %i.az = icmp sgt i32 %i.av, 1
  br i1 %i.az, label %bb.e, label %._crit_edge165

.lr.ph173.preheader:                              ; preds = %._crit_edge, %._crit_edge168
  %i.ba = load ptr, ptr %1, align 8, !tbaa !25
  %i.bb = load ptr, ptr %6, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ba, ptr noundef %i.bb) #4
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %2, ptr noundef %i.bd) #4
  %i.be = add nuw i32 %4, 1
  %wide.trip.count213 = zext i32 %i.be to i64
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader, %.lr.ph173
  %indvars.iv208 = phi i64 [ 1, %.lr.ph173.preheader ], [ %indvars.iv.next209, %.lr.ph173 ] ; 3 uses
  %.0111170 = phi double [ 1.000000e+00, %.lr.ph173.preheader ], [ %i.bi, %.lr.ph173 ]
  %i.bf = trunc nuw nsw i64 %indvars.iv208 to i32
  %i.bg = uitofp nneg i32 %i.bf to double
  %i.bh = fdiv double %5, %i.bg
  %i.bi = fmul double %.0111170, %i.bh            ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv208
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25 ; 2 uses
  tail call void @N_VScale(double noundef %i.bi, ptr noundef %i.bk, ptr noundef %i.bk) #4
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count213
  br i1 %exitcond214.not, label %.thread, label %.lr.ph173

.thread:                                          ; preds = %.preheader145, %.lr.ph, %.lr.ph173, %bb.a
  %.2 = phi i32 [ -22, %bb.a ], [ -22, %.lr.ph ], [ 0, %.lr.ph173 ], [ -22, %.preheader145 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cvPredictY(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.a, ptr noundef %2) #4
  %.not8 = icmp slt i32 %0, 1
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nuw i32 %0, 1
  %wide.trip.count = zext i32 %i.b to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.d, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %2) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 960}
!9 = !{!"CVodeMemRec", !10, i64 0, !11, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !5, i64 44, !12, i64 48, !12, i64 56, !13, i64 64, !5, i64 72, !5, i64 76, !11, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !5, i64 112, !5, i64 116, !12, i64 120, !12, i64 128, !13, i64 136, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !11, i64 160, !11, i64 168, !11, i64 176, !5, i64 184, !5, i64 188, !14, i64 192, !14, i64 200, !15, i64 208, !5, i64 216, !12, i64 224, !5, i64 232, !5, i64 236, !12, i64 240, !14, i64 248, !16, i64 256, !15, i64 264, !5, i64 272, !11, i64 280, !11, i64 288, !5, i64 296, !5, i64 300, !5, i64 304, !12, i64 312, !14, i64 320, !16, i64 328, !15, i64 336, !6, i64 344, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !6, i64 512, !13, i64 616, !13, i64 624, !13, i64 632, !13, i64 640, !6, i64 648, !16, i64 752, !16, i64 760, !16, i64 768, !16, i64 776, !16, i64 784, !5, i64 792, !6, i64 800, !16, i64 904, !16, i64 912, !16, i64 920, !16, i64 928, !13, i64 936, !5, i64 944, !5, i64 948, !12, i64 952, !5, i64 960, !5, i64 964, !5, i64 968, !5, i64 972, !5, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !6, i64 1048, !6, i64 1160, !6, i64 1208, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !5, i64 1392, !12, i64 1400, !12, i64 1408, !5, i64 1416, !12, i64 1424, !12, i64 1432, !15, i64 1440, !5, i64 1448, !18, i64 1456, !5, i64 1464, !5, i64 1468, !5, i64 1472, !12, i64 1480, !12, i64 1488, !12, i64 1496, !12, i64 1504, !12, i64 1512, !12, i64 1520, !12, i64 1528, !12, i64 1536, !12, i64 1544, !12, i64 1552, !12, i64 1560, !12, i64 1568, !18, i64 1576, !5, i64 1584, !18, i64 1592, !18, i64 1600, !18, i64 1608, !18, i64 1616, !18, i64 1624, !18, i64 1632, !18, i64 1640, !18, i64 1648, !18, i64 1656, !19, i64 1664, !18, i64 1672, !18, i64 1680, !19, i64 1688, !18, i64 1696, !18, i64 1704, !19, i64 1712, !18, i64 1720, !18, i64 1728, !18, i64 1736, !18, i64 1744, !18, i64 1752, !18, i64 1760, !5, i64 1768, !12, i64 1776, !12, i64 1784, !12, i64 1792, !18, i64 1800, !18, i64 1808, !18, i64 1816, !18, i64 1824, !18, i64 1832, !18, i64 1840, !20, i64 1848, !5, i64 1856, !20, i64 1864, !5, i64 1872, !20, i64 1880, !5, i64 1888, !20, i64 1896, !5, i64 1904, !5, i64 1908, !18, i64 1912, !5, i64 1920, !11, i64 1928, !5, i64 1936, !13, i64 1944, !13, i64 1952, !13, i64 1960, !13, i64 1968, !13, i64 1976, !13, i64 1984, !5, i64 1992, !5, i64 1996, !11, i64 2000, !11, i64 2008, !11, i64 2016, !11, i64 2024, !11, i64 2032, !11, i64 2040, !18, i64 2048, !12, i64 2056, !5, i64 2064, !5, i64 2068, !18, i64 2072, !12, i64 2080, !12, i64 2088, !12, i64 2096, !5, i64 2104, !5, i64 2108, !12, i64 2112, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !5, i64 2160, !5, i64 2164, !5, i64 2168, !5, i64 2172, !5, i64 2176, !5, i64 2180, !11, i64 2184, !18, i64 2192, !5, i64 2200, !6, i64 2208, !5, i64 2400, !18, i64 2408, !11, i64 2416, !5, i64 2424, !15, i64 2432, !15, i64 2440, !12, i64 2448, !12, i64 2456, !12, i64 2464, !14, i64 2472, !14, i64 2480, !14, i64 2488, !12, i64 2496, !5, i64 2504, !18, i64 2512, !15, i64 2520, !5, i64 2528, !13, i64 2536, !18, i64 2544, !18, i64 2552, !5, i64 2560, !21, i64 2568, !5, i64 2576, !5, i64 2580, !6, i64 2584, !14, i64 2688, !16, i64 2696, !16, i64 2704, !5, i64 2712, !5, i64 2716, !22, i64 2720, !5, i64 2728}
!10 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!14 = !{!"p1 double", !11, i64 0}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!"p2 _ZTS17_generic_N_Vector", !17, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!"p1 long", !11, i64 0}
!20 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !11, i64 0}
!21 = !{!"p1 _ZTS15CVodeProjMemRec", !11, i64 0}
!22 = !{!"p1 _ZTS11CVadjMemRec", !11, i64 0}
!23 = !{!9, !5, i64 1448}
!24 = !{!9, !5, i64 40}
!25 = !{!13, !13, i64 0}
!26 = !{!9, !13, i64 448}
!27 = !{!9, !13, i64 464}
!28 = !{!9, !13, i64 472}
!29 = !{!9, !13, i64 480}
!30 = !{!9, !13, i64 488}
!31 = !{!9, !13, i64 496}
!32 = !{!9, !13, i64 504}
!33 = !{!9, !5, i64 2140}
!34 = !{!9, !13, i64 64}
!35 = !{!9, !13, i64 2536}
!36 = !{!9, !5, i64 2120}
!37 = !{!9, !20, i64 1848}
!38 = !{!9, !5, i64 1856}
!39 = !{!9, !10, i64 0}
!40 = !{!9, !5, i64 964}
!41 = !{!9, !12, i64 1024}
!42 = !{!12, !12, i64 0}
!43 = !{!9, !12, i64 1032}
!44 = !{!45}
!45 = distinct !{!45, !46}
!46 = distinct !{!46, !"LVerDomain"}
!47 = !{!48}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!9, !5, i64 2712}
!55 = distinct !{!55, !50}
end_hunk_0
