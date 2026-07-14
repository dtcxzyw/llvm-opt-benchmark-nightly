inline.NumInlined: 2029
inline.NumDeleted: 597
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_Z13test_constantIh22custom_constant_divideIhEEvPT_iPKc:bb.a
vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.j, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi30 = phi <16 x i8> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !tbaa !33
  %wide.load31 = load <16 x i8>, ptr %i.g, align 1, !tbaa !33
  %i.h = udiv <16 x i8> %wide.load, splat (i8 5)
  %i.i = udiv <16 x i8> %wide.load31, splat (i8 5)
  %i.j = add <16 x i8> %i.h, %vec.phi             ; 2 uses
  %i.k = add <16 x i8> %i.i, %vec.phi30           ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.k, %i.j
  %i.m = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.m, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.n = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <8 x i8> [ %i.n, %vec.epilog.ph ], [ %i.q, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index34
  %wide.load36 = load <8 x i8>, ptr %i.o, align 1, !tbaa !33
  %i.p = udiv <8 x i8> %wide.load36, splat (i8 5)
  %i.q = add <8 x i8> %i.p, %vec.phi35            ; 2 uses
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.r = icmp eq i64 %index.next37, %n.vec33
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !171

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.s = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.q) ; 2 uses
  br i1 %cmp.n38, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ]
  %.0911.us.ph = phi i8 [ 0, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.b:                                             ; preds = %._crit_edge.us
  %i.t = load i32, ptr @current_test, align 4, !tbaa !4
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.t) ; 0 uses
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIh22custom_constant_divideIhEEvT_.exit.us

_Z17check_shifted_sumIh22custom_constant_divideIhEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.v = phi i32 [ %.pre18, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.w = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.v
  br i1 %i.x, label %iter.check, label %._crit_edge14, !llvm.loop !172

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0911.us = phi i8 [ %i.ab, %vec.epilog.scalar.ph ], [ %.0911.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1, !tbaa !33
  %i.aa = udiv i8 %i.z, 5
  %i.ab = add i8 %i.aa, %.0911.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !173

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i8 [ %i.s, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %i.ab, %vec.epilog.scalar.ph ]
  %i.ac = load double, ptr @init_value, align 8, !tbaa !32
  %i.ad = fptoui double %i.ac to i8
  %i.ae = udiv i8 %i.ad, 5
  %i.af = shl i8 %i.ae, 6
  %i.ag = icmp eq i8 %.lcssa, %i.af
  br i1 %i.ag, label %_Z17check_shifted_sumIh22custom_constant_divideIhEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumIh22custom_constant_divideIhEEvT_.exit
  %i.ah = phi i32 [ %i.ao, %_Z17check_shifted_sumIh22custom_constant_divideIhEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ai = phi double [ %i.ap, %_Z17check_shifted_sumIh22custom_constant_divideIhEEvT_.exit ], [ %.pre16, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.aq, %_Z17check_shifted_sumIh22custom_constant_divideIhEEvT_.exit ], [ 0, %.preheader.preheader ]
  %i.aj = fptoui double %i.ai to i8
  %i.ak = udiv i8 %i.aj, 5
  %.mask = and i8 %i.ak, 3
  %i.al = icmp eq i8 %.mask, 0
  br i1 %i.al, label %_Z17check_shifted_sumIh22custom_constant_divideIhEEvT_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.am = load i32, ptr @current_test, align 4, !tbaa !4
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.am) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre17 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIh22custom_constant_divideIhEEvT_.exit

_Z17check_shifted_sumIh22custom_constant_divideIhEEvT_.exit: ; preds = %.preheader, %bb.c
  %i.ao = phi i32 [ %i.ah, %.preheader ], [ %.pre17, %bb.c ] ; 2 uses
  %i.ap = phi double [ %i.ai, %.preheader ], [ %.pre, %bb.c ]
  %i.aq = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %i.ao
  br i1 %i.ar, label %.preheader, label %._crit_edge14, !llvm.loop !172

._crit_edge14:                                    ; preds = %_Z17check_shifted_sumIh22custom_constant_divideIhEEvT_.exit, %_Z17check_shifted_sumIh22custom_constant_divideIhEEvT_.exit.us, %bb.a
  %i.as = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.as, ptr @end_time, align 8, !tbaa !27
  %i.at = load i64, ptr @start_time, align 8, !tbaa !27
  %i.au = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.av = icmp ne ptr %i.au, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.aw = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aw, %.pre.i
  %or.cond.i = select i1 %i.av, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge14
  %i.ax = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ax, ptr @allocated_results, align 4, !tbaa !4
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 4
  %i.ba = tail call ptr @realloc(ptr noundef %i.au, i64 noundef %i.az) #14 ; 3 uses
  store ptr %i.ba, ptr @results, align 8, !tbaa !8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bc = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bc) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge14, %._crit_edge.i
  %i.be = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aw, %._crit_edge14 ] ; 2 uses
  %i.bf = phi ptr [ %i.ba, %._crit_edge.i ], [ %i.au, %._crit_edge14 ]
  %i.bg = sub nsw i64 %i.as, %i.at
  %i.bh = sitofp i64 %i.bg to double
  %i.bi = fdiv double %i.bh, 1.000000e+06
  %i.bj = sext i32 %i.be to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bj ; 2 uses
  store double %i.bi, ptr %i.bk, align 8, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %2, ptr %i.bl, align 8, !tbaa !15
  %i.bm = add nsw i32 %i.be, 1
  store i32 %i.bm, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z13test_constantIh31custom_multiple_constant_divideIhEEvPT_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
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
  %.pre16 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 8
  %min.iters.check29 = icmp ult i32 %1, 32
  %n.mod.vf = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec33 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n38 = icmp eq i64 %n.vec33, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit.us
  %i.e = phi i32 [ %i.s, %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01013.us = phi i32 [ %i.t, %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.h, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi30 = phi <16 x i8> [ %i.i, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !tbaa !33 ; 2 uses
  %wide.load31 = load <16 x i8>, ptr %i.g, align 1, !tbaa !33 ; 2 uses
  %3 = icmp ugt <16 x i8> %wide.load, splat (i8 119)
  %4 = icmp ugt <16 x i8> %wide.load31, splat (i8 119)
  %5 = zext <16 x i1> %3 to <16 x i8>
  %6 = zext <16 x i1> %4 to <16 x i8>
  %7 = icmp ugt <16 x i8> %wide.load, splat (i8 -17)
  %8 = icmp ugt <16 x i8> %wide.load31, splat (i8 -17)
  %9 = zext <16 x i1> %7 to <16 x i8>
  %10 = zext <16 x i1> %8 to <16 x i8>
  %11 = add <16 x i8> %vec.phi, %9
  %12 = add <16 x i8> %vec.phi30, %10
  %i.h = add <16 x i8> %11, %5                    ; 2 uses
  %i.i = add <16 x i8> %12, %6                    ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.i, %i.h
  %i.k = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.k, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.l = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <8 x i8> [ %i.l, %vec.epilog.ph ], [ %i.n, %vec.epilog.vector.body ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %index34
  %wide.load36 = load <8 x i8>, ptr %i.m, align 1, !tbaa !33 ; 2 uses
  %13 = icmp ugt <8 x i8> %wide.load36, splat (i8 119)
  %14 = zext <8 x i1> %13 to <8 x i8>
  %15 = icmp ugt <8 x i8> %wide.load36, splat (i8 -17)
  %16 = zext <8 x i1> %15 to <8 x i8>
  %17 = add <8 x i8> %vec.phi35, %16
  %i.n = add <8 x i8> %17, %14                    ; 2 uses
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.o = icmp eq i64 %index.next37, %n.vec33
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !175

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.p = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.n) ; 2 uses
  br i1 %cmp.n38, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ]
  %.0911.us.ph = phi i8 [ 0, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.b:                                             ; preds = %._crit_edge.us
  %i.q = load i32, ptr @current_test, align 4, !tbaa !4
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.q) ; 0 uses
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit.us

_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.s = phi i32 [ %.pre18, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.t = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.s
  br i1 %i.u, label %iter.check, label %._crit_edge14, !llvm.loop !176

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0911.us = phi i8 [ %i.x, %vec.epilog.scalar.ph ], [ %.0911.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !33    ; 2 uses
  %18 = icmp ugt i8 %i.w, 119
  %19 = zext i1 %18 to i8
  %20 = icmp ugt i8 %i.w, -17
  %21 = zext i1 %20 to i8
  %22 = add i8 %.0911.us, %21
  %i.x = add i8 %22, %19                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !177

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i8 [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.y = load double, ptr @init_value, align 8, !tbaa !32
  %i.z = fptoui double %i.y to i8                 ; 2 uses
  %23 = icmp ugt i8 %i.z, 119
  %24 = zext i1 %23 to i8
  %25 = icmp ugt i8 %i.z, -17
  %26 = zext i1 %25 to i8
  %27 = add nuw nsw i8 %24, %26
  %i.aa = shl nuw i8 %27, 6
  %i.ab = icmp eq i8 %.lcssa, %i.aa
  br i1 %i.ab, label %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit
  %i.ac = phi i32 [ %i.ai, %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ad = phi double [ %i.aj, %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit ], [ %.pre16, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.ak, %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit ], [ 0, %.preheader.preheader ]
  %i.ae = fptoui double %i.ad to i8
  %i.af = icmp ult i8 %i.ae, 120
  br i1 %i.af, label %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre17 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit

_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ac, %.preheader ], [ %.pre17, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ad, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge14, !llvm.loop !176

._crit_edge14:                                    ; preds = %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit, %_Z17check_shifted_sumIh31custom_multiple_constant_divideIhEEvT_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !27
  %i.an = load i64, ptr @start_time, align 8, !tbaa !27
  %i.ao = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge14
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !4
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !8
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge14, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge14 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge14 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %2, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z13test_constantIh32custom_multiple_constant_divide2IhEEvPT_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
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
  %.pre16 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check29 = icmp ult i32 %1, 32
  %n.mod.vf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec33 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n38 = icmp eq i64 %n.vec33, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z17check_shifted_sumIh32custom_multiple_constant_divide2IhEEvT_.exit.us
  %i.e = phi i32 [ %i.v, %_Z17check_shifted_sumIh32custom_multiple_constant_divide2IhEEvT_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01013.us = phi i32 [ %i.w, %_Z17check_shifted_sumIh32custom_multiple_constant_divide2IhEEvT_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.j, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi30 = phi <16 x i8> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !tbaa !33
  %wide.load31 = load <16 x i8>, ptr %i.g, align 1, !tbaa !33
  %i.h = add <16 x i8> %vec.phi, splat (i8 2)
  %i.i = add <16 x i8> %vec.phi30, splat (i8 2)
  %i.j = add <16 x i8> %i.h, %wide.load           ; 2 uses
  %i.k = add <16 x i8> %i.i, %wide.load31         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.k, %i.j
  %i.m = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.m, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.n = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <4 x i8> [ %i.n, %vec.epilog.ph ], [ %i.q, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index34
  %wide.load36 = load <4 x i8>, ptr %i.o, align 1, !tbaa !33
  %i.p = add <4 x i8> %vec.phi35, splat (i8 2)
  %i.q = add <4 x i8> %i.p, %wide.load36          ; 2 uses
  %index.next37 = add nuw i64 %index34, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next37, %n.vec33
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !179

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.s = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.q) ; 2 uses
  br i1 %cmp.n38, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ]
  %.0911.us.ph = phi i8 [ 0, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.b:                                             ; preds = %._crit_edge.us
  %i.t = load i32, ptr @current_test, align 4, !tbaa !4
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, i32 noundef %i.t) ; 0 uses
  %.pre18 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z17check_shifted_sumIh32custom_multiple_constant_divide2IhEEvT_.exit.us

_Z17check_shifted_sumIh32custom_multiple_constant_divide2IhEEvT_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.v = phi i32 [ %.pre18, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.w = add nuw nsw i32 %.01013.us, 1            ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.v
  br i1 %i.x, label %iter.check, label %._crit_edge14, !llvm.loop !180

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0911.us = phi i8 [ %i.ab, %vec.epilog.scalar.ph ], [ %.0911.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1, !tbaa !33
  %i.aa = add i8 %.0911.us, 2
  %i.ab = add i8 %i.aa, %i.z                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !181

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i8 [ %i.s, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %i.ab, %vec.epilog.scalar.ph ]
  %i.ac = load double, ptr @init_value, align 8, !tbaa !32
  %i.ad = fptoui double %i.ac to i8
  %i.ae = shl i8 %i.ad, 6
  %i.af = xor i8 %i.ae, %.lcssa
  %i.ag = icmp eq i8 %i.af, -128
  br i1 %i.ag, label %_Z17check_shifted_sumIh32custom_multiple_constant_divide2IhEEvT_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z17check_shifted_sumIh32custom_multiple_constant_divide2IhEEvT_.exit
  %i.ah = phi i32 [ %i.an, %_Z17check_shifted_sumIh32custom_multiple_constant_divide2IhEEvT_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ai = phi double [ %i.ao, %_Z17check_shifted_sumIh32custom_multiple_constant_divide2IhEEvT_.exit ], [ %.pre16, %.preheader.preheader ] ; 2 uses
  %.01013 = phi i32 [ %i.ap, %_Z17check_shifted_sumIh32custom_multiple_constant_divide2IhEEvT_.exit ], [ 0, %.preheader.preheader ]
  %i.aj = fptoui double %i.ai to i8
  %.mask = and i8 %i.aj, 3
  %i.ak = icmp eq i8 %.mask, 2
  br i1 %i.ak, label %_Z17check_shifted_sumIh32custom_multiple_constant_divide2IhEEvT_.exit, label %bb.c
end_hunk_0
