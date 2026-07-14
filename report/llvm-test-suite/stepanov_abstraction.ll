inline.NumInlined: 415
inline.NumDeleted: 151
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z9summarizePKciiii:bb.a
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %0, double noundef %i.bt) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge55, %._crit_edge50
  store i32 0, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z17summarize_simplefP8_IO_FILEPKc(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @current_test, align 4, !tbaa !4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @results, align 8, !tbaa !8
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.02428 = phi i32 [ 12, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #15
  %i.h = trunc i64 %i.g to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.02428, i32 %i.h) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.024.lcssa = phi i32 [ 12, %bb.a ], [ %spec.select, %bb.b ] ; 3 uses
  %i.i = add nsw i32 %.024.lcssa, -12
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.i, ptr noundef nonnull @.str.2) #16 ; 0 uses
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %.024.lcssa, ptr noundef nonnull @.str.2) #16 ; 0 uses
  %i.l = load i32, ptr @current_test, align 4, !tbaa !4
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph32, label %._crit_edge37

.preheader:                                       ; preds = %.lr.ph32
  %i.n = icmp sgt i32 %i.aa, 0
  br i1 %i.n, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %.preheader
  %i.o = load ptr, ptr @results, align 8, !tbaa !8 ; 5 uses
  %wide.trip.count48 = zext nneg i32 %i.aa to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count48, 3       ; 3 uses
  %i.p = icmp ult i32 %i.aa, 4
  br i1 %i.p, label %.epil.preheader, label %.lr.ph36.new

.lr.ph36.new:                                     ; preds = %.lr.ph36
  %unroll_iter = and i64 %wide.trip.count48, 2147483644
  br label %bb.c

.lr.ph32:                                         ; preds = %._crit_edge, %.lr.ph32
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.lr.ph32 ], [ 0, %._crit_edge ] ; 3 uses
  %i.q = load ptr, ptr @results, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv42 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #15
  %i.v = trunc i64 %i.u to i32
  %i.w = sub i32 %.024.lcssa, %i.v
  %i.x = load double, ptr %i.r, align 8, !tbaa !11
  %i.y = trunc nuw nsw i64 %indvars.iv42 to i32
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %i.y, i32 noundef %i.w, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.t, double noundef %i.x) #16 ; 0 uses
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.aa = load i32, ptr @current_test, align 4, !tbaa !4 ; 4 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next43, %i.ab
  br i1 %i.ac, label %.lr.ph32, label %.preheader, !llvm.loop !24

bb.c:                                             ; preds = %bb.c, %.lr.ph36.new
  %indvars.iv45 = phi i64 [ 0, %.lr.ph36.new ], [ %indvars.iv.next46.3, %bb.c ] ; 5 uses
  %.02634 = phi double [ 0.000000e+00, %.lr.ph36.new ], [ %i.ar, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph36.new ], [ %niter.next.3, %bb.c ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv45
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !11
  %i.af = fadd double %.02634, %i.ae
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !11
  %i.aj = fadd double %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv45
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load double, ptr %i.al, align 8, !tbaa !11
  %i.an = fadd double %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !11
  %i.ar = fadd double %i.an, %i.aq                ; 3 uses
  %indvars.iv.next46.3 = add nuw nsw i64 %indvars.iv45, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge37.loopexit.unr-lcssa, label %bb.c, !llvm.loop !25

._crit_edge37.loopexit.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge37, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge37.loopexit.unr-lcssa, %.lr.ph36
  %indvars.iv45.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next46.3, %._crit_edge37.loopexit.unr-lcssa ]
  %.02634.epil.init = phi double [ 0.000000e+00, %.lr.ph36 ], [ %i.ar, %._crit_edge37.loopexit.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv45.epil = phi i64 [ %indvars.iv45.epil.init, %.epil.preheader ], [ %indvars.iv.next46.epil, %bb.d ] ; 2 uses
  %.02634.epil = phi double [ %.02634.epil.init, %.epil.preheader ], [ %i.au, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv45.epil
  %i.at = load double, ptr %i.as, align 8, !tbaa !11
  %i.au = fadd double %.02634.epil, %i.at         ; 2 uses
  %indvars.iv.next46.epil = add nuw nsw i64 %indvars.iv45.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge37, label %bb.d, !llvm.loop !26

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit.unr-lcssa, %bb.d, %._crit_edge, %.preheader
  %.026.lcssa = phi double [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %._crit_edge ], [ %i.ar, %._crit_edge37.loopexit.unr-lcssa ], [ %i.au, %bb.d ]
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, double noundef %.026.lcssa) #16 ; 0 uses
  store i32 0, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z11start_timerv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_Z5timerv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @clock() #16               ; 2 uses
  store i64 %i.a, ptr @end_time, align 8, !tbaa !27
  %i.b = load i64, ptr @start_time, align 8, !tbaa !27
  %i.c = sub nsw i64 %i.a, %i.b
  %i.d = sitofp i64 %i.c to double
  %i.e = fdiv double %i.d, 1.000000e+06
  ret double %i.e
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #16, !inline_history !30
  %i.e = trunc i64 %i.d to i32
  store i32 %i.e, ptr @iterations, align 4, !tbaa !4
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = tail call double @strtod(ptr noundef nonnull captures(none) %i.g, ptr noundef null) #16, !inline_history !31
  store double %i.h, ptr @init_value, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.i = load double, ptr @init_value, align 8, !tbaa !32
  %i.j = fptosi double %i.i to i32
  %i.k = add nsw i32 %i.j, 123
  tail call void @srand(i32 noundef %i.k) #16
  %i.l = load ptr, ptr @dpb, align 8, !tbaa !33   ; 6 uses
  %i.m = load ptr, ptr @dpe, align 8, !tbaa !33   ; 4 uses
  %i.n = load double, ptr @init_value, align 8, !tbaa !32 ; 3 uses
  %.not4.i = icmp eq ptr %i.l, %i.m               ; 2 uses
  br i1 %.not4.i, label %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.l to i64
  %2 = add i64 %i.o, -8
  %3 = sub i64 %2, %i.p                           ; 2 uses
  %i.q = lshr i64 %3, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader401, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.r, 4611686018427387900      ; 3 uses
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %i.l, i64 %i.s
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.n, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !32
  store <2 x double> %broadcast.splat, ptr %i.v, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit.loopexit, label %.lr.ph.i.preheader401

.lr.ph.i.preheader401:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.05.i.ph = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader401, %.lr.ph.i
  %.05.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.05.i.ph, %.lr.ph.i.preheader401 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  store double %i.n, ptr %.05.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.x, %i.m
  br i1 %.not.i, label %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !38

_ZN9benchmark4fillIPddEEvT_S2_T0_.exit.loopexit:  ; preds = %.lr.ph.i, %middle.block
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  br label %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit

_ZN9benchmark4fillIPddEEvT_S2_T0_.exit:           ; preds = %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit.loopexit, %.thread
  %i.y = phi double [ %.pre, %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit.loopexit ], [ %i.n, %.thread ] ; 3 uses
  %i.z = load ptr, ptr @DVpb, align 8, !tbaa !39  ; 5 uses
  %i.aa = load ptr, ptr @DVpe, align 8, !tbaa !39 ; 3 uses
  %.not3.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not3.i, label %_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_.exit, label %.lr.ph.i68.preheader

.lr.ph.i68.preheader:                             ; preds = %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %4 = add i64 %i.ab, -8
  %5 = sub i64 %4, %i.ac                          ; 2 uses
  %i.ad = lshr i64 %5, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check312 = icmp ult i64 %5, 24
  br i1 %min.iters.check312, label %.lr.ph.i68.preheader400, label %vector.ph313

vector.ph313:                                     ; preds = %.lr.ph.i68.preheader
  %n.vec315 = and i64 %i.ae, 4611686018427387900  ; 3 uses
  %i.af = shl i64 %n.vec315, 3
  %i.ag = getelementptr i8, ptr %i.z, i64 %i.af
  %broadcast.splatinsert316 = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat317 = shufflevector <2 x double> %broadcast.splatinsert316, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph313
  %index319 = phi i64 [ 0, %vector.ph313 ], [ %index.next321, %vector.body318 ] ; 2 uses
  %i.ah = shl i64 %index319, 3
  %next.gep320 = getelementptr i8, ptr %i.z, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep320, i64 16
  store <2 x double> %broadcast.splat317, ptr %next.gep320, align 8, !tbaa !32
  store <2 x double> %broadcast.splat317, ptr %i.ai, align 8, !tbaa !32
  %index.next321 = add nuw i64 %index319, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next321, %n.vec315
  br i1 %i.aj, label %middle.block322, label %vector.body318, !llvm.loop !41

middle.block322:                                  ; preds = %vector.body318
  %cmp.n323 = icmp eq i64 %i.ae, %n.vec315
  br i1 %cmp.n323, label %_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_.exit.loopexit, label %.lr.ph.i68.preheader400

.lr.ph.i68.preheader400:                          ; preds = %.lr.ph.i68.preheader, %middle.block322
  %.04.i.ph = phi ptr [ %i.z, %.lr.ph.i68.preheader ], [ %i.ag, %middle.block322 ]
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68.preheader400, %.lr.ph.i68
  %.04.i = phi ptr [ %i.ak, %.lr.ph.i68 ], [ %.04.i.ph, %.lr.ph.i68.preheader400 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.04.i, i64 8 ; 2 uses
  store double %i.y, ptr %.04.i, align 8, !tbaa !32
  %.not.i69 = icmp eq ptr %i.ak, %i.aa
  br i1 %.not.i69, label %_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_.exit.loopexit, label %.lr.ph.i68, !llvm.loop !42

_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_.exit.loopexit: ; preds = %.lr.ph.i68, %middle.block322
  %.pre202 = load double, ptr @init_value, align 8, !tbaa !32
  br label %_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_.exit

_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_.exit: ; preds = %_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_.exit.loopexit, %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit
  %i.al = phi double [ %.pre202, %_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_.exit.loopexit ], [ %i.y, %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit ] ; 2 uses
  %i.am = load ptr, ptr @DV10pb, align 8, !tbaa !43 ; 5 uses
  %i.an = load ptr, ptr @DV10pe, align 8, !tbaa !43 ; 3 uses
  %.not3.i70 = icmp eq ptr %i.am, %i.an
  br i1 %.not3.i70, label %_ZN9benchmark4fillIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_T0_.exit, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_.exit
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %6 = add i64 %i.ao, -8
  %7 = sub i64 %6, %i.ap                          ; 2 uses
  %i.aq = lshr i64 %7, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check326 = icmp ult i64 %7, 24
  br i1 %min.iters.check326, label %.lr.ph.i71.preheader399, label %vector.ph327

vector.ph327:                                     ; preds = %.lr.ph.i71.preheader
  %n.vec329 = and i64 %i.ar, 4611686018427387900  ; 3 uses
  %i.as = shl i64 %n.vec329, 3
  %i.at = getelementptr i8, ptr %i.am, i64 %i.as
  %broadcast.splatinsert330 = insertelement <2 x double> poison, double %i.al, i64 0
  %broadcast.splat331 = shufflevector <2 x double> %broadcast.splatinsert330, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph327
  %index333 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body332 ] ; 2 uses
  %i.au = shl i64 %index333, 3
  %next.gep334 = getelementptr i8, ptr %i.am, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep334, i64 16
  store <2 x double> %broadcast.splat331, ptr %next.gep334, align 8, !tbaa !32
  store <2 x double> %broadcast.splat331, ptr %i.av, align 8, !tbaa !32
  %index.next335 = add nuw i64 %index333, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next335, %n.vec329
  br i1 %i.aw, label %middle.block336, label %vector.body332, !llvm.loop !45

middle.block336:                                  ; preds = %vector.body332
  %cmp.n337 = icmp eq i64 %i.ar, %n.vec329
  br i1 %cmp.n337, label %_ZN9benchmark4fillIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_T0_.exit, label %.lr.ph.i71.preheader399

.lr.ph.i71.preheader399:                          ; preds = %.lr.ph.i71.preheader, %middle.block336
  %.04.i72.ph = phi ptr [ %i.am, %.lr.ph.i71.preheader ], [ %i.at, %middle.block336 ]
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader399, %.lr.ph.i71
  %.04.i72 = phi ptr [ %i.ax, %.lr.ph.i71 ], [ %.04.i72.ph, %.lr.ph.i71.preheader399 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04.i72, i64 8 ; 2 uses
  store double %i.al, ptr %.04.i72, align 8, !tbaa !32
  %.not.i73 = icmp eq ptr %i.ax, %i.an
  br i1 %.not.i73, label %_ZN9benchmark4fillIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_T0_.exit, label %.lr.ph.i71, !llvm.loop !46

_ZN9benchmark4fillIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_T0_.exit: ; preds = %.lr.ph.i71, %middle.block336, %_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_.exit
  %i.ay = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i74, label %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit

.lr.ph.i74:                                       ; preds = %_ZN9benchmark4fillIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_T0_.exit
  br i1 %.not4.i, label %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.preheader.i, label %.lr.ph.i.preheader.i

_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.preheader.i: ; preds = %.lr.ph.i74
  %.pre7.i = load double, ptr @init_value, align 8, !tbaa !32
  br label %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i

_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i: ; preds = %_Z9check_sumd.exit.us.i, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.preheader.i
  %i.ba = phi i32 [ %i.bg, %_Z9check_sumd.exit.us.i ], [ %i.ay, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.preheader.i ]
  %i.bb = phi double [ %i.bh, %_Z9check_sumd.exit.us.i ], [ %.pre7.i, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.preheader.i ] ; 2 uses
  %.04.us.i = phi i32 [ %i.bi, %_Z9check_sumd.exit.us.i ], [ 0, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.preheader.i ]
  %i.bc = fmul double %i.bb, 2.000000e+03
  %i.bd = fcmp une double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.d, label %_Z9check_sumd.exit.us.i

bb.d:                                             ; preds = %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i
  %i.be = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.be) ; 0 uses
  %.pre6.i = load double, ptr @init_value, align 8, !tbaa !32
  %.pre8.i = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.us.i

_Z9check_sumd.exit.us.i:                          ; preds = %bb.d, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i
  %i.bg = phi i32 [ %.pre8.i, %bb.d ], [ %i.ba, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i ] ; 3 uses
  %i.bh = phi double [ %.pre6.i, %bb.d ], [ %i.bb, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i ]
  %i.bi = add nuw nsw i32 %.04.us.i, 1            ; 2 uses
  %i.bj = icmp slt i32 %i.bi, %i.bg
  br i1 %i.bj, label %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i, label %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit, !llvm.loop !47

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i74, %_Z9check_sumd.exit.i
  %i.bk = phi i32 [ %i.bt, %_Z9check_sumd.exit.i ], [ %i.ay, %.lr.ph.i74 ]
  %.04.i75 = phi i32 [ %i.bu, %_Z9check_sumd.exit.i ], [ 0, %.lr.ph.i74 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.08.i.i = phi double [ %i.bn, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.preheader.i ]
  %.057.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %i.l, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 8 ; 2 uses
  %i.bm = load double, ptr %.057.i.i, align 8, !tbaa !32
  %i.bn = fadd double %.08.i.i, %i.bm             ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, %i.m
  br i1 %.not.i.i, label %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !48

_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %i.bo = load double, ptr @init_value, align 8, !tbaa !32
  %i.bp = fmul double %i.bo, 2.000000e+03
  %i.bq = fcmp une double %i.bn, %i.bp
  br i1 %i.bq, label %bb.e, label %_Z9check_sumd.exit.i

bb.e:                                             ; preds = %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i
  %i.br = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.br) ; 0 uses
  %.pre.i = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.i

_Z9check_sumd.exit.i:                             ; preds = %bb.e, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i
  %i.bt = phi i32 [ %i.bk, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i ], [ %.pre.i, %bb.e ] ; 3 uses
  %i.bu = add nuw nsw i32 %.04.i75, 1             ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.bt
  br i1 %i.bv, label %.lr.ph.i.preheader.i, label %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit, !llvm.loop !47

_Z15test_accumulateIPddEvT_S1_T0_PKc.exit:        ; preds = %_Z9check_sumd.exit.i, %_Z9check_sumd.exit.us.i
  %.pr = phi i32 [ %i.bg, %_Z9check_sumd.exit.us.i ], [ %i.bt, %_Z9check_sumd.exit.i ] ; 4 uses
  %.sroa.057.0.copyload = load ptr, ptr @dPb, align 8, !tbaa !33 ; 2 uses
  %.sroa.056.0.copyload = load ptr, ptr @dPe, align 8, !tbaa !33 ; 2 uses
  %i.bw = icmp sgt i32 %.pr, 0
  br i1 %i.bw, label %.lr.ph.i76, label %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit

.lr.ph.i76:                                       ; preds = %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit
  %.not4.i.i = icmp eq ptr %.sroa.057.0.copyload, %.sroa.056.0.copyload
  br i1 %.not4.i.i, label %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.preheader.i, label %.lr.ph.i.preheader.i77

_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.preheader.i: ; preds = %.lr.ph.i76
  %.pre8.i83 = load double, ptr @init_value, align 8, !tbaa !32
  br label %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.i

_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.i: ; preds = %_Z9check_sumd.exit.us.i84, %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.preheader.i
  %i.bx = phi i32 [ %i.cd, %_Z9check_sumd.exit.us.i84 ], [ %.pr, %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.preheader.i ]
  %i.by = phi double [ %i.ce, %_Z9check_sumd.exit.us.i84 ], [ %.pre8.i83, %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.preheader.i ] ; 2 uses
  %.05.us.i = phi i32 [ %i.cf, %_Z9check_sumd.exit.us.i84 ], [ 0, %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.preheader.i ]
  %i.bz = fmul double %i.by, 2.000000e+03
  %i.ca = fcmp une double %i.bz, 0.000000e+00
  br i1 %i.ca, label %bb.f, label %_Z9check_sumd.exit.us.i84

bb.f:                                             ; preds = %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.i
  %i.cb = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.cb) ; 0 uses
  %.pre7.i85 = load double, ptr @init_value, align 8, !tbaa !32
  %.pre9.i = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.us.i84

_Z9check_sumd.exit.us.i84:                        ; preds = %bb.f, %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.i
  %i.cd = phi i32 [ %.pre9.i, %bb.f ], [ %i.bx, %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.i ] ; 3 uses
  %i.ce = phi double [ %.pre7.i85, %bb.f ], [ %i.by, %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.i ]
  %i.cf = add nuw nsw i32 %.05.us.i, 1            ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %i.cd
  br i1 %i.cg, label %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.i, label %_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc.exit, !llvm.loop !49

.lr.ph.i.preheader.i77:                           ; preds = %.lr.ph.i76, %_Z9check_sumd.exit.i81
  %i.ch = phi i32 [ %i.cq, %_Z9check_sumd.exit.i81 ], [ %.pr, %.lr.ph.i76 ]
  %.05.i78 = phi i32 [ %i.cr, %_Z9check_sumd.exit.i81 ], [ 0, %.lr.ph.i76 ]
  br label %.lr.ph.i.i79

.lr.ph.i.i79:                                     ; preds = %.lr.ph.i.i79, %.lr.ph.i.preheader.i77
  %.06.i.i = phi double [ %i.ck, %.lr.ph.i.i79 ], [ 0.000000e+00, %.lr.ph.i.preheader.i77 ]
  %.sroa.03.05.i.i = phi ptr [ %i.ci, %.lr.ph.i.i79 ], [ %.sroa.057.0.copyload, %.lr.ph.i.preheader.i77 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 8 ; 2 uses
  %i.cj = load double, ptr %.sroa.03.05.i.i, align 8, !tbaa !32
  %i.ck = fadd double %.06.i.i, %i.cj             ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.ci, %.sroa.056.0.copyload
  br i1 %.not.i.i80, label %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.loopexit.i, label %.lr.ph.i.i79, !llvm.loop !50

_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.loopexit.i: ; preds = %.lr.ph.i.i79
  %i.cl = load double, ptr @init_value, align 8, !tbaa !32
  %i.cm = fmul double %i.cl, 2.000000e+03
  %i.cn = fcmp une double %i.ck, %i.cm
  br i1 %i.cn, label %bb.g, label %_Z9check_sumd.exit.i81

bb.g:                                             ; preds = %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.loopexit.i
  %i.co = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.co) ; 0 uses
  %.pre.i82 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.i81

_Z9check_sumd.exit.i81:                           ; preds = %bb.g, %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.loopexit.i
  %i.cq = phi i32 [ %i.ch, %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.loopexit.i ], [ %.pre.i82, %bb.g ] ; 3 uses
  %i.cr = add nuw nsw i32 %.05.i78, 1             ; 2 uses
  %i.cs = icmp slt i32 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph.i.preheader.i77, label %_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc.exit, !llvm.loop !49

_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc.exit: ; preds = %_Z9check_sumd.exit.i81, %_Z9check_sumd.exit.us.i84
  %.pr156 = phi i32 [ %i.cd, %_Z9check_sumd.exit.us.i84 ], [ %i.cq, %_Z9check_sumd.exit.i81 ] ; 4 uses
  %i.ct = load ptr, ptr @DVpb, align 8, !tbaa !39 ; 2 uses
  %i.cu = load ptr, ptr @DVpe, align 8, !tbaa !39 ; 2 uses
  %i.cv = icmp sgt i32 %.pr156, 0
  br i1 %i.cv, label %.lr.ph.i86, label %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit

.lr.ph.i86:                                       ; preds = %_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc.exit
  %.not4.i.i87 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not4.i.i87, label %_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_.exit.us.preheader.i, label %.lr.ph.i.preheader.i88

_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_.exit.us.preheader.i: ; preds = %.lr.ph.i86
  %.pre7.i95 = load double, ptr @init_value, align 8, !tbaa !32
  br label %_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_.exit.us.i

_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_.exit.us.i: ; preds = %_Z9check_sumd.exit.us.i97, %_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_.exit.us.preheader.i
  %i.cw = phi i32 [ %i.dc, %_Z9check_sumd.exit.us.i97 ], [ %.pr156, %_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_.exit.us.preheader.i ]
  %i.cx = phi double [ %i.dd, %_Z9check_sumd.exit.us.i97 ], [ %.pre7.i95, %_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_.exit.us.preheader.i ] ; 2 uses
  %.04.us.i96 = phi i32 [ %i.de, %_Z9check_sumd.exit.us.i97 ], [ 0, %_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_.exit.us.preheader.i ]
  %i.cy = fmul double %i.cx, 2.000000e+03
  %i.cz = fcmp une double %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.h, label %_Z9check_sumd.exit.us.i97

bb.h:                                             ; preds = %_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_.exit.us.i
  %i.da = load i32, ptr @current_test, align 4, !tbaa !4
  %i.db = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.da) ; 0 uses
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.dz = phi i32 [ %.pre11.i, %bb.j ], [ %i.dt, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_.exit.us.i ] ; 3 uses
  %i.ea = phi double [ %.pre9.i107, %bb.j ], [ %i.du, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_.exit.us.i ]
  %i.eb = add nuw nsw i32 %.07.us.i, 1            ; 2 uses
  %i.ec = icmp slt i32 %i.eb, %i.dz
  br i1 %i.ec, label %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_.exit.us.i, label %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc.exit, !llvm.loop !55

.lr.ph.i.preheader.i101:                          ; preds = %.lr.ph.i100, %_Z9check_sumd.exit.i104
  %i.ed = phi i32 [ %i.em, %_Z9check_sumd.exit.i104 ], [ %.pr157.pr, %.lr.ph.i100 ]
  %.07.i = phi i32 [ %i.en, %_Z9check_sumd.exit.i104 ], [ 0, %.lr.ph.i100 ]
  br label %.lr.ph.i.i102

.lr.ph.i.i102:                                    ; preds = %.lr.ph.i.i102, %.lr.ph.i.preheader.i101
  %.sroa.04.07.i.i = phi ptr [ %i.ee, %.lr.ph.i.i102 ], [ %.sroa.054.0.copyload, %.lr.ph.i.preheader.i101 ] ; 2 uses
  %.sroa.02.06.i.i = phi double [ %i.eg, %.lr.ph.i.i102 ], [ 0.000000e+00, %.lr.ph.i.preheader.i101 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 8 ; 2 uses
  %i.ef = load double, ptr %.sroa.04.07.i.i, align 8, !tbaa !52
  %i.eg = fadd double %.sroa.02.06.i.i, %i.ef     ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.ee, %.sroa.053.0.copyload
  br i1 %.not.i.i103, label %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_.exit.loopexit.i, label %.lr.ph.i.i102, !llvm.loop !56

_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_.exit.loopexit.i: ; preds = %.lr.ph.i.i102
  %i.eh = load double, ptr @init_value, align 8, !tbaa !32
  %i.ei = fmul double %i.eh, 2.000000e+03
  %i.ej = fcmp une double %i.eg, %i.ei
  br i1 %i.ej, label %bb.k, label %_Z9check_sumd.exit.i104

bb.k:                                             ; preds = %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_.exit.loopexit.i
  %i.ek = load i32, ptr @current_test, align 4, !tbaa !4
  %i.el = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.ek) ; 0 uses
  %.pre.i105 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.i104

_Z9check_sumd.exit.i104:                          ; preds = %bb.k, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_.exit.loopexit.i
  %i.em = phi i32 [ %i.ed, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_.exit.loopexit.i ], [ %.pre.i105, %bb.k ] ; 3 uses
  %i.en = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %i.eo = icmp slt i32 %i.en, %i.em
  br i1 %i.eo, label %.lr.ph.i.preheader.i101, label %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc.exit, !llvm.loop !55

_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc.exit: ; preds = %_Z9check_sumd.exit.i104, %_Z9check_sumd.exit.us.i106
  %.pr160 = phi i32 [ %i.dz, %_Z9check_sumd.exit.us.i106 ], [ %i.em, %_Z9check_sumd.exit.i104 ] ; 4 uses
  %i.ep = load ptr, ptr @DV10pb, align 8, !tbaa !43 ; 2 uses
  %i.eq = load ptr, ptr @DV10pe, align 8, !tbaa !43 ; 2 uses
  %i.er = icmp sgt i32 %.pr160, 0
  br i1 %i.er, label %.lr.ph.i108, label %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit

.lr.ph.i108:                                      ; preds = %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc.exit
  %.not4.i.i109 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not4.i.i109, label %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.preheader.i, label %.lr.ph.i.preheader.i110

_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.preheader.i: ; preds = %.lr.ph.i108
  %.pre7.i118 = load double, ptr @init_value, align 8, !tbaa !32
  br label %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.i

_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.i: ; preds = %_Z9check_sumd.exit.us.i120, %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.preheader.i
  %i.es = phi i32 [ %i.ey, %_Z9check_sumd.exit.us.i120 ], [ %.pr160, %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.preheader.i ]
  %i.et = phi double [ %i.ez, %_Z9check_sumd.exit.us.i120 ], [ %.pre7.i118, %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.preheader.i ] ; 2 uses
  %.04.us.i119 = phi i32 [ %i.fa, %_Z9check_sumd.exit.us.i120 ], [ 0, %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.preheader.i ]
  %i.eu = fmul double %i.et, 2.000000e+03
  %i.ev = fcmp une double %i.eu, 0.000000e+00
  br i1 %i.ev, label %bb.l, label %_Z9check_sumd.exit.us.i120

bb.l:                                             ; preds = %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.i
  %i.ew = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ex = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.ew) ; 0 uses
  %.pre6.i121 = load double, ptr @init_value, align 8, !tbaa !32
  %.pre8.i122 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.us.i120

_Z9check_sumd.exit.us.i120:                       ; preds = %bb.l, %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.i
  %i.ey = phi i32 [ %.pre8.i122, %bb.l ], [ %i.es, %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.i ] ; 3 uses
  %i.ez = phi double [ %.pre6.i121, %bb.l ], [ %i.et, %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.i ]
  %i.fa = add nuw nsw i32 %.04.us.i119, 1         ; 2 uses
  %i.fb = icmp slt i32 %i.fa, %i.ey
  br i1 %i.fb, label %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.i, label %_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc.exit, !llvm.loop !57

.lr.ph.i.preheader.i110:                          ; preds = %.lr.ph.i108, %_Z9check_sumd.exit.i116
  %i.fc = phi i32 [ %i.fl, %_Z9check_sumd.exit.i116 ], [ %.pr160, %.lr.ph.i108 ]
  %.04.i111 = phi i32 [ %i.fm, %_Z9check_sumd.exit.i116 ], [ 0, %.lr.ph.i108 ]
  br label %.lr.ph.i.i112

.lr.ph.i.i112:                                    ; preds = %.lr.ph.i.i112, %.lr.ph.i.preheader.i110
  %.06.i.i113 = phi ptr [ %i.fd, %.lr.ph.i.i112 ], [ %i.ep, %.lr.ph.i.preheader.i110 ] ; 2 uses
  %storemerge5.i.i114 = phi double [ %i.ff, %.lr.ph.i.i112 ], [ 0.000000e+00, %.lr.ph.i.preheader.i110 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.06.i.i113, i64 8 ; 2 uses
  %i.fe = load double, ptr %.06.i.i113, align 8, !tbaa !52
  %i.ff = fadd double %storemerge5.i.i114, %i.fe  ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.fd, %i.eq
  br i1 %.not.i.i115, label %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.loopexit.i, label %.lr.ph.i.i112, !llvm.loop !58

_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.loopexit.i: ; preds = %.lr.ph.i.i112
  %i.fg = load double, ptr @init_value, align 8, !tbaa !32
  %i.fh = fmul double %i.fg, 2.000000e+03
  %i.fi = fcmp une double %i.ff, %i.fh
  br i1 %i.fi, label %bb.m, label %_Z9check_sumd.exit.i116

bb.m:                                             ; preds = %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.loopexit.i
  %i.fj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.fk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.fj) ; 0 uses
  %.pre.i117 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.i116

_Z9check_sumd.exit.i116:                          ; preds = %bb.m, %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.loopexit.i
  %i.fl = phi i32 [ %i.fc, %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.loopexit.i ], [ %.pre.i117, %bb.m ] ; 3 uses
  %i.fm = add nuw nsw i32 %.04.i111, 1            ; 2 uses
  %i.fn = icmp slt i32 %i.fm, %i.fl
  br i1 %i.fn, label %.lr.ph.i.preheader.i110, label %_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc.exit, !llvm.loop !57

_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc.exit: ; preds = %_Z9check_sumd.exit.i116, %_Z9check_sumd.exit.us.i120
  %.pr161.pr.pr = phi i32 [ %i.ey, %_Z9check_sumd.exit.us.i120 ], [ %i.fl, %_Z9check_sumd.exit.i116 ] ; 4 uses
  %.sroa.050.0.copyload = load ptr, ptr @DV10Pb, align 8, !tbaa !43 ; 2 uses
  %.sroa.049.0.copyload = load ptr, ptr @DV10Pe, align 8, !tbaa !43 ; 2 uses
  %i.fo = icmp sgt i32 %.pr161.pr.pr, 0
  br i1 %i.fo, label %.lr.ph.i123, label %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit

.lr.ph.i123:                                      ; preds = %_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc.exit
  %.not5.i.i124 = icmp eq ptr %.sroa.050.0.copyload, %.sroa.049.0.copyload
  br i1 %.not5.i.i124, label %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.preheader.i, label %.lr.ph.i.preheader.i125

_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.preheader.i: ; preds = %.lr.ph.i123
  %.pre10.i133 = load double, ptr @init_value, align 8, !tbaa !32
  br label %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.i

_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.i: ; preds = %_Z9check_sumd.exit.us.i135, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.preheader.i
  %i.fp = phi i32 [ %i.fv, %_Z9check_sumd.exit.us.i135 ], [ %.pr161.pr.pr, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.preheader.i ]
  %i.fq = phi double [ %i.fw, %_Z9check_sumd.exit.us.i135 ], [ %.pre10.i133, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.preheader.i ] ; 2 uses
  %.07.us.i134 = phi i32 [ %i.fx, %_Z9check_sumd.exit.us.i135 ], [ 0, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.preheader.i ]
  %i.fr = fmul double %i.fq, 2.000000e+03
  %i.fs = fcmp une double %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.n, label %_Z9check_sumd.exit.us.i135

bb.n:                                             ; preds = %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.i
  %i.ft = load i32, ptr @current_test, align 4, !tbaa !4
  %i.fu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.ft) ; 0 uses
  %.pre9.i136 = load double, ptr @init_value, align 8, !tbaa !32
  %.pre11.i137 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.us.i135

_Z9check_sumd.exit.us.i135:                       ; preds = %bb.n, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.i
  %i.fv = phi i32 [ %.pre11.i137, %bb.n ], [ %i.fp, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.i ] ; 3 uses
  %i.fw = phi double [ %.pre9.i136, %bb.n ], [ %i.fq, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.i ]
  %i.fx = add nuw nsw i32 %.07.us.i134, 1         ; 2 uses
  %i.fy = icmp slt i32 %i.fx, %i.fv
  br i1 %i.fy, label %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.i, label %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit, !llvm.loop !59

.lr.ph.i.preheader.i125:                          ; preds = %.lr.ph.i123, %_Z9check_sumd.exit.i131
  %i.fz = phi i32 [ %i.gi, %_Z9check_sumd.exit.i131 ], [ %.pr161.pr.pr, %.lr.ph.i123 ]
  %.07.i126 = phi i32 [ %i.gj, %_Z9check_sumd.exit.i131 ], [ 0, %.lr.ph.i123 ]
  br label %.lr.ph.i.i127

.lr.ph.i.i127:                                    ; preds = %.lr.ph.i.i127, %.lr.ph.i.preheader.i125
  %.sroa.04.07.i.i128 = phi ptr [ %i.ga, %.lr.ph.i.i127 ], [ %.sroa.050.0.copyload, %.lr.ph.i.preheader.i125 ] ; 2 uses
  %.sroa.02.06.i.i129 = phi double [ %i.gc, %.lr.ph.i.i127 ], [ 0.000000e+00, %.lr.ph.i.preheader.i125 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i128, i64 8 ; 2 uses
  %i.gb = load double, ptr %.sroa.04.07.i.i128, align 8, !tbaa !52
  %i.gc = fadd double %.sroa.02.06.i.i129, %i.gb  ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.ga, %.sroa.049.0.copyload
  br i1 %.not.i.i130, label %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.loopexit.i, label %.lr.ph.i.i127, !llvm.loop !60

_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.loopexit.i: ; preds = %.lr.ph.i.i127
  %i.gd = load double, ptr @init_value, align 8, !tbaa !32
  %i.ge = fmul double %i.gd, 2.000000e+03
  %i.gf = fcmp une double %i.gc, %i.ge
  br i1 %i.gf, label %bb.o, label %_Z9check_sumd.exit.i131

bb.o:                                             ; preds = %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.loopexit.i
  %i.gg = load i32, ptr @current_test, align 4, !tbaa !4
  %i.gh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.gg) ; 0 uses
  %.pre.i132 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.i131

_Z9check_sumd.exit.i131:                          ; preds = %bb.o, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.loopexit.i
  %i.gi = phi i32 [ %i.fz, %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.loopexit.i ], [ %.pre.i132, %bb.o ] ; 3 uses
  %i.gj = add nuw nsw i32 %.07.i126, 1            ; 2 uses
  %i.gk = icmp slt i32 %i.gj, %i.gi
  br i1 %i.gk, label %.lr.ph.i.preheader.i125, label %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit, !llvm.loop !59

_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit: ; preds = %_Z9check_sumd.exit.i131, %_Z9check_sumd.exit.us.i135, %_ZN9benchmark4fillIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_T0_.exit, %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit, %_Z15test_accumulateIP12ValueWrapperIdES1_EvT_S3_T0_PKc.exit, %_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc.exit, %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc.exit, %_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc.exit
  %i.gl = phi i32 [ %i.fv, %_Z9check_sumd.exit.us.i135 ], [ %.pr161.pr.pr, %_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc.exit ], [ %i.ay, %_ZN9benchmark4fillIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_T0_.exit ], [ %.pr, %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit ], [ %.pr157.pr, %_Z15test_accumulateIP12ValueWrapperIdES1_EvT_S3_T0_PKc.exit ], [ %.pr156, %_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc.exit ], [ %.pr160, %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc.exit ], [ %i.gi, %_Z9check_sumd.exit.i131 ]
  %i.gm = sdiv i32 %i.gl, 2000
  store i32 %i.gm, ptr @iterations, align 4, !tbaa !4
  %i.gn = load ptr, ptr @dMpb, align 8, !tbaa !33 ; 3 uses
  %i.go = load ptr, ptr @dMpe, align 8, !tbaa !33 ; 3 uses
  %.not3.i138 = icmp eq ptr %i.gn, %i.go
  br i1 %.not3.i138, label %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit, label %.lr.ph.i139

.lr.ph.i139:                                      ; preds = %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit, %.lr.ph.i139
  %.04.i140 = phi ptr [ %i.gr, %.lr.ph.i139 ], [ %i.gn, %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit ] ; 2 uses
  %i.gp = tail call i32 @rand() #16
  %i.gq = sitofp i32 %i.gp to double
  %i.gr = getelementptr inbounds nuw i8, ptr %.04.i140, i64 8 ; 2 uses
  store double %i.gq, ptr %.04.i140, align 8, !tbaa !32
  %.not.i141 = icmp eq ptr %i.gr, %i.go
  br i1 %.not.i141, label %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit, label %.lr.ph.i139, !llvm.loop !61

_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit: ; preds = %.lr.ph.i139
  %.pre208 = load ptr, ptr @dMpb, align 8, !tbaa !33
  %.pre209 = load ptr, ptr @dMpe, align 8, !tbaa !33
  br label %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit

_ZN9benchmark11fill_randomIPddEEvT_S2_.exit:      ; preds = %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit, %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit
  %i.gs = phi ptr [ %.pre209, %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit ], [ %i.go, %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit ] ; 5 uses
  %i.gt = phi ptr [ %.pre208, %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit ], [ %i.gn, %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit ] ; 11 uses
  %8 = ptrtoint ptr %i.gt to i64
  %9 = ptrtoint ptr %i.gs to i64                  ; 2 uses
  %10 = ptrtoint ptr %i.gt to i64                 ; 2 uses
  %.not5.i = icmp eq ptr %i.gt, %i.gs
  br i1 %.not5.i, label %_ZN9benchmark4copyIPdP12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEvT_SE_T0_.exit, label %.lr.ph.i142.preheader

.lr.ph.i142.preheader:                            ; preds = %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit
  %i.gu = ptrtoaddr ptr %i.gt to i64
  %i.gv = load ptr, ptr @DVMpb, align 8, !tbaa !39 ; 4 uses
  %11 = add i64 %9, -8
  %i.gw = sub i64 %11, %10                        ; 2 uses
  %i.gx = lshr i64 %i.gw, 3
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 2 uses
  %min.iters.check340 = icmp ult i64 %i.gw, 72
  %i.gz = ptrtoaddr ptr %i.gv to i64
  %i.ha = sub i64 %i.gu, %i.gz
  %diff.check = icmp ugt i64 %i.ha, -32
  %or.cond = select i1 %min.iters.check340, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i142.preheader375, label %vector.ph341

vector.ph341:                                     ; preds = %.lr.ph.i142.preheader
  %n.vec343 = and i64 %i.gy, 4611686018427387900  ; 3 uses
  %i.hb = shl i64 %n.vec343, 3                    ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gv, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.gt, i64 %i.hb
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph341
  %index345 = phi i64 [ 0, %vector.ph341 ], [ %index.next349, %vector.body344 ] ; 2 uses
  %i.he = shl i64 %index345, 3                    ; 2 uses
  %next.gep346 = getelementptr i8, ptr %i.gv, i64 %i.he ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.gt, i64 %i.he ; 2 uses
  %i.hf = getelementptr i8, ptr %next.gep347, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep347, align 8, !tbaa !32
  %wide.load348 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !32
  %i.hg = getelementptr i8, ptr %next.gep346, i64 16
  store <2 x i64> %wide.load, ptr %next.gep346, align 8, !tbaa !32
  store <2 x i64> %wide.load348, ptr %i.hg, align 8, !tbaa !32
  %index.next349 = add nuw i64 %index345, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next349, %n.vec343
  br i1 %i.hh, label %middle.block350, label %vector.body344, !llvm.loop !62

middle.block350:                                  ; preds = %vector.body344
  %cmp.n351 = icmp eq i64 %i.gy, %n.vec343
  br i1 %cmp.n351, label %_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_.exit, label %.lr.ph.i142.preheader375

.lr.ph.i142.preheader375:                         ; preds = %.lr.ph.i142.preheader, %middle.block350
  %.07.i143.ph = phi ptr [ %i.gv, %.lr.ph.i142.preheader ], [ %i.hc, %middle.block350 ]
  %.046.i.ph = phi ptr [ %i.gt, %.lr.ph.i142.preheader ], [ %i.hd, %middle.block350 ]
  br label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %.lr.ph.i142.preheader375, %.lr.ph.i142
  %.07.i143 = phi ptr [ %i.hk, %.lr.ph.i142 ], [ %.07.i143.ph, %.lr.ph.i142.preheader375 ] ; 2 uses
  %.046.i = phi ptr [ %i.hi, %.lr.ph.i142 ], [ %.046.i.ph, %.lr.ph.i142.preheader375 ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.hj = load i64, ptr %.046.i, align 8, !tbaa !32
  %i.hk = getelementptr inbounds nuw i8, ptr %.07.i143, i64 8
  store i64 %i.hj, ptr %.07.i143, align 8, !tbaa !32
  %.not.i144 = icmp eq ptr %i.hi, %i.gs
  br i1 %.not.i144, label %_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_.exit, label %.lr.ph.i142, !llvm.loop !63

_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_.exit: ; preds = %.lr.ph.i142, %middle.block350
  %i.hl = load ptr, ptr @DV10Mpb, align 8, !tbaa !43 ; 4 uses
  %12 = add i64 %9, -8
  %i.hm = sub i64 %12, %8                         ; 2 uses
  %i.hn = lshr i64 %i.hm, 3
  %i.ho = add nuw nsw i64 %i.hn, 1                ; 2 uses
  %min.iters.check357 = icmp ult i64 %i.hm, 72
  %i.hp = ptrtoaddr ptr %i.hl to i64
  %i.hq = sub i64 %10, %i.hp
  %diff.check355 = icmp ugt i64 %i.hq, -32
  %or.cond374 = select i1 %min.iters.check357, i1 true, i1 %diff.check355
  br i1 %or.cond374, label %.lr.ph.i146.preheader, label %vector.ph358

vector.ph358:                                     ; preds = %_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_.exit
  %n.vec360 = and i64 %i.ho, 4611686018427387900  ; 3 uses
  %i.hr = shl i64 %n.vec360, 3                    ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hl, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.gt, i64 %i.hr
  br label %vector.body361

vector.body361:                                   ; preds = %vector.body361, %vector.ph358
  %index362 = phi i64 [ 0, %vector.ph358 ], [ %index.next367, %vector.body361 ] ; 2 uses
  %i.hu = shl i64 %index362, 3                    ; 2 uses
  %next.gep363 = getelementptr i8, ptr %i.hl, i64 %i.hu ; 2 uses
  %next.gep364 = getelementptr i8, ptr %i.gt, i64 %i.hu ; 2 uses
  %i.hv = getelementptr i8, ptr %next.gep364, i64 16
  %wide.load365 = load <2 x i64>, ptr %next.gep364, align 8, !tbaa !32
  %wide.load366 = load <2 x i64>, ptr %i.hv, align 8, !tbaa !32
  %i.hw = getelementptr i8, ptr %next.gep363, i64 16
  store <2 x i64> %wide.load365, ptr %next.gep363, align 8, !tbaa !32
  store <2 x i64> %wide.load366, ptr %i.hw, align 8, !tbaa !32
  %index.next367 = add nuw i64 %index362, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next367, %n.vec360
  br i1 %i.hx, label %middle.block368, label %vector.body361, !llvm.loop !64

middle.block368:                                  ; preds = %vector.body361
  %cmp.n369 = icmp eq i64 %i.ho, %n.vec360
  br i1 %cmp.n369, label %_ZN9benchmark4copyIPdP12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEvT_SE_T0_.exit, label %.lr.ph.i146.preheader

.lr.ph.i146.preheader:                            ; preds = %_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_.exit, %middle.block368
  %.07.i147.ph = phi ptr [ %i.hl, %_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_.exit ], [ %i.hs, %middle.block368 ]
  %.046.i148.ph = phi ptr [ %i.gt, %_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_.exit ], [ %i.ht, %middle.block368 ]
  br label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %.lr.ph.i146.preheader, %.lr.ph.i146
  %.07.i147 = phi ptr [ %i.ia, %.lr.ph.i146 ], [ %.07.i147.ph, %.lr.ph.i146.preheader ] ; 2 uses
  %.046.i148 = phi ptr [ %i.hy, %.lr.ph.i146 ], [ %.046.i148.ph, %.lr.ph.i146.preheader ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.046.i148, i64 8 ; 2 uses
  %i.hz = load i64, ptr %.046.i148, align 8, !tbaa !32
  %i.ia = getelementptr inbounds nuw i8, ptr %.07.i147, i64 8
  store i64 %i.hz, ptr %.07.i147, align 8, !tbaa !32
  %.not.i149 = icmp eq ptr %i.hy, %i.gs
  br i1 %.not.i149, label %_ZN9benchmark4copyIPdP12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEvT_SE_T0_.exit, label %.lr.ph.i146, !llvm.loop !65

_ZN9benchmark4copyIPdP12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEvT_SE_T0_.exit: ; preds = %.lr.ph.i146, %middle.block368, %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit
  %i.ib = load ptr, ptr @dpb, align 8, !tbaa !33
  %i.ic = load ptr, ptr @dpe, align 8, !tbaa !33
  tail call void @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %i.gt, ptr noundef %i.gs, ptr noundef %i.ib, ptr noundef %i.ic, double noundef 0.000000e+00, ptr noundef nonnull @.str.32)
  %.sroa.047.0.copyload = load ptr, ptr @dMPb, align 8, !tbaa !33
  %.sroa.046.0.copyload = load ptr, ptr @dMPe, align 8, !tbaa !33
  %.sroa.045.0.copyload = load ptr, ptr @dPb, align 8, !tbaa !33
  %.sroa.044.0.copyload = load ptr, ptr @dPe, align 8, !tbaa !33
  tail call void @_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(ptr %.sroa.047.0.copyload, ptr %.sroa.046.0.copyload, ptr %.sroa.045.0.copyload, ptr %.sroa.044.0.copyload, double noundef 0.000000e+00, ptr noundef nonnull @.str.33)
  %i.id = load ptr, ptr @DVMpb, align 8, !tbaa !39
  %i.ie = load ptr, ptr @DVMpe, align 8, !tbaa !39
  %i.if = load ptr, ptr @DVpb, align 8, !tbaa !39
  %i.ig = load ptr, ptr @DVpe, align 8, !tbaa !39
  tail call void @_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(ptr noundef %i.id, ptr noundef %i.ie, ptr noundef %i.if, ptr noundef %i.ig, double 0.000000e+00, ptr noundef nonnull @.str.34)
  %.sroa.042.0.copyload = load ptr, ptr @DVMPb, align 8, !tbaa !39
  %.sroa.041.0.copyload = load ptr, ptr @DVMPe, align 8, !tbaa !39
  %.sroa.040.0.copyload = load ptr, ptr @DVPb, align 8, !tbaa !39
  %.sroa.039.0.copyload = load ptr, ptr @DVPe, align 8, !tbaa !39
  tail call void @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(ptr %.sroa.042.0.copyload, ptr %.sroa.041.0.copyload, ptr %.sroa.040.0.copyload, ptr %.sroa.039.0.copyload, double 0.000000e+00, ptr noundef nonnull @.str.35)
  %i.ih = load ptr, ptr @DV10Mpb, align 8, !tbaa !43
  %i.ii = load ptr, ptr @DV10Mpe, align 8, !tbaa !43
  %i.ij = load ptr, ptr @DV10pb, align 8, !tbaa !43
  %i.ik = load ptr, ptr @DV10pe, align 8, !tbaa !43
  tail call void @_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(ptr noundef %i.ih, ptr noundef %i.ii, ptr noundef %i.ij, ptr noundef %i.ik, double 0.000000e+00, ptr noundef nonnull @.str.36)
  %.sroa.036.0.copyload = load ptr, ptr @DV10MPb, align 8, !tbaa !43
  %.sroa.035.0.copyload = load ptr, ptr @DV10MPe, align 8, !tbaa !43
  %.sroa.034.0.copyload = load ptr, ptr @DV10Pb, align 8, !tbaa !43
  %.sroa.033.0.copyload = load ptr, ptr @DV10Pe, align 8, !tbaa !43
  tail call void @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(ptr %.sroa.036.0.copyload, ptr %.sroa.035.0.copyload, ptr %.sroa.034.0.copyload, ptr %.sroa.033.0.copyload, double 0.000000e+00, ptr noundef nonnull @.str.37)
  %i.il = load i32, ptr @iterations, align 4, !tbaa !4
  %i.im = shl nsw i32 %i.il, 3
  store i32 %i.im, ptr @iterations, align 4, !tbaa !4
  %i.in = load ptr, ptr @dMpb, align 8, !tbaa !33
  %i.io = load ptr, ptr @dMpe, align 8, !tbaa !33
  %i.ip = load ptr, ptr @dpb, align 8, !tbaa !33
  %i.iq = load ptr, ptr @dpe, align 8, !tbaa !33
  tail call void @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %i.in, ptr noundef %i.io, ptr noundef %i.ip, ptr noundef %i.iq, double noundef 0.000000e+00, ptr noundef nonnull @.str.38)
  %.sroa.031.0.copyload = load ptr, ptr @dMPb, align 8, !tbaa !33
  %.sroa.030.0.copyload = load ptr, ptr @dMPe, align 8, !tbaa !33
  %.sroa.029.0.copyload = load ptr, ptr @dPb, align 8, !tbaa !33
  %.sroa.028.0.copyload = load ptr, ptr @dPe, align 8, !tbaa !33
  tail call void @_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(ptr %.sroa.031.0.copyload, ptr %.sroa.030.0.copyload, ptr %.sroa.029.0.copyload, ptr %.sroa.028.0.copyload, double noundef 0.000000e+00, ptr noundef nonnull @.str.39)
  %i.ir = load ptr, ptr @DVMpb, align 8, !tbaa !39
  %i.is = load ptr, ptr @DVMpe, align 8, !tbaa !39
  %i.it = load ptr, ptr @DVpb, align 8, !tbaa !39
  %i.iu = load ptr, ptr @DVpe, align 8, !tbaa !39
  tail call void @_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(ptr noundef %i.ir, ptr noundef %i.is, ptr noundef %i.it, ptr noundef %i.iu, double 0.000000e+00, ptr noundef nonnull @.str.40)
  %.sroa.026.0.copyload = load ptr, ptr @DVMPb, align 8, !tbaa !39
  %.sroa.025.0.copyload = load ptr, ptr @DVMPe, align 8, !tbaa !39
  %.sroa.024.0.copyload = load ptr, ptr @DVPb, align 8, !tbaa !39
  %.sroa.023.0.copyload = load ptr, ptr @DVPe, align 8, !tbaa !39
  tail call void @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(ptr %.sroa.026.0.copyload, ptr %.sroa.025.0.copyload, ptr %.sroa.024.0.copyload, ptr %.sroa.023.0.copyload, double 0.000000e+00, ptr noundef nonnull @.str.41)
  %i.iv = load ptr, ptr @DV10Mpb, align 8, !tbaa !43
  %i.iw = load ptr, ptr @DV10Mpe, align 8, !tbaa !43
  %i.ix = load ptr, ptr @DV10pb, align 8, !tbaa !43
  %i.iy = load ptr, ptr @DV10pe, align 8, !tbaa !43
  tail call void @_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(ptr noundef %i.iv, ptr noundef %i.iw, ptr noundef %i.ix, ptr noundef %i.iy, double 0.000000e+00, ptr noundef nonnull @.str.42)
  %.sroa.020.0.copyload = load ptr, ptr @DV10MPb, align 8, !tbaa !43
  %.sroa.019.0.copyload = load ptr, ptr @DV10MPe, align 8, !tbaa !43
  %.sroa.018.0.copyload = load ptr, ptr @DV10Pb, align 8, !tbaa !43
  %.sroa.017.0.copyload = load ptr, ptr @DV10Pe, align 8, !tbaa !43
  tail call void @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(ptr %.sroa.020.0.copyload, ptr %.sroa.019.0.copyload, ptr %.sroa.018.0.copyload, ptr %.sroa.017.0.copyload, double 0.000000e+00, ptr noundef nonnull @.str.43)
  %i.iz = load ptr, ptr @dMpb, align 8, !tbaa !33
  %i.ja = load ptr, ptr @dMpe, align 8, !tbaa !33
  %i.jb = load ptr, ptr @dpb, align 8, !tbaa !33
  %i.jc = load ptr, ptr @dpe, align 8, !tbaa !33
  tail call void @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %i.iz, ptr noundef %i.ja, ptr noundef %i.jb, ptr noundef %i.jc, double noundef 0.000000e+00, ptr noundef nonnull @.str.44)
  %.sroa.015.0.copyload = load ptr, ptr @dMPb, align 8, !tbaa !33
  %.sroa.014.0.copyload = load ptr, ptr @dMPe, align 8, !tbaa !33
  %.sroa.013.0.copyload = load ptr, ptr @dPb, align 8, !tbaa !33
  %.sroa.012.0.copyload = load ptr, ptr @dPe, align 8, !tbaa !33
  tail call void @_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(ptr %.sroa.015.0.copyload, ptr %.sroa.014.0.copyload, ptr %.sroa.013.0.copyload, ptr %.sroa.012.0.copyload, double noundef 0.000000e+00, ptr noundef nonnull @.str.45)
  %i.jd = load ptr, ptr @DVMpb, align 8, !tbaa !39
  %i.je = load ptr, ptr @DVMpe, align 8, !tbaa !39
  %i.jf = load ptr, ptr @DVpb, align 8, !tbaa !39
  %i.jg = load ptr, ptr @DVpe, align 8, !tbaa !39
  tail call void @_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(ptr noundef %i.jd, ptr noundef %i.je, ptr noundef %i.jf, ptr noundef %i.jg, double 0.000000e+00, ptr noundef nonnull @.str.46)
  %.sroa.010.0.copyload = load ptr, ptr @DVMPb, align 8, !tbaa !39
  %.sroa.09.0.copyload = load ptr, ptr @DVMPe, align 8, !tbaa !39
  %.sroa.08.0.copyload = load ptr, ptr @DVPb, align 8, !tbaa !39
  %.sroa.07.0.copyload = load ptr, ptr @DVPe, align 8, !tbaa !39
  tail call void @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(ptr %.sroa.010.0.copyload, ptr %.sroa.09.0.copyload, ptr %.sroa.08.0.copyload, ptr %.sroa.07.0.copyload, double 0.000000e+00, ptr noundef nonnull @.str.47)
  %i.jh = load ptr, ptr @DV10Mpb, align 8, !tbaa !43
  %i.ji = load ptr, ptr @DV10Mpe, align 8, !tbaa !43
  %i.jj = load ptr, ptr @DV10pb, align 8, !tbaa !43
  %i.jk = load ptr, ptr @DV10pe, align 8, !tbaa !43
  tail call void @_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(ptr noundef %i.jh, ptr noundef %i.ji, ptr noundef %i.jj, ptr noundef %i.jk, double 0.000000e+00, ptr noundef nonnull @.str.48)
  %.sroa.04.0.copyload = load ptr, ptr @DV10MPb, align 8, !tbaa !43
  %.sroa.03.0.copyload = load ptr, ptr @DV10MPe, align 8, !tbaa !43
  %.sroa.02.0.copyload = load ptr, ptr @DV10Pb, align 8, !tbaa !43
  %.sroa.01.0.copyload = load ptr, ptr @DV10Pe, align 8, !tbaa !43
  tail call void @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(ptr %.sroa.04.0.copyload, ptr %.sroa.03.0.copyload, ptr %.sroa.02.0.copyload, ptr %.sroa.01.0.copyload, double 0.000000e+00, ptr noundef nonnull @.str.49)
  ret i32 0
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64                     ; 2 uses
  %9 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4 ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not5.i = icmp eq ptr %0, %1                   ; 2 uses
  %.01823.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.not24.i = icmp eq ptr %.01823.i, %3
  br i1 %.not24.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not5.i, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph.split.us
  %10 = add i64 %7, -8
  %i.e = sub i64 %10, %6                          ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.e, 24
  %i.h = sub i64 %8, %i.b
  %diff.check54 = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check56, %diff.check54
  %n.vec59 = and i64 %i.g, 4611686018427387900    ; 3 uses
  %i.i = shl i64 %n.vec59, 3                      ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 %i.i
  %cmp.n68 = icmp eq i64 %i.g, %n.vec59
  br label %.lr.ph.i.preheader.us

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us:   ; preds = %.lr.ph.split.us, %_Z13verify_sortedIPdEvT_S1_.exit.us.us
  %i.l = phi i32 [ %i.r, %_Z13verify_sortedIPdEvT_S1_.exit.us.us ], [ %i.c, %.lr.ph.split.us ]
  %.010.us.us = phi i32 [ %i.s, %_Z13verify_sortedIPdEvT_S1_.exit.us.us ], [ 0, %.lr.ph.split.us ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us
  %.pn.i.i.us.us = phi ptr [ %2, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us ], [ %.08.i.i.us.us, %bb.c ] ; 2 uses
  %.08.i.i.us.us = getelementptr i8, ptr %.pn.i.i.us.us, i64 8 ; 3 uses
  %.not.i.i.us.us = icmp eq ptr %.08.i.i.us.us, %3
  br i1 %.not.i.i.us.us, label %_Z13verify_sortedIPdEvT_S1_.exit.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %.08.i.i.us.us, align 8, !tbaa !32
  %i.n = load double, ptr %.pn.i.i.us.us, align 8, !tbaa !32
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us.us, label %bb.b, !llvm.loop !66

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us.us:  ; preds = %bb.c
  %i.p = load i32, ptr @current_test, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.p) ; 0 uses
  %.pre24 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIPdEvT_S1_.exit.us.us

_Z13verify_sortedIPdEvT_S1_.exit.us.us:           ; preds = %bb.b, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us.us
  %i.r = phi i32 [ %.pre24, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us.us ], [ %i.l, %bb.b ] ; 2 uses
  %i.s = add nuw nsw i32 %.010.us.us, 1           ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us, label %._crit_edge, !llvm.loop !67

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_Z13verify_sortedIPdEvT_S1_.exit.us
  %i.u = phi i32 [ %i.ah, %_Z13verify_sortedIPdEvT_S1_.exit.us ], [ %i.c, %.lr.ph.i.preheader.us.preheader ]
  %.010.us = phi i32 [ %i.ai, %_Z13verify_sortedIPdEvT_S1_.exit.us ], [ 0, %.lr.ph.i.preheader.us.preheader ]
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body60

vector.body60:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body60
  %index61 = phi i64 [ %index.next66, %vector.body60 ], [ 0, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.v = shl i64 %index61, 3                      ; 2 uses
  %next.gep62 = getelementptr i8, ptr %2, i64 %i.v ; 2 uses
  %next.gep63 = getelementptr i8, ptr %0, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load64 = load <2 x double>, ptr %next.gep63, align 8, !tbaa !32
  %wide.load65 = load <2 x double>, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr i8, ptr %next.gep62, i64 16
  store <2 x double> %wide.load64, ptr %next.gep62, align 8, !tbaa !32
  store <2 x double> %wide.load65, ptr %i.x, align 8, !tbaa !32
  %index.next66 = add nuw i64 %index61, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.y, label %middle.block67, label %vector.body60, !llvm.loop !68

middle.block67:                                   ; preds = %vector.body60
  br i1 %cmp.n68, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader.us, %middle.block67
  %.07.i.us.ph = phi ptr [ %2, %.lr.ph.i.preheader.us ], [ %i.j, %middle.block67 ]
  %.046.i.us.ph = phi ptr [ %0, %.lr.ph.i.preheader.us ], [ %i.k, %middle.block67 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.07.i.us = phi ptr [ %i.ab, %.lr.ph.i.us ], [ %.07.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %.046.i.us = phi ptr [ %i.z, %.lr.ph.i.us ], [ %.046.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.046.i.us, i64 8 ; 2 uses
  %i.aa = load double, ptr %.046.i.us, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i.us, i64 8
  store double %i.aa, ptr %.07.i.us, align 8, !tbaa !32
  %.not.i.us = icmp eq ptr %i.z, %1
  br i1 %.not.i.us, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us, !llvm.loop !69

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us.preheader: ; preds = %.lr.ph.i.us, %middle.block67
  br label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us: ; preds = %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us.preheader, %bb.d
  %.pn.i.i.us = phi ptr [ %.08.i.i.us, %bb.d ], [ %2, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us.preheader ] ; 2 uses
  %.08.i.i.us = getelementptr i8, ptr %.pn.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.08.i.i.us, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIPdEvT_S1_.exit.us, label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us
  %i.ac = load double, ptr %.08.i.i.us, align 8, !tbaa !32
  %i.ad = load double, ptr %.pn.i.i.us, align 8, !tbaa !32
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us, !llvm.loop !66

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us:     ; preds = %bb.d
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.af) ; 0 uses
  %.pre23 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIPdEvT_S1_.exit.us

_Z13verify_sortedIPdEvT_S1_.exit.us:              ; preds = %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us
  %i.ah = phi i32 [ %.pre23, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us ], [ %i.u, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us ] ; 2 uses
  %i.ai = add nuw nsw i32 %.010.us, 1             ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.lr.ph.i.preheader.us, label %._crit_edge, !llvm.loop !67

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not5.i, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph.split
  %11 = add i64 %9, -8
  %i.ak = sub i64 %11, %8                         ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  %i.an = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond71 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %2, i64 %i.ao
  %i.aq = getelementptr i8, ptr %0, i64 %i.ao
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12:    ; preds = %.lr.ph.split, %_Z13verify_sortedIPdEvT_S1_.exit.us17
  %i.ar = phi i32 [ %i.bb, %_Z13verify_sortedIPdEvT_S1_.exit.us17 ], [ %i.c, %.lr.ph.split ]
  %.010.us11 = phi i32 [ %i.bc, %_Z13verify_sortedIPdEvT_S1_.exit.us17 ], [ 0, %.lr.ph.split ]
  br label %.lr.ph.i8.us

.lr.ph.i8.us:                                     ; preds = %.critedge.i.us, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12
  %.01825.i.us = phi ptr [ %.018.i.us, %.critedge.i.us ], [ %.01823.i, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12 ] ; 3 uses
  %i.as = load double, ptr %.01825.i.us, align 8, !tbaa !32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i8.us
  %.022.i.us = phi ptr [ %.01825.i.us, %.lr.ph.i8.us ], [ %i.at, %bb.f ] ; 3 uses
  %i.at = getelementptr i8, ptr %.022.i.us, i64 -8 ; 3 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !32 ; 2 uses
  %i.av = fcmp olt double %i.as, %i.au
  br i1 %i.av, label %bb.f, label %.critedge.i.us

bb.f:                                             ; preds = %bb.e
  store double %i.au, ptr %.022.i.us, align 8, !tbaa !32
  %.not20.i.us = icmp eq ptr %i.at, %2
  br i1 %.not20.i.us, label %.critedge.i.us, label %bb.e, !llvm.loop !70

.critedge.i.us:                                   ; preds = %bb.f, %bb.e
  %.017.lcssa.i.us = phi ptr [ %2, %bb.f ], [ %.022.i.us, %bb.e ]
  store double %i.as, ptr %.017.lcssa.i.us, align 8, !tbaa !32
  %.018.i.us = getelementptr inbounds nuw i8, ptr %.01825.i.us, i64 8 ; 2 uses
  %.not.i9.us = icmp eq ptr %.018.i.us, %3
  br i1 %.not.i9.us, label %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us, label %.lr.ph.i8.us, !llvm.loop !71

_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us: ; preds = %.critedge.i.us, %bb.g
  %.pn.i.i.us13 = phi ptr [ %.08.i.i.us14, %bb.g ], [ %2, %.critedge.i.us ] ; 2 uses
  %.08.i.i.us14 = getelementptr i8, ptr %.pn.i.i.us13, i64 8 ; 3 uses
  %.not.i.i.us15 = icmp eq ptr %.08.i.i.us14, %3
  br i1 %.not.i.i.us15, label %_Z13verify_sortedIPdEvT_S1_.exit.us17, label %bb.g

bb.g:                                             ; preds = %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us
  %i.aw = load double, ptr %.08.i.i.us14, align 8, !tbaa !32
  %i.ax = load double, ptr %.pn.i.i.us13, align 8, !tbaa !32
  %i.ay = fcmp olt double %i.aw, %i.ax
  br i1 %i.ay, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us16, label %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us, !llvm.loop !66

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us16:   ; preds = %bb.g
  %i.az = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.az) ; 0 uses
  %.pre22 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIPdEvT_S1_.exit.us17

_Z13verify_sortedIPdEvT_S1_.exit.us17:            ; preds = %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us16
  %i.bb = phi i32 [ %.pre22, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us16 ], [ %i.ar, %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us ] ; 2 uses
  %i.bc = add nuw nsw i32 %.010.us11, 1           ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.bb
  br i1 %i.bd, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12, label %._crit_edge, !llvm.loop !67

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIPdEvT_S1_.exit
  %i.be = phi i32 [ %i.bv, %_Z13verify_sortedIPdEvT_S1_.exit ], [ %i.c, %.lr.ph.i.preheader.preheader ]
  %.010 = phi i32 [ %i.bw, %_Z13verify_sortedIPdEvT_S1_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond71, label %.lr.ph.i.preheader74, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.bf ; 2 uses
  %next.gep50 = getelementptr i8, ptr %0, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x double>, ptr %next.gep50, align 8, !tbaa !32
  %wide.load51 = load <2 x double>, ptr %i.bg, align 8, !tbaa !32
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !32
  store <2 x double> %wide.load51, ptr %i.bh, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i8.preheader, label %.lr.ph.i.preheader74

.lr.ph.i.preheader74:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.ap, %middle.block ]
  %.046.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader74, %.lr.ph.i
  %.07.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader74 ] ; 2 uses
  %.046.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %.046.i.ph, %.lr.ph.i.preheader74 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.bk = load double, ptr %.046.i, align 8, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store double %i.bk, ptr %.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.bj, %1
  br i1 %.not.i, label %.lr.ph.i8.preheader, label %.lr.ph.i, !llvm.loop !73

.lr.ph.i8.preheader:                              ; preds = %.lr.ph.i, %middle.block
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8.preheader, %.critedge.i
  %.01825.i = phi ptr [ %.018.i, %.critedge.i ], [ %.01823.i, %.lr.ph.i8.preheader ] ; 3 uses
  %i.bm = load double, ptr %.01825.i, align 8, !tbaa !32 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i8
  %.022.i = phi ptr [ %.01825.i, %.lr.ph.i8 ], [ %i.bn, %bb.i ] ; 3 uses
  %i.bn = getelementptr i8, ptr %.022.i, i64 -8   ; 3 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !32 ; 2 uses
  %i.bp = fcmp olt double %i.bm, %i.bo
  br i1 %i.bp, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  store double %i.bo, ptr %.022.i, align 8, !tbaa !32
  %.not20.i = icmp eq ptr %i.bn, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.h, !llvm.loop !70

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %.017.lcssa.i = phi ptr [ %2, %bb.i ], [ %.022.i, %bb.h ]
  store double %i.bm, ptr %.017.lcssa.i, align 8, !tbaa !32
  %.018.i = getelementptr inbounds nuw i8, ptr %.01825.i, i64 8 ; 2 uses
  %.not.i9 = icmp eq ptr %.018.i, %3
  br i1 %.not.i9, label %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit, label %.lr.ph.i8, !llvm.loop !71

_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit: ; preds = %.critedge.i, %bb.j
  %.pn.i.i = phi ptr [ %.08.i.i, %bb.j ], [ %2, %.critedge.i ] ; 2 uses
  %.08.i.i = getelementptr i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.08.i.i, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIPdEvT_S1_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit
  %i.bq = load double, ptr %.08.i.i, align 8, !tbaa !32
  %i.br = load double, ptr %.pn.i.i, align 8, !tbaa !32
  %i.bs = fcmp olt double %i.bq, %i.br
  br i1 %i.bs, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i, label %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit, !llvm.loop !66

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i:        ; preds = %bb.j
  %i.bt = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.bt) ; 0 uses
  %.pre = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIPdEvT_S1_.exit

_Z13verify_sortedIPdEvT_S1_.exit:                 ; preds = %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i
  %i.bv = phi i32 [ %.pre, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i ], [ %i.be, %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit ] ; 2 uses
  %i.bw = add nuw nsw i32 %.010, 1                ; 2 uses
  %i.bx = icmp slt i32 %i.bw, %i.bv
  br i1 %i.bx, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %_Z13verify_sortedIPdEvT_S1_.exit, %_Z13verify_sortedIPdEvT_S1_.exit.us17, %_Z13verify_sortedIPdEvT_S1_.exit.us, %_Z13verify_sortedIPdEvT_S1_.exit.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double noundef %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64                     ; 2 uses
  %9 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4 ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1                   ; 2 uses
  %.sroa.010.017.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.not18.i = icmp eq ptr %.sroa.010.017.i, %3
  br i1 %.not18.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not6.i, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us.us, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph.split.us
  %10 = add i64 %7, -8
  %i.e = sub i64 %10, %6                          ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check63 = icmp ult i64 %i.e, 24
  %i.h = sub i64 %8, %i.b
  %diff.check61 = icmp ugt i64 %i.h, -32
  %or.cond = select i1 %min.iters.check63, i1 true, i1 %diff.check61
  %n.vec66 = and i64 %i.g, 4611686018427387900    ; 3 uses
  %i.i = shl i64 %n.vec66, 3                      ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %2, i64 %i.i
  %cmp.n75 = icmp eq i64 %i.g, %n.vec66
  br label %.lr.ph.i.preheader.us

_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us.us: ; preds = %.lr.ph.split.us, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us.us
  %i.l = phi i32 [ %i.s, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us.us ], [ %i.c, %.lr.ph.split.us ]
  %.014.us.us = phi i32 [ %i.t, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us.us ], [ 0, %.lr.ph.split.us ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us.us
  %.sroa.04.0.i.i.us.us = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us.us ], [ %i.m, %bb.c ] ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.04.0.i.i.us.us, i64 8 ; 3 uses
  %.not.i.i.us.us = icmp eq ptr %i.m, %3
  br i1 %.not.i.i.us.us, label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load double, ptr %i.m, align 8, !tbaa !32
  %i.o = load double, ptr %.sroa.04.0.i.i.us.us, align 8, !tbaa !32
  %i.p = fcmp olt double %i.n, %i.o
  br i1 %i.p, label %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us.us, label %bb.b, !llvm.loop !74

_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us.us: ; preds = %bb.c
  %i.q = load i32, ptr @current_test, align 4, !tbaa !4
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.q) ; 0 uses
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us.us

_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us.us
  %i.s = phi i32 [ %.pre27, %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us.us ], [ %i.l, %bb.b ] ; 2 uses
  %i.t = add nuw nsw i32 %.014.us.us, 1           ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.s
  br i1 %i.u, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us.us, label %._crit_edge, !llvm.loop !75

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us
  %i.v = phi i32 [ %i.aj, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us ], [ %i.c, %.lr.ph.i.preheader.us.preheader ]
  %.014.us = phi i32 [ %i.ak, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us ], [ 0, %.lr.ph.i.preheader.us.preheader ]
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body67

vector.body67:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body67
  %index68 = phi i64 [ %index.next73, %vector.body67 ], [ 0, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.w = shl i64 %index68, 3                      ; 2 uses
  %next.gep69 = getelementptr i8, ptr %0, i64 %i.w ; 2 uses
  %next.gep70 = getelementptr i8, ptr %2, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load71 = load <2 x double>, ptr %next.gep69, align 8, !tbaa !32
  %wide.load72 = load <2 x double>, ptr %i.x, align 8, !tbaa !32
  %i.y = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x double> %wide.load71, ptr %next.gep70, align 8, !tbaa !32
  store <2 x double> %wide.load72, ptr %i.y, align 8, !tbaa !32
  %index.next73 = add nuw i64 %index68, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.z, label %middle.block74, label %vector.body67, !llvm.loop !76

middle.block74:                                   ; preds = %vector.body67
  br i1 %cmp.n75, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader.us, %middle.block74
  %.sroa.05.08.i.us.ph = phi ptr [ %0, %.lr.ph.i.preheader.us ], [ %i.j, %middle.block74 ]
  %.sroa.03.07.i.us.ph = phi ptr [ %2, %.lr.ph.i.preheader.us ], [ %i.k, %middle.block74 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.sroa.05.08.i.us = phi ptr [ %i.aa, %.lr.ph.i.us ], [ %.sroa.05.08.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %.sroa.03.07.i.us = phi ptr [ %i.ac, %.lr.ph.i.us ], [ %.sroa.03.07.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.us, i64 8 ; 2 uses
  %i.ab = load double, ptr %.sroa.05.08.i.us, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.us, i64 8
  store double %i.ab, ptr %.sroa.03.07.i.us, align 8, !tbaa !32
  %.not.i.us = icmp eq ptr %i.aa, %1
  br i1 %.not.i.us, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us, !llvm.loop !77

_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us.preheader: ; preds = %.lr.ph.i.us, %middle.block74
  br label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us

_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us: ; preds = %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us.preheader, %bb.d
  %.sroa.04.0.i.i.us = phi ptr [ %i.ad, %bb.d ], [ %2, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us.preheader ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.sroa.04.0.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.ad, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us, label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !32
  %i.af = load double, ptr %.sroa.04.0.i.i.us, align 8, !tbaa !32
  %i.ag = fcmp olt double %i.ae, %i.af
  br i1 %i.ag, label %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us, !llvm.loop !74

_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us: ; preds = %bb.d
  %i.ah = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ah) ; 0 uses
  %.pre26 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us

_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us: ; preds = %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us, %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us
  %i.aj = phi i32 [ %.pre26, %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us ], [ %i.v, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us ] ; 2 uses
  %i.ak = add nuw nsw i32 %.014.us, 1             ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.aj
  br i1 %i.al, label %.lr.ph.i.preheader.us, label %._crit_edge, !llvm.loop !75

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not6.i, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us16, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph.split
  %11 = add i64 %9, -8
  %i.am = sub i64 %11, %8                         ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 24
  %i.ap = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond78 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %2, i64 %i.aq
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us16: ; preds = %.lr.ph.split, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us20
  %i.at = phi i32 [ %i.be, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us20 ], [ %i.c, %.lr.ph.split ]
  %.014.us15 = phi i32 [ %i.bf, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us20 ], [ 0, %.lr.ph.split ]
  br label %.lr.ph.i12.us

.lr.ph.i12.us:                                    ; preds = %.critedge.i.us, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us16
  %.sroa.010.019.i.us = phi ptr [ %.sroa.010.0.i.us, %.critedge.i.us ], [ %.sroa.010.017.i, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us16 ] ; 3 uses
  %i.au = load double, ptr %.sroa.010.019.i.us, align 8, !tbaa !32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i12.us
  %.sroa.0.016.i.us = phi ptr [ %.sroa.010.019.i.us, %.lr.ph.i12.us ], [ %i.av, %bb.f ] ; 3 uses
  %i.av = getelementptr i8, ptr %.sroa.0.016.i.us, i64 -8 ; 3 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = fcmp olt double %i.au, %i.aw
  br i1 %i.ax, label %bb.f, label %.critedge.i.us

bb.f:                                             ; preds = %bb.e
  store double %i.aw, ptr %.sroa.0.016.i.us, align 8, !tbaa !32
  %.not14.i.us = icmp eq ptr %i.av, %2
  br i1 %.not14.i.us, label %.critedge.i.us, label %bb.e, !llvm.loop !78

.critedge.i.us:                                   ; preds = %bb.f, %bb.e
  %.sroa.06.0.lcssa.i.us = phi ptr [ %2, %bb.f ], [ %.sroa.0.016.i.us, %bb.e ]
  store double %i.au, ptr %.sroa.06.0.lcssa.i.us, align 8, !tbaa !32
  %.sroa.010.0.i.us = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i.us, i64 8 ; 2 uses
  %.not.i13.us = icmp eq ptr %.sroa.010.0.i.us, %3
  br i1 %.not.i13.us, label %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit.us, label %.lr.ph.i12.us, !llvm.loop !79

_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit.us: ; preds = %.critedge.i.us, %bb.g
  %.sroa.04.0.i.i.us17 = phi ptr [ %i.ay, %bb.g ], [ %2, %.critedge.i.us ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.04.0.i.i.us17, i64 8 ; 3 uses
  %.not.i.i.us18 = icmp eq ptr %i.ay, %3
  br i1 %.not.i.i.us18, label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us20, label %bb.g

bb.g:                                             ; preds = %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit.us
  %i.az = load double, ptr %i.ay, align 8, !tbaa !32
  %i.ba = load double, ptr %.sroa.04.0.i.i.us17, align 8, !tbaa !32
  %i.bb = fcmp olt double %i.az, %i.ba
  br i1 %i.bb, label %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us19, label %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit.us, !llvm.loop !74

_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us19: ; preds = %bb.g
  %i.bc = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.bc) ; 0 uses
  %.pre25 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us20

_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us20: ; preds = %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit.us, %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us19
  %i.be = phi i32 [ %.pre25, %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us19 ], [ %i.at, %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit.us ] ; 2 uses
  %i.bf = add nuw nsw i32 %.014.us15, 1           ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.be
  br i1 %i.bg, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us16, label %._crit_edge, !llvm.loop !75

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit
  %i.bh = phi i32 [ %i.bz, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit ], [ %i.c, %.lr.ph.i.preheader.preheader ]
  %.014 = phi i32 [ %i.ca, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond78, label %.lr.ph.i.preheader81, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bi ; 2 uses
  %next.gep57 = getelementptr i8, ptr %2, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !32
  %wide.load58 = load <2 x double>, ptr %i.bj, align 8, !tbaa !32
  %i.bk = getelementptr i8, ptr %next.gep57, i64 16
  store <2 x double> %wide.load, ptr %next.gep57, align 8, !tbaa !32
  store <2 x double> %wide.load58, ptr %i.bk, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i12.preheader, label %.lr.ph.i.preheader81

.lr.ph.i.preheader81:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.05.08.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.ar, %middle.block ]
  %.sroa.03.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader81, %.lr.ph.i
  %.sroa.05.08.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %.sroa.05.08.i.ph, %.lr.ph.i.preheader81 ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %.sroa.03.07.i.ph, %.lr.ph.i.preheader81 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.bn = load double, ptr %.sroa.05.08.i, align 8, !tbaa !32
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8
  store double %i.bn, ptr %.sroa.03.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.bm, %1
  br i1 %.not.i, label %.lr.ph.i12.preheader, label %.lr.ph.i, !llvm.loop !81

.lr.ph.i12.preheader:                             ; preds = %.lr.ph.i, %middle.block
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.lr.ph.i12.preheader, %.critedge.i
  %.sroa.010.019.i = phi ptr [ %.sroa.010.0.i, %.critedge.i ], [ %.sroa.010.017.i, %.lr.ph.i12.preheader ] ; 3 uses
  %i.bp = load double, ptr %.sroa.010.019.i, align 8, !tbaa !32 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i12
  %.sroa.0.016.i = phi ptr [ %.sroa.010.019.i, %.lr.ph.i12 ], [ %i.bq, %bb.i ] ; 3 uses
  %i.bq = getelementptr i8, ptr %.sroa.0.016.i, i64 -8 ; 3 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !32 ; 2 uses
  %i.bs = fcmp olt double %i.bp, %i.br
  br i1 %i.bs, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  store double %i.br, ptr %.sroa.0.016.i, align 8, !tbaa !32
  %.not14.i = icmp eq ptr %i.bq, %2
  br i1 %.not14.i, label %.critedge.i, label %bb.h, !llvm.loop !78

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %.sroa.06.0.lcssa.i = phi ptr [ %2, %bb.i ], [ %.sroa.0.016.i, %bb.h ]
  store double %i.bp, ptr %.sroa.06.0.lcssa.i, align 8, !tbaa !32
  %.sroa.010.0.i = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i, i64 8 ; 2 uses
  %.not.i13 = icmp eq ptr %.sroa.010.0.i, %3
  br i1 %.not.i13, label %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit, label %.lr.ph.i12, !llvm.loop !79

_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit: ; preds = %.critedge.i, %bb.j
  %.sroa.04.0.i.i = phi ptr [ %i.bt, %bb.j ], [ %2, %.critedge.i ] ; 2 uses
  %i.bt = getelementptr i8, ptr %.sroa.04.0.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bt, %3
  br i1 %.not.i.i, label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !32
  %i.bv = load double, ptr %.sroa.04.0.i.i, align 8, !tbaa !32
  %i.bw = fcmp olt double %i.bu, %i.bv
  br i1 %i.bw, label %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i, label %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit, !llvm.loop !74

_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i: ; preds = %bb.j
  %i.bx = load i32, ptr @current_test, align 4, !tbaa !4
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.bx) ; 0 uses
  %.pre = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit

_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit: ; preds = %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit, %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i
  %i.bz = phi i32 [ %.pre, %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i ], [ %i.bh, %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit ] ; 2 uses
  %i.ca = add nuw nsw i32 %.014, 1                ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %i.bz
  br i1 %i.cb, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us20, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64                     ; 2 uses
  %9 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4 ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not5.i = icmp eq ptr %0, %1                   ; 2 uses
  %.01620.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.not21.i = icmp eq ptr %.01620.i, %3
  br i1 %.not21.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not5.i, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us.us, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph.split.us
  %10 = add i64 %7, -8
  %i.e = sub i64 %10, %6                          ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.e, 24
  %i.h = sub i64 %8, %i.b
  %diff.check54 = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check56, %diff.check54
  %n.vec59 = and i64 %i.g, 4611686018427387900    ; 3 uses
  %i.i = shl i64 %n.vec59, 3                      ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 %i.i
  %cmp.n68 = icmp eq i64 %i.g, %n.vec59
  br label %.lr.ph.i.preheader.us

_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us.us: ; preds = %.lr.ph.split.us, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us.us
  %i.l = phi i32 [ %i.r, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us.us ], [ %i.c, %.lr.ph.split.us ]
  %.010.us.us = phi i32 [ %i.s, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us.us ], [ 0, %.lr.ph.split.us ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us.us
  %.pn.i.i.us.us = phi ptr [ %2, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us.us ], [ %.08.i.i.us.us, %bb.c ] ; 2 uses
  %.08.i.i.us.us = getelementptr i8, ptr %.pn.i.i.us.us, i64 8 ; 3 uses
  %.not.i.i.us.us = icmp eq ptr %.08.i.i.us.us, %3
  br i1 %.not.i.i.us.us, label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %.08.i.i.us.us, align 8, !tbaa !52
  %i.n = load double, ptr %.pn.i.i.us.us, align 8, !tbaa !52
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us.us, label %bb.b, !llvm.loop !82

_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us.us: ; preds = %bb.c
  %i.p = load i32, ptr @current_test, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.p) ; 0 uses
  %.pre24 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us.us

_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us.us
  %i.r = phi i32 [ %.pre24, %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us.us ], [ %i.l, %bb.b ] ; 2 uses
  %i.s = add nuw nsw i32 %.010.us.us, 1           ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us.us, label %._crit_edge, !llvm.loop !83

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us
  %i.u = phi i32 [ %i.ah, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us ], [ %i.c, %.lr.ph.i.preheader.us.preheader ]
  %.010.us = phi i32 [ %i.ai, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us ], [ 0, %.lr.ph.i.preheader.us.preheader ]
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body60

vector.body60:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body60
  %index61 = phi i64 [ %index.next66, %vector.body60 ], [ 0, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.v = shl i64 %index61, 3                      ; 2 uses
  %next.gep62 = getelementptr i8, ptr %2, i64 %i.v ; 2 uses
  %next.gep63 = getelementptr i8, ptr %0, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load64 = load <2 x i64>, ptr %next.gep63, align 8, !tbaa !32
  %wide.load65 = load <2 x i64>, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr i8, ptr %next.gep62, i64 16
  store <2 x i64> %wide.load64, ptr %next.gep62, align 8, !tbaa !32
  store <2 x i64> %wide.load65, ptr %i.x, align 8, !tbaa !32
  %index.next66 = add nuw i64 %index61, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.y, label %middle.block67, label %vector.body60, !llvm.loop !84

middle.block67:                                   ; preds = %vector.body60
  br i1 %cmp.n68, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader.us, %middle.block67
  %.07.i.us.ph = phi ptr [ %2, %.lr.ph.i.preheader.us ], [ %i.j, %middle.block67 ]
  %.046.i.us.ph = phi ptr [ %0, %.lr.ph.i.preheader.us ], [ %i.k, %middle.block67 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.07.i.us = phi ptr [ %i.aa, %.lr.ph.i.us ], [ %.07.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %.046.i.us = phi ptr [ %i.z, %.lr.ph.i.us ], [ %.046.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.046.i.us, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i.us, i64 8
  %i.ab = load i64, ptr %.046.i.us, align 8, !tbaa !32
  store i64 %i.ab, ptr %.07.i.us, align 8, !tbaa !32
  %.not.i.us = icmp eq ptr %i.z, %1
  br i1 %.not.i.us, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us, !llvm.loop !85

_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us.preheader: ; preds = %.lr.ph.i.us, %middle.block67
  br label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us

_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us: ; preds = %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us.preheader, %bb.d
  %.pn.i.i.us = phi ptr [ %.08.i.i.us, %bb.d ], [ %2, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us.preheader ] ; 2 uses
  %.08.i.i.us = getelementptr i8, ptr %.pn.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.08.i.i.us, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us, label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us
  %i.ac = load double, ptr %.08.i.i.us, align 8, !tbaa !52
  %i.ad = load double, ptr %.pn.i.i.us, align 8, !tbaa !52
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us, !llvm.loop !82

_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us: ; preds = %bb.d
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.af) ; 0 uses
  %.pre23 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us

_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us: ; preds = %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us, %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us
  %i.ah = phi i32 [ %.pre23, %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us ], [ %i.u, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us ] ; 2 uses
  %i.ai = add nuw nsw i32 %.010.us, 1             ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.lr.ph.i.preheader.us, label %._crit_edge, !llvm.loop !83

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not5.i, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us12, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph.split
  %11 = add i64 %9, -8
  %i.ak = sub i64 %11, %8                         ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  %i.an = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond71 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %2, i64 %i.ao
  %i.aq = getelementptr i8, ptr %0, i64 %i.ao
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us12: ; preds = %.lr.ph.split, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us17
  %i.ar = phi i32 [ %i.bc, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us17 ], [ %i.c, %.lr.ph.split ]
  %.010.us11 = phi i32 [ %i.bd, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us17 ], [ 0, %.lr.ph.split ]
  br label %.lr.ph.i8.us

.lr.ph.i8.us:                                     ; preds = %.critedge.i.us, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us12
  %.01622.i.us = phi ptr [ %.016.i.us, %.critedge.i.us ], [ %.01620.i, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us12 ] ; 3 uses
  %i.as = load i64, ptr %.01622.i.us, align 8, !tbaa !32 ; 2 uses
  %i.at = bitcast i64 %i.as to double
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i8.us
  %.019.i.us = phi ptr [ %.01622.i.us, %.lr.ph.i8.us ], [ %i.au, %bb.f ] ; 3 uses
  %i.au = getelementptr i8, ptr %.019.i.us, i64 -8 ; 3 uses
  %i.av = load double, ptr %i.au, align 8         ; 2 uses
  %i.aw = fcmp ogt double %i.av, %i.at
  br i1 %i.aw, label %bb.f, label %.critedge.i.us

bb.f:                                             ; preds = %bb.e
  store double %i.av, ptr %.019.i.us, align 8, !tbaa !32
  %.not17.i.us = icmp eq ptr %i.au, %2
  br i1 %.not17.i.us, label %.critedge.i.us, label %bb.e, !llvm.loop !86

.critedge.i.us:                                   ; preds = %bb.f, %bb.e
  %.015.lcssa.i.us = phi ptr [ %2, %bb.f ], [ %.019.i.us, %bb.e ]
  store i64 %i.as, ptr %.015.lcssa.i.us, align 8, !tbaa !32
  %.016.i.us = getelementptr inbounds nuw i8, ptr %.01622.i.us, i64 8 ; 2 uses
  %.not.i9.us = icmp eq ptr %.016.i.us, %3
  br i1 %.not.i9.us, label %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit.us, label %.lr.ph.i8.us, !llvm.loop !87

_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit.us: ; preds = %.critedge.i.us, %bb.g
  %.pn.i.i.us13 = phi ptr [ %.08.i.i.us14, %bb.g ], [ %2, %.critedge.i.us ] ; 2 uses
  %.08.i.i.us14 = getelementptr i8, ptr %.pn.i.i.us13, i64 8 ; 3 uses
  %.not.i.i.us15 = icmp eq ptr %.08.i.i.us14, %3
  br i1 %.not.i.i.us15, label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us17, label %bb.g

bb.g:                                             ; preds = %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit.us
  %i.ax = load double, ptr %.08.i.i.us14, align 8, !tbaa !52
  %i.ay = load double, ptr %.pn.i.i.us13, align 8, !tbaa !52
  %i.az = fcmp olt double %i.ax, %i.ay
  br i1 %i.az, label %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us16, label %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit.us, !llvm.loop !82

_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us16: ; preds = %bb.g
  %i.ba = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ba) ; 0 uses
  %.pre22 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us17

_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us17: ; preds = %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit.us, %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us16
  %i.bc = phi i32 [ %.pre22, %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us16 ], [ %i.ar, %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit.us ] ; 2 uses
  %i.bd = add nuw nsw i32 %.010.us11, 1           ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.bc
  br i1 %i.be, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us12, label %._crit_edge, !llvm.loop !83

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit
  %i.bf = phi i32 [ %i.bx, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit ], [ %i.c, %.lr.ph.i.preheader.preheader ]
  %.010 = phi i32 [ %i.by, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond71, label %.lr.ph.i.preheader74, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.bg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.bg ; 2 uses
  %next.gep50 = getelementptr i8, ptr %0, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep50, align 8, !tbaa !32
  %wide.load51 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !32
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !32
  store <2 x i64> %wide.load51, ptr %i.bi, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i8.preheader, label %.lr.ph.i.preheader74

.lr.ph.i.preheader74:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.ap, %middle.block ]
  %.046.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader74, %.lr.ph.i
  %.07.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader74 ] ; 2 uses
  %.046.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.046.i.ph, %.lr.ph.i.preheader74 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.bm = load i64, ptr %.046.i, align 8, !tbaa !32
  store i64 %i.bm, ptr %.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.bk, %1
  br i1 %.not.i, label %.lr.ph.i8.preheader, label %.lr.ph.i, !llvm.loop !89

.lr.ph.i8.preheader:                              ; preds = %.lr.ph.i, %middle.block
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8.preheader, %.critedge.i
  %.01622.i = phi ptr [ %.016.i, %.critedge.i ], [ %.01620.i, %.lr.ph.i8.preheader ] ; 3 uses
  %i.bn = load i64, ptr %.01622.i, align 8, !tbaa !32 ; 2 uses
  %i.bo = bitcast i64 %i.bn to double
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i8
  %.019.i = phi ptr [ %.01622.i, %.lr.ph.i8 ], [ %i.bp, %bb.i ] ; 3 uses
  %i.bp = getelementptr i8, ptr %.019.i, i64 -8   ; 3 uses
  %i.bq = load double, ptr %i.bp, align 8         ; 2 uses
  %i.br = fcmp ogt double %i.bq, %i.bo
  br i1 %i.br, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  store double %i.bq, ptr %.019.i, align 8, !tbaa !32
  %.not17.i = icmp eq ptr %i.bp, %2
  br i1 %.not17.i, label %.critedge.i, label %bb.h, !llvm.loop !86

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %.015.lcssa.i = phi ptr [ %2, %bb.i ], [ %.019.i, %bb.h ]
  store i64 %i.bn, ptr %.015.lcssa.i, align 8, !tbaa !32
  %.016.i = getelementptr inbounds nuw i8, ptr %.01622.i, i64 8 ; 2 uses
  %.not.i9 = icmp eq ptr %.016.i, %3
  br i1 %.not.i9, label %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit, label %.lr.ph.i8, !llvm.loop !87

_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit: ; preds = %.critedge.i, %bb.j
  %.pn.i.i = phi ptr [ %.08.i.i, %bb.j ], [ %2, %.critedge.i ] ; 2 uses
  %.08.i.i = getelementptr i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.08.i.i, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit
  %i.bs = load double, ptr %.08.i.i, align 8, !tbaa !52
  %i.bt = load double, ptr %.pn.i.i, align 8, !tbaa !52
  %i.bu = fcmp olt double %i.bs, %i.bt
  br i1 %i.bu, label %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i, label %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit, !llvm.loop !82

_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i: ; preds = %bb.j
  %i.bv = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.bv) ; 0 uses
  %.pre = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit

_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit: ; preds = %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit, %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i
  %i.bx = phi i32 [ %.pre, %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i ], [ %i.bf, %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit ] ; 2 uses
  %i.by = add nuw nsw i32 %.010, 1                ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bx
  br i1 %i.bz, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us17, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64                     ; 2 uses
  %9 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4 ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1                   ; 2 uses
  %.sroa.010.017.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.not18.i = icmp eq ptr %.sroa.010.017.i, %3
  br i1 %.not18.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not6.i, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us.us, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph.split.us
  %10 = add i64 %7, -8
  %i.e = sub i64 %10, %6                          ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check64 = icmp ult i64 %i.e, 24
  %i.h = sub i64 %8, %i.b
  %diff.check62 = icmp ugt i64 %i.h, -32
  %or.cond = select i1 %min.iters.check64, i1 true, i1 %diff.check62
  %n.vec67 = and i64 %i.g, 4611686018427387900    ; 3 uses
  %i.i = shl i64 %n.vec67, 3                      ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %2, i64 %i.i
  %cmp.n76 = icmp eq i64 %i.g, %n.vec67
  br label %.lr.ph.i.preheader.us

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us.us: ; preds = %.lr.ph.split.us, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us.us
  %i.l = phi i32 [ %i.s, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us.us ], [ %i.c, %.lr.ph.split.us ]
  %.015.us.us = phi i32 [ %i.t, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us.us ], [ 0, %.lr.ph.split.us ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us.us
  %.sroa.04.0.i.i.us.us = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us.us ], [ %i.m, %bb.c ] ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.04.0.i.i.us.us, i64 8 ; 3 uses
  %.not.i.i.us.us = icmp eq ptr %i.m, %3
  br i1 %.not.i.i.us.us, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load double, ptr %i.m, align 8, !tbaa !52
  %i.o = load double, ptr %.sroa.04.0.i.i.us.us, align 8, !tbaa !52
  %i.p = fcmp olt double %i.n, %i.o
  br i1 %i.p, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us.us, label %bb.b, !llvm.loop !90

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us.us: ; preds = %bb.c
  %i.q = load i32, ptr @current_test, align 4, !tbaa !4
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.q) ; 0 uses
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us.us

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us.us
  %i.s = phi i32 [ %.pre28, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us.us ], [ %i.l, %bb.b ] ; 2 uses
  %i.t = add nuw nsw i32 %.015.us.us, 1           ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.s
  br i1 %i.u, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us.us, label %._crit_edge, !llvm.loop !91

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us
  %i.v = phi i32 [ %i.aj, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us ], [ %i.c, %.lr.ph.i.preheader.us.preheader ]
  %.015.us = phi i32 [ %i.ak, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us ], [ 0, %.lr.ph.i.preheader.us.preheader ]
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body68

vector.body68:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body68
  %index69 = phi i64 [ %index.next74, %vector.body68 ], [ 0, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.w = shl i64 %index69, 3                      ; 2 uses
  %next.gep70 = getelementptr i8, ptr %0, i64 %i.w ; 2 uses
  %next.gep71 = getelementptr i8, ptr %2, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep70, i64 16
  %wide.load72 = load <2 x i64>, ptr %next.gep70, align 8, !tbaa !32
  %wide.load73 = load <2 x i64>, ptr %i.x, align 8, !tbaa !32
  %i.y = getelementptr i8, ptr %next.gep71, i64 16
  store <2 x i64> %wide.load72, ptr %next.gep71, align 8, !tbaa !32
  store <2 x i64> %wide.load73, ptr %i.y, align 8, !tbaa !32
  %index.next74 = add nuw i64 %index69, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.z, label %middle.block75, label %vector.body68, !llvm.loop !92

middle.block75:                                   ; preds = %vector.body68
  br i1 %cmp.n76, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader.us, %middle.block75
  %.sroa.05.08.i.us.ph = phi ptr [ %0, %.lr.ph.i.preheader.us ], [ %i.j, %middle.block75 ]
  %.sroa.03.07.i.us.ph = phi ptr [ %2, %.lr.ph.i.preheader.us ], [ %i.k, %middle.block75 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.sroa.05.08.i.us = phi ptr [ %i.aa, %.lr.ph.i.us ], [ %.sroa.05.08.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %.sroa.03.07.i.us = phi ptr [ %i.ab, %.lr.ph.i.us ], [ %.sroa.03.07.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.us, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.us, i64 8
  %i.ac = load i64, ptr %.sroa.05.08.i.us, align 8, !tbaa !32
  store i64 %i.ac, ptr %.sroa.03.07.i.us, align 8, !tbaa !32
  %.not.i.us = icmp eq ptr %i.aa, %1
  br i1 %.not.i.us, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us, !llvm.loop !93

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us.preheader: ; preds = %.lr.ph.i.us, %middle.block75
  br label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us: ; preds = %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us.preheader, %bb.d
  %.sroa.04.0.i.i.us = phi ptr [ %i.ad, %bb.d ], [ %2, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us.preheader ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.sroa.04.0.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.ad, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us, label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !52
  %i.af = load double, ptr %.sroa.04.0.i.i.us, align 8, !tbaa !52
  %i.ag = fcmp olt double %i.ae, %i.af
  br i1 %i.ag, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us, !llvm.loop !90

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us: ; preds = %bb.d
  %i.ah = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ah) ; 0 uses
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us: ; preds = %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us
  %i.aj = phi i32 [ %.pre27, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us ], [ %i.v, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us ] ; 2 uses
  %i.ak = add nuw nsw i32 %.015.us, 1             ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.aj
  br i1 %i.al, label %.lr.ph.i.preheader.us, label %._crit_edge, !llvm.loop !91

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not6.i, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us17, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph.split
  %11 = add i64 %9, -8
  %i.am = sub i64 %11, %8                         ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 24
  %i.ap = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond79 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %2, i64 %i.aq
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us17: ; preds = %.lr.ph.split, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us21
  %i.at = phi i32 [ %i.bf, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us21 ], [ %i.c, %.lr.ph.split ]
  %.015.us16 = phi i32 [ %i.bg, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us21 ], [ 0, %.lr.ph.split ]
  br label %.lr.ph.i13.us

.lr.ph.i13.us:                                    ; preds = %.critedge.i.us, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us17
  %.sroa.010.019.i.us = phi ptr [ %.sroa.010.0.i.us, %.critedge.i.us ], [ %.sroa.010.017.i, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us17 ] ; 3 uses
  %i.au = load i64, ptr %.sroa.010.019.i.us, align 8, !tbaa !32 ; 2 uses
  %i.av = bitcast i64 %i.au to double
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i13.us
  %.sroa.0.016.i.us = phi ptr [ %.sroa.010.019.i.us, %.lr.ph.i13.us ], [ %i.aw, %bb.f ] ; 3 uses
  %i.aw = getelementptr i8, ptr %.sroa.0.016.i.us, i64 -8 ; 3 uses
  %i.ax = load double, ptr %i.aw, align 8         ; 2 uses
  %i.ay = fcmp ogt double %i.ax, %i.av
  br i1 %i.ay, label %bb.f, label %.critedge.i.us

bb.f:                                             ; preds = %bb.e
  store double %i.ax, ptr %.sroa.0.016.i.us, align 8, !tbaa !32
  %.not14.i.us = icmp eq ptr %i.aw, %2
  br i1 %.not14.i.us, label %.critedge.i.us, label %bb.e, !llvm.loop !94

.critedge.i.us:                                   ; preds = %bb.f, %bb.e
  %.sroa.05.0.lcssa.i.us = phi ptr [ %2, %bb.f ], [ %.sroa.0.016.i.us, %bb.e ]
  store i64 %i.au, ptr %.sroa.05.0.lcssa.i.us, align 8, !tbaa !32
  %.sroa.010.0.i.us = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i.us, i64 8 ; 2 uses
  %.not.i14.us = icmp eq ptr %.sroa.010.0.i.us, %3
  br i1 %.not.i14.us, label %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit.us, label %.lr.ph.i13.us, !llvm.loop !95

_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit.us: ; preds = %.critedge.i.us, %bb.g
  %.sroa.04.0.i.i.us18 = phi ptr [ %i.az, %bb.g ], [ %2, %.critedge.i.us ] ; 2 uses
  %i.az = getelementptr i8, ptr %.sroa.04.0.i.i.us18, i64 8 ; 3 uses
  %.not.i.i.us19 = icmp eq ptr %i.az, %3
  br i1 %.not.i.i.us19, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us21, label %bb.g

bb.g:                                             ; preds = %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit.us
  %i.ba = load double, ptr %i.az, align 8, !tbaa !52
  %i.bb = load double, ptr %.sroa.04.0.i.i.us18, align 8, !tbaa !52
  %i.bc = fcmp olt double %i.ba, %i.bb
  br i1 %i.bc, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us20, label %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit.us, !llvm.loop !90

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us20: ; preds = %bb.g
  %i.bd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.bd) ; 0 uses
  %.pre26 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us21

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us21: ; preds = %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit.us, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us20
  %i.bf = phi i32 [ %.pre26, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us20 ], [ %i.at, %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit.us ] ; 2 uses
  %i.bg = add nuw nsw i32 %.015.us16, 1           ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.bf
  br i1 %i.bh, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us17, label %._crit_edge, !llvm.loop !91

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit
  %i.bi = phi i32 [ %i.cb, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit ], [ %i.c, %.lr.ph.i.preheader.preheader ]
  %.015 = phi i32 [ %i.cc, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond79, label %.lr.ph.i.preheader82, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bj ; 2 uses
  %next.gep58 = getelementptr i8, ptr %2, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load59 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !32
  %i.bl = getelementptr i8, ptr %next.gep58, i64 16
  store <2 x i64> %wide.load, ptr %next.gep58, align 8, !tbaa !32
  store <2 x i64> %wide.load59, ptr %i.bl, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i13.preheader, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.05.08.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.ar, %middle.block ]
  %.sroa.03.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.sroa.05.08.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %.sroa.05.08.i.ph, %.lr.ph.i.preheader82 ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %.sroa.03.07.i.ph, %.lr.ph.i.preheader82 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8
  %i.bp = load i64, ptr %.sroa.05.08.i, align 8, !tbaa !32
  store i64 %i.bp, ptr %.sroa.03.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.bn, %1
  br i1 %.not.i, label %.lr.ph.i13.preheader, label %.lr.ph.i, !llvm.loop !97

.lr.ph.i13.preheader:                             ; preds = %.lr.ph.i, %middle.block
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13.preheader, %.critedge.i
  %.sroa.010.019.i = phi ptr [ %.sroa.010.0.i, %.critedge.i ], [ %.sroa.010.017.i, %.lr.ph.i13.preheader ] ; 3 uses
  %i.bq = load i64, ptr %.sroa.010.019.i, align 8, !tbaa !32 ; 2 uses
  %i.br = bitcast i64 %i.bq to double
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i13
  %.sroa.0.016.i = phi ptr [ %.sroa.010.019.i, %.lr.ph.i13 ], [ %i.bs, %bb.i ] ; 3 uses
  %i.bs = getelementptr i8, ptr %.sroa.0.016.i, i64 -8 ; 3 uses
  %i.bt = load double, ptr %i.bs, align 8         ; 2 uses
  %i.bu = fcmp ogt double %i.bt, %i.br
  br i1 %i.bu, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  store double %i.bt, ptr %.sroa.0.016.i, align 8, !tbaa !32
  %.not14.i = icmp eq ptr %i.bs, %2
  br i1 %.not14.i, label %.critedge.i, label %bb.h, !llvm.loop !94

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %.sroa.05.0.lcssa.i = phi ptr [ %2, %bb.i ], [ %.sroa.0.016.i, %bb.h ]
  store i64 %i.bq, ptr %.sroa.05.0.lcssa.i, align 8, !tbaa !32
  %.sroa.010.0.i = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i, i64 8 ; 2 uses
  %.not.i14 = icmp eq ptr %.sroa.010.0.i, %3
  br i1 %.not.i14, label %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit, label %.lr.ph.i13, !llvm.loop !95

_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit: ; preds = %.critedge.i, %bb.j
  %.sroa.04.0.i.i = phi ptr [ %i.bv, %bb.j ], [ %2, %.critedge.i ] ; 2 uses
  %i.bv = getelementptr i8, ptr %.sroa.04.0.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bv, %3
  br i1 %.not.i.i, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !52
  %i.bx = load double, ptr %.sroa.04.0.i.i, align 8, !tbaa !52
  %i.by = fcmp olt double %i.bw, %i.bx
  br i1 %i.by, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i, label %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit, !llvm.loop !90

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i: ; preds = %bb.j
  %i.bz = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.bz) ; 0 uses
  %.pre = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit: ; preds = %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i
  %i.cb = phi i32 [ %.pre, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i ], [ %i.bi, %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit ] ; 2 uses
  %i.cc = add nuw nsw i32 %.015, 1                ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.cb
  br i1 %i.cd, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us21, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64                     ; 2 uses
  %9 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4 ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not5.i = icmp eq ptr %0, %1                   ; 2 uses
  %.01620.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.not21.i = icmp eq ptr %.01620.i, %3
  br i1 %.not21.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not5.i, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us.us, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph.split.us
  %10 = add i64 %7, -8
  %i.e = sub i64 %10, %6                          ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.e, 24
  %i.h = sub i64 %8, %i.b
  %diff.check54 = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check56, %diff.check54
  %n.vec59 = and i64 %i.g, 4611686018427387900    ; 3 uses
  %i.i = shl i64 %n.vec59, 3                      ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 %i.i
  %cmp.n68 = icmp eq i64 %i.g, %n.vec59
  br label %.lr.ph.i.preheader.us

_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us.us: ; preds = %.lr.ph.split.us, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us.us
  %i.l = phi i32 [ %i.r, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us.us ], [ %i.c, %.lr.ph.split.us ]
  %.010.us.us = phi i32 [ %i.s, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us.us ], [ 0, %.lr.ph.split.us ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us.us
  %.pn.i.i.us.us = phi ptr [ %2, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us.us ], [ %.08.i.i.us.us, %bb.c ] ; 2 uses
  %.08.i.i.us.us = getelementptr i8, ptr %.pn.i.i.us.us, i64 8 ; 3 uses
  %.not.i.i.us.us = icmp eq ptr %.08.i.i.us.us, %3
  br i1 %.not.i.i.us.us, label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %.08.i.i.us.us, align 8, !tbaa !52
  %i.n = load double, ptr %.pn.i.i.us.us, align 8, !tbaa !52
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us.us, label %bb.b, !llvm.loop !98

_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us.us: ; preds = %bb.c
  %i.p = load i32, ptr @current_test, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.p) ; 0 uses
  %.pre24 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us.us

_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us.us
  %i.r = phi i32 [ %.pre24, %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us.us ], [ %i.l, %bb.b ] ; 2 uses
  %i.s = add nuw nsw i32 %.010.us.us, 1           ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us.us, label %._crit_edge, !llvm.loop !99

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us
  %i.u = phi i32 [ %i.ah, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us ], [ %i.c, %.lr.ph.i.preheader.us.preheader ]
  %.010.us = phi i32 [ %i.ai, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us ], [ 0, %.lr.ph.i.preheader.us.preheader ]
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body60

vector.body60:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body60
  %index61 = phi i64 [ %index.next66, %vector.body60 ], [ 0, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.v = shl i64 %index61, 3                      ; 2 uses
  %next.gep62 = getelementptr i8, ptr %2, i64 %i.v ; 2 uses
  %next.gep63 = getelementptr i8, ptr %0, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load64 = load <2 x i64>, ptr %next.gep63, align 8, !tbaa !32
  %wide.load65 = load <2 x i64>, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr i8, ptr %next.gep62, i64 16
  store <2 x i64> %wide.load64, ptr %next.gep62, align 8, !tbaa !32
  store <2 x i64> %wide.load65, ptr %i.x, align 8, !tbaa !32
  %index.next66 = add nuw i64 %index61, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.y, label %middle.block67, label %vector.body60, !llvm.loop !100

middle.block67:                                   ; preds = %vector.body60
  br i1 %cmp.n68, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader.us, %middle.block67
  %.07.i.us.ph = phi ptr [ %2, %.lr.ph.i.preheader.us ], [ %i.j, %middle.block67 ]
  %.046.i.us.ph = phi ptr [ %0, %.lr.ph.i.preheader.us ], [ %i.k, %middle.block67 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.07.i.us = phi ptr [ %i.aa, %.lr.ph.i.us ], [ %.07.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %.046.i.us = phi ptr [ %i.z, %.lr.ph.i.us ], [ %.046.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.046.i.us, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i.us, i64 8
  %i.ab = load i64, ptr %.046.i.us, align 8, !tbaa !32
  store i64 %i.ab, ptr %.07.i.us, align 8, !tbaa !32
  %.not.i.us = icmp eq ptr %i.z, %1
  br i1 %.not.i.us, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us, !llvm.loop !101

_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us.preheader: ; preds = %.lr.ph.i.us, %middle.block67
  br label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us

_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us: ; preds = %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us.preheader, %bb.d
  %.pn.i.i.us = phi ptr [ %.08.i.i.us, %bb.d ], [ %2, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us.preheader ] ; 2 uses
  %.08.i.i.us = getelementptr i8, ptr %.pn.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.08.i.i.us, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us, label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us
  %i.ac = load double, ptr %.08.i.i.us, align 8, !tbaa !52
  %i.ad = load double, ptr %.pn.i.i.us, align 8, !tbaa !52
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us, !llvm.loop !98

_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us: ; preds = %bb.d
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.af) ; 0 uses
  %.pre23 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us

_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us: ; preds = %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us, %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us
  %i.ah = phi i32 [ %.pre23, %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us ], [ %i.u, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us ] ; 2 uses
  %i.ai = add nuw nsw i32 %.010.us, 1             ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.lr.ph.i.preheader.us, label %._crit_edge, !llvm.loop !99

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not5.i, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us12, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph.split
  %11 = add i64 %9, -8
  %i.ak = sub i64 %11, %8                         ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  %i.an = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond71 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %2, i64 %i.ao
  %i.aq = getelementptr i8, ptr %0, i64 %i.ao
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us12: ; preds = %.lr.ph.split, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us17
  %i.ar = phi i32 [ %i.bc, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us17 ], [ %i.c, %.lr.ph.split ]
  %.010.us11 = phi i32 [ %i.bd, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us17 ], [ 0, %.lr.ph.split ]
  br label %.lr.ph.i8.us

.lr.ph.i8.us:                                     ; preds = %.critedge.i.us, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us12
  %.01622.i.us = phi ptr [ %.016.i.us, %.critedge.i.us ], [ %.01620.i, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us12 ] ; 3 uses
  %i.as = load i64, ptr %.01622.i.us, align 8, !tbaa !32 ; 2 uses
  %i.at = bitcast i64 %i.as to double
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i8.us
  %.019.i.us = phi ptr [ %.01622.i.us, %.lr.ph.i8.us ], [ %i.au, %bb.f ] ; 3 uses
  %i.au = getelementptr i8, ptr %.019.i.us, i64 -8 ; 3 uses
  %i.av = load double, ptr %i.au, align 8         ; 2 uses
  %i.aw = fcmp ogt double %i.av, %i.at
  br i1 %i.aw, label %bb.f, label %.critedge.i.us

bb.f:                                             ; preds = %bb.e
  store double %i.av, ptr %.019.i.us, align 8, !tbaa !32
  %.not17.i.us = icmp eq ptr %i.au, %2
  br i1 %.not17.i.us, label %.critedge.i.us, label %bb.e, !llvm.loop !102

.critedge.i.us:                                   ; preds = %bb.f, %bb.e
  %.015.lcssa.i.us = phi ptr [ %2, %bb.f ], [ %.019.i.us, %bb.e ]
  store i64 %i.as, ptr %.015.lcssa.i.us, align 8, !tbaa !32
  %.016.i.us = getelementptr inbounds nuw i8, ptr %.01622.i.us, i64 8 ; 2 uses
  %.not.i9.us = icmp eq ptr %.016.i.us, %3
  br i1 %.not.i9.us, label %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit.us, label %.lr.ph.i8.us, !llvm.loop !103

_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit.us: ; preds = %.critedge.i.us, %bb.g
  %.pn.i.i.us13 = phi ptr [ %.08.i.i.us14, %bb.g ], [ %2, %.critedge.i.us ] ; 2 uses
  %.08.i.i.us14 = getelementptr i8, ptr %.pn.i.i.us13, i64 8 ; 3 uses
  %.not.i.i.us15 = icmp eq ptr %.08.i.i.us14, %3
  br i1 %.not.i.i.us15, label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us17, label %bb.g

bb.g:                                             ; preds = %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit.us
  %i.ax = load double, ptr %.08.i.i.us14, align 8, !tbaa !52
  %i.ay = load double, ptr %.pn.i.i.us13, align 8, !tbaa !52
  %i.az = fcmp olt double %i.ax, %i.ay
  br i1 %i.az, label %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us16, label %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit.us, !llvm.loop !98

_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us16: ; preds = %bb.g
  %i.ba = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ba) ; 0 uses
  %.pre22 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us17

_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us17: ; preds = %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit.us, %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us16
  %i.bc = phi i32 [ %.pre22, %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us16 ], [ %i.ar, %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit.us ] ; 2 uses
  %i.bd = add nuw nsw i32 %.010.us11, 1           ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.bc
  br i1 %i.be, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us12, label %._crit_edge, !llvm.loop !99

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit
  %i.bf = phi i32 [ %i.bx, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit ], [ %i.c, %.lr.ph.i.preheader.preheader ]
  %.010 = phi i32 [ %i.by, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond71, label %.lr.ph.i.preheader74, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.bg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.bg ; 2 uses
  %next.gep50 = getelementptr i8, ptr %0, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep50, align 8, !tbaa !32
  %wide.load51 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !32
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !32
  store <2 x i64> %wide.load51, ptr %i.bi, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i8.preheader, label %.lr.ph.i.preheader74

.lr.ph.i.preheader74:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.ap, %middle.block ]
  %.046.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader74, %.lr.ph.i
  %.07.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader74 ] ; 2 uses
  %.046.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.046.i.ph, %.lr.ph.i.preheader74 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.bm = load i64, ptr %.046.i, align 8, !tbaa !32
  store i64 %i.bm, ptr %.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.bk, %1
  br i1 %.not.i, label %.lr.ph.i8.preheader, label %.lr.ph.i, !llvm.loop !105

.lr.ph.i8.preheader:                              ; preds = %.lr.ph.i, %middle.block
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8.preheader, %.critedge.i
  %.01622.i = phi ptr [ %.016.i, %.critedge.i ], [ %.01620.i, %.lr.ph.i8.preheader ] ; 3 uses
  %i.bn = load i64, ptr %.01622.i, align 8, !tbaa !32 ; 2 uses
  %i.bo = bitcast i64 %i.bn to double
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i8
  %.019.i = phi ptr [ %.01622.i, %.lr.ph.i8 ], [ %i.bp, %bb.i ] ; 3 uses
  %i.bp = getelementptr i8, ptr %.019.i, i64 -8   ; 3 uses
  %i.bq = load double, ptr %i.bp, align 8         ; 2 uses
  %i.br = fcmp ogt double %i.bq, %i.bo
  br i1 %i.br, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  store double %i.bq, ptr %.019.i, align 8, !tbaa !32
  %.not17.i = icmp eq ptr %i.bp, %2
  br i1 %.not17.i, label %.critedge.i, label %bb.h, !llvm.loop !102

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %.015.lcssa.i = phi ptr [ %2, %bb.i ], [ %.019.i, %bb.h ]
  store i64 %i.bn, ptr %.015.lcssa.i, align 8, !tbaa !32
  %.016.i = getelementptr inbounds nuw i8, ptr %.01622.i, i64 8 ; 2 uses
  %.not.i9 = icmp eq ptr %.016.i, %3
  br i1 %.not.i9, label %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit, label %.lr.ph.i8, !llvm.loop !103

_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit: ; preds = %.critedge.i, %bb.j
  %.pn.i.i = phi ptr [ %.08.i.i, %bb.j ], [ %2, %.critedge.i ] ; 2 uses
  %.08.i.i = getelementptr i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.08.i.i, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit
  %i.bs = load double, ptr %.08.i.i, align 8, !tbaa !52
  %i.bt = load double, ptr %.pn.i.i, align 8, !tbaa !52
  %i.bu = fcmp olt double %i.bs, %i.bt
  br i1 %i.bu, label %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i, label %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit, !llvm.loop !98

_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i: ; preds = %bb.j
  %i.bv = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.bv) ; 0 uses
  %.pre = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit

_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit: ; preds = %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit, %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i
  %i.bx = phi i32 [ %.pre, %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i ], [ %i.bf, %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit ] ; 2 uses
  %i.by = add nuw nsw i32 %.010, 1                ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bx
  br i1 %i.bz, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us17, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64                     ; 2 uses
  %9 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4 ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1                   ; 2 uses
  %.sroa.010.017.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.not18.i = icmp eq ptr %.sroa.010.017.i, %3
  br i1 %.not18.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not6.i, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us.us, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph.split.us
  %10 = add i64 %7, -8
  %i.e = sub i64 %10, %6                          ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check64 = icmp ult i64 %i.e, 24
  %i.h = sub i64 %8, %i.b
  %diff.check62 = icmp ugt i64 %i.h, -32
  %or.cond = select i1 %min.iters.check64, i1 true, i1 %diff.check62
  %n.vec67 = and i64 %i.g, 4611686018427387900    ; 3 uses
  %i.i = shl i64 %n.vec67, 3                      ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %2, i64 %i.i
  %cmp.n76 = icmp eq i64 %i.g, %n.vec67
  br label %.lr.ph.i.preheader.us

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us.us: ; preds = %.lr.ph.split.us, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us.us
  %i.l = phi i32 [ %i.s, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us.us ], [ %i.c, %.lr.ph.split.us ]
  %.015.us.us = phi i32 [ %i.t, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us.us ], [ 0, %.lr.ph.split.us ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us.us
  %.sroa.04.0.i.i.us.us = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us.us ], [ %i.m, %bb.c ] ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.04.0.i.i.us.us, i64 8 ; 3 uses
  %.not.i.i.us.us = icmp eq ptr %i.m, %3
  br i1 %.not.i.i.us.us, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load double, ptr %i.m, align 8, !tbaa !52
  %i.o = load double, ptr %.sroa.04.0.i.i.us.us, align 8, !tbaa !52
  %i.p = fcmp olt double %i.n, %i.o
  br i1 %i.p, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us.us, label %bb.b, !llvm.loop !106

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us.us: ; preds = %bb.c
  %i.q = load i32, ptr @current_test, align 4, !tbaa !4
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.q) ; 0 uses
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us.us

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us.us
  %i.s = phi i32 [ %.pre28, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us.us ], [ %i.l, %bb.b ] ; 2 uses
  %i.t = add nuw nsw i32 %.015.us.us, 1           ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.s
  br i1 %i.u, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us.us, label %._crit_edge, !llvm.loop !107

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us
  %i.v = phi i32 [ %i.aj, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us ], [ %i.c, %.lr.ph.i.preheader.us.preheader ]
  %.015.us = phi i32 [ %i.ak, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us ], [ 0, %.lr.ph.i.preheader.us.preheader ]
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body68

vector.body68:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body68
  %index69 = phi i64 [ %index.next74, %vector.body68 ], [ 0, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.w = shl i64 %index69, 3                      ; 2 uses
  %next.gep70 = getelementptr i8, ptr %0, i64 %i.w ; 2 uses
  %next.gep71 = getelementptr i8, ptr %2, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep70, i64 16
  %wide.load72 = load <2 x i64>, ptr %next.gep70, align 8, !tbaa !32
  %wide.load73 = load <2 x i64>, ptr %i.x, align 8, !tbaa !32
  %i.y = getelementptr i8, ptr %next.gep71, i64 16
  store <2 x i64> %wide.load72, ptr %next.gep71, align 8, !tbaa !32
  store <2 x i64> %wide.load73, ptr %i.y, align 8, !tbaa !32
  %index.next74 = add nuw i64 %index69, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.z, label %middle.block75, label %vector.body68, !llvm.loop !108

middle.block75:                                   ; preds = %vector.body68
  br i1 %cmp.n76, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader.us, %middle.block75
  %.sroa.05.08.i.us.ph = phi ptr [ %0, %.lr.ph.i.preheader.us ], [ %i.j, %middle.block75 ]
  %.sroa.03.07.i.us.ph = phi ptr [ %2, %.lr.ph.i.preheader.us ], [ %i.k, %middle.block75 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.sroa.05.08.i.us = phi ptr [ %i.aa, %.lr.ph.i.us ], [ %.sroa.05.08.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %.sroa.03.07.i.us = phi ptr [ %i.ab, %.lr.ph.i.us ], [ %.sroa.03.07.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.us, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.us, i64 8
  %i.ac = load i64, ptr %.sroa.05.08.i.us, align 8, !tbaa !32
  store i64 %i.ac, ptr %.sroa.03.07.i.us, align 8, !tbaa !32
  %.not.i.us = icmp eq ptr %i.aa, %1
  br i1 %.not.i.us, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us, !llvm.loop !109

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us.preheader: ; preds = %.lr.ph.i.us, %middle.block75
  br label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us: ; preds = %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us.preheader, %bb.d
  %.sroa.04.0.i.i.us = phi ptr [ %i.ad, %bb.d ], [ %2, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us.preheader ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.sroa.04.0.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.ad, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us, label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !52
  %i.af = load double, ptr %.sroa.04.0.i.i.us, align 8, !tbaa !52
  %i.ag = fcmp olt double %i.ae, %i.af
  br i1 %i.ag, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us, !llvm.loop !106

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us: ; preds = %bb.d
  %i.ah = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ah) ; 0 uses
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us: ; preds = %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us
  %i.aj = phi i32 [ %.pre27, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us ], [ %i.v, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us ] ; 2 uses
  %i.ak = add nuw nsw i32 %.015.us, 1             ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.aj
  br i1 %i.al, label %.lr.ph.i.preheader.us, label %._crit_edge, !llvm.loop !107

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not6.i, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us17, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph.split
  %11 = add i64 %9, -8
  %i.am = sub i64 %11, %8                         ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 24
  %i.ap = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond79 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %2, i64 %i.aq
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us17: ; preds = %.lr.ph.split, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us21
  %i.at = phi i32 [ %i.bf, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us21 ], [ %i.c, %.lr.ph.split ]
  %.015.us16 = phi i32 [ %i.bg, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us21 ], [ 0, %.lr.ph.split ]
  br label %.lr.ph.i13.us

.lr.ph.i13.us:                                    ; preds = %.critedge.i.us, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us17
  %.sroa.010.019.i.us = phi ptr [ %.sroa.010.0.i.us, %.critedge.i.us ], [ %.sroa.010.017.i, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us17 ] ; 3 uses
  %i.au = load i64, ptr %.sroa.010.019.i.us, align 8, !tbaa !32 ; 2 uses
  %i.av = bitcast i64 %i.au to double
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i13.us
  %.sroa.0.016.i.us = phi ptr [ %.sroa.010.019.i.us, %.lr.ph.i13.us ], [ %i.aw, %bb.f ] ; 3 uses
  %i.aw = getelementptr i8, ptr %.sroa.0.016.i.us, i64 -8 ; 3 uses
  %i.ax = load double, ptr %i.aw, align 8         ; 2 uses
  %i.ay = fcmp ogt double %i.ax, %i.av
  br i1 %i.ay, label %bb.f, label %.critedge.i.us

bb.f:                                             ; preds = %bb.e
  store double %i.ax, ptr %.sroa.0.016.i.us, align 8, !tbaa !32
  %.not14.i.us = icmp eq ptr %i.aw, %2
  br i1 %.not14.i.us, label %.critedge.i.us, label %bb.e, !llvm.loop !110

.critedge.i.us:                                   ; preds = %bb.f, %bb.e
  %.sroa.05.0.lcssa.i.us = phi ptr [ %2, %bb.f ], [ %.sroa.0.016.i.us, %bb.e ]
  store i64 %i.au, ptr %.sroa.05.0.lcssa.i.us, align 8, !tbaa !32
  %.sroa.010.0.i.us = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i.us, i64 8 ; 2 uses
  %.not.i14.us = icmp eq ptr %.sroa.010.0.i.us, %3
  br i1 %.not.i14.us, label %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit.us, label %.lr.ph.i13.us, !llvm.loop !111

_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit.us: ; preds = %.critedge.i.us, %bb.g
  %.sroa.04.0.i.i.us18 = phi ptr [ %i.az, %bb.g ], [ %2, %.critedge.i.us ] ; 2 uses
  %i.az = getelementptr i8, ptr %.sroa.04.0.i.i.us18, i64 8 ; 3 uses
  %.not.i.i.us19 = icmp eq ptr %i.az, %3
  br i1 %.not.i.i.us19, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us21, label %bb.g

bb.g:                                             ; preds = %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit.us
  %i.ba = load double, ptr %i.az, align 8, !tbaa !52
  %i.bb = load double, ptr %.sroa.04.0.i.i.us18, align 8, !tbaa !52
  %i.bc = fcmp olt double %i.ba, %i.bb
  br i1 %i.bc, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us20, label %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit.us, !llvm.loop !106

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us20: ; preds = %bb.g
  %i.bd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.bd) ; 0 uses
  %.pre26 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us21

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us21: ; preds = %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit.us, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us20
  %i.bf = phi i32 [ %.pre26, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us20 ], [ %i.at, %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit.us ] ; 2 uses
  %i.bg = add nuw nsw i32 %.015.us16, 1           ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.bf
  br i1 %i.bh, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us17, label %._crit_edge, !llvm.loop !107

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit
  %i.bi = phi i32 [ %i.cb, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit ], [ %i.c, %.lr.ph.i.preheader.preheader ]
  %.015 = phi i32 [ %i.cc, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond79, label %.lr.ph.i.preheader82, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bj ; 2 uses
  %next.gep58 = getelementptr i8, ptr %2, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load59 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !32
  %i.bl = getelementptr i8, ptr %next.gep58, i64 16
  store <2 x i64> %wide.load, ptr %next.gep58, align 8, !tbaa !32
  store <2 x i64> %wide.load59, ptr %i.bl, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i13.preheader, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.05.08.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.ar, %middle.block ]
  %.sroa.03.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.sroa.05.08.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %.sroa.05.08.i.ph, %.lr.ph.i.preheader82 ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %.sroa.03.07.i.ph, %.lr.ph.i.preheader82 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8
  %i.bp = load i64, ptr %.sroa.05.08.i, align 8, !tbaa !32
  store i64 %i.bp, ptr %.sroa.03.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.bn, %1
  br i1 %.not.i, label %.lr.ph.i13.preheader, label %.lr.ph.i, !llvm.loop !113

.lr.ph.i13.preheader:                             ; preds = %.lr.ph.i, %middle.block
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13.preheader, %.critedge.i
  %.sroa.010.019.i = phi ptr [ %.sroa.010.0.i, %.critedge.i ], [ %.sroa.010.017.i, %.lr.ph.i13.preheader ] ; 3 uses
  %i.bq = load i64, ptr %.sroa.010.019.i, align 8, !tbaa !32 ; 2 uses
  %i.br = bitcast i64 %i.bq to double
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i13
  %.sroa.0.016.i = phi ptr [ %.sroa.010.019.i, %.lr.ph.i13 ], [ %i.bs, %bb.i ] ; 3 uses
  %i.bs = getelementptr i8, ptr %.sroa.0.016.i, i64 -8 ; 3 uses
  %i.bt = load double, ptr %i.bs, align 8         ; 2 uses
  %i.bu = fcmp ogt double %i.bt, %i.br
  br i1 %i.bu, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  store double %i.bt, ptr %.sroa.0.016.i, align 8, !tbaa !32
  %.not14.i = icmp eq ptr %i.bs, %2
  br i1 %.not14.i, label %.critedge.i, label %bb.h, !llvm.loop !110

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %.sroa.05.0.lcssa.i = phi ptr [ %2, %bb.i ], [ %.sroa.0.016.i, %bb.h ]
  store i64 %i.bq, ptr %.sroa.05.0.lcssa.i, align 8, !tbaa !32
  %.sroa.010.0.i = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i, i64 8 ; 2 uses
  %.not.i14 = icmp eq ptr %.sroa.010.0.i, %3
  br i1 %.not.i14, label %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit, label %.lr.ph.i13, !llvm.loop !111

_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit: ; preds = %.critedge.i, %bb.j
  %.sroa.04.0.i.i = phi ptr [ %i.bv, %bb.j ], [ %2, %.critedge.i ] ; 2 uses
  %i.bv = getelementptr i8, ptr %.sroa.04.0.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bv, %3
  br i1 %.not.i.i, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !52
  %i.bx = load double, ptr %.sroa.04.0.i.i, align 8, !tbaa !52
  %i.by = fcmp olt double %i.bw, %i.bx
  br i1 %i.by, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i, label %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit, !llvm.loop !106

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i: ; preds = %bb.j
  %i.bz = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.bz) ; 0 uses
  %.pre = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit: ; preds = %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i
  %i.cb = phi i32 [ %.pre, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i ], [ %i.bi, %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit ] ; 2 uses
  %i.cc = add nuw nsw i32 %.015, 1                ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.cb
  br i1 %i.cd, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us21, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %8 = add i64 %7, -8
  %i.e = sub i64 %8, %6                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 %i.i
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us:      ; preds = %.lr.ph, %_Z13verify_sortedIPdEvT_S1_.exit.us
  %.08.us = phi i32 [ %i.q, %_Z13verify_sortedIPdEvT_S1_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark9quicksortIPddEEvT_S2_(ptr noundef %2, ptr noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us
  %.pn.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us ], [ %.08.i.i.us, %bb.c ] ; 2 uses
  %.08.i.i.us = getelementptr i8, ptr %.pn.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.08.i.i.us, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIPdEvT_S1_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load double, ptr %.08.i.i.us, align 8, !tbaa !32
  %i.m = load double, ptr %.pn.i.i.us, align 8, !tbaa !32
  %i.n = fcmp olt double %i.l, %i.m
  br i1 %i.n, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us, label %bb.b, !llvm.loop !66

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us:     ; preds = %bb.c
  %i.o = load i32, ptr @current_test, align 4, !tbaa !4
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.o) ; 0 uses
  br label %_Z13verify_sortedIPdEvT_S1_.exit.us

_Z13verify_sortedIPdEvT_S1_.exit.us:              ; preds = %bb.b, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us
  %i.q = add nuw nsw i32 %.08.us, 1               ; 2 uses
  %i.r = load i32, ptr @iterations, align 4, !tbaa !4
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us, label %._crit_edge, !llvm.loop !114

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIPdEvT_S1_.exit
  %.08 = phi i32 [ %i.af, %_Z13verify_sortedIPdEvT_S1_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader18, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.t  ; 2 uses
  %next.gep15 = getelementptr i8, ptr %0, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x double>, ptr %next.gep15, align 8, !tbaa !32
  %wide.load16 = load <2 x double>, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !32
  store <2 x double> %wide.load16, ptr %i.v, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit, label %.lr.ph.i.preheader18

.lr.ph.i.preheader18:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.046.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader18, %.lr.ph.i
  %.07.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %.046.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.046.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.y = load double, ptr %.046.i, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store double %i.y, ptr %.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.x, %1
  br i1 %.not.i, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !116

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark9quicksortIPddEEvT_S2_(ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit
  %.pn.i.i = phi ptr [ %2, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit ], [ %.08.i.i, %bb.e ] ; 2 uses
  %.08.i.i = getelementptr i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.08.i.i, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIPdEvT_S1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load double, ptr %.08.i.i, align 8, !tbaa !32
  %i.ab = load double, ptr %.pn.i.i, align 8, !tbaa !32
  %i.ac = fcmp olt double %i.aa, %i.ab
  br i1 %i.ac, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i, label %bb.d, !llvm.loop !66

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i:        ; preds = %bb.e
  %i.ad = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ad) ; 0 uses
  br label %_Z13verify_sortedIPdEvT_S1_.exit

_Z13verify_sortedIPdEvT_S1_.exit:                 ; preds = %bb.d, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i
  %i.af = add nuw nsw i32 %.08, 1                 ; 2 uses
  %i.ag = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %_Z13verify_sortedIPdEvT_S1_.exit, %_Z13verify_sortedIPdEvT_S1_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double noundef %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %8 = add i64 %7, -8
  %i.e = sub i64 %8, %6                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %2, i64 %i.i
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us: ; preds = %.lr.ph, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us
  %.012.us = phi i32 [ %i.r, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_(ptr %2, ptr %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us
  %.sroa.04.0.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us ], [ %i.l, %bb.c ] ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.04.0.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.l, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %i.l, align 8, !tbaa !32
  %i.n = load double, ptr %.sroa.04.0.i.i.us, align 8, !tbaa !32
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us, label %bb.b, !llvm.loop !74

_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us: ; preds = %bb.c
  %i.p = load i32, ptr @current_test, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.p) ; 0 uses
  br label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us

_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us
  %i.r = add nuw nsw i32 %.012.us, 1              ; 2 uses
  %i.s = load i32, ptr @iterations, align 4, !tbaa !4
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us, label %._crit_edge, !llvm.loop !117

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit
  %.012 = phi i32 [ %i.ah, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader24, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.u  ; 2 uses
  %next.gep21 = getelementptr i8, ptr %2, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !32
  %wide.load22 = load <2 x double>, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr i8, ptr %next.gep21, i64 16
  store <2 x double> %wide.load, ptr %next.gep21, align 8, !tbaa !32
  store <2 x double> %wide.load22, ptr %i.w, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit, label %.lr.ph.i.preheader24

.lr.ph.i.preheader24:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.05.08.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.sroa.03.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader24, %.lr.ph.i
  %.sroa.05.08.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.sroa.05.08.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.03.07.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.z = load double, ptr %.sroa.05.08.i, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8
  store double %i.z, ptr %.sroa.03.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !119

_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_(ptr %2, ptr %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit
  %.sroa.04.0.i.i = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.04.0.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, %3
  br i1 %.not.i.i, label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !32
  %i.ad = load double, ptr %.sroa.04.0.i.i, align 8, !tbaa !32
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i, label %bb.d, !llvm.loop !74

_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i: ; preds = %bb.e
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.af) ; 0 uses
  br label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit

_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit: ; preds = %bb.d, %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i
  %i.ah = add nuw nsw i32 %.012, 1                ; 2 uses
  %i.ai = load i32, ptr @iterations, align 4, !tbaa !4
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !117

._crit_edge:                                      ; preds = %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %8 = add i64 %7, -8
  %i.e = sub i64 %8, %6                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 %i.i
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us: ; preds = %.lr.ph, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us
  %.08.us = phi i32 [ %i.q, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_(ptr noundef %2, ptr noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us
  %.pn.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us ], [ %.08.i.i.us, %bb.c ] ; 2 uses
  %.08.i.i.us = getelementptr i8, ptr %.pn.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.08.i.i.us, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load double, ptr %.08.i.i.us, align 8, !tbaa !52
  %i.m = load double, ptr %.pn.i.i.us, align 8, !tbaa !52
  %i.n = fcmp olt double %i.l, %i.m
  br i1 %i.n, label %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us, label %bb.b, !llvm.loop !82

_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us: ; preds = %bb.c
  %i.o = load i32, ptr @current_test, align 4, !tbaa !4
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.o) ; 0 uses
  br label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us

_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us
  %i.q = add nuw nsw i32 %.08.us, 1               ; 2 uses
  %i.r = load i32, ptr @iterations, align 4, !tbaa !4
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us, label %._crit_edge, !llvm.loop !120

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit
  %.08 = phi i32 [ %i.af, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader18, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.t  ; 2 uses
  %next.gep15 = getelementptr i8, ptr %0, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !32
  %wide.load16 = load <2 x i64>, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !32
  store <2 x i64> %wide.load16, ptr %i.v, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit, label %.lr.ph.i.preheader18

.lr.ph.i.preheader18:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.046.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader18, %.lr.ph.i
  %.07.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %.046.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.046.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.z = load i64, ptr %.046.i, align 8, !tbaa !32
  store i64 %i.z, ptr %.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.x, %1
  br i1 %.not.i, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !122

_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_(ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit
  %.pn.i.i = phi ptr [ %2, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit ], [ %.08.i.i, %bb.e ] ; 2 uses
  %.08.i.i = getelementptr i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.08.i.i, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load double, ptr %.08.i.i, align 8, !tbaa !52
  %i.ab = load double, ptr %.pn.i.i, align 8, !tbaa !52
  %i.ac = fcmp olt double %i.aa, %i.ab
  br i1 %i.ac, label %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i, label %bb.d, !llvm.loop !82

_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i: ; preds = %bb.e
  %i.ad = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ad) ; 0 uses
  br label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit

_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit: ; preds = %bb.d, %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i
  %i.af = add nuw nsw i32 %.08, 1                 ; 2 uses
  %i.ag = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %8 = add i64 %7, -8
  %i.e = sub i64 %8, %6                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %2, i64 %i.i
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us: ; preds = %.lr.ph, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us
  %.013.us = phi i32 [ %i.r, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(ptr %2, ptr %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us
  %.sroa.04.0.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us ], [ %i.l, %bb.c ] ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.04.0.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.l, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %i.l, align 8, !tbaa !52
  %i.n = load double, ptr %.sroa.04.0.i.i.us, align 8, !tbaa !52
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us, label %bb.b, !llvm.loop !90

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us: ; preds = %bb.c
  %i.p = load i32, ptr @current_test, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.p) ; 0 uses
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us
  %i.r = add nuw nsw i32 %.013.us, 1              ; 2 uses
  %i.s = load i32, ptr @iterations, align 4, !tbaa !4
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us, label %._crit_edge, !llvm.loop !123

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit
  %.013 = phi i32 [ %i.ah, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader25, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.u  ; 2 uses
  %next.gep22 = getelementptr i8, ptr %2, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load23 = load <2 x i64>, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x i64> %wide.load, ptr %next.gep22, align 8, !tbaa !32
  store <2 x i64> %wide.load23, ptr %i.w, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit, label %.lr.ph.i.preheader25

.lr.ph.i.preheader25:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.05.08.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.sroa.03.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader25, %.lr.ph.i
  %.sroa.05.08.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.sroa.05.08.i.ph, %.lr.ph.i.preheader25 ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.sroa.03.07.i.ph, %.lr.ph.i.preheader25 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8
  %i.aa = load i64, ptr %.sroa.05.08.i, align 8, !tbaa !32
  store i64 %i.aa, ptr %.sroa.03.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !125

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(ptr %2, ptr %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit
  %.sroa.04.0.i.i = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.04.0.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, %3
  br i1 %.not.i.i, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !52
  %i.ad = load double, ptr %.sroa.04.0.i.i, align 8, !tbaa !52
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i, label %bb.d, !llvm.loop !90

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i: ; preds = %bb.e
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.af) ; 0 uses
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit: ; preds = %bb.d, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i
  %i.ah = add nuw nsw i32 %.013, 1                ; 2 uses
  %i.ai = load i32, ptr @iterations, align 4, !tbaa !4
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !123

._crit_edge:                                      ; preds = %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %8 = add i64 %7, -8
  %i.e = sub i64 %8, %6                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 %i.i
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us: ; preds = %.lr.ph, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us
  %.08.us = phi i32 [ %i.q, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(ptr noundef %2, ptr noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us
  %.pn.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us ], [ %.08.i.i.us, %bb.c ] ; 2 uses
  %.08.i.i.us = getelementptr i8, ptr %.pn.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.08.i.i.us, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load double, ptr %.08.i.i.us, align 8, !tbaa !52
  %i.m = load double, ptr %.pn.i.i.us, align 8, !tbaa !52
  %i.n = fcmp olt double %i.l, %i.m
  br i1 %i.n, label %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us, label %bb.b, !llvm.loop !98

_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us: ; preds = %bb.c
  %i.o = load i32, ptr @current_test, align 4, !tbaa !4
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.o) ; 0 uses
  br label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us

_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us
  %i.q = add nuw nsw i32 %.08.us, 1               ; 2 uses
  %i.r = load i32, ptr @iterations, align 4, !tbaa !4
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us, label %._crit_edge, !llvm.loop !126

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit
  %.08 = phi i32 [ %i.af, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader18, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.t  ; 2 uses
  %next.gep15 = getelementptr i8, ptr %0, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !32
  %wide.load16 = load <2 x i64>, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !32
  store <2 x i64> %wide.load16, ptr %i.v, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit, label %.lr.ph.i.preheader18

.lr.ph.i.preheader18:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.046.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader18, %.lr.ph.i
  %.07.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %.046.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.046.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.z = load i64, ptr %.046.i, align 8, !tbaa !32
  store i64 %i.z, ptr %.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.x, %1
  br i1 %.not.i, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !128

_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit
  %.pn.i.i = phi ptr [ %2, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit ], [ %.08.i.i, %bb.e ] ; 2 uses
  %.08.i.i = getelementptr i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.08.i.i, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load double, ptr %.08.i.i, align 8, !tbaa !52
  %i.ab = load double, ptr %.pn.i.i, align 8, !tbaa !52
  %i.ac = fcmp olt double %i.aa, %i.ab
  br i1 %i.ac, label %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i, label %bb.d, !llvm.loop !98

_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i: ; preds = %bb.e
  %i.ad = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ad) ; 0 uses
  br label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit

_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit: ; preds = %bb.d, %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i
  %i.af = add nuw nsw i32 %.08, 1                 ; 2 uses
  %i.ag = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !126

._crit_edge:                                      ; preds = %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %8 = add i64 %7, -8
  %i.e = sub i64 %8, %6                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %2, i64 %i.i
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us: ; preds = %.lr.ph, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us
  %.013.us = phi i32 [ %i.r, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(ptr %2, ptr %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us
  %.sroa.04.0.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us ], [ %i.l, %bb.c ] ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.04.0.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.l, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %i.l, align 8, !tbaa !52
  %i.n = load double, ptr %.sroa.04.0.i.i.us, align 8, !tbaa !52
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us, label %bb.b, !llvm.loop !106

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us: ; preds = %bb.c
  %i.p = load i32, ptr @current_test, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.p) ; 0 uses
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us
  %i.r = add nuw nsw i32 %.013.us, 1              ; 2 uses
  %i.s = load i32, ptr @iterations, align 4, !tbaa !4
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us, label %._crit_edge, !llvm.loop !129

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit
  %.013 = phi i32 [ %i.ah, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader25, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.u  ; 2 uses
  %next.gep22 = getelementptr i8, ptr %2, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load23 = load <2 x i64>, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x i64> %wide.load, ptr %next.gep22, align 8, !tbaa !32
  store <2 x i64> %wide.load23, ptr %i.w, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit, label %.lr.ph.i.preheader25

.lr.ph.i.preheader25:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.05.08.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.sroa.03.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader25, %.lr.ph.i
  %.sroa.05.08.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.sroa.05.08.i.ph, %.lr.ph.i.preheader25 ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.sroa.03.07.i.ph, %.lr.ph.i.preheader25 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8
  %i.aa = load i64, ptr %.sroa.05.08.i, align 8, !tbaa !32
  store i64 %i.aa, ptr %.sroa.03.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !131

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(ptr %2, ptr %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit
  %.sroa.04.0.i.i = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.04.0.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, %3
  br i1 %.not.i.i, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !52
  %i.ad = load double, ptr %.sroa.04.0.i.i, align 8, !tbaa !52
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i, label %bb.d, !llvm.loop !106

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i: ; preds = %bb.e
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.af) ; 0 uses
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit: ; preds = %bb.d, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i
  %i.ah = add nuw nsw i32 %.013, 1                ; 2 uses
  %i.ai = load i32, ptr @iterations, align 4, !tbaa !4
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !129

._crit_edge:                                      ; preds = %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %8 = add i64 %7, -8
  %i.e = sub i64 %8, %6                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 %i.i
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us:      ; preds = %.lr.ph, %_Z13verify_sortedIPdEvT_S1_.exit.us
  %.08.us = phi i32 [ %i.q, %_Z13verify_sortedIPdEvT_S1_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark8heapsortIPddEEvT_S2_(ptr noundef %2, ptr noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us
  %.pn.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us ], [ %.08.i.i.us, %bb.c ] ; 2 uses
  %.08.i.i.us = getelementptr i8, ptr %.pn.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.08.i.i.us, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIPdEvT_S1_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load double, ptr %.08.i.i.us, align 8, !tbaa !32
  %i.m = load double, ptr %.pn.i.i.us, align 8, !tbaa !32
  %i.n = fcmp olt double %i.l, %i.m
  br i1 %i.n, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us, label %bb.b, !llvm.loop !66

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us:     ; preds = %bb.c
  %i.o = load i32, ptr @current_test, align 4, !tbaa !4
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.o) ; 0 uses
  br label %_Z13verify_sortedIPdEvT_S1_.exit.us

_Z13verify_sortedIPdEvT_S1_.exit.us:              ; preds = %bb.b, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us
  %i.q = add nuw nsw i32 %.08.us, 1               ; 2 uses
  %i.r = load i32, ptr @iterations, align 4, !tbaa !4
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us, label %._crit_edge, !llvm.loop !132

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIPdEvT_S1_.exit
  %.08 = phi i32 [ %i.af, %_Z13verify_sortedIPdEvT_S1_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader18, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.t  ; 2 uses
  %next.gep15 = getelementptr i8, ptr %0, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x double>, ptr %next.gep15, align 8, !tbaa !32
  %wide.load16 = load <2 x double>, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !32
  store <2 x double> %wide.load16, ptr %i.v, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit, label %.lr.ph.i.preheader18

.lr.ph.i.preheader18:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.046.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader18, %.lr.ph.i
  %.07.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %.046.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.046.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.y = load double, ptr %.046.i, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store double %i.y, ptr %.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.x, %1
  br i1 %.not.i, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !134

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark8heapsortIPddEEvT_S2_(ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit
  %.pn.i.i = phi ptr [ %2, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit ], [ %.08.i.i, %bb.e ] ; 2 uses
  %.08.i.i = getelementptr i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.08.i.i, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIPdEvT_S1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load double, ptr %.08.i.i, align 8, !tbaa !32
  %i.ab = load double, ptr %.pn.i.i, align 8, !tbaa !32
  %i.ac = fcmp olt double %i.aa, %i.ab
  br i1 %i.ac, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i, label %bb.d, !llvm.loop !66

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i:        ; preds = %bb.e
  %i.ad = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ad) ; 0 uses
  br label %_Z13verify_sortedIPdEvT_S1_.exit

_Z13verify_sortedIPdEvT_S1_.exit:                 ; preds = %bb.d, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i
  %i.af = add nuw nsw i32 %.08, 1                 ; 2 uses
  %i.ag = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !132

._crit_edge:                                      ; preds = %_Z13verify_sortedIPdEvT_S1_.exit, %_Z13verify_sortedIPdEvT_S1_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double noundef %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %8 = add i64 %7, -8
  %i.e = sub i64 %8, %6                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %2, i64 %i.i
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us: ; preds = %.lr.ph, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us
  %.012.us = phi i32 [ %i.r, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_(ptr %2, ptr %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us
  %.sroa.04.0.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us ], [ %i.l, %bb.c ] ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.04.0.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.l, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %i.l, align 8, !tbaa !32
  %i.n = load double, ptr %.sroa.04.0.i.i.us, align 8, !tbaa !32
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us, label %bb.b, !llvm.loop !74

_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us: ; preds = %bb.c
  %i.p = load i32, ptr @current_test, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.p) ; 0 uses
  br label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us

_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us
  %i.r = add nuw nsw i32 %.012.us, 1              ; 2 uses
  %i.s = load i32, ptr @iterations, align 4, !tbaa !4
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us, label %._crit_edge, !llvm.loop !135

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit
  %.012 = phi i32 [ %i.ah, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader24, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.u  ; 2 uses
  %next.gep21 = getelementptr i8, ptr %2, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !32
  %wide.load22 = load <2 x double>, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr i8, ptr %next.gep21, i64 16
  store <2 x double> %wide.load, ptr %next.gep21, align 8, !tbaa !32
  store <2 x double> %wide.load22, ptr %i.w, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit, label %.lr.ph.i.preheader24

.lr.ph.i.preheader24:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.05.08.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.sroa.03.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader24, %.lr.ph.i
  %.sroa.05.08.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.sroa.05.08.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.03.07.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.z = load double, ptr %.sroa.05.08.i, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8
  store double %i.z, ptr %.sroa.03.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !137

_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_(ptr %2, ptr %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit
  %.sroa.04.0.i.i = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.04.0.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, %3
  br i1 %.not.i.i, label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !32
  %i.ad = load double, ptr %.sroa.04.0.i.i, align 8, !tbaa !32
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i, label %bb.d, !llvm.loop !74

_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i: ; preds = %bb.e
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.af) ; 0 uses
  br label %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit

_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit: ; preds = %bb.d, %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i
  %i.ah = add nuw nsw i32 %.012, 1                ; 2 uses
  %i.ai = load i32, ptr @iterations, align 4, !tbaa !4
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit, %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %8 = add i64 %7, -8
  %i.e = sub i64 %8, %6                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 %i.i
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us: ; preds = %.lr.ph, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us
  %.08.us = phi i32 [ %i.q, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_(ptr noundef %2, ptr noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us
  %.pn.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us ], [ %.08.i.i.us, %bb.c ] ; 2 uses
  %.08.i.i.us = getelementptr i8, ptr %.pn.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.08.i.i.us, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load double, ptr %.08.i.i.us, align 8, !tbaa !52
  %i.m = load double, ptr %.pn.i.i.us, align 8, !tbaa !52
  %i.n = fcmp olt double %i.l, %i.m
  br i1 %i.n, label %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us, label %bb.b, !llvm.loop !82

_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us: ; preds = %bb.c
  %i.o = load i32, ptr @current_test, align 4, !tbaa !4
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.o) ; 0 uses
  br label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us

_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us
  %i.q = add nuw nsw i32 %.08.us, 1               ; 2 uses
  %i.r = load i32, ptr @iterations, align 4, !tbaa !4
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us, label %._crit_edge, !llvm.loop !138

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit
  %.08 = phi i32 [ %i.af, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader18, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.t  ; 2 uses
  %next.gep15 = getelementptr i8, ptr %0, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !32
  %wide.load16 = load <2 x i64>, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !32
  store <2 x i64> %wide.load16, ptr %i.v, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit, label %.lr.ph.i.preheader18

.lr.ph.i.preheader18:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.046.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader18, %.lr.ph.i
  %.07.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %.046.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.046.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.z = load i64, ptr %.046.i, align 8, !tbaa !32
  store i64 %i.z, ptr %.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.x, %1
  br i1 %.not.i, label %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !140

_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_(ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit
  %.pn.i.i = phi ptr [ %2, %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit ], [ %.08.i.i, %bb.e ] ; 2 uses
  %.08.i.i = getelementptr i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.08.i.i, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load double, ptr %.08.i.i, align 8, !tbaa !52
  %i.ab = load double, ptr %.pn.i.i, align 8, !tbaa !52
  %i.ac = fcmp olt double %i.aa, %i.ab
  br i1 %i.ac, label %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i, label %bb.d, !llvm.loop !82

_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i: ; preds = %bb.e
  %i.ad = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ad) ; 0 uses
  br label %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit

_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit: ; preds = %bb.d, %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i
  %i.af = add nuw nsw i32 %.08, 1                 ; 2 uses
  %i.ag = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !138

._crit_edge:                                      ; preds = %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit, %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %8 = add i64 %7, -8
  %i.e = sub i64 %8, %6                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %2, i64 %i.i
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us: ; preds = %.lr.ph, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us
  %.013.us = phi i32 [ %i.r, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(ptr %2, ptr %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us
  %.sroa.04.0.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us ], [ %i.l, %bb.c ] ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.04.0.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.l, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %i.l, align 8, !tbaa !52
  %i.n = load double, ptr %.sroa.04.0.i.i.us, align 8, !tbaa !52
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us, label %bb.b, !llvm.loop !90

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us: ; preds = %bb.c
  %i.p = load i32, ptr @current_test, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.p) ; 0 uses
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us
  %i.r = add nuw nsw i32 %.013.us, 1              ; 2 uses
  %i.s = load i32, ptr @iterations, align 4, !tbaa !4
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us, label %._crit_edge, !llvm.loop !141

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit
  %.013 = phi i32 [ %i.ah, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader25, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.u  ; 2 uses
  %next.gep22 = getelementptr i8, ptr %2, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load23 = load <2 x i64>, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x i64> %wide.load, ptr %next.gep22, align 8, !tbaa !32
  store <2 x i64> %wide.load23, ptr %i.w, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit, label %.lr.ph.i.preheader25

.lr.ph.i.preheader25:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.05.08.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.sroa.03.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader25, %.lr.ph.i
  %.sroa.05.08.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.sroa.05.08.i.ph, %.lr.ph.i.preheader25 ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.sroa.03.07.i.ph, %.lr.ph.i.preheader25 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8
  %i.aa = load i64, ptr %.sroa.05.08.i, align 8, !tbaa !32
  store i64 %i.aa, ptr %.sroa.03.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !143

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(ptr %2, ptr %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit
  %.sroa.04.0.i.i = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.04.0.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, %3
  br i1 %.not.i.i, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !52
  %i.ad = load double, ptr %.sroa.04.0.i.i, align 8, !tbaa !52
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i, label %bb.d, !llvm.loop !90

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i: ; preds = %bb.e
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.af) ; 0 uses
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit: ; preds = %bb.d, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i
  %i.ah = add nuw nsw i32 %.013, 1                ; 2 uses
  %i.ai = load i32, ptr @iterations, align 4, !tbaa !4
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %8 = add i64 %7, -8
  %i.e = sub i64 %8, %6                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 %i.i
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us: ; preds = %.lr.ph, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us
  %.08.us = phi i32 [ %i.q, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(ptr noundef %2, ptr noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us
  %.pn.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us ], [ %.08.i.i.us, %bb.c ] ; 2 uses
  %.08.i.i.us = getelementptr i8, ptr %.pn.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.08.i.i.us, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load double, ptr %.08.i.i.us, align 8, !tbaa !52
  %i.m = load double, ptr %.pn.i.i.us, align 8, !tbaa !52
  %i.n = fcmp olt double %i.l, %i.m
  br i1 %i.n, label %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us, label %bb.b, !llvm.loop !98

_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us: ; preds = %bb.c
  %i.o = load i32, ptr @current_test, align 4, !tbaa !4
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.o) ; 0 uses
  br label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us

_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us
  %i.q = add nuw nsw i32 %.08.us, 1               ; 2 uses
  %i.r = load i32, ptr @iterations, align 4, !tbaa !4
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us, label %._crit_edge, !llvm.loop !144

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit
  %.08 = phi i32 [ %i.af, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader18, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.t  ; 2 uses
  %next.gep15 = getelementptr i8, ptr %0, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !32
  %wide.load16 = load <2 x i64>, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !32
  store <2 x i64> %wide.load16, ptr %i.v, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit, label %.lr.ph.i.preheader18

.lr.ph.i.preheader18:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.046.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader18, %.lr.ph.i
  %.07.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %.046.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.046.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.z = load i64, ptr %.046.i, align 8, !tbaa !32
  store i64 %i.z, ptr %.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.x, %1
  br i1 %.not.i, label %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !146

_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit
  %.pn.i.i = phi ptr [ %2, %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit ], [ %.08.i.i, %bb.e ] ; 2 uses
  %.08.i.i = getelementptr i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.08.i.i, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load double, ptr %.08.i.i, align 8, !tbaa !52
  %i.ab = load double, ptr %.pn.i.i, align 8, !tbaa !52
  %i.ac = fcmp olt double %i.aa, %i.ab
  br i1 %i.ac, label %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i, label %bb.d, !llvm.loop !98

_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i: ; preds = %bb.e
  %i.ad = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ad) ; 0 uses
  br label %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit

_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit: ; preds = %bb.d, %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i
  %i.af = add nuw nsw i32 %.08, 1                 ; 2 uses
  %i.ag = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !144

._crit_edge:                                      ; preds = %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit, %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double %4, ptr noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %8 = add i64 %7, -8
  %i.e = sub i64 %8, %6                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %2, i64 %i.i
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us: ; preds = %.lr.ph, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us
  %.013.us = phi i32 [ %i.r, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(ptr %2, ptr %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us
  %.sroa.04.0.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us ], [ %i.l, %bb.c ] ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.04.0.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.l, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %i.l, align 8, !tbaa !52
  %i.n = load double, ptr %.sroa.04.0.i.i.us, align 8, !tbaa !52
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us, label %bb.b, !llvm.loop !106

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us: ; preds = %bb.c
  %i.p = load i32, ptr @current_test, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.p) ; 0 uses
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us
  %i.r = add nuw nsw i32 %.013.us, 1              ; 2 uses
  %i.s = load i32, ptr @iterations, align 4, !tbaa !4
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us, label %._crit_edge, !llvm.loop !147

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit
  %.013 = phi i32 [ %i.ah, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader25, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.u  ; 2 uses
  %next.gep22 = getelementptr i8, ptr %2, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load23 = load <2 x i64>, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x i64> %wide.load, ptr %next.gep22, align 8, !tbaa !32
  store <2 x i64> %wide.load23, ptr %i.w, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit, label %.lr.ph.i.preheader25

.lr.ph.i.preheader25:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.05.08.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.sroa.03.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader25, %.lr.ph.i
  %.sroa.05.08.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.sroa.05.08.i.ph, %.lr.ph.i.preheader25 ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.sroa.03.07.i.ph, %.lr.ph.i.preheader25 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8
  %i.aa = load i64, ptr %.sroa.05.08.i, align 8, !tbaa !32
  store i64 %i.aa, ptr %.sroa.03.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !149

_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(ptr %2, ptr %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit
  %.sroa.04.0.i.i = phi ptr [ %2, %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.04.0.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, %3
  br i1 %.not.i.i, label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !52
  %i.ad = load double, ptr %.sroa.04.0.i.i, align 8, !tbaa !52
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i, label %bb.d, !llvm.loop !106

_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i: ; preds = %bb.e
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.af) ; 0 uses
  br label %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit

_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit: ; preds = %bb.d, %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i
  %i.ah = add nuw nsw i32 %.013, 1                ; 2 uses
  %i.ai = load i32, ptr @iterations, align 4, !tbaa !4
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !147

._crit_edge:                                      ; preds = %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit, %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark9quicksortIPddEEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr31 = phi ptr [ %.124, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %i.e = load double, ptr %.tr31, align 8, !tbaa !32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph
  %.023 = phi ptr [ %1, %.lr.ph ], [ %i.f, %bb.f ]
  %.0 = phi ptr [ %.tr31, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.124 = phi ptr [ %.023, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.124, i64 -8 ; 6 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !32 ; 2 uses
  %i.h = fcmp olt double %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d, !llvm.loop !150

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %.0, %i.f
  br i1 %i.i, label %.preheader, label %tailrecurse

.preheader:                                       ; preds = %bb.d, %.preheader
  %.1 = phi ptr [ %i.l, %.preheader ], [ %.0, %bb.d ] ; 5 uses
  %i.j = load double, ptr %.1, align 8, !tbaa !32 ; 2 uses
  %i.k = fcmp olt double %i.j, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %i.k, label %.preheader, label %bb.e, !llvm.loop !151

bb.e:                                             ; preds = %.preheader
  %i.m = icmp ult ptr %.1, %i.f
  br i1 %i.m, label %bb.f, label %tailrecurse

bb.f:                                             ; preds = %bb.e
  store double %i.j, ptr %i.f, align 8, !tbaa !32
  store double %i.g, ptr %.1, align 8, !tbaa !32
  br label %bb.b, !llvm.loop !152

tailrecurse:                                      ; preds = %bb.e, %bb.d
  tail call void @_ZN9benchmark9quicksortIPddEEvT_S2_(ptr noundef nonnull %.tr31, ptr noundef nonnull %.124)
  %i.n = ptrtoint ptr %.124 to i64
  %i.o = sub i64 %i.a, %i.n
  %i.p = icmp sgt i64 %i.o, 8
  br i1 %i.p, label %.lr.ph, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_(ptr %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr24 = phi ptr [ %.sroa.0.1, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %i.e = load double, ptr %.tr24, align 8, !tbaa !32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph
  %.sroa.012.0 = phi ptr [ %.tr24, %.lr.ph ], [ %.sroa.012.1, %bb.f ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %1, %.lr.ph ], [ %i.f, %bb.f ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.1, i64 -8 ; 6 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !32 ; 2 uses
  %i.h = fcmp olt double %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d, !llvm.loop !153

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %.sroa.012.0, %i.f
end_hunk_1
