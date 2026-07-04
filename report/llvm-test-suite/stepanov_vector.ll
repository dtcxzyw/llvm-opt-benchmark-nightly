inline.NumInlined: 864
inline.NumDeleted: 161
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_Z17summarize_simplefP8_IO_FILEPKc:bb.a
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
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #19
  %i.h = trunc i64 %i.g to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.02428, i32 %i.h) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.024.lcssa = phi i32 [ 12, %bb.a ], [ %spec.select, %bb.b ] ; 3 uses
  %i.i = add nsw i32 %.024.lcssa, -12
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.i, ptr noundef nonnull @.str.2) #20 ; 0 uses
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %.024.lcssa, ptr noundef nonnull @.str.2) #20 ; 0 uses
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
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #19
  %i.v = trunc i64 %i.u to i32
  %i.w = sub i32 %.024.lcssa, %i.v
  %i.x = load double, ptr %i.r, align 8, !tbaa !11
  %i.y = trunc nuw nsw i64 %indvars.iv42 to i32
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %i.y, i32 noundef %i.w, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.t, double noundef %i.x) #20 ; 0 uses
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
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, double noundef %.026.lcssa) #20 ; 0 uses
  store i32 0, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z11start_timerv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @clock() #20
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_Z5timerv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @clock() #20               ; 2 uses
  store i64 %i.a, ptr @end_time, align 8, !tbaa !27
  %i.b = load i64, ptr @start_time, align 8, !tbaa !27
  %i.c = sub nsw i64 %i.a, %i.b
  %i.d = sitofp i64 %i.c to double
  %i.e = fdiv double %i.d, 1.000000e+06
  ret double %i.e
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::reverse_iterator.2", align 8 ; 5 uses
  %3 = alloca %"class.std::reverse_iterator.2", align 8 ; 5 uses
  %4 = alloca %"class.std::reverse_iterator.2", align 8 ; 6 uses
  %5 = alloca %"class.std::reverse_iterator.2", align 8 ; 6 uses
  %6 = alloca %"class.std::reverse_iterator.0", align 8 ; 6 uses
  %7 = alloca %"class.std::reverse_iterator.0", align 8 ; 6 uses
  %8 = alloca %"class.std::reverse_iterator.1", align 8 ; 6 uses
  %9 = alloca %"class.std::reverse_iterator.1", align 8 ; 6 uses
  %10 = alloca %"class.std::reverse_iterator.1", align 8 ; 6 uses
  %11 = alloca %"class.std::reverse_iterator.1", align 8 ; 6 uses
  %12 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %13 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %14 = alloca %"class.std::reverse_iterator.2", align 8 ; 5 uses
  %15 = alloca %"class.std::reverse_iterator.2", align 8 ; 5 uses
  %16 = alloca %"class.std::reverse_iterator.2", align 8 ; 6 uses
  %17 = alloca %"class.std::reverse_iterator.2", align 8 ; 6 uses
  %18 = alloca %"class.std::reverse_iterator.0", align 8 ; 6 uses
  %19 = alloca %"class.std::reverse_iterator.0", align 8 ; 6 uses
  %20 = alloca %"class.std::reverse_iterator.1", align 8 ; 6 uses
  %21 = alloca %"class.std::reverse_iterator.1", align 8 ; 6 uses
  %22 = alloca %"class.std::reverse_iterator.1", align 8 ; 6 uses
  %23 = alloca %"class.std::reverse_iterator.1", align 8 ; 6 uses
  %24 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #20, !inline_history !30
  %i.e = trunc i64 %i.d to i32
  store i32 %i.e, ptr @iterations, align 4, !tbaa !4
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = tail call double @strtod(ptr noundef nonnull captures(none) %i.g, ptr noundef null) #20, !inline_history !31
  store double %i.h, ptr @init_value, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.i = load double, ptr @init_value, align 8, !tbaa !32
  %i.j = fptosi double %i.i to i32
  %i.k = add nsw i32 %i.j, 123
  tail call void @srand(i32 noundef %i.k) #20
  %i.l = load ptr, ptr @dpb, align 8, !tbaa !33   ; 6 uses
  %i.m = load ptr, ptr @dpe, align 8, !tbaa !33   ; 4 uses
  %i.n = load double, ptr @init_value, align 8, !tbaa !32 ; 3 uses
  %.not4.i = icmp eq ptr %i.l, %i.m               ; 2 uses
  br i1 %.not4.i, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread
  %26 = ptrtoaddr ptr %i.m to i64
  %27 = ptrtoaddr ptr %i.l to i64
  %i.o = add i64 %26, -8
  %i.p = sub i64 %i.o, %27                        ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader1094, label %vector.ph

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
  br i1 %cmp.n, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.loopexit, label %.lr.ph.i.preheader1094

.lr.ph.i.preheader1094:                           ; preds = %.lr.ph.i.preheader, %middle.block
  %.05.i.ph = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader1094, %.lr.ph.i
  %.05.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.05.i.ph, %.lr.ph.i.preheader1094 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  store double %i.n, ptr %.05.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.x, %i.m
  br i1 %.not.i, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.loopexit, label %.lr.ph.i, !llvm.loop !38

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  br label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.loopexit, %.thread
  %.pre7.i = phi double [ %.pre, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.loopexit ], [ %i.n, %.thread ] ; 2 uses
  %i.y = tail call noalias noundef nonnull dereferenceable(16000) ptr @_Znwm(i64 noundef 16000) #21 ; 81 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.y, i8 0, i64 16000, i1 false)
  %broadcast.splatinsert984 = insertelement <2 x double> poison, double %.pre7.i, i64 0
  %broadcast.splat985 = shufflevector <2 x double> %broadcast.splatinsert984, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %index987 = phi i64 [ 0, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ], [ %index.next988.4, %vector.body986 ] ; 6 uses
  %i.z = shl i64 %index987, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %broadcast.splat985, ptr %i.aa, align 8, !tbaa !32
  store <2 x double> %broadcast.splat985, ptr %i.ab, align 8, !tbaa !32
  %index.next988 = shl i64 %index987, 3
  %i.ac = getelementptr i8, ptr %i.y, i64 %index.next988 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %i.ae = getelementptr i8, ptr %i.ac, i64 48
  store <2 x double> %broadcast.splat985, ptr %i.ad, align 8, !tbaa !32
  store <2 x double> %broadcast.splat985, ptr %i.ae, align 8, !tbaa !32
  %index.next988.1 = shl i64 %index987, 3
  %i.af = getelementptr i8, ptr %i.y, i64 %index.next988.1 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 64
  %i.ah = getelementptr i8, ptr %i.af, i64 80
  store <2 x double> %broadcast.splat985, ptr %i.ag, align 8, !tbaa !32
  store <2 x double> %broadcast.splat985, ptr %i.ah, align 8, !tbaa !32
  %index.next988.2 = shl i64 %index987, 3
  %i.ai = getelementptr i8, ptr %i.y, i64 %index.next988.2 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 96
  %i.ak = getelementptr i8, ptr %i.ai, i64 112
  store <2 x double> %broadcast.splat985, ptr %i.aj, align 8, !tbaa !32
  store <2 x double> %broadcast.splat985, ptr %i.ak, align 8, !tbaa !32
  %index.next988.3 = shl i64 %index987, 3
  %i.al = getelementptr i8, ptr %i.y, i64 %index.next988.3 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 128
  %i.an = getelementptr i8, ptr %i.al, i64 144
  store <2 x double> %broadcast.splat985, ptr %i.am, align 8, !tbaa !32
  store <2 x double> %broadcast.splat985, ptr %i.an, align 8, !tbaa !32
  %index.next988.4 = add nuw nsw i64 %index987, 20 ; 2 uses
  %i.ao = icmp eq i64 %index.next988.4, 2000
  br i1 %i.ao, label %_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_.exit, label %vector.body986, !llvm.loop !39

_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_.exit: ; preds = %vector.body986
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 16000 ; 26 uses
  %i.aq = ptrtoint ptr %i.y to i64                ; 8 uses
  %i.ar = ptrtoint ptr %i.ap to i64               ; 8 uses
  %i.as = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i67, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i430

.lr.ph.i67:                                       ; preds = %_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_.exit
  br i1 %.not4.i, label %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i, label %.lr.ph.i.preheader.i

_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i: ; preds = %.lr.ph.i67, %_Z9check_sumd.exit.us.i
  %i.au = phi i32 [ %i.ba, %_Z9check_sumd.exit.us.i ], [ %i.as, %.lr.ph.i67 ]
  %i.av = phi double [ %i.bb, %_Z9check_sumd.exit.us.i ], [ %.pre7.i, %.lr.ph.i67 ] ; 2 uses
  %.04.us.i = phi i32 [ %i.bc, %_Z9check_sumd.exit.us.i ], [ 0, %.lr.ph.i67 ]
  %i.aw = fmul double %i.av, 2.000000e+03
  %i.ax = fcmp une double %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.d, label %_Z9check_sumd.exit.us.i

bb.d:                                             ; preds = %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i
  %i.ay = load i32, ptr @current_test, align 4, !tbaa !4
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ay) ; 0 uses
  %.pre6.i = load double, ptr @init_value, align 8, !tbaa !32
  %.pre8.i = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.us.i

_Z9check_sumd.exit.us.i:                          ; preds = %bb.d, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i
  %i.ba = phi i32 [ %.pre8.i, %bb.d ], [ %i.au, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i ] ; 3 uses
  %i.bb = phi double [ %.pre6.i, %bb.d ], [ %i.av, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i ]
  %i.bc = add nuw nsw i32 %.04.us.i, 1            ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.ba
  br i1 %i.bd, label %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i, label %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit, !llvm.loop !40

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i67, %_Z9check_sumd.exit.i
  %i.be = phi i32 [ %i.bn, %_Z9check_sumd.exit.i ], [ %i.as, %.lr.ph.i67 ]
  %.04.i = phi i32 [ %i.bo, %_Z9check_sumd.exit.i ], [ 0, %.lr.ph.i67 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.08.i.i = phi double [ %i.bh, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.preheader.i ]
  %.057.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %i.l, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 8 ; 2 uses
  %i.bg = load double, ptr %.057.i.i, align 8, !tbaa !32
  %i.bh = fadd double %.08.i.i, %i.bg             ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.bf, %i.m
  br i1 %.not.i.i68, label %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !41

_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %i.bi = load double, ptr @init_value, align 8, !tbaa !32
  %i.bj = fmul double %i.bi, 2.000000e+03
  %i.bk = fcmp une double %i.bh, %i.bj
  br i1 %i.bk, label %bb.e, label %_Z9check_sumd.exit.i

bb.e:                                             ; preds = %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i
  %i.bl = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.bl) ; 0 uses
  %.pre.i = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.i

_Z9check_sumd.exit.i:                             ; preds = %bb.e, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i
  %i.bn = phi i32 [ %i.be, %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i ], [ %.pre.i, %bb.e ] ; 3 uses
  %i.bo = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %i.bn
  br i1 %i.bp, label %.lr.ph.i.preheader.i, label %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit, !llvm.loop !40

_Z15test_accumulateIPddEvT_S1_T0_PKc.exit:        ; preds = %_Z9check_sumd.exit.i, %_Z9check_sumd.exit.us.i
  %.pr = phi i32 [ %i.ba, %_Z9check_sumd.exit.us.i ], [ %i.bn, %_Z9check_sumd.exit.i ] ; 3 uses
  %i.bq = icmp sgt i32 %.pr, 0
  br i1 %i.bq, label %.lr.ph.i.preheader.i70, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i430

.lr.ph.i.preheader.i70:                           ; preds = %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit, %_Z9check_sumd.exit.i74
  %i.br = phi i32 [ %.pr662, %_Z9check_sumd.exit.i74 ], [ %.pr, %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit ]
  %.05.i71 = phi i32 [ %i.cu, %_Z9check_sumd.exit.i74 ], [ 0, %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit ]
  br label %.lr.ph.i.i72

.lr.ph.i.i72:                                     ; preds = %.lr.ph.i.i72, %.lr.ph.i.preheader.i70
  %.07.i.i = phi double [ 0.000000e+00, %.lr.ph.i.preheader.i70 ], [ %i.co, %.lr.ph.i.i72 ]
  %.sroa.03.06.i.i.idx = phi i64 [ 0, %.lr.ph.i.preheader.i70 ], [ %.sroa.03.06.i.i.add.7, %.lr.ph.i.i72 ] ; 9 uses
  %.sroa.03.06.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.03.06.i.i.idx
  %i.bs = load double, ptr %.sroa.03.06.i.i.ptr, align 8, !tbaa !32
  %i.bt = fadd double %.07.i.i, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.03.06.i.i.idx
  %.sroa.03.06.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bv = load double, ptr %.sroa.03.06.i.i.ptr.1, align 8, !tbaa !32
  %i.bw = fadd double %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.03.06.i.i.idx
  %.sroa.03.06.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.by = load double, ptr %.sroa.03.06.i.i.ptr.2, align 8, !tbaa !32
  %i.bz = fadd double %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.03.06.i.i.idx
  %.sroa.03.06.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cb = load double, ptr %.sroa.03.06.i.i.ptr.3, align 8, !tbaa !32
  %i.cc = fadd double %i.bz, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.03.06.i.i.idx
  %.sroa.03.06.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.ce = load double, ptr %.sroa.03.06.i.i.ptr.4, align 8, !tbaa !32
  %i.cf = fadd double %i.cc, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.03.06.i.i.idx
  %.sroa.03.06.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ch = load double, ptr %.sroa.03.06.i.i.ptr.5, align 8, !tbaa !32
  %i.ci = fadd double %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.03.06.i.i.idx
  %.sroa.03.06.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.ck = load double, ptr %.sroa.03.06.i.i.ptr.6, align 8, !tbaa !32
  %i.cl = fadd double %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.03.06.i.i.idx
  %.sroa.03.06.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %.sroa.03.06.i.i.add.7 = add nuw nsw i64 %.sroa.03.06.i.i.idx, 64 ; 2 uses
  %i.cn = load double, ptr %.sroa.03.06.i.i.ptr.7, align 8, !tbaa !32
  %i.co = fadd double %i.cl, %i.cn                ; 2 uses
  %.not.i.i73.7 = icmp eq i64 %.sroa.03.06.i.i.add.7, 16000
  br i1 %.not.i.i73.7, label %_ZN9benchmark10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEET0_T_S9_S8_.exit.loopexit.i, label %.lr.ph.i.i72, !llvm.loop !42
end_hunk_0
begin_hunk_1_@main:bb.a

.lr.ph.i105.preheader:                            ; preds = %_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc.exit104
  %.not2.i.i107 = icmp eq ptr %i.gm, %i.gn
  br label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105.preheader, %_Z9check_sumd.exit.i112
  %i.gp = phi i32 [ %i.gz, %_Z9check_sumd.exit.i112 ], [ %.pr665, %.lr.ph.i105.preheader ]
  %.04.i106 = phi i32 [ %i.ha, %_Z9check_sumd.exit.i112 ], [ 0, %.lr.ph.i105.preheader ]
  br i1 %.not2.i.i107, label %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_.exit.i, label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %.lr.ph.i105, %.lr.ph.i.i108
  %i.gq = phi ptr [ %i.gr, %.lr.ph.i.i108 ], [ %i.gm, %.lr.ph.i105 ] ; 2 uses
  %.03.i.i109 = phi double [ %i.gt, %.lr.ph.i.i108 ], [ 0.000000e+00, %.lr.ph.i105 ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load double, ptr %i.gq, align 8, !tbaa !32
  %i.gt = fadd double %.03.i.i109, %i.gs          ; 2 uses
  %.not.i.i110 = icmp eq ptr %i.gr, %i.gn
  br i1 %.not.i.i110, label %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_.exit.i, label %.lr.ph.i.i108, !llvm.loop !50

_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i108, %.lr.ph.i105
  %.0.lcssa.i.i111 = phi double [ 0.000000e+00, %.lr.ph.i105 ], [ %i.gt, %.lr.ph.i.i108 ]
  %i.gu = load double, ptr @init_value, align 8, !tbaa !32
  %i.gv = fmul double %i.gu, 2.000000e+03
  %i.gw = fcmp une double %.0.lcssa.i.i111, %i.gv
  br i1 %i.gw, label %bb.j, label %_Z9check_sumd.exit.i112

bb.j:                                             ; preds = %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_.exit.i
  %i.gx = load i32, ptr @current_test, align 4, !tbaa !4
  %i.gy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.gx) ; 0 uses
  %.pre.i113 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.i112

_Z9check_sumd.exit.i112:                          ; preds = %bb.j, %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_.exit.i
  %i.gz = phi i32 [ %i.gp, %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_.exit.i ], [ %.pre.i113, %bb.j ] ; 5 uses
  %i.ha = add nuw nsw i32 %.04.i106, 1            ; 2 uses
  %i.hb = icmp slt i32 %i.ha, %i.gz
  br i1 %i.hb, label %.lr.ph.i105, label %_Z15test_accumulateISt16reverse_iteratorIS0_IPdEEdEvT_S4_T0_PKc.exit, !llvm.loop !51

_Z15test_accumulateISt16reverse_iteratorIS0_IPdEEdEvT_S4_T0_PKc.exit: ; preds = %_Z9check_sumd.exit.i112
  %i.hc = icmp sgt i32 %i.gz, 0
  br i1 %i.hc, label %.lr.ph.i114, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i430

.lr.ph.i114:                                      ; preds = %_Z15test_accumulateISt16reverse_iteratorIS0_IPdEEdEvT_S4_T0_PKc.exit, %_Z9check_sumd.exit.i122
  %i.hd = phi i32 [ %.pr667, %_Z9check_sumd.exit.i122 ], [ %i.gz, %_Z15test_accumulateISt16reverse_iteratorIS0_IPdEEdEvT_S4_T0_PKc.exit ]
  %.04.i115 = phi i32 [ %i.ig, %_Z9check_sumd.exit.i122 ], [ 0, %_Z15test_accumulateISt16reverse_iteratorIS0_IPdEEdEvT_S4_T0_PKc.exit ]
  br label %.lr.ph.i.i118

.lr.ph.i.i118:                                    ; preds = %.lr.ph.i.i118, %.lr.ph.i114
  %.cast.i.i.i.idx = phi i64 [ 0, %.lr.ph.i114 ], [ %.cast.i.i.i.add.7, %.lr.ph.i.i118 ] ; 9 uses
  %.03.i.i119 = phi double [ 0.000000e+00, %.lr.ph.i114 ], [ %i.ia, %.lr.ph.i.i118 ]
  %.cast.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i.idx
  %i.he = load double, ptr %.cast.i.i.i.ptr, align 8, !tbaa !32
  %i.hf = fadd double %.03.i.i119, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i.idx
  %.cast.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hh = load double, ptr %.cast.i.i.i.ptr.1, align 8, !tbaa !32
  %i.hi = fadd double %i.hf, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i.idx
  %.cast.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hk = load double, ptr %.cast.i.i.i.ptr.2, align 8, !tbaa !32
  %i.hl = fadd double %i.hi, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i.idx
  %.cast.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hn = load double, ptr %.cast.i.i.i.ptr.3, align 8, !tbaa !32
  %i.ho = fadd double %i.hl, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i.idx
  %.cast.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hq = load double, ptr %.cast.i.i.i.ptr.4, align 8, !tbaa !32
  %i.hr = fadd double %i.ho, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i.idx
  %.cast.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.ht = load double, ptr %.cast.i.i.i.ptr.5, align 8, !tbaa !32
  %i.hu = fadd double %i.hr, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i.idx
  %.cast.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %i.hw = load double, ptr %.cast.i.i.i.ptr.6, align 8, !tbaa !32
  %i.hx = fadd double %i.hu, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i.idx
  %.cast.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.hy, i64 56
  %.cast.i.i.i.add.7 = add nuw nsw i64 %.cast.i.i.i.idx, 64 ; 2 uses
  %i.hz = load double, ptr %.cast.i.i.i.ptr.7, align 8, !tbaa !32
  %i.ia = fadd double %i.hx, %i.hz                ; 2 uses
  %.not.i.i120.7 = icmp eq i64 %.cast.i.i.i.add.7, 16000
  br i1 %.not.i.i120.7, label %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i, label %.lr.ph.i.i118, !llvm.loop !52

_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i: ; preds = %.lr.ph.i.i118
  %i.ib = load double, ptr @init_value, align 8, !tbaa !32
  %i.ic = fmul double %i.ib, 2.000000e+03
  %i.id = fcmp une double %i.ia, %i.ic
  br i1 %i.id, label %bb.k, label %_Z9check_sumd.exit.i122

bb.k:                                             ; preds = %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i
  %i.ie = load i32, ptr @current_test, align 4, !tbaa !4
  %i.if = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ie) ; 0 uses
  %.pre.i123 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.i122

_Z9check_sumd.exit.i122:                          ; preds = %bb.k, %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i
  %.pr667 = phi i32 [ %i.hd, %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i ], [ %.pre.i123, %bb.k ] ; 5 uses
  %i.ig = add nuw nsw i32 %.04.i115, 1            ; 2 uses
  %i.ih = icmp slt i32 %i.ig, %.pr667
  br i1 %i.ih, label %.lr.ph.i114, label %_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc.exit, !llvm.loop !53

_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc.exit: ; preds = %_Z9check_sumd.exit.i122
  %i.ii = icmp sgt i32 %.pr667, 0
  br i1 %i.ii, label %.lr.ph.i124, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i430

.lr.ph.i124:                                      ; preds = %_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc.exit, %_Z9check_sumd.exit.i135
  %i.ij = phi i32 [ %i.jm, %_Z9check_sumd.exit.i135 ], [ %.pr667, %_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc.exit ]
  %.04.i125 = phi i32 [ %i.jn, %_Z9check_sumd.exit.i135 ], [ 0, %_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc.exit ]
  br label %.lr.ph.i.i128

.lr.ph.i.i128:                                    ; preds = %.lr.ph.i.i128, %.lr.ph.i124
  %.cast.i.i.i129.idx = phi i64 [ 0, %.lr.ph.i124 ], [ %.cast.i.i.i129.add.7, %.lr.ph.i.i128 ] ; 9 uses
  %.03.i.i130 = phi double [ 0.000000e+00, %.lr.ph.i124 ], [ %i.jg, %.lr.ph.i.i128 ]
  %.cast.i.i.i129.ptr = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i129.idx
  %i.ik = load double, ptr %.cast.i.i.i129.ptr, align 8, !tbaa !32
  %i.il = fadd double %.03.i.i130, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i129.idx
  %.cast.i.i.i129.ptr.1 = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.in = load double, ptr %.cast.i.i.i129.ptr.1, align 8, !tbaa !32
  %i.io = fadd double %i.il, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i129.idx
  %.cast.i.i.i129.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.iq = load double, ptr %.cast.i.i.i129.ptr.2, align 8, !tbaa !32
  %i.ir = fadd double %i.io, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i129.idx
  %.cast.i.i.i129.ptr.3 = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.it = load double, ptr %.cast.i.i.i129.ptr.3, align 8, !tbaa !32
  %i.iu = fadd double %i.ir, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i129.idx
  %.cast.i.i.i129.ptr.4 = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.iw = load double, ptr %.cast.i.i.i129.ptr.4, align 8, !tbaa !32
  %i.ix = fadd double %i.iu, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i129.idx
  %.cast.i.i.i129.ptr.5 = getelementptr inbounds nuw i8, ptr %i.iy, i64 40
  %i.iz = load double, ptr %.cast.i.i.i129.ptr.5, align 8, !tbaa !32
  %i.ja = fadd double %i.ix, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i129.idx
  %.cast.i.i.i129.ptr.6 = getelementptr inbounds nuw i8, ptr %i.jb, i64 48
  %i.jc = load double, ptr %.cast.i.i.i129.ptr.6, align 8, !tbaa !32
  %i.jd = fadd double %i.ja, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.y, i64 %.cast.i.i.i129.idx
  %.cast.i.i.i129.ptr.7 = getelementptr inbounds nuw i8, ptr %i.je, i64 56
  %.cast.i.i.i129.add.7 = add nuw nsw i64 %.cast.i.i.i129.idx, 64 ; 2 uses
  %i.jf = load double, ptr %.cast.i.i.i129.ptr.7, align 8, !tbaa !32
  %i.jg = fadd double %i.jd, %i.jf                ; 2 uses
  %.not.i.i132.7 = icmp eq i64 %.cast.i.i.i129.add.7, 16000
  br i1 %.not.i.i132.7, label %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i133, label %.lr.ph.i.i128, !llvm.loop !52

_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i133: ; preds = %.lr.ph.i.i128
  %i.jh = load double, ptr @init_value, align 8, !tbaa !32
  %i.ji = fmul double %i.jh, 2.000000e+03
  %i.jj = fcmp une double %i.jg, %i.ji
  br i1 %i.jj, label %bb.l, label %_Z9check_sumd.exit.i135

bb.l:                                             ; preds = %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i133
  %i.jk = load i32, ptr @current_test, align 4, !tbaa !4
  %i.jl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.jk) ; 0 uses
  %.pre.i136 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumd.exit.i135

_Z9check_sumd.exit.i135:                          ; preds = %bb.l, %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i133
  %i.jm = phi i32 [ %i.ij, %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i133 ], [ %.pre.i136, %bb.l ] ; 3 uses
  %i.jn = add nuw nsw i32 %.04.i125, 1            ; 2 uses
  %i.jo = icmp slt i32 %i.jn, %i.jm
  br i1 %i.jo, label %.lr.ph.i124, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i430, !llvm.loop !53

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i430: ; preds = %_Z9check_sumd.exit.i135, %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit, %_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_.exit, %_Z15test_accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_T0_PKc.exit, %_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc.exit, %_Z15test_accumulateISt16reverse_iteratorIPdEdEvT_S3_T0_PKc.exit, %_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc.exit104, %_Z15test_accumulateISt16reverse_iteratorIS0_IPdEEdEvT_S4_T0_PKc.exit, %_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc.exit
  %i.jp = phi i32 [ %.pr662, %_Z15test_accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_T0_PKc.exit ], [ %i.ew, %_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc.exit ], [ %.pr663.pr, %_Z15test_accumulateISt16reverse_iteratorIPdEdEvT_S3_T0_PKc.exit ], [ %.pr665, %_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc.exit104 ], [ %i.gz, %_Z15test_accumulateISt16reverse_iteratorIS0_IPdEEdEvT_S4_T0_PKc.exit ], [ %.pr667, %_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc.exit ], [ %i.as, %_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_.exit ], [ %.pr, %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit ], [ %i.jm, %_Z9check_sumd.exit.i135 ]
  %i.jq = sdiv i32 %i.jp, 1000
  store i32 %i.jq, ptr @iterations, align 4, !tbaa !4
  %i.jr = invoke noalias noundef nonnull dereferenceable(16000) ptr @_Znwm(i64 noundef 16000) #21
          to label %bb.m unwind label %.thread679 ; 23 uses

bb.m:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i430
  %i.js = ptrtoaddr ptr %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 16000 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.jr, i8 0, i64 16000, i1 false)
  %i.ju = load ptr, ptr @dMpb, align 8, !tbaa !33 ; 3 uses
  %i.jv = load ptr, ptr @dMpe, align 8, !tbaa !33 ; 3 uses
  %.not3.i = icmp eq ptr %i.ju, %i.jv
  br i1 %.not3.i, label %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.m, %.lr.ph.i142
  %.04.i143 = phi ptr [ %i.jy, %.lr.ph.i142 ], [ %i.ju, %bb.m ] ; 2 uses
  %i.jw = tail call i32 @rand() #20
  %i.jx = sitofp i32 %i.jw to double
  %i.jy = getelementptr inbounds nuw i8, ptr %.04.i143, i64 8 ; 2 uses
  store double %i.jx, ptr %.04.i143, align 8, !tbaa !32
  %.not.i144 = icmp eq ptr %i.jy, %i.jv
  br i1 %.not.i144, label %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit, label %.lr.ph.i142, !llvm.loop !54

_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit: ; preds = %.lr.ph.i142
  %.pre768 = load ptr, ptr @dMpb, align 8, !tbaa !33
  %.pre769 = load ptr, ptr @dMpe, align 8, !tbaa !33
  br label %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit

_ZN9benchmark11fill_randomIPddEEvT_S2_.exit:      ; preds = %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit, %bb.m
  %i.jz = phi ptr [ %.pre769, %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit ], [ %i.jv, %bb.m ] ; 4 uses
  %i.ka = phi ptr [ %.pre768, %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit ], [ %i.ju, %bb.m ] ; 6 uses
  %.not4.i145 = icmp eq ptr %i.ka, %i.jz
  br i1 %.not4.i145, label %_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_.exit, label %.lr.ph.i146.preheader

.lr.ph.i146.preheader:                            ; preds = %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit
  %i.kb = ptrtoaddr ptr %i.ka to i64              ; 2 uses
  %28 = ptrtoaddr ptr %i.jz to i64
  %i.kc = add i64 %28, -8
  %i.kd = sub i64 %i.kc, %i.kb                    ; 2 uses
  %i.ke = lshr i64 %i.kd, 3
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %min.iters.check991 = icmp ult i64 %i.kd, 72
  %i.kg = sub i64 %i.kb, %i.js
  %diff.check = icmp ugt i64 %i.kg, -32
  %or.cond = or i1 %min.iters.check991, %diff.check
  br i1 %or.cond, label %.lr.ph.i146.preheader1079, label %vector.ph992

vector.ph992:                                     ; preds = %.lr.ph.i146.preheader
  %n.vec994 = and i64 %i.kf, 4611686018427387900  ; 3 uses
  %i.kh = shl i64 %n.vec994, 3                    ; 2 uses
  %i.ki = getelementptr i8, ptr %i.ka, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.jr, i64 %i.kh
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %vector.ph992
  %index996 = phi i64 [ 0, %vector.ph992 ], [ %index.next1000, %vector.body995 ] ; 2 uses
  %i.kk = shl i64 %index996, 3                    ; 2 uses
  %next.gep997 = getelementptr i8, ptr %i.ka, i64 %i.kk ; 2 uses
  %next.gep998 = getelementptr i8, ptr %i.jr, i64 %i.kk ; 2 uses
  %i.kl = getelementptr i8, ptr %next.gep997, i64 16
  %wide.load = load <2 x double>, ptr %next.gep997, align 8, !tbaa !32
  %wide.load999 = load <2 x double>, ptr %i.kl, align 8, !tbaa !32
  %i.km = getelementptr i8, ptr %next.gep998, i64 16
  store <2 x double> %wide.load, ptr %next.gep998, align 8, !tbaa !32
  store <2 x double> %wide.load999, ptr %i.km, align 8, !tbaa !32
  %index.next1000 = add nuw i64 %index996, 4      ; 2 uses
  %i.kn = icmp eq i64 %index.next1000, %n.vec994
  br i1 %i.kn, label %middle.block1001, label %vector.body995, !llvm.loop !55

middle.block1001:                                 ; preds = %vector.body995
  %cmp.n1002 = icmp eq i64 %i.kf, %n.vec994
  br i1 %cmp.n1002, label %_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_.exit, label %.lr.ph.i146.preheader1079

.lr.ph.i146.preheader1079:                        ; preds = %.lr.ph.i146.preheader, %middle.block1001
  %.06.i.ph = phi ptr [ %i.ka, %.lr.ph.i146.preheader ], [ %i.ki, %middle.block1001 ]
  %.sroa.03.05.i.ph = phi ptr [ %i.jr, %.lr.ph.i146.preheader ], [ %i.kj, %middle.block1001 ]
  br label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %.lr.ph.i146.preheader1079, %.lr.ph.i146
  %.06.i = phi ptr [ %i.ko, %.lr.ph.i146 ], [ %.06.i.ph, %.lr.ph.i146.preheader1079 ] ; 2 uses
  %.sroa.03.05.i = phi ptr [ %i.kq, %.lr.ph.i146 ], [ %.sroa.03.05.i.ph, %.lr.ph.i146.preheader1079 ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.kp = load double, ptr %.06.i, align 8, !tbaa !32
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 8
  store double %i.kp, ptr %.sroa.03.05.i, align 8, !tbaa !32
  %.not.i147 = icmp eq ptr %i.ko, %i.jz
  br i1 %.not.i147, label %_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_.exit, label %.lr.ph.i146, !llvm.loop !56

_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_.exit: ; preds = %.lr.ph.i146, %middle.block1001, %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit
  %i.kr = load ptr, ptr @dpb, align 8, !tbaa !33
  %i.ks = load ptr, ptr @dpe, align 8, !tbaa !33
  invoke void @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %i.ka, ptr noundef %i.jz, ptr noundef %i.kr, ptr noundef %i.ks, double noundef 0.000000e+00, ptr noundef nonnull @.str.26)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_.exit
  invoke void @_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(ptr nonnull %i.jr, ptr nonnull %i.jt, ptr nonnull %i.y, ptr nonnull %i.ap, double noundef 0.000000e+00, ptr noundef nonnull @.str.27)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.kt = load ptr, ptr @rdMpb, align 8, !tbaa !44 ; 2 uses
  %i.ku = load ptr, ptr @rdMpe, align 8, !tbaa !44 ; 2 uses
  %i.kv = load ptr, ptr @rdpb, align 8, !tbaa !44 ; 5 uses
  %i.kw = load ptr, ptr @rdpe, align 8, !tbaa !44 ; 3 uses
  %i.kx = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph.i148.preheader, label %_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc.exit243

.lr.ph.i148.preheader:                            ; preds = %bb.o
  %.not2.i.i149 = icmp eq ptr %i.kt, %i.ku
  %i.kz = getelementptr inbounds i8, ptr %i.kv, i64 -8 ; 3 uses
  %.not19.i.i = icmp eq ptr %i.kz, %i.kw
  br label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %.lr.ph.i148.preheader, %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i
  %i.la = phi i32 [ %.pr668, %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i ], [ %i.kx, %.lr.ph.i148.preheader ]
  %.012.i = phi i32 [ %i.lu, %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i ], [ 0, %.lr.ph.i148.preheader ]
  br i1 %.not2.i.i149, label %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i, label %.lr.ph.i.i150

.lr.ph.i.i150:                                    ; preds = %.lr.ph.i148, %.lr.ph.i.i150
  %.sroa.07.0.i = phi ptr [ %i.le, %.lr.ph.i.i150 ], [ %i.kv, %.lr.ph.i148 ]
  %i.lb = phi ptr [ %i.lc, %.lr.ph.i.i150 ], [ %i.kt, %.lr.ph.i148 ]
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 -8 ; 3 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !32
  %i.le = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -8 ; 2 uses
  store double %i.ld, ptr %i.le, align 8, !tbaa !32
  %.not.i.i151 = icmp eq ptr %i.lc, %i.ku
  br i1 %.not.i.i151, label %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i, label %.lr.ph.i.i150, !llvm.loop !57

_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i: ; preds = %.lr.ph.i.i150, %.lr.ph.i148
  br i1 %.not19.i.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i.preheader, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i, %.critedge.i.i
  %.sroa.011.020.i.i = phi ptr [ %i.lf, %.critedge.i.i ], [ %i.kz, %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i ] ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %.sroa.011.020.i.i, i64 -8 ; 3 uses
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !32 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i2.i
  %.sroa.02.018.i.i = phi ptr [ %.sroa.011.020.i.i, %.lr.ph.i2.i ], [ %i.lj, %bb.q ] ; 4 uses
  %i.lh = load double, ptr %.sroa.02.018.i.i, align 8, !tbaa !32 ; 2 uses
  %i.li = fcmp olt double %i.lg, %i.lh
  br i1 %i.li, label %bb.q, label %.critedge.i.i

bb.q:                                             ; preds = %bb.p
  %i.lj = getelementptr i8, ptr %.sroa.02.018.i.i, i64 8 ; 2 uses
  %i.lk = getelementptr inbounds i8, ptr %.sroa.02.018.i.i, i64 -8
  store double %i.lh, ptr %i.lk, align 8, !tbaa !32
  %.not16.i.i = icmp eq ptr %i.lj, %i.kv
  br i1 %.not16.i.i, label %.critedge.i.i, label %bb.p, !llvm.loop !58

.critedge.i.i:                                    ; preds = %bb.q, %bb.p
  %.sroa.05.0.lcssa.i.i = phi ptr [ %i.kv, %bb.q ], [ %.sroa.02.018.i.i, %bb.p ]
  %i.ll = getelementptr inbounds i8, ptr %.sroa.05.0.lcssa.i.i, i64 -8
  store double %i.lg, ptr %i.ll, align 8, !tbaa !32
  %.not.i3.i = icmp eq ptr %i.lf, %i.kw
  br i1 %.not.i3.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i.preheader, label %.lr.ph.i2.i, !llvm.loop !59

_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i.preheader: ; preds = %.critedge.i.i, %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i
  br label %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i

_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i.preheader, %bb.r
  %i.lm = phi ptr [ %i.ln, %bb.r ], [ %i.kz, %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i.preheader ] ; 2 uses
  %.sroa.03.0.i.i.i = phi ptr [ %i.lp, %bb.r ], [ %i.kv, %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i.preheader ]
  %.not.i.i.i = icmp eq ptr %i.lm, %i.kw
  br i1 %.not.i.i.i, label %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i
  %i.ln = getelementptr inbounds i8, ptr %i.lm, i64 -8 ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !32
  %i.lp = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i, i64 -8 ; 2 uses
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !32
  %i.lr = fcmp olt double %i.lo, %i.lq
  br i1 %i.lr, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i, !llvm.loop !60

_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i: ; preds = %bb.r
  %i.ls = load i32, ptr @current_test, align 4, !tbaa !4
  %i.lt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.ls) ; 0 uses
  %.pre.i152 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i

_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i, %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i
  %.pr668 = phi i32 [ %.pre.i152, %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i ], [ %i.la, %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i ] ; 5 uses
  %i.lu = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %i.lv = icmp slt i32 %i.lu, %.pr668
  br i1 %i.lv, label %.lr.ph.i148, label %_Z19test_insertion_sortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc.exit, !llvm.loop !61

_Z19test_insertion_sortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc.exit: ; preds = %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i
  %i.lw = icmp sgt i32 %.pr668, 0
  br i1 %i.lw, label %.lr.ph.i153.preheader, label %_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc.exit243

.lr.ph.i153.preheader:                            ; preds = %_Z19test_insertion_sortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc.exit
  %i.lx = getelementptr inbounds nuw i8, ptr %i.y, i64 15992 ; 2 uses
  br label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %.lr.ph.i153.preheader, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i
  %i.ly = phi i32 [ %i.ne, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i ], [ %.pr668, %.lr.ph.i153.preheader ]
  %.011.i = phi i32 [ %i.nf, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i ], [ 0, %.lr.ph.i153.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.y, ptr noundef nonnull align 8 dereferenceable(16000) %i.jr, i64 16000, i1 false), !tbaa !32
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge.i.i159.1, %.lr.ph.i153
  %.sroa.011.022.i.i = phi ptr [ %i.lx, %.lr.ph.i153 ], [ %i.mg, %.critedge.i.i159.1 ] ; 3 uses
  %i.lz = getelementptr inbounds i8, ptr %.sroa.011.022.i.i, i64 -8 ; 3 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !32 ; 2 uses
  br label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %bb.s, %.lr.ph.preheader.i.i
  %.sroa.05.018.i.i = phi ptr [ %i.md, %bb.s ], [ %.sroa.011.022.i.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.mb = load double, ptr %.sroa.05.018.i.i, align 8, !tbaa !32 ; 2 uses
  %i.mc = fcmp olt double %i.ma, %i.mb
  br i1 %i.mc, label %bb.s, label %.critedge.i.i159

bb.s:                                             ; preds = %.lr.ph.i3.i
  %i.md = getelementptr i8, ptr %.sroa.05.018.i.i, i64 8 ; 2 uses
  %i.me = getelementptr inbounds i8, ptr %.sroa.05.018.i.i, i64 -8
  store double %i.mb, ptr %i.me, align 8, !tbaa !32
  %.not15.i.i = icmp eq ptr %i.md, %i.ap
  br i1 %.not15.i.i, label %.critedge.i.i159, label %.lr.ph.i3.i, !llvm.loop !62

.critedge.i.i159:                                 ; preds = %bb.s, %.lr.ph.i3.i
  %.sroa.07.0.lcssa.ph.i.i = phi ptr [ %.sroa.05.018.i.i, %.lr.ph.i3.i ], [ %i.ap, %bb.s ]
  %i.mf = getelementptr inbounds i8, ptr %.sroa.07.0.lcssa.ph.i.i, i64 -8
  store double %i.ma, ptr %i.mf, align 8, !tbaa !32
  %.not.i4.i = icmp eq ptr %i.lz, %i.y
  br i1 %.not.i4.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.preheader, label %.lr.ph.preheader.i.i.1

.lr.ph.preheader.i.i.1:                           ; preds = %.critedge.i.i159
  %i.mg = getelementptr inbounds i8, ptr %.sroa.011.022.i.i, i64 -16 ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !32 ; 2 uses
  br label %.lr.ph.i3.i.1

.lr.ph.i3.i.1:                                    ; preds = %bb.t, %.lr.ph.preheader.i.i.1
  %.sroa.05.018.i.i.1 = phi ptr [ %i.mk, %bb.t ], [ %i.lz, %.lr.ph.preheader.i.i.1 ] ; 4 uses
  %i.mi = load double, ptr %.sroa.05.018.i.i.1, align 8, !tbaa !32 ; 2 uses
  %i.mj = fcmp olt double %i.mh, %i.mi
  br i1 %i.mj, label %bb.t, label %.critedge.i.i159.1

bb.t:                                             ; preds = %.lr.ph.i3.i.1
  %i.mk = getelementptr i8, ptr %.sroa.05.018.i.i.1, i64 8 ; 2 uses
  %i.ml = getelementptr inbounds i8, ptr %.sroa.05.018.i.i.1, i64 -8
  store double %i.mi, ptr %i.ml, align 8, !tbaa !32
  %.not15.i.i.1 = icmp eq ptr %i.mk, %i.ap
  br i1 %.not15.i.i.1, label %.critedge.i.i159.1, label %.lr.ph.i3.i.1, !llvm.loop !62

.critedge.i.i159.1:                               ; preds = %bb.t, %.lr.ph.i3.i.1
  %.sroa.07.0.lcssa.ph.i.i.1 = phi ptr [ %.sroa.05.018.i.i.1, %.lr.ph.i3.i.1 ], [ %i.ap, %bb.t ]
  %i.mm = getelementptr inbounds i8, ptr %.sroa.07.0.lcssa.ph.i.i.1, i64 -8
  store double %i.mh, ptr %i.mm, align 8, !tbaa !32
  br label %.lr.ph.preheader.i.i

_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.preheader
  %i.mn = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i952, i64 -16
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !32 ; 2 uses
  %i.mp = fcmp olt double %i.mo, %i.my
  br i1 %i.mp, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.1, !llvm.loop !63

_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.1: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i
  %i.mq = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i952, i64 -24 ; 2 uses
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !32 ; 2 uses
  %i.ms = fcmp olt double %i.mr, %i.mo
  br i1 %i.ms, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.2, !llvm.loop !63

_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.2: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.1
  %.not.i.i.i160.2 = icmp eq ptr %i.mq, %i.y
  br i1 %.not.i.i.i160.2, label %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.preheader.3

_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.preheader.3: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.2
  %i.mt = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i952, i64 -32 ; 2 uses
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !32
  %i.mv = fcmp olt double %i.mu, %i.mr
  br i1 %i.mv, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.3, !llvm.loop !63

_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.3: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.preheader.3
  %i.mw = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i953, i64 -32
  br label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.preheader

_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.preheader: ; preds = %.critedge.i.i159, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.3
  %.sroa.05.0.i.i.i953 = phi ptr [ %i.mw, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.3 ], [ %i.ap, %.critedge.i.i159 ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i952 = phi ptr [ %i.mt, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.3 ], [ %i.lx, %.critedge.i.i159 ] ; 4 uses
  %i.mx = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i952, i64 -8
  %i.my = load double, ptr %i.mx, align 8, !tbaa !32 ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i953, i64 -8
  %i.na = load double, ptr %i.mz, align 8, !tbaa !32
  %i.nb = fcmp olt double %i.my, %i.na
  br i1 %i.nb, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i, !llvm.loop !63

_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.preheader.3, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.1, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.preheader
  %i.nc = load i32, ptr @current_test, align 4, !tbaa !4
  %i.nd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.nc) ; 0 uses
  %.pre.i161 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i

_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.2, %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i
  %i.ne = phi i32 [ %.pre.i161, %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i ], [ %i.ly, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.2 ] ; 5 uses
  %i.nf = add nuw nsw i32 %.011.i, 1              ; 2 uses
  %i.ng = icmp slt i32 %i.nf, %i.ne
  br i1 %i.ng, label %.lr.ph.i153, label %_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc.exit, !llvm.loop !64

_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc.exit: ; preds = %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i
  %i.nh = icmp sgt i32 %i.ne, 0
  br i1 %i.nh, label %.lr.ph.i162.preheader, label %_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc.exit243

.lr.ph.i162.preheader:                            ; preds = %_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc.exit
  %i.ni = getelementptr inbounds nuw i8, ptr %i.y, i64 15992 ; 2 uses
  br label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %.lr.ph.i162.preheader, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i185
  %i.nj = phi i32 [ %.pr669, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i185 ], [ %i.ne, %.lr.ph.i162.preheader ]
  %.011.i163 = phi i32 [ %i.op, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i185 ], [ 0, %.lr.ph.i162.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.y, ptr noundef nonnull align 8 dereferenceable(16000) %i.jr, i64 16000, i1 false), !tbaa !32
  br label %.lr.ph.preheader.i.i172

.lr.ph.preheader.i.i172:                          ; preds = %.critedge.i.i176.1, %.lr.ph.i162
  %.sroa.011.022.i.i173 = phi ptr [ %i.ni, %.lr.ph.i162 ], [ %i.nr, %.critedge.i.i176.1 ] ; 3 uses
  %i.nk = getelementptr inbounds i8, ptr %.sroa.011.022.i.i173, i64 -8 ; 3 uses
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !32 ; 2 uses
  br label %.lr.ph.i3.i174

.lr.ph.i3.i174:                                   ; preds = %bb.u, %.lr.ph.preheader.i.i172
  %.sroa.05.018.i.i175 = phi ptr [ %i.no, %bb.u ], [ %.sroa.011.022.i.i173, %.lr.ph.preheader.i.i172 ] ; 4 uses
  %i.nm = load double, ptr %.sroa.05.018.i.i175, align 8, !tbaa !32 ; 2 uses
  %i.nn = fcmp olt double %i.nl, %i.nm
  br i1 %i.nn, label %bb.u, label %.critedge.i.i176

bb.u:                                             ; preds = %.lr.ph.i3.i174
  %i.no = getelementptr i8, ptr %.sroa.05.018.i.i175, i64 8 ; 2 uses
  %i.np = getelementptr inbounds i8, ptr %.sroa.05.018.i.i175, i64 -8
  store double %i.nm, ptr %i.np, align 8, !tbaa !32
  %.not15.i.i186 = icmp eq ptr %i.no, %i.ap
  br i1 %.not15.i.i186, label %.critedge.i.i176, label %.lr.ph.i3.i174, !llvm.loop !62

.critedge.i.i176:                                 ; preds = %bb.u, %.lr.ph.i3.i174
  %.sroa.07.0.lcssa.ph.i.i177 = phi ptr [ %.sroa.05.018.i.i175, %.lr.ph.i3.i174 ], [ %i.ap, %bb.u ]
  %i.nq = getelementptr inbounds i8, ptr %.sroa.07.0.lcssa.ph.i.i177, i64 -8
  store double %i.nl, ptr %i.nq, align 8, !tbaa !32
  %.not.i4.i178 = icmp eq ptr %i.nk, %i.y
  br i1 %.not.i4.i178, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.preheader, label %.lr.ph.preheader.i.i172.1

.lr.ph.preheader.i.i172.1:                        ; preds = %.critedge.i.i176
  %i.nr = getelementptr inbounds i8, ptr %.sroa.011.022.i.i173, i64 -16 ; 2 uses
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !32 ; 2 uses
  br label %.lr.ph.i3.i174.1

.lr.ph.i3.i174.1:                                 ; preds = %bb.v, %.lr.ph.preheader.i.i172.1
  %.sroa.05.018.i.i175.1 = phi ptr [ %i.nv, %bb.v ], [ %i.nk, %.lr.ph.preheader.i.i172.1 ] ; 4 uses
  %i.nt = load double, ptr %.sroa.05.018.i.i175.1, align 8, !tbaa !32 ; 2 uses
  %i.nu = fcmp olt double %i.ns, %i.nt
  br i1 %i.nu, label %bb.v, label %.critedge.i.i176.1

bb.v:                                             ; preds = %.lr.ph.i3.i174.1
  %i.nv = getelementptr i8, ptr %.sroa.05.018.i.i175.1, i64 8 ; 2 uses
  %i.nw = getelementptr inbounds i8, ptr %.sroa.05.018.i.i175.1, i64 -8
  store double %i.nt, ptr %i.nw, align 8, !tbaa !32
  %.not15.i.i186.1 = icmp eq ptr %i.nv, %i.ap
  br i1 %.not15.i.i186.1, label %.critedge.i.i176.1, label %.lr.ph.i3.i174.1, !llvm.loop !62

.critedge.i.i176.1:                               ; preds = %bb.v, %.lr.ph.i3.i174.1
  %.sroa.07.0.lcssa.ph.i.i177.1 = phi ptr [ %.sroa.05.018.i.i175.1, %.lr.ph.i3.i174.1 ], [ %i.ap, %bb.v ]
  %i.nx = getelementptr inbounds i8, ptr %.sroa.07.0.lcssa.ph.i.i177.1, i64 -8
  store double %i.ns, ptr %i.nx, align 8, !tbaa !32
  br label %.lr.ph.preheader.i.i172

_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.preheader
  %i.ny = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i180954, i64 -16
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !32 ; 2 uses
  %i.oa = fcmp olt double %i.nz, %i.oj
  br i1 %i.oa, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i183, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.1, !llvm.loop !63

_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.1: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179
  %i.ob = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i180954, i64 -24 ; 2 uses
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !32 ; 2 uses
  %i.od = fcmp olt double %i.oc, %i.nz
  br i1 %i.od, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i183, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.2, !llvm.loop !63

_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.2: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.1
  %.not.i.i.i182.2 = icmp eq ptr %i.ob, %i.y
  br i1 %.not.i.i.i182.2, label %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i185, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.preheader.3

_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.preheader.3: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.2
  %i.oe = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i180954, i64 -32 ; 2 uses
  %i.of = load double, ptr %i.oe, align 8, !tbaa !32
  %i.og = fcmp olt double %i.of, %i.oc
  br i1 %i.og, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i183, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.3, !llvm.loop !63

_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.3: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.preheader.3
  %i.oh = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i181955, i64 -32
  br label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.preheader

_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.preheader: ; preds = %.critedge.i.i176, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.3
  %.sroa.05.0.i.i.i181955 = phi ptr [ %i.oh, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.3 ], [ %i.ap, %.critedge.i.i176 ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i180954 = phi ptr [ %i.oe, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.3 ], [ %i.ni, %.critedge.i.i176 ] ; 4 uses
  %i.oi = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i180954, i64 -8
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !32 ; 2 uses
  %i.ok = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i181955, i64 -8
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !32
  %i.om = fcmp olt double %i.oj, %i.ol
  br i1 %i.om, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i183, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179, !llvm.loop !63

_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i183: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.preheader.3, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.1, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.preheader
  %i.on = load i32, ptr @current_test, align 4, !tbaa !4
  %i.oo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.on) ; 0 uses
  %.pre.i184 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i185

_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i185: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.2, %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i183
  %.pr669 = phi i32 [ %.pre.i184, %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i183 ], [ %i.nj, %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.2 ] ; 5 uses
  %i.op = add nuw nsw i32 %.011.i163, 1           ; 2 uses
  %i.oq = icmp slt i32 %i.op, %.pr669
  br i1 %i.oq, label %.lr.ph.i162, label %_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc.exit187, !llvm.loop !64

_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc.exit187: ; preds = %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i185
  %i.or = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rrdMpb, i64 8), align 8, !tbaa !44 ; 5 uses
  %i.os = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rrdMpe, i64 8), align 8, !tbaa !44 ; 3 uses
  %i.ot = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rrdpb, i64 8), align 8, !tbaa !44 ; 8 uses
  %i.ou = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rrdpe, i64 8), align 8, !tbaa !44 ; 3 uses
  %i.ov = icmp sgt i32 %.pr669, 0
  br i1 %i.ov, label %.lr.ph.i188.preheader, label %_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc.exit243

.lr.ph.i188.preheader:                            ; preds = %_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc.exit187
  %i.ow = ptrtoaddr ptr %i.ot to i64
  %29 = ptrtoaddr ptr %i.os to i64
  %i.ox = ptrtoaddr ptr %i.or to i64              ; 2 uses
  %.not3.i.i = icmp eq ptr %i.or, %i.os
  %.sroa.215.023.i.i = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 2 uses
  %.not24.i.i = icmp eq ptr %.sroa.215.023.i.i, %i.ou
  %i.oy = add i64 %29, -8
  %i.oz = sub i64 %i.oy, %i.ox                    ; 2 uses
  %i.pa = lshr i64 %i.oz, 3
  %i.pb = add nuw nsw i64 %i.pa, 1                ; 2 uses
  %min.iters.check1008 = icmp ult i64 %i.oz, 24
  %i.pc = sub i64 %i.ox, %i.ow
  %diff.check1006 = icmp ugt i64 %i.pc, -32
  %or.cond1059 = select i1 %min.iters.check1008, i1 true, i1 %diff.check1006
  %n.vec1011 = and i64 %i.pb, 4611686018427387900 ; 3 uses
  %i.pd = shl i64 %n.vec1011, 3                   ; 2 uses
  %i.pe = getelementptr i8, ptr %i.ot, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.or, i64 %i.pd
  %cmp.n1020 = icmp eq i64 %i.pb, %n.vec1011
  br label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %.lr.ph.i188.preheader, %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i
  %i.pg = phi i32 [ %i.pz, %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i ], [ %.pr669, %.lr.ph.i188.preheader ]
  %.012.i189 = phi i32 [ %i.qa, %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i ], [ 0, %.lr.ph.i188.preheader ]
  br i1 %.not3.i.i, label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i, label %.lr.ph.i.i190.preheader

.lr.ph.i.i190.preheader:                          ; preds = %.lr.ph.i188
  br i1 %or.cond1059, label %.lr.ph.i.i190.preheader1075, label %vector.body1012

vector.body1012:                                  ; preds = %.lr.ph.i.i190.preheader, %vector.body1012
  %index1013 = phi i64 [ %index.next1018, %vector.body1012 ], [ 0, %.lr.ph.i.i190.preheader ] ; 2 uses
  %i.ph = shl i64 %index1013, 3                   ; 2 uses
  %next.gep1014 = getelementptr i8, ptr %i.ot, i64 %i.ph ; 2 uses
  %next.gep1015 = getelementptr i8, ptr %i.or, i64 %i.ph ; 2 uses
  %i.pi = getelementptr i8, ptr %next.gep1015, i64 16
  %wide.load1016 = load <2 x double>, ptr %next.gep1015, align 8, !tbaa !32
  %wide.load1017 = load <2 x double>, ptr %i.pi, align 8, !tbaa !32
  %i.pj = getelementptr i8, ptr %next.gep1014, i64 16
  store <2 x double> %wide.load1016, ptr %next.gep1014, align 8, !tbaa !32
  store <2 x double> %wide.load1017, ptr %i.pj, align 8, !tbaa !32
  %index.next1018 = add nuw i64 %index1013, 4     ; 2 uses
  %i.pk = icmp eq i64 %index.next1018, %n.vec1011
  br i1 %i.pk, label %middle.block1019, label %vector.body1012, !llvm.loop !65

middle.block1019:                                 ; preds = %vector.body1012
  br i1 %cmp.n1020, label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i, label %.lr.ph.i.i190.preheader1075

.lr.ph.i.i190.preheader1075:                      ; preds = %.lr.ph.i.i190.preheader, %middle.block1019
  %.sroa.07.0.i191.ph = phi ptr [ %i.ot, %.lr.ph.i.i190.preheader ], [ %i.pe, %middle.block1019 ]
  %.ph1076 = phi ptr [ %i.or, %.lr.ph.i.i190.preheader ], [ %i.pf, %middle.block1019 ]
  br label %.lr.ph.i.i190

.lr.ph.i.i190:                                    ; preds = %.lr.ph.i.i190.preheader1075, %.lr.ph.i.i190
  %.sroa.07.0.i191 = phi ptr [ %i.po, %.lr.ph.i.i190 ], [ %.sroa.07.0.i191.ph, %.lr.ph.i.i190.preheader1075 ] ; 2 uses
  %i.pl = phi ptr [ %i.pm, %.lr.ph.i.i190 ], [ %.ph1076, %.lr.ph.i.i190.preheader1075 ] ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8 ; 2 uses
  %i.pn = load double, ptr %i.pl, align 8, !tbaa !32
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i191, i64 8
  store double %i.pn, ptr %.sroa.07.0.i191, align 8, !tbaa !32
  %.not.i.i192 = icmp eq ptr %i.pm, %i.os
  br i1 %.not.i.i192, label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i, label %.lr.ph.i.i190, !llvm.loop !66

_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i: ; preds = %.lr.ph.i.i190, %middle.block1019, %.lr.ph.i188
  br i1 %.not24.i.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i.preheader, label %.lr.ph.i2.i193

.lr.ph.i2.i193:                                   ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i, %.critedge.i.i194
  %.sroa.215.025.i.i = phi ptr [ %.sroa.215.0.i.i, %.critedge.i.i194 ], [ %.sroa.215.023.i.i, %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i ] ; 3 uses
  %i.pp = load double, ptr %.sroa.215.025.i.i, align 8, !tbaa !32 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph.i2.i193
  %.sroa.27.022.i.i = phi ptr [ %.sroa.215.025.i.i, %.lr.ph.i2.i193 ], [ %i.pq, %bb.x ] ; 3 uses
  %i.pq = getelementptr i8, ptr %.sroa.27.022.i.i, i64 -8 ; 3 uses
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !32 ; 2 uses
  %i.ps = fcmp olt double %i.pp, %i.pr
  br i1 %i.ps, label %bb.x, label %.critedge.i.i194

bb.x:                                             ; preds = %bb.w
  store double %i.pr, ptr %.sroa.27.022.i.i, align 8, !tbaa !32
  %.not20.i.i = icmp eq ptr %i.pq, %i.ot
  br i1 %.not20.i.i, label %.critedge.i.i194, label %bb.w, !llvm.loop !67

.critedge.i.i194:                                 ; preds = %bb.x, %bb.w
  %.sroa.27.0.lcssa.i.i = phi ptr [ %i.ot, %bb.x ], [ %.sroa.27.022.i.i, %bb.w ]
  store double %i.pp, ptr %.sroa.27.0.lcssa.i.i, align 8, !tbaa !32
  %.sroa.215.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.215.025.i.i, i64 8 ; 2 uses
  %.not.i3.i195 = icmp eq ptr %.sroa.215.0.i.i, %i.ou
  br i1 %.not.i3.i195, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i.preheader, label %.lr.ph.i2.i193, !llvm.loop !68

_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i.preheader: ; preds = %.critedge.i.i194, %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i
  br label %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i

_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i.preheader, %bb.y
  %.pn.i.i = phi ptr [ %i.pt, %bb.y ], [ %i.ot, %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i.preheader ] ; 2 uses
  %i.pt = getelementptr i8, ptr %.pn.i.i, i64 8   ; 3 uses
  %.not.i.i.i196 = icmp eq ptr %i.pt, %i.ou
  br i1 %.not.i.i.i196, label %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !32
  %i.pv = load double, ptr %.pn.i.i, align 8, !tbaa !32
  %i.pw = fcmp olt double %i.pu, %i.pv
  br i1 %i.pw, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i, !llvm.loop !69

_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i: ; preds = %bb.y
  %i.px = load i32, ptr @current_test, align 4, !tbaa !4
  %i.py = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.px) ; 0 uses
  %.pre.i197 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i

_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i, %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i
  %i.pz = phi i32 [ %.pre.i197, %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i ], [ %i.pg, %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i ] ; 5 uses
  %i.qa = add nuw nsw i32 %.012.i189, 1           ; 2 uses
  %i.qb = icmp slt i32 %i.qa, %i.pz
  br i1 %i.qb, label %.lr.ph.i188, label %_Z19test_insertion_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc.exit, !llvm.loop !70

_Z19test_insertion_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc.exit: ; preds = %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i
  %i.qc = icmp sgt i32 %i.pz, 0
  br i1 %i.qc, label %.lr.ph.i198, label %_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc.exit243

.lr.ph.i198:                                      ; preds = %_Z19test_insertion_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc.exit, %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i
  %i.qd = phi i32 [ %.pr671, %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i ], [ %i.pz, %_Z19test_insertion_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc.exit ]
  %.012.i199 = phi i32 [ %i.qx, %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i ], [ 0, %_Z19test_insertion_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.y, ptr noundef nonnull align 8 dereferenceable(16000) %i.jr, i64 16000, i1 false), !tbaa !32
  br label %.lr.ph28.i.i

.lr.ph28.i.i:                                     ; preds = %.critedge.i.i208.1, %.lr.ph.i198
  %.sroa.214.027.i.i.idx = phi i64 [ 8, %.lr.ph.i198 ], [ %.sroa.214.027.i.i.add.1, %.critedge.i.i208.1 ] ; 3 uses
  %.sroa.214.027.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.214.027.i.i.idx ; 2 uses
  %i.qe = load double, ptr %.sroa.214.027.i.i.ptr, align 8, !tbaa !32 ; 2 uses
  br label %.lr.ph.i2.i206

.lr.ph.i2.i206:                                   ; preds = %.lr.ph28.i.i, %bb.z
  %.sroa.27.022.i.i207 = phi ptr [ %i.qf, %bb.z ], [ %.sroa.214.027.i.i.ptr, %.lr.ph28.i.i ] ; 3 uses
  %i.qf = getelementptr i8, ptr %.sroa.27.022.i.i207, i64 -8 ; 3 uses
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !32 ; 2 uses
  %i.qh = fcmp olt double %i.qe, %i.qg
  br i1 %i.qh, label %bb.z, label %.critedge.i.i208

bb.z:                                             ; preds = %.lr.ph.i2.i206
  store double %i.qg, ptr %.sroa.27.022.i.i207, align 8, !tbaa !32
  %.not19.i.i214 = icmp eq ptr %i.y, %i.qf
  br i1 %.not19.i.i214, label %.critedge.i.i208, label %.lr.ph.i2.i206, !llvm.loop !71

.critedge.i.i208:                                 ; preds = %bb.z, %.lr.ph.i2.i206
  %.sroa.27.0.lcssa.i.i209 = phi ptr [ %i.y, %bb.z ], [ %.sroa.27.022.i.i207, %.lr.ph.i2.i206 ]
  store double %i.qe, ptr %.sroa.27.0.lcssa.i.i209, align 8, !tbaa !32
  %.sroa.214.027.i.i.add = add nuw nsw i64 %.sroa.214.027.i.i.idx, 8 ; 2 uses
  %.not.i3.i210 = icmp eq i64 %.sroa.214.027.i.i.add, 16000
  br i1 %.not.i3.i210, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.preheader, label %.lr.ph28.i.i.1

.lr.ph28.i.i.1:                                   ; preds = %.critedge.i.i208
  %.sroa.214.027.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.214.027.i.i.add ; 2 uses
  %i.qi = load double, ptr %.sroa.214.027.i.i.ptr.1, align 8, !tbaa !32 ; 2 uses
  br label %.lr.ph.i2.i206.1

.lr.ph.i2.i206.1:                                 ; preds = %bb.aa, %.lr.ph28.i.i.1
  %.sroa.27.022.i.i207.1 = phi ptr [ %i.qj, %bb.aa ], [ %.sroa.214.027.i.i.ptr.1, %.lr.ph28.i.i.1 ] ; 3 uses
  %i.qj = getelementptr i8, ptr %.sroa.27.022.i.i207.1, i64 -8 ; 3 uses
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !32 ; 2 uses
  %i.ql = fcmp olt double %i.qi, %i.qk
  br i1 %i.ql, label %bb.aa, label %.critedge.i.i208.1

bb.aa:                                            ; preds = %.lr.ph.i2.i206.1
  store double %i.qk, ptr %.sroa.27.022.i.i207.1, align 8, !tbaa !32
  %.not19.i.i214.1 = icmp eq ptr %i.y, %i.qj
  br i1 %.not19.i.i214.1, label %.critedge.i.i208.1, label %.lr.ph.i2.i206.1, !llvm.loop !71

.critedge.i.i208.1:                               ; preds = %bb.aa, %.lr.ph.i2.i206.1
  %.sroa.27.0.lcssa.i.i209.1 = phi ptr [ %i.y, %bb.aa ], [ %.sroa.27.022.i.i207.1, %.lr.ph.i2.i206.1 ]
  store double %i.qi, ptr %.sroa.27.0.lcssa.i.i209.1, align 8, !tbaa !32
  %.sroa.214.027.i.i.add.1 = add nuw nsw i64 %.sroa.214.027.i.i.idx, 16
  br label %.lr.ph28.i.i

_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.preheader
  %.in.i.i.i = getelementptr i8, ptr %.pn.i.i211957, i64 16
  %i.qm = load double, ptr %.in.i.i.i, align 8, !tbaa !32 ; 2 uses
  %i.qn = fcmp olt double %i.qm, %i.qs
  br i1 %i.qn, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.1, !llvm.loop !72

_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.1: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i
  %.in.i.i.i.1 = getelementptr i8, ptr %.pn.i.i211957, i64 24
  %i.qo = load double, ptr %.in.i.i.i.1, align 8, !tbaa !32 ; 2 uses
  %i.qp = fcmp olt double %i.qo, %i.qm
  br i1 %i.qp, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.2, !llvm.loop !72

_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.2: ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.1
  %.in.i.i.i.2 = getelementptr i8, ptr %.pn.i.i211957, i64 32 ; 3 uses
  %.not.i.i.i212.2 = icmp eq ptr %i.ap, %.in.i.i.i.2
  br i1 %.not.i.i.i212.2, label %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.2
  %i.qq = load double, ptr %.in.i.i.i.2, align 8, !tbaa !32
  %i.qr = fcmp olt double %i.qq, %i.qo
  br i1 %i.qr, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.preheader, !llvm.loop !72

_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.preheader: ; preds = %bb.ab, %.critedge.i.i208
  %.pn.i.i211957 = phi ptr [ %i.y, %.critedge.i.i208 ], [ %.in.i.i.i.2, %bb.ab ] ; 5 uses
  %.in.i.i.i958 = getelementptr i8, ptr %.pn.i.i211957, i64 8
  %i.qs = load double, ptr %.in.i.i.i958, align 8, !tbaa !32 ; 2 uses
  %i.qt = load double, ptr %.pn.i.i211957, align 8, !tbaa !32
  %i.qu = fcmp olt double %i.qs, %i.qt
  br i1 %i.qu, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i, label %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i, !llvm.loop !72

_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i: ; preds = %bb.ab, %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.1, %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i, %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.preheader
  %i.qv = load i32, ptr @current_test, align 4, !tbaa !4
  %i.qw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.qv) ; 0 uses
  %.pre.i213 = load i32, ptr @iterations, align 4, !tbaa !4
end_hunk_1
begin_hunk_2_@main:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  br label %.thread672

.lr.ph.i244.preheader:                            ; preds = %bb.ag
  %.not2.i.i245 = icmp eq ptr %i.sd, %i.se
  %i.sj = getelementptr inbounds i8, ptr %i.sf, i64 -8
  br label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %.lr.ph.i244.preheader, %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i252
  %.08.i = phi i32 [ %i.sw, %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i252 ], [ 0, %.lr.ph.i244.preheader ]
  br i1 %.not2.i.i245, label %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i248, label %.lr.ph.i.i246

.lr.ph.i.i246:                                    ; preds = %.lr.ph.i244, %.lr.ph.i.i246
  %.sroa.03.0.i = phi ptr [ %i.sn, %.lr.ph.i.i246 ], [ %i.sf, %.lr.ph.i244 ]
  %i.sk = phi ptr [ %i.sl, %.lr.ph.i.i246 ], [ %i.sd, %.lr.ph.i244 ]
  %i.sl = getelementptr inbounds i8, ptr %i.sk, i64 -8 ; 3 uses
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !32
  %i.sn = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -8 ; 2 uses
  store double %i.sm, ptr %i.sn, align 8, !tbaa !32
  %.not.i.i247 = icmp eq ptr %i.sl, %i.se
  br i1 %.not.i.i247, label %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i248, label %.lr.ph.i.i246, !llvm.loop !57

_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i248: ; preds = %.lr.ph.i.i246, %.lr.ph.i244
  store ptr %i.sf, ptr %24, align 8, !tbaa !44
  store ptr %i.sg, ptr %25, align 8, !tbaa !44
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_(ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
          to label %.noexc253 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc253:                                        ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i248, %bb.ah
  %i.so = phi ptr [ %i.sp, %bb.ah ], [ %i.sj, %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i248 ] ; 2 uses
  %.sroa.03.0.i.i.i249 = phi ptr [ %i.sr, %bb.ah ], [ %i.sf, %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i248 ]
  %.not.i.i.i250 = icmp eq ptr %i.so, %i.sg
  br i1 %.not.i.i.i250, label %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i252, label %bb.ah

bb.ah:                                            ; preds = %.noexc253
  %i.sp = getelementptr inbounds i8, ptr %i.so, i64 -8 ; 2 uses
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !32
  %i.sr = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i249, i64 -8 ; 2 uses
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !32
  %i.st = fcmp olt double %i.sq, %i.ss
  br i1 %i.st, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i251, label %.noexc253, !llvm.loop !60

_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i251: ; preds = %bb.ah
  %i.su = load i32, ptr @current_test, align 4, !tbaa !4
  %i.sv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.su) ; 0 uses
  br label %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i252

_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i252: ; preds = %.noexc253, %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i251
  %i.sw = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %i.sx = load i32, ptr @iterations, align 4, !tbaa !4 ; 2 uses
  %i.sy = icmp slt i32 %i.sw, %i.sx
  br i1 %i.sy, label %.lr.ph.i244, label %.loopexit733, !llvm.loop !74

.loopexit733:                                     ; preds = %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.sz = icmp sgt i32 %i.sx, 0
  br i1 %i.sz, label %.lr.ph.i254.preheader, label %.thread672

.lr.ph.i254.preheader:                            ; preds = %.loopexit733
  %i.ta = getelementptr inbounds nuw i8, ptr %i.y, i64 15992 ; 2 uses
  br label %.lr.ph.i254

.thread672:                                       ; preds = %.loopexit733.thread, %.loopexit733
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  br label %.loopexit727.thread

.lr.ph.i254:                                      ; preds = %.lr.ph.i254.preheader, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i267
  %.06.i255 = phi i32 [ %i.ts, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i267 ], [ 0, %.lr.ph.i254.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.y, ptr noundef nonnull align 8 dereferenceable(16000) %i.jr, i64 16000, i1 false), !tbaa !32
  store i64 %i.ar, ptr %22, align 8, !tbaa !33
  store i64 %i.aq, ptr %23, align 8, !tbaa !33
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(ptr noundef nonnull dead_on_return %22, ptr noundef nonnull dead_on_return %23)
          to label %.noexc268.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc268:                                        ; preds = %.noexc268.preheader
  %i.tb = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i263962, i64 -16
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !32 ; 2 uses
  %i.td = fcmp olt double %i.tc, %i.tm
  br i1 %i.td, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i266, label %.noexc268.1, !llvm.loop !63

.noexc268.1:                                      ; preds = %.noexc268
  %i.te = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i263962, i64 -24 ; 2 uses
  %i.tf = load double, ptr %i.te, align 8, !tbaa !32 ; 2 uses
  %i.tg = fcmp olt double %i.tf, %i.tc
  br i1 %i.tg, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i266, label %.noexc268.2, !llvm.loop !63

.noexc268.2:                                      ; preds = %.noexc268.1
  %.not.i.i.i265.2 = icmp eq ptr %i.te, %i.y
  br i1 %.not.i.i.i265.2, label %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i267, label %.noexc268.preheader.3

.noexc268.preheader.3:                            ; preds = %.noexc268.2
  %i.th = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i263962, i64 -32 ; 2 uses
  %i.ti = load double, ptr %i.th, align 8, !tbaa !32
  %i.tj = fcmp olt double %i.ti, %i.tf
  br i1 %i.tj, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i266, label %.noexc268.3, !llvm.loop !63

.noexc268.3:                                      ; preds = %.noexc268.preheader.3
  %i.tk = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i264963, i64 -32
  br label %.noexc268.preheader

.noexc268.preheader:                              ; preds = %.lr.ph.i254, %.noexc268.3
  %.sroa.05.0.i.i.i264963 = phi ptr [ %i.tk, %.noexc268.3 ], [ %i.ap, %.lr.ph.i254 ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i263962 = phi ptr [ %i.th, %.noexc268.3 ], [ %i.ta, %.lr.ph.i254 ] ; 4 uses
  %i.tl = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i263962, i64 -8
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !32 ; 2 uses
  %i.tn = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i264963, i64 -8
  %i.to = load double, ptr %i.tn, align 8, !tbaa !32
  %i.tp = fcmp olt double %i.tm, %i.to
  br i1 %i.tp, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i266, label %.noexc268, !llvm.loop !63

_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i266: ; preds = %.noexc268.preheader.3, %.noexc268.1, %.noexc268, %.noexc268.preheader
  %i.tq = load i32, ptr @current_test, align 4, !tbaa !4
  %i.tr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.tq) ; 0 uses
  br label %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i267

_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i267: ; preds = %.noexc268.2, %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i266
  %i.ts = add nuw nsw i32 %.06.i255, 1            ; 2 uses
  %i.tt = load i32, ptr @iterations, align 4, !tbaa !4 ; 2 uses
  %i.tu = icmp slt i32 %i.ts, %i.tt
  br i1 %i.tu, label %.lr.ph.i254, label %bb.ai, !llvm.loop !75

bb.ai:                                            ; preds = %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  %i.tv = icmp sgt i32 %i.tt, 0
  br i1 %i.tv, label %.lr.ph.i269, label %.loopexit727.thread

.lr.ph.i269:                                      ; preds = %bb.ai, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i282
  %.06.i270 = phi i32 [ %i.un, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i282 ], [ 0, %bb.ai ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.y, ptr noundef nonnull align 8 dereferenceable(16000) %i.jr, i64 16000, i1 false), !tbaa !32
  store i64 %i.ar, ptr %20, align 8, !tbaa !33
  store i64 %i.aq, ptr %21, align 8, !tbaa !33
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(ptr noundef nonnull dead_on_return %20, ptr noundef nonnull dead_on_return %21)
          to label %.noexc283.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc283:                                        ; preds = %.noexc283.preheader
  %i.tw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i278964, i64 -16
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !32 ; 2 uses
  %i.ty = fcmp olt double %i.tx, %i.uh
  br i1 %i.ty, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i281, label %.noexc283.1, !llvm.loop !63

.noexc283.1:                                      ; preds = %.noexc283
  %i.tz = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i278964, i64 -24 ; 2 uses
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !32 ; 2 uses
  %i.ub = fcmp olt double %i.ua, %i.tx
  br i1 %i.ub, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i281, label %.noexc283.2, !llvm.loop !63

.noexc283.2:                                      ; preds = %.noexc283.1
  %.not.i.i.i280.2 = icmp eq ptr %i.tz, %i.y
  br i1 %.not.i.i.i280.2, label %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i282, label %.noexc283.preheader.3

.noexc283.preheader.3:                            ; preds = %.noexc283.2
  %i.uc = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i278964, i64 -32 ; 2 uses
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !32
  %i.ue = fcmp olt double %i.ud, %i.ua
  br i1 %i.ue, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i281, label %.noexc283.3, !llvm.loop !63

.noexc283.3:                                      ; preds = %.noexc283.preheader.3
  %i.uf = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i279965, i64 -32
  br label %.noexc283.preheader

.noexc283.preheader:                              ; preds = %.lr.ph.i269, %.noexc283.3
  %.sroa.05.0.i.i.i279965 = phi ptr [ %i.uf, %.noexc283.3 ], [ %i.ap, %.lr.ph.i269 ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i278964 = phi ptr [ %i.uc, %.noexc283.3 ], [ %i.ta, %.lr.ph.i269 ] ; 4 uses
  %i.ug = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i278964, i64 -8
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !32 ; 2 uses
  %i.ui = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i279965, i64 -8
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !32
  %i.uk = fcmp olt double %i.uh, %i.uj
  br i1 %i.uk, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i281, label %.noexc283, !llvm.loop !63

_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i281: ; preds = %.noexc283.preheader.3, %.noexc283.1, %.noexc283, %.noexc283.preheader
  %i.ul = load i32, ptr @current_test, align 4, !tbaa !4
  %i.um = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.ul) ; 0 uses
  br label %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i282

_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i282: ; preds = %.noexc283.2, %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i281
  %i.un = add nuw nsw i32 %.06.i270, 1            ; 2 uses
  %i.uo = load i32, ptr @iterations, align 4, !tbaa !4 ; 2 uses
  %i.up = icmp slt i32 %i.un, %i.uo
  br i1 %i.up, label %.lr.ph.i269, label %.loopexit727, !llvm.loop !75

.loopexit727.thread:                              ; preds = %.thread672, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  br label %.thread673

.loopexit727:                                     ; preds = %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i282
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.uq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rrdMpb, i64 8), align 8, !tbaa !44 ; 5 uses
  %i.ur = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rrdMpe, i64 8), align 8, !tbaa !44 ; 3 uses
  %i.us = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rrdpb, i64 8), align 8, !tbaa !44 ; 6 uses
  %i.ut = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rrdpe, i64 8), align 8, !tbaa !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.uu = icmp sgt i32 %i.uo, 0
  br i1 %i.uu, label %.lr.ph.i285, label %.thread673

.thread673:                                       ; preds = %.loopexit727.thread, %.loopexit727
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  br label %.loopexit721.thread

.lr.ph.i285:                                      ; preds = %.loopexit727
  %i.uv = ptrtoaddr ptr %i.us to i64
  %30 = ptrtoaddr ptr %i.ur to i64
  %i.uw = ptrtoaddr ptr %i.uq to i64              ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.uy = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.not3.i.i287 = icmp eq ptr %i.uq, %i.ur
  %i.uz = add i64 %30, -8
  %i.va = sub i64 %i.uz, %i.uw                    ; 2 uses
  %i.vb = lshr i64 %i.va, 3
  %i.vc = add nuw nsw i64 %i.vb, 1                ; 2 uses
  %min.iters.check1026 = icmp ult i64 %i.va, 24
  %i.vd = sub i64 %i.uw, %i.uv
  %diff.check1024 = icmp ugt i64 %i.vd, -32
  %or.cond1060 = select i1 %min.iters.check1026, i1 true, i1 %diff.check1024
  %n.vec1029 = and i64 %i.vc, 4611686018427387900 ; 3 uses
  %i.ve = shl i64 %n.vec1029, 3                   ; 2 uses
  %i.vf = getelementptr i8, ptr %i.us, i64 %i.ve
  %i.vg = getelementptr i8, ptr %i.uq, i64 %i.ve
  %cmp.n1038 = icmp eq i64 %i.vc, %n.vec1029
  br label %bb.aj

bb.aj:                                            ; preds = %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i295, %.lr.ph.i285
  %.08.i286 = phi i32 [ 0, %.lr.ph.i285 ], [ %i.vv, %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i295 ]
  br i1 %.not3.i.i287, label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i291, label %.lr.ph.i.i288.preheader

.lr.ph.i.i288.preheader:                          ; preds = %bb.aj
  br i1 %or.cond1060, label %.lr.ph.i.i288.preheader1068, label %vector.body1030

vector.body1030:                                  ; preds = %.lr.ph.i.i288.preheader, %vector.body1030
  %index1031 = phi i64 [ %index.next1036, %vector.body1030 ], [ 0, %.lr.ph.i.i288.preheader ] ; 2 uses
  %i.vh = shl i64 %index1031, 3                   ; 2 uses
  %next.gep1032 = getelementptr i8, ptr %i.us, i64 %i.vh ; 2 uses
  %next.gep1033 = getelementptr i8, ptr %i.uq, i64 %i.vh ; 2 uses
  %i.vi = getelementptr i8, ptr %next.gep1033, i64 16
  %wide.load1034 = load <2 x double>, ptr %next.gep1033, align 8, !tbaa !32
  %wide.load1035 = load <2 x double>, ptr %i.vi, align 8, !tbaa !32
  %i.vj = getelementptr i8, ptr %next.gep1032, i64 16
  store <2 x double> %wide.load1034, ptr %next.gep1032, align 8, !tbaa !32
  store <2 x double> %wide.load1035, ptr %i.vj, align 8, !tbaa !32
  %index.next1036 = add nuw i64 %index1031, 4     ; 2 uses
  %i.vk = icmp eq i64 %index.next1036, %n.vec1029
  br i1 %i.vk, label %middle.block1037, label %vector.body1030, !llvm.loop !76

middle.block1037:                                 ; preds = %vector.body1030
  br i1 %cmp.n1038, label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i291, label %.lr.ph.i.i288.preheader1068

.lr.ph.i.i288.preheader1068:                      ; preds = %.lr.ph.i.i288.preheader, %middle.block1037
  %.sroa.03.0.i289.ph = phi ptr [ %i.us, %.lr.ph.i.i288.preheader ], [ %i.vf, %middle.block1037 ]
  %.ph1069 = phi ptr [ %i.uq, %.lr.ph.i.i288.preheader ], [ %i.vg, %middle.block1037 ]
  br label %.lr.ph.i.i288

.lr.ph.i.i288:                                    ; preds = %.lr.ph.i.i288.preheader1068, %.lr.ph.i.i288
  %.sroa.03.0.i289 = phi ptr [ %i.vo, %.lr.ph.i.i288 ], [ %.sroa.03.0.i289.ph, %.lr.ph.i.i288.preheader1068 ] ; 2 uses
  %i.vl = phi ptr [ %i.vm, %.lr.ph.i.i288 ], [ %.ph1069, %.lr.ph.i.i288.preheader1068 ] ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 8 ; 2 uses
  %i.vn = load double, ptr %i.vl, align 8, !tbaa !32
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i289, i64 8
  store double %i.vn, ptr %.sroa.03.0.i289, align 8, !tbaa !32
  %.not.i.i290 = icmp eq ptr %i.vm, %i.ur
  br i1 %.not.i.i290, label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i291, label %.lr.ph.i.i288, !llvm.loop !77

_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i291: ; preds = %.lr.ph.i.i288, %middle.block1037, %bb.aj
  store ptr %i.us, ptr %i.ux, align 8, !tbaa !44
  store ptr %i.ut, ptr %i.uy, align 8, !tbaa !44
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19)
          to label %.noexc296 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc296:                                        ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i291, %bb.ak
  %.pn.i.i292 = phi ptr [ %i.vp, %bb.ak ], [ %i.us, %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i291 ] ; 2 uses
  %i.vp = getelementptr i8, ptr %.pn.i.i292, i64 8 ; 3 uses
  %.not.i.i.i293 = icmp eq ptr %i.vp, %i.ut
  br i1 %.not.i.i.i293, label %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i295, label %bb.ak

bb.ak:                                            ; preds = %.noexc296
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !32
  %i.vr = load double, ptr %.pn.i.i292, align 8, !tbaa !32
  %i.vs = fcmp olt double %i.vq, %i.vr
  br i1 %i.vs, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i294, label %.noexc296, !llvm.loop !69

_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i294: ; preds = %bb.ak
  %i.vt = load i32, ptr @current_test, align 4, !tbaa !4
  %i.vu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.vt) ; 0 uses
  br label %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i295

_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i295: ; preds = %.noexc296, %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i294
  %i.vv = add nuw nsw i32 %.08.i286, 1            ; 2 uses
  %i.vw = load i32, ptr @iterations, align 4, !tbaa !4 ; 2 uses
  %i.vx = icmp slt i32 %i.vv, %i.vw
  br i1 %i.vx, label %bb.aj, label %bb.al, !llvm.loop !78

bb.al:                                            ; preds = %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.vy = icmp sgt i32 %i.vw, 0
  br i1 %i.vy, label %.lr.ph.i297, label %.loopexit721.thread

.lr.ph.i297:                                      ; preds = %bb.al
  %i.vz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.wa = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i305

_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i305: ; preds = %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i310, %.lr.ph.i297
  %.08.i298 = phi i32 [ 0, %.lr.ph.i297 ], [ %i.wm, %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i310 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.y, ptr noundef nonnull align 8 dereferenceable(16000) %i.jr, i64 16000, i1 false), !tbaa !32
  store i64 %i.aq, ptr %i.vz, align 8, !tbaa !33
  store i64 %i.ar, ptr %i.wa, align 8, !tbaa !33
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17)
          to label %.noexc311.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc311:                                        ; preds = %.noexc311.preheader
  %.in.i.i.i307 = getelementptr i8, ptr %.pn.i.i306967, i64 16
  %i.wb = load double, ptr %.in.i.i.i307, align 8, !tbaa !32 ; 2 uses
  %i.wc = fcmp olt double %i.wb, %i.wh
  br i1 %i.wc, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i309, label %.noexc311.1, !llvm.loop !72

.noexc311.1:                                      ; preds = %.noexc311
  %.in.i.i.i307.1 = getelementptr i8, ptr %.pn.i.i306967, i64 24
  %i.wd = load double, ptr %.in.i.i.i307.1, align 8, !tbaa !32 ; 2 uses
  %i.we = fcmp olt double %i.wd, %i.wb
  br i1 %i.we, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i309, label %.noexc311.2, !llvm.loop !72

.noexc311.2:                                      ; preds = %.noexc311.1
  %.in.i.i.i307.2 = getelementptr i8, ptr %.pn.i.i306967, i64 32 ; 3 uses
  %.not.i.i.i308.2 = icmp eq ptr %i.ap, %.in.i.i.i307.2
  br i1 %.not.i.i.i308.2, label %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i310, label %bb.am

bb.am:                                            ; preds = %.noexc311.2
  %i.wf = load double, ptr %.in.i.i.i307.2, align 8, !tbaa !32
  %i.wg = fcmp olt double %i.wf, %i.wd
  br i1 %i.wg, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i309, label %.noexc311.preheader, !llvm.loop !72

.noexc311.preheader:                              ; preds = %bb.am, %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i305
  %.pn.i.i306967 = phi ptr [ %i.y, %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i305 ], [ %.in.i.i.i307.2, %bb.am ] ; 5 uses
  %.in.i.i.i307968 = getelementptr i8, ptr %.pn.i.i306967, i64 8
  %i.wh = load double, ptr %.in.i.i.i307968, align 8, !tbaa !32 ; 2 uses
  %i.wi = load double, ptr %.pn.i.i306967, align 8, !tbaa !32
  %i.wj = fcmp olt double %i.wh, %i.wi
  br i1 %i.wj, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i309, label %.noexc311, !llvm.loop !72

_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i309: ; preds = %bb.am, %.noexc311.1, %.noexc311, %.noexc311.preheader
  %i.wk = load i32, ptr @current_test, align 4, !tbaa !4
  %i.wl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.wk) ; 0 uses
  br label %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i310

_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i310: ; preds = %.noexc311.2, %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i309
  %i.wm = add nuw nsw i32 %.08.i298, 1            ; 2 uses
  %i.wn = load i32, ptr @iterations, align 4, !tbaa !4 ; 2 uses
  %i.wo = icmp slt i32 %i.wm, %i.wn
  br i1 %i.wo, label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i305, label %.loopexit721, !llvm.loop !79

.loopexit721.thread:                              ; preds = %bb.al, %.thread673
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  br label %.loopexit717

.loopexit721:                                     ; preds = %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.wp = icmp sgt i32 %i.wn, 0
  br i1 %i.wp, label %.lr.ph.i312, label %.loopexit717

.lr.ph.i312:                                      ; preds = %.loopexit721
  %i.wq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.wr = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i320

_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i320: ; preds = %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i325, %.lr.ph.i312
  %.08.i313 = phi i32 [ 0, %.lr.ph.i312 ], [ %i.xd, %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i325 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.y, ptr noundef nonnull align 8 dereferenceable(16000) %i.jr, i64 16000, i1 false), !tbaa !32
  store i64 %i.aq, ptr %i.wq, align 8, !tbaa !33
  store i64 %i.ar, ptr %i.wr, align 8, !tbaa !33
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(ptr noundef nonnull dead_on_return %14, ptr noundef nonnull dead_on_return %15)
          to label %.noexc326.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc326:                                        ; preds = %.noexc326.preheader
  %.in.i.i.i322 = getelementptr i8, ptr %.pn.i.i321970, i64 16
  %i.ws = load double, ptr %.in.i.i.i322, align 8, !tbaa !32 ; 2 uses
  %i.wt = fcmp olt double %i.ws, %i.wy
  br i1 %i.wt, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i324, label %.noexc326.1, !llvm.loop !72

.noexc326.1:                                      ; preds = %.noexc326
  %.in.i.i.i322.1 = getelementptr i8, ptr %.pn.i.i321970, i64 24
  %i.wu = load double, ptr %.in.i.i.i322.1, align 8, !tbaa !32 ; 2 uses
  %i.wv = fcmp olt double %i.wu, %i.ws
  br i1 %i.wv, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i324, label %.noexc326.2, !llvm.loop !72

.noexc326.2:                                      ; preds = %.noexc326.1
  %.in.i.i.i322.2 = getelementptr i8, ptr %.pn.i.i321970, i64 32 ; 3 uses
  %.not.i.i.i323.2 = icmp eq ptr %i.ap, %.in.i.i.i322.2
  br i1 %.not.i.i.i323.2, label %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i325, label %bb.an

bb.an:                                            ; preds = %.noexc326.2
  %i.ww = load double, ptr %.in.i.i.i322.2, align 8, !tbaa !32
  %i.wx = fcmp olt double %i.ww, %i.wu
  br i1 %i.wx, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i324, label %.noexc326.preheader, !llvm.loop !72

.noexc326.preheader:                              ; preds = %bb.an, %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i320
  %.pn.i.i321970 = phi ptr [ %i.y, %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i320 ], [ %.in.i.i.i322.2, %bb.an ] ; 5 uses
  %.in.i.i.i322971 = getelementptr i8, ptr %.pn.i.i321970, i64 8
  %i.wy = load double, ptr %.in.i.i.i322971, align 8, !tbaa !32 ; 2 uses
  %i.wz = load double, ptr %.pn.i.i321970, align 8, !tbaa !32
  %i.xa = fcmp olt double %i.wy, %i.wz
end_hunk_2
begin_hunk_3_@main:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  br label %.thread675

.lr.ph.i328.preheader:                            ; preds = %bb.ap
  %.not2.i.i330 = icmp eq ptr %i.xk, %i.xl
  %i.xq = getelementptr inbounds i8, ptr %i.xm, i64 -8
  br label %.lr.ph.i328

.lr.ph.i328:                                      ; preds = %.lr.ph.i328.preheader, %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i338
  %.08.i329 = phi i32 [ %i.yd, %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i338 ], [ 0, %.lr.ph.i328.preheader ]
  br i1 %.not2.i.i330, label %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i334, label %.lr.ph.i.i331

.lr.ph.i.i331:                                    ; preds = %.lr.ph.i328, %.lr.ph.i.i331
  %.sroa.03.0.i332 = phi ptr [ %i.xu, %.lr.ph.i.i331 ], [ %i.xm, %.lr.ph.i328 ]
  %i.xr = phi ptr [ %i.xs, %.lr.ph.i.i331 ], [ %i.xk, %.lr.ph.i328 ]
  %i.xs = getelementptr inbounds i8, ptr %i.xr, i64 -8 ; 3 uses
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !32
  %i.xu = getelementptr inbounds i8, ptr %.sroa.03.0.i332, i64 -8 ; 2 uses
  store double %i.xt, ptr %i.xu, align 8, !tbaa !32
  %.not.i.i333 = icmp eq ptr %i.xs, %i.xl
  br i1 %.not.i.i333, label %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i334, label %.lr.ph.i.i331, !llvm.loop !57

_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i334: ; preds = %.lr.ph.i.i331, %.lr.ph.i328
  store ptr %i.xm, ptr %12, align 8, !tbaa !44
  store ptr %i.xn, ptr %13, align 8, !tbaa !44
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_(ptr noundef nonnull dead_on_return %12, ptr noundef nonnull dead_on_return %13)
          to label %.noexc339 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc339:                                        ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i334, %bb.aq
  %i.xv = phi ptr [ %i.xw, %bb.aq ], [ %i.xq, %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i334 ] ; 2 uses
  %.sroa.03.0.i.i.i335 = phi ptr [ %i.xy, %bb.aq ], [ %i.xm, %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i334 ]
  %.not.i.i.i336 = icmp eq ptr %i.xv, %i.xn
  br i1 %.not.i.i.i336, label %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i338, label %bb.aq

bb.aq:                                            ; preds = %.noexc339
  %i.xw = getelementptr inbounds i8, ptr %i.xv, i64 -8 ; 2 uses
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !32
  %i.xy = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i335, i64 -8 ; 2 uses
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !32
  %i.ya = fcmp olt double %i.xx, %i.xz
  br i1 %i.ya, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i337, label %.noexc339, !llvm.loop !60

_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i337: ; preds = %bb.aq
  %i.yb = load i32, ptr @current_test, align 4, !tbaa !4
  %i.yc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.yb) ; 0 uses
  br label %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i338

_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i338: ; preds = %.noexc339, %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i337
  %i.yd = add nuw nsw i32 %.08.i329, 1            ; 2 uses
  %i.ye = load i32, ptr @iterations, align 4, !tbaa !4 ; 2 uses
  %i.yf = icmp slt i32 %i.yd, %i.ye
  br i1 %i.yf, label %.lr.ph.i328, label %.loopexit714, !llvm.loop !80

.loopexit714:                                     ; preds = %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i338
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.yg = icmp sgt i32 %i.ye, 0
  br i1 %i.yg, label %.lr.ph.i340.preheader, label %.thread675

.lr.ph.i340.preheader:                            ; preds = %.loopexit714
  %i.yh = getelementptr inbounds nuw i8, ptr %i.y, i64 15992 ; 2 uses
  br label %.lr.ph.i340

.thread675:                                       ; preds = %.loopexit714.thread, %.loopexit714
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %.loopexit708.thread

.lr.ph.i340:                                      ; preds = %.lr.ph.i340.preheader, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i353
  %.06.i341 = phi i32 [ %i.yz, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i353 ], [ 0, %.lr.ph.i340.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.y, ptr noundef nonnull align 8 dereferenceable(16000) %i.jr, i64 16000, i1 false), !tbaa !32
  store i64 %i.ar, ptr %10, align 8, !tbaa !33
  store i64 %i.aq, ptr %11, align 8, !tbaa !33
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11)
          to label %.noexc354.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc354:                                        ; preds = %.noexc354.preheader
  %i.yi = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i349972, i64 -16
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !32 ; 2 uses
  %i.yk = fcmp olt double %i.yj, %i.yt
  br i1 %i.yk, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i352, label %.noexc354.1, !llvm.loop !63

.noexc354.1:                                      ; preds = %.noexc354
  %i.yl = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i349972, i64 -24 ; 2 uses
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !32 ; 2 uses
  %i.yn = fcmp olt double %i.ym, %i.yj
  br i1 %i.yn, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i352, label %.noexc354.2, !llvm.loop !63

.noexc354.2:                                      ; preds = %.noexc354.1
  %.not.i.i.i351.2 = icmp eq ptr %i.yl, %i.y
  br i1 %.not.i.i.i351.2, label %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i353, label %.noexc354.preheader.3

.noexc354.preheader.3:                            ; preds = %.noexc354.2
  %i.yo = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i349972, i64 -32 ; 2 uses
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !32
  %i.yq = fcmp olt double %i.yp, %i.ym
  br i1 %i.yq, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i352, label %.noexc354.3, !llvm.loop !63

.noexc354.3:                                      ; preds = %.noexc354.preheader.3
  %i.yr = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i350973, i64 -32
  br label %.noexc354.preheader

.noexc354.preheader:                              ; preds = %.lr.ph.i340, %.noexc354.3
  %.sroa.05.0.i.i.i350973 = phi ptr [ %i.yr, %.noexc354.3 ], [ %i.ap, %.lr.ph.i340 ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i349972 = phi ptr [ %i.yo, %.noexc354.3 ], [ %i.yh, %.lr.ph.i340 ] ; 4 uses
  %i.ys = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i349972, i64 -8
  %i.yt = load double, ptr %i.ys, align 8, !tbaa !32 ; 2 uses
  %i.yu = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i350973, i64 -8
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !32
  %i.yw = fcmp olt double %i.yt, %i.yv
  br i1 %i.yw, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i352, label %.noexc354, !llvm.loop !63

_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i352: ; preds = %.noexc354.preheader.3, %.noexc354.1, %.noexc354, %.noexc354.preheader
  %i.yx = load i32, ptr @current_test, align 4, !tbaa !4
  %i.yy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.yx) ; 0 uses
  br label %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i353

_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i353: ; preds = %.noexc354.2, %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i352
  %i.yz = add nuw nsw i32 %.06.i341, 1            ; 2 uses
  %i.za = load i32, ptr @iterations, align 4, !tbaa !4 ; 2 uses
  %i.zb = icmp slt i32 %i.yz, %i.za
  br i1 %i.zb, label %.lr.ph.i340, label %bb.ar, !llvm.loop !81

bb.ar:                                            ; preds = %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.zc = icmp sgt i32 %i.za, 0
  br i1 %i.zc, label %.lr.ph.i355, label %.loopexit708.thread

.lr.ph.i355:                                      ; preds = %bb.ar, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i368
  %.06.i356 = phi i32 [ %i.zu, %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i368 ], [ 0, %bb.ar ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.y, ptr noundef nonnull align 8 dereferenceable(16000) %i.jr, i64 16000, i1 false), !tbaa !32
  store i64 %i.ar, ptr %8, align 8, !tbaa !33
  store i64 %i.aq, ptr %9, align 8, !tbaa !33
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9)
          to label %.noexc369.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc369:                                        ; preds = %.noexc369.preheader
  %i.zd = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i364974, i64 -16
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !32 ; 2 uses
  %i.zf = fcmp olt double %i.ze, %i.zo
  br i1 %i.zf, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i367, label %.noexc369.1, !llvm.loop !63

.noexc369.1:                                      ; preds = %.noexc369
  %i.zg = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i364974, i64 -24 ; 2 uses
  %i.zh = load double, ptr %i.zg, align 8, !tbaa !32 ; 2 uses
  %i.zi = fcmp olt double %i.zh, %i.ze
  br i1 %i.zi, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i367, label %.noexc369.2, !llvm.loop !63

.noexc369.2:                                      ; preds = %.noexc369.1
  %.not.i.i.i366.2 = icmp eq ptr %i.zg, %i.y
  br i1 %.not.i.i.i366.2, label %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i368, label %.noexc369.preheader.3

.noexc369.preheader.3:                            ; preds = %.noexc369.2
  %i.zj = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i364974, i64 -32 ; 2 uses
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !32
  %i.zl = fcmp olt double %i.zk, %i.zh
  br i1 %i.zl, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i367, label %.noexc369.3, !llvm.loop !63

.noexc369.3:                                      ; preds = %.noexc369.preheader.3
  %i.zm = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i365975, i64 -32
  br label %.noexc369.preheader

.noexc369.preheader:                              ; preds = %.lr.ph.i355, %.noexc369.3
  %.sroa.05.0.i.i.i365975 = phi ptr [ %i.zm, %.noexc369.3 ], [ %i.ap, %.lr.ph.i355 ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i364974 = phi ptr [ %i.zj, %.noexc369.3 ], [ %i.yh, %.lr.ph.i355 ] ; 4 uses
  %i.zn = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i364974, i64 -8
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !32 ; 2 uses
  %i.zp = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i365975, i64 -8
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !32
  %i.zr = fcmp olt double %i.zo, %i.zq
  br i1 %i.zr, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i367, label %.noexc369, !llvm.loop !63

_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i367: ; preds = %.noexc369.preheader.3, %.noexc369.1, %.noexc369, %.noexc369.preheader
  %i.zs = load i32, ptr @current_test, align 4, !tbaa !4
  %i.zt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.zs) ; 0 uses
  br label %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i368

_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i368: ; preds = %.noexc369.2, %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i367
  %i.zu = add nuw nsw i32 %.06.i356, 1            ; 2 uses
  %i.zv = load i32, ptr @iterations, align 4, !tbaa !4 ; 2 uses
  %i.zw = icmp slt i32 %i.zu, %i.zv
  br i1 %i.zw, label %.lr.ph.i355, label %.loopexit708, !llvm.loop !81

.loopexit708.thread:                              ; preds = %.thread675, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  br label %.thread676

.loopexit708:                                     ; preds = %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i368
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.zx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rrdMpb, i64 8), align 8, !tbaa !44 ; 5 uses
  %i.zy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rrdMpe, i64 8), align 8, !tbaa !44 ; 3 uses
  %i.zz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rrdpb, i64 8), align 8, !tbaa !44 ; 6 uses
  %i.aaa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rrdpe, i64 8), align 8, !tbaa !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.aab = icmp sgt i32 %i.zv, 0
  br i1 %i.aab, label %.lr.ph.i371, label %.thread676

.thread676:                                       ; preds = %.loopexit708.thread, %.loopexit708
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %.loopexit702.thread

.lr.ph.i371:                                      ; preds = %.loopexit708
  %i.aac = ptrtoaddr ptr %i.zz to i64
  %31 = ptrtoaddr ptr %i.zy to i64
  %i.aad = ptrtoaddr ptr %i.zx to i64             ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aaf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not3.i.i373 = icmp eq ptr %i.zx, %i.zy
  %i.aag = add i64 %31, -8
  %i.aah = sub i64 %i.aag, %i.aad                 ; 2 uses
  %i.aai = lshr i64 %i.aah, 3
  %i.aaj = add nuw nsw i64 %i.aai, 1              ; 2 uses
  %min.iters.check1044 = icmp ult i64 %i.aah, 24
  %i.aak = sub i64 %i.aad, %i.aac
  %diff.check1042 = icmp ugt i64 %i.aak, -32
  %or.cond1061 = select i1 %min.iters.check1044, i1 true, i1 %diff.check1042
  %n.vec1047 = and i64 %i.aaj, 4611686018427387900 ; 3 uses
  %i.aal = shl i64 %n.vec1047, 3                  ; 2 uses
  %i.aam = getelementptr i8, ptr %i.zz, i64 %i.aal
  %i.aan = getelementptr i8, ptr %i.zx, i64 %i.aal
  %cmp.n1056 = icmp eq i64 %i.aaj, %n.vec1047
  br label %bb.as

bb.as:                                            ; preds = %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i381, %.lr.ph.i371
  %.08.i372 = phi i32 [ 0, %.lr.ph.i371 ], [ %i.abc, %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i381 ]
  br i1 %.not3.i.i373, label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i377, label %.lr.ph.i.i374.preheader

.lr.ph.i.i374.preheader:                          ; preds = %bb.as
  br i1 %or.cond1061, label %.lr.ph.i.i374.preheader1062, label %vector.body1048

vector.body1048:                                  ; preds = %.lr.ph.i.i374.preheader, %vector.body1048
  %index1049 = phi i64 [ %index.next1054, %vector.body1048 ], [ 0, %.lr.ph.i.i374.preheader ] ; 2 uses
  %i.aao = shl i64 %index1049, 3                  ; 2 uses
  %next.gep1050 = getelementptr i8, ptr %i.zz, i64 %i.aao ; 2 uses
  %next.gep1051 = getelementptr i8, ptr %i.zx, i64 %i.aao ; 2 uses
  %i.aap = getelementptr i8, ptr %next.gep1051, i64 16
  %wide.load1052 = load <2 x double>, ptr %next.gep1051, align 8, !tbaa !32
  %wide.load1053 = load <2 x double>, ptr %i.aap, align 8, !tbaa !32
  %i.aaq = getelementptr i8, ptr %next.gep1050, i64 16
  store <2 x double> %wide.load1052, ptr %next.gep1050, align 8, !tbaa !32
  store <2 x double> %wide.load1053, ptr %i.aaq, align 8, !tbaa !32
  %index.next1054 = add nuw i64 %index1049, 4     ; 2 uses
  %i.aar = icmp eq i64 %index.next1054, %n.vec1047
  br i1 %i.aar, label %middle.block1055, label %vector.body1048, !llvm.loop !82

middle.block1055:                                 ; preds = %vector.body1048
  br i1 %cmp.n1056, label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i377, label %.lr.ph.i.i374.preheader1062

.lr.ph.i.i374.preheader1062:                      ; preds = %.lr.ph.i.i374.preheader, %middle.block1055
  %.sroa.03.0.i375.ph = phi ptr [ %i.zz, %.lr.ph.i.i374.preheader ], [ %i.aam, %middle.block1055 ]
  %.ph = phi ptr [ %i.zx, %.lr.ph.i.i374.preheader ], [ %i.aan, %middle.block1055 ]
  br label %.lr.ph.i.i374

.lr.ph.i.i374:                                    ; preds = %.lr.ph.i.i374.preheader1062, %.lr.ph.i.i374
  %.sroa.03.0.i375 = phi ptr [ %i.aav, %.lr.ph.i.i374 ], [ %.sroa.03.0.i375.ph, %.lr.ph.i.i374.preheader1062 ] ; 2 uses
  %i.aas = phi ptr [ %i.aat, %.lr.ph.i.i374 ], [ %.ph, %.lr.ph.i.i374.preheader1062 ] ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 8 ; 2 uses
  %i.aau = load double, ptr %i.aas, align 8, !tbaa !32
  %i.aav = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i375, i64 8
  store double %i.aau, ptr %.sroa.03.0.i375, align 8, !tbaa !32
  %.not.i.i376 = icmp eq ptr %i.aat, %i.zy
  br i1 %.not.i.i376, label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i377, label %.lr.ph.i.i374, !llvm.loop !83

_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i377: ; preds = %.lr.ph.i.i374, %middle.block1055, %bb.as
  store ptr %i.zz, ptr %i.aae, align 8, !tbaa !44
  store ptr %i.aaa, ptr %i.aaf, align 8, !tbaa !44
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
          to label %.noexc382 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc382:                                        ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i377, %bb.at
  %.pn.i.i378 = phi ptr [ %i.aaw, %bb.at ], [ %i.zz, %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i377 ] ; 2 uses
  %i.aaw = getelementptr i8, ptr %.pn.i.i378, i64 8 ; 3 uses
  %.not.i.i.i379 = icmp eq ptr %i.aaw, %i.aaa
  br i1 %.not.i.i.i379, label %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i381, label %bb.at

bb.at:                                            ; preds = %.noexc382
  %i.aax = load double, ptr %i.aaw, align 8, !tbaa !32
  %i.aay = load double, ptr %.pn.i.i378, align 8, !tbaa !32
  %i.aaz = fcmp olt double %i.aax, %i.aay
  br i1 %i.aaz, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i380, label %.noexc382, !llvm.loop !69

_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i380: ; preds = %bb.at
  %i.aba = load i32, ptr @current_test, align 4, !tbaa !4
  %i.abb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.aba) ; 0 uses
  br label %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i381

_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i381: ; preds = %.noexc382, %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i380
  %i.abc = add nuw nsw i32 %.08.i372, 1           ; 2 uses
  %i.abd = load i32, ptr @iterations, align 4, !tbaa !4 ; 2 uses
  %i.abe = icmp slt i32 %i.abc, %i.abd
  br i1 %i.abe, label %bb.as, label %bb.au, !llvm.loop !84

bb.au:                                            ; preds = %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i381
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.abf = icmp sgt i32 %i.abd, 0
  br i1 %i.abf, label %.lr.ph.i383, label %.loopexit702.thread

.lr.ph.i383:                                      ; preds = %bb.au
  %i.abg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.abh = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i391

_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i391: ; preds = %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i396, %.lr.ph.i383
  %.08.i384 = phi i32 [ 0, %.lr.ph.i383 ], [ %i.abt, %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i396 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.y, ptr noundef nonnull align 8 dereferenceable(16000) %i.jr, i64 16000, i1 false), !tbaa !32
  store i64 %i.aq, ptr %i.abg, align 8, !tbaa !33
  store i64 %i.ar, ptr %i.abh, align 8, !tbaa !33
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5)
          to label %.noexc397.preheader unwind label %.loopexit.split-lp.loopexit

.noexc397:                                        ; preds = %.noexc397.preheader
  %.in.i.i.i393 = getelementptr i8, ptr %.pn.i.i392977, i64 16
  %i.abi = load double, ptr %.in.i.i.i393, align 8, !tbaa !32 ; 2 uses
  %i.abj = fcmp olt double %i.abi, %i.abo
  br i1 %i.abj, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i395, label %.noexc397.1, !llvm.loop !72

.noexc397.1:                                      ; preds = %.noexc397
  %.in.i.i.i393.1 = getelementptr i8, ptr %.pn.i.i392977, i64 24
  %i.abk = load double, ptr %.in.i.i.i393.1, align 8, !tbaa !32 ; 2 uses
  %i.abl = fcmp olt double %i.abk, %i.abi
  br i1 %i.abl, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i395, label %.noexc397.2, !llvm.loop !72

.noexc397.2:                                      ; preds = %.noexc397.1
  %.in.i.i.i393.2 = getelementptr i8, ptr %.pn.i.i392977, i64 32 ; 3 uses
  %.not.i.i.i394.2 = icmp eq ptr %i.ap, %.in.i.i.i393.2
  br i1 %.not.i.i.i394.2, label %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i396, label %bb.av

bb.av:                                            ; preds = %.noexc397.2
  %i.abm = load double, ptr %.in.i.i.i393.2, align 8, !tbaa !32
  %i.abn = fcmp olt double %i.abm, %i.abk
  br i1 %i.abn, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i395, label %.noexc397.preheader, !llvm.loop !72

.noexc397.preheader:                              ; preds = %bb.av, %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i391
  %.pn.i.i392977 = phi ptr [ %i.y, %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i391 ], [ %.in.i.i.i393.2, %bb.av ] ; 5 uses
  %.in.i.i.i393978 = getelementptr i8, ptr %.pn.i.i392977, i64 8
  %i.abo = load double, ptr %.in.i.i.i393978, align 8, !tbaa !32 ; 2 uses
  %i.abp = load double, ptr %.pn.i.i392977, align 8, !tbaa !32
  %i.abq = fcmp olt double %i.abo, %i.abp
  br i1 %i.abq, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i395, label %.noexc397, !llvm.loop !72

_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i395: ; preds = %bb.av, %.noexc397.1, %.noexc397, %.noexc397.preheader
  %i.abr = load i32, ptr @current_test, align 4, !tbaa !4
  %i.abs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.abr) ; 0 uses
  br label %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i396

_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i396: ; preds = %.noexc397.2, %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i395
  %i.abt = add nuw nsw i32 %.08.i384, 1           ; 2 uses
  %i.abu = load i32, ptr @iterations, align 4, !tbaa !4 ; 2 uses
  %i.abv = icmp slt i32 %i.abt, %i.abu
  br i1 %i.abv, label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i391, label %.loopexit702, !llvm.loop !85

.loopexit702.thread:                              ; preds = %bb.au, %.thread676
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit416

.loopexit702:                                     ; preds = %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i396
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.abw = icmp sgt i32 %i.abu, 0
  br i1 %i.abw, label %.lr.ph.i398, label %_ZNSt6vectorIdSaIdEED2Ev.exit416

.lr.ph.i398:                                      ; preds = %.loopexit702
  %i.abx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aby = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i406

_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i406: ; preds = %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i411, %.lr.ph.i398
  %.08.i399 = phi i32 [ 0, %.lr.ph.i398 ], [ %i.ack, %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i411 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.y, ptr noundef nonnull align 8 dereferenceable(16000) %i.jr, i64 16000, i1 false), !tbaa !32
  store i64 %i.aq, ptr %i.abx, align 8, !tbaa !33
  store i64 %i.ar, ptr %i.aby, align 8, !tbaa !33
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
          to label %.noexc412.preheader unwind label %.loopexit

.noexc412:                                        ; preds = %.noexc412.preheader
  %.in.i.i.i408 = getelementptr i8, ptr %.pn.i.i407980, i64 16
  %i.abz = load double, ptr %.in.i.i.i408, align 8, !tbaa !32 ; 2 uses
  %i.aca = fcmp olt double %i.abz, %i.acf
  br i1 %i.aca, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i410, label %.noexc412.1, !llvm.loop !72

.noexc412.1:                                      ; preds = %.noexc412
  %.in.i.i.i408.1 = getelementptr i8, ptr %.pn.i.i407980, i64 24
  %i.acb = load double, ptr %.in.i.i.i408.1, align 8, !tbaa !32 ; 2 uses
  %i.acc = fcmp olt double %i.acb, %i.abz
  br i1 %i.acc, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i410, label %.noexc412.2, !llvm.loop !72

.noexc412.2:                                      ; preds = %.noexc412.1
  %.in.i.i.i408.2 = getelementptr i8, ptr %.pn.i.i407980, i64 32 ; 3 uses
  %.not.i.i.i409.2 = icmp eq ptr %i.ap, %.in.i.i.i408.2
  br i1 %.not.i.i.i409.2, label %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i411, label %bb.aw

bb.aw:                                            ; preds = %.noexc412.2
  %i.acd = load double, ptr %.in.i.i.i408.2, align 8, !tbaa !32
  %i.ace = fcmp olt double %i.acd, %i.acb
  br i1 %i.ace, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i410, label %.noexc412.preheader, !llvm.loop !72

.noexc412.preheader:                              ; preds = %bb.aw, %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i406
  %.pn.i.i407980 = phi ptr [ %i.y, %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i406 ], [ %.in.i.i.i408.2, %bb.aw ] ; 5 uses
  %.in.i.i.i408981 = getelementptr i8, ptr %.pn.i.i407980, i64 8
  %i.acf = load double, ptr %.in.i.i.i408981, align 8, !tbaa !32 ; 2 uses
  %i.acg = load double, ptr %.pn.i.i407980, align 8, !tbaa !32
  %i.ach = fcmp olt double %i.acf, %i.acg
  br i1 %i.ach, label %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i410, label %.noexc412, !llvm.loop !72

_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i410: ; preds = %bb.aw, %.noexc412.1, %.noexc412, %.noexc412.preheader
  %i.aci = load i32, ptr @current_test, align 4, !tbaa !4
  %i.acj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.aci) ; 0 uses
  br label %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i411

_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i411: ; preds = %.noexc412.2, %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i410
  %i.ack = add nuw nsw i32 %.08.i399, 1           ; 2 uses
  %i.acl = load i32, ptr @iterations, align 4, !tbaa !4
  %i.acm = icmp slt i32 %i.ack, %i.acl
  br i1 %i.acm, label %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i406, label %_ZNSt6vectorIdSaIdEED2Ev.exit416, !llvm.loop !85

_ZNSt6vectorIdSaIdEED2Ev.exit416:                 ; preds = %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i411, %.loopexit702.thread, %.loopexit702
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef 16000) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 16000) #22
  ret i32 0

.thread679:                                       ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i430
  %i.acn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit420

.loopexit:                                        ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i406
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i391
  %lpad.loopexit699 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i377
  %lpad.loopexit703 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i355
  %lpad.loopexit705 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i340
  %lpad.loopexit709 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i334
  %lpad.loopexit711 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i320
  %lpad.loopexit715 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i305
  %lpad.loopexit718 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i291
  %lpad.loopexit722 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i269
  %lpad.loopexit724 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i254
  %lpad.loopexit728 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i248
  %lpad.loopexit730 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ao, %.loopexit717, %bb.af, %_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc.exit243, %bb.n, %_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_.exit
  %lpad.loopexit.split-lp731 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit699, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit703, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit705, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit709, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit711, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit715, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit718, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit722, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit724, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit728, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit730, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp731, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef 16000) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit420

_ZNSt6vectorIdSaIdEED2Ev.exit420:                 ; preds = %.loopexit.split-lp, %.thread679
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.acn, %.thread679 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 16000) #22
  resume { ptr, i32 } %.pn.pn.pn.ph
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #10 comdat {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
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
  %i.e = add i64 %6, -8
  %i.f = sub i64 %i.e, %i.a                       ; 2 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.f, 24
  %i.i = sub i64 %i.a, %i.b
  %diff.check54 = icmp ugt i64 %i.i, -32
  %or.cond = or i1 %min.iters.check56, %diff.check54
  %n.vec59 = and i64 %i.h, 4611686018427387900    ; 3 uses
  %i.j = shl i64 %n.vec59, 3                      ; 2 uses
  %i.k = getelementptr i8, ptr %2, i64 %i.j
  %i.l = getelementptr i8, ptr %0, i64 %i.j
  %cmp.n68 = icmp eq i64 %i.h, %n.vec59
  br label %.lr.ph.i.preheader.us

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us:   ; preds = %.lr.ph.split.us, %_Z13verify_sortedIPdEvT_S1_.exit.us.us
  %i.m = phi i32 [ %i.s, %_Z13verify_sortedIPdEvT_S1_.exit.us.us ], [ %i.c, %.lr.ph.split.us ]
  %.010.us.us = phi i32 [ %i.t, %_Z13verify_sortedIPdEvT_S1_.exit.us.us ], [ 0, %.lr.ph.split.us ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us
  %.pn.i.i.us.us = phi ptr [ %2, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us ], [ %.08.i.i.us.us, %bb.c ] ; 2 uses
  %.08.i.i.us.us = getelementptr i8, ptr %.pn.i.i.us.us, i64 8 ; 3 uses
  %.not.i.i.us.us = icmp eq ptr %.08.i.i.us.us, %3
  br i1 %.not.i.i.us.us, label %_Z13verify_sortedIPdEvT_S1_.exit.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load double, ptr %.08.i.i.us.us, align 8, !tbaa !32
  %i.o = load double, ptr %.pn.i.i.us.us, align 8, !tbaa !32
  %i.p = fcmp olt double %i.n, %i.o
  br i1 %i.p, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us.us, label %bb.b, !llvm.loop !86

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us.us:  ; preds = %bb.c
  %i.q = load i32, ptr @current_test, align 4, !tbaa !4
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.q) ; 0 uses
  %.pre24 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIPdEvT_S1_.exit.us.us

_Z13verify_sortedIPdEvT_S1_.exit.us.us:           ; preds = %bb.b, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us.us
  %i.s = phi i32 [ %.pre24, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us.us ], [ %i.m, %bb.b ] ; 2 uses
  %i.t = add nuw nsw i32 %.010.us.us, 1           ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.s
  br i1 %i.u, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us, label %._crit_edge, !llvm.loop !87

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_Z13verify_sortedIPdEvT_S1_.exit.us
  %i.v = phi i32 [ %i.ai, %_Z13verify_sortedIPdEvT_S1_.exit.us ], [ %i.c, %.lr.ph.i.preheader.us.preheader ]
  %.010.us = phi i32 [ %i.aj, %_Z13verify_sortedIPdEvT_S1_.exit.us ], [ 0, %.lr.ph.i.preheader.us.preheader ]
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body60

vector.body60:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body60
  %index61 = phi i64 [ %index.next66, %vector.body60 ], [ 0, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.w = shl i64 %index61, 3                      ; 2 uses
  %next.gep62 = getelementptr i8, ptr %2, i64 %i.w ; 2 uses
  %next.gep63 = getelementptr i8, ptr %0, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load64 = load <2 x double>, ptr %next.gep63, align 8, !tbaa !32
  %wide.load65 = load <2 x double>, ptr %i.x, align 8, !tbaa !32
  %i.y = getelementptr i8, ptr %next.gep62, i64 16
  store <2 x double> %wide.load64, ptr %next.gep62, align 8, !tbaa !32
  store <2 x double> %wide.load65, ptr %i.y, align 8, !tbaa !32
  %index.next66 = add nuw i64 %index61, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.z, label %middle.block67, label %vector.body60, !llvm.loop !88

middle.block67:                                   ; preds = %vector.body60
  br i1 %cmp.n68, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader.us, %middle.block67
  %.07.i.us.ph = phi ptr [ %2, %.lr.ph.i.preheader.us ], [ %i.k, %middle.block67 ]
  %.046.i.us.ph = phi ptr [ %0, %.lr.ph.i.preheader.us ], [ %i.l, %middle.block67 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.07.i.us = phi ptr [ %i.ac, %.lr.ph.i.us ], [ %.07.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %.046.i.us = phi ptr [ %i.aa, %.lr.ph.i.us ], [ %.046.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.046.i.us, i64 8 ; 2 uses
  %i.ab = load double, ptr %.046.i.us, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.us, i64 8
  store double %i.ab, ptr %.07.i.us, align 8, !tbaa !32
  %.not.i.us = icmp eq ptr %i.aa, %1
  br i1 %.not.i.us, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us, !llvm.loop !89

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us.preheader: ; preds = %.lr.ph.i.us, %middle.block67
  br label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us: ; preds = %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us.preheader, %bb.d
  %.pn.i.i.us = phi ptr [ %.08.i.i.us, %bb.d ], [ %2, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us.preheader ] ; 2 uses
  %.08.i.i.us = getelementptr i8, ptr %.pn.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.08.i.i.us, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIPdEvT_S1_.exit.us, label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us
  %i.ad = load double, ptr %.08.i.i.us, align 8, !tbaa !32
  %i.ae = load double, ptr %.pn.i.i.us, align 8, !tbaa !32
  %i.af = fcmp olt double %i.ad, %i.ae
  br i1 %i.af, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us, !llvm.loop !86

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us:     ; preds = %bb.d
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.ag) ; 0 uses
  %.pre23 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIPdEvT_S1_.exit.us

_Z13verify_sortedIPdEvT_S1_.exit.us:              ; preds = %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us
  %i.ai = phi i32 [ %.pre23, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us ], [ %i.v, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us ] ; 2 uses
  %i.aj = add nuw nsw i32 %.010.us, 1             ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %i.ai
  br i1 %i.ak, label %.lr.ph.i.preheader.us, label %._crit_edge, !llvm.loop !87

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not5.i, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph.split
  %i.al = add i64 %6, -8
  %i.am = sub i64 %i.al, %i.a                     ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 24
  %i.ap = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond71 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %2, i64 %i.aq
  %i.as = getelementptr i8, ptr %0, i64 %i.aq
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12:    ; preds = %.lr.ph.split, %_Z13verify_sortedIPdEvT_S1_.exit.us17
  %i.at = phi i32 [ %i.bd, %_Z13verify_sortedIPdEvT_S1_.exit.us17 ], [ %i.c, %.lr.ph.split ]
  %.010.us11 = phi i32 [ %i.be, %_Z13verify_sortedIPdEvT_S1_.exit.us17 ], [ 0, %.lr.ph.split ]
  br label %.lr.ph.i8.us

.lr.ph.i8.us:                                     ; preds = %.critedge.i.us, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12
  %.01825.i.us = phi ptr [ %.018.i.us, %.critedge.i.us ], [ %.01823.i, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12 ] ; 3 uses
  %i.au = load double, ptr %.01825.i.us, align 8, !tbaa !32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i8.us
  %.022.i.us = phi ptr [ %.01825.i.us, %.lr.ph.i8.us ], [ %i.av, %bb.f ] ; 3 uses
  %i.av = getelementptr i8, ptr %.022.i.us, i64 -8 ; 3 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = fcmp olt double %i.au, %i.aw
  br i1 %i.ax, label %bb.f, label %.critedge.i.us

bb.f:                                             ; preds = %bb.e
  store double %i.aw, ptr %.022.i.us, align 8, !tbaa !32
  %.not20.i.us = icmp eq ptr %i.av, %2
  br i1 %.not20.i.us, label %.critedge.i.us, label %bb.e, !llvm.loop !90

.critedge.i.us:                                   ; preds = %bb.f, %bb.e
  %.017.lcssa.i.us = phi ptr [ %2, %bb.f ], [ %.022.i.us, %bb.e ]
  store double %i.au, ptr %.017.lcssa.i.us, align 8, !tbaa !32
  %.018.i.us = getelementptr inbounds nuw i8, ptr %.01825.i.us, i64 8 ; 2 uses
  %.not.i9.us = icmp eq ptr %.018.i.us, %3
  br i1 %.not.i9.us, label %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us, label %.lr.ph.i8.us, !llvm.loop !91

_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us: ; preds = %.critedge.i.us, %bb.g
  %.pn.i.i.us13 = phi ptr [ %.08.i.i.us14, %bb.g ], [ %2, %.critedge.i.us ] ; 2 uses
  %.08.i.i.us14 = getelementptr i8, ptr %.pn.i.i.us13, i64 8 ; 3 uses
  %.not.i.i.us15 = icmp eq ptr %.08.i.i.us14, %3
  br i1 %.not.i.i.us15, label %_Z13verify_sortedIPdEvT_S1_.exit.us17, label %bb.g

bb.g:                                             ; preds = %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us
  %i.ay = load double, ptr %.08.i.i.us14, align 8, !tbaa !32
  %i.az = load double, ptr %.pn.i.i.us13, align 8, !tbaa !32
  %i.ba = fcmp olt double %i.ay, %i.az
  br i1 %i.ba, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us16, label %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us, !llvm.loop !86

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us16:   ; preds = %bb.g
  %i.bb = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.bb) ; 0 uses
  %.pre22 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIPdEvT_S1_.exit.us17

_Z13verify_sortedIPdEvT_S1_.exit.us17:            ; preds = %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us16
  %i.bd = phi i32 [ %.pre22, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us16 ], [ %i.at, %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us ] ; 2 uses
  %i.be = add nuw nsw i32 %.010.us11, 1           ; 2 uses
  %i.bf = icmp slt i32 %i.be, %i.bd
  br i1 %i.bf, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12, label %._crit_edge, !llvm.loop !87

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIPdEvT_S1_.exit
  %i.bg = phi i32 [ %i.bx, %_Z13verify_sortedIPdEvT_S1_.exit ], [ %i.c, %.lr.ph.i.preheader.preheader ]
  %.010 = phi i32 [ %i.by, %_Z13verify_sortedIPdEvT_S1_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond71, label %.lr.ph.i.preheader74, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.bh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.bh ; 2 uses
  %next.gep50 = getelementptr i8, ptr %0, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x double>, ptr %next.gep50, align 8, !tbaa !32
  %wide.load51 = load <2 x double>, ptr %i.bi, align 8, !tbaa !32
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !32
  store <2 x double> %wide.load51, ptr %i.bj, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i8.preheader, label %.lr.ph.i.preheader74

.lr.ph.i.preheader74:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.ar, %middle.block ]
  %.046.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader74, %.lr.ph.i
  %.07.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader74 ] ; 2 uses
  %.046.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.046.i.ph, %.lr.ph.i.preheader74 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.bm = load double, ptr %.046.i, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store double %i.bm, ptr %.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.bl, %1
  br i1 %.not.i, label %.lr.ph.i8.preheader, label %.lr.ph.i, !llvm.loop !93

.lr.ph.i8.preheader:                              ; preds = %.lr.ph.i, %middle.block
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8.preheader, %.critedge.i
  %.01825.i = phi ptr [ %.018.i, %.critedge.i ], [ %.01823.i, %.lr.ph.i8.preheader ] ; 3 uses
  %i.bo = load double, ptr %.01825.i, align 8, !tbaa !32 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i8
  %.022.i = phi ptr [ %.01825.i, %.lr.ph.i8 ], [ %i.bp, %bb.i ] ; 3 uses
  %i.bp = getelementptr i8, ptr %.022.i, i64 -8   ; 3 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !32 ; 2 uses
  %i.br = fcmp olt double %i.bo, %i.bq
  br i1 %i.br, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  store double %i.bq, ptr %.022.i, align 8, !tbaa !32
  %.not20.i = icmp eq ptr %i.bp, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.h, !llvm.loop !90

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %.017.lcssa.i = phi ptr [ %2, %bb.i ], [ %.022.i, %bb.h ]
  store double %i.bo, ptr %.017.lcssa.i, align 8, !tbaa !32
  %.018.i = getelementptr inbounds nuw i8, ptr %.01825.i, i64 8 ; 2 uses
  %.not.i9 = icmp eq ptr %.018.i, %3
  br i1 %.not.i9, label %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit, label %.lr.ph.i8, !llvm.loop !91

_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit: ; preds = %.critedge.i, %bb.j
  %.pn.i.i = phi ptr [ %.08.i.i, %bb.j ], [ %2, %.critedge.i ] ; 2 uses
  %.08.i.i = getelementptr i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.08.i.i, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIPdEvT_S1_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit
  %i.bs = load double, ptr %.08.i.i, align 8, !tbaa !32
  %i.bt = load double, ptr %.pn.i.i, align 8, !tbaa !32
  %i.bu = fcmp olt double %i.bs, %i.bt
  br i1 %i.bu, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i, label %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit, !llvm.loop !86

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i:        ; preds = %bb.j
  %i.bv = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.bv) ; 0 uses
  %.pre = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIPdEvT_S1_.exit

_Z13verify_sortedIPdEvT_S1_.exit:                 ; preds = %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i
  %i.bx = phi i32 [ %.pre, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i ], [ %i.bg, %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit ] ; 2 uses
  %i.by = add nuw nsw i32 %.010, 1                ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bx
  br i1 %i.bz, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %_Z13verify_sortedIPdEvT_S1_.exit, %_Z13verify_sortedIPdEvT_S1_.exit.us17, %_Z13verify_sortedIPdEvT_S1_.exit.us, %_Z13verify_sortedIPdEvT_S1_.exit.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double noundef %4, ptr noundef %5) local_unnamed_addr #10 comdat {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4 ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1                   ; 2 uses
  %.sroa.09.018.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.09.018.i, %3
  br i1 %.not19.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not6.i, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us.us, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph.split.us
  %i.e = add i64 %6, -8
  %i.f = sub i64 %i.e, %i.a                       ; 2 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check63 = icmp ult i64 %i.f, 24
  %i.i = sub i64 %i.a, %i.b
  %diff.check61 = icmp ugt i64 %i.i, -32
  %or.cond = select i1 %min.iters.check63, i1 true, i1 %diff.check61
  %n.vec66 = and i64 %i.h, 4611686018427387900    ; 3 uses
  %i.j = shl i64 %n.vec66, 3                      ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %2, i64 %i.j
  %cmp.n75 = icmp eq i64 %i.h, %n.vec66
  br label %.lr.ph.i.preheader.us

_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us.us: ; preds = %.lr.ph.split.us, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us.us
  %i.m = phi i32 [ %i.t, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us.us ], [ %i.c, %.lr.ph.split.us ]
  %.014.us.us = phi i32 [ %i.u, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us.us ], [ 0, %.lr.ph.split.us ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us.us
  %.sroa.02.0.i.i.us.us = phi ptr [ %2, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us.us ], [ %i.n, %bb.c ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.02.0.i.i.us.us, i64 8 ; 3 uses
  %.not.i.i.us.us = icmp eq ptr %i.n, %3
  br i1 %.not.i.i.us.us, label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load double, ptr %i.n, align 8, !tbaa !32
  %i.p = load double, ptr %.sroa.02.0.i.i.us.us, align 8, !tbaa !32
  %i.q = fcmp olt double %i.o, %i.p
  br i1 %i.q, label %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us.us, label %bb.b, !llvm.loop !94

_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us.us: ; preds = %bb.c
  %i.r = load i32, ptr @current_test, align 4, !tbaa !4
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.r) ; 0 uses
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us.us

_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us.us
  %i.t = phi i32 [ %.pre27, %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us.us ], [ %i.m, %bb.b ] ; 2 uses
  %i.u = add nuw nsw i32 %.014.us.us, 1           ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us.us, label %._crit_edge, !llvm.loop !95

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us
  %i.w = phi i32 [ %i.ak, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us ], [ %i.c, %.lr.ph.i.preheader.us.preheader ]
  %.014.us = phi i32 [ %i.al, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us ], [ 0, %.lr.ph.i.preheader.us.preheader ]
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body67

vector.body67:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body67
  %index68 = phi i64 [ %index.next73, %vector.body67 ], [ 0, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.x = shl i64 %index68, 3                      ; 2 uses
  %next.gep69 = getelementptr i8, ptr %0, i64 %i.x ; 2 uses
  %next.gep70 = getelementptr i8, ptr %2, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load71 = load <2 x double>, ptr %next.gep69, align 8, !tbaa !32
  %wide.load72 = load <2 x double>, ptr %i.y, align 8, !tbaa !32
  %i.z = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x double> %wide.load71, ptr %next.gep70, align 8, !tbaa !32
  store <2 x double> %wide.load72, ptr %i.z, align 8, !tbaa !32
  %index.next73 = add nuw i64 %index68, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.aa, label %middle.block74, label %vector.body67, !llvm.loop !96

middle.block74:                                   ; preds = %vector.body67
  br i1 %cmp.n75, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader.us, %middle.block74
  %.sroa.04.08.i.us.ph = phi ptr [ %0, %.lr.ph.i.preheader.us ], [ %i.k, %middle.block74 ]
  %.sroa.02.07.i.us.ph = phi ptr [ %2, %.lr.ph.i.preheader.us ], [ %i.l, %middle.block74 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.sroa.04.08.i.us = phi ptr [ %i.ab, %.lr.ph.i.us ], [ %.sroa.04.08.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %.sroa.02.07.i.us = phi ptr [ %i.ad, %.lr.ph.i.us ], [ %.sroa.02.07.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.us, i64 8 ; 2 uses
  %i.ac = load double, ptr %.sroa.04.08.i.us, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.us, i64 8
  store double %i.ac, ptr %.sroa.02.07.i.us, align 8, !tbaa !32
  %.not.i.us = icmp eq ptr %i.ab, %1
  br i1 %.not.i.us, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us.preheader, label %.lr.ph.i.us, !llvm.loop !97

_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us.preheader: ; preds = %.lr.ph.i.us, %middle.block74
  br label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us

_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us: ; preds = %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us.preheader, %bb.d
  %.sroa.02.0.i.i.us = phi ptr [ %i.ae, %bb.d ], [ %2, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us.preheader ] ; 2 uses
  %i.ae = getelementptr i8, ptr %.sroa.02.0.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.ae, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us, label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us
  %i.af = load double, ptr %i.ae, align 8, !tbaa !32
  %i.ag = load double, ptr %.sroa.02.0.i.i.us, align 8, !tbaa !32
  %i.ah = fcmp olt double %i.af, %i.ag
  br i1 %i.ah, label %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us, !llvm.loop !94

_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us: ; preds = %bb.d
  %i.ai = load i32, ptr @current_test, align 4, !tbaa !4
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.ai) ; 0 uses
  %.pre26 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us

_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us: ; preds = %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us, %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us
  %i.ak = phi i32 [ %.pre26, %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us ], [ %i.w, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us ] ; 2 uses
  %i.al = add nuw nsw i32 %.014.us, 1             ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.ak
  br i1 %i.am, label %.lr.ph.i.preheader.us, label %._crit_edge, !llvm.loop !95

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not6.i, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us16, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph.split
  %i.an = add i64 %6, -8
  %i.ao = sub i64 %i.an, %i.a                     ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 24
  %i.ar = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond78 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %0, i64 %i.as
  %i.au = getelementptr i8, ptr %2, i64 %i.as
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us16: ; preds = %.lr.ph.split, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us20
  %i.av = phi i32 [ %i.bg, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us20 ], [ %i.c, %.lr.ph.split ]
  %.014.us15 = phi i32 [ %i.bh, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us20 ], [ 0, %.lr.ph.split ]
  br label %.lr.ph.i12.us

.lr.ph.i12.us:                                    ; preds = %.critedge.i.us, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us16
  %.sroa.09.020.i.us = phi ptr [ %.sroa.09.0.i.us, %.critedge.i.us ], [ %.sroa.09.018.i, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us16 ] ; 3 uses
  %i.aw = load double, ptr %.sroa.09.020.i.us, align 8, !tbaa !32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i12.us
  %.sroa.0.017.i.us = phi ptr [ %.sroa.09.020.i.us, %.lr.ph.i12.us ], [ %i.ax, %bb.f ] ; 3 uses
  %i.ax = getelementptr i8, ptr %.sroa.0.017.i.us, i64 -8 ; 3 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !32 ; 2 uses
  %i.az = fcmp olt double %i.aw, %i.ay
  br i1 %i.az, label %bb.f, label %.critedge.i.us

bb.f:                                             ; preds = %bb.e
  store double %i.ay, ptr %.sroa.0.017.i.us, align 8, !tbaa !32
  %.not15.i.us = icmp eq ptr %i.ax, %2
  br i1 %.not15.i.us, label %.critedge.i.us, label %bb.e, !llvm.loop !98

.critedge.i.us:                                   ; preds = %bb.f, %bb.e
  %.sroa.05.0.lcssa.i.us = phi ptr [ %2, %bb.f ], [ %.sroa.0.017.i.us, %bb.e ]
  store double %i.aw, ptr %.sroa.05.0.lcssa.i.us, align 8, !tbaa !32
  %.sroa.09.0.i.us = getelementptr inbounds nuw i8, ptr %.sroa.09.020.i.us, i64 8 ; 2 uses
  %.not.i13.us = icmp eq ptr %.sroa.09.0.i.us, %3
  br i1 %.not.i13.us, label %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit.us, label %.lr.ph.i12.us, !llvm.loop !99

_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit.us: ; preds = %.critedge.i.us, %bb.g
  %.sroa.02.0.i.i.us17 = phi ptr [ %i.ba, %bb.g ], [ %2, %.critedge.i.us ] ; 2 uses
  %i.ba = getelementptr i8, ptr %.sroa.02.0.i.i.us17, i64 8 ; 3 uses
  %.not.i.i.us18 = icmp eq ptr %i.ba, %3
  br i1 %.not.i.i.us18, label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us20, label %bb.g

bb.g:                                             ; preds = %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit.us
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !32
  %i.bc = load double, ptr %.sroa.02.0.i.i.us17, align 8, !tbaa !32
  %i.bd = fcmp olt double %i.bb, %i.bc
  br i1 %i.bd, label %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us19, label %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit.us, !llvm.loop !94

_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us19: ; preds = %bb.g
  %i.be = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.be) ; 0 uses
  %.pre25 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us20

_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us20: ; preds = %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit.us, %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us19
  %i.bg = phi i32 [ %.pre25, %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us19 ], [ %i.av, %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit.us ] ; 2 uses
  %i.bh = add nuw nsw i32 %.014.us15, 1           ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.bg
  br i1 %i.bi, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us16, label %._crit_edge, !llvm.loop !95

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
  %i.bj = phi i32 [ %i.cb, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit ], [ %i.c, %.lr.ph.i.preheader.preheader ]
  %.014 = phi i32 [ %i.cc, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond78, label %.lr.ph.i.preheader81, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bk ; 2 uses
  %next.gep57 = getelementptr i8, ptr %2, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !32
  %wide.load58 = load <2 x double>, ptr %i.bl, align 8, !tbaa !32
  %i.bm = getelementptr i8, ptr %next.gep57, i64 16
  store <2 x double> %wide.load, ptr %next.gep57, align 8, !tbaa !32
  store <2 x double> %wide.load58, ptr %i.bm, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i12.preheader, label %.lr.ph.i.preheader81

.lr.ph.i.preheader81:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.04.08.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.at, %middle.block ]
  %.sroa.02.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader81, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %.sroa.04.08.i.ph, %.lr.ph.i.preheader81 ] ; 2 uses
  %.sroa.02.07.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %.sroa.02.07.i.ph, %.lr.ph.i.preheader81 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %i.bp = load double, ptr %.sroa.04.08.i, align 8, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 8
  store double %i.bp, ptr %.sroa.02.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.bo, %1
  br i1 %.not.i, label %.lr.ph.i12.preheader, label %.lr.ph.i, !llvm.loop !101

.lr.ph.i12.preheader:                             ; preds = %.lr.ph.i, %middle.block
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.lr.ph.i12.preheader, %.critedge.i
  %.sroa.09.020.i = phi ptr [ %.sroa.09.0.i, %.critedge.i ], [ %.sroa.09.018.i, %.lr.ph.i12.preheader ] ; 3 uses
  %i.br = load double, ptr %.sroa.09.020.i, align 8, !tbaa !32 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i12
  %.sroa.0.017.i = phi ptr [ %.sroa.09.020.i, %.lr.ph.i12 ], [ %i.bs, %bb.i ] ; 3 uses
  %i.bs = getelementptr i8, ptr %.sroa.0.017.i, i64 -8 ; 3 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !32 ; 2 uses
  %i.bu = fcmp olt double %i.br, %i.bt
  br i1 %i.bu, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  store double %i.bt, ptr %.sroa.0.017.i, align 8, !tbaa !32
  %.not15.i = icmp eq ptr %i.bs, %2
  br i1 %.not15.i, label %.critedge.i, label %bb.h, !llvm.loop !98

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %.sroa.05.0.lcssa.i = phi ptr [ %2, %bb.i ], [ %.sroa.0.017.i, %bb.h ]
  store double %i.br, ptr %.sroa.05.0.lcssa.i, align 8, !tbaa !32
  %.sroa.09.0.i = getelementptr inbounds nuw i8, ptr %.sroa.09.020.i, i64 8 ; 2 uses
  %.not.i13 = icmp eq ptr %.sroa.09.0.i, %3
  br i1 %.not.i13, label %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit, label %.lr.ph.i12, !llvm.loop !99

_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit: ; preds = %.critedge.i, %bb.j
  %.sroa.02.0.i.i = phi ptr [ %i.bv, %bb.j ], [ %2, %.critedge.i ] ; 2 uses
  %i.bv = getelementptr i8, ptr %.sroa.02.0.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bv, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !32
  %i.bx = load double, ptr %.sroa.02.0.i.i, align 8, !tbaa !32
  %i.by = fcmp olt double %i.bw, %i.bx
  br i1 %i.by, label %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i, label %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit, !llvm.loop !94

_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i: ; preds = %bb.j
  %i.bz = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.bz) ; 0 uses
  %.pre = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit

_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit: ; preds = %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit, %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i
  %i.cb = phi i32 [ %.pre, %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i ], [ %i.bj, %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit ] ; 2 uses
  %i.cc = add nuw nsw i32 %.014, 1                ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.cb
  br i1 %i.cd, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us20, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #10 comdat {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %i.e = add i64 %6, -8
  %i.f = sub i64 %i.e, %i.a                       ; 2 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 24
  %i.i = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.h, 4611686018427387900      ; 3 uses
  %i.j = shl i64 %n.vec, 3                        ; 2 uses
  %i.k = getelementptr i8, ptr %2, i64 %i.j
  %i.l = getelementptr i8, ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us:      ; preds = %.lr.ph, %_Z13verify_sortedIPdEvT_S1_.exit.us
  %.08.us = phi i32 [ %i.r, %_Z13verify_sortedIPdEvT_S1_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark9quicksortIPddEEvT_S2_(ptr noundef %2, ptr noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us
  %.pn.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us ], [ %.08.i.i.us, %bb.c ] ; 2 uses
  %.08.i.i.us = getelementptr i8, ptr %.pn.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.08.i.i.us, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIPdEvT_S1_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %.08.i.i.us, align 8, !tbaa !32
  %i.n = load double, ptr %.pn.i.i.us, align 8, !tbaa !32
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us, label %bb.b, !llvm.loop !86

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us:     ; preds = %bb.c
  %i.p = load i32, ptr @current_test, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.p) ; 0 uses
  br label %_Z13verify_sortedIPdEvT_S1_.exit.us

_Z13verify_sortedIPdEvT_S1_.exit.us:              ; preds = %bb.b, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us
  %i.r = add nuw nsw i32 %.08.us, 1               ; 2 uses
  %i.s = load i32, ptr @iterations, align 4, !tbaa !4
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us, label %._crit_edge, !llvm.loop !102

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIPdEvT_S1_.exit
  %.08 = phi i32 [ %i.ag, %_Z13verify_sortedIPdEvT_S1_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader18, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.u  ; 2 uses
  %next.gep15 = getelementptr i8, ptr %0, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x double>, ptr %next.gep15, align 8, !tbaa !32
  %wide.load16 = load <2 x double>, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !32
  store <2 x double> %wide.load16, ptr %i.w, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit, label %.lr.ph.i.preheader18

.lr.ph.i.preheader18:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  %.046.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader18, %.lr.ph.i
  %.07.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %.046.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.046.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.z = load double, ptr %.046.i, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store double %i.z, ptr %.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !104

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark9quicksortIPddEEvT_S2_(ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit
  %.pn.i.i = phi ptr [ %2, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit ], [ %.08.i.i, %bb.e ] ; 2 uses
  %.08.i.i = getelementptr i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.08.i.i, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIPdEvT_S1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load double, ptr %.08.i.i, align 8, !tbaa !32
  %i.ac = load double, ptr %.pn.i.i, align 8, !tbaa !32
  %i.ad = fcmp olt double %i.ab, %i.ac
  br i1 %i.ad, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i, label %bb.d, !llvm.loop !86

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i:        ; preds = %bb.e
  %i.ae = load i32, ptr @current_test, align 4, !tbaa !4
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.ae) ; 0 uses
  br label %_Z13verify_sortedIPdEvT_S1_.exit

_Z13verify_sortedIPdEvT_S1_.exit:                 ; preds = %bb.d, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i
  %i.ag = add nuw nsw i32 %.08, 1                 ; 2 uses
  %i.ah = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %_Z13verify_sortedIPdEvT_S1_.exit, %_Z13verify_sortedIPdEvT_S1_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double noundef %4, ptr noundef %5) local_unnamed_addr #10 comdat {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %i.e = add i64 %6, -8
  %i.f = sub i64 %i.e, %i.a                       ; 2 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 24
  %i.i = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.h, 4611686018427387900      ; 3 uses
  %i.j = shl i64 %n.vec, 3                        ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %2, i64 %i.j
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us: ; preds = %.lr.ph, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us
  %.012.us = phi i32 [ %i.s, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(ptr %2, ptr %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us
  %.sroa.02.0.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us ], [ %i.m, %bb.c ] ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.02.0.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.m, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load double, ptr %i.m, align 8, !tbaa !32
  %i.o = load double, ptr %.sroa.02.0.i.i.us, align 8, !tbaa !32
  %i.p = fcmp olt double %i.n, %i.o
  br i1 %i.p, label %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us, label %bb.b, !llvm.loop !94

_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us: ; preds = %bb.c
  %i.q = load i32, ptr @current_test, align 4, !tbaa !4
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.q) ; 0 uses
  br label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us

_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us
  %i.s = add nuw nsw i32 %.012.us, 1              ; 2 uses
  %i.t = load i32, ptr @iterations, align 4, !tbaa !4
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us, label %._crit_edge, !llvm.loop !105

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
  %.012 = phi i32 [ %i.ai, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader24, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.v  ; 2 uses
  %next.gep21 = getelementptr i8, ptr %2, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !32
  %wide.load22 = load <2 x double>, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr i8, ptr %next.gep21, i64 16
  store <2 x double> %wide.load, ptr %next.gep21, align 8, !tbaa !32
  store <2 x double> %wide.load22, ptr %i.x, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit, label %.lr.ph.i.preheader24

.lr.ph.i.preheader24:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.04.08.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  %.sroa.02.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader24, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.sroa.04.08.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %.sroa.02.07.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.sroa.02.07.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %i.aa = load double, ptr %.sroa.04.08.i, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 8
  store double %i.aa, ptr %.sroa.02.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.z, %1
  br i1 %.not.i, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !107

_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(ptr %2, ptr %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit
  %.sroa.02.0.i.i = phi ptr [ %2, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit ], [ %i.ac, %bb.e ] ; 2 uses
  %i.ac = getelementptr i8, ptr %.sroa.02.0.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !32
  %i.ae = load double, ptr %.sroa.02.0.i.i, align 8, !tbaa !32
  %i.af = fcmp olt double %i.ad, %i.ae
  br i1 %i.af, label %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i, label %bb.d, !llvm.loop !94

_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i: ; preds = %bb.e
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.ag) ; 0 uses
  br label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit

_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit: ; preds = %bb.d, %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i
  %i.ai = add nuw nsw i32 %.012, 1                ; 2 uses
  %i.aj = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ak = icmp slt i32 %i.ai, %i.aj
  br i1 %i.ak, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #10 comdat {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %i.e = add i64 %6, -8
  %i.f = sub i64 %i.e, %i.a                       ; 2 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 24
  %i.i = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.h, 4611686018427387900      ; 3 uses
  %i.j = shl i64 %n.vec, 3                        ; 2 uses
  %i.k = getelementptr i8, ptr %2, i64 %i.j
  %i.l = getelementptr i8, ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us:      ; preds = %.lr.ph, %_Z13verify_sortedIPdEvT_S1_.exit.us
  %.08.us = phi i32 [ %i.r, %_Z13verify_sortedIPdEvT_S1_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark8heapsortIPddEEvT_S2_(ptr noundef %2, ptr noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us
  %.pn.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us ], [ %.08.i.i.us, %bb.c ] ; 2 uses
  %.08.i.i.us = getelementptr i8, ptr %.pn.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.08.i.i.us, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIPdEvT_S1_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %.08.i.i.us, align 8, !tbaa !32
  %i.n = load double, ptr %.pn.i.i.us, align 8, !tbaa !32
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us, label %bb.b, !llvm.loop !86

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us:     ; preds = %bb.c
  %i.p = load i32, ptr @current_test, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.p) ; 0 uses
  br label %_Z13verify_sortedIPdEvT_S1_.exit.us

_Z13verify_sortedIPdEvT_S1_.exit.us:              ; preds = %bb.b, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us
  %i.r = add nuw nsw i32 %.08.us, 1               ; 2 uses
  %i.s = load i32, ptr @iterations, align 4, !tbaa !4
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us, label %._crit_edge, !llvm.loop !108

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIPdEvT_S1_.exit
  %.08 = phi i32 [ %i.ag, %_Z13verify_sortedIPdEvT_S1_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader18, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.u  ; 2 uses
  %next.gep15 = getelementptr i8, ptr %0, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x double>, ptr %next.gep15, align 8, !tbaa !32
  %wide.load16 = load <2 x double>, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !32
  store <2 x double> %wide.load16, ptr %i.w, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit, label %.lr.ph.i.preheader18

.lr.ph.i.preheader18:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  %.046.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader18, %.lr.ph.i
  %.07.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %.046.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.046.i.ph, %.lr.ph.i.preheader18 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.z = load double, ptr %.046.i, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store double %i.z, ptr %.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !110

_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark8heapsortIPddEEvT_S2_(ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit
  %.pn.i.i = phi ptr [ %2, %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit ], [ %.08.i.i, %bb.e ] ; 2 uses
  %.08.i.i = getelementptr i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.08.i.i, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIPdEvT_S1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load double, ptr %.08.i.i, align 8, !tbaa !32
  %i.ac = load double, ptr %.pn.i.i, align 8, !tbaa !32
  %i.ad = fcmp olt double %i.ab, %i.ac
  br i1 %i.ad, label %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i, label %bb.d, !llvm.loop !86

_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i:        ; preds = %bb.e
  %i.ae = load i32, ptr @current_test, align 4, !tbaa !4
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.ae) ; 0 uses
  br label %_Z13verify_sortedIPdEvT_S1_.exit

_Z13verify_sortedIPdEvT_S1_.exit:                 ; preds = %bb.d, %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i
  %i.ag = add nuw nsw i32 %.08, 1                 ; 2 uses
  %i.ah = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !108

._crit_edge:                                      ; preds = %_Z13verify_sortedIPdEvT_S1_.exit, %_Z13verify_sortedIPdEvT_S1_.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double noundef %4, ptr noundef %5) local_unnamed_addr #10 comdat {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr @iterations, align 4, !tbaa !4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %i.e = add i64 %6, -8
  %i.f = sub i64 %i.e, %i.a                       ; 2 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 24
  %i.i = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.h, 4611686018427387900      ; 3 uses
  %i.j = shl i64 %n.vec, 3                        ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %2, i64 %i.j
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph.i.preheader

_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us: ; preds = %.lr.ph, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us
  %.012.us = phi i32 [ %i.s, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us ], [ 0, %.lr.ph ]
  tail call void @_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(ptr %2, ptr %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us
  %.sroa.02.0.i.i.us = phi ptr [ %2, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us ], [ %i.m, %bb.c ] ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.02.0.i.i.us, i64 8 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.m, %3
  br i1 %.not.i.i.us, label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load double, ptr %i.m, align 8, !tbaa !32
  %i.o = load double, ptr %.sroa.02.0.i.i.us, align 8, !tbaa !32
  %i.p = fcmp olt double %i.n, %i.o
  br i1 %i.p, label %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us, label %bb.b, !llvm.loop !94

_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us: ; preds = %bb.c
  %i.q = load i32, ptr @current_test, align 4, !tbaa !4
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.q) ; 0 uses
  br label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us

_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us: ; preds = %bb.b, %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us
  %i.s = add nuw nsw i32 %.012.us, 1              ; 2 uses
  %i.t = load i32, ptr @iterations, align 4, !tbaa !4
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us, label %._crit_edge, !llvm.loop !111

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
  %.012 = phi i32 [ %i.ai, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond, label %.lr.ph.i.preheader24, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.v  ; 2 uses
  %next.gep21 = getelementptr i8, ptr %2, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !32
  %wide.load22 = load <2 x double>, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr i8, ptr %next.gep21, i64 16
  store <2 x double> %wide.load, ptr %next.gep21, align 8, !tbaa !32
  store <2 x double> %wide.load22, ptr %i.x, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit, label %.lr.ph.i.preheader24

.lr.ph.i.preheader24:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.04.08.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  %.sroa.02.07.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader24, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.sroa.04.08.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %.sroa.02.07.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.sroa.02.07.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %i.aa = load double, ptr %.sroa.04.08.i, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 8
  store double %i.aa, ptr %.sroa.02.07.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.z, %1
  br i1 %.not.i, label %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !113

_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  tail call void @_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(ptr %2, ptr %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit
  %.sroa.02.0.i.i = phi ptr [ %2, %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit ], [ %i.ac, %bb.e ] ; 2 uses
  %i.ac = getelementptr i8, ptr %.sroa.02.0.i.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, %3
  br i1 %.not.i.i, label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !32
  %i.ae = load double, ptr %.sroa.02.0.i.i, align 8, !tbaa !32
  %i.af = fcmp olt double %i.ad, %i.ae
  br i1 %i.af, label %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i, label %bb.d, !llvm.loop !94

_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i: ; preds = %bb.e
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.ag) ; 0 uses
  br label %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit

_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit: ; preds = %bb.d, %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i
  %i.ai = add nuw nsw i32 %.012, 1                ; 2 uses
  %i.aj = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ak = icmp slt i32 %i.ai, %i.aj
  br i1 %i.ak, label %.lr.ph.i.preheader, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark9quicksortIPddEEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat {
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
  br i1 %i.h, label %bb.c, label %bb.d, !llvm.loop !114

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %.0, %i.f
  br i1 %i.i, label %.preheader, label %tailrecurse

.preheader:                                       ; preds = %bb.d, %.preheader
  %.1 = phi ptr [ %i.l, %.preheader ], [ %.0, %bb.d ] ; 5 uses
  %i.j = load double, ptr %.1, align 8, !tbaa !32 ; 2 uses
  %i.k = fcmp olt double %i.j, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %i.k, label %.preheader, label %bb.e, !llvm.loop !115

bb.e:                                             ; preds = %.preheader
  %i.m = icmp ult ptr %.1, %i.f
  br i1 %i.m, label %bb.f, label %tailrecurse

bb.f:                                             ; preds = %bb.e
  store double %i.j, ptr %i.f, align 8, !tbaa !32
  store double %i.g, ptr %.1, align 8, !tbaa !32
  br label %bb.b, !llvm.loop !116

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
define linkonce_odr dso_local void @_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(ptr %0, ptr %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr25 = phi ptr [ %.sroa.0.1, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %i.e = load double, ptr %.tr25, align 8, !tbaa !32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph
  %.sroa.013.0 = phi ptr [ %.tr25, %.lr.ph ], [ %.sroa.013.1, %bb.f ] ; 2 uses
end_hunk_3
