Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/simple_types_loop_invariant?download=true
inline.NumInlined: 1160
inline.NumDeleted: 337
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z14test_variable4Ih28custom_multiple_variable_xorIhEEvPT_iS2_S2_S2_S2_PKc:bb.a
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIh28custom_multiple_variable_xorIhEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIh28custom_multiple_variable_xorIhEEvT_S2_S2_S2_S2_.exit ], [ %.pre26, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIh28custom_multiple_variable_xorIhEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptoui double %i.aj to i8
  %i.al = xor i8 %.reass22, %i.ak
  %.mask = and i8 %i.al, 3
  %i.am = icmp eq i8 %.mask, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIh28custom_multiple_variable_xorIhEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIh28custom_multiple_variable_xorIhEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIh28custom_multiple_variable_xorIhEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre27, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge24, !llvm.loop !194

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIh28custom_multiple_variable_xorIhEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIh28custom_multiple_variable_xorIhEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge24 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge24 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %6, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = add <8 x i16> %vec.phi, %broadcast.splat
  %i.j = add <8 x i16> %vec.phi32, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %wide.load           ; 2 uses
  %i.l = add <8 x i16> %i.j, %wide.load33         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = add <4 x i16> %vec.phi38, %broadcast.splat36
  %i.r = add <4 x i16> %i.q, %wide.load39         ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !196

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = add i16 %.01113.us, %2
  %i.x = add i16 %i.w, %i.v                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !197

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre20, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge16, !llvm.loop !198

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptosi double %i.ad to i16
  %i.af = add i16 %2, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptosi double %i.aj to i16
  %i.al = add i16 %2, %i.ak
  %4 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %4, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit

_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre19, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge16, !llvm.loop !198

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge16 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge16 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22test_hoisted_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge19

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = trunc i32 %1 to i16
  %i.f = mul i16 %2, %i.e                         ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre21 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check34 = icmp ult i32 %1, 16
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  %n.vec37 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n42 = icmp eq i64 %n.vec37, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us
  %i.h = phi i32 [ %i.y, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01418.us = phi i32 [ %i.z, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi35 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <8 x i16>, ptr %i.i, align 2, !tbaa !23
  %wide.load36 = load <8 x i16>, ptr %i.j, align 2, !tbaa !23
  %i.k = add <8 x i16> %wide.load, %vec.phi       ; 2 uses
  %i.l = add <8 x i16> %wide.load36, %vec.phi35   ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi39 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.q, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index38
  %wide.load40 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = add <4 x i16> %wide.load40, %vec.phi39   ; 2 uses
  %index.next41 = add nuw i64 %index38, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next41, %n.vec37
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !200

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.s = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.q) ; 2 uses
  br i1 %cmp.n42, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ]
  %.01316.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01316.us = phi i16 [ %i.v, %vec.epilog.scalar.ph ], [ %.01316.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2, !tbaa !23
  %i.v = add i16 %i.u, %.01316.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !201

bb.b:                                             ; preds = %._crit_edge.us
  %i.w = load i32, ptr @current_test, align 4, !tbaa !7
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.w) ; 0 uses
  %.pre23 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.y = phi i32 [ %.pre23, %bb.b ], [ %i.h, %._crit_edge.us ] ; 2 uses
  %i.z = add nuw nsw i32 %.01418.us, 1            ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.y
  br i1 %i.aa, label %iter.check, label %._crit_edge19, !llvm.loop !202

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.s, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.v, %vec.epilog.scalar.ph ]
  %i.ab = add i16 %.lcssa, %i.f
  %i.ac = load double, ptr @init_value, align 8, !tbaa !20
  %i.ad = fptosi double %i.ac to i16
  %i.ae = add i16 %2, %i.ad
  %i.af = mul i16 %i.ae, 8000
  %i.ag = icmp eq i16 %i.ab, %i.af
  br i1 %i.ag, label %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit
  %i.ah = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ai = phi double [ %i.aq, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit ], [ %.pre21, %.preheader.preheader ] ; 2 uses
  %.01418 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.aj = fptosi double %i.ai to i16
  %i.ak = add i16 %2, %i.aj
  %i.al = mul i16 %i.ak, 8000
  %i.am = icmp eq i16 %i.f, %i.al
  br i1 %i.am, label %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre22 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit

_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ah, %.preheader ], [ %.pre22, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.ai, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01418, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge19, !llvm.loop !202

._crit_edge19:                                    ; preds = %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit, %_Z26check_shifted_variable_sumIs19custom_add_variableIsEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge19
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge19, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge19 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge19 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Is28custom_add_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = add i16 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = add i16 %3, %2
  %.reass = add i16 %i.e, %invariant.op21         ; 5 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre26 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check39 = icmp ult i32 %1, 16
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.reass, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec42 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert43 = insertelement <4 x i16> poison, i16 %.reass, i64 0
  %broadcast.splat44 = shufflevector <4 x i16> %broadcast.splatinsert43, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n49 = icmp eq i64 %n.vec42, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us
  %i.g = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.ac, %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi40 = phi <8 x i16> [ %i.m, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %wide.load41 = load <8 x i16>, ptr %i.i, align 2, !tbaa !23
  %i.j = add <8 x i16> %broadcast.splat, %vec.phi
  %i.k = add <8 x i16> %broadcast.splat, %vec.phi40
  %i.l = add <8 x i16> %i.j, %wide.load           ; 2 uses
  %i.m = add <8 x i16> %i.k, %wide.load41         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.m, %i.l
  %i.o = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.o, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.p = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi46 = phi <4 x i16> [ %i.p, %vec.epilog.ph ], [ %i.s, %vec.epilog.vector.body ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index45
  %wide.load47 = load <4 x i16>, ptr %i.q, align 2, !tbaa !23
  %i.r = add <4 x i16> %broadcast.splat44, %vec.phi46
  %i.s = add <4 x i16> %i.r, %wide.load47         ; 2 uses
  %index.next48 = add nuw i64 %index45, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next48, %n.vec42
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !204

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.u = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.s) ; 2 uses
  br i1 %cmp.n49, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  %.01719.us.ph = phi i16 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i16 [ %i.y, %vec.epilog.scalar.ph ], [ %.01719.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !23
  %i.x = add i16 %.reass, %.01719.us
  %i.y = add i16 %i.x, %i.w                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !205

bb.b:                                             ; preds = %._crit_edge.us
  %i.z = load i32, ptr @current_test, align 4, !tbaa !7
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.z) ; 0 uses
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ab = phi i32 [ %.pre28, %bb.b ], [ %i.g, %._crit_edge.us ] ; 2 uses
  %i.ac = add nuw nsw i32 %.01823.us, 1           ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  br i1 %i.ad, label %iter.check, label %._crit_edge24, !llvm.loop !206

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.u, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.y, %vec.epilog.scalar.ph ]
  %i.ae = load double, ptr @init_value, align 8, !tbaa !20
  %i.af = fptosi double %i.ae to i16
  %i.ag = add i16 %.reass, %i.af
  %i.ah = mul i16 %i.ag, 8000
  %i.ai = icmp eq i16 %.lcssa, %i.ah
  br i1 %i.ai, label %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit
  %i.aj = phi i32 [ %i.aq, %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ak = phi double [ %i.ar, %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit ], [ %.pre26, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.as, %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.al = fptosi double %i.ak to i16
  %i.am = add i16 %.reass, %i.al
  %7 = and i16 %i.am, 1023
  %i.an = icmp eq i16 %7, 0
  br i1 %i.an, label %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ao = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ao) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.aq = phi i32 [ %i.aj, %.preheader ], [ %.pre27, %bb.c ] ; 2 uses
  %i.ar = phi double [ %i.ak, %.preheader ], [ %.pre, %bb.c ]
  %i.as = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.aq
  br i1 %i.at, label %.preheader, label %._crit_edge24, !llvm.loop !206

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIs28custom_add_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.au = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.au, ptr @end_time, align 8, !tbaa !19
  %i.av = load i64, ptr @start_time, align 8, !tbaa !19
  %i.aw = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ax = icmp ne ptr %i.aw, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ay = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ay, %.pre.i
  %or.cond.i = select i1 %i.ax, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.az = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.az, ptr @allocated_results, align 4, !tbaa !7
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 4
  %i.bc = tail call ptr @realloc(ptr noundef %i.aw, i64 noundef %i.bb) #14 ; 3 uses
  store ptr %i.bc, ptr @results, align 8, !tbaa !10
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.be = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.be) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.bg = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ay, %._crit_edge24 ] ; 2 uses
  %i.bh = phi ptr [ %i.bc, %._crit_edge.i ], [ %i.aw, %._crit_edge24 ]
  %i.bi = sub nsw i64 %i.au, %i.av
  %i.bj = sitofp i64 %i.bi to double
  %i.bk = fdiv double %i.bj, 1.000000e+06
  %i.bl = sext i32 %i.bg to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.bl ; 2 uses
  store double %i.bk, ptr %i.bm, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %6, ptr %i.bn, align 8, !tbaa !15
  %i.bo = add nsw i32 %i.bg, 1
  store i32 %i.bo, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Is19custom_sub_variableIsEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = sub <8 x i16> %vec.phi, %broadcast.splat
  %i.j = sub <8 x i16> %vec.phi32, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %wide.load           ; 2 uses
  %i.l = add <8 x i16> %i.j, %wide.load33         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = sub <4 x i16> %vec.phi38, %broadcast.splat36
  %i.r = add <4 x i16> %i.q, %wide.load39         ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !208

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = sub i16 %.01113.us, %2
  %i.x = add i16 %i.w, %i.v                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !209

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre20, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge16, !llvm.loop !210

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptosi double %i.ad to i16
  %i.af = sub i16 %i.ae, %2
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptosi double %i.aj to i16
  %i.al = sub i16 %i.ak, %2
  %4 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %4, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit

_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre19, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge16, !llvm.loop !210

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit, %_Z26check_shifted_variable_sumIs19custom_sub_variableIsEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge16 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge16 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Is28custom_sub_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge32

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = add i16 %4, %5
  %i.e = icmp sgt i32 %1, 0
  %i.f = add i16 %3, %2
  %i.g = add i16 %i.f, %i.d                       ; 5 uses
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre34 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check47 = icmp ult i32 %1, 16
  %i.h = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  %n.vec50 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert51 = insertelement <4 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat52 = shufflevector <4 x i16> %broadcast.splatinsert51, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n57 = icmp eq i64 %n.vec50, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us
  %i.i = phi i32 [ %i.ad, %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01831.us = phi i32 [ %i.ae, %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.n, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi48 = phi <8 x i16> [ %i.o, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <8 x i16>, ptr %i.j, align 2, !tbaa !23
  %wide.load49 = load <8 x i16>, ptr %i.k, align 2, !tbaa !23
  %i.l = sub <8 x i16> %vec.phi, %broadcast.splat
  %i.m = sub <8 x i16> %vec.phi48, %broadcast.splat
  %i.n = add <8 x i16> %i.l, %wide.load           ; 2 uses
  %i.o = add <8 x i16> %i.m, %wide.load49         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.o, %i.n
  %i.q = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.q, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.r = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi54 = phi <4 x i16> [ %i.r, %vec.epilog.ph ], [ %i.u, %vec.epilog.vector.body ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index53
  %wide.load55 = load <4 x i16>, ptr %i.s, align 2, !tbaa !23
  %i.t = sub <4 x i16> %vec.phi54, %broadcast.splat52
  %i.u = add <4 x i16> %i.t, %wide.load55         ; 2 uses
  %index.next56 = add nuw i64 %index53, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next56, %n.vec50
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !212

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.w = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.u) ; 2 uses
  br i1 %cmp.n57, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec50, %vec.epilog.middle.block ]
  %.01728.us.ph = phi i16 [ 0, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01728.us = phi i16 [ %i.aa, %vec.epilog.scalar.ph ], [ %.01728.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.y = load i16, ptr %i.x, align 2, !tbaa !23
  %i.z = sub i16 %.01728.us, %i.g
  %i.aa = add i16 %i.z, %i.y                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !213

bb.b:                                             ; preds = %._crit_edge.us
  %i.ab = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ab) ; 0 uses
  %.pre36 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ad = phi i32 [ %.pre36, %bb.b ], [ %i.i, %._crit_edge.us ] ; 2 uses
  %i.ae = add nuw nsw i32 %.01831.us, 1           ; 2 uses
  %i.af = icmp slt i32 %i.ae, %i.ad
  br i1 %i.af, label %iter.check, label %._crit_edge32, !llvm.loop !214

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.w, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.aa, %vec.epilog.scalar.ph ]
  %i.ag = load double, ptr @init_value, align 8, !tbaa !20
  %i.ah = fptosi double %i.ag to i16
  %i.ai = sub i16 %i.ah, %i.g
  %i.aj = mul i16 %i.ai, 8000
  %i.ak = icmp eq i16 %.lcssa, %i.aj
  br i1 %i.ak, label %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit
  %i.al = phi i32 [ %i.as, %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.am = phi double [ %i.at, %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit ], [ %.pre34, %.preheader.preheader ] ; 2 uses
  %.01831 = phi i32 [ %i.au, %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.an = fptosi double %i.am to i16
  %i.ao = sub i16 %i.an, %i.g
  %7 = and i16 %i.ao, 1023
  %i.ap = icmp eq i16 %7, 0
  br i1 %i.ap, label %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aq = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.aq) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre35 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.as = phi i32 [ %i.al, %.preheader ], [ %.pre35, %bb.c ] ; 2 uses
  %i.at = phi double [ %i.am, %.preheader ], [ %.pre, %bb.c ]
  %i.au = add nuw nsw i32 %.01831, 1              ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.as
  br i1 %i.av, label %.preheader, label %._crit_edge32, !llvm.loop !214

._crit_edge32:                                    ; preds = %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIs28custom_sub_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.aw = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.aw, ptr @end_time, align 8, !tbaa !19
  %i.ax = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ay = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.az = icmp ne ptr %i.ay, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ba = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ba, %.pre.i
  %or.cond.i = select i1 %i.az, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge32
  %i.bb = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bb, ptr @allocated_results, align 4, !tbaa !7
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 4
  %i.be = tail call ptr @realloc(ptr noundef %i.ay, i64 noundef %i.bd) #14 ; 3 uses
  store ptr %i.be, ptr @results, align 8, !tbaa !10
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bg = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bg) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge32, %._crit_edge.i
  %i.bi = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ba, %._crit_edge32 ] ; 2 uses
  %i.bj = phi ptr [ %i.be, %._crit_edge.i ], [ %i.ay, %._crit_edge32 ]
  %i.bk = sub nsw i64 %i.aw, %i.ax
  %i.bl = sitofp i64 %i.bk to double
  %i.bm = fdiv double %i.bl, 1.000000e+06
  %i.bn = sext i32 %i.bi to i64
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.bn ; 2 uses
  store double %i.bm, ptr %i.bo, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %6, ptr %i.bp, align 8, !tbaa !15
  %i.bq = add nsw i32 %i.bi, 1
  store i32 %i.bq, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Is24custom_multiply_variableIsEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = mul i16 %2, 8000                         ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs24custom_multiply_variableIsEEvT_S2_.exit.us
  %i.g = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIs24custom_multiply_variableIsEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ac, %_Z26check_shifted_variable_sumIs24custom_multiply_variableIsEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.m, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.i, align 2, !tbaa !23
  %i.j = mul <8 x i16> %wide.load, %broadcast.splat
  %i.k = mul <8 x i16> %wide.load33, %broadcast.splat
  %i.l = add <8 x i16> %i.j, %vec.phi             ; 2 uses
  %i.m = add <8 x i16> %i.k, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.m, %i.l
  %i.o = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.o, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.p = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.p, %vec.epilog.ph ], [ %i.s, %vec.epilog.vector.body ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.q, align 2, !tbaa !23
  %i.r = mul <4 x i16> %wide.load39, %broadcast.splat36
  %i.s = add <4 x i16> %i.r, %vec.phi38           ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !216

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.u = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.s) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.y, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !23
  %i.x = mul i16 %i.w, %2
  %i.y = add i16 %i.x, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !217

bb.b:                                             ; preds = %._crit_edge.us
  %i.z = load i32, ptr @current_test, align 4, !tbaa !7
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.z) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs24custom_multiply_variableIsEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIs24custom_multiply_variableIsEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ab = phi i32 [ %.pre20, %bb.b ], [ %i.g, %._crit_edge.us ] ; 2 uses
  %i.ac = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  br i1 %i.ad, label %iter.check, label %._crit_edge16, !llvm.loop !218

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.u, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.y, %vec.epilog.scalar.ph ]
  %i.ae = load double, ptr @init_value, align 8, !tbaa !20
  %i.af = fptosi double %i.ae to i16
  %i.ag = mul i16 %i.e, %i.af
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIs24custom_multiply_variableIsEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs24custom_multiply_variableIsEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIs24custom_multiply_variableIsEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIs24custom_multiply_variableIsEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIs24custom_multiply_variableIsEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptosi double %i.aj to i16
  %i.al = mul i16 %i.e, %i.ak
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIs24custom_multiply_variableIsEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
end_hunk_0
begin_hunk_1_@_Z14test_variable4Is33custom_multiply_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc:bb.a
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %_Z26check_shifted_variable_sumIs33custom_multiply_multiple_variableIsEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.am = load i32, ptr @current_test, align 4, !tbaa !7
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.am) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre30 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs33custom_multiply_multiple_variableIsEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIs33custom_multiply_multiple_variableIsEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ao = phi i32 [ %i.ah, %.preheader ], [ %.pre30, %bb.c ] ; 2 uses
  %i.ap = phi double [ %i.ai, %.preheader ], [ %.pre, %bb.c ]
  %i.aq = add nuw nsw i32 %.01826, 1              ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %i.ao
  br i1 %i.ar, label %.preheader, label %._crit_edge27, !llvm.loop !222

._crit_edge27:                                    ; preds = %_Z26check_shifted_variable_sumIs33custom_multiply_multiple_variableIsEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIs33custom_multiply_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.as = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.as, ptr @end_time, align 8, !tbaa !19
  %i.at = load i64, ptr @start_time, align 8, !tbaa !19
  %i.au = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.av = icmp ne ptr %i.au, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aw = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aw, %.pre.i
  %or.cond.i = select i1 %i.av, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge27
  %i.ax = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ax, ptr @allocated_results, align 4, !tbaa !7
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 4
  %i.ba = tail call ptr @realloc(ptr noundef %i.au, i64 noundef %i.az) #14 ; 3 uses
  store ptr %i.ba, ptr @results, align 8, !tbaa !10
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bc = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bc) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge27, %._crit_edge.i
  %i.be = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aw, %._crit_edge27 ] ; 2 uses
  %i.bf = phi ptr [ %i.ba, %._crit_edge.i ], [ %i.au, %._crit_edge27 ]
  %i.bg = sub nsw i64 %i.as, %i.at
  %i.bh = sitofp i64 %i.bg to double
  %i.bi = fdiv double %i.bh, 1.000000e+06
  %i.bj = sext i32 %i.be to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bj ; 2 uses
  store double %i.bi, ptr %i.bk, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %6, ptr %i.bl, align 8, !tbaa !15
  %i.bm = add nsw i32 %i.be, 1
  store i32 %i.bm, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Is34custom_multiply_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge26

.preheader.lr.ph:                                 ; preds = %bb.a
  %factor.op.mul23 = mul i16 %3, %4
  %factor.op.mul24 = mul i16 %factor.op.mul23, %5
  %factor.op.mul22 = mul i16 %3, %5
  %factor.op.mul = mul i16 %factor.op.mul22, %2
  %factor.op.mul.reass.reass = mul i16 %factor.op.mul, %4 ; 3 uses
  %i.d = icmp sgt i32 %1, 0
  %.reass.reass = mul i16 %factor.op.mul24, %2    ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre28 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check41 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %factor.op.mul.reass.reass, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec44 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert45 = insertelement <4 x i16> poison, i16 %factor.op.mul.reass.reass, i64 0
  %broadcast.splat46 = shufflevector <4 x i16> %broadcast.splatinsert45, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n51 = icmp eq i64 %n.vec44, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01825.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi42 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load43 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = add <8 x i16> %vec.phi, %broadcast.splat
  %i.j = add <8 x i16> %vec.phi42, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %wide.load           ; 2 uses
  %i.l = add <8 x i16> %i.j, %wide.load43         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi48 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index47
  %wide.load49 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = add <4 x i16> %vec.phi48, %broadcast.splat46
  %i.r = add <4 x i16> %i.q, %wide.load49         ; 2 uses
  %index.next50 = add nuw i64 %index47, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next50, %n.vec44
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !224

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n51, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec44, %vec.epilog.middle.block ]
  %.01720.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01720.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01720.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = add i16 %.01720.us, %factor.op.mul.reass.reass
  %i.x = add i16 %i.w, %i.v                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !225

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre30 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre30, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01825.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge26, !llvm.loop !226

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptosi double %i.ad to i16
  %i.af = add i16 %.reass.reass, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit ], [ %.pre28, %.preheader.preheader ] ; 2 uses
  %.01825 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptosi double %i.aj to i16
  %i.al = add i16 %.reass.reass, %i.ak
  %7 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %7, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre29, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01825, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge26, !llvm.loop !226

._crit_edge26:                                    ; preds = %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIs34custom_multiply_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge26
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge26, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge26 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge26 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %6, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Is22custom_divide_variableIsEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = sext i16 %2 to i32                       ; 5 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat36 = shufflevector <4 x i32> %broadcast.splatinsert35, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit.us
  %i.g = phi i32 [ %i.aj, %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.p, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.q, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.i, align 2, !tbaa !23
  %i.j = sext <8 x i16> %wide.load to <8 x i32>
  %i.k = sext <8 x i16> %wide.load33 to <8 x i32>
  %i.l = sdiv <8 x i32> %i.j, %broadcast.splat
  %i.m = sdiv <8 x i32> %i.k, %broadcast.splat
  %i.n = trunc <8 x i32> %i.l to <8 x i16>
  %i.o = trunc <8 x i32> %i.m to <8 x i16>
  %i.p = add <8 x i16> %vec.phi, %i.n             ; 2 uses
  %i.q = add <8 x i16> %vec.phi32, %i.o           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.q, %i.p
  %i.s = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.s, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.t = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.t, %vec.epilog.ph ], [ %i.y, %vec.epilog.vector.body ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.u, align 2, !tbaa !23
  %i.v = sext <4 x i16> %wide.load39 to <4 x i32>
  %i.w = sdiv <4 x i32> %i.v, %broadcast.splat36
  %i.x = trunc <4 x i32> %i.w to <4 x i16>
  %i.y = add <4 x i16> %vec.phi38, %i.x           ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !228

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aa = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.y) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.ag, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !23
  %i.ad = sext i16 %i.ac to i32
  %i.ae = sdiv i32 %i.ad, %i.e
  %i.af = trunc i32 %i.ae to i16
  %i.ag = add i16 %.01113.us, %i.af               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !229

bb.b:                                             ; preds = %._crit_edge.us
  %i.ah = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ah) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aj = phi i32 [ %.pre20, %bb.b ], [ %i.g, %._crit_edge.us ] ; 2 uses
  %i.ak = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.aj
  br i1 %i.al, label %iter.check, label %._crit_edge16, !llvm.loop !230

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.aa, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.ag, %vec.epilog.scalar.ph ]
  %i.am = load double, ptr @init_value, align 8, !tbaa !20
  %i.an = fptosi double %i.am to i16
  %i.ao = sext i16 %i.an to i32
  %i.ap = sdiv i32 %i.ao, %i.e
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = mul i16 %i.aq, 8000
  %i.as = icmp eq i16 %.lcssa, %i.ar
  br i1 %i.as, label %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit
  %i.at = phi i32 [ %i.bb, %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.au = phi double [ %i.bc, %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.bd, %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.av = fptosi double %i.au to i16
  %i.aw = sext i16 %i.av to i32
  %i.ax = sdiv i32 %i.aw, %i.e
  %4 = and i32 %i.ax, 1023
  %i.ay = icmp eq i32 %4, 0
  br i1 %i.ay, label %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.az = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.az) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit

_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.bb = phi i32 [ %i.at, %.preheader ], [ %.pre19, %bb.c ] ; 2 uses
  %i.bc = phi double [ %i.au, %.preheader ], [ %.pre, %bb.c ]
  %i.bd = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.bb
  br i1 %i.be, label %.preheader, label %._crit_edge16, !llvm.loop !230

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit, %_Z26check_shifted_variable_sumIs22custom_divide_variableIsEEvT_S2_.exit.us, %bb.a
  %i.bf = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.bf, ptr @end_time, align 8, !tbaa !19
  %i.bg = load i64, ptr @start_time, align 8, !tbaa !19
  %i.bh = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.bi = icmp ne ptr %i.bh, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.bj = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bj, %.pre.i
  %or.cond.i = select i1 %i.bi, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.bk = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bk, ptr @allocated_results, align 4, !tbaa !7
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 4
  %i.bn = tail call ptr @realloc(ptr noundef %i.bh, i64 noundef %i.bm) #14 ; 3 uses
  store ptr %i.bn, ptr @results, align 8, !tbaa !10
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bp = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bp) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.br = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bj, %._crit_edge16 ] ; 2 uses
  %i.bs = phi ptr [ %i.bn, %._crit_edge.i ], [ %i.bh, %._crit_edge16 ]
  %i.bt = sub nsw i64 %i.bf, %i.bg
  %i.bu = sitofp i64 %i.bt to double
  %i.bv = fdiv double %i.bu, 1.000000e+06
  %i.bw = sext i32 %i.br to i64
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bw ; 2 uses
  store double %i.bv, ptr %i.bx, align 8, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %3, ptr %i.by, align 8, !tbaa !15
  %i.bz = add nsw i32 %i.br, 1
  store i32 %i.bz, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Is31custom_divide_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = sext i16 %2 to i32                       ; 5 uses
  %i.f = sext i16 %3 to i32                       ; 5 uses
  %i.g = sext i16 %4 to i32                       ; 5 uses
  %i.h = sext i16 %5 to i32                       ; 5 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre24 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check37 = icmp ult i32 %1, 16
  %i.i = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert38 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat39 = shufflevector <8 x i32> %broadcast.splatinsert38, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert40 = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat41 = shufflevector <8 x i32> %broadcast.splatinsert40, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat43 = shufflevector <8 x i32> %broadcast.splatinsert42, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  %n.vec46 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert47 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat48 = shufflevector <4 x i32> %broadcast.splatinsert47, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat50 = shufflevector <4 x i32> %broadcast.splatinsert49, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat52 = shufflevector <4 x i32> %broadcast.splatinsert51, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat54 = shufflevector <4 x i32> %broadcast.splatinsert53, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n59 = icmp eq i64 %n.vec46, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us
  %i.j = phi i32 [ %i.ay, %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01821.us = phi i32 [ %i.az, %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.y, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi44 = phi <8 x i16> [ %i.z, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !tbaa !23
  %wide.load45 = load <8 x i16>, ptr %i.l, align 2, !tbaa !23
  %i.m = sext <8 x i16> %wide.load to <8 x i32>
  %i.n = sext <8 x i16> %wide.load45 to <8 x i32>
  %i.o = sdiv <8 x i32> %i.m, %broadcast.splat
  %i.p = sdiv <8 x i32> %i.n, %broadcast.splat
  %i.q = sdiv <8 x i32> %i.o, %broadcast.splat39
  %i.r = sdiv <8 x i32> %i.p, %broadcast.splat39
  %i.s = sdiv <8 x i32> %i.q, %broadcast.splat41
  %i.t = sdiv <8 x i32> %i.r, %broadcast.splat41
  %i.u = sdiv <8 x i32> %i.s, %broadcast.splat43
  %i.v = sdiv <8 x i32> %i.t, %broadcast.splat43
  %i.w = trunc <8 x i32> %i.u to <8 x i16>
  %i.x = trunc <8 x i32> %i.v to <8 x i16>
  %i.y = add <8 x i16> %vec.phi, %i.w             ; 2 uses
  %i.z = add <8 x i16> %vec.phi44, %i.x           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.z, %i.y
  %i.ab = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.ab, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ac = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi56 = phi <4 x i16> [ %i.ac, %vec.epilog.ph ], [ %i.ak, %vec.epilog.vector.body ]
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index55
  %wide.load57 = load <4 x i16>, ptr %i.ad, align 2, !tbaa !23
  %i.ae = sext <4 x i16> %wide.load57 to <4 x i32>
  %i.af = sdiv <4 x i32> %i.ae, %broadcast.splat48
  %i.ag = sdiv <4 x i32> %i.af, %broadcast.splat50
  %i.ah = sdiv <4 x i32> %i.ag, %broadcast.splat52
  %i.ai = sdiv <4 x i32> %i.ah, %broadcast.splat54
  %i.aj = trunc <4 x i32> %i.ai to <4 x i16>
  %i.ak = add <4 x i16> %vec.phi56, %i.aj         ; 2 uses
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next58, %n.vec46
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !232

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.am = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ak) ; 2 uses
  br i1 %cmp.n59, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ]
  %.01719.us.ph = phi i16 [ 0, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i16 [ %i.av, %vec.epilog.scalar.ph ], [ %.01719.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !23
  %i.ap = sext i16 %i.ao to i32
  %i.aq = sdiv i32 %i.ap, %i.e
  %i.ar = sdiv i32 %i.aq, %i.f
  %i.as = sdiv i32 %i.ar, %i.g
  %i.at = sdiv i32 %i.as, %i.h
  %i.au = trunc i32 %i.at to i16
  %i.av = add i16 %.01719.us, %i.au               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !233

bb.b:                                             ; preds = %._crit_edge.us
  %i.aw = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.aw) ; 0 uses
  %.pre26 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ay = phi i32 [ %.pre26, %bb.b ], [ %i.j, %._crit_edge.us ] ; 2 uses
  %i.az = add nuw nsw i32 %.01821.us, 1           ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.ay
  br i1 %i.ba, label %iter.check, label %._crit_edge22, !llvm.loop !234

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.am, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.av, %vec.epilog.scalar.ph ]
  %i.bb = load double, ptr @init_value, align 8, !tbaa !20
  %i.bc = fptosi double %i.bb to i16
  %i.bd = sext i16 %i.bc to i32
  %i.be = sdiv i32 %i.bd, %i.e
  %i.bf = sdiv i32 %i.be, %i.f
  %i.bg = sdiv i32 %i.bf, %i.g
  %i.bh = sdiv i32 %i.bg, %i.h
  %i.bi = trunc i32 %i.bh to i16
  %i.bj = mul i16 %i.bi, 8000
  %i.bk = icmp eq i16 %.lcssa, %i.bj
  br i1 %i.bk, label %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit
  %i.bl = phi i32 [ %i.bw, %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.bm = phi double [ %i.bx, %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit ], [ %.pre24, %.preheader.preheader ] ; 2 uses
  %.01821 = phi i32 [ %i.by, %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.bn = fptosi double %i.bm to i16
  %i.bo = sext i16 %i.bn to i32
  %i.bp = sdiv i32 %i.bo, %i.e
  %i.bq = sdiv i32 %i.bp, %i.f
  %i.br = sdiv i32 %i.bq, %i.g
  %i.bs = sdiv i32 %i.br, %i.h
  %7 = and i32 %i.bs, 1023
  %i.bt = icmp eq i32 %7, 0
  br i1 %i.bt, label %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.bu = load i32, ptr @current_test, align 4, !tbaa !7
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.bu) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.bw = phi i32 [ %i.bl, %.preheader ], [ %.pre25, %bb.c ] ; 2 uses
  %i.bx = phi double [ %i.bm, %.preheader ], [ %.pre, %bb.c ]
  %i.by = add nuw nsw i32 %.01821, 1              ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bw
  br i1 %i.bz, label %.preheader, label %._crit_edge22, !llvm.loop !234

._crit_edge22:                                    ; preds = %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIs31custom_divide_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ca = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ca, ptr @end_time, align 8, !tbaa !19
  %i.cb = load i64, ptr @start_time, align 8, !tbaa !19
  %i.cc = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.cd = icmp ne ptr %i.cc, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ce = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ce, %.pre.i
  %or.cond.i = select i1 %i.cd, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge22
  %i.cf = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cf, ptr @allocated_results, align 4, !tbaa !7
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 4
  %i.ci = tail call ptr @realloc(ptr noundef %i.cc, i64 noundef %i.ch) #14 ; 3 uses
  store ptr %i.ci, ptr @results, align 8, !tbaa !10
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.ck = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ck) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge22, %._crit_edge.i
  %i.cm = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ce, %._crit_edge22 ] ; 2 uses
  %i.cn = phi ptr [ %i.ci, %._crit_edge.i ], [ %i.cc, %._crit_edge22 ]
  %i.co = sub nsw i64 %i.ca, %i.cb
  %i.cp = sitofp i64 %i.co to double
  %i.cq = fdiv double %i.cp, 1.000000e+06
  %i.cr = sext i32 %i.cm to i64
  %i.cs = getelementptr inbounds [16 x i8], ptr %i.cn, i64 %i.cr ; 2 uses
  store double %i.cq, ptr %i.cs, align 8, !tbaa !14
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %6, ptr %i.ct, align 8, !tbaa !15
  %i.cu = add nsw i32 %i.cm, 1
  store i32 %i.cu, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Is32custom_divide_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = sext i16 %2 to i32
  %i.f = sext i16 %3 to i32
  %i.g = sdiv i32 %i.e, %i.f
  %i.h = sext i16 %4 to i32
  %i.i = sdiv i32 %i.g, %i.h
  %i.j = sext i16 %5 to i32
  %i.k = sdiv i32 %i.i, %i.j
  %i.l = trunc i32 %i.k to i16                    ; 5 uses
  br i1 %i.d, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre24 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check37 = icmp ult i32 %1, 16
  %i.m = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.l, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  %n.vec40 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert41 = insertelement <4 x i16> poison, i16 %i.l, i64 0
  %broadcast.splat42 = shufflevector <4 x i16> %broadcast.splatinsert41, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n47 = icmp eq i64 %n.vec40, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us, %.preheader.lr.ph.split.us
  %i.n = phi i32 [ %i.b, %.preheader.lr.ph.split.us ], [ %i.ai, %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us ]
  %.01821.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.aj, %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.s, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi38 = phi <8 x i16> [ %i.t, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <8 x i16>, ptr %i.o, align 2, !tbaa !23
  %wide.load39 = load <8 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = add <8 x i16> %wide.load, %vec.phi
  %i.r = add <8 x i16> %wide.load39, %vec.phi38
  %i.s = add <8 x i16> %i.q, %broadcast.splat     ; 2 uses
  %i.t = add <8 x i16> %i.r, %broadcast.splat     ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.t, %i.s
  %i.v = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.v, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.w = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi44 = phi <4 x i16> [ %i.w, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index43
  %wide.load45 = load <4 x i16>, ptr %i.x, align 2, !tbaa !23
  %i.y = add <4 x i16> %wide.load45, %vec.phi44
  %i.z = add <4 x i16> %i.y, %broadcast.splat42   ; 2 uses
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next46, %n.vec40
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !236

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.z) ; 2 uses
  br i1 %cmp.n47, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec40, %vec.epilog.middle.block ]
  %.01719.us.ph = phi i16 [ 0, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i16 [ %i.af, %vec.epilog.scalar.ph ], [ %.01719.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !23
  %i.ae = add i16 %i.ad, %.01719.us
  %i.af = add i16 %i.ae, %i.l                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !237

bb.b:                                             ; preds = %._crit_edge.us
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre26 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ai = phi i32 [ %.pre26, %bb.b ], [ %i.n, %._crit_edge.us ] ; 2 uses
  %i.aj = add nuw nsw i32 %.01821.us, 1           ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %i.ai
  br i1 %i.ak, label %iter.check, label %._crit_edge22, !llvm.loop !238

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.ab, %vec.epilog.middle.block ], [ %i.v, %middle.block ], [ %i.af, %vec.epilog.scalar.ph ]
  %i.al = load double, ptr @init_value, align 8, !tbaa !20
  %i.am = fptosi double %i.al to i16
  %i.an = add i16 %i.l, %i.am
  %i.ao = mul i16 %i.an, 8000
  %i.ap = icmp eq i16 %.lcssa, %i.ao
  br i1 %i.ap, label %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit
  %i.aq = phi i32 [ %i.ax, %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ar = phi double [ %i.ay, %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit ], [ %.pre24, %.preheader.preheader ] ; 2 uses
  %.01821 = phi i32 [ %i.az, %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.as = fptosi double %i.ar to i16
  %i.at = add i16 %i.l, %i.as
  %7 = and i16 %i.at, 1023
  %i.au = icmp eq i16 %7, 0
  br i1 %i.au, label %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.av = load i32, ptr @current_test, align 4, !tbaa !7
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.av) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ax = phi i32 [ %i.aq, %.preheader ], [ %.pre25, %bb.c ] ; 2 uses
  %i.ay = phi double [ %i.ar, %.preheader ], [ %.pre, %bb.c ]
  %i.az = add nuw nsw i32 %.01821, 1              ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.ax
  br i1 %i.ba, label %.preheader, label %._crit_edge22, !llvm.loop !238

._crit_edge22:                                    ; preds = %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIs32custom_divide_multiple_variable2IsEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.bb = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.bb, ptr @end_time, align 8, !tbaa !19
  %i.bc = load i64, ptr @start_time, align 8, !tbaa !19
  %i.bd = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.be = icmp ne ptr %i.bd, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.bf = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bf, %.pre.i
  %or.cond.i = select i1 %i.be, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge22
  %i.bg = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bg, ptr @allocated_results, align 4, !tbaa !7
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 4
  %i.bj = tail call ptr @realloc(ptr noundef %i.bd, i64 noundef %i.bi) #14 ; 3 uses
  store ptr %i.bj, ptr @results, align 8, !tbaa !10
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bl = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bl) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge22, %._crit_edge.i
  %i.bn = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bf, %._crit_edge22 ] ; 2 uses
  %i.bo = phi ptr [ %i.bj, %._crit_edge.i ], [ %i.bd, %._crit_edge22 ]
  %i.bp = sub nsw i64 %i.bb, %i.bc
  %i.bq = sitofp i64 %i.bp to double
  %i.br = fdiv double %i.bq, 1.000000e+06
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bo, i64 %i.bs ; 2 uses
  store double %i.br, ptr %i.bt, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %6, ptr %i.bu, align 8, !tbaa !15
  %i.bv = add nsw i32 %i.bn, 1
  store i32 %i.bv, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Is30custom_mixed_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge23

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = sext i16 %3 to i32
  %i.f = sext i16 %4 to i32
  %i.g = mul nsw i32 %i.f, %i.e
  %i.h = sext i16 %5 to i32
  %i.i = sdiv i32 %i.g, %i.h
  %i.j = trunc i32 %i.i to i16
  %invariant.op24 = sub i16 %2, %i.j              ; 5 uses
  br i1 %i.d, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre27 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check40 = icmp ult i32 %1, 16
  %i.k = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %invariant.op24, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  %n.vec43 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert44 = insertelement <4 x i16> poison, i16 %invariant.op24, i64 0
  %broadcast.splat45 = shufflevector <4 x i16> %broadcast.splatinsert44, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n50 = icmp eq i64 %n.vec43, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us, %.preheader.lr.ph.split.us
  %i.l = phi i32 [ %i.b, %.preheader.lr.ph.split.us ], [ %i.ag, %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us ]
  %.01822.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.ah, %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.q, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi41 = phi <8 x i16> [ %i.r, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <8 x i16>, ptr %i.m, align 2, !tbaa !23
  %wide.load42 = load <8 x i16>, ptr %i.n, align 2, !tbaa !23
  %i.o = add <8 x i16> %broadcast.splat, %wide.load
  %i.p = add <8 x i16> %broadcast.splat, %wide.load42
  %i.q = add <8 x i16> %i.o, %vec.phi             ; 2 uses
  %i.r = add <8 x i16> %i.p, %vec.phi41           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.r, %i.q
  %i.t = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.t, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.u = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi47 = phi <4 x i16> [ %i.u, %vec.epilog.ph ], [ %i.x, %vec.epilog.vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index46
  %wide.load48 = load <4 x i16>, ptr %i.v, align 2, !tbaa !23
  %i.w = add <4 x i16> %broadcast.splat45, %wide.load48
  %i.x = add <4 x i16> %i.w, %vec.phi47           ; 2 uses
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next49, %n.vec43
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.z = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.x) ; 2 uses
  br i1 %cmp.n50, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec43, %vec.epilog.middle.block ]
  %.01720.us.ph = phi i16 [ 0, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01720.us = phi i16 [ %i.ad, %vec.epilog.scalar.ph ], [ %.01720.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !23
  %i.ac = add i16 %invariant.op24, %i.ab
  %i.ad = add i16 %i.ac, %.01720.us               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !241

bb.b:                                             ; preds = %._crit_edge.us
  %i.ae = load i32, ptr @current_test, align 4, !tbaa !7
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ae) ; 0 uses
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ag = phi i32 [ %.pre29, %bb.b ], [ %i.l, %._crit_edge.us ] ; 2 uses
  %i.ah = add nuw nsw i32 %.01822.us, 1           ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %i.ag
  br i1 %i.ai, label %iter.check, label %._crit_edge23, !llvm.loop !242

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.z, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %i.ad, %vec.epilog.scalar.ph ]
  %i.aj = load double, ptr @init_value, align 8, !tbaa !20
  %i.ak = fptosi double %i.aj to i16
  %.reass25.us = add i16 %invariant.op24, %i.ak
  %i.al = mul i16 %.reass25.us, 8000
  %i.am = icmp eq i16 %.lcssa, %i.al
  br i1 %i.am, label %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit
  %i.an = phi i32 [ %i.at, %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ao = phi double [ %i.au, %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit ], [ %.pre27, %.preheader.preheader ] ; 2 uses
  %.01822 = phi i32 [ %i.av, %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ap = fptosi double %i.ao to i16
  %.reass25 = add i16 %invariant.op24, %i.ap
  %7 = and i16 %.reass25, 1023
  %i.aq = icmp eq i16 %7, 0
  br i1 %i.aq, label %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ar = load i32, ptr @current_test, align 4, !tbaa !7
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ar) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.at = phi i32 [ %i.an, %.preheader ], [ %.pre28, %bb.c ] ; 2 uses
  %i.au = phi double [ %i.ao, %.preheader ], [ %.pre, %bb.c ]
  %i.av = add nuw nsw i32 %.01822, 1              ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.at
  br i1 %i.aw, label %.preheader, label %._crit_edge23, !llvm.loop !242

._crit_edge23:                                    ; preds = %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIs30custom_mixed_multiple_variableIsEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ax = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ax, ptr @end_time, align 8, !tbaa !19
  %i.ay = load i64, ptr @start_time, align 8, !tbaa !19
  %i.az = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ba = icmp ne ptr %i.az, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.bb = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bb, %.pre.i
  %or.cond.i = select i1 %i.ba, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge23
  %i.bc = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bc, ptr @allocated_results, align 4, !tbaa !7
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 4
  %i.bf = tail call ptr @realloc(ptr noundef %i.az, i64 noundef %i.be) #14 ; 3 uses
  store ptr %i.bf, ptr @results, align 8, !tbaa !10
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bh = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bh) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge23, %._crit_edge.i
  %i.bj = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bb, %._crit_edge23 ] ; 2 uses
  %i.bk = phi ptr [ %i.bf, %._crit_edge.i ], [ %i.az, %._crit_edge23 ]
  %i.bl = sub nsw i64 %i.ax, %i.ay
  %i.bm = sitofp i64 %i.bl to double
  %i.bn = fdiv double %i.bm, 1.000000e+06
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.bo ; 2 uses
  store double %i.bn, ptr %i.bp, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %6, ptr %i.bq, align 8, !tbaa !15
  %i.br = add nsw i32 %i.bj, 1
  store i32 %i.br, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Is19custom_variable_andIsEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  %invariant.op = and i16 %2, 1023
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = and <8 x i16> %wide.load, %broadcast.splat
  %i.j = and <8 x i16> %wide.load33, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %vec.phi             ; 2 uses
  %i.l = add <8 x i16> %i.j, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = and <4 x i16> %wide.load39, %broadcast.splat36
  %i.r = add <4 x i16> %i.q, %vec.phi38           ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !244

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = and i16 %i.v, %2
  %i.x = add i16 %i.w, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !245

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre20, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge16, !llvm.loop !246

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptosi double %i.ad to i16
  %i.af = and i16 %2, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptosi double %i.aj to i16
  %i.al = and i16 %invariant.op, %i.ak
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit

_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre19, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge16, !llvm.loop !246

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit, %_Z26check_shifted_variable_sumIs19custom_variable_andIsEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge16 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge16 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Is28custom_multiple_variable_andIsEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = and i16 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = and i16 %2, %invariant.op21
  %.reass22 = and i16 %i.e, %3                    ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre26 = load double, ptr @init_value, align 8, !tbaa !20
  %invariant.op = and i16 %.reass22, 1023
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check42 = icmp ult i32 %1, 16
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %4, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <8 x i16> poison, i16 %5, i64 0
  %broadcast.splat44 = shufflevector <8 x i16> %broadcast.splatinsert43, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat46 = shufflevector <8 x i16> %broadcast.splatinsert45, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <8 x i16> poison, i16 %3, i64 0
  %broadcast.splat48 = shufflevector <8 x i16> %broadcast.splatinsert47, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op.a = and <8 x i16> %broadcast.splat, %broadcast.splat44
  %invariant.op78 = and <8 x i16> %broadcast.splat, %broadcast.splat44
  %invariant.op80 = and <8 x i16> %invariant.op.a, %broadcast.splat46
  %invariant.op82 = and <8 x i16> %invariant.op78, %broadcast.splat46
  %invariant.op84 = and <8 x i16> %invariant.op80, %broadcast.splat48
  %invariant.op86 = and <8 x i16> %invariant.op82, %broadcast.splat48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec51 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %.scalar = and i16 %5, %4
  %.scalar66 = and i16 %2, %.scalar
  %.scalar67 = and i16 %3, %.scalar66
  %i.g = insertelement <4 x i16> poison, i16 %.scalar67, i64 0
  %i.h = shufflevector <4 x i16> %i.g, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n64 = icmp eq i64 %n.vec51, %wide.trip.count
  %invariant.op88 = and i16 %4, %5
  %invariant.op90 = and i16 %invariant.op88, %2
  %invariant.op92 = and i16 %invariant.op90, %3
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit.us
  %i.i = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi49 = phi <8 x i16> [ %i.m, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <8 x i16>, ptr %i.j, align 2, !tbaa !23
  %wide.load50 = load <8 x i16>, ptr %i.k, align 2, !tbaa !23
  %.reass85 = and <8 x i16> %wide.load, %invariant.op84
  %.reass87 = and <8 x i16> %wide.load50, %invariant.op86
  %i.l = add <8 x i16> %.reass85, %vec.phi        ; 2 uses
  %i.m = add <8 x i16> %.reass87, %vec.phi49      ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !247

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.m, %i.l
  %i.o = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.o, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.p = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi61 = phi <4 x i16> [ %i.p, %vec.epilog.ph ], [ %i.s, %vec.epilog.vector.body ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index60
  %wide.load62 = load <4 x i16>, ptr %i.q, align 2, !tbaa !23
  %i.r = and <4 x i16> %i.h, %wide.load62
  %i.s = add <4 x i16> %i.r, %vec.phi61           ; 2 uses
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next63, %n.vec51
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !248

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.u = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.s) ; 2 uses
  br i1 %cmp.n64, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ]
  %.01719.us.ph = phi i16 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01719.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !23
  %.reass.reass = and i16 %i.w, %invariant.op92
  %i.x = add i16 %.reass.reass, %.01719.us        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !249

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre28, %bb.b ], [ %i.i, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01823.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge24, !llvm.loop !250

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.u, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptosi double %i.ad to i16
  %i.af = and i16 %.reass22, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit ], [ %.pre26, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptosi double %i.aj to i16
  %i.al = and i16 %invariant.op, %i.ak
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre27, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge24, !llvm.loop !250

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_andIsEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge24 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge24 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %6, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Is18custom_variable_orIsEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = or <8 x i16> %wide.load, %broadcast.splat
  %i.j = or <8 x i16> %wide.load33, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %vec.phi             ; 2 uses
  %i.l = add <8 x i16> %i.j, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = or <4 x i16> %wide.load39, %broadcast.splat36
  %i.r = add <4 x i16> %i.q, %vec.phi38           ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !252

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = or i16 %i.v, %2
  %i.x = add i16 %i.w, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !253

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre20, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge16, !llvm.loop !254

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptosi double %i.ad to i16
  %i.af = or i16 %2, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptosi double %i.aj to i16
  %i.al = or i16 %2, %i.ak
  %4 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %4, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit

_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre19, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge16, !llvm.loop !254

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit, %_Z26check_shifted_variable_sumIs18custom_variable_orIsEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge16 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge16 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Is27custom_multiple_variable_orIsEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = or i16 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = or i16 %2, %invariant.op21
  %.reass22 = or i16 %i.e, %3                     ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre26 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check42 = icmp ult i32 %1, 16
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %4, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <8 x i16> poison, i16 %5, i64 0
  %broadcast.splat44 = shufflevector <8 x i16> %broadcast.splatinsert43, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat46 = shufflevector <8 x i16> %broadcast.splatinsert45, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <8 x i16> poison, i16 %3, i64 0
  %broadcast.splat48 = shufflevector <8 x i16> %broadcast.splatinsert47, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op = or <8 x i16> %broadcast.splat, %broadcast.splat44
  %invariant.op78 = or <8 x i16> %broadcast.splat, %broadcast.splat44
  %invariant.op80 = or <8 x i16> %invariant.op, %broadcast.splat46
  %invariant.op82 = or <8 x i16> %invariant.op78, %broadcast.splat46
  %invariant.op84 = or <8 x i16> %invariant.op80, %broadcast.splat48
  %invariant.op86 = or <8 x i16> %invariant.op82, %broadcast.splat48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec51 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %.scalar = or i16 %5, %4
  %.scalar66 = or i16 %2, %.scalar
  %.scalar67 = or i16 %3, %.scalar66
  %i.g = insertelement <4 x i16> poison, i16 %.scalar67, i64 0
  %i.h = shufflevector <4 x i16> %i.g, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n64 = icmp eq i64 %n.vec51, %wide.trip.count
  %invariant.op88 = or i16 %4, %5
  %invariant.op90 = or i16 %invariant.op88, %2
  %invariant.op92 = or i16 %invariant.op90, %3
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit.us
  %i.i = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi49 = phi <8 x i16> [ %i.m, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <8 x i16>, ptr %i.j, align 2, !tbaa !23
  %wide.load50 = load <8 x i16>, ptr %i.k, align 2, !tbaa !23
  %.reass85 = or <8 x i16> %wide.load, %invariant.op84
  %.reass87 = or <8 x i16> %wide.load50, %invariant.op86
  %i.l = add <8 x i16> %.reass85, %vec.phi        ; 2 uses
  %i.m = add <8 x i16> %.reass87, %vec.phi49      ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !255

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.m, %i.l
  %i.o = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.o, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.p = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi61 = phi <4 x i16> [ %i.p, %vec.epilog.ph ], [ %i.s, %vec.epilog.vector.body ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index60
  %wide.load62 = load <4 x i16>, ptr %i.q, align 2, !tbaa !23
  %i.r = or <4 x i16> %i.h, %wide.load62
  %i.s = add <4 x i16> %i.r, %vec.phi61           ; 2 uses
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next63, %n.vec51
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !256

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.u = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.s) ; 2 uses
  br i1 %cmp.n64, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ]
  %.01719.us.ph = phi i16 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01719.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !23
  %.reass.reass = or i16 %i.w, %invariant.op92
  %i.x = add i16 %.reass.reass, %.01719.us        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !257

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre28, %bb.b ], [ %i.i, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01823.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge24, !llvm.loop !258

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.u, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptosi double %i.ad to i16
  %i.af = or i16 %.reass22, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit ], [ %.pre26, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptosi double %i.aj to i16
  %i.al = or i16 %.reass22, %i.ak
  %7 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %7, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre27, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge24, !llvm.loop !258

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIs27custom_multiple_variable_orIsEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge24 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge24 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %6, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Is19custom_variable_xorIsEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = xor <8 x i16> %wide.load, %broadcast.splat
  %i.j = xor <8 x i16> %wide.load33, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %vec.phi             ; 2 uses
  %i.l = add <8 x i16> %i.j, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !259

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = xor <4 x i16> %wide.load39, %broadcast.splat36
  %i.r = add <4 x i16> %i.q, %vec.phi38           ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !260

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = xor i16 %i.v, %2
  %i.x = add i16 %i.w, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !261

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre20, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge16, !llvm.loop !262

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptosi double %i.ad to i16
  %i.af = xor i16 %2, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptosi double %i.aj to i16
  %i.al = xor i16 %2, %i.ak
  %4 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %4, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit

_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre19, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge16, !llvm.loop !262

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit, %_Z26check_shifted_variable_sumIs19custom_variable_xorIsEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge16 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge16 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Is28custom_multiple_variable_xorIsEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = xor i16 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = xor i16 %2, %invariant.op21
  %.reass22 = xor i16 %i.e, %3                    ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre26 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check42 = icmp ult i32 %1, 16
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %4, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <8 x i16> poison, i16 %5, i64 0
  %broadcast.splat44 = shufflevector <8 x i16> %broadcast.splatinsert43, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat46 = shufflevector <8 x i16> %broadcast.splatinsert45, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <8 x i16> poison, i16 %3, i64 0
  %broadcast.splat48 = shufflevector <8 x i16> %broadcast.splatinsert47, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op = xor <8 x i16> %broadcast.splat, %broadcast.splat44
  %invariant.op78 = xor <8 x i16> %broadcast.splat, %broadcast.splat44
  %invariant.op80 = xor <8 x i16> %invariant.op, %broadcast.splat46
  %invariant.op82 = xor <8 x i16> %invariant.op78, %broadcast.splat46
  %invariant.op84 = xor <8 x i16> %invariant.op80, %broadcast.splat48
  %invariant.op86 = xor <8 x i16> %invariant.op82, %broadcast.splat48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec51 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %.scalar = xor i16 %5, %4
  %.scalar66 = xor i16 %2, %.scalar
  %.scalar67 = xor i16 %3, %.scalar66
  %i.g = insertelement <4 x i16> poison, i16 %.scalar67, i64 0
  %i.h = shufflevector <4 x i16> %i.g, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n64 = icmp eq i64 %n.vec51, %wide.trip.count
  %invariant.op88 = xor i16 %4, %5
  %invariant.op90 = xor i16 %invariant.op88, %2
  %invariant.op92 = xor i16 %invariant.op90, %3
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit.us
  %i.i = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi49 = phi <8 x i16> [ %i.m, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <8 x i16>, ptr %i.j, align 2, !tbaa !23
  %wide.load50 = load <8 x i16>, ptr %i.k, align 2, !tbaa !23
  %.reass85 = xor <8 x i16> %wide.load, %invariant.op84
  %.reass87 = xor <8 x i16> %wide.load50, %invariant.op86
  %i.l = add <8 x i16> %.reass85, %vec.phi        ; 2 uses
  %i.m = add <8 x i16> %.reass87, %vec.phi49      ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.m, %i.l
  %i.o = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.o, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.p = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi61 = phi <4 x i16> [ %i.p, %vec.epilog.ph ], [ %i.s, %vec.epilog.vector.body ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index60
  %wide.load62 = load <4 x i16>, ptr %i.q, align 2, !tbaa !23
  %i.r = xor <4 x i16> %i.h, %wide.load62
  %i.s = add <4 x i16> %i.r, %vec.phi61           ; 2 uses
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next63, %n.vec51
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !264

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.u = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.s) ; 2 uses
  br i1 %cmp.n64, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ]
  %.01719.us.ph = phi i16 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01719.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !23
  %.reass.reass = xor i16 %i.w, %invariant.op92
  %i.x = add i16 %.reass.reass, %.01719.us        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !265

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre28, %bb.b ], [ %i.i, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01823.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge24, !llvm.loop !266

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.u, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptosi double %i.ad to i16
  %i.af = xor i16 %.reass22, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit ], [ %.pre26, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptosi double %i.aj to i16
  %i.al = xor i16 %.reass22, %i.ak
  %7 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %7, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre27, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge24, !llvm.loop !266

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIs28custom_multiple_variable_xorIsEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge24 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge24 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %6, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1It19custom_add_variableItEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = add <8 x i16> %vec.phi, %broadcast.splat
  %i.j = add <8 x i16> %vec.phi32, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %wide.load           ; 2 uses
  %i.l = add <8 x i16> %i.j, %wide.load33         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !267

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = add <4 x i16> %vec.phi38, %broadcast.splat36
  %i.r = add <4 x i16> %i.q, %wide.load39         ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !268

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = add i16 %.01113.us, %2
  %i.x = add i16 %i.w, %i.v                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !269

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre20, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge16, !llvm.loop !270

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptoui double %i.ad to i16
  %i.af = add i16 %2, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptoui double %i.aj to i16
  %i.al = add i16 %2, %i.ak
  %4 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %4, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit

_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre19, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge16, !llvm.loop !270

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge16 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge16 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22test_hoisted_variable1It19custom_add_variableItEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge19

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = trunc i32 %1 to i16
  %i.f = mul i16 %2, %i.e                         ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre21 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check34 = icmp ult i32 %1, 16
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  %n.vec37 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n42 = icmp eq i64 %n.vec37, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us
  %i.h = phi i32 [ %i.y, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01418.us = phi i32 [ %i.z, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi35 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <8 x i16>, ptr %i.i, align 2, !tbaa !23
  %wide.load36 = load <8 x i16>, ptr %i.j, align 2, !tbaa !23
  %i.k = add <8 x i16> %wide.load, %vec.phi       ; 2 uses
  %i.l = add <8 x i16> %wide.load36, %vec.phi35   ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !271

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi39 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.q, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index38
  %wide.load40 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = add <4 x i16> %wide.load40, %vec.phi39   ; 2 uses
  %index.next41 = add nuw i64 %index38, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next41, %n.vec37
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !272

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.s = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.q) ; 2 uses
  br i1 %cmp.n42, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ]
  %.01316.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01316.us = phi i16 [ %i.v, %vec.epilog.scalar.ph ], [ %.01316.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2, !tbaa !23
  %i.v = add i16 %i.u, %.01316.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !273

bb.b:                                             ; preds = %._crit_edge.us
  %i.w = load i32, ptr @current_test, align 4, !tbaa !7
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.w) ; 0 uses
  %.pre23 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.y = phi i32 [ %.pre23, %bb.b ], [ %i.h, %._crit_edge.us ] ; 2 uses
  %i.z = add nuw nsw i32 %.01418.us, 1            ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.y
  br i1 %i.aa, label %iter.check, label %._crit_edge19, !llvm.loop !274

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.s, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.v, %vec.epilog.scalar.ph ]
  %i.ab = add i16 %.lcssa, %i.f
  %i.ac = load double, ptr @init_value, align 8, !tbaa !20
  %i.ad = fptoui double %i.ac to i16
  %i.ae = add i16 %2, %i.ad
  %i.af = mul i16 %i.ae, 8000
  %i.ag = icmp eq i16 %i.ab, %i.af
  br i1 %i.ag, label %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit
  %i.ah = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ai = phi double [ %i.aq, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit ], [ %.pre21, %.preheader.preheader ] ; 2 uses
  %.01418 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.aj = fptoui double %i.ai to i16
  %i.ak = add i16 %2, %i.aj
  %i.al = mul i16 %i.ak, 8000
  %i.am = icmp eq i16 %i.f, %i.al
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre22 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit

_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ah, %.preheader ], [ %.pre22, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.ai, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01418, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge19, !llvm.loop !274

._crit_edge19:                                    ; preds = %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit, %_Z26check_shifted_variable_sumIt19custom_add_variableItEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge19
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge19, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge19 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge19 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4It28custom_add_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = add i16 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = add i16 %3, %2
  %.reass = add i16 %i.e, %invariant.op21         ; 5 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre26 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check39 = icmp ult i32 %1, 16
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.reass, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec42 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert43 = insertelement <4 x i16> poison, i16 %.reass, i64 0
  %broadcast.splat44 = shufflevector <4 x i16> %broadcast.splatinsert43, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n49 = icmp eq i64 %n.vec42, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us
  %i.g = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.ac, %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi40 = phi <8 x i16> [ %i.m, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %wide.load41 = load <8 x i16>, ptr %i.i, align 2, !tbaa !23
  %i.j = add <8 x i16> %broadcast.splat, %vec.phi
  %i.k = add <8 x i16> %broadcast.splat, %vec.phi40
  %i.l = add <8 x i16> %i.j, %wide.load           ; 2 uses
  %i.m = add <8 x i16> %i.k, %wide.load41         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !275

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.m, %i.l
  %i.o = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.o, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.p = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi46 = phi <4 x i16> [ %i.p, %vec.epilog.ph ], [ %i.s, %vec.epilog.vector.body ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index45
  %wide.load47 = load <4 x i16>, ptr %i.q, align 2, !tbaa !23
  %i.r = add <4 x i16> %broadcast.splat44, %vec.phi46
  %i.s = add <4 x i16> %i.r, %wide.load47         ; 2 uses
  %index.next48 = add nuw i64 %index45, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next48, %n.vec42
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !276

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.u = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.s) ; 2 uses
  br i1 %cmp.n49, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  %.01719.us.ph = phi i16 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i16 [ %i.y, %vec.epilog.scalar.ph ], [ %.01719.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !23
  %i.x = add i16 %.reass, %.01719.us
  %i.y = add i16 %i.x, %i.w                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !277

bb.b:                                             ; preds = %._crit_edge.us
  %i.z = load i32, ptr @current_test, align 4, !tbaa !7
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.z) ; 0 uses
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ab = phi i32 [ %.pre28, %bb.b ], [ %i.g, %._crit_edge.us ] ; 2 uses
  %i.ac = add nuw nsw i32 %.01823.us, 1           ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  br i1 %i.ad, label %iter.check, label %._crit_edge24, !llvm.loop !278

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.u, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.y, %vec.epilog.scalar.ph ]
  %i.ae = load double, ptr @init_value, align 8, !tbaa !20
  %i.af = fptoui double %i.ae to i16
  %i.ag = add i16 %.reass, %i.af
  %i.ah = mul i16 %i.ag, 8000
  %i.ai = icmp eq i16 %.lcssa, %i.ah
  br i1 %i.ai, label %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit
  %i.aj = phi i32 [ %i.aq, %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ak = phi double [ %i.ar, %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit ], [ %.pre26, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.as, %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.al = fptoui double %i.ak to i16
  %i.am = add i16 %.reass, %i.al
  %7 = and i16 %i.am, 1023
  %i.an = icmp eq i16 %7, 0
  br i1 %i.an, label %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ao = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ao) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.aq = phi i32 [ %i.aj, %.preheader ], [ %.pre27, %bb.c ] ; 2 uses
  %i.ar = phi double [ %i.ak, %.preheader ], [ %.pre, %bb.c ]
  %i.as = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.aq
  br i1 %i.at, label %.preheader, label %._crit_edge24, !llvm.loop !278

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIt28custom_add_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.au = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.au, ptr @end_time, align 8, !tbaa !19
  %i.av = load i64, ptr @start_time, align 8, !tbaa !19
  %i.aw = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ax = icmp ne ptr %i.aw, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ay = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ay, %.pre.i
  %or.cond.i = select i1 %i.ax, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.az = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.az, ptr @allocated_results, align 4, !tbaa !7
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 4
  %i.bc = tail call ptr @realloc(ptr noundef %i.aw, i64 noundef %i.bb) #14 ; 3 uses
  store ptr %i.bc, ptr @results, align 8, !tbaa !10
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.be = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.be) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.bg = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ay, %._crit_edge24 ] ; 2 uses
  %i.bh = phi ptr [ %i.bc, %._crit_edge.i ], [ %i.aw, %._crit_edge24 ]
  %i.bi = sub nsw i64 %i.au, %i.av
  %i.bj = sitofp i64 %i.bi to double
  %i.bk = fdiv double %i.bj, 1.000000e+06
  %i.bl = sext i32 %i.bg to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.bl ; 2 uses
  store double %i.bk, ptr %i.bm, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %6, ptr %i.bn, align 8, !tbaa !15
  %i.bo = add nsw i32 %i.bg, 1
  store i32 %i.bo, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1It19custom_sub_variableItEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = sub <8 x i16> %vec.phi, %broadcast.splat
  %i.j = sub <8 x i16> %vec.phi32, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %wide.load           ; 2 uses
  %i.l = add <8 x i16> %i.j, %wide.load33         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = sub <4 x i16> %vec.phi38, %broadcast.splat36
  %i.r = add <4 x i16> %i.q, %wide.load39         ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !280

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = sub i16 %.01113.us, %2
  %i.x = add i16 %i.w, %i.v                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !281

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre20, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge16, !llvm.loop !282

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptoui double %i.ad to i16
  %i.af = sub i16 %i.ae, %2
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptoui double %i.aj to i16
  %i.al = sub i16 %i.ak, %2
  %4 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %4, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit

_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre19, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge16, !llvm.loop !282

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit, %_Z26check_shifted_variable_sumIt19custom_sub_variableItEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge16 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge16 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4It28custom_sub_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge32

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = add i16 %4, %5
  %i.e = icmp sgt i32 %1, 0
  %i.f = add i16 %3, %2
  %i.g = add i16 %i.f, %i.d                       ; 5 uses
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre34 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check47 = icmp ult i32 %1, 16
  %i.h = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  %n.vec50 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert51 = insertelement <4 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat52 = shufflevector <4 x i16> %broadcast.splatinsert51, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n57 = icmp eq i64 %n.vec50, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us
  %i.i = phi i32 [ %i.ad, %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01831.us = phi i32 [ %i.ae, %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.n, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi48 = phi <8 x i16> [ %i.o, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <8 x i16>, ptr %i.j, align 2, !tbaa !23
  %wide.load49 = load <8 x i16>, ptr %i.k, align 2, !tbaa !23
  %i.l = sub <8 x i16> %vec.phi, %broadcast.splat
  %i.m = sub <8 x i16> %vec.phi48, %broadcast.splat
  %i.n = add <8 x i16> %i.l, %wide.load           ; 2 uses
  %i.o = add <8 x i16> %i.m, %wide.load49         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.o, %i.n
  %i.q = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.q, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.r = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi54 = phi <4 x i16> [ %i.r, %vec.epilog.ph ], [ %i.u, %vec.epilog.vector.body ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index53
  %wide.load55 = load <4 x i16>, ptr %i.s, align 2, !tbaa !23
  %i.t = sub <4 x i16> %vec.phi54, %broadcast.splat52
  %i.u = add <4 x i16> %i.t, %wide.load55         ; 2 uses
  %index.next56 = add nuw i64 %index53, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next56, %n.vec50
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !284

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.w = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.u) ; 2 uses
  br i1 %cmp.n57, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec50, %vec.epilog.middle.block ]
  %.01728.us.ph = phi i16 [ 0, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01728.us = phi i16 [ %i.aa, %vec.epilog.scalar.ph ], [ %.01728.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.y = load i16, ptr %i.x, align 2, !tbaa !23
  %i.z = sub i16 %.01728.us, %i.g
  %i.aa = add i16 %i.z, %i.y                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !285

bb.b:                                             ; preds = %._crit_edge.us
  %i.ab = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ab) ; 0 uses
  %.pre36 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ad = phi i32 [ %.pre36, %bb.b ], [ %i.i, %._crit_edge.us ] ; 2 uses
  %i.ae = add nuw nsw i32 %.01831.us, 1           ; 2 uses
  %i.af = icmp slt i32 %i.ae, %i.ad
  br i1 %i.af, label %iter.check, label %._crit_edge32, !llvm.loop !286

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.w, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.aa, %vec.epilog.scalar.ph ]
  %i.ag = load double, ptr @init_value, align 8, !tbaa !20
  %i.ah = fptoui double %i.ag to i16
  %i.ai = sub i16 %i.ah, %i.g
  %i.aj = mul i16 %i.ai, 8000
  %i.ak = icmp eq i16 %.lcssa, %i.aj
  br i1 %i.ak, label %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit
  %i.al = phi i32 [ %i.as, %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.am = phi double [ %i.at, %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit ], [ %.pre34, %.preheader.preheader ] ; 2 uses
  %.01831 = phi i32 [ %i.au, %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.an = fptoui double %i.am to i16
  %i.ao = sub i16 %i.an, %i.g
  %7 = and i16 %i.ao, 1023
  %i.ap = icmp eq i16 %7, 0
  br i1 %i.ap, label %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aq = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.aq) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre35 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.as = phi i32 [ %i.al, %.preheader ], [ %.pre35, %bb.c ] ; 2 uses
  %i.at = phi double [ %i.am, %.preheader ], [ %.pre, %bb.c ]
  %i.au = add nuw nsw i32 %.01831, 1              ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.as
  br i1 %i.av, label %.preheader, label %._crit_edge32, !llvm.loop !286

._crit_edge32:                                    ; preds = %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIt28custom_sub_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.aw = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.aw, ptr @end_time, align 8, !tbaa !19
  %i.ax = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ay = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.az = icmp ne ptr %i.ay, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ba = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ba, %.pre.i
  %or.cond.i = select i1 %i.az, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge32
  %i.bb = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bb, ptr @allocated_results, align 4, !tbaa !7
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 4
  %i.be = tail call ptr @realloc(ptr noundef %i.ay, i64 noundef %i.bd) #14 ; 3 uses
  store ptr %i.be, ptr @results, align 8, !tbaa !10
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bg = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bg) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge32, %._crit_edge.i
  %i.bi = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ba, %._crit_edge32 ] ; 2 uses
  %i.bj = phi ptr [ %i.be, %._crit_edge.i ], [ %i.ay, %._crit_edge32 ]
  %i.bk = sub nsw i64 %i.aw, %i.ax
  %i.bl = sitofp i64 %i.bk to double
  %i.bm = fdiv double %i.bl, 1.000000e+06
  %i.bn = sext i32 %i.bi to i64
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.bn ; 2 uses
  store double %i.bm, ptr %i.bo, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %6, ptr %i.bp, align 8, !tbaa !15
  %i.bq = add nsw i32 %i.bi, 1
  store i32 %i.bq, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1It24custom_multiply_variableItEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = mul i16 %2, 8000                         ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt24custom_multiply_variableItEEvT_S2_.exit.us
  %i.g = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIt24custom_multiply_variableItEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ac, %_Z26check_shifted_variable_sumIt24custom_multiply_variableItEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.m, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.i, align 2, !tbaa !23
  %i.j = mul <8 x i16> %wide.load, %broadcast.splat
  %i.k = mul <8 x i16> %wide.load33, %broadcast.splat
  %i.l = add <8 x i16> %i.j, %vec.phi             ; 2 uses
  %i.m = add <8 x i16> %i.k, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.m, %i.l
  %i.o = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.o, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.p = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.p, %vec.epilog.ph ], [ %i.s, %vec.epilog.vector.body ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.q, align 2, !tbaa !23
  %i.r = mul <4 x i16> %wide.load39, %broadcast.splat36
  %i.s = add <4 x i16> %i.r, %vec.phi38           ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !288

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.u = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.s) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.y, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !23
  %i.x = mul i16 %i.w, %2
  %i.y = add i16 %i.x, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !289

bb.b:                                             ; preds = %._crit_edge.us
  %i.z = load i32, ptr @current_test, align 4, !tbaa !7
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.z) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt24custom_multiply_variableItEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIt24custom_multiply_variableItEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ab = phi i32 [ %.pre20, %bb.b ], [ %i.g, %._crit_edge.us ] ; 2 uses
  %i.ac = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  br i1 %i.ad, label %iter.check, label %._crit_edge16, !llvm.loop !290

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.u, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.y, %vec.epilog.scalar.ph ]
  %i.ae = load double, ptr @init_value, align 8, !tbaa !20
  %i.af = fptoui double %i.ae to i16
  %i.ag = mul i16 %i.e, %i.af
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIt24custom_multiply_variableItEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt24custom_multiply_variableItEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIt24custom_multiply_variableItEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIt24custom_multiply_variableItEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIt24custom_multiply_variableItEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptoui double %i.aj to i16
  %i.al = mul i16 %i.e, %i.ak
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt24custom_multiply_variableItEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
end_hunk_1
begin_hunk_2_@_Z14test_variable4It33custom_multiply_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc:bb.a
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %_Z26check_shifted_variable_sumIt33custom_multiply_multiple_variableItEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.am = load i32, ptr @current_test, align 4, !tbaa !7
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.am) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre30 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt33custom_multiply_multiple_variableItEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIt33custom_multiply_multiple_variableItEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ao = phi i32 [ %i.ah, %.preheader ], [ %.pre30, %bb.c ] ; 2 uses
  %i.ap = phi double [ %i.ai, %.preheader ], [ %.pre, %bb.c ]
  %i.aq = add nuw nsw i32 %.01826, 1              ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %i.ao
  br i1 %i.ar, label %.preheader, label %._crit_edge27, !llvm.loop !294

._crit_edge27:                                    ; preds = %_Z26check_shifted_variable_sumIt33custom_multiply_multiple_variableItEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIt33custom_multiply_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.as = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.as, ptr @end_time, align 8, !tbaa !19
  %i.at = load i64, ptr @start_time, align 8, !tbaa !19
  %i.au = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.av = icmp ne ptr %i.au, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aw = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aw, %.pre.i
  %or.cond.i = select i1 %i.av, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge27
  %i.ax = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ax, ptr @allocated_results, align 4, !tbaa !7
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 4
  %i.ba = tail call ptr @realloc(ptr noundef %i.au, i64 noundef %i.az) #14 ; 3 uses
  store ptr %i.ba, ptr @results, align 8, !tbaa !10
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bc = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bc) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge27, %._crit_edge.i
  %i.be = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aw, %._crit_edge27 ] ; 2 uses
  %i.bf = phi ptr [ %i.ba, %._crit_edge.i ], [ %i.au, %._crit_edge27 ]
  %i.bg = sub nsw i64 %i.as, %i.at
  %i.bh = sitofp i64 %i.bg to double
  %i.bi = fdiv double %i.bh, 1.000000e+06
  %i.bj = sext i32 %i.be to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bj ; 2 uses
  store double %i.bi, ptr %i.bk, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %6, ptr %i.bl, align 8, !tbaa !15
  %i.bm = add nsw i32 %i.be, 1
  store i32 %i.bm, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4It34custom_multiply_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge26

.preheader.lr.ph:                                 ; preds = %bb.a
  %factor.op.mul23 = mul i16 %3, %4
  %factor.op.mul24 = mul i16 %factor.op.mul23, %5
  %factor.op.mul22 = mul i16 %3, %5
  %factor.op.mul = mul i16 %factor.op.mul22, %2
  %factor.op.mul.reass.reass = mul i16 %factor.op.mul, %4 ; 3 uses
  %i.d = icmp sgt i32 %1, 0
  %.reass.reass = mul i16 %factor.op.mul24, %2    ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre28 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check41 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %factor.op.mul.reass.reass, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec44 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert45 = insertelement <4 x i16> poison, i16 %factor.op.mul.reass.reass, i64 0
  %broadcast.splat46 = shufflevector <4 x i16> %broadcast.splatinsert45, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n51 = icmp eq i64 %n.vec44, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01825.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi42 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load43 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = add <8 x i16> %vec.phi, %broadcast.splat
  %i.j = add <8 x i16> %vec.phi42, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %wide.load           ; 2 uses
  %i.l = add <8 x i16> %i.j, %wide.load43         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi48 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index47
  %wide.load49 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = add <4 x i16> %vec.phi48, %broadcast.splat46
  %i.r = add <4 x i16> %i.q, %wide.load49         ; 2 uses
  %index.next50 = add nuw i64 %index47, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next50, %n.vec44
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !296

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n51, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec44, %vec.epilog.middle.block ]
  %.01720.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01720.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01720.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = add i16 %.01720.us, %factor.op.mul.reass.reass
  %i.x = add i16 %i.w, %i.v                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !297

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre30 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre30, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01825.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge26, !llvm.loop !298

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptoui double %i.ad to i16
  %i.af = add i16 %.reass.reass, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit ], [ %.pre28, %.preheader.preheader ] ; 2 uses
  %.01825 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptoui double %i.aj to i16
  %i.al = add i16 %.reass.reass, %i.ak
  %7 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %7, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre29, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01825, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge26, !llvm.loop !298

._crit_edge26:                                    ; preds = %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIt34custom_multiply_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge26
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge26, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge26 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge26 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %6, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1It22custom_divide_variableItEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = udiv <8 x i16> %wide.load, %broadcast.splat
  %i.j = udiv <8 x i16> %wide.load33, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %vec.phi             ; 2 uses
  %i.l = add <8 x i16> %i.j, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !299

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = udiv <4 x i16> %wide.load39, %broadcast.splat36
  %i.r = add <4 x i16> %i.q, %vec.phi38           ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !300

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = udiv i16 %i.v, %2
  %i.x = add i16 %i.w, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !301

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre20, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge16, !llvm.loop !302

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptoui double %i.ad to i16
  %i.af = udiv i16 %i.ae, %2
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptoui double %i.aj to i16
  %i.al = udiv i16 %i.ak, %2
  %4 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %4, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit

_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre19, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge16, !llvm.loop !302

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit, %_Z26check_shifted_variable_sumIt22custom_divide_variableItEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge16 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge16 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4It31custom_divide_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre24 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check37 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert38 = insertelement <8 x i16> poison, i16 %3, i64 0
  %broadcast.splat39 = shufflevector <8 x i16> %broadcast.splatinsert38, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert40 = insertelement <8 x i16> poison, i16 %4, i64 0
  %broadcast.splat41 = shufflevector <8 x i16> %broadcast.splatinsert40, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <8 x i16> poison, i16 %5, i64 0
  %broadcast.splat43 = shufflevector <8 x i16> %broadcast.splatinsert42, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec46 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert47 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat48 = shufflevector <4 x i16> %broadcast.splatinsert47, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <4 x i16> poison, i16 %3, i64 0
  %broadcast.splat50 = shufflevector <4 x i16> %broadcast.splatinsert49, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <4 x i16> poison, i16 %4, i64 0
  %broadcast.splat52 = shufflevector <4 x i16> %broadcast.splatinsert51, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <4 x i16> poison, i16 %5, i64 0
  %broadcast.splat54 = shufflevector <4 x i16> %broadcast.splatinsert53, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n59 = icmp eq i64 %n.vec46, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.am, %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01821.us = phi i32 [ %i.an, %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.q, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi44 = phi <8 x i16> [ %i.r, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load45 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = udiv <8 x i16> %wide.load, %broadcast.splat
  %i.j = udiv <8 x i16> %wide.load45, %broadcast.splat
  %i.k = udiv <8 x i16> %i.i, %broadcast.splat39
  %i.l = udiv <8 x i16> %i.j, %broadcast.splat39
  %i.m = udiv <8 x i16> %i.k, %broadcast.splat41
  %i.n = udiv <8 x i16> %i.l, %broadcast.splat41
  %i.o = udiv <8 x i16> %i.m, %broadcast.splat43
  %i.p = udiv <8 x i16> %i.n, %broadcast.splat43
  %i.q = add <8 x i16> %i.o, %vec.phi             ; 2 uses
  %i.r = add <8 x i16> %i.p, %vec.phi44           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.r, %i.q
  %i.t = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.t, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.u = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi56 = phi <4 x i16> [ %i.u, %vec.epilog.ph ], [ %i.aa, %vec.epilog.vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index55
  %wide.load57 = load <4 x i16>, ptr %i.v, align 2, !tbaa !23
  %i.w = udiv <4 x i16> %wide.load57, %broadcast.splat48
  %i.x = udiv <4 x i16> %i.w, %broadcast.splat50
  %i.y = udiv <4 x i16> %i.x, %broadcast.splat52
  %i.z = udiv <4 x i16> %i.y, %broadcast.splat54
  %i.aa = add <4 x i16> %i.z, %vec.phi56          ; 2 uses
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next58, %n.vec46
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !304

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ac = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.aa) ; 2 uses
  br i1 %cmp.n59, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ]
  %.01719.us.ph = phi i16 [ 0, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i16 [ %i.aj, %vec.epilog.scalar.ph ], [ %.01719.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !23
  %i.af = udiv i16 %i.ae, %2
  %i.ag = udiv i16 %i.af, %3
  %i.ah = udiv i16 %i.ag, %4
  %i.ai = udiv i16 %i.ah, %5
  %i.aj = add i16 %i.ai, %.01719.us               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !305

bb.b:                                             ; preds = %._crit_edge.us
  %i.ak = load i32, ptr @current_test, align 4, !tbaa !7
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ak) ; 0 uses
  %.pre26 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.am = phi i32 [ %.pre26, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.an = add nuw nsw i32 %.01821.us, 1           ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.am
  br i1 %i.ao, label %iter.check, label %._crit_edge22, !llvm.loop !306

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.ac, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %i.aj, %vec.epilog.scalar.ph ]
  %i.ap = load double, ptr @init_value, align 8, !tbaa !20
  %i.aq = fptoui double %i.ap to i16
  %i.ar = udiv i16 %i.aq, %2
  %i.as = udiv i16 %i.ar, %3
  %i.at = udiv i16 %i.as, %4
  %i.au = udiv i16 %i.at, %5
  %i.av = mul i16 %i.au, 8000
  %i.aw = icmp eq i16 %.lcssa, %i.av
  br i1 %i.aw, label %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit
  %i.ax = phi i32 [ %i.bh, %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ay = phi double [ %i.bi, %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit ], [ %.pre24, %.preheader.preheader ] ; 2 uses
  %.01821 = phi i32 [ %i.bj, %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.az = fptoui double %i.ay to i16
  %i.ba = udiv i16 %i.az, %2
  %i.bb = udiv i16 %i.ba, %3
  %i.bc = udiv i16 %i.bb, %4
  %i.bd = udiv i16 %i.bc, %5
  %7 = and i16 %i.bd, 1023
  %i.be = icmp eq i16 %7, 0
  br i1 %i.be, label %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.bf = load i32, ptr @current_test, align 4, !tbaa !7
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.bf) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.bh = phi i32 [ %i.ax, %.preheader ], [ %.pre25, %bb.c ] ; 2 uses
  %i.bi = phi double [ %i.ay, %.preheader ], [ %.pre, %bb.c ]
  %i.bj = add nuw nsw i32 %.01821, 1              ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.bh
  br i1 %i.bk, label %.preheader, label %._crit_edge22, !llvm.loop !306

._crit_edge22:                                    ; preds = %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIt31custom_divide_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.bl = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.bl, ptr @end_time, align 8, !tbaa !19
  %i.bm = load i64, ptr @start_time, align 8, !tbaa !19
  %i.bn = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.bo = icmp ne ptr %i.bn, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.bp = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bp, %.pre.i
  %or.cond.i = select i1 %i.bo, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge22
  %i.bq = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bq, ptr @allocated_results, align 4, !tbaa !7
  %i.br = sext i32 %i.bq to i64
  %i.bs = shl nsw i64 %i.br, 4
  %i.bt = tail call ptr @realloc(ptr noundef %i.bn, i64 noundef %i.bs) #14 ; 3 uses
  store ptr %i.bt, ptr @results, align 8, !tbaa !10
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bv = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bv) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge22, %._crit_edge.i
  %i.bx = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bp, %._crit_edge22 ] ; 2 uses
  %i.by = phi ptr [ %i.bt, %._crit_edge.i ], [ %i.bn, %._crit_edge22 ]
  %i.bz = sub nsw i64 %i.bl, %i.bm
  %i.ca = sitofp i64 %i.bz to double
  %i.cb = fdiv double %i.ca, 1.000000e+06
  %i.cc = sext i32 %i.bx to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.by, i64 %i.cc ; 2 uses
  store double %i.cb, ptr %i.cd, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %6, ptr %i.ce, align 8, !tbaa !15
  %i.cf = add nsw i32 %i.bx, 1
  store i32 %i.cf, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4It32custom_divide_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = udiv i16 %2, %3
  %i.f = udiv i16 %i.e, %4
  %i.g = udiv i16 %i.f, %5                        ; 5 uses
  br i1 %i.d, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre24 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check37 = icmp ult i32 %1, 16
  %i.h = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  %n.vec40 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert41 = insertelement <4 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat42 = shufflevector <4 x i16> %broadcast.splatinsert41, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n47 = icmp eq i64 %n.vec40, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us, %.preheader.lr.ph.split.us
  %i.i = phi i32 [ %i.b, %.preheader.lr.ph.split.us ], [ %i.ad, %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us ]
  %.01821.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.ae, %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.n, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi38 = phi <8 x i16> [ %i.o, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <8 x i16>, ptr %i.j, align 2, !tbaa !23
  %wide.load39 = load <8 x i16>, ptr %i.k, align 2, !tbaa !23
  %i.l = add <8 x i16> %wide.load, %vec.phi
  %i.m = add <8 x i16> %wide.load39, %vec.phi38
  %i.n = add <8 x i16> %i.l, %broadcast.splat     ; 2 uses
  %i.o = add <8 x i16> %i.m, %broadcast.splat     ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.o, %i.n
  %i.q = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.q, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.r = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi44 = phi <4 x i16> [ %i.r, %vec.epilog.ph ], [ %i.u, %vec.epilog.vector.body ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index43
  %wide.load45 = load <4 x i16>, ptr %i.s, align 2, !tbaa !23
  %i.t = add <4 x i16> %wide.load45, %vec.phi44
  %i.u = add <4 x i16> %i.t, %broadcast.splat42   ; 2 uses
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next46, %n.vec40
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !308

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.w = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.u) ; 2 uses
  br i1 %cmp.n47, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec40, %vec.epilog.middle.block ]
  %.01719.us.ph = phi i16 [ 0, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i16 [ %i.aa, %vec.epilog.scalar.ph ], [ %.01719.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.y = load i16, ptr %i.x, align 2, !tbaa !23
  %i.z = add i16 %i.y, %.01719.us
  %i.aa = add i16 %i.z, %i.g                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !309

bb.b:                                             ; preds = %._crit_edge.us
  %i.ab = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ab) ; 0 uses
  %.pre26 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ad = phi i32 [ %.pre26, %bb.b ], [ %i.i, %._crit_edge.us ] ; 2 uses
  %i.ae = add nuw nsw i32 %.01821.us, 1           ; 2 uses
  %i.af = icmp slt i32 %i.ae, %i.ad
  br i1 %i.af, label %iter.check, label %._crit_edge22, !llvm.loop !310

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.w, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.aa, %vec.epilog.scalar.ph ]
  %i.ag = load double, ptr @init_value, align 8, !tbaa !20
  %i.ah = fptoui double %i.ag to i16
  %i.ai = add i16 %i.g, %i.ah
  %i.aj = mul i16 %i.ai, 8000
  %i.ak = icmp eq i16 %.lcssa, %i.aj
  br i1 %i.ak, label %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit
  %i.al = phi i32 [ %i.as, %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.am = phi double [ %i.at, %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit ], [ %.pre24, %.preheader.preheader ] ; 2 uses
  %.01821 = phi i32 [ %i.au, %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.an = fptoui double %i.am to i16
  %i.ao = add i16 %i.g, %i.an
  %7 = and i16 %i.ao, 1023
  %i.ap = icmp eq i16 %7, 0
  br i1 %i.ap, label %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aq = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.aq) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.as = phi i32 [ %i.al, %.preheader ], [ %.pre25, %bb.c ] ; 2 uses
  %i.at = phi double [ %i.am, %.preheader ], [ %.pre, %bb.c ]
  %i.au = add nuw nsw i32 %.01821, 1              ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.as
  br i1 %i.av, label %.preheader, label %._crit_edge22, !llvm.loop !310

._crit_edge22:                                    ; preds = %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIt32custom_divide_multiple_variable2ItEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.aw = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.aw, ptr @end_time, align 8, !tbaa !19
  %i.ax = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ay = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.az = icmp ne ptr %i.ay, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ba = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ba, %.pre.i
  %or.cond.i = select i1 %i.az, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge22
  %i.bb = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bb, ptr @allocated_results, align 4, !tbaa !7
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 4
  %i.be = tail call ptr @realloc(ptr noundef %i.ay, i64 noundef %i.bd) #14 ; 3 uses
  store ptr %i.be, ptr @results, align 8, !tbaa !10
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bg = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bg) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge22, %._crit_edge.i
  %i.bi = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ba, %._crit_edge22 ] ; 2 uses
  %i.bj = phi ptr [ %i.be, %._crit_edge.i ], [ %i.ay, %._crit_edge22 ]
  %i.bk = sub nsw i64 %i.aw, %i.ax
  %i.bl = sitofp i64 %i.bk to double
  %i.bm = fdiv double %i.bl, 1.000000e+06
  %i.bn = sext i32 %i.bi to i64
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.bn ; 2 uses
  store double %i.bm, ptr %i.bo, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %6, ptr %i.bp, align 8, !tbaa !15
  %i.bq = add nsw i32 %i.bi, 1
  store i32 %i.bq, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4It30custom_mixed_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge23

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = zext i16 %3 to i32
  %i.f = zext i16 %4 to i32
  %i.g = mul nuw nsw i32 %i.f, %i.e
  %i.h = zext i16 %5 to i32
  %i.i = udiv i32 %i.g, %i.h
  %i.j = trunc i32 %i.i to i16
  %invariant.op24 = sub i16 %2, %i.j              ; 5 uses
  br i1 %i.d, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre27 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check40 = icmp ult i32 %1, 16
  %i.k = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %invariant.op24, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  %n.vec43 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert44 = insertelement <4 x i16> poison, i16 %invariant.op24, i64 0
  %broadcast.splat45 = shufflevector <4 x i16> %broadcast.splatinsert44, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n50 = icmp eq i64 %n.vec43, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us, %.preheader.lr.ph.split.us
  %i.l = phi i32 [ %i.b, %.preheader.lr.ph.split.us ], [ %i.ag, %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us ]
  %.01822.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.ah, %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.q, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi41 = phi <8 x i16> [ %i.r, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <8 x i16>, ptr %i.m, align 2, !tbaa !23
  %wide.load42 = load <8 x i16>, ptr %i.n, align 2, !tbaa !23
  %i.o = add <8 x i16> %broadcast.splat, %wide.load
  %i.p = add <8 x i16> %broadcast.splat, %wide.load42
  %i.q = add <8 x i16> %i.o, %vec.phi             ; 2 uses
  %i.r = add <8 x i16> %i.p, %vec.phi41           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.r, %i.q
  %i.t = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.t, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.u = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi47 = phi <4 x i16> [ %i.u, %vec.epilog.ph ], [ %i.x, %vec.epilog.vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index46
  %wide.load48 = load <4 x i16>, ptr %i.v, align 2, !tbaa !23
  %i.w = add <4 x i16> %broadcast.splat45, %wide.load48
  %i.x = add <4 x i16> %i.w, %vec.phi47           ; 2 uses
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next49, %n.vec43
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !312

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.z = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.x) ; 2 uses
  br i1 %cmp.n50, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec43, %vec.epilog.middle.block ]
  %.01720.us.ph = phi i16 [ 0, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01720.us = phi i16 [ %i.ad, %vec.epilog.scalar.ph ], [ %.01720.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !23
  %i.ac = add i16 %invariant.op24, %i.ab
  %i.ad = add i16 %i.ac, %.01720.us               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !313

bb.b:                                             ; preds = %._crit_edge.us
  %i.ae = load i32, ptr @current_test, align 4, !tbaa !7
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ae) ; 0 uses
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ag = phi i32 [ %.pre29, %bb.b ], [ %i.l, %._crit_edge.us ] ; 2 uses
  %i.ah = add nuw nsw i32 %.01822.us, 1           ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %i.ag
  br i1 %i.ai, label %iter.check, label %._crit_edge23, !llvm.loop !314

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.z, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %i.ad, %vec.epilog.scalar.ph ]
  %i.aj = load double, ptr @init_value, align 8, !tbaa !20
  %i.ak = fptoui double %i.aj to i16
  %.reass25.us = add i16 %invariant.op24, %i.ak
  %i.al = mul i16 %.reass25.us, 8000
  %i.am = icmp eq i16 %.lcssa, %i.al
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit
  %i.an = phi i32 [ %i.at, %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ao = phi double [ %i.au, %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit ], [ %.pre27, %.preheader.preheader ] ; 2 uses
  %.01822 = phi i32 [ %i.av, %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ap = fptoui double %i.ao to i16
  %.reass25 = add i16 %invariant.op24, %i.ap
  %7 = and i16 %.reass25, 1023
  %i.aq = icmp eq i16 %7, 0
  br i1 %i.aq, label %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ar = load i32, ptr @current_test, align 4, !tbaa !7
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ar) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.at = phi i32 [ %i.an, %.preheader ], [ %.pre28, %bb.c ] ; 2 uses
  %i.au = phi double [ %i.ao, %.preheader ], [ %.pre, %bb.c ]
  %i.av = add nuw nsw i32 %.01822, 1              ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.at
  br i1 %i.aw, label %.preheader, label %._crit_edge23, !llvm.loop !314

._crit_edge23:                                    ; preds = %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIt30custom_mixed_multiple_variableItEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ax = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ax, ptr @end_time, align 8, !tbaa !19
  %i.ay = load i64, ptr @start_time, align 8, !tbaa !19
  %i.az = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ba = icmp ne ptr %i.az, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.bb = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bb, %.pre.i
  %or.cond.i = select i1 %i.ba, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge23
  %i.bc = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bc, ptr @allocated_results, align 4, !tbaa !7
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 4
  %i.bf = tail call ptr @realloc(ptr noundef %i.az, i64 noundef %i.be) #14 ; 3 uses
  store ptr %i.bf, ptr @results, align 8, !tbaa !10
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bh = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bh) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge23, %._crit_edge.i
  %i.bj = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bb, %._crit_edge23 ] ; 2 uses
  %i.bk = phi ptr [ %i.bf, %._crit_edge.i ], [ %i.az, %._crit_edge23 ]
  %i.bl = sub nsw i64 %i.ax, %i.ay
  %i.bm = sitofp i64 %i.bl to double
  %i.bn = fdiv double %i.bm, 1.000000e+06
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.bo ; 2 uses
  store double %i.bn, ptr %i.bp, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %6, ptr %i.bq, align 8, !tbaa !15
  %i.br = add nsw i32 %i.bj, 1
  store i32 %i.br, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1It19custom_variable_andItEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  %invariant.op = and i16 %2, 1023
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = and <8 x i16> %wide.load, %broadcast.splat
  %i.j = and <8 x i16> %wide.load33, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %vec.phi             ; 2 uses
  %i.l = add <8 x i16> %i.j, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !315

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = and <4 x i16> %wide.load39, %broadcast.splat36
  %i.r = add <4 x i16> %i.q, %vec.phi38           ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !316

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = and i16 %i.v, %2
  %i.x = add i16 %i.w, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !317

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre20, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge16, !llvm.loop !318

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptoui double %i.ad to i16
  %i.af = and i16 %2, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptoui double %i.aj to i16
  %i.al = and i16 %invariant.op, %i.ak
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit

_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre19, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge16, !llvm.loop !318

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit, %_Z26check_shifted_variable_sumIt19custom_variable_andItEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge16 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge16 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4It28custom_multiple_variable_andItEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = and i16 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = and i16 %2, %invariant.op21
  %.reass22 = and i16 %i.e, %3                    ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre26 = load double, ptr @init_value, align 8, !tbaa !20
  %invariant.op = and i16 %.reass22, 1023
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check42 = icmp ult i32 %1, 16
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %4, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <8 x i16> poison, i16 %5, i64 0
  %broadcast.splat44 = shufflevector <8 x i16> %broadcast.splatinsert43, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat46 = shufflevector <8 x i16> %broadcast.splatinsert45, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <8 x i16> poison, i16 %3, i64 0
  %broadcast.splat48 = shufflevector <8 x i16> %broadcast.splatinsert47, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op.a = and <8 x i16> %broadcast.splat, %broadcast.splat44
  %invariant.op78 = and <8 x i16> %broadcast.splat, %broadcast.splat44
  %invariant.op80 = and <8 x i16> %invariant.op.a, %broadcast.splat46
  %invariant.op82 = and <8 x i16> %invariant.op78, %broadcast.splat46
  %invariant.op84 = and <8 x i16> %invariant.op80, %broadcast.splat48
  %invariant.op86 = and <8 x i16> %invariant.op82, %broadcast.splat48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec51 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %.scalar = and i16 %5, %4
  %.scalar66 = and i16 %2, %.scalar
  %.scalar67 = and i16 %3, %.scalar66
  %i.g = insertelement <4 x i16> poison, i16 %.scalar67, i64 0
  %i.h = shufflevector <4 x i16> %i.g, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n64 = icmp eq i64 %n.vec51, %wide.trip.count
  %invariant.op88 = and i16 %4, %5
  %invariant.op90 = and i16 %invariant.op88, %2
  %invariant.op92 = and i16 %invariant.op90, %3
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit.us
  %i.i = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi49 = phi <8 x i16> [ %i.m, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <8 x i16>, ptr %i.j, align 2, !tbaa !23
  %wide.load50 = load <8 x i16>, ptr %i.k, align 2, !tbaa !23
  %.reass85 = and <8 x i16> %wide.load, %invariant.op84
  %.reass87 = and <8 x i16> %wide.load50, %invariant.op86
  %i.l = add <8 x i16> %.reass85, %vec.phi        ; 2 uses
  %i.m = add <8 x i16> %.reass87, %vec.phi49      ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !319

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.m, %i.l
  %i.o = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.o, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.p = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi61 = phi <4 x i16> [ %i.p, %vec.epilog.ph ], [ %i.s, %vec.epilog.vector.body ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index60
  %wide.load62 = load <4 x i16>, ptr %i.q, align 2, !tbaa !23
  %i.r = and <4 x i16> %i.h, %wide.load62
  %i.s = add <4 x i16> %i.r, %vec.phi61           ; 2 uses
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next63, %n.vec51
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !320

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.u = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.s) ; 2 uses
  br i1 %cmp.n64, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ]
  %.01719.us.ph = phi i16 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01719.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !23
  %.reass.reass = and i16 %i.w, %invariant.op92
  %i.x = add i16 %.reass.reass, %.01719.us        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !321

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre28, %bb.b ], [ %i.i, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01823.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge24, !llvm.loop !322

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.u, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptoui double %i.ad to i16
  %i.af = and i16 %.reass22, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit ], [ %.pre26, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptoui double %i.aj to i16
  %i.al = and i16 %invariant.op, %i.ak
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre27, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge24, !llvm.loop !322

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_andItEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge24 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge24 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %6, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1It18custom_variable_orItEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = or <8 x i16> %wide.load, %broadcast.splat
  %i.j = or <8 x i16> %wide.load33, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %vec.phi             ; 2 uses
  %i.l = add <8 x i16> %i.j, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !323

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = or <4 x i16> %wide.load39, %broadcast.splat36
  %i.r = add <4 x i16> %i.q, %vec.phi38           ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !324

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = or i16 %i.v, %2
  %i.x = add i16 %i.w, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !325

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre20, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge16, !llvm.loop !326

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptoui double %i.ad to i16
  %i.af = or i16 %2, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptoui double %i.aj to i16
  %i.al = or i16 %2, %i.ak
  %4 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %4, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit

_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre19, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge16, !llvm.loop !326

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit, %_Z26check_shifted_variable_sumIt18custom_variable_orItEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge16 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge16 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4It27custom_multiple_variable_orItEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = or i16 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = or i16 %2, %invariant.op21
  %.reass22 = or i16 %i.e, %3                     ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre26 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check42 = icmp ult i32 %1, 16
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %4, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <8 x i16> poison, i16 %5, i64 0
  %broadcast.splat44 = shufflevector <8 x i16> %broadcast.splatinsert43, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat46 = shufflevector <8 x i16> %broadcast.splatinsert45, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <8 x i16> poison, i16 %3, i64 0
  %broadcast.splat48 = shufflevector <8 x i16> %broadcast.splatinsert47, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op = or <8 x i16> %broadcast.splat, %broadcast.splat44
  %invariant.op78 = or <8 x i16> %broadcast.splat, %broadcast.splat44
  %invariant.op80 = or <8 x i16> %invariant.op, %broadcast.splat46
  %invariant.op82 = or <8 x i16> %invariant.op78, %broadcast.splat46
  %invariant.op84 = or <8 x i16> %invariant.op80, %broadcast.splat48
  %invariant.op86 = or <8 x i16> %invariant.op82, %broadcast.splat48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec51 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %.scalar = or i16 %5, %4
  %.scalar66 = or i16 %2, %.scalar
  %.scalar67 = or i16 %3, %.scalar66
  %i.g = insertelement <4 x i16> poison, i16 %.scalar67, i64 0
  %i.h = shufflevector <4 x i16> %i.g, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n64 = icmp eq i64 %n.vec51, %wide.trip.count
  %invariant.op88 = or i16 %4, %5
  %invariant.op90 = or i16 %invariant.op88, %2
  %invariant.op92 = or i16 %invariant.op90, %3
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit.us
  %i.i = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi49 = phi <8 x i16> [ %i.m, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <8 x i16>, ptr %i.j, align 2, !tbaa !23
  %wide.load50 = load <8 x i16>, ptr %i.k, align 2, !tbaa !23
  %.reass85 = or <8 x i16> %wide.load, %invariant.op84
  %.reass87 = or <8 x i16> %wide.load50, %invariant.op86
  %i.l = add <8 x i16> %.reass85, %vec.phi        ; 2 uses
  %i.m = add <8 x i16> %.reass87, %vec.phi49      ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.m, %i.l
  %i.o = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.o, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.p = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi61 = phi <4 x i16> [ %i.p, %vec.epilog.ph ], [ %i.s, %vec.epilog.vector.body ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index60
  %wide.load62 = load <4 x i16>, ptr %i.q, align 2, !tbaa !23
  %i.r = or <4 x i16> %i.h, %wide.load62
  %i.s = add <4 x i16> %i.r, %vec.phi61           ; 2 uses
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next63, %n.vec51
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !328

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.u = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.s) ; 2 uses
  br i1 %cmp.n64, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ]
  %.01719.us.ph = phi i16 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01719.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !23
  %.reass.reass = or i16 %i.w, %invariant.op92
  %i.x = add i16 %.reass.reass, %.01719.us        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !329

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre28, %bb.b ], [ %i.i, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01823.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge24, !llvm.loop !330

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.u, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptoui double %i.ad to i16
  %i.af = or i16 %.reass22, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit ], [ %.pre26, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptoui double %i.aj to i16
  %i.al = or i16 %.reass22, %i.ak
  %7 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %7, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre27, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge24, !llvm.loop !330

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIt27custom_multiple_variable_orItEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge24 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge24 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %6, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1It19custom_variable_xorItEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre18 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check31 = icmp ult i32 %1, 16
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat36 = shufflevector <4 x i16> %broadcast.splatinsert35, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.k, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi32 = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load33 = load <8 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = xor <8 x i16> %wide.load, %broadcast.splat
  %i.j = xor <8 x i16> %wide.load33, %broadcast.splat
  %i.k = add <8 x i16> %i.i, %vec.phi             ; 2 uses
  %i.l = add <8 x i16> %i.j, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !331

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.l, %i.k
  %i.n = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.o = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <4 x i16> [ %i.o, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.p, align 2, !tbaa !23
  %i.q = xor <4 x i16> %wide.load39, %broadcast.splat36
  %i.r = add <4 x i16> %i.q, %vec.phi38           ; 2 uses
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !332

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.r) ; 2 uses
  br i1 %cmp.n41, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  %.01113.us.ph = phi i16 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01113.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !23
  %i.w = xor i16 %i.v, %2
  %i.x = add i16 %i.w, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !333

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre20, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge16, !llvm.loop !334

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptoui double %i.ad to i16
  %i.af = xor i16 %2, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit ], [ %.pre18, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptoui double %i.aj to i16
  %i.al = xor i16 %2, %i.ak
  %4 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %4, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre19 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit

_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre19, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge16, !llvm.loop !334

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit, %_Z26check_shifted_variable_sumIt19custom_variable_xorItEEvT_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge16 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge16 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %3, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4It28custom_multiple_variable_xorItEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = xor i16 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = xor i16 %2, %invariant.op21
  %.reass22 = xor i16 %i.e, %3                    ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre26 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check42 = icmp ult i32 %1, 16
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %4, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <8 x i16> poison, i16 %5, i64 0
  %broadcast.splat44 = shufflevector <8 x i16> %broadcast.splatinsert43, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat46 = shufflevector <8 x i16> %broadcast.splatinsert45, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <8 x i16> poison, i16 %3, i64 0
  %broadcast.splat48 = shufflevector <8 x i16> %broadcast.splatinsert47, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op = xor <8 x i16> %broadcast.splat, %broadcast.splat44
  %invariant.op78 = xor <8 x i16> %broadcast.splat, %broadcast.splat44
  %invariant.op80 = xor <8 x i16> %invariant.op, %broadcast.splat46
  %invariant.op82 = xor <8 x i16> %invariant.op78, %broadcast.splat46
  %invariant.op84 = xor <8 x i16> %invariant.op80, %broadcast.splat48
  %invariant.op86 = xor <8 x i16> %invariant.op82, %broadcast.splat48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec51 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %.scalar = xor i16 %5, %4
  %.scalar66 = xor i16 %2, %.scalar
  %.scalar67 = xor i16 %3, %.scalar66
  %i.g = insertelement <4 x i16> poison, i16 %.scalar67, i64 0
  %i.h = shufflevector <4 x i16> %i.g, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n64 = icmp eq i64 %n.vec51, %wide.trip.count
  %invariant.op88 = xor i16 %4, %5
  %invariant.op90 = xor i16 %invariant.op88, %2
  %invariant.op92 = xor i16 %invariant.op90, %3
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit.us
  %i.i = phi i32 [ %i.aa, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.l, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi49 = phi <8 x i16> [ %i.m, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <8 x i16>, ptr %i.j, align 2, !tbaa !23
  %wide.load50 = load <8 x i16>, ptr %i.k, align 2, !tbaa !23
  %.reass85 = xor <8 x i16> %wide.load, %invariant.op84
  %.reass87 = xor <8 x i16> %wide.load50, %invariant.op86
  %i.l = add <8 x i16> %.reass85, %vec.phi        ; 2 uses
  %i.m = add <8 x i16> %.reass87, %vec.phi49      ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !335

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.m, %i.l
  %i.o = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.o, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.p = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi61 = phi <4 x i16> [ %i.p, %vec.epilog.ph ], [ %i.s, %vec.epilog.vector.body ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index60
  %wide.load62 = load <4 x i16>, ptr %i.q, align 2, !tbaa !23
  %i.r = xor <4 x i16> %i.h, %wide.load62
  %i.s = add <4 x i16> %i.r, %vec.phi61           ; 2 uses
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next63, %n.vec51
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !336

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.u = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.s) ; 2 uses
  br i1 %cmp.n64, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ]
  %.01719.us.ph = phi i16 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i16 [ %i.x, %vec.epilog.scalar.ph ], [ %.01719.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !23
  %.reass.reass = xor i16 %i.w, %invariant.op92
  %i.x = add i16 %.reass.reass, %.01719.us        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !337

bb.b:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr @current_test, align 4, !tbaa !7
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.y) ; 0 uses
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.aa = phi i32 [ %.pre28, %bb.b ], [ %i.i, %._crit_edge.us ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01823.us, 1           ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %._crit_edge24, !llvm.loop !338

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.u, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %vec.epilog.scalar.ph ]
  %i.ad = load double, ptr @init_value, align 8, !tbaa !20
  %i.ae = fptoui double %i.ad to i16
  %i.af = xor i16 %.reass22, %i.ae
  %i.ag = mul i16 %i.af, 8000
  %i.ah = icmp eq i16 %.lcssa, %i.ag
  br i1 %i.ah, label %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit
  %i.ai = phi i32 [ %i.ap, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aj = phi double [ %i.aq, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit ], [ %.pre26, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ar, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ak = fptoui double %i.aj to i16
  %i.al = xor i16 %.reass22, %i.ak
  %7 = and i16 %i.al, 1023
  %i.am = icmp eq i16 %7, 0
  br i1 %i.am, label %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.an = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.an) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ap = phi i32 [ %i.ai, %.preheader ], [ %.pre27, %bb.c ] ; 2 uses
  %i.aq = phi double [ %i.aj, %.preheader ], [ %.pre, %bb.c ]
  %i.ar = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ap
  br i1 %i.as, label %.preheader, label %._crit_edge24, !llvm.loop !338

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIt28custom_multiple_variable_xorItEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.at = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.at, ptr @end_time, align 8, !tbaa !19
  %i.au = load i64, ptr @start_time, align 8, !tbaa !19
  %i.av = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ax = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %.pre.i
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ay = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ay, ptr @allocated_results, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %i.ba) #14 ; 3 uses
  store ptr %i.bb, ptr @results, align 8, !tbaa !10
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bd) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.bf = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ax, %._crit_edge24 ] ; 2 uses
  %i.bg = phi ptr [ %i.bb, %._crit_edge.i ], [ %i.av, %._crit_edge24 ]
  %i.bh = sub nsw i64 %i.at, %i.au
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %i.bi, 1.000000e+06
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %6, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nsw i32 %i.bf, 1
  store i32 %i.bn, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <4 x i32> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !7
  %wide.load33 = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %i.h = add <4 x i32> %vec.phi, %broadcast.splat
  %i.i = add <4 x i32> %vec.phi32, %broadcast.splat
  %i.j = add <4 x i32> %i.h, %wide.load           ; 2 uses
  %i.k = add <4 x i32> %i.i, %wide.load33         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !339

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i32 [ %i.q, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = add i32 %.01113.us, %2
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !340

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre21, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge16, !llvm.loop !341

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptosi double %i.w to i32
  %i.y = add nsw i32 %2, %i.x
  %i.z = mul nsw i32 %i.y, 8000
  %i.aa = icmp eq i32 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptosi double %i.ac to i32
  %i.ae = sub i32 0, %i.ad
  %i.af = icmp eq i32 %2, %i.ae
  br i1 %i.af, label %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit

_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !341

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit, %_Z26check_shifted_variable_sumIi19custom_add_variableIiEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_Z14test_variable4Ii28custom_multiple_variable_xorIiEEvPT_iS2_S2_S2_S2_PKc:bb.a
  %.01719.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i32 [ %i.o, %scalar.ph ], [ %.01719.us.ph, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %.reass.reass = xor i32 %i.n, %invariant.op73
  %i.o = add nsw i32 %.reass.reass, %.01719.us    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !391

bb.b:                                             ; preds = %._crit_edge.us
  %i.p = load i32, ptr @current_test, align 4, !tbaa !7
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.p) ; 0 uses
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIi28custom_multiple_variable_xorIiEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIi28custom_multiple_variable_xorIiEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.r = phi i32 [ %.pre29, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.s = add nuw nsw i32 %.01823.us, 1            ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %.preheader.us, label %._crit_edge24, !llvm.loop !392

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.l, %middle.block ], [ %i.o, %scalar.ph ]
  %i.u = load double, ptr @init_value, align 8, !tbaa !20
  %i.v = fptosi double %i.u to i32
  %i.w = xor i32 %.reass22, %i.v
  %i.x = mul nsw i32 %i.w, 8000
  %i.y = icmp eq i32 %.lcssa, %i.x
  br i1 %i.y, label %_Z26check_shifted_variable_sumIi28custom_multiple_variable_xorIiEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIi28custom_multiple_variable_xorIiEEvT_S2_S2_S2_S2_.exit
  %i.z = phi i32 [ %i.af, %_Z26check_shifted_variable_sumIi28custom_multiple_variable_xorIiEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aa = phi double [ %i.ag, %_Z26check_shifted_variable_sumIi28custom_multiple_variable_xorIiEEvT_S2_S2_S2_S2_.exit ], [ %.pre27, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ah, %_Z26check_shifted_variable_sumIi28custom_multiple_variable_xorIiEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ab = fptosi double %i.aa to i32
  %i.ac = icmp eq i32 %.reass22, %i.ab
  br i1 %i.ac, label %_Z26check_shifted_variable_sumIi28custom_multiple_variable_xorIiEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ad = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ad) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIi28custom_multiple_variable_xorIiEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIi28custom_multiple_variable_xorIiEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.af = phi i32 [ %i.z, %.preheader ], [ %.pre28, %bb.c ] ; 2 uses
  %i.ag = phi double [ %i.aa, %.preheader ], [ %.pre, %bb.c ]
  %i.ah = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %i.af
  br i1 %i.ai, label %.preheader, label %._crit_edge24, !llvm.loop !392

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIi28custom_multiple_variable_xorIiEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIi28custom_multiple_variable_xorIiEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.aj = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.aj, ptr @end_time, align 8, !tbaa !19
  %i.ak = load i64, ptr @start_time, align 8, !tbaa !19
  %i.al = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.am = icmp ne ptr %i.al, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.an = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.an, %.pre.i
  %or.cond.i = select i1 %i.am, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ao = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ao, ptr @allocated_results, align 4, !tbaa !7
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 4
  %i.ar = tail call ptr @realloc(ptr noundef %i.al, i64 noundef %i.aq) #14 ; 3 uses
  store ptr %i.ar, ptr @results, align 8, !tbaa !10
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.at = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.at) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.av = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.an, %._crit_edge24 ] ; 2 uses
  %i.aw = phi ptr [ %i.ar, %._crit_edge.i ], [ %i.al, %._crit_edge24 ]
  %i.ax = sub nsw i64 %i.aj, %i.ak
  %i.ay = sitofp i64 %i.ax to double
  %i.az = fdiv double %i.ay, 1.000000e+06
  %i.ba = sext i32 %i.av to i64
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.ba ; 2 uses
  store double %i.az, ptr %i.bb, align 8, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %6, ptr %i.bc, align 8, !tbaa !15
  %i.bd = add nsw i32 %i.av, 1
  store i32 %i.bd, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <4 x i32> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !7
  %wide.load33 = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %i.h = add <4 x i32> %vec.phi, %broadcast.splat
  %i.i = add <4 x i32> %vec.phi32, %broadcast.splat
  %i.j = add <4 x i32> %i.h, %wide.load           ; 2 uses
  %i.k = add <4 x i32> %i.i, %wide.load33         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !393

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i32 [ %i.q, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = add i32 %.01113.us, %2
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !394

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre21, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge16, !llvm.loop !395

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i32
  %i.y = add i32 %2, %i.x
  %i.z = mul i32 %i.y, 8000
  %i.aa = icmp eq i32 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i32
  %i.ae = add i32 %2, %i.ad
  %4 = and i32 %i.ae, 67108863
  %i.af = icmp eq i32 %4, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit

_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !395

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge16 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge16 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %3, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22test_hoisted_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge19

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = mul i32 %2, %1                           ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre22 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.r, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01418.us = phi i32 [ %i.s, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.i, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi35 = phi <4 x i32> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %wide.load36 = load <4 x i32>, ptr %i.h, align 4, !tbaa !7
  %i.i = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.j = add <4 x i32> %wide.load36, %vec.phi35   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !396

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01316.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01316.us = phi i32 [ %i.o, %scalar.ph ], [ %.01316.us.ph, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = add i32 %i.n, %.01316.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !397

bb.b:                                             ; preds = %._crit_edge.us
  %i.p = load i32, ptr @current_test, align 4, !tbaa !7
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.p) ; 0 uses
  %.pre24 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.r = phi i32 [ %.pre24, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.s = add nuw nsw i32 %.01418.us, 1            ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %.preheader.us, label %._crit_edge19, !llvm.loop !398

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.l, %middle.block ], [ %i.o, %scalar.ph ]
  %i.u = add i32 %.lcssa, %i.e
  %i.v = load double, ptr @init_value, align 8, !tbaa !20
  %i.w = fptoui double %i.v to i32
  %i.x = add i32 %2, %i.w
  %i.y = mul i32 %i.x, 8000
  %i.z = icmp eq i32 %i.u, %i.y
  br i1 %i.z, label %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit
  %i.aa = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ab = phi double [ %i.aj, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit ], [ %.pre22, %.preheader.preheader ] ; 2 uses
  %.01418 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ac = fptoui double %i.ab to i32
  %i.ad = add i32 %2, %i.ac
  %i.ae = mul i32 %i.ad, 8000
  %i.af = icmp eq i32 %i.e, %i.ae
  br i1 %i.af, label %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre23 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit

_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.aa, %.preheader ], [ %.pre23, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ab, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01418, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge19, !llvm.loop !398

._crit_edge19:                                    ; preds = %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit, %_Z26check_shifted_variable_sumIj19custom_add_variableIjEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge19
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge19, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge19 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge19 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %3, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Ij28custom_add_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = add i32 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = add i32 %3, %2
  %.reass = add i32 %i.e, %invariant.op21         ; 4 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre27 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.reass, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.v, %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi40 = phi <4 x i32> [ %i.l, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %wide.load41 = load <4 x i32>, ptr %i.h, align 4, !tbaa !7
  %i.i = add <4 x i32> %broadcast.splat, %vec.phi
  %i.j = add <4 x i32> %broadcast.splat, %vec.phi40
  %i.k = add <4 x i32> %i.i, %wide.load           ; 2 uses
  %i.l = add <4 x i32> %i.j, %wide.load41         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.l, %i.k
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01719.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i32 [ %i.r, %scalar.ph ], [ %.01719.us.ph, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = add i32 %.reass, %.01719.us
  %i.r = add i32 %i.q, %i.p                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !400

bb.b:                                             ; preds = %._crit_edge.us
  %i.s = load i32, ptr @current_test, align 4, !tbaa !7
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.s) ; 0 uses
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.u = phi i32 [ %.pre29, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.v = add nuw nsw i32 %.01823.us, 1            ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.u
  br i1 %i.w, label %.preheader.us, label %._crit_edge24, !llvm.loop !401

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.n, %middle.block ], [ %i.r, %scalar.ph ]
  %i.x = load double, ptr @init_value, align 8, !tbaa !20
  %i.y = fptoui double %i.x to i32
  %i.z = add i32 %.reass, %i.y
  %i.aa = mul i32 %i.z, 8000
  %i.ab = icmp eq i32 %.lcssa, %i.aa
  br i1 %i.ab, label %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit
  %i.ac = phi i32 [ %i.aj, %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ad = phi double [ %i.ak, %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ %.pre27, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.al, %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ae = fptoui double %i.ad to i32
  %i.af = add i32 %.reass, %i.ae
  %7 = and i32 %i.af, 67108863
  %i.ag = icmp eq i32 %7, 0
  br i1 %i.ag, label %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ah = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ah) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.aj = phi i32 [ %i.ac, %.preheader ], [ %.pre28, %bb.c ] ; 2 uses
  %i.ak = phi double [ %i.ad, %.preheader ], [ %.pre, %bb.c ]
  %i.al = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.aj
  br i1 %i.am, label %.preheader, label %._crit_edge24, !llvm.loop !401

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIj28custom_add_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.an = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.an, ptr @end_time, align 8, !tbaa !19
  %i.ao = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ap = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aq = icmp ne ptr %i.ap, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ar = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ar, %.pre.i
  %or.cond.i = select i1 %i.aq, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.as = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.as, ptr @allocated_results, align 4, !tbaa !7
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 4
  %i.av = tail call ptr @realloc(ptr noundef %i.ap, i64 noundef %i.au) #14 ; 3 uses
  store ptr %i.av, ptr @results, align 8, !tbaa !10
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.ax = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ax) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.az = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ar, %._crit_edge24 ] ; 2 uses
  %i.ba = phi ptr [ %i.av, %._crit_edge.i ], [ %i.ap, %._crit_edge24 ]
  %i.bb = sub nsw i64 %i.an, %i.ao
  %i.bc = sitofp i64 %i.bb to double
  %i.bd = fdiv double %i.bc, 1.000000e+06
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.be ; 2 uses
  store double %i.bd, ptr %i.bf, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %6, ptr %i.bg, align 8, !tbaa !15
  %i.bh = add nsw i32 %i.az, 1
  store i32 %i.bh, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Ij19custom_sub_variableIjEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <4 x i32> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !7
  %wide.load33 = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %i.h = sub <4 x i32> %vec.phi, %broadcast.splat
  %i.i = sub <4 x i32> %vec.phi32, %broadcast.splat
  %i.j = add <4 x i32> %i.h, %wide.load           ; 2 uses
  %i.k = add <4 x i32> %i.i, %wide.load33         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !402

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i32 [ %i.q, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = sub i32 %.01113.us, %2
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !403

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre21, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge16, !llvm.loop !404

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i32
  %i.y = sub i32 %i.x, %2
  %i.z = mul i32 %i.y, 8000
  %i.aa = icmp eq i32 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i32
  %i.ae = sub i32 %i.ad, %2
  %4 = and i32 %i.ae, 67108863
  %i.af = icmp eq i32 %4, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit

_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !404

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit, %_Z26check_shifted_variable_sumIj19custom_sub_variableIjEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge16 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge16 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %3, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Ij28custom_sub_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge32

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = add i32 %4, %5
  %i.e = icmp sgt i32 %1, 0
  %i.f = add i32 %3, %2
  %i.g = add i32 %i.f, %i.d                       ; 4 uses
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre35 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us
  %i.h = phi i32 [ %i.w, %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01831.us = phi i32 [ %i.x, %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.m, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi48 = phi <4 x i32> [ %i.n, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x i32>, ptr %i.i, align 4, !tbaa !7
  %wide.load49 = load <4 x i32>, ptr %i.j, align 4, !tbaa !7
  %i.k = sub <4 x i32> %vec.phi, %broadcast.splat
  %i.l = sub <4 x i32> %vec.phi48, %broadcast.splat
  %i.m = add <4 x i32> %i.k, %wide.load           ; 2 uses
  %i.n = add <4 x i32> %i.l, %wide.load49         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !405

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01728.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01728.us = phi i32 [ %i.t, %scalar.ph ], [ %.01728.us.ph, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = sub i32 %.01728.us, %i.g
  %i.t = add i32 %i.s, %i.r                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !406

bb.b:                                             ; preds = %._crit_edge.us
  %i.u = load i32, ptr @current_test, align 4, !tbaa !7
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.u) ; 0 uses
  %.pre37 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.w = phi i32 [ %.pre37, %bb.b ], [ %i.h, %._crit_edge.us ] ; 2 uses
  %i.x = add nuw nsw i32 %.01831.us, 1            ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.w
  br i1 %i.y, label %.preheader.us, label %._crit_edge32, !llvm.loop !407

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.p, %middle.block ], [ %i.t, %scalar.ph ]
  %i.z = load double, ptr @init_value, align 8, !tbaa !20
  %i.aa = fptoui double %i.z to i32
  %i.ab = sub i32 %i.aa, %i.g
  %i.ac = mul i32 %i.ab, 8000
  %i.ad = icmp eq i32 %.lcssa, %i.ac
  br i1 %i.ad, label %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit
  %i.ae = phi i32 [ %i.al, %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.af = phi double [ %i.am, %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ %.pre35, %.preheader.preheader ] ; 2 uses
  %.01831 = phi i32 [ %i.an, %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ag = fptoui double %i.af to i32
  %i.ah = sub i32 %i.ag, %i.g
  %7 = and i32 %i.ah, 67108863
  %i.ai = icmp eq i32 %7, 0
  br i1 %i.ai, label %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.aj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre36 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.al = phi i32 [ %i.ae, %.preheader ], [ %.pre36, %bb.c ] ; 2 uses
  %i.am = phi double [ %i.af, %.preheader ], [ %.pre, %bb.c ]
  %i.an = add nuw nsw i32 %.01831, 1              ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %.preheader, label %._crit_edge32, !llvm.loop !407

._crit_edge32:                                    ; preds = %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIj28custom_sub_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ap = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ap, ptr @end_time, align 8, !tbaa !19
  %i.aq = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ar = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.at = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.at, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge32
  %i.au = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.au, ptr @allocated_results, align 4, !tbaa !7
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 4
  %i.ax = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.aw) #14 ; 3 uses
  store ptr %i.ax, ptr @results, align 8, !tbaa !10
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.az) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge32, %._crit_edge.i
  %i.bb = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.at, %._crit_edge32 ] ; 2 uses
  %i.bc = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.ar, %._crit_edge32 ]
  %i.bd = sub nsw i64 %i.ap, %i.aq
  %i.be = sitofp i64 %i.bd to double
  %i.bf = fdiv double %i.be, 1.000000e+06
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bg ; 2 uses
  store double %i.bf, ptr %i.bh, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %6, ptr %i.bi, align 8, !tbaa !15
  %i.bj = add nsw i32 %i.bb, 1
  store i32 %i.bj, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Ij24custom_multiply_variableIjEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = mul i32 %2, 8000                         ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.v, %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <4 x i32> [ %i.l, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %wide.load33 = load <4 x i32>, ptr %i.h, align 4, !tbaa !7
  %i.i = mul <4 x i32> %wide.load, %broadcast.splat
  %i.j = mul <4 x i32> %wide.load33, %broadcast.splat
  %i.k = add <4 x i32> %i.i, %vec.phi             ; 2 uses
  %i.l = add <4 x i32> %i.j, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !408

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.l, %i.k
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i32 [ %i.r, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = mul i32 %i.p, %2
  %i.r = add i32 %i.q, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !409

bb.b:                                             ; preds = %._crit_edge.us
  %i.s = load i32, ptr @current_test, align 4, !tbaa !7
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.s) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.u = phi i32 [ %.pre21, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.v = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.u
  br i1 %i.w, label %.preheader.us, label %._crit_edge16, !llvm.loop !410

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.n, %middle.block ], [ %i.r, %scalar.ph ]
  %i.x = load double, ptr @init_value, align 8, !tbaa !20
  %i.y = fptoui double %i.x to i32
  %i.z = mul i32 %i.e, %i.y
  %i.aa = icmp eq i32 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i32
  %i.ae = mul i32 %i.e, %i.ad
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit

_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !410

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit, %_Z26check_shifted_variable_sumIj24custom_multiply_variableIjEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
end_hunk_3
begin_hunk_4_@_Z14test_variable4Ij33custom_multiply_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc:bb.a
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = mul i32 %factor.op.mul.reass.reass, %i.o
  %i.q = add i32 %i.p, %.01720.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !412

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre32 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj33custom_multiply_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIj33custom_multiply_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre32, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01826.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge27, !llvm.loop !413

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i32
  %i.y = mul i32 %.reass.reass.reass, %i.x
  %i.z = icmp eq i32 %.lcssa, %i.y
  br i1 %i.z, label %_Z26check_shifted_variable_sumIj33custom_multiply_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj33custom_multiply_multiple_variableIjEEvT_S2_S2_S2_S2_.exit
  %i.aa = phi i32 [ %i.ah, %_Z26check_shifted_variable_sumIj33custom_multiply_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ab = phi double [ %i.ai, %_Z26check_shifted_variable_sumIj33custom_multiply_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ %.pre30, %.preheader.preheader ] ; 2 uses
  %.01826 = phi i32 [ %i.aj, %_Z26check_shifted_variable_sumIj33custom_multiply_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ac = fptoui double %i.ab to i32
  %i.ad = mul i32 %.reass.reass.reass, %i.ac
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_Z26check_shifted_variable_sumIj33custom_multiply_multiple_variableIjEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.af = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.af) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre31 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj33custom_multiply_multiple_variableIjEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIj33custom_multiply_multiple_variableIjEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ah = phi i32 [ %i.aa, %.preheader ], [ %.pre31, %bb.c ] ; 2 uses
  %i.ai = phi double [ %i.ab, %.preheader ], [ %.pre, %bb.c ]
  %i.aj = add nuw nsw i32 %.01826, 1              ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %i.ah
  br i1 %i.ak, label %.preheader, label %._crit_edge27, !llvm.loop !413

._crit_edge27:                                    ; preds = %_Z26check_shifted_variable_sumIj33custom_multiply_multiple_variableIjEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIj33custom_multiply_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.al = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.al, ptr @end_time, align 8, !tbaa !19
  %i.am = load i64, ptr @start_time, align 8, !tbaa !19
  %i.an = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ao = icmp ne ptr %i.an, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ap = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ap, %.pre.i
  %or.cond.i = select i1 %i.ao, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge27
  %i.aq = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.aq, ptr @allocated_results, align 4, !tbaa !7
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 4
  %i.at = tail call ptr @realloc(ptr noundef %i.an, i64 noundef %i.as) #14 ; 3 uses
  store ptr %i.at, ptr @results, align 8, !tbaa !10
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.av = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.av) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge27, %._crit_edge.i
  %i.ax = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ap, %._crit_edge27 ] ; 2 uses
  %i.ay = phi ptr [ %i.at, %._crit_edge.i ], [ %i.an, %._crit_edge27 ]
  %i.az = sub nsw i64 %i.al, %i.am
  %i.ba = sitofp i64 %i.az to double
  %i.bb = fdiv double %i.ba, 1.000000e+06
  %i.bc = sext i32 %i.ax to i64
  %i.bd = getelementptr inbounds [16 x i8], ptr %i.ay, i64 %i.bc ; 2 uses
  store double %i.bb, ptr %i.bd, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %6, ptr %i.be, align 8, !tbaa !15
  %i.bf = add nsw i32 %i.ax, 1
  store i32 %i.bf, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Ij34custom_multiply_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge26

.preheader.lr.ph:                                 ; preds = %bb.a
  %factor.op.mul23 = mul i32 %3, %4
  %factor.op.mul24 = mul i32 %factor.op.mul23, %5
  %factor.op.mul22 = mul i32 %3, %5
  %factor.op.mul = mul i32 %factor.op.mul22, %2
  %factor.op.mul.reass.reass = mul i32 %factor.op.mul, %4 ; 2 uses
  %i.d = icmp sgt i32 %1, 0
  %.reass.reass = mul i32 %factor.op.mul24, %2    ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre29 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %factor.op.mul.reass.reass, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01825.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi42 = phi <4 x i32> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !7
  %wide.load43 = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %i.h = add <4 x i32> %vec.phi, %broadcast.splat
  %i.i = add <4 x i32> %vec.phi42, %broadcast.splat
  %i.j = add <4 x i32> %i.h, %wide.load           ; 2 uses
  %i.k = add <4 x i32> %i.i, %wide.load43         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !414

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01720.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01720.us = phi i32 [ %i.q, %scalar.ph ], [ %.01720.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = add i32 %.01720.us, %factor.op.mul.reass.reass
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !415

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre31 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre31, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01825.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge26, !llvm.loop !416

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i32
  %i.y = add i32 %.reass.reass, %i.x
  %i.z = mul i32 %i.y, 8000
  %i.aa = icmp eq i32 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit ], [ %.pre29, %.preheader.preheader ] ; 2 uses
  %.01825 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i32
  %i.ae = add i32 %.reass.reass, %i.ad
  %7 = and i32 %i.ae, 67108863
  %i.af = icmp eq i32 %7, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre30 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre30, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01825, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge26, !llvm.loop !416

._crit_edge26:                                    ; preds = %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIj34custom_multiply_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge26
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge26, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge26 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge26 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %6, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Ij22custom_divide_variableIjEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ac, %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.01113.us = phi i32 [ %i.y, %.preheader.us.new ], [ 0, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = udiv i32 %i.h, %2
  %i.j = add i32 %i.i, %.01113.us
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = udiv i32 %i.m, %2
  %i.o = add i32 %i.n, %i.j
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = udiv i32 %i.r, %2
  %i.t = add i32 %i.s, %i.o
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = udiv i32 %i.w, %2
  %i.y = add i32 %i.x, %i.t                       ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !417

bb.b:                                             ; preds = %._crit_edge.us
  %i.z = load i32, ptr @current_test, align 4, !tbaa !7
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.z) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ab = phi i32 [ %.pre21, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ac = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  br i1 %i.ad, label %.preheader.us, label %._crit_edge16, !llvm.loop !418

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.01113.us.epil.init = phi i32 [ 0, %.preheader.us ], [ %i.y, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.01113.us.epil = phi i32 [ %.01113.us.epil.init, %.epil.preheader ], [ %i.ah, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = udiv i32 %i.af, %2
  %i.ah = add i32 %i.ag, %.01113.us.epil          ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !419

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.y, %._crit_edge.us.unr-lcssa ], [ %i.ah, %bb.c ]
  %i.ai = load double, ptr @init_value, align 8, !tbaa !20
  %i.aj = fptoui double %i.ai to i32
  %i.ak = udiv i32 %i.aj, %2
  %i.al = mul i32 %i.ak, 8000
  %i.am = icmp eq i32 %.lcssa, %i.al
  br i1 %i.am, label %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit
  %i.an = phi i32 [ %i.au, %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ao = phi double [ %i.av, %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.aw, %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ap = fptoui double %i.ao to i32
  %i.aq = udiv i32 %i.ap, %2
  %4 = and i32 %i.aq, 67108863
  %i.ar = icmp eq i32 %4, 0
  br i1 %i.ar, label %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.as = load i32, ptr @current_test, align 4, !tbaa !7
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.as) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit

_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit: ; preds = %.preheader, %bb.d
  %i.au = phi i32 [ %i.an, %.preheader ], [ %.pre20, %bb.d ] ; 2 uses
  %i.av = phi double [ %i.ao, %.preheader ], [ %.pre, %bb.d ]
  %i.aw = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.ax = icmp slt i32 %i.aw, %i.au
  br i1 %i.ax, label %.preheader, label %._crit_edge16, !llvm.loop !418

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit, %_Z26check_shifted_variable_sumIj22custom_divide_variableIjEEvT_S2_.exit.us, %bb.a
  %i.ay = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ay, ptr @end_time, align 8, !tbaa !19
  %i.az = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ba = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.bb = icmp ne ptr %i.ba, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.bc = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bc, %.pre.i
  %or.cond.i = select i1 %i.bb, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge16
  %i.bd = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bd, ptr @allocated_results, align 4, !tbaa !7
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 4
  %i.bg = tail call ptr @realloc(ptr noundef %i.ba, i64 noundef %i.bf) #14 ; 3 uses
  store ptr %i.bg, ptr @results, align 8, !tbaa !10
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.bi = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bi) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bk = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bc, %._crit_edge16 ] ; 2 uses
  %i.bl = phi ptr [ %i.bg, %._crit_edge.i ], [ %i.ba, %._crit_edge16 ]
  %i.bm = sub nsw i64 %i.ay, %i.az
  %i.bn = sitofp i64 %i.bm to double
  %i.bo = fdiv double %i.bn, 1.000000e+06
  %i.bp = sext i32 %i.bk to i64
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.bp ; 2 uses
  store double %i.bo, ptr %i.bq, align 8, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %3, ptr %i.br, align 8, !tbaa !15
  %i.bs = add nsw i32 %i.bk, 1
  store i32 %i.bs, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Ij31custom_divide_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre25 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %1, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod40 = trunc i32 %1 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.x, %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01821.us = phi i32 [ %i.y, %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.01719.us = phi i32 [ %i.u, %.preheader.us.new ], [ 0, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = udiv i32 %i.h, %2
  %i.j = udiv i32 %i.i, %3
  %i.k = udiv i32 %i.j, %4
  %i.l = udiv i32 %i.k, %5
  %i.m = add i32 %i.l, %.01719.us
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = udiv i32 %i.p, %2
  %i.r = udiv i32 %i.q, %3
  %i.s = udiv i32 %i.r, %4
  %i.t = udiv i32 %i.s, %5
  %i.u = add i32 %i.t, %i.m                       ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !420

bb.b:                                             ; preds = %._crit_edge.us
  %i.v = load i32, ptr @current_test, align 4, !tbaa !7
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.v) ; 0 uses
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.x = phi i32 [ %.pre27, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.y = add nuw nsw i32 %.01821.us, 1            ; 2 uses
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.preheader.us, label %._crit_edge22, !llvm.loop !421

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.01719.us.epil.init = phi i32 [ 0, %.preheader.us ], [ %i.u, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %i.ac = udiv i32 %i.ab, %2
  %i.ad = udiv i32 %i.ac, %3
  %i.ae = udiv i32 %i.ad, %4
  %i.af = udiv i32 %i.ae, %5
  %i.ag = add i32 %i.af, %.01719.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.u, %._crit_edge.us.unr-lcssa ], [ %i.ag, %.epil.preheader ]
  %i.ah = load double, ptr @init_value, align 8, !tbaa !20
  %i.ai = fptoui double %i.ah to i32
  %i.aj = udiv i32 %i.ai, %2
  %i.ak = udiv i32 %i.aj, %3
  %i.al = udiv i32 %i.ak, %4
  %i.am = udiv i32 %i.al, %5
  %i.an = mul i32 %i.am, 8000
  %i.ao = icmp eq i32 %.lcssa, %i.an
  br i1 %i.ao, label %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit
  %i.ap = phi i32 [ %i.az, %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aq = phi double [ %i.ba, %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ %.pre25, %.preheader.preheader ] ; 2 uses
  %.01821 = phi i32 [ %i.bb, %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ar = fptoui double %i.aq to i32
  %i.as = udiv i32 %i.ar, %2
  %i.at = udiv i32 %i.as, %3
  %i.au = udiv i32 %i.at, %4
  %i.av = udiv i32 %i.au, %5
  %7 = and i32 %i.av, 67108863
  %i.aw = icmp eq i32 %7, 0
  br i1 %i.aw, label %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ax = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ax) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre26 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.az = phi i32 [ %i.ap, %.preheader ], [ %.pre26, %bb.c ] ; 2 uses
  %i.ba = phi double [ %i.aq, %.preheader ], [ %.pre, %bb.c ]
  %i.bb = add nuw nsw i32 %.01821, 1              ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %i.az
  br i1 %i.bc, label %.preheader, label %._crit_edge22, !llvm.loop !421

._crit_edge22:                                    ; preds = %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIj31custom_divide_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.bd = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.bd, ptr @end_time, align 8, !tbaa !19
  %i.be = load i64, ptr @start_time, align 8, !tbaa !19
  %i.bf = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.bg = icmp ne ptr %i.bf, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.bh = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bh, %.pre.i
  %or.cond.i = select i1 %i.bg, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge22
  %i.bi = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bi, ptr @allocated_results, align 4, !tbaa !7
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 4
  %i.bl = tail call ptr @realloc(ptr noundef %i.bf, i64 noundef %i.bk) #14 ; 3 uses
  store ptr %i.bl, ptr @results, align 8, !tbaa !10
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bn = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bn) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge22, %._crit_edge.i
  %i.bp = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bh, %._crit_edge22 ] ; 2 uses
  %i.bq = phi ptr [ %i.bl, %._crit_edge.i ], [ %i.bf, %._crit_edge22 ]
  %i.br = sub nsw i64 %i.bd, %i.be
  %i.bs = sitofp i64 %i.br to double
  %i.bt = fdiv double %i.bs, 1.000000e+06
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bq, i64 %i.bu ; 2 uses
  store double %i.bt, ptr %i.bv, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %6, ptr %i.bw, align 8, !tbaa !15
  %i.bx = add nsw i32 %i.bp, 1
  store i32 %i.bx, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Ij32custom_divide_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = udiv i32 %2, %3
  %i.f = udiv i32 %i.e, %4
  %i.g = udiv i32 %i.f, %5                        ; 4 uses
  br i1 %i.d, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre25 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us, %.preheader.lr.ph.split.us
  %i.h = phi i32 [ %i.b, %.preheader.lr.ph.split.us ], [ %i.w, %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us ]
  %.01821.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.x, %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.m, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi38 = phi <4 x i32> [ %i.n, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x i32>, ptr %i.i, align 4, !tbaa !7
  %wide.load39 = load <4 x i32>, ptr %i.j, align 4, !tbaa !7
  %i.k = add <4 x i32> %wide.load, %vec.phi
  %i.l = add <4 x i32> %wide.load39, %vec.phi38
  %i.m = add <4 x i32> %i.k, %broadcast.splat     ; 2 uses
  %i.n = add <4 x i32> %i.l, %broadcast.splat     ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !422

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01719.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i32 [ %i.t, %scalar.ph ], [ %.01719.us.ph, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = add i32 %i.r, %.01719.us
  %i.t = add i32 %i.s, %i.g                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !423

bb.b:                                             ; preds = %._crit_edge.us
  %i.u = load i32, ptr @current_test, align 4, !tbaa !7
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.u) ; 0 uses
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.w = phi i32 [ %.pre27, %bb.b ], [ %i.h, %._crit_edge.us ] ; 2 uses
  %i.x = add nuw nsw i32 %.01821.us, 1            ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.w
  br i1 %i.y, label %.preheader.us, label %._crit_edge22, !llvm.loop !424

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.p, %middle.block ], [ %i.t, %scalar.ph ]
  %i.z = load double, ptr @init_value, align 8, !tbaa !20
  %i.aa = fptoui double %i.z to i32
  %i.ab = add i32 %i.g, %i.aa
  %i.ac = mul i32 %i.ab, 8000
  %i.ad = icmp eq i32 %.lcssa, %i.ac
  br i1 %i.ad, label %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit
  %i.ae = phi i32 [ %i.al, %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.af = phi double [ %i.am, %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit ], [ %.pre25, %.preheader.preheader ] ; 2 uses
  %.01821 = phi i32 [ %i.an, %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ag = fptoui double %i.af to i32
  %i.ah = add i32 %i.g, %i.ag
  %7 = and i32 %i.ah, 67108863
  %i.ai = icmp eq i32 %7, 0
  br i1 %i.ai, label %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.aj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre26 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.al = phi i32 [ %i.ae, %.preheader ], [ %.pre26, %bb.c ] ; 2 uses
  %i.am = phi double [ %i.af, %.preheader ], [ %.pre, %bb.c ]
  %i.an = add nuw nsw i32 %.01821, 1              ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %.preheader, label %._crit_edge22, !llvm.loop !424

._crit_edge22:                                    ; preds = %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIj32custom_divide_multiple_variable2IjEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ap = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ap, ptr @end_time, align 8, !tbaa !19
  %i.aq = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ar = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.at = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.at, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge22
  %i.au = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.au, ptr @allocated_results, align 4, !tbaa !7
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 4
  %i.ax = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.aw) #14 ; 3 uses
  store ptr %i.ax, ptr @results, align 8, !tbaa !10
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.az) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge22, %._crit_edge.i
  %i.bb = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.at, %._crit_edge22 ] ; 2 uses
  %i.bc = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.ar, %._crit_edge22 ]
  %i.bd = sub nsw i64 %i.ap, %i.aq
  %i.be = sitofp i64 %i.bd to double
  %i.bf = fdiv double %i.be, 1.000000e+06
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bg ; 2 uses
  store double %i.bf, ptr %i.bh, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %6, ptr %i.bi, align 8, !tbaa !15
  %i.bj = add nsw i32 %i.bb, 1
  store i32 %i.bj, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Ij30custom_mixed_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge23

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = mul i32 %4, %3
  %i.f = udiv i32 %i.e, %5                        ; 3 uses
  %invariant.op = sub i32 %2, %i.f                ; 2 uses
  br i1 %i.d, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre26 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert39 = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat40 = shufflevector <4 x i32> %broadcast.splatinsert39, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us, %.preheader.lr.ph.split.us
  %i.g = phi i32 [ %i.b, %.preheader.lr.ph.split.us ], [ %i.y, %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us ]
  %.01822.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.z, %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.n, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi41 = phi <4 x i32> [ %i.o, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <4 x i32>, ptr %i.h, align 4, !tbaa !7
  %wide.load42 = load <4 x i32>, ptr %i.i, align 4, !tbaa !7
  %i.j = add <4 x i32> %vec.phi, %broadcast.splat
  %i.k = add <4 x i32> %vec.phi41, %broadcast.splat
  %i.l = add <4 x i32> %i.j, %wide.load
  %i.m = add <4 x i32> %i.k, %wide.load42
  %i.n = sub <4 x i32> %i.l, %broadcast.splat40   ; 2 uses
  %i.o = sub <4 x i32> %i.m, %broadcast.splat40   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !425

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.o, %i.n
  %i.q = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01720.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.q, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01720.us = phi i32 [ %i.v, %scalar.ph ], [ %.01720.us.ph, %scalar.ph.preheader ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = add i32 %.01720.us, %2
  %i.u = add i32 %i.t, %i.s
  %i.v = sub i32 %i.u, %i.f                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !426

bb.b:                                             ; preds = %._crit_edge.us
  %i.w = load i32, ptr @current_test, align 4, !tbaa !7
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.w) ; 0 uses
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.y = phi i32 [ %.pre28, %bb.b ], [ %i.g, %._crit_edge.us ] ; 2 uses
  %i.z = add nuw nsw i32 %.01822.us, 1            ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.y
  br i1 %i.aa, label %.preheader.us, label %._crit_edge23, !llvm.loop !427

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.q, %middle.block ], [ %i.v, %scalar.ph ]
  %i.ab = load double, ptr @init_value, align 8, !tbaa !20
  %i.ac = fptoui double %i.ab to i32
  %.reass.us = add i32 %invariant.op, %i.ac
  %i.ad = mul i32 %.reass.us, 8000
  %i.ae = icmp eq i32 %.lcssa, %i.ad
  br i1 %i.ae, label %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit
  %i.af = phi i32 [ %i.al, %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ag = phi double [ %i.am, %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ %.pre26, %.preheader.preheader ] ; 2 uses
  %.01822 = phi i32 [ %i.an, %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ah = fptoui double %i.ag to i32
  %.reass = add i32 %invariant.op, %i.ah
  %7 = and i32 %.reass, 67108863
  %i.ai = icmp eq i32 %7, 0
  br i1 %i.ai, label %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.aj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.al = phi i32 [ %i.af, %.preheader ], [ %.pre27, %bb.c ] ; 2 uses
  %i.am = phi double [ %i.ag, %.preheader ], [ %.pre, %bb.c ]
  %i.an = add nuw nsw i32 %.01822, 1              ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %.preheader, label %._crit_edge23, !llvm.loop !427

._crit_edge23:                                    ; preds = %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIj30custom_mixed_multiple_variableIjEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ap = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ap, ptr @end_time, align 8, !tbaa !19
  %i.aq = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ar = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.at = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.at, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge23
  %i.au = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.au, ptr @allocated_results, align 4, !tbaa !7
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 4
  %i.ax = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.aw) #14 ; 3 uses
  store ptr %i.ax, ptr @results, align 8, !tbaa !10
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.az) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge23, %._crit_edge.i
  %i.bb = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.at, %._crit_edge23 ] ; 2 uses
  %i.bc = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.ar, %._crit_edge23 ]
  %i.bd = sub nsw i64 %i.ap, %i.aq
  %i.be = sitofp i64 %i.bd to double
  %i.bf = fdiv double %i.be, 1.000000e+06
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bg ; 2 uses
  store double %i.bf, ptr %i.bh, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %6, ptr %i.bi, align 8, !tbaa !15
  %i.bj = add nsw i32 %i.bb, 1
  store i32 %i.bj, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Ij19custom_variable_andIjEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  %invariant.op = and i32 %2, 67108863
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <4 x i32> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !7
  %wide.load33 = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %i.h = and <4 x i32> %wide.load, %broadcast.splat
  %i.i = and <4 x i32> %wide.load33, %broadcast.splat
  %i.j = add <4 x i32> %i.h, %vec.phi             ; 2 uses
  %i.k = add <4 x i32> %i.i, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !428

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i32 [ %i.q, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = and i32 %i.o, %2
  %i.q = add i32 %i.p, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !429

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre21, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge16, !llvm.loop !430

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i32
  %i.y = and i32 %2, %i.x
  %i.z = mul i32 %i.y, 8000
  %i.aa = icmp eq i32 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i32
  %i.ae = and i32 %invariant.op, %i.ad
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit

_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !430

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit, %_Z26check_shifted_variable_sumIj19custom_variable_andIjEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge16 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge16 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %3, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Ij28custom_multiple_variable_andIjEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = and i32 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = and i32 %2, %invariant.op21
  %.reass22 = and i32 %i.e, %3                    ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre27 = load double, ptr @init_value, align 8, !tbaa !20
  %invariant.op = and i32 %.reass22, 67108863
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat44 = shufflevector <4 x i32> %broadcast.splatinsert43, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat46 = shufflevector <4 x i32> %broadcast.splatinsert45, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat48 = shufflevector <4 x i32> %broadcast.splatinsert47, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op.a = and <4 x i32> %broadcast.splat, %broadcast.splat44
  %invariant.op59 = and <4 x i32> %broadcast.splat, %broadcast.splat44
  %invariant.op61 = and <4 x i32> %invariant.op.a, %broadcast.splat46
  %invariant.op63 = and <4 x i32> %invariant.op59, %broadcast.splat46
  %invariant.op65 = and <4 x i32> %invariant.op61, %broadcast.splat48
  %invariant.op67 = and <4 x i32> %invariant.op63, %broadcast.splat48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %invariant.op69 = and i32 %4, %5
  %invariant.op71 = and i32 %invariant.op69, %2
  %invariant.op73 = and i32 %invariant.op71, %3
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.r, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.s, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.i, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi49 = phi <4 x i32> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %wide.load50 = load <4 x i32>, ptr %i.h, align 4, !tbaa !7
  %.reass66 = and <4 x i32> %wide.load, %invariant.op65
  %.reass68 = and <4 x i32> %wide.load50, %invariant.op67
  %i.i = add <4 x i32> %.reass66, %vec.phi        ; 2 uses
  %i.j = add <4 x i32> %.reass68, %vec.phi49      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !431

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01719.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i32 [ %i.o, %scalar.ph ], [ %.01719.us.ph, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %.reass.reass = and i32 %i.n, %invariant.op73
  %i.o = add i32 %.reass.reass, %.01719.us        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !432

bb.b:                                             ; preds = %._crit_edge.us
  %i.p = load i32, ptr @current_test, align 4, !tbaa !7
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.p) ; 0 uses
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.r = phi i32 [ %.pre29, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.s = add nuw nsw i32 %.01823.us, 1            ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %.preheader.us, label %._crit_edge24, !llvm.loop !433

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.l, %middle.block ], [ %i.o, %scalar.ph ]
  %i.u = load double, ptr @init_value, align 8, !tbaa !20
  %i.v = fptoui double %i.u to i32
  %i.w = and i32 %.reass22, %i.v
  %i.x = mul i32 %i.w, 8000
  %i.y = icmp eq i32 %.lcssa, %i.x
  br i1 %i.y, label %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit
  %i.z = phi i32 [ %i.ag, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aa = phi double [ %i.ah, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit ], [ %.pre27, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ab = fptoui double %i.aa to i32
  %i.ac = and i32 %invariant.op, %i.ab
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ae = load i32, ptr @current_test, align 4, !tbaa !7
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ae) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ag = phi i32 [ %i.z, %.preheader ], [ %.pre28, %bb.c ] ; 2 uses
  %i.ah = phi double [ %i.aa, %.preheader ], [ %.pre, %bb.c ]
  %i.ai = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ag
  br i1 %i.aj, label %.preheader, label %._crit_edge24, !llvm.loop !433

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_andIjEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ak = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ak, ptr @end_time, align 8, !tbaa !19
  %i.al = load i64, ptr @start_time, align 8, !tbaa !19
  %i.am = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.an = icmp ne ptr %i.am, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ao = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ao, %.pre.i
  %or.cond.i = select i1 %i.an, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ap = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ap, ptr @allocated_results, align 4, !tbaa !7
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 4
  %i.as = tail call ptr @realloc(ptr noundef %i.am, i64 noundef %i.ar) #14 ; 3 uses
  store ptr %i.as, ptr @results, align 8, !tbaa !10
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.au = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.au) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.aw = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ao, %._crit_edge24 ] ; 2 uses
  %i.ax = phi ptr [ %i.as, %._crit_edge.i ], [ %i.am, %._crit_edge24 ]
  %i.ay = sub nsw i64 %i.ak, %i.al
  %i.az = sitofp i64 %i.ay to double
  %i.ba = fdiv double %i.az, 1.000000e+06
  %i.bb = sext i32 %i.aw to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.bb ; 2 uses
  store double %i.ba, ptr %i.bc, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %6, ptr %i.bd, align 8, !tbaa !15
  %i.be = add nsw i32 %i.aw, 1
  store i32 %i.be, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Ij18custom_variable_orIjEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <4 x i32> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !7
  %wide.load33 = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %i.h = or <4 x i32> %wide.load, %broadcast.splat
  %i.i = or <4 x i32> %wide.load33, %broadcast.splat
  %i.j = add <4 x i32> %i.h, %vec.phi             ; 2 uses
  %i.k = add <4 x i32> %i.i, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !434

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i32 [ %i.q, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = or i32 %i.o, %2
  %i.q = add i32 %i.p, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !435

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre21, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge16, !llvm.loop !436

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i32
  %i.y = or i32 %2, %i.x
  %i.z = mul i32 %i.y, 8000
  %i.aa = icmp eq i32 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i32
  %i.ae = or i32 %2, %i.ad
  %4 = and i32 %i.ae, 67108863
  %i.af = icmp eq i32 %4, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit

_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !436

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit, %_Z26check_shifted_variable_sumIj18custom_variable_orIjEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge16 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge16 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %3, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Ij27custom_multiple_variable_orIjEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = or i32 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = or i32 %2, %invariant.op21
  %.reass22 = or i32 %i.e, %3                     ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre27 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat44 = shufflevector <4 x i32> %broadcast.splatinsert43, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat46 = shufflevector <4 x i32> %broadcast.splatinsert45, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat48 = shufflevector <4 x i32> %broadcast.splatinsert47, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = or <4 x i32> %broadcast.splat, %broadcast.splat44
  %invariant.op59 = or <4 x i32> %broadcast.splat, %broadcast.splat44
  %invariant.op61 = or <4 x i32> %invariant.op, %broadcast.splat46
  %invariant.op63 = or <4 x i32> %invariant.op59, %broadcast.splat46
  %invariant.op65 = or <4 x i32> %invariant.op61, %broadcast.splat48
  %invariant.op67 = or <4 x i32> %invariant.op63, %broadcast.splat48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %invariant.op69 = or i32 %4, %5
  %invariant.op71 = or i32 %invariant.op69, %2
  %invariant.op73 = or i32 %invariant.op71, %3
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.r, %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.s, %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.i, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi49 = phi <4 x i32> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %wide.load50 = load <4 x i32>, ptr %i.h, align 4, !tbaa !7
  %.reass66 = or <4 x i32> %wide.load, %invariant.op65
  %.reass68 = or <4 x i32> %wide.load50, %invariant.op67
  %i.i = add <4 x i32> %.reass66, %vec.phi        ; 2 uses
  %i.j = add <4 x i32> %.reass68, %vec.phi49      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !437

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01719.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i32 [ %i.o, %scalar.ph ], [ %.01719.us.ph, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %.reass.reass = or i32 %i.n, %invariant.op73
  %i.o = add i32 %.reass.reass, %.01719.us        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !438

bb.b:                                             ; preds = %._crit_edge.us
  %i.p = load i32, ptr @current_test, align 4, !tbaa !7
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.p) ; 0 uses
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.r = phi i32 [ %.pre29, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.s = add nuw nsw i32 %.01823.us, 1            ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %.preheader.us, label %._crit_edge24, !llvm.loop !439

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.l, %middle.block ], [ %i.o, %scalar.ph ]
  %i.u = load double, ptr @init_value, align 8, !tbaa !20
  %i.v = fptoui double %i.u to i32
  %i.w = or i32 %.reass22, %i.v
  %i.x = mul i32 %i.w, 8000
  %i.y = icmp eq i32 %.lcssa, %i.x
  br i1 %i.y, label %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit
  %i.z = phi i32 [ %i.ag, %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aa = phi double [ %i.ah, %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit ], [ %.pre27, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ab = fptoui double %i.aa to i32
  %i.ac = or i32 %.reass22, %i.ab
  %7 = and i32 %i.ac, 67108863
  %i.ad = icmp eq i32 %7, 0
  br i1 %i.ad, label %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ae = load i32, ptr @current_test, align 4, !tbaa !7
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ae) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ag = phi i32 [ %i.z, %.preheader ], [ %.pre28, %bb.c ] ; 2 uses
  %i.ah = phi double [ %i.aa, %.preheader ], [ %.pre, %bb.c ]
  %i.ai = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ag
  br i1 %i.aj, label %.preheader, label %._crit_edge24, !llvm.loop !439

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIj27custom_multiple_variable_orIjEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ak = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ak, ptr @end_time, align 8, !tbaa !19
  %i.al = load i64, ptr @start_time, align 8, !tbaa !19
  %i.am = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.an = icmp ne ptr %i.am, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ao = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ao, %.pre.i
  %or.cond.i = select i1 %i.an, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ap = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ap, ptr @allocated_results, align 4, !tbaa !7
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 4
  %i.as = tail call ptr @realloc(ptr noundef %i.am, i64 noundef %i.ar) #14 ; 3 uses
  store ptr %i.as, ptr @results, align 8, !tbaa !10
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.au = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.au) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.aw = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ao, %._crit_edge24 ] ; 2 uses
  %i.ax = phi ptr [ %i.as, %._crit_edge.i ], [ %i.am, %._crit_edge24 ]
  %i.ay = sub nsw i64 %i.ak, %i.al
  %i.az = sitofp i64 %i.ay to double
  %i.ba = fdiv double %i.az, 1.000000e+06
  %i.bb = sext i32 %i.aw to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.bb ; 2 uses
  store double %i.ba, ptr %i.bc, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %6, ptr %i.bd, align 8, !tbaa !15
  %i.be = add nsw i32 %i.aw, 1
  store i32 %i.be, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Ij19custom_variable_xorIjEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <4 x i32> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !7
  %wide.load33 = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %i.h = xor <4 x i32> %wide.load, %broadcast.splat
  %i.i = xor <4 x i32> %wide.load33, %broadcast.splat
  %i.j = add <4 x i32> %i.h, %vec.phi             ; 2 uses
  %i.k = add <4 x i32> %i.i, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !440

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i32 [ %i.q, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = xor i32 %i.o, %2
  %i.q = add i32 %i.p, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !441

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre21, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge16, !llvm.loop !442

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i32
  %i.y = xor i32 %2, %i.x
  %i.z = mul i32 %i.y, 8000
  %i.aa = icmp eq i32 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i32
  %i.ae = xor i32 %2, %i.ad
  %4 = and i32 %i.ae, 67108863
  %i.af = icmp eq i32 %4, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit

_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !442

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit, %_Z26check_shifted_variable_sumIj19custom_variable_xorIjEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge16 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge16 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %3, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Ij28custom_multiple_variable_xorIjEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = xor i32 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = xor i32 %2, %invariant.op21
  %.reass22 = xor i32 %i.e, %3                    ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre27 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat44 = shufflevector <4 x i32> %broadcast.splatinsert43, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat46 = shufflevector <4 x i32> %broadcast.splatinsert45, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat48 = shufflevector <4 x i32> %broadcast.splatinsert47, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = xor <4 x i32> %broadcast.splat, %broadcast.splat44
  %invariant.op59 = xor <4 x i32> %broadcast.splat, %broadcast.splat44
  %invariant.op61 = xor <4 x i32> %invariant.op, %broadcast.splat46
  %invariant.op63 = xor <4 x i32> %invariant.op59, %broadcast.splat46
  %invariant.op65 = xor <4 x i32> %invariant.op61, %broadcast.splat48
  %invariant.op67 = xor <4 x i32> %invariant.op63, %broadcast.splat48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %invariant.op69 = xor i32 %4, %5
  %invariant.op71 = xor i32 %invariant.op69, %2
  %invariant.op73 = xor i32 %invariant.op71, %3
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.r, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.s, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.i, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi49 = phi <4 x i32> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %wide.load50 = load <4 x i32>, ptr %i.h, align 4, !tbaa !7
  %.reass66 = xor <4 x i32> %wide.load, %invariant.op65
  %.reass68 = xor <4 x i32> %wide.load50, %invariant.op67
  %i.i = add <4 x i32> %.reass66, %vec.phi        ; 2 uses
  %i.j = add <4 x i32> %.reass68, %vec.phi49      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !443

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01719.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i32 [ %i.o, %scalar.ph ], [ %.01719.us.ph, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %.reass.reass = xor i32 %i.n, %invariant.op73
  %i.o = add i32 %.reass.reass, %.01719.us        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !444

bb.b:                                             ; preds = %._crit_edge.us
  %i.p = load i32, ptr @current_test, align 4, !tbaa !7
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.p) ; 0 uses
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.r = phi i32 [ %.pre29, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.s = add nuw nsw i32 %.01823.us, 1            ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %.preheader.us, label %._crit_edge24, !llvm.loop !445

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.l, %middle.block ], [ %i.o, %scalar.ph ]
  %i.u = load double, ptr @init_value, align 8, !tbaa !20
  %i.v = fptoui double %i.u to i32
  %i.w = xor i32 %.reass22, %i.v
  %i.x = mul i32 %i.w, 8000
  %i.y = icmp eq i32 %.lcssa, %i.x
  br i1 %i.y, label %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit
  %i.z = phi i32 [ %i.ag, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aa = phi double [ %i.ah, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit ], [ %.pre27, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ab = fptoui double %i.aa to i32
  %i.ac = xor i32 %.reass22, %i.ab
  %7 = and i32 %i.ac, 67108863
  %i.ad = icmp eq i32 %7, 0
  br i1 %i.ad, label %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ae = load i32, ptr @current_test, align 4, !tbaa !7
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ae) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ag = phi i32 [ %i.z, %.preheader ], [ %.pre28, %bb.c ] ; 2 uses
  %i.ah = phi double [ %i.aa, %.preheader ], [ %.pre, %bb.c ]
  %i.ai = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ag
  br i1 %i.aj, label %.preheader, label %._crit_edge24, !llvm.loop !445

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIj28custom_multiple_variable_xorIjEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ak = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ak, ptr @end_time, align 8, !tbaa !19
  %i.al = load i64, ptr @start_time, align 8, !tbaa !19
  %i.am = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.an = icmp ne ptr %i.am, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ao = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ao, %.pre.i
  %or.cond.i = select i1 %i.an, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ap = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ap, ptr @allocated_results, align 4, !tbaa !7
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 4
  %i.as = tail call ptr @realloc(ptr noundef %i.am, i64 noundef %i.ar) #14 ; 3 uses
  store ptr %i.as, ptr @results, align 8, !tbaa !10
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.au = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.au) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.aw = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ao, %._crit_edge24 ] ; 2 uses
  %i.ax = phi ptr [ %i.as, %._crit_edge.i ], [ %i.am, %._crit_edge24 ]
  %i.ay = sub nsw i64 %i.ak, %i.al
  %i.az = sitofp i64 %i.ay to double
  %i.ba = fdiv double %i.az, 1.000000e+06
  %i.bb = sext i32 %i.aw to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.bb ; 2 uses
  store double %i.ba, ptr %i.bc, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %6, ptr %i.bd, align 8, !tbaa !15
  %i.be = add nsw i32 %i.aw, 1
  store i32 %i.be, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <2 x i64> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !19
  %wide.load33 = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  %i.h = add <2 x i64> %vec.phi, %broadcast.splat
  %i.i = add <2 x i64> %vec.phi32, %broadcast.splat
  %i.j = add <2 x i64> %i.h, %wide.load           ; 2 uses
  %i.k = add <2 x i64> %i.i, %wide.load33         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !446

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i64 [ %i.q, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %i.p = add i64 %.01113.us, %2
  %i.q = add i64 %i.p, %i.o                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !447

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre21, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge16, !llvm.loop !448

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptosi double %i.w to i64
  %i.y = add nsw i64 %2, %i.x
  %i.z = mul nsw i64 %i.y, 8000
  %i.aa = icmp eq i64 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptosi double %i.ac to i64
  %i.ae = sub i64 0, %i.ad
  %i.af = icmp eq i64 %2, %i.ae
  br i1 %i.af, label %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit

_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !448

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit, %_Z26check_shifted_variable_sumIl19custom_add_variableIlEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
end_hunk_4
begin_hunk_5_@_Z14test_variable4Il28custom_multiple_variable_xorIlEEvPT_iS2_S2_S2_S2_PKc:bb.a
  %.01719.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i64 [ %i.o, %scalar.ph ], [ %.01719.us.ph, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %.reass.reass = xor i64 %i.n, %invariant.op73
  %i.o = add nsw i64 %.reass.reass, %.01719.us    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !497

bb.b:                                             ; preds = %._crit_edge.us
  %i.p = load i32, ptr @current_test, align 4, !tbaa !7
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.p) ; 0 uses
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIl28custom_multiple_variable_xorIlEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIl28custom_multiple_variable_xorIlEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.r = phi i32 [ %.pre29, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.s = add nuw nsw i32 %.01823.us, 1            ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %.preheader.us, label %._crit_edge24, !llvm.loop !498

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.l, %middle.block ], [ %i.o, %scalar.ph ]
  %i.u = load double, ptr @init_value, align 8, !tbaa !20
  %i.v = fptosi double %i.u to i64
  %i.w = xor i64 %.reass22, %i.v
  %i.x = mul nsw i64 %i.w, 8000
  %i.y = icmp eq i64 %.lcssa, %i.x
  br i1 %i.y, label %_Z26check_shifted_variable_sumIl28custom_multiple_variable_xorIlEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIl28custom_multiple_variable_xorIlEEvT_S2_S2_S2_S2_.exit
  %i.z = phi i32 [ %i.af, %_Z26check_shifted_variable_sumIl28custom_multiple_variable_xorIlEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aa = phi double [ %i.ag, %_Z26check_shifted_variable_sumIl28custom_multiple_variable_xorIlEEvT_S2_S2_S2_S2_.exit ], [ %.pre27, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ah, %_Z26check_shifted_variable_sumIl28custom_multiple_variable_xorIlEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ab = fptosi double %i.aa to i64
  %i.ac = icmp eq i64 %.reass22, %i.ab
  br i1 %i.ac, label %_Z26check_shifted_variable_sumIl28custom_multiple_variable_xorIlEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ad = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ad) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIl28custom_multiple_variable_xorIlEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIl28custom_multiple_variable_xorIlEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.af = phi i32 [ %i.z, %.preheader ], [ %.pre28, %bb.c ] ; 2 uses
  %i.ag = phi double [ %i.aa, %.preheader ], [ %.pre, %bb.c ]
  %i.ah = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %i.af
  br i1 %i.ai, label %.preheader, label %._crit_edge24, !llvm.loop !498

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIl28custom_multiple_variable_xorIlEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIl28custom_multiple_variable_xorIlEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.aj = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.aj, ptr @end_time, align 8, !tbaa !19
  %i.ak = load i64, ptr @start_time, align 8, !tbaa !19
  %i.al = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.am = icmp ne ptr %i.al, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.an = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.an, %.pre.i
  %or.cond.i = select i1 %i.am, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ao = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ao, ptr @allocated_results, align 4, !tbaa !7
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 4
  %i.ar = tail call ptr @realloc(ptr noundef %i.al, i64 noundef %i.aq) #14 ; 3 uses
  store ptr %i.ar, ptr @results, align 8, !tbaa !10
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.at = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.at) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.av = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.an, %._crit_edge24 ] ; 2 uses
  %i.aw = phi ptr [ %i.ar, %._crit_edge.i ], [ %i.al, %._crit_edge24 ]
  %i.ax = sub nsw i64 %i.aj, %i.ak
  %i.ay = sitofp i64 %i.ax to double
  %i.az = fdiv double %i.ay, 1.000000e+06
  %i.ba = sext i32 %i.av to i64
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.ba ; 2 uses
  store double %i.az, ptr %i.bb, align 8, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %6, ptr %i.bc, align 8, !tbaa !15
  %i.bd = add nsw i32 %i.av, 1
  store i32 %i.bd, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Im19custom_add_variableImEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <2 x i64> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !19
  %wide.load33 = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  %i.h = add <2 x i64> %vec.phi, %broadcast.splat
  %i.i = add <2 x i64> %vec.phi32, %broadcast.splat
  %i.j = add <2 x i64> %i.h, %wide.load           ; 2 uses
  %i.k = add <2 x i64> %i.i, %wide.load33         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !499

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i64 [ %i.q, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %i.p = add i64 %.01113.us, %2
  %i.q = add i64 %i.p, %i.o                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !500

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre21, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge16, !llvm.loop !501

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i64
  %i.y = add i64 %2, %i.x
  %i.z = mul i64 %i.y, 8000
  %i.aa = icmp eq i64 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i64
  %i.ae = add i64 %2, %i.ad
  %4 = and i64 %i.ae, 288230376151711743
  %i.af = icmp eq i64 %4, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit

_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !501

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge16 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge16 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %3, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22test_hoisted_variable1Im19custom_add_variableImEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge19

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = sext i32 %1 to i64
  %i.f = mul i64 %2, %i.e                         ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre22 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us
  %i.g = phi i32 [ %i.s, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01418.us = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi35 = phi <2 x i64> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <2 x i64>, ptr %i.h, align 8, !tbaa !19
  %wide.load36 = load <2 x i64>, ptr %i.i, align 8, !tbaa !19
  %i.j = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.k = add <2 x i64> %wide.load36, %vec.phi35   ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !502

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01316.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01316.us = phi i64 [ %i.p, %scalar.ph ], [ %.01316.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %i.p = add i64 %i.o, %.01316.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !503

bb.b:                                             ; preds = %._crit_edge.us
  %i.q = load i32, ptr @current_test, align 4, !tbaa !7
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.q) ; 0 uses
  %.pre24 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.s = phi i32 [ %.pre24, %bb.b ], [ %i.g, %._crit_edge.us ] ; 2 uses
  %i.t = add nuw nsw i32 %.01418.us, 1            ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.s
  br i1 %i.u, label %.preheader.us, label %._crit_edge19, !llvm.loop !504

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.m, %middle.block ], [ %i.p, %scalar.ph ]
  %i.v = add i64 %.lcssa, %i.f
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i64
  %i.y = add i64 %2, %i.x
  %i.z = mul i64 %i.y, 8000
  %i.aa = icmp eq i64 %i.v, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit
  %i.ab = phi i32 [ %i.aj, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.ak, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit ], [ %.pre22, %.preheader.preheader ] ; 2 uses
  %.01418 = phi i32 [ %i.al, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i64
  %i.ae = add i64 %2, %i.ad
  %i.af = mul i64 %i.ae, 8000
  %i.ag = icmp eq i64 %i.f, %i.af
  br i1 %i.ag, label %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ah = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ah) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre23 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit

_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.aj = phi i32 [ %i.ab, %.preheader ], [ %.pre23, %bb.c ] ; 2 uses
  %i.ak = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.al = add nuw nsw i32 %.01418, 1              ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.aj
  br i1 %i.am, label %.preheader, label %._crit_edge19, !llvm.loop !504

._crit_edge19:                                    ; preds = %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit, %_Z26check_shifted_variable_sumIm19custom_add_variableImEEvT_S2_.exit.us, %bb.a
  %i.an = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.an, ptr @end_time, align 8, !tbaa !19
  %i.ao = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ap = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aq = icmp ne ptr %i.ap, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ar = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ar, %.pre.i
  %or.cond.i = select i1 %i.aq, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge19
  %i.as = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.as, ptr @allocated_results, align 4, !tbaa !7
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 4
  %i.av = tail call ptr @realloc(ptr noundef %i.ap, i64 noundef %i.au) #14 ; 3 uses
  store ptr %i.av, ptr @results, align 8, !tbaa !10
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.ax = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ax) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge19, %._crit_edge.i
  %i.az = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ar, %._crit_edge19 ] ; 2 uses
  %i.ba = phi ptr [ %i.av, %._crit_edge.i ], [ %i.ap, %._crit_edge19 ]
  %i.bb = sub nsw i64 %i.an, %i.ao
  %i.bc = sitofp i64 %i.bb to double
  %i.bd = fdiv double %i.bc, 1.000000e+06
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.be ; 2 uses
  store double %i.bd, ptr %i.bf, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %3, ptr %i.bg, align 8, !tbaa !15
  %i.bh = add nsw i32 %i.az, 1
  store i32 %i.bh, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Im28custom_add_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = add i64 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = add i64 %3, %2
  %.reass = add i64 %i.e, %invariant.op21         ; 4 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre27 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.reass, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.v, %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi40 = phi <2 x i64> [ %i.l, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  %wide.load41 = load <2 x i64>, ptr %i.h, align 8, !tbaa !19
  %i.i = add <2 x i64> %broadcast.splat, %vec.phi
  %i.j = add <2 x i64> %broadcast.splat, %vec.phi40
  %i.k = add <2 x i64> %i.i, %wide.load           ; 2 uses
  %i.l = add <2 x i64> %i.j, %wide.load41         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !505

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01719.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i64 [ %i.r, %scalar.ph ], [ %.01719.us.ph, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  %i.q = add i64 %.reass, %.01719.us
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !506

bb.b:                                             ; preds = %._crit_edge.us
  %i.s = load i32, ptr @current_test, align 4, !tbaa !7
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.s) ; 0 uses
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.u = phi i32 [ %.pre29, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.v = add nuw nsw i32 %.01823.us, 1            ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.u
  br i1 %i.w, label %.preheader.us, label %._crit_edge24, !llvm.loop !507

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.n, %middle.block ], [ %i.r, %scalar.ph ]
  %i.x = load double, ptr @init_value, align 8, !tbaa !20
  %i.y = fptoui double %i.x to i64
  %i.z = add i64 %.reass, %i.y
  %i.aa = mul i64 %i.z, 8000
  %i.ab = icmp eq i64 %.lcssa, %i.aa
  br i1 %i.ab, label %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit
  %i.ac = phi i32 [ %i.aj, %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ad = phi double [ %i.ak, %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ %.pre27, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.al, %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ae = fptoui double %i.ad to i64
  %i.af = add i64 %.reass, %i.ae
  %7 = and i64 %i.af, 288230376151711743
  %i.ag = icmp eq i64 %7, 0
  br i1 %i.ag, label %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ah = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ah) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.aj = phi i32 [ %i.ac, %.preheader ], [ %.pre28, %bb.c ] ; 2 uses
  %i.ak = phi double [ %i.ad, %.preheader ], [ %.pre, %bb.c ]
  %i.al = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.aj
  br i1 %i.am, label %.preheader, label %._crit_edge24, !llvm.loop !507

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIm28custom_add_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.an = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.an, ptr @end_time, align 8, !tbaa !19
  %i.ao = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ap = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.aq = icmp ne ptr %i.ap, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ar = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ar, %.pre.i
  %or.cond.i = select i1 %i.aq, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.as = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.as, ptr @allocated_results, align 4, !tbaa !7
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 4
  %i.av = tail call ptr @realloc(ptr noundef %i.ap, i64 noundef %i.au) #14 ; 3 uses
  store ptr %i.av, ptr @results, align 8, !tbaa !10
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.ax = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ax) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.az = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ar, %._crit_edge24 ] ; 2 uses
  %i.ba = phi ptr [ %i.av, %._crit_edge.i ], [ %i.ap, %._crit_edge24 ]
  %i.bb = sub nsw i64 %i.an, %i.ao
  %i.bc = sitofp i64 %i.bb to double
  %i.bd = fdiv double %i.bc, 1.000000e+06
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.be ; 2 uses
  store double %i.bd, ptr %i.bf, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %6, ptr %i.bg, align 8, !tbaa !15
  %i.bh = add nsw i32 %i.az, 1
  store i32 %i.bh, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Im19custom_sub_variableImEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <2 x i64> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !19
  %wide.load33 = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  %i.h = sub <2 x i64> %vec.phi, %broadcast.splat
  %i.i = sub <2 x i64> %vec.phi32, %broadcast.splat
  %i.j = add <2 x i64> %i.h, %wide.load           ; 2 uses
  %i.k = add <2 x i64> %i.i, %wide.load33         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !508

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i64 [ %i.q, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %i.p = sub i64 %.01113.us, %2
  %i.q = add i64 %i.p, %i.o                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !509

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre21, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge16, !llvm.loop !510

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i64
  %i.y = sub i64 %i.x, %2
  %i.z = mul i64 %i.y, 8000
  %i.aa = icmp eq i64 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i64
  %i.ae = sub i64 %i.ad, %2
  %4 = and i64 %i.ae, 288230376151711743
  %i.af = icmp eq i64 %4, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit

_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !510

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit, %_Z26check_shifted_variable_sumIm19custom_sub_variableImEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge16 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge16 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %3, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Im28custom_sub_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge32

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = add i64 %4, %5
  %i.e = icmp sgt i32 %1, 0
  %i.f = add i64 %3, %2
  %i.g = add i64 %i.f, %i.d                       ; 4 uses
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre35 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us
  %i.h = phi i32 [ %i.w, %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01831.us = phi i32 [ %i.x, %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.m, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi48 = phi <2 x i64> [ %i.n, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !19
  %wide.load49 = load <2 x i64>, ptr %i.j, align 8, !tbaa !19
  %i.k = sub <2 x i64> %vec.phi, %broadcast.splat
  %i.l = sub <2 x i64> %vec.phi48, %broadcast.splat
  %i.m = add <2 x i64> %i.k, %wide.load           ; 2 uses
  %i.n = add <2 x i64> %i.l, %wide.load49         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !511

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.n, %i.m
  %i.p = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01728.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01728.us = phi i64 [ %i.t, %scalar.ph ], [ %.01728.us.ph, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = sub i64 %.01728.us, %i.g
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !512

bb.b:                                             ; preds = %._crit_edge.us
  %i.u = load i32, ptr @current_test, align 4, !tbaa !7
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.u) ; 0 uses
  %.pre37 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.w = phi i32 [ %.pre37, %bb.b ], [ %i.h, %._crit_edge.us ] ; 2 uses
  %i.x = add nuw nsw i32 %.01831.us, 1            ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.w
  br i1 %i.y, label %.preheader.us, label %._crit_edge32, !llvm.loop !513

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.p, %middle.block ], [ %i.t, %scalar.ph ]
  %i.z = load double, ptr @init_value, align 8, !tbaa !20
  %i.aa = fptoui double %i.z to i64
  %i.ab = sub i64 %i.aa, %i.g
  %i.ac = mul i64 %i.ab, 8000
  %i.ad = icmp eq i64 %.lcssa, %i.ac
  br i1 %i.ad, label %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit
  %i.ae = phi i32 [ %i.al, %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.af = phi double [ %i.am, %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ %.pre35, %.preheader.preheader ] ; 2 uses
  %.01831 = phi i32 [ %i.an, %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ag = fptoui double %i.af to i64
  %i.ah = sub i64 %i.ag, %i.g
  %7 = and i64 %i.ah, 288230376151711743
  %i.ai = icmp eq i64 %7, 0
  br i1 %i.ai, label %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.aj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre36 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.al = phi i32 [ %i.ae, %.preheader ], [ %.pre36, %bb.c ] ; 2 uses
  %i.am = phi double [ %i.af, %.preheader ], [ %.pre, %bb.c ]
  %i.an = add nuw nsw i32 %.01831, 1              ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %.preheader, label %._crit_edge32, !llvm.loop !513

._crit_edge32:                                    ; preds = %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIm28custom_sub_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ap = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ap, ptr @end_time, align 8, !tbaa !19
  %i.aq = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ar = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.at = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.at, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge32
  %i.au = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.au, ptr @allocated_results, align 4, !tbaa !7
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 4
  %i.ax = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.aw) #14 ; 3 uses
  store ptr %i.ax, ptr @results, align 8, !tbaa !10
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.az) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge32, %._crit_edge.i
  %i.bb = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.at, %._crit_edge32 ] ; 2 uses
  %i.bc = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.ar, %._crit_edge32 ]
  %i.bd = sub nsw i64 %i.ap, %i.aq
  %i.be = sitofp i64 %i.bd to double
  %i.bf = fdiv double %i.be, 1.000000e+06
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bg ; 2 uses
  store double %i.bf, ptr %i.bh, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %6, ptr %i.bi, align 8, !tbaa !15
  %i.bj = add nsw i32 %i.bb, 1
  store i32 %i.bj, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Im24custom_multiply_variableImEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = mul i64 %2, 8000                         ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.v, %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <2 x i64> [ %i.l, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  %wide.load33 = load <2 x i64>, ptr %i.h, align 8, !tbaa !19
  %i.i = mul <2 x i64> %wide.load, %broadcast.splat
  %i.j = mul <2 x i64> %wide.load33, %broadcast.splat
  %i.k = add <2 x i64> %i.i, %vec.phi             ; 2 uses
  %i.l = add <2 x i64> %i.j, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !514

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i64 [ %i.r, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  %i.q = mul i64 %i.p, %2
  %i.r = add i64 %i.q, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !515

bb.b:                                             ; preds = %._crit_edge.us
  %i.s = load i32, ptr @current_test, align 4, !tbaa !7
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.s) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.u = phi i32 [ %.pre21, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.v = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.u
  br i1 %i.w, label %.preheader.us, label %._crit_edge16, !llvm.loop !516

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.n, %middle.block ], [ %i.r, %scalar.ph ]
  %i.x = load double, ptr @init_value, align 8, !tbaa !20
  %i.y = fptoui double %i.x to i64
  %i.z = mul i64 %i.e, %i.y
  %i.aa = icmp eq i64 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i64
  %i.ae = mul i64 %i.e, %i.ad
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit

_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !516

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit, %_Z26check_shifted_variable_sumIm24custom_multiply_variableImEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
end_hunk_5
begin_hunk_6_@_Z14test_variable4Im33custom_multiply_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc:bb.a
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %i.p = mul i64 %factor.op.mul.reass.reass, %i.o
  %i.q = add i64 %i.p, %.01720.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !518

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre32 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm33custom_multiply_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIm33custom_multiply_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre32, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01826.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge27, !llvm.loop !519

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i64
  %i.y = mul i64 %.reass.reass.reass, %i.x
  %i.z = icmp eq i64 %.lcssa, %i.y
  br i1 %i.z, label %_Z26check_shifted_variable_sumIm33custom_multiply_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm33custom_multiply_multiple_variableImEEvT_S2_S2_S2_S2_.exit
  %i.aa = phi i32 [ %i.ah, %_Z26check_shifted_variable_sumIm33custom_multiply_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ab = phi double [ %i.ai, %_Z26check_shifted_variable_sumIm33custom_multiply_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ %.pre30, %.preheader.preheader ] ; 2 uses
  %.01826 = phi i32 [ %i.aj, %_Z26check_shifted_variable_sumIm33custom_multiply_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ac = fptoui double %i.ab to i64
  %i.ad = mul i64 %.reass.reass.reass, %i.ac
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_Z26check_shifted_variable_sumIm33custom_multiply_multiple_variableImEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.af = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.af) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre31 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm33custom_multiply_multiple_variableImEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIm33custom_multiply_multiple_variableImEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ah = phi i32 [ %i.aa, %.preheader ], [ %.pre31, %bb.c ] ; 2 uses
  %i.ai = phi double [ %i.ab, %.preheader ], [ %.pre, %bb.c ]
  %i.aj = add nuw nsw i32 %.01826, 1              ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %i.ah
  br i1 %i.ak, label %.preheader, label %._crit_edge27, !llvm.loop !519

._crit_edge27:                                    ; preds = %_Z26check_shifted_variable_sumIm33custom_multiply_multiple_variableImEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIm33custom_multiply_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.al = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.al, ptr @end_time, align 8, !tbaa !19
  %i.am = load i64, ptr @start_time, align 8, !tbaa !19
  %i.an = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ao = icmp ne ptr %i.an, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ap = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ap, %.pre.i
  %or.cond.i = select i1 %i.ao, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge27
  %i.aq = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.aq, ptr @allocated_results, align 4, !tbaa !7
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 4
  %i.at = tail call ptr @realloc(ptr noundef %i.an, i64 noundef %i.as) #14 ; 3 uses
  store ptr %i.at, ptr @results, align 8, !tbaa !10
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.av = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.av) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge27, %._crit_edge.i
  %i.ax = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ap, %._crit_edge27 ] ; 2 uses
  %i.ay = phi ptr [ %i.at, %._crit_edge.i ], [ %i.an, %._crit_edge27 ]
  %i.az = sub nsw i64 %i.al, %i.am
  %i.ba = sitofp i64 %i.az to double
  %i.bb = fdiv double %i.ba, 1.000000e+06
  %i.bc = sext i32 %i.ax to i64
  %i.bd = getelementptr inbounds [16 x i8], ptr %i.ay, i64 %i.bc ; 2 uses
  store double %i.bb, ptr %i.bd, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %6, ptr %i.be, align 8, !tbaa !15
  %i.bf = add nsw i32 %i.ax, 1
  store i32 %i.bf, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Im34custom_multiply_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge26

.preheader.lr.ph:                                 ; preds = %bb.a
  %factor.op.mul23 = mul i64 %3, %4
  %factor.op.mul24 = mul i64 %factor.op.mul23, %5
  %factor.op.mul22 = mul i64 %3, %5
  %factor.op.mul = mul i64 %factor.op.mul22, %2
  %factor.op.mul.reass.reass = mul i64 %factor.op.mul, %4 ; 2 uses
  %i.d = icmp sgt i32 %1, 0
  %.reass.reass = mul i64 %factor.op.mul24, %2    ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre29 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %factor.op.mul.reass.reass, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01825.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi42 = phi <2 x i64> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !19
  %wide.load43 = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  %i.h = add <2 x i64> %vec.phi, %broadcast.splat
  %i.i = add <2 x i64> %vec.phi42, %broadcast.splat
  %i.j = add <2 x i64> %i.h, %wide.load           ; 2 uses
  %i.k = add <2 x i64> %i.i, %wide.load43         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !520

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01720.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01720.us = phi i64 [ %i.q, %scalar.ph ], [ %.01720.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %i.p = add i64 %.01720.us, %factor.op.mul.reass.reass
  %i.q = add i64 %i.p, %i.o                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !521

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre31 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre31, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01825.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge26, !llvm.loop !522

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i64
  %i.y = add i64 %.reass.reass, %i.x
  %i.z = mul i64 %i.y, 8000
  %i.aa = icmp eq i64 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit ], [ %.pre29, %.preheader.preheader ] ; 2 uses
  %.01825 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i64
  %i.ae = add i64 %.reass.reass, %i.ad
  %7 = and i64 %i.ae, 288230376151711743
  %i.af = icmp eq i64 %7, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre30 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre30, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01825, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge26, !llvm.loop !522

._crit_edge26:                                    ; preds = %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIm34custom_multiply_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge26
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge26, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge26 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge26 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %6, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Im22custom_divide_variableImEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ac, %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.01113.us = phi i64 [ %i.y, %.preheader.us.new ], [ 0, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %i.i = udiv i64 %i.h, %2
  %i.j = add i64 %i.i, %.01113.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  %i.n = udiv i64 %i.m, %2
  %i.o = add i64 %i.n, %i.j
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = udiv i64 %i.r, %2
  %i.t = add i64 %i.s, %i.o
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19
  %i.x = udiv i64 %i.w, %2
  %i.y = add i64 %i.x, %i.t                       ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !523

bb.b:                                             ; preds = %._crit_edge.us
  %i.z = load i32, ptr @current_test, align 4, !tbaa !7
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.z) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ab = phi i32 [ %.pre21, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ac = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  br i1 %i.ad, label %.preheader.us, label %._crit_edge16, !llvm.loop !524

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.01113.us.epil.init = phi i64 [ 0, %.preheader.us ], [ %i.y, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.01113.us.epil = phi i64 [ %.01113.us.epil.init, %.epil.preheader ], [ %i.ah, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.ag = udiv i64 %i.af, %2
  %i.ah = add i64 %i.ag, %.01113.us.epil          ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !525

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i64 [ %i.y, %._crit_edge.us.unr-lcssa ], [ %i.ah, %bb.c ]
  %i.ai = load double, ptr @init_value, align 8, !tbaa !20
  %i.aj = fptoui double %i.ai to i64
  %i.ak = udiv i64 %i.aj, %2
  %i.al = mul i64 %i.ak, 8000
  %i.am = icmp eq i64 %.lcssa, %i.al
  br i1 %i.am, label %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit
  %i.an = phi i32 [ %i.au, %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ao = phi double [ %i.av, %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.aw, %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ap = fptoui double %i.ao to i64
  %i.aq = udiv i64 %i.ap, %2
  %4 = and i64 %i.aq, 288230376151711743
  %i.ar = icmp eq i64 %4, 0
  br i1 %i.ar, label %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.as = load i32, ptr @current_test, align 4, !tbaa !7
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.as) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit

_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit: ; preds = %.preheader, %bb.d
  %i.au = phi i32 [ %i.an, %.preheader ], [ %.pre20, %bb.d ] ; 2 uses
  %i.av = phi double [ %i.ao, %.preheader ], [ %.pre, %bb.d ]
  %i.aw = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.ax = icmp slt i32 %i.aw, %i.au
  br i1 %i.ax, label %.preheader, label %._crit_edge16, !llvm.loop !524

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit, %_Z26check_shifted_variable_sumIm22custom_divide_variableImEEvT_S2_.exit.us, %bb.a
  %i.ay = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ay, ptr @end_time, align 8, !tbaa !19
  %i.az = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ba = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.bb = icmp ne ptr %i.ba, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.bc = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bc, %.pre.i
  %or.cond.i = select i1 %i.bb, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge16
  %i.bd = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bd, ptr @allocated_results, align 4, !tbaa !7
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 4
  %i.bg = tail call ptr @realloc(ptr noundef %i.ba, i64 noundef %i.bf) #14 ; 3 uses
  store ptr %i.bg, ptr @results, align 8, !tbaa !10
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.bi = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bi) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.bk = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bc, %._crit_edge16 ] ; 2 uses
  %i.bl = phi ptr [ %i.bg, %._crit_edge.i ], [ %i.ba, %._crit_edge16 ]
  %i.bm = sub nsw i64 %i.ay, %i.az
  %i.bn = sitofp i64 %i.bm to double
  %i.bo = fdiv double %i.bn, 1.000000e+06
  %i.bp = sext i32 %i.bk to i64
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.bp ; 2 uses
  store double %i.bo, ptr %i.bq, align 8, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %3, ptr %i.br, align 8, !tbaa !15
  %i.bs = add nsw i32 %i.bk, 1
  store i32 %i.bs, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Im31custom_divide_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre25 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %1, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod40 = trunc i32 %1 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.x, %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01821.us = phi i32 [ %i.y, %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.01719.us = phi i64 [ %i.u, %.preheader.us.new ], [ 0, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %i.i = udiv i64 %i.h, %2
  %i.j = udiv i64 %i.i, %3
  %i.k = udiv i64 %i.j, %4
  %i.l = udiv i64 %i.k, %5
  %i.m = add i64 %i.l, %.01719.us
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  %i.q = udiv i64 %i.p, %2
  %i.r = udiv i64 %i.q, %3
  %i.s = udiv i64 %i.r, %4
  %i.t = udiv i64 %i.s, %5
  %i.u = add i64 %i.t, %i.m                       ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !526

bb.b:                                             ; preds = %._crit_edge.us
  %i.v = load i32, ptr @current_test, align 4, !tbaa !7
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.v) ; 0 uses
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.x = phi i32 [ %.pre27, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.y = add nuw nsw i32 %.01821.us, 1            ; 2 uses
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.preheader.us, label %._crit_edge22, !llvm.loop !527

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.01719.us.epil.init = phi i64 [ 0, %.preheader.us ], [ %i.u, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19
  %i.ac = udiv i64 %i.ab, %2
  %i.ad = udiv i64 %i.ac, %3
  %i.ae = udiv i64 %i.ad, %4
  %i.af = udiv i64 %i.ae, %5
  %i.ag = add i64 %i.af, %.01719.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.u, %._crit_edge.us.unr-lcssa ], [ %i.ag, %.epil.preheader ]
  %i.ah = load double, ptr @init_value, align 8, !tbaa !20
  %i.ai = fptoui double %i.ah to i64
  %i.aj = udiv i64 %i.ai, %2
  %i.ak = udiv i64 %i.aj, %3
  %i.al = udiv i64 %i.ak, %4
  %i.am = udiv i64 %i.al, %5
  %i.an = mul i64 %i.am, 8000
  %i.ao = icmp eq i64 %.lcssa, %i.an
  br i1 %i.ao, label %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit
  %i.ap = phi i32 [ %i.az, %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aq = phi double [ %i.ba, %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ %.pre25, %.preheader.preheader ] ; 2 uses
  %.01821 = phi i32 [ %i.bb, %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ar = fptoui double %i.aq to i64
  %i.as = udiv i64 %i.ar, %2
  %i.at = udiv i64 %i.as, %3
  %i.au = udiv i64 %i.at, %4
  %i.av = udiv i64 %i.au, %5
  %7 = and i64 %i.av, 288230376151711743
  %i.aw = icmp eq i64 %7, 0
  br i1 %i.aw, label %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ax = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ax) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre26 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.az = phi i32 [ %i.ap, %.preheader ], [ %.pre26, %bb.c ] ; 2 uses
  %i.ba = phi double [ %i.aq, %.preheader ], [ %.pre, %bb.c ]
  %i.bb = add nuw nsw i32 %.01821, 1              ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %i.az
  br i1 %i.bc, label %.preheader, label %._crit_edge22, !llvm.loop !527

._crit_edge22:                                    ; preds = %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIm31custom_divide_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.bd = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.bd, ptr @end_time, align 8, !tbaa !19
  %i.be = load i64, ptr @start_time, align 8, !tbaa !19
  %i.bf = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.bg = icmp ne ptr %i.bf, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.bh = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.bh, %.pre.i
  %or.cond.i = select i1 %i.bg, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge22
  %i.bi = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.bi, ptr @allocated_results, align 4, !tbaa !7
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 4
  %i.bl = tail call ptr @realloc(ptr noundef %i.bf, i64 noundef %i.bk) #14 ; 3 uses
  store ptr %i.bl, ptr @results, align 8, !tbaa !10
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bn = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bn) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge22, %._crit_edge.i
  %i.bp = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.bh, %._crit_edge22 ] ; 2 uses
  %i.bq = phi ptr [ %i.bl, %._crit_edge.i ], [ %i.bf, %._crit_edge22 ]
  %i.br = sub nsw i64 %i.bd, %i.be
  %i.bs = sitofp i64 %i.br to double
  %i.bt = fdiv double %i.bs, 1.000000e+06
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bq, i64 %i.bu ; 2 uses
  store double %i.bt, ptr %i.bv, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %6, ptr %i.bw, align 8, !tbaa !15
  %i.bx = add nsw i32 %i.bp, 1
  store i32 %i.bx, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Im32custom_divide_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = udiv i64 %2, %3
  %i.f = udiv i64 %i.e, %4
  %i.g = udiv i64 %i.f, %5                        ; 4 uses
  br i1 %i.d, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre25 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us, %.preheader.lr.ph.split.us
  %i.h = phi i32 [ %i.b, %.preheader.lr.ph.split.us ], [ %i.w, %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us ]
  %.01821.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.x, %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.m, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi38 = phi <2 x i64> [ %i.n, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !19
  %wide.load39 = load <2 x i64>, ptr %i.j, align 8, !tbaa !19
  %i.k = add <2 x i64> %wide.load, %vec.phi
  %i.l = add <2 x i64> %wide.load39, %vec.phi38
  %i.m = add <2 x i64> %i.k, %broadcast.splat     ; 2 uses
  %i.n = add <2 x i64> %i.l, %broadcast.splat     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !528

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.n, %i.m
  %i.p = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01719.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i64 [ %i.t, %scalar.ph ], [ %.01719.us.ph, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = add i64 %i.r, %.01719.us
  %i.t = add i64 %i.s, %i.g                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !529

bb.b:                                             ; preds = %._crit_edge.us
  %i.u = load i32, ptr @current_test, align 4, !tbaa !7
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.u) ; 0 uses
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.w = phi i32 [ %.pre27, %bb.b ], [ %i.h, %._crit_edge.us ] ; 2 uses
  %i.x = add nuw nsw i32 %.01821.us, 1            ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.w
  br i1 %i.y, label %.preheader.us, label %._crit_edge22, !llvm.loop !530

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.p, %middle.block ], [ %i.t, %scalar.ph ]
  %i.z = load double, ptr @init_value, align 8, !tbaa !20
  %i.aa = fptoui double %i.z to i64
  %i.ab = add i64 %i.g, %i.aa
  %i.ac = mul i64 %i.ab, 8000
  %i.ad = icmp eq i64 %.lcssa, %i.ac
  br i1 %i.ad, label %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit
  %i.ae = phi i32 [ %i.al, %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.af = phi double [ %i.am, %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit ], [ %.pre25, %.preheader.preheader ] ; 2 uses
  %.01821 = phi i32 [ %i.an, %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ag = fptoui double %i.af to i64
  %i.ah = add i64 %i.g, %i.ag
  %7 = and i64 %i.ah, 288230376151711743
  %i.ai = icmp eq i64 %7, 0
  br i1 %i.ai, label %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.aj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre26 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.al = phi i32 [ %i.ae, %.preheader ], [ %.pre26, %bb.c ] ; 2 uses
  %i.am = phi double [ %i.af, %.preheader ], [ %.pre, %bb.c ]
  %i.an = add nuw nsw i32 %.01821, 1              ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %.preheader, label %._crit_edge22, !llvm.loop !530

._crit_edge22:                                    ; preds = %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIm32custom_divide_multiple_variable2ImEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ap = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ap, ptr @end_time, align 8, !tbaa !19
  %i.aq = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ar = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.at = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.at, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge22
  %i.au = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.au, ptr @allocated_results, align 4, !tbaa !7
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 4
  %i.ax = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.aw) #14 ; 3 uses
  store ptr %i.ax, ptr @results, align 8, !tbaa !10
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.az) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge22, %._crit_edge.i
  %i.bb = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.at, %._crit_edge22 ] ; 2 uses
  %i.bc = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.ar, %._crit_edge22 ]
  %i.bd = sub nsw i64 %i.ap, %i.aq
  %i.be = sitofp i64 %i.bd to double
  %i.bf = fdiv double %i.be, 1.000000e+06
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bg ; 2 uses
  store double %i.bf, ptr %i.bh, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %6, ptr %i.bi, align 8, !tbaa !15
  %i.bj = add nsw i32 %i.bb, 1
  store i32 %i.bj, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Im30custom_mixed_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge23

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = mul i64 %4, %3
  %i.f = udiv i64 %i.e, %5                        ; 3 uses
  %invariant.op = sub i64 %2, %i.f                ; 2 uses
  br i1 %i.d, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre26 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert39 = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat40 = shufflevector <2 x i64> %broadcast.splatinsert39, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us, %.preheader.lr.ph.split.us
  %i.g = phi i32 [ %i.b, %.preheader.lr.ph.split.us ], [ %i.y, %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us ]
  %.01822.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.z, %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.n, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi41 = phi <2 x i64> [ %i.o, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <2 x i64>, ptr %i.h, align 8, !tbaa !19
  %wide.load42 = load <2 x i64>, ptr %i.i, align 8, !tbaa !19
  %i.j = add <2 x i64> %vec.phi, %broadcast.splat
  %i.k = add <2 x i64> %vec.phi41, %broadcast.splat
  %i.l = add <2 x i64> %i.j, %wide.load
  %i.m = add <2 x i64> %i.k, %wide.load42
  %i.n = sub <2 x i64> %i.l, %broadcast.splat40   ; 2 uses
  %i.o = sub <2 x i64> %i.m, %broadcast.splat40   ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !531

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.o, %i.n
  %i.q = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01720.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.q, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01720.us = phi i64 [ %i.v, %scalar.ph ], [ %.01720.us.ph, %scalar.ph.preheader ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19
  %i.t = add i64 %.01720.us, %2
  %i.u = add i64 %i.t, %i.s
  %i.v = sub i64 %i.u, %i.f                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !532

bb.b:                                             ; preds = %._crit_edge.us
  %i.w = load i32, ptr @current_test, align 4, !tbaa !7
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.w) ; 0 uses
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.y = phi i32 [ %.pre28, %bb.b ], [ %i.g, %._crit_edge.us ] ; 2 uses
  %i.z = add nuw nsw i32 %.01822.us, 1            ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.y
  br i1 %i.aa, label %.preheader.us, label %._crit_edge23, !llvm.loop !533

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.q, %middle.block ], [ %i.v, %scalar.ph ]
  %i.ab = load double, ptr @init_value, align 8, !tbaa !20
  %i.ac = fptoui double %i.ab to i64
  %.reass.us = add i64 %invariant.op, %i.ac
  %i.ad = mul i64 %.reass.us, 8000
  %i.ae = icmp eq i64 %.lcssa, %i.ad
  br i1 %i.ae, label %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit
  %i.af = phi i32 [ %i.al, %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ag = phi double [ %i.am, %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ %.pre26, %.preheader.preheader ] ; 2 uses
  %.01822 = phi i32 [ %i.an, %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ah = fptoui double %i.ag to i64
  %.reass = add i64 %invariant.op, %i.ah
  %7 = and i64 %.reass, 288230376151711743
  %i.ai = icmp eq i64 %7, 0
  br i1 %i.ai, label %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.aj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre27 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.al = phi i32 [ %i.af, %.preheader ], [ %.pre27, %bb.c ] ; 2 uses
  %i.am = phi double [ %i.ag, %.preheader ], [ %.pre, %bb.c ]
  %i.an = add nuw nsw i32 %.01822, 1              ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %.preheader, label %._crit_edge23, !llvm.loop !533

._crit_edge23:                                    ; preds = %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIm30custom_mixed_multiple_variableImEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ap = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ap, ptr @end_time, align 8, !tbaa !19
  %i.aq = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ar = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.at = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.at, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge23
  %i.au = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.au, ptr @allocated_results, align 4, !tbaa !7
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 4
  %i.ax = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.aw) #14 ; 3 uses
  store ptr %i.ax, ptr @results, align 8, !tbaa !10
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.az) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge23, %._crit_edge.i
  %i.bb = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.at, %._crit_edge23 ] ; 2 uses
  %i.bc = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.ar, %._crit_edge23 ]
  %i.bd = sub nsw i64 %i.ap, %i.aq
  %i.be = sitofp i64 %i.bd to double
  %i.bf = fdiv double %i.be, 1.000000e+06
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bg ; 2 uses
  store double %i.bf, ptr %i.bh, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %6, ptr %i.bi, align 8, !tbaa !15
  %i.bj = add nsw i32 %i.bb, 1
  store i32 %i.bj, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Im19custom_variable_andImEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  %invariant.op = and i64 %2, 288230376151711743
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <2 x i64> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !19
  %wide.load33 = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  %i.h = and <2 x i64> %wide.load, %broadcast.splat
  %i.i = and <2 x i64> %wide.load33, %broadcast.splat
  %i.j = add <2 x i64> %i.h, %vec.phi             ; 2 uses
  %i.k = add <2 x i64> %i.i, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !534

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i64 [ %i.q, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %i.p = and i64 %i.o, %2
  %i.q = add i64 %i.p, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !535

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre21, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge16, !llvm.loop !536

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i64
  %i.y = and i64 %2, %i.x
  %i.z = mul i64 %i.y, 8000
  %i.aa = icmp eq i64 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i64
  %i.ae = and i64 %invariant.op, %i.ad
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit

_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !536

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit, %_Z26check_shifted_variable_sumIm19custom_variable_andImEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge16 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge16 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %3, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Im28custom_multiple_variable_andImEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = and i64 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = and i64 %2, %invariant.op21
  %.reass22 = and i64 %i.e, %3                    ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre27 = load double, ptr @init_value, align 8, !tbaa !20
  %invariant.op = and i64 %.reass22, 288230376151711743
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %4, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <2 x i64> poison, i64 %5, i64 0
  %broadcast.splat44 = shufflevector <2 x i64> %broadcast.splatinsert43, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat46 = shufflevector <2 x i64> %broadcast.splatinsert45, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <2 x i64> poison, i64 %3, i64 0
  %broadcast.splat48 = shufflevector <2 x i64> %broadcast.splatinsert47, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op.a = and <2 x i64> %broadcast.splat, %broadcast.splat44
  %invariant.op59 = and <2 x i64> %broadcast.splat, %broadcast.splat44
  %invariant.op61 = and <2 x i64> %invariant.op.a, %broadcast.splat46
  %invariant.op63 = and <2 x i64> %invariant.op59, %broadcast.splat46
  %invariant.op65 = and <2 x i64> %invariant.op61, %broadcast.splat48
  %invariant.op67 = and <2 x i64> %invariant.op63, %broadcast.splat48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %invariant.op69 = and i64 %4, %5
  %invariant.op71 = and i64 %invariant.op69, %2
  %invariant.op73 = and i64 %invariant.op71, %3
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.r, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.s, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.i, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi49 = phi <2 x i64> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  %wide.load50 = load <2 x i64>, ptr %i.h, align 8, !tbaa !19
  %.reass66 = and <2 x i64> %wide.load, %invariant.op65
  %.reass68 = and <2 x i64> %wide.load50, %invariant.op67
  %i.i = add <2 x i64> %.reass66, %vec.phi        ; 2 uses
  %i.j = add <2 x i64> %.reass68, %vec.phi49      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !537

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.j, %i.i
  %i.l = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01719.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i64 [ %i.o, %scalar.ph ], [ %.01719.us.ph, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %.reass.reass = and i64 %i.n, %invariant.op73
  %i.o = add i64 %.reass.reass, %.01719.us        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !538

bb.b:                                             ; preds = %._crit_edge.us
  %i.p = load i32, ptr @current_test, align 4, !tbaa !7
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.p) ; 0 uses
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.r = phi i32 [ %.pre29, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.s = add nuw nsw i32 %.01823.us, 1            ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %.preheader.us, label %._crit_edge24, !llvm.loop !539

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.l, %middle.block ], [ %i.o, %scalar.ph ]
  %i.u = load double, ptr @init_value, align 8, !tbaa !20
  %i.v = fptoui double %i.u to i64
  %i.w = and i64 %.reass22, %i.v
  %i.x = mul i64 %i.w, 8000
  %i.y = icmp eq i64 %.lcssa, %i.x
  br i1 %i.y, label %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit
  %i.z = phi i32 [ %i.ag, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aa = phi double [ %i.ah, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit ], [ %.pre27, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ab = fptoui double %i.aa to i64
  %i.ac = and i64 %invariant.op, %i.ab
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ae = load i32, ptr @current_test, align 4, !tbaa !7
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ae) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ag = phi i32 [ %i.z, %.preheader ], [ %.pre28, %bb.c ] ; 2 uses
  %i.ah = phi double [ %i.aa, %.preheader ], [ %.pre, %bb.c ]
  %i.ai = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ag
  br i1 %i.aj, label %.preheader, label %._crit_edge24, !llvm.loop !539

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_andImEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ak = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ak, ptr @end_time, align 8, !tbaa !19
  %i.al = load i64, ptr @start_time, align 8, !tbaa !19
  %i.am = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.an = icmp ne ptr %i.am, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ao = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ao, %.pre.i
  %or.cond.i = select i1 %i.an, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ap = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ap, ptr @allocated_results, align 4, !tbaa !7
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 4
  %i.as = tail call ptr @realloc(ptr noundef %i.am, i64 noundef %i.ar) #14 ; 3 uses
  store ptr %i.as, ptr @results, align 8, !tbaa !10
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.au = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.au) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.aw = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ao, %._crit_edge24 ] ; 2 uses
  %i.ax = phi ptr [ %i.as, %._crit_edge.i ], [ %i.am, %._crit_edge24 ]
  %i.ay = sub nsw i64 %i.ak, %i.al
  %i.az = sitofp i64 %i.ay to double
  %i.ba = fdiv double %i.az, 1.000000e+06
  %i.bb = sext i32 %i.aw to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.bb ; 2 uses
  store double %i.ba, ptr %i.bc, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %6, ptr %i.bd, align 8, !tbaa !15
  %i.be = add nsw i32 %i.aw, 1
  store i32 %i.be, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Im18custom_variable_orImEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <2 x i64> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !19
  %wide.load33 = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  %i.h = or <2 x i64> %wide.load, %broadcast.splat
  %i.i = or <2 x i64> %wide.load33, %broadcast.splat
  %i.j = add <2 x i64> %i.h, %vec.phi             ; 2 uses
  %i.k = add <2 x i64> %i.i, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !540

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i64 [ %i.q, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %i.p = or i64 %i.o, %2
  %i.q = add i64 %i.p, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !541

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre21, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge16, !llvm.loop !542

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i64
  %i.y = or i64 %2, %i.x
  %i.z = mul i64 %i.y, 8000
  %i.aa = icmp eq i64 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i64
  %i.ae = or i64 %2, %i.ad
  %4 = and i64 %i.ae, 288230376151711743
  %i.af = icmp eq i64 %4, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit

_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !542

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit, %_Z26check_shifted_variable_sumIm18custom_variable_orImEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge16 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge16 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %3, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Im27custom_multiple_variable_orImEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = or i64 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = or i64 %2, %invariant.op21
  %.reass22 = or i64 %i.e, %3                     ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre27 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %4, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <2 x i64> poison, i64 %5, i64 0
  %broadcast.splat44 = shufflevector <2 x i64> %broadcast.splatinsert43, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat46 = shufflevector <2 x i64> %broadcast.splatinsert45, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <2 x i64> poison, i64 %3, i64 0
  %broadcast.splat48 = shufflevector <2 x i64> %broadcast.splatinsert47, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = or <2 x i64> %broadcast.splat, %broadcast.splat44
  %invariant.op59 = or <2 x i64> %broadcast.splat, %broadcast.splat44
  %invariant.op61 = or <2 x i64> %invariant.op, %broadcast.splat46
  %invariant.op63 = or <2 x i64> %invariant.op59, %broadcast.splat46
  %invariant.op65 = or <2 x i64> %invariant.op61, %broadcast.splat48
  %invariant.op67 = or <2 x i64> %invariant.op63, %broadcast.splat48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %invariant.op69 = or i64 %4, %5
  %invariant.op71 = or i64 %invariant.op69, %2
  %invariant.op73 = or i64 %invariant.op71, %3
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.r, %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.s, %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.i, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi49 = phi <2 x i64> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  %wide.load50 = load <2 x i64>, ptr %i.h, align 8, !tbaa !19
  %.reass66 = or <2 x i64> %wide.load, %invariant.op65
  %.reass68 = or <2 x i64> %wide.load50, %invariant.op67
  %i.i = add <2 x i64> %.reass66, %vec.phi        ; 2 uses
  %i.j = add <2 x i64> %.reass68, %vec.phi49      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !543

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.j, %i.i
  %i.l = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01719.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i64 [ %i.o, %scalar.ph ], [ %.01719.us.ph, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %.reass.reass = or i64 %i.n, %invariant.op73
  %i.o = add i64 %.reass.reass, %.01719.us        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !544

bb.b:                                             ; preds = %._crit_edge.us
  %i.p = load i32, ptr @current_test, align 4, !tbaa !7
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.p) ; 0 uses
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.r = phi i32 [ %.pre29, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.s = add nuw nsw i32 %.01823.us, 1            ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %.preheader.us, label %._crit_edge24, !llvm.loop !545

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.l, %middle.block ], [ %i.o, %scalar.ph ]
  %i.u = load double, ptr @init_value, align 8, !tbaa !20
  %i.v = fptoui double %i.u to i64
  %i.w = or i64 %.reass22, %i.v
  %i.x = mul i64 %i.w, 8000
  %i.y = icmp eq i64 %.lcssa, %i.x
  br i1 %i.y, label %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit
  %i.z = phi i32 [ %i.ag, %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aa = phi double [ %i.ah, %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit ], [ %.pre27, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ab = fptoui double %i.aa to i64
  %i.ac = or i64 %.reass22, %i.ab
  %7 = and i64 %i.ac, 288230376151711743
  %i.ad = icmp eq i64 %7, 0
  br i1 %i.ad, label %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ae = load i32, ptr @current_test, align 4, !tbaa !7
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ae) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ag = phi i32 [ %i.z, %.preheader ], [ %.pre28, %bb.c ] ; 2 uses
  %i.ah = phi double [ %i.aa, %.preheader ], [ %.pre, %bb.c ]
  %i.ai = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ag
  br i1 %i.aj, label %.preheader, label %._crit_edge24, !llvm.loop !545

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIm27custom_multiple_variable_orImEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ak = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ak, ptr @end_time, align 8, !tbaa !19
  %i.al = load i64, ptr @start_time, align 8, !tbaa !19
  %i.am = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.an = icmp ne ptr %i.am, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ao = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ao, %.pre.i
  %or.cond.i = select i1 %i.an, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ap = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ap, ptr @allocated_results, align 4, !tbaa !7
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 4
  %i.as = tail call ptr @realloc(ptr noundef %i.am, i64 noundef %i.ar) #14 ; 3 uses
  store ptr %i.as, ptr @results, align 8, !tbaa !10
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.au = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.au) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.aw = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ao, %._crit_edge24 ] ; 2 uses
  %i.ax = phi ptr [ %i.as, %._crit_edge.i ], [ %i.am, %._crit_edge24 ]
  %i.ay = sub nsw i64 %i.ak, %i.al
  %i.az = sitofp i64 %i.ay to double
  %i.ba = fdiv double %i.az, 1.000000e+06
  %i.bb = sext i32 %i.aw to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.bb ; 2 uses
  store double %i.ba, ptr %i.bc, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %6, ptr %i.bd, align 8, !tbaa !15
  %i.be = add nsw i32 %i.aw, 1
  store i32 %i.be, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1Im19custom_variable_xorImEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit.us
  %i.e = phi i32 [ %i.t, %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.u, %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi32 = phi <2 x i64> [ %i.k, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !19
  %wide.load33 = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  %i.h = xor <2 x i64> %wide.load, %broadcast.splat
  %i.i = xor <2 x i64> %wide.load33, %broadcast.splat
  %i.j = add <2 x i64> %i.h, %vec.phi             ; 2 uses
  %i.k = add <2 x i64> %i.i, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01113.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01113.us = phi i64 [ %i.q, %scalar.ph ], [ %.01113.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %i.p = xor i64 %i.o, %2
  %i.q = add i64 %i.p, %.01113.us                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !547

bb.b:                                             ; preds = %._crit_edge.us
  %i.r = load i32, ptr @current_test, align 4, !tbaa !7
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.r) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.t = phi i32 [ %.pre21, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.u = add nuw nsw i32 %.01215.us, 1            ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.preheader.us, label %._crit_edge16, !llvm.loop !548

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.m, %middle.block ], [ %i.q, %scalar.ph ]
  %i.w = load double, ptr @init_value, align 8, !tbaa !20
  %i.x = fptoui double %i.w to i64
  %i.y = xor i64 %2, %i.x
  %i.z = mul i64 %i.y, 8000
  %i.aa = icmp eq i64 %.lcssa, %i.z
  br i1 %i.aa, label %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit
  %i.ab = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.ac = phi double [ %i.aj, %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.ak, %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ad = fptoui double %i.ac to i64
  %i.ae = xor i64 %2, %i.ad
  %4 = and i64 %i.ae, 288230376151711743
  %i.af = icmp eq i64 %4, 0
  br i1 %i.af, label %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ag) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit

_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ai = phi i32 [ %i.ab, %.preheader ], [ %.pre20, %bb.c ] ; 2 uses
  %i.aj = phi double [ %i.ac, %.preheader ], [ %.pre, %bb.c ]
  %i.ak = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %.preheader, label %._crit_edge16, !llvm.loop !548

._crit_edge16:                                    ; preds = %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit, %_Z26check_shifted_variable_sumIm19custom_variable_xorImEEvT_S2_.exit.us, %bb.a
  %i.am = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.am, ptr @end_time, align 8, !tbaa !19
  %i.an = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ao = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.aq = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.aq, %.pre.i
  %or.cond.i = select i1 %i.ap, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge16
  %i.ar = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ar, ptr @allocated_results, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.at) #14 ; 3 uses
  store ptr %i.au, ptr @results, align 8, !tbaa !10
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge16, %._crit_edge.i
  %i.ay = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.aq, %._crit_edge16 ] ; 2 uses
  %i.az = phi ptr [ %i.au, %._crit_edge.i ], [ %i.ao, %._crit_edge16 ]
  %i.ba = sub nsw i64 %i.am, %i.an
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store double %i.bc, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %3, ptr %i.bf, align 8, !tbaa !15
  %i.bg = add nsw i32 %i.ay, 1
  store i32 %i.bg, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable4Im28custom_multiple_variable_xorImEEvPT_iS2_S2_S2_S2_PKc(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge24

.preheader.lr.ph:                                 ; preds = %bb.a
  %invariant.op21 = xor i64 %4, %5
  %i.d = icmp sgt i32 %1, 0
  %i.e = xor i64 %2, %invariant.op21
  %.reass22 = xor i64 %i.e, %3                    ; 2 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre27 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %4, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <2 x i64> poison, i64 %5, i64 0
  %broadcast.splat44 = shufflevector <2 x i64> %broadcast.splatinsert43, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat46 = shufflevector <2 x i64> %broadcast.splatinsert45, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <2 x i64> poison, i64 %3, i64 0
  %broadcast.splat48 = shufflevector <2 x i64> %broadcast.splatinsert47, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = xor <2 x i64> %broadcast.splat, %broadcast.splat44
  %invariant.op59 = xor <2 x i64> %broadcast.splat, %broadcast.splat44
  %invariant.op61 = xor <2 x i64> %invariant.op, %broadcast.splat46
  %invariant.op63 = xor <2 x i64> %invariant.op59, %broadcast.splat46
  %invariant.op65 = xor <2 x i64> %invariant.op61, %broadcast.splat48
  %invariant.op67 = xor <2 x i64> %invariant.op63, %broadcast.splat48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %invariant.op69 = xor i64 %4, %5
  %invariant.op71 = xor i64 %invariant.op69, %2
  %invariant.op73 = xor i64 %invariant.op71, %3
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit.us
  %i.f = phi i32 [ %i.r, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01823.us = phi i32 [ %i.s, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.i, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi49 = phi <2 x i64> [ %i.j, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  %wide.load50 = load <2 x i64>, ptr %i.h, align 8, !tbaa !19
  %.reass66 = xor <2 x i64> %wide.load, %invariant.op65
  %.reass68 = xor <2 x i64> %wide.load50, %invariant.op67
  %i.i = add <2 x i64> %.reass66, %vec.phi        ; 2 uses
  %i.j = add <2 x i64> %.reass68, %vec.phi49      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !549

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.j, %i.i
  %i.l = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.01719.us.ph = phi i64 [ 0, %.preheader.us ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01719.us = phi i64 [ %i.o, %scalar.ph ], [ %.01719.us.ph, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %.reass.reass = xor i64 %i.n, %invariant.op73
  %i.o = add i64 %.reass.reass, %.01719.us        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !550

bb.b:                                             ; preds = %._crit_edge.us
  %i.p = load i32, ptr @current_test, align 4, !tbaa !7
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.p) ; 0 uses
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit.us

_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.r = phi i32 [ %.pre29, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.s = add nuw nsw i32 %.01823.us, 1            ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %.preheader.us, label %._crit_edge24, !llvm.loop !551

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.l, %middle.block ], [ %i.o, %scalar.ph ]
  %i.u = load double, ptr @init_value, align 8, !tbaa !20
  %i.v = fptoui double %i.u to i64
  %i.w = xor i64 %.reass22, %i.v
  %i.x = mul i64 %i.w, 8000
  %i.y = icmp eq i64 %.lcssa, %i.x
  br i1 %i.y, label %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit
  %i.z = phi i32 [ %i.ag, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.aa = phi double [ %i.ah, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit ], [ %.pre27, %.preheader.preheader ] ; 2 uses
  %.01823 = phi i32 [ %i.ai, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.ab = fptoui double %i.aa to i64
  %i.ac = xor i64 %.reass22, %i.ab
  %7 = and i64 %i.ac, 288230376151711743
  %i.ad = icmp eq i64 %7, 0
  br i1 %i.ad, label %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ae = load i32, ptr @current_test, align 4, !tbaa !7
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.ae) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre28 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit

_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit: ; preds = %.preheader, %bb.c
  %i.ag = phi i32 [ %i.z, %.preheader ], [ %.pre28, %bb.c ] ; 2 uses
  %i.ah = phi double [ %i.aa, %.preheader ], [ %.pre, %bb.c ]
  %i.ai = add nuw nsw i32 %.01823, 1              ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ag
  br i1 %i.aj, label %.preheader, label %._crit_edge24, !llvm.loop !551

._crit_edge24:                                    ; preds = %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit, %_Z26check_shifted_variable_sumIm28custom_multiple_variable_xorImEEvT_S2_S2_S2_S2_.exit.us, %bb.a
  %i.ak = tail call i64 @clock() #17              ; 2 uses
  store i64 %i.ak, ptr @end_time, align 8, !tbaa !19
  %i.al = load i64, ptr @start_time, align 8, !tbaa !19
  %i.am = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.an = icmp ne ptr %i.am, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.ao = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ao, %.pre.i
  %or.cond.i = select i1 %i.an, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge24
  %i.ap = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ap, ptr @allocated_results, align 4, !tbaa !7
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 4
  %i.as = tail call ptr @realloc(ptr noundef %i.am, i64 noundef %i.ar) #14 ; 3 uses
  store ptr %i.as, ptr @results, align 8, !tbaa !10
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.au = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.au) ; 0 uses
  tail call void @exit(i32 noundef -1) #15
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge24, %._crit_edge.i
  %i.aw = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ao, %._crit_edge24 ] ; 2 uses
  %i.ax = phi ptr [ %i.as, %._crit_edge.i ], [ %i.am, %._crit_edge24 ]
  %i.ay = sub nsw i64 %i.ak, %i.al
  %i.az = sitofp i64 %i.ay to double
  %i.ba = fdiv double %i.az, 1.000000e+06
  %i.bb = sext i32 %i.aw to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.bb ; 2 uses
  store double %i.ba, ptr %i.bc, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %6, ptr %i.bd, align 8, !tbaa !15
  %i.be = add nsw i32 %i.aw, 1
  store i32 %i.be, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14test_variable1If19custom_add_variableIfEEvPT_iS2_PKc(ptr noundef %0, i32 noundef %1, float noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call i64 @clock() #17
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre19 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit.us
  %i.f = phi i32 [ %i.ab, %_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01215.us = phi i32 [ %i.ac, %_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.01113.us = phi float [ %i.y, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.h = load float, ptr %i.g, align 4, !tbaa !27
  %i.i = fadd float %2, %i.h
  %i.j = fadd float %.01113.us, %i.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !27
  %i.n = fadd float %2, %i.m
  %i.o = fadd float %i.j, %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !27
  %i.s = fadd float %2, %i.r
  %i.t = fadd float %i.o, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !27
  %i.x = fadd float %2, %i.w
  %i.y = fadd float %i.t, %i.x                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !552

bb.b:                                             ; preds = %._crit_edge.us
  %i.z = load i32, ptr @current_test, align 4, !tbaa !7
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.z) ; 0 uses
  %.pre21 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit.us

_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit.us: ; preds = %bb.b, %._crit_edge.us
  %i.ab = phi i32 [ %.pre21, %bb.b ], [ %i.f, %._crit_edge.us ] ; 2 uses
  %i.ac = add nuw nsw i32 %.01215.us, 1           ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  br i1 %i.ad, label %.preheader.us, label %._crit_edge16, !llvm.loop !553

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.01113.us.epil.init = phi float [ 0.000000e+00, %.preheader.us ], [ %i.y, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.01113.us.epil = phi float [ %.01113.us.epil.init, %.epil.preheader ], [ %i.ah, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.af = load float, ptr %i.ae, align 4, !tbaa !27
  %i.ag = fadd float %2, %i.af
  %i.ah = fadd float %.01113.us.epil, %i.ag       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !554

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa = phi float [ %i.y, %._crit_edge.us.unr-lcssa ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ai = load double, ptr @init_value, align 8, !tbaa !20
  %i.aj = fptrunc double %i.ai to float
  %i.ak = fadd float %2, %i.aj
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
  br i1 %i.at, label %_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit.us, label %bb.b

.preheader:                                       ; preds = %.preheader.preheader, %_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit
  %i.au = phi i32 [ %i.bf, %_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit ], [ %i.b, %.preheader.preheader ]
  %i.av = phi double [ %i.bg, %_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.01215 = phi i32 [ %i.bh, %_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit ], [ 0, %.preheader.preheader ]
  %i.aw = fptrunc double %i.av to float
  %i.ax = fadd float %2, %i.aw
  %i.ay = fmul float %i.ax, 8.000000e+03
  %i.az = fsub float 0.000000e+00, %i.ay
  %i.ba = tail call float @llvm.fabs.f32(float %i.az)
  %i.bb = fpext float %i.ba to double
  %i.bc = fcmp olt double %i.bb, 1.000000e-03
  br i1 %i.bc, label %_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.bd = load i32, ptr @current_test, align 4, !tbaa !7
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %i.bd) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre20 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit

_Z26check_shifted_variable_sumIf19custom_add_variableIfEEvT_S2_.exit: ; preds = %.preheader, %bb.d
  %i.bf = phi i32 [ %i.au, %.preheader ], [ %.pre20, %bb.d ] ; 2 uses
  %i.bg = phi double [ %i.av, %.preheader ], [ %.pre, %bb.d ]
  %i.bh = add nuw nsw i32 %.01215, 1              ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.bf
end_hunk_6
