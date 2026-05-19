inline.NumInlined: 2029
inline.NumDeleted: 597
begin_hunk_0_@_Z13test_constantIf19custom_constant_addIfEEvPT_iPKc:bb.a
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIf19custom_constant_addIfEEvT_.exit.us

_Z17check_shifted_sumIf19custom_constant_addIfEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.i = phi i32 [ %.pre19, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.j = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %.preheader.us, label %._crit_edge14, !llvm.loop !634

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.0911.us = phi float [ %i.ad, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = load float, ptr %i.l, align 4, !tbaa !44
  %i.n = fadd float %i.m, 1.000000e+01
  %i.o = fadd float %.0911.us, %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !44
  %i.s = fadd float %i.r, 1.000000e+01
  %i.t = fadd float %i.o, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !44
  %i.x = fadd float %i.w, 1.000000e+01
  %i.y = fadd float %i.t, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !44
  %i.ac = fadd float %i.ab, 1.000000e+01
  %i.ad = fadd float %i.y, %i.ac                  ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !635

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0911.us.epil.init = phi float [ 0.000000e+00, %.preheader.us ], [ %i.ad, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.0911.us.epil = phi float [ %.0911.us.epil.init, %.epil.preheader ], [ %i.ah, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.af = load float, ptr %i.ae, align 4, !tbaa !44
  %i.ag = fadd float %i.af, 1.000000e+01
  %i.ah = fadd float %.0911.us.epil, %i.ag        ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !636

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa = phi float [ %i.ad, %._crit_edge.us.unr-lcssa ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ai = load double, ptr @init_value, align 8, !tbaa !32
  %i.aj = fptrunc double %i.ai to float
  %i.ak = fadd float %i.aj, 1.000000e+01
  %i.al = fmul float %i.ak, 8.000000e+03
  %i.am = fsub float %.lcssa, %i.al               ; 2 uses
  %i.an = tail call noundef float @llvm.fabs.f32(float %.lcssa)
  %i.ao = fpext float %i.an to double
  %i.ap = fcmp ogt double %i.ao, 1.000000e-04
  %i.aq = fdiv float %i.am, %.lcssa
  %.0.in.i.i.us = select i1 %i.ap, float %i.aq, float %i.am
  %i.ar = tail call float @llvm.fabs.f32(float %.0.in.i.i.us)
  %i.as = fpext float %i.ar to double
  %i.at = fcmp olt double %i.as, 1.000000e-03
  br i1 %i.at, label %_Z17check_shifted_sumIf19custom_constant_addIfEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumIf19custom_constant_addIfEEvT_.exit
  %i.au = phi i32 [ %i.bf, %_Z17check_shifted_sumIf19custom_constant_addIfEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.av = phi double [ %i.bg, %_Z17check_shifted_sumIf19custom_constant_addIfEEvT_.exit ], [ %.pre17, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.bh, %_Z17check_shifted_sumIf19custom_constant_addIfEEvT_.exit ], [ 0, %.preheader.preheader ]
  %i.aw = fptrunc double %i.av to float
  %i.ax = fadd float %i.aw, 1.000000e+01
  %i.ay = fmul float %i.ax, 8.000000e+03
  %i.az = fsub float 0.000000e+00, %i.ay
  %i.ba = tail call float @llvm.fabs.f32(float %i.az)
  %i.bb = fpext float %i.ba to double
  %i.bc = fcmp olt double %i.bb, 1.000000e-03
  br i1 %i.bc, label %_Z17check_shifted_sumIf19custom_constant_addIfEEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.bd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.bd) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIf19custom_constant_addIfEEvT_.exit

_Z17check_shifted_sumIf19custom_constant_addIfEEvT_.exit: ; preds = %.preheader, %bb.d
  %i.bf = phi i32 [ %i.au, %.preheader ], [ %.pre18, %bb.d ] ; 2 uses
  %i.bg = phi double [ %i.av, %.preheader ], [ %.pre, %bb.d ]
  %i.bh = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.bf
  br i1 %i.bi, label %.preheader, label %._crit_edge14, !llvm.loop !634

._crit_edge14:                                    ; preds = %_Z17check_shifted_sumIf19custom_constant_addIfEEvT_.exit, %_Z17check_shifted_sumIf19custom_constant_addIfEEvT_.exit.us, %bb.a
  %i.bj = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.bj, ptr @end_time, align 8, !tbaa !27
  %i.bk = load i64, ptr @start_time, align 8, !tbaa !27
  %i.bl = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.bm = icmp ne ptr %i.bl, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.bn = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bn, %.pre.i
  %or.cond.i = select i1 %i.bm, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge14
  %i.bo = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bo, ptr @allocated_results, align 4, !tbaa !4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 4
  %i.br = tail call ptr @realloc(ptr noundef %i.bl, i64 noundef %i.bq) #14 ; 3 uses
  store ptr %i.br, ptr @results, align 8, !tbaa !8
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.bt = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bt) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge14, %._crit_edge.i
  %i.bv = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bn, %._crit_edge14 ] ; 2 uses
  %i.bw = phi ptr [ %i.br, %._crit_edge.i ], [ %i.bl, %._crit_edge14 ]
  %i.bx = sub nsw i64 %i.bj, %i.bk
  %i.by = sitofp i64 %i.bx to double
  %i.bz = fdiv double %i.by, 1.000000e+06
  %i.ca = sext i32 %i.bv to i64
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.ca ; 2 uses
  store double %i.bz, ptr %i.cb, align 8, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %2, ptr %i.cc, align 8, !tbaa !15
  %i.cd = add nsw i32 %i.bv, 1
  store i32 %i.cd, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z13test_constantIf28custom_multiple_constant_addIfEEvPT_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge14

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre17 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %1, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod32 = trunc i32 %1 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit.us
  %i.f = phi i32 [ %i.i, %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01013.us = phi i32 [ %i.j, %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

bb.b:                                             ; preds = %._crit_edge.us
  %i.g = load i32, ptr @current_test, align 4, !tbaa !4
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.g) ; 0 uses
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit.us

_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.i = phi i32 [ %.pre19, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.j = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %.preheader.us, label %._crit_edge14, !llvm.loop !637

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.0911.us = phi float [ %i.r, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = load float, ptr %i.l, align 4, !tbaa !44
  %3 = tail call float @llvm.vector.reduce.fadd.v4f32(float %i.m, <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>)
  %i.n = fadd float %.0911.us, %3
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !44
  %4 = tail call float @llvm.vector.reduce.fadd.v4f32(float %i.q, <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>)
  %i.r = fadd float %i.n, %4                      ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !638

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.0911.us.epil.init = phi float [ 0.000000e+00, %.preheader.us ], [ %i.r, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.t = load float, ptr %i.s, align 4, !tbaa !44
  %5 = tail call float @llvm.vector.reduce.fadd.v4f32(float %i.t, <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>)
  %i.u = fadd float %.0911.us.epil.init, %5
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %i.r, %._crit_edge.us.unr-lcssa ], [ %i.u, %.epil.preheader ] ; 3 uses
  %i.v = load double, ptr @init_value, align 8, !tbaa !32
  %i.w = fptrunc double %i.v to float
  %6 = tail call float @llvm.vector.reduce.fadd.v4f32(float %i.w, <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>)
  %i.x = fmul float %6, 8.000000e+03
  %i.y = fsub float %.lcssa, %i.x                 ; 2 uses
  %i.z = tail call noundef float @llvm.fabs.f32(float %.lcssa)
  %i.aa = fpext float %i.z to double
  %i.ab = fcmp ogt double %i.aa, 1.000000e-04
  %i.ac = fdiv float %i.y, %.lcssa
  %.0.in.i.i.us = select i1 %i.ab, float %i.ac, float %i.y
  %i.ad = tail call float @llvm.fabs.f32(float %.0.in.i.i.us)
  %i.ae = fpext float %i.ad to double
  %i.af = fcmp olt double %i.ae, 1.000000e-03
  br i1 %i.af, label %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit
  %i.ag = phi i32 [ %i.aq, %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ah = phi double [ %i.ar, %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit ], [ %.pre17, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.as, %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit ], [ 0, %.preheader.preheader ]
  %i.ai = fptrunc double %i.ah to float
  %7 = tail call float @llvm.vector.reduce.fadd.v4f32(float %i.ai, <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>)
  %i.aj = fmul float %7, 8.000000e+03
  %i.ak = fsub float 0.000000e+00, %i.aj
  %i.al = tail call float @llvm.fabs.f32(float %i.ak)
  %i.am = fpext float %i.al to double
  %i.an = fcmp olt double %i.am, 1.000000e-03
  br i1 %i.an, label %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ao = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.ao) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit

_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit: ; preds = %.preheader, %bb.c
  %i.aq = phi i32 [ %i.ag, %.preheader ], [ %.pre18, %bb.c ] ; 2 uses
  %i.ar = phi double [ %i.ah, %.preheader ], [ %.pre, %bb.c ]
  %i.as = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.aq
  br i1 %i.at, label %.preheader, label %._crit_edge14, !llvm.loop !637

._crit_edge14:                                    ; preds = %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit, %_Z17check_shifted_sumIf28custom_multiple_constant_addIfEEvT_.exit.us, %bb.a
  %i.au = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.au, ptr @end_time, align 8, !tbaa !27
  %i.av = load i64, ptr @start_time, align 8, !tbaa !27
  %i.aw = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.ax = icmp ne ptr %i.aw, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.ay = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ay, %.pre.i
  %or.cond.i = select i1 %i.ax, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge14
  %i.az = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.az, ptr @allocated_results, align 4, !tbaa !4
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 4
  %i.bc = tail call ptr @realloc(ptr noundef %i.aw, i64 noundef %i.bb) #14 ; 3 uses
  store ptr %i.bc, ptr @results, align 8, !tbaa !8
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.be = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.be) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge14, %._crit_edge.i
  %i.bg = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ay, %._crit_edge14 ] ; 2 uses
  %i.bh = phi ptr [ %i.bc, %._crit_edge.i ], [ %i.aw, %._crit_edge14 ]
  %i.bi = sub nsw i64 %i.au, %i.av
  %i.bj = sitofp i64 %i.bi to double
  %i.bk = fdiv double %i.bj, 1.000000e+06
  %i.bl = sext i32 %i.bg to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.bl ; 2 uses
  store double %i.bk, ptr %i.bm, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %2, ptr %i.bn, align 8, !tbaa !15
  %i.bo = add nsw i32 %i.bg, 1
  store i32 %i.bo, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z13test_constantIf19custom_constant_subIfEEvPT_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge14

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre17 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit.us
  %i.f = phi i32 [ %i.i, %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01013.us = phi i32 [ %i.j, %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

bb.b:                                             ; preds = %._crit_edge.us
  %i.g = load i32, ptr @current_test, align 4, !tbaa !4
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.g) ; 0 uses
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit.us

_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.i = phi i32 [ %.pre19, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.j = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %.preheader.us, label %._crit_edge14, !llvm.loop !639

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.0911.us = phi float [ %i.ad, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = load float, ptr %i.l, align 4, !tbaa !44
  %i.n = fadd float %i.m, -1.000000e+01
  %i.o = fadd float %.0911.us, %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !44
  %i.s = fadd float %i.r, -1.000000e+01
  %i.t = fadd float %i.o, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !44
  %i.x = fadd float %i.w, -1.000000e+01
  %i.y = fadd float %i.t, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !44
  %i.ac = fadd float %i.ab, -1.000000e+01
  %i.ad = fadd float %i.y, %i.ac                  ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !640

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0911.us.epil.init = phi float [ 0.000000e+00, %.preheader.us ], [ %i.ad, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.0911.us.epil = phi float [ %.0911.us.epil.init, %.epil.preheader ], [ %i.ah, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.af = load float, ptr %i.ae, align 4, !tbaa !44
  %i.ag = fadd float %i.af, -1.000000e+01
  %i.ah = fadd float %.0911.us.epil, %i.ag        ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !641

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa = phi float [ %i.ad, %._crit_edge.us.unr-lcssa ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ai = load double, ptr @init_value, align 8, !tbaa !32
  %i.aj = fptrunc double %i.ai to float
  %i.ak = fadd float %i.aj, -1.000000e+01
  %i.al = fmul float %i.ak, 8.000000e+03
  %i.am = fsub float %.lcssa, %i.al               ; 2 uses
  %i.an = tail call noundef float @llvm.fabs.f32(float %.lcssa)
  %i.ao = fpext float %i.an to double
  %i.ap = fcmp ogt double %i.ao, 1.000000e-04
  %i.aq = fdiv float %i.am, %.lcssa
  %.0.in.i.i.us = select i1 %i.ap, float %i.aq, float %i.am
  %i.ar = tail call float @llvm.fabs.f32(float %.0.in.i.i.us)
  %i.as = fpext float %i.ar to double
  %i.at = fcmp olt double %i.as, 1.000000e-03
  br i1 %i.at, label %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit
  %i.au = phi i32 [ %i.bf, %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.av = phi double [ %i.bg, %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit ], [ %.pre17, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.bh, %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit ], [ 0, %.preheader.preheader ]
  %i.aw = fptrunc double %i.av to float
  %i.ax = fadd float %i.aw, -1.000000e+01
  %i.ay = fmul float %i.ax, 8.000000e+03
  %i.az = fsub float 0.000000e+00, %i.ay
  %i.ba = tail call float @llvm.fabs.f32(float %i.az)
  %i.bb = fpext float %i.ba to double
  %i.bc = fcmp olt double %i.bb, 1.000000e-03
  br i1 %i.bc, label %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.bd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.bd) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit

_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit: ; preds = %.preheader, %bb.d
  %i.bf = phi i32 [ %i.au, %.preheader ], [ %.pre18, %bb.d ] ; 2 uses
  %i.bg = phi double [ %i.av, %.preheader ], [ %.pre, %bb.d ]
  %i.bh = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.bf
  br i1 %i.bi, label %.preheader, label %._crit_edge14, !llvm.loop !639

._crit_edge14:                                    ; preds = %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit, %_Z17check_shifted_sumIf19custom_constant_subIfEEvT_.exit.us, %bb.a
  %i.bj = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.bj, ptr @end_time, align 8, !tbaa !27
  %i.bk = load i64, ptr @start_time, align 8, !tbaa !27
  %i.bl = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.bm = icmp ne ptr %i.bl, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.bn = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bn, %.pre.i
  %or.cond.i = select i1 %i.bm, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge14
  %i.bo = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bo, ptr @allocated_results, align 4, !tbaa !4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 4
  %i.br = tail call ptr @realloc(ptr noundef %i.bl, i64 noundef %i.bq) #14 ; 3 uses
  store ptr %i.br, ptr @results, align 8, !tbaa !8
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.bt = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bt) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge14, %._crit_edge.i
  %i.bv = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bn, %._crit_edge14 ] ; 2 uses
  %i.bw = phi ptr [ %i.br, %._crit_edge.i ], [ %i.bl, %._crit_edge14 ]
  %i.bx = sub nsw i64 %i.bj, %i.bk
  %i.by = sitofp i64 %i.bx to double
  %i.bz = fdiv double %i.by, 1.000000e+06
  %i.ca = sext i32 %i.bv to i64
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.ca ; 2 uses
  store double %i.bz, ptr %i.cb, align 8, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %2, ptr %i.cc, align 8, !tbaa !15
  %i.cd = add nsw i32 %i.bv, 1
  store i32 %i.cd, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z13test_constantIf28custom_multiple_constant_subIfEEvPT_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge14

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre17 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %1, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod32 = trunc i32 %1 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit.us
  %i.f = phi i32 [ %i.i, %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01013.us = phi i32 [ %i.j, %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

bb.b:                                             ; preds = %._crit_edge.us
  %i.g = load i32, ptr @current_test, align 4, !tbaa !4
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.g) ; 0 uses
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit.us

_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.i = phi i32 [ %.pre19, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.j = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %.preheader.us, label %._crit_edge14, !llvm.loop !642

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.0911.us = phi float [ %i.r, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = load float, ptr %i.l, align 4, !tbaa !44
  %3 = tail call float @llvm.vector.reduce.fadd.v4f32(float %i.m, <4 x float> <float -1.000000e+00, float -2.000000e+00, float -3.000000e+00, float -4.000000e+00>)
  %i.n = fadd float %.0911.us, %3
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !44
  %4 = tail call float @llvm.vector.reduce.fadd.v4f32(float %i.q, <4 x float> <float -1.000000e+00, float -2.000000e+00, float -3.000000e+00, float -4.000000e+00>)
  %i.r = fadd float %i.n, %4                      ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !643

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.0911.us.epil.init = phi float [ 0.000000e+00, %.preheader.us ], [ %i.r, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.t = load float, ptr %i.s, align 4, !tbaa !44
  %5 = tail call float @llvm.vector.reduce.fadd.v4f32(float %i.t, <4 x float> <float -1.000000e+00, float -2.000000e+00, float -3.000000e+00, float -4.000000e+00>)
  %i.u = fadd float %.0911.us.epil.init, %5
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %i.r, %._crit_edge.us.unr-lcssa ], [ %i.u, %.epil.preheader ] ; 3 uses
  %i.v = load double, ptr @init_value, align 8, !tbaa !32
  %i.w = fptrunc double %i.v to float
  %6 = tail call float @llvm.vector.reduce.fadd.v4f32(float %i.w, <4 x float> <float -1.000000e+00, float -2.000000e+00, float -3.000000e+00, float -4.000000e+00>)
  %i.x = fmul float %6, 8.000000e+03
  %i.y = fsub float %.lcssa, %i.x                 ; 2 uses
  %i.z = tail call noundef float @llvm.fabs.f32(float %.lcssa)
  %i.aa = fpext float %i.z to double
  %i.ab = fcmp ogt double %i.aa, 1.000000e-04
  %i.ac = fdiv float %i.y, %.lcssa
  %.0.in.i.i.us = select i1 %i.ab, float %i.ac, float %i.y
  %i.ad = tail call float @llvm.fabs.f32(float %.0.in.i.i.us)
  %i.ae = fpext float %i.ad to double
  %i.af = fcmp olt double %i.ae, 1.000000e-03
  br i1 %i.af, label %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit
  %i.ag = phi i32 [ %i.aq, %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ah = phi double [ %i.ar, %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit ], [ %.pre17, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.as, %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit ], [ 0, %.preheader.preheader ]
  %i.ai = fptrunc double %i.ah to float
  %7 = tail call float @llvm.vector.reduce.fadd.v4f32(float %i.ai, <4 x float> <float -1.000000e+00, float -2.000000e+00, float -3.000000e+00, float -4.000000e+00>)
  %i.aj = fmul float %7, 8.000000e+03
  %i.ak = fsub float 0.000000e+00, %i.aj
  %i.al = tail call float @llvm.fabs.f32(float %i.ak)
  %i.am = fpext float %i.al to double
  %i.an = fcmp olt double %i.am, 1.000000e-03
  br i1 %i.an, label %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ao = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.ao) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit

_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit: ; preds = %.preheader, %bb.c
  %i.aq = phi i32 [ %i.ag, %.preheader ], [ %.pre18, %bb.c ] ; 2 uses
  %i.ar = phi double [ %i.ah, %.preheader ], [ %.pre, %bb.c ]
  %i.as = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.aq
  br i1 %i.at, label %.preheader, label %._crit_edge14, !llvm.loop !642

._crit_edge14:                                    ; preds = %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit, %_Z17check_shifted_sumIf28custom_multiple_constant_subIfEEvT_.exit.us, %bb.a
  %i.au = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.au, ptr @end_time, align 8, !tbaa !27
  %i.av = load i64, ptr @start_time, align 8, !tbaa !27
  %i.aw = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.ax = icmp ne ptr %i.aw, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.ay = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ay, %.pre.i
  %or.cond.i = select i1 %i.ax, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge14
  %i.az = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.az, ptr @allocated_results, align 4, !tbaa !4
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 4
  %i.bc = tail call ptr @realloc(ptr noundef %i.aw, i64 noundef %i.bb) #14 ; 3 uses
  store ptr %i.bc, ptr @results, align 8, !tbaa !8
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.be = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.be) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge14, %._crit_edge.i
  %i.bg = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ay, %._crit_edge14 ] ; 2 uses
  %i.bh = phi ptr [ %i.bc, %._crit_edge.i ], [ %i.aw, %._crit_edge14 ]
  %i.bi = sub nsw i64 %i.au, %i.av
  %i.bj = sitofp i64 %i.bi to double
  %i.bk = fdiv double %i.bj, 1.000000e+06
  %i.bl = sext i32 %i.bg to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.bl ; 2 uses
  store double %i.bk, ptr %i.bm, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %2, ptr %i.bn, align 8, !tbaa !15
  %i.bo = add nsw i32 %i.bg, 1
  store i32 %i.bo, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z13test_constantIf24custom_constant_multiplyIfEEvPT_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge14

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre17 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit.us
  %i.f = phi i32 [ %i.i, %_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01013.us = phi i32 [ %i.j, %_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

bb.b:                                             ; preds = %._crit_edge.us
  %i.g = load i32, ptr @current_test, align 4, !tbaa !4
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.g) ; 0 uses
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit.us

_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.i = phi i32 [ %.pre19, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.j = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %.preheader.us, label %._crit_edge14, !llvm.loop !644

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.0911.us = phi float [ %i.ad, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = load float, ptr %i.l, align 4, !tbaa !44
  %i.n = fmul float %i.m, 1.200000e+02
  %i.o = fadd float %.0911.us, %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !44
  %i.s = fmul float %i.r, 1.200000e+02
  %i.t = fadd float %i.o, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !44
  %i.x = fmul float %i.w, 1.200000e+02
  %i.y = fadd float %i.t, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !44
  %i.ac = fmul float %i.ab, 1.200000e+02
  %i.ad = fadd float %i.y, %i.ac                  ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !645

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0911.us.epil.init = phi float [ 0.000000e+00, %.preheader.us ], [ %i.ad, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.0911.us.epil = phi float [ %.0911.us.epil.init, %.epil.preheader ], [ %i.ah, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.af = load float, ptr %i.ae, align 4, !tbaa !44
  %i.ag = fmul float %i.af, 1.200000e+02
  %i.ah = fadd float %.0911.us.epil, %i.ag        ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !646

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa = phi float [ %i.ad, %._crit_edge.us.unr-lcssa ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ai = load double, ptr @init_value, align 8, !tbaa !32
  %i.aj = fptrunc double %i.ai to float
  %i.ak = fmul float %i.aj, 1.200000e+02
  %i.al = fmul float %i.ak, 8.000000e+03
  %i.am = fsub float %.lcssa, %i.al               ; 2 uses
  %i.an = tail call noundef float @llvm.fabs.f32(float %.lcssa)
  %i.ao = fpext float %i.an to double
  %i.ap = fcmp ogt double %i.ao, 1.000000e-04
  %i.aq = fdiv float %i.am, %.lcssa
  %.0.in.i.i.us = select i1 %i.ap, float %i.aq, float %i.am
  %i.ar = tail call float @llvm.fabs.f32(float %.0.in.i.i.us)
  %i.as = fpext float %i.ar to double
  %i.at = fcmp olt double %i.as, 1.000000e-03
  br i1 %i.at, label %_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit
  %i.au = phi i32 [ %i.bf, %_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.av = phi double [ %i.bg, %_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit ], [ %.pre17, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.bh, %_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit ], [ 0, %.preheader.preheader ]
  %i.aw = fptrunc double %i.av to float
  %i.ax = fmul float %i.aw, 1.200000e+02
  %i.ay = fmul float %i.ax, 8.000000e+03
  %i.az = fsub float 0.000000e+00, %i.ay
  %i.ba = tail call float @llvm.fabs.f32(float %i.az)
  %i.bb = fpext float %i.ba to double
  %i.bc = fcmp olt double %i.bb, 1.000000e-03
  br i1 %i.bc, label %_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.bd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.bd) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit

_Z17check_shifted_sumIf24custom_constant_multiplyIfEEvT_.exit: ; preds = %.preheader, %bb.d
  %i.bf = phi i32 [ %i.au, %.preheader ], [ %.pre18, %bb.d ] ; 2 uses
end_hunk_0
begin_hunk_1_@_Z13test_constantId19custom_constant_addIdEEvPT_iPKc:bb.a
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

bb.b:                                             ; preds = %._crit_edge.us
  %i.g = load i32, ptr @current_test, align 4, !tbaa !4
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.g) ; 0 uses
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumId19custom_constant_addIdEEvT_.exit.us

_Z17check_shifted_sumId19custom_constant_addIdEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.i = phi i32 [ %.pre19, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.j = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %.preheader.us, label %._crit_edge14, !llvm.loop !678

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.0911.us = phi double [ %i.ad, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.m = load double, ptr %i.l, align 8, !tbaa !32
  %i.n = fadd double %i.m, 1.000000e+01
  %i.o = fadd double %.0911.us, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !32
  %i.s = fadd double %i.r, 1.000000e+01
  %i.t = fadd double %i.o, %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !32
  %i.x = fadd double %i.w, 1.000000e+01
  %i.y = fadd double %i.t, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !32
  %i.ac = fadd double %i.ab, 1.000000e+01
  %i.ad = fadd double %i.y, %i.ac                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !679

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0911.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.ad, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.0911.us.epil = phi double [ %.0911.us.epil.init, %.epil.preheader ], [ %i.ah, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.af = load double, ptr %i.ae, align 8, !tbaa !32
  %i.ag = fadd double %i.af, 1.000000e+01
  %i.ah = fadd double %.0911.us.epil, %i.ag       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !680

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa = phi double [ %i.ad, %._crit_edge.us.unr-lcssa ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ai = load double, ptr @init_value, align 8, !tbaa !32
  %i.aj = fadd double %i.ai, 1.000000e+01
  %i.ak = fmul double %i.aj, 8.000000e+03
  %i.al = fsub double %.lcssa, %i.ak              ; 2 uses
  %i.am = tail call double @llvm.fabs.f64(double %.lcssa)
  %i.an = fcmp ogt double %i.am, 1.000000e-08
  %i.ao = fdiv double %i.al, %.lcssa
  %.0.i.i.us = select i1 %i.an, double %i.ao, double %i.al
  %i.ap = tail call double @llvm.fabs.f64(double %.0.i.i.us)
  %i.aq = fcmp olt double %i.ap, f0x3EB0C6F7A0B5ED8D
  br i1 %i.aq, label %_Z17check_shifted_sumId19custom_constant_addIdEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumId19custom_constant_addIdEEvT_.exit
  %i.ar = phi i32 [ %i.ba, %_Z17check_shifted_sumId19custom_constant_addIdEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.as = phi double [ %i.bb, %_Z17check_shifted_sumId19custom_constant_addIdEEvT_.exit ], [ %.pre17, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.bc, %_Z17check_shifted_sumId19custom_constant_addIdEEvT_.exit ], [ 0, %.preheader.preheader ]
  %i.at = fadd double %i.as, 1.000000e+01
  %i.au = fmul double %i.at, 8.000000e+03
  %i.av = fsub double 0.000000e+00, %i.au
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp olt double %i.aw, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ax, label %_Z17check_shifted_sumId19custom_constant_addIdEEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ay = load i32, ptr @current_test, align 4, !tbaa !4
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.ay) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumId19custom_constant_addIdEEvT_.exit

_Z17check_shifted_sumId19custom_constant_addIdEEvT_.exit: ; preds = %.preheader, %bb.d
  %i.ba = phi i32 [ %i.ar, %.preheader ], [ %.pre18, %bb.d ] ; 2 uses
  %i.bb = phi double [ %i.as, %.preheader ], [ %.pre, %bb.d ]
  %i.bc = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.ba
  br i1 %i.bd, label %.preheader, label %._crit_edge14, !llvm.loop !678

._crit_edge14:                                    ; preds = %_Z17check_shifted_sumId19custom_constant_addIdEEvT_.exit, %_Z17check_shifted_sumId19custom_constant_addIdEEvT_.exit.us, %bb.a
  %i.be = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.be, ptr @end_time, align 8, !tbaa !27
  %i.bf = load i64, ptr @start_time, align 8, !tbaa !27
  %i.bg = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.bh = icmp ne ptr %i.bg, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.bi = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bi, %.pre.i
  %or.cond.i = select i1 %i.bh, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge14
  %i.bj = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bj, ptr @allocated_results, align 4, !tbaa !4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 4
  %i.bm = tail call ptr @realloc(ptr noundef %i.bg, i64 noundef %i.bl) #14 ; 3 uses
  store ptr %i.bm, ptr @results, align 8, !tbaa !8
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.bo = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bo) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge14, %._crit_edge.i
  %i.bq = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bi, %._crit_edge14 ] ; 2 uses
  %i.br = phi ptr [ %i.bm, %._crit_edge.i ], [ %i.bg, %._crit_edge14 ]
  %i.bs = sub nsw i64 %i.be, %i.bf
  %i.bt = sitofp i64 %i.bs to double
  %i.bu = fdiv double %i.bt, 1.000000e+06
  %i.bv = sext i32 %i.bq to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.br, i64 %i.bv ; 2 uses
  store double %i.bu, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %2, ptr %i.bx, align 8, !tbaa !15
  %i.by = add nsw i32 %i.bq, 1
  store i32 %i.by, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z13test_constantId28custom_multiple_constant_addIdEEvPT_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge14

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre17 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %1, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod32 = trunc i32 %1 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit.us
  %i.f = phi i32 [ %i.i, %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01013.us = phi i32 [ %i.j, %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

bb.b:                                             ; preds = %._crit_edge.us
  %i.g = load i32, ptr @current_test, align 4, !tbaa !4
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.g) ; 0 uses
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit.us

_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.i = phi i32 [ %.pre19, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.j = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %.preheader.us, label %._crit_edge14, !llvm.loop !681

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.0911.us = phi double [ %i.r, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.m = load double, ptr %i.l, align 8, !tbaa !32
  %3 = tail call double @llvm.vector.reduce.fadd.v4f64(double %i.m, <4 x double> <double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00>)
  %i.n = fadd double %.0911.us, %3
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !32
  %4 = tail call double @llvm.vector.reduce.fadd.v4f64(double %i.q, <4 x double> <double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00>)
  %i.r = fadd double %i.n, %4                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !682

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.0911.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.r, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.t = load double, ptr %i.s, align 8, !tbaa !32
  %5 = tail call double @llvm.vector.reduce.fadd.v4f64(double %i.t, <4 x double> <double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00>)
  %i.u = fadd double %.0911.us.epil.init, %5
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.r, %._crit_edge.us.unr-lcssa ], [ %i.u, %.epil.preheader ] ; 3 uses
  %i.v = load double, ptr @init_value, align 8, !tbaa !32
  %6 = tail call double @llvm.vector.reduce.fadd.v4f64(double %i.v, <4 x double> <double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00>)
  %i.w = fmul double %6, 8.000000e+03
  %i.x = fsub double %.lcssa, %i.w                ; 2 uses
  %i.y = tail call double @llvm.fabs.f64(double %.lcssa)
  %i.z = fcmp ogt double %i.y, 1.000000e-08
  %i.aa = fdiv double %i.x, %.lcssa
  %.0.i.i.us = select i1 %i.z, double %i.aa, double %i.x
  %i.ab = tail call double @llvm.fabs.f64(double %.0.i.i.us)
  %i.ac = fcmp olt double %i.ab, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ac, label %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit
  %i.ad = phi i32 [ %i.al, %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ae = phi double [ %i.am, %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit ], [ %.pre17, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.an, %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit ], [ 0, %.preheader.preheader ]
  %7 = tail call double @llvm.vector.reduce.fadd.v4f64(double %i.ae, <4 x double> <double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00>)
  %i.af = fmul double %7, 8.000000e+03
  %i.ag = fsub double 0.000000e+00, %i.af
  %i.ah = tail call double @llvm.fabs.f64(double %i.ag)
  %i.ai = fcmp olt double %i.ah, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ai, label %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.aj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit

_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit: ; preds = %.preheader, %bb.c
  %i.al = phi i32 [ %i.ad, %.preheader ], [ %.pre18, %bb.c ] ; 2 uses
  %i.am = phi double [ %i.ae, %.preheader ], [ %.pre, %bb.c ]
  %i.an = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %.preheader, label %._crit_edge14, !llvm.loop !681

._crit_edge14:                                    ; preds = %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit, %_Z17check_shifted_sumId28custom_multiple_constant_addIdEEvT_.exit.us, %bb.a
  %i.ap = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ap, ptr @end_time, align 8, !tbaa !27
  %i.aq = load i64, ptr @start_time, align 8, !tbaa !27
  %i.ar = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.at = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.at, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge14
  %i.au = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.au, ptr @allocated_results, align 4, !tbaa !4
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 4
  %i.ax = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.aw) #14 ; 3 uses
  store ptr %i.ax, ptr @results, align 8, !tbaa !8
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.az) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge14, %._crit_edge.i
  %i.bb = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.at, %._crit_edge14 ] ; 2 uses
  %i.bc = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.ar, %._crit_edge14 ]
  %i.bd = sub nsw i64 %i.ap, %i.aq
  %i.be = sitofp i64 %i.bd to double
  %i.bf = fdiv double %i.be, 1.000000e+06
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bg ; 2 uses
  store double %i.bf, ptr %i.bh, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %2, ptr %i.bi, align 8, !tbaa !15
  %i.bj = add nsw i32 %i.bb, 1
  store i32 %i.bj, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z13test_constantId19custom_constant_subIdEEvPT_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge14

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre17 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit.us
  %i.f = phi i32 [ %i.i, %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01013.us = phi i32 [ %i.j, %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

bb.b:                                             ; preds = %._crit_edge.us
  %i.g = load i32, ptr @current_test, align 4, !tbaa !4
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.g) ; 0 uses
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit.us

_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.i = phi i32 [ %.pre19, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.j = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %.preheader.us, label %._crit_edge14, !llvm.loop !683

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.0911.us = phi double [ %i.ad, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.m = load double, ptr %i.l, align 8, !tbaa !32
  %i.n = fadd double %i.m, -1.000000e+01
  %i.o = fadd double %.0911.us, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !32
  %i.s = fadd double %i.r, -1.000000e+01
  %i.t = fadd double %i.o, %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !32
  %i.x = fadd double %i.w, -1.000000e+01
  %i.y = fadd double %i.t, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !32
  %i.ac = fadd double %i.ab, -1.000000e+01
  %i.ad = fadd double %i.y, %i.ac                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !684

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0911.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.ad, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.0911.us.epil = phi double [ %.0911.us.epil.init, %.epil.preheader ], [ %i.ah, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.af = load double, ptr %i.ae, align 8, !tbaa !32
  %i.ag = fadd double %i.af, -1.000000e+01
  %i.ah = fadd double %.0911.us.epil, %i.ag       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !685

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa = phi double [ %i.ad, %._crit_edge.us.unr-lcssa ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ai = load double, ptr @init_value, align 8, !tbaa !32
  %i.aj = fadd double %i.ai, -1.000000e+01
  %i.ak = fmul double %i.aj, 8.000000e+03
  %i.al = fsub double %.lcssa, %i.ak              ; 2 uses
  %i.am = tail call double @llvm.fabs.f64(double %.lcssa)
  %i.an = fcmp ogt double %i.am, 1.000000e-08
  %i.ao = fdiv double %i.al, %.lcssa
  %.0.i.i.us = select i1 %i.an, double %i.ao, double %i.al
  %i.ap = tail call double @llvm.fabs.f64(double %.0.i.i.us)
  %i.aq = fcmp olt double %i.ap, f0x3EB0C6F7A0B5ED8D
  br i1 %i.aq, label %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit
  %i.ar = phi i32 [ %i.ba, %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.as = phi double [ %i.bb, %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit ], [ %.pre17, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.bc, %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit ], [ 0, %.preheader.preheader ]
  %i.at = fadd double %i.as, -1.000000e+01
  %i.au = fmul double %i.at, 8.000000e+03
  %i.av = fsub double 0.000000e+00, %i.au
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp olt double %i.aw, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ax, label %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ay = load i32, ptr @current_test, align 4, !tbaa !4
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.ay) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit

_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit: ; preds = %.preheader, %bb.d
  %i.ba = phi i32 [ %i.ar, %.preheader ], [ %.pre18, %bb.d ] ; 2 uses
  %i.bb = phi double [ %i.as, %.preheader ], [ %.pre, %bb.d ]
  %i.bc = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.ba
  br i1 %i.bd, label %.preheader, label %._crit_edge14, !llvm.loop !683

._crit_edge14:                                    ; preds = %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit, %_Z17check_shifted_sumId19custom_constant_subIdEEvT_.exit.us, %bb.a
  %i.be = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.be, ptr @end_time, align 8, !tbaa !27
  %i.bf = load i64, ptr @start_time, align 8, !tbaa !27
  %i.bg = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.bh = icmp ne ptr %i.bg, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.bi = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bi, %.pre.i
  %or.cond.i = select i1 %i.bh, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge14
  %i.bj = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bj, ptr @allocated_results, align 4, !tbaa !4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 4
  %i.bm = tail call ptr @realloc(ptr noundef %i.bg, i64 noundef %i.bl) #14 ; 3 uses
  store ptr %i.bm, ptr @results, align 8, !tbaa !8
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.bo = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bo) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge14, %._crit_edge.i
  %i.bq = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bi, %._crit_edge14 ] ; 2 uses
  %i.br = phi ptr [ %i.bm, %._crit_edge.i ], [ %i.bg, %._crit_edge14 ]
  %i.bs = sub nsw i64 %i.be, %i.bf
  %i.bt = sitofp i64 %i.bs to double
  %i.bu = fdiv double %i.bt, 1.000000e+06
  %i.bv = sext i32 %i.bq to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.br, i64 %i.bv ; 2 uses
  store double %i.bu, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %2, ptr %i.bx, align 8, !tbaa !15
  %i.by = add nsw i32 %i.bq, 1
  store i32 %i.by, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z13test_constantId28custom_multiple_constant_subIdEEvPT_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge14

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre17 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %1, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod32 = trunc i32 %1 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit.us
  %i.f = phi i32 [ %i.i, %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01013.us = phi i32 [ %i.j, %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

bb.b:                                             ; preds = %._crit_edge.us
  %i.g = load i32, ptr @current_test, align 4, !tbaa !4
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.g) ; 0 uses
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit.us

_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.i = phi i32 [ %.pre19, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.j = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %.preheader.us, label %._crit_edge14, !llvm.loop !686

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.0911.us = phi double [ %i.r, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.m = load double, ptr %i.l, align 8, !tbaa !32
  %3 = tail call double @llvm.vector.reduce.fadd.v4f64(double %i.m, <4 x double> <double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double -4.000000e+00>)
  %i.n = fadd double %.0911.us, %3
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !32
  %4 = tail call double @llvm.vector.reduce.fadd.v4f64(double %i.q, <4 x double> <double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double -4.000000e+00>)
  %i.r = fadd double %i.n, %4                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !687

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.0911.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.r, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.t = load double, ptr %i.s, align 8, !tbaa !32
  %5 = tail call double @llvm.vector.reduce.fadd.v4f64(double %i.t, <4 x double> <double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double -4.000000e+00>)
  %i.u = fadd double %.0911.us.epil.init, %5
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.r, %._crit_edge.us.unr-lcssa ], [ %i.u, %.epil.preheader ] ; 3 uses
  %i.v = load double, ptr @init_value, align 8, !tbaa !32
  %6 = tail call double @llvm.vector.reduce.fadd.v4f64(double %i.v, <4 x double> <double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double -4.000000e+00>)
  %i.w = fmul double %6, 8.000000e+03
  %i.x = fsub double %.lcssa, %i.w                ; 2 uses
  %i.y = tail call double @llvm.fabs.f64(double %.lcssa)
  %i.z = fcmp ogt double %i.y, 1.000000e-08
  %i.aa = fdiv double %i.x, %.lcssa
  %.0.i.i.us = select i1 %i.z, double %i.aa, double %i.x
  %i.ab = tail call double @llvm.fabs.f64(double %.0.i.i.us)
  %i.ac = fcmp olt double %i.ab, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ac, label %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit
  %i.ad = phi i32 [ %i.al, %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ae = phi double [ %i.am, %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit ], [ %.pre17, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.an, %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit ], [ 0, %.preheader.preheader ]
  %7 = tail call double @llvm.vector.reduce.fadd.v4f64(double %i.ae, <4 x double> <double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double -4.000000e+00>)
  %i.af = fmul double %7, 8.000000e+03
  %i.ag = fsub double 0.000000e+00, %i.af
  %i.ah = tail call double @llvm.fabs.f64(double %i.ag)
  %i.ai = fcmp olt double %i.ah, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ai, label %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.aj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit

_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit: ; preds = %.preheader, %bb.c
  %i.al = phi i32 [ %i.ad, %.preheader ], [ %.pre18, %bb.c ] ; 2 uses
  %i.am = phi double [ %i.ae, %.preheader ], [ %.pre, %bb.c ]
  %i.an = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %.preheader, label %._crit_edge14, !llvm.loop !686

._crit_edge14:                                    ; preds = %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit, %_Z17check_shifted_sumId28custom_multiple_constant_subIdEEvT_.exit.us, %bb.a
  %i.ap = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ap, ptr @end_time, align 8, !tbaa !27
  %i.aq = load i64, ptr @start_time, align 8, !tbaa !27
  %i.ar = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.at = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.at, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge14
  %i.au = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.au, ptr @allocated_results, align 4, !tbaa !4
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 4
  %i.ax = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.aw) #14 ; 3 uses
  store ptr %i.ax, ptr @results, align 8, !tbaa !8
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.az) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge14, %._crit_edge.i
  %i.bb = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.at, %._crit_edge14 ] ; 2 uses
  %i.bc = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.ar, %._crit_edge14 ]
  %i.bd = sub nsw i64 %i.ap, %i.aq
  %i.be = sitofp i64 %i.bd to double
  %i.bf = fdiv double %i.be, 1.000000e+06
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bg ; 2 uses
  store double %i.bf, ptr %i.bh, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %2, ptr %i.bi, align 8, !tbaa !15
  %i.bj = add nsw i32 %i.bb, 1
  store i32 %i.bj, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z13test_constantId24custom_constant_multiplyIdEEvPT_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge14

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre17 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit.us
  %i.f = phi i32 [ %i.i, %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01013.us = phi i32 [ %i.j, %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

bb.b:                                             ; preds = %._crit_edge.us
  %i.g = load i32, ptr @current_test, align 4, !tbaa !4
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.g) ; 0 uses
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit.us

_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.i = phi i32 [ %.pre19, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.j = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %.preheader.us, label %._crit_edge14, !llvm.loop !688

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.0911.us = phi double [ %i.ad, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.m = load double, ptr %i.l, align 8, !tbaa !32
  %i.n = fmul double %i.m, 1.200000e+02
  %i.o = fadd double %.0911.us, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !32
  %i.s = fmul double %i.r, 1.200000e+02
  %i.t = fadd double %i.o, %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !32
  %i.x = fmul double %i.w, 1.200000e+02
  %i.y = fadd double %i.t, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !32
  %i.ac = fmul double %i.ab, 1.200000e+02
  %i.ad = fadd double %i.y, %i.ac                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !689

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0911.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.ad, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.0911.us.epil = phi double [ %.0911.us.epil.init, %.epil.preheader ], [ %i.ah, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.af = load double, ptr %i.ae, align 8, !tbaa !32
  %i.ag = fmul double %i.af, 1.200000e+02
  %i.ah = fadd double %.0911.us.epil, %i.ag       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !690

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa = phi double [ %i.ad, %._crit_edge.us.unr-lcssa ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ai = load double, ptr @init_value, align 8, !tbaa !32
  %i.aj = fmul double %i.ai, 1.200000e+02
  %i.ak = fmul double %i.aj, 8.000000e+03
  %i.al = fsub double %.lcssa, %i.ak              ; 2 uses
  %i.am = tail call double @llvm.fabs.f64(double %.lcssa)
  %i.an = fcmp ogt double %i.am, 1.000000e-08
  %i.ao = fdiv double %i.al, %.lcssa
  %.0.i.i.us = select i1 %i.an, double %i.ao, double %i.al
  %i.ap = tail call double @llvm.fabs.f64(double %.0.i.i.us)
  %i.aq = fcmp olt double %i.ap, f0x3EB0C6F7A0B5ED8D
  br i1 %i.aq, label %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit
  %i.ar = phi i32 [ %i.ba, %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.as = phi double [ %i.bb, %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit ], [ %.pre17, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.bc, %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit ], [ 0, %.preheader.preheader ]
  %i.at = fmul double %i.as, 1.200000e+02
  %i.au = fmul double %i.at, 8.000000e+03
  %i.av = fsub double 0.000000e+00, %i.au
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp olt double %i.aw, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ax, label %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ay = load i32, ptr @current_test, align 4, !tbaa !4
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.ay) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit

_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit: ; preds = %.preheader, %bb.d
  %i.ba = phi i32 [ %i.ar, %.preheader ], [ %.pre18, %bb.d ] ; 2 uses
  %i.bb = phi double [ %i.as, %.preheader ], [ %.pre, %bb.d ]
  %i.bc = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.ba
  br i1 %i.bd, label %.preheader, label %._crit_edge14, !llvm.loop !688

._crit_edge14:                                    ; preds = %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit, %_Z17check_shifted_sumId24custom_constant_multiplyIdEEvT_.exit.us, %bb.a
end_hunk_1
begin_hunk_2_@_Z13test_constantId30custom_multiple_constant_mixedIdEEvPT_iPKc:bb.a
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

bb.b:                                             ; preds = %._crit_edge.us
  %i.g = load i32, ptr @current_test, align 4, !tbaa !4
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.g) ; 0 uses
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumId30custom_multiple_constant_mixedIdEEvT_.exit.us

_Z17check_shifted_sumId30custom_multiple_constant_mixedIdEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.i = phi i32 [ %.pre19, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.j = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %.preheader.us, label %._crit_edge14, !llvm.loop !704

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.0911.us = phi double [ %i.ah, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.m = load double, ptr %i.l, align 8, !tbaa !32
  %i.n = fadd double %i.m, 2.000000e+00
  %i.o = fadd double %i.n, -2.400000e+00
  %i.p = fadd double %.0911.us, %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !32
  %i.t = fadd double %i.s, 2.000000e+00
  %i.u = fadd double %i.t, -2.400000e+00
  %i.v = fadd double %i.p, %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !32
  %i.z = fadd double %i.y, 2.000000e+00
  %i.aa = fadd double %i.z, -2.400000e+00
  %i.ab = fadd double %i.v, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !32
  %i.af = fadd double %i.ae, 2.000000e+00
  %i.ag = fadd double %i.af, -2.400000e+00
  %i.ah = fadd double %i.ab, %i.ag                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !705

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0911.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.ah, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.0911.us.epil = phi double [ %.0911.us.epil.init, %.epil.preheader ], [ %i.am, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !32
  %i.ak = fadd double %i.aj, 2.000000e+00
  %i.al = fadd double %i.ak, -2.400000e+00
  %i.am = fadd double %.0911.us.epil, %i.al       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !706

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa = phi double [ %i.ah, %._crit_edge.us.unr-lcssa ], [ %i.am, %bb.c ] ; 3 uses
  %i.an = load double, ptr @init_value, align 8, !tbaa !32
  %i.ao = fadd double %i.an, 2.000000e+00
  %i.ap = fadd double %i.ao, -2.400000e+00
  %i.aq = fmul double %i.ap, 8.000000e+03
  %i.ar = fsub double %.lcssa, %i.aq              ; 2 uses
  %i.as = tail call double @llvm.fabs.f64(double %.lcssa)
  %i.at = fcmp ogt double %i.as, 1.000000e-08
  %i.au = fdiv double %i.ar, %.lcssa
  %.0.i.i.us = select i1 %i.at, double %i.au, double %i.ar
  %i.av = tail call double @llvm.fabs.f64(double %.0.i.i.us)
  %i.aw = fcmp olt double %i.av, f0x3EB0C6F7A0B5ED8D
  br i1 %i.aw, label %_Z17check_shifted_sumId30custom_multiple_constant_mixedIdEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumId30custom_multiple_constant_mixedIdEEvT_.exit
  %i.ax = phi i32 [ %i.bh, %_Z17check_shifted_sumId30custom_multiple_constant_mixedIdEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ay = phi double [ %i.bi, %_Z17check_shifted_sumId30custom_multiple_constant_mixedIdEEvT_.exit ], [ %.pre17, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.bj, %_Z17check_shifted_sumId30custom_multiple_constant_mixedIdEEvT_.exit ], [ 0, %.preheader.preheader ]
  %i.az = fadd double %i.ay, 2.000000e+00
  %i.ba = fadd double %i.az, -2.400000e+00
  %i.bb = fmul double %i.ba, 8.000000e+03
  %i.bc = fsub double 0.000000e+00, %i.bb
  %i.bd = tail call double @llvm.fabs.f64(double %i.bc)
  %i.be = fcmp olt double %i.bd, f0x3EB0C6F7A0B5ED8D
  br i1 %i.be, label %_Z17check_shifted_sumId30custom_multiple_constant_mixedIdEEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.bf = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.bf) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumId30custom_multiple_constant_mixedIdEEvT_.exit

_Z17check_shifted_sumId30custom_multiple_constant_mixedIdEEvT_.exit: ; preds = %.preheader, %bb.d
  %i.bh = phi i32 [ %i.ax, %.preheader ], [ %.pre18, %bb.d ] ; 2 uses
  %i.bi = phi double [ %i.ay, %.preheader ], [ %.pre, %bb.d ]
  %i.bj = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.bh
  br i1 %i.bk, label %.preheader, label %._crit_edge14, !llvm.loop !704

._crit_edge14:                                    ; preds = %_Z17check_shifted_sumId30custom_multiple_constant_mixedIdEEvT_.exit, %_Z17check_shifted_sumId30custom_multiple_constant_mixedIdEEvT_.exit.us, %bb.a
  %i.bl = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.bl, ptr @end_time, align 8, !tbaa !27
  %i.bm = load i64, ptr @start_time, align 8, !tbaa !27
  %i.bn = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.bo = icmp ne ptr %i.bn, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.bp = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bp, %.pre.i
  %or.cond.i = select i1 %i.bo, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge14
  %i.bq = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bq, ptr @allocated_results, align 4, !tbaa !4
  %i.br = sext i32 %i.bq to i64
  %i.bs = shl nsw i64 %i.br, 4
  %i.bt = tail call ptr @realloc(ptr noundef %i.bn, i64 noundef %i.bs) #14 ; 3 uses
  store ptr %i.bt, ptr @results, align 8, !tbaa !8
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.bv = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bv) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge14, %._crit_edge.i
  %i.bx = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bp, %._crit_edge14 ] ; 2 uses
  %i.by = phi ptr [ %i.bt, %._crit_edge.i ], [ %i.bn, %._crit_edge14 ]
  %i.bz = sub nsw i64 %i.bl, %i.bm
  %i.ca = sitofp i64 %i.bz to double
  %i.cb = fdiv double %i.ca, 1.000000e+06
  %i.cc = sext i32 %i.bx to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.by, i64 %i.cc ; 2 uses
  store double %i.cb, ptr %i.cd, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %2, ptr %i.ce, align 8, !tbaa !15
  %i.cf = add nsw i32 %i.bx, 1
  store i32 %i.cf, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v16i8(<16 x i8>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v8i8(<8 x i8>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind }

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
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS10one_result", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTS10one_result", !13, i64 0, !14, i64 8}
!13 = !{!"double", !6, i64 0}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!12, !14, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !21}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !6, i64 0}
!29 = !{!14, !14, i64 0}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = !{!13, !13, i64 0}
!33 = !{!6, !6, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !6, i64 0}
!36 = distinct !{!36, !17, !37, !38}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !17, !37, !38}
!40 = distinct !{!40, !17, !37, !38}
!41 = distinct !{!41, !17, !37, !38}
!42 = distinct !{!42, !17, !37, !38}
!43 = distinct !{!43, !17, !37, !38}
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !6, i64 0}
!46 = distinct !{!46, !17, !37, !38}
!47 = distinct !{!47, !17, !37, !38}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17, !37, !38}
!61 = !{!"branch_weights", i32 4, i32 28}
!62 = distinct !{!62, !17, !37, !38}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17, !38, !37}
!65 = distinct !{!65, !17, !37, !38}
!66 = distinct !{!66, !17, !37, !38}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17, !38, !37}
!69 = distinct !{!69, !17, !37, !38}
!70 = distinct !{!70, !17, !37, !38}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17, !38, !37}
!73 = distinct !{!73, !17, !37, !38}
!74 = distinct !{!74, !17, !37, !38}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !17, !38, !37}
!77 = distinct !{!77, !17, !37, !38}
!78 = !{!"branch_weights", i32 8, i32 24}
!79 = distinct !{!79, !17, !37, !38}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17, !38, !37}
!82 = distinct !{!82, !17, !37, !38}
!83 = distinct !{!83, !17, !37, !38}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17, !38, !37}
!86 = distinct !{!86, !17, !37, !38}
!87 = distinct !{!87, !17, !37, !38}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !17, !38, !37}
!90 = distinct !{!90, !17, !37, !38}
!91 = distinct !{!91, !17, !37, !38}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17, !38, !37}
!94 = distinct !{!94, !17, !37, !38}
!95 = distinct !{!95, !17, !37, !38}
!96 = distinct !{!96, !17}
!97 = distinct !{!97, !17, !38, !37}
!98 = distinct !{!98, !17, !37, !38}
!99 = distinct !{!99, !17, !37, !38}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17, !38, !37}
!102 = distinct !{!102, !17, !37, !38}
!103 = distinct !{!103, !17, !37, !38}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17, !38, !37}
!106 = distinct !{!106, !17, !37, !38}
!107 = distinct !{!107, !17, !37, !38}
!108 = distinct !{!108, !17}
!109 = distinct !{!109, !17, !38, !37}
!110 = distinct !{!110, !17, !37, !38}
!111 = distinct !{!111, !17, !37, !38}
!112 = distinct !{!112, !17}
!113 = distinct !{!113, !17, !38, !37}
!114 = distinct !{!114, !17, !37, !38}
!115 = distinct !{!115, !17, !37, !38}
!116 = distinct !{!116, !17}
!117 = distinct !{!117, !17, !38, !37}
!118 = distinct !{!118, !17, !37, !38}
!119 = distinct !{!119, !17, !37, !38}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17, !38, !37}
!122 = distinct !{!122, !17, !37, !38}
!123 = distinct !{!123, !17, !37, !38}
!124 = distinct !{!124, !17}
!125 = distinct !{!125, !17, !38, !37}
!126 = distinct !{!126, !17, !37, !38}
!127 = distinct !{!127, !17, !37, !38}
!128 = distinct !{!128, !17}
!129 = distinct !{!129, !17, !38, !37}
!130 = distinct !{!130, !17}
!131 = distinct !{!131, !17}
!132 = distinct !{!132, !17}
!133 = distinct !{!133, !17}
!134 = distinct !{!134, !17}
!135 = distinct !{!135, !17}
!136 = distinct !{!136, !17}
!137 = distinct !{!137, !17}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = distinct !{!140, !17}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17, !37, !38}
!143 = distinct !{!143, !17, !37, !38}
!144 = distinct !{!144, !17}
!145 = distinct !{!145, !17, !38, !37}
!146 = distinct !{!146, !17, !37, !38}
!147 = distinct !{!147, !17, !37, !38}
!148 = distinct !{!148, !17}
!149 = distinct !{!149, !17, !38, !37}
!150 = distinct !{!150, !17, !37, !38}
!151 = distinct !{!151, !17, !37, !38}
!152 = distinct !{!152, !17}
!153 = distinct !{!153, !17, !38, !37}
!154 = distinct !{!154, !17, !37, !38}
!155 = distinct !{!155, !17, !37, !38}
!156 = distinct !{!156, !17}
!157 = distinct !{!157, !17, !38, !37}
!158 = distinct !{!158, !17, !37, !38}
!159 = distinct !{!159, !17, !37, !38}
!160 = distinct !{!160, !17}
!161 = distinct !{!161, !17, !38, !37}
!162 = distinct !{!162, !17, !37, !38}
!163 = distinct !{!163, !17, !37, !38}
!164 = distinct !{!164, !17}
!165 = distinct !{!165, !17, !38, !37}
!166 = distinct !{!166, !17, !37, !38}
!167 = distinct !{!167, !17, !37, !38}
!168 = distinct !{!168, !17}
!169 = distinct !{!169, !17, !38, !37}
!170 = distinct !{!170, !17, !37, !38}
!171 = distinct !{!171, !17, !37, !38}
!172 = distinct !{!172, !17}
!173 = distinct !{!173, !17, !38, !37}
!174 = distinct !{!174, !17, !37, !38}
!175 = distinct !{!175, !17, !37, !38}
!176 = distinct !{!176, !17}
end_hunk_2
