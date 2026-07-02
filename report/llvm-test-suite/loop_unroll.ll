inline.NumInlined: 2075
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 252
begin_hunk_0_@_Z17summarize_simplefP8_IO_FILEPKc:bb.a
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
  br i1 %i.a, label %bb.b, label %vector.ph

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #16, !inline_history !30
  %i.e = trunc i64 %i.d to i32
  store i32 %i.e, ptr @iterations, align 4, !tbaa !4
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %vector.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = tail call double @strtod(ptr noundef nonnull captures(none) %i.g, ptr noundef null) #16, !inline_history !31
  store double %i.h, ptr @init_value, align 8, !tbaa !32
  br label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.c, %bb.a
  %i.i = load double, ptr @init_value, align 8, !tbaa !32
  %i.j = fptosi double %i.i to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 10 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.4, %vector.body ] ; 6 uses
  %i.k = shl i64 %index, 2
  %i.l = getelementptr inbounds nuw i8, ptr @data32, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.l, align 16, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.m, align 16, !tbaa !4
  %index.next = shl i64 %index, 2
  %i.n = getelementptr i8, ptr @data32, i64 %index.next ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = getelementptr i8, ptr %i.n, i64 48
  store <4 x i32> %broadcast.splat, ptr %i.o, align 16, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.p, align 16, !tbaa !4
  %index.next.1 = shl i64 %index, 2
  %i.q = getelementptr i8, ptr @data32, i64 %index.next.1 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 64
  %i.s = getelementptr i8, ptr %i.q, i64 80
  store <4 x i32> %broadcast.splat, ptr %i.r, align 16, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.s, align 16, !tbaa !4
  %index.next.2 = shl i64 %index, 2
  %i.t = getelementptr i8, ptr @data32, i64 %index.next.2 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 96
  %i.v = getelementptr i8, ptr %i.t, i64 112
  store <4 x i32> %broadcast.splat, ptr %i.u, align 16, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.v, align 16, !tbaa !4
  %index.next.3 = shl i64 %index, 2
  %i.w = getelementptr i8, ptr @data32, i64 %index.next.3 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 128
  %i.y = getelementptr i8, ptr %i.w, i64 144
  store <4 x i32> %broadcast.splat, ptr %i.x, align 16, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.y, align 16, !tbaa !4
  %index.next.4 = add nuw nsw i64 %index, 40      ; 2 uses
  %i.z = icmp eq i64 %index.next.4, 8000
  br i1 %i.z, label %_Z4fillIPiiEvT_S1_T0_.exit, label %vector.body, !llvm.loop !33

_Z4fillIPiiEvT_S1_T0_.exit:                       ; preds = %vector.body
  tail call void @_ZN14for_loop_testsILi28EiE7do_testEPKiPKc(ptr noundef nonnull @data32, ptr noundef nonnull @.str.11)
  tail call void @_Z27test_for_loop_unroll_factorILi29EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2800))
  tail call void @_Z27test_for_loop_unroll_factorILi30EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2900))
  tail call void @_Z27test_for_loop_unroll_factorILi31EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3000))
  tail call void @_Z27test_for_loop_unroll_factorILi32EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3100))
  tail call void @_ZN16while_loop_testsILi28EiE7do_testEPKiPKc(ptr noundef nonnull @data32, ptr noundef nonnull @.str.12)
  tail call void @_Z29test_while_loop_unroll_factorILi29EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2800))
  tail call void @_Z29test_while_loop_unroll_factorILi30EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2900))
  tail call void @_Z29test_while_loop_unroll_factorILi31EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3000))
  tail call void @_Z29test_while_loop_unroll_factorILi32EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3100))
  tail call void @_ZN13do_loop_testsILi28EiE7do_testEPKiPKc(ptr noundef nonnull @data32, ptr noundef nonnull @.str.13)
  tail call void @_Z26test_do_loop_unroll_factorILi29EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2800))
  tail call void @_Z26test_do_loop_unroll_factorILi30EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2900))
  tail call void @_Z26test_do_loop_unroll_factorILi31EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3000))
  tail call void @_Z26test_do_loop_unroll_factorILi32EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3100))
  tail call void @_ZN15goto_loop_testsILi28EiE7do_testEPKiPKc(ptr noundef nonnull @data32, ptr noundef nonnull @.str.14)
  tail call void @_Z28test_goto_loop_unroll_factorILi29EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2800))
  tail call void @_Z28test_goto_loop_unroll_factorILi30EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2900))
  tail call void @_Z28test_goto_loop_unroll_factorILi31EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3000))
  tail call void @_Z28test_goto_loop_unroll_factorILi32EiEvPKT0_iPKc(ptr noundef nonnull @data32, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3100))
  %i.aa = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ab = sdiv i32 %i.aa, 4
  store i32 %i.ab, ptr @iterations, align 4, !tbaa !4
  %i.ac = load double, ptr @init_value, align 8, !tbaa !32
  %broadcast.splatinsert6 = insertelement <2 x double> poison, double %i.ac, i64 0
  %broadcast.splat7 = shufflevector <2 x double> %broadcast.splatinsert6, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  br label %vector.body8

vector.body8:                                     ; preds = %vector.body8, %_Z4fillIPiiEvT_S1_T0_.exit
  %index9 = phi i64 [ 0, %_Z4fillIPiiEvT_S1_T0_.exit ], [ %index.next10.4, %vector.body8 ] ; 6 uses
  %i.ad = shl i64 %index9, 3
  %i.ae = getelementptr inbounds nuw i8, ptr @dataDouble, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x double> %broadcast.splat7, ptr %i.ae, align 16, !tbaa !32
  store <2 x double> %broadcast.splat7, ptr %i.af, align 16, !tbaa !32
  %index.next10 = shl i64 %index9, 3
  %i.ag = getelementptr i8, ptr @dataDouble, i64 %index.next10 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %i.ai = getelementptr i8, ptr %i.ag, i64 48
  store <2 x double> %broadcast.splat7, ptr %i.ah, align 16, !tbaa !32
  store <2 x double> %broadcast.splat7, ptr %i.ai, align 16, !tbaa !32
  %index.next10.1 = shl i64 %index9, 3
  %i.aj = getelementptr i8, ptr @dataDouble, i64 %index.next10.1 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 64
  %i.al = getelementptr i8, ptr %i.aj, i64 80
  store <2 x double> %broadcast.splat7, ptr %i.ak, align 16, !tbaa !32
  store <2 x double> %broadcast.splat7, ptr %i.al, align 16, !tbaa !32
  %index.next10.2 = shl i64 %index9, 3
  %i.am = getelementptr i8, ptr @dataDouble, i64 %index.next10.2 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 96
  %i.ao = getelementptr i8, ptr %i.am, i64 112
  store <2 x double> %broadcast.splat7, ptr %i.an, align 16, !tbaa !32
  store <2 x double> %broadcast.splat7, ptr %i.ao, align 16, !tbaa !32
  %index.next10.3 = shl i64 %index9, 3
  %i.ap = getelementptr i8, ptr @dataDouble, i64 %index.next10.3 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 128
  %i.ar = getelementptr i8, ptr %i.ap, i64 144
  store <2 x double> %broadcast.splat7, ptr %i.aq, align 16, !tbaa !32
  store <2 x double> %broadcast.splat7, ptr %i.ar, align 16, !tbaa !32
  %index.next10.4 = add nuw nsw i64 %index9, 20   ; 2 uses
  %i.as = icmp eq i64 %index.next10.4, 8000
  br i1 %i.as, label %_Z4fillIPddEvT_S1_T0_.exit, label %vector.body8, !llvm.loop !36

_Z4fillIPddEvT_S1_T0_.exit:                       ; preds = %vector.body8
  tail call void @_ZN14for_loop_testsILi28EdE7do_testEPKdPKc(ptr noundef nonnull @dataDouble, ptr noundef nonnull @.str.15)
  tail call void @_Z27test_for_loop_unroll_factorILi29EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2800))
  tail call void @_Z27test_for_loop_unroll_factorILi30EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2900))
  tail call void @_Z27test_for_loop_unroll_factorILi31EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3000))
  tail call void @_Z27test_for_loop_unroll_factorILi32EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3100))
  tail call void @_ZN16while_loop_testsILi28EdE7do_testEPKdPKc(ptr noundef nonnull @dataDouble, ptr noundef nonnull @.str.16)
  tail call void @_Z29test_while_loop_unroll_factorILi29EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2800))
  tail call void @_Z29test_while_loop_unroll_factorILi30EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2900))
  tail call void @_Z29test_while_loop_unroll_factorILi31EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3000))
  tail call void @_Z29test_while_loop_unroll_factorILi32EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3100))
  tail call void @_ZN13do_loop_testsILi28EdE7do_testEPKdPKc(ptr noundef nonnull @dataDouble, ptr noundef nonnull @.str.17)
  tail call void @_Z26test_do_loop_unroll_factorILi29EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2800))
  tail call void @_Z26test_do_loop_unroll_factorILi30EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2900))
  tail call void @_Z26test_do_loop_unroll_factorILi31EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3000))
  tail call void @_Z26test_do_loop_unroll_factorILi32EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3100))
  tail call void @_ZN15goto_loop_testsILi28EdE7do_testEPKdPKc(ptr noundef nonnull @dataDouble, ptr noundef nonnull @.str.18)
  tail call void @_Z28test_goto_loop_unroll_factorILi29EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2800))
  tail call void @_Z28test_goto_loop_unroll_factorILi30EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 2900))
  tail call void @_Z28test_goto_loop_unroll_factorILi31EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3000))
  tail call void @_Z28test_goto_loop_unroll_factorILi32EdEvPKT0_iPKc(ptr noundef nonnull @dataDouble, i32 noundef 8000, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @temp_string, i64 3100))
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z27test_for_loop_unroll_factorILi32EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 31
  br i1 %i.d, label %.preheader48.us.preheader, label %.preheader48.lr.ph.split

.preheader48.us.preheader:                        ; preds = %.preheader48.lr.ph
  %i.e = add nsw i32 %1, -31
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -32                      ; 3 uses
  %i.h = and i32 %i.g, -32
  %i.i = and i32 %i.g, -32
  %i.j = add nuw nsw i32 %i.i, 32
  %i.k = add nuw nsw i32 %i.h, 32
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = icmp slt i32 %i.j, %1
  %3 = and i32 %i.g, -32
  %i.n = sub i32 %1, %3
  %4 = add i32 %i.n, -33                          ; 2 uses
  %i.o = zext i32 %4 to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check102 = icmp ult i32 %4, 7
  %n.vec105 = and i64 %i.p, 8589934584            ; 3 uses
  %i.q = add nuw nsw i64 %n.vec105, %i.l
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.l
  %cmp.n115 = icmp eq i64 %i.p, %n.vec105
  br label %.preheader48.us

.preheader48.us:                                  ; preds = %.preheader48.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %.01256.us = phi i32 [ %i.y, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader48.us.preheader ]
  br label %bb.c

._crit_edge.us:                                   ; preds = %.lr.ph54.us, %middle.block113, %..preheader_crit_edge.us
  %.117.lcssa.us = phi i32 [ %i.am, %..preheader_crit_edge.us ], [ %i.ax, %middle.block113 ], [ %i.af, %.lr.ph54.us ]
  %i.r = load double, ptr @init_value, align 8, !tbaa !32
  %i.s = fptosi double %i.r to i32
  %i.t = mul i32 %i.s, -1564285888
  %i.u = add i32 %i.t, -1269844480
  %i.v = icmp eq i32 %.117.lcssa.us, %i.u
  br i1 %i.v, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.w = load i32, ptr @current_test, align 4, !tbaa !4
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.w) ; 0 uses
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.y = add nuw nsw i32 %.01256.us, 1            ; 2 uses
  %i.z = load i32, ptr @iterations, align 4, !tbaa !4
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %.preheader48.us, label %._crit_edge57, !llvm.loop !37

.lr.ph54.us:                                      ; preds = %.lr.ph54.us.preheader118, %.lr.ph54.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %.lr.ph54.us ], [ %indvars.iv76.ph, %.lr.ph54.us.preheader118 ] ; 2 uses
  %.11752.us = phi i32 [ %i.af, %.lr.ph54.us ], [ %.11752.us.ph, %.lr.ph54.us.preheader118 ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = mul i32 %i.ac, 269850533
  %i.ae = add i32 %.11752.us, -1138325064
  %i.af = add i32 %i.ae, %i.ad                    ; 2 uses
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.ag = trunc nuw i64 %indvars.iv.next77 to i32
  %i.ah = icmp sgt i32 %1, %i.ag
  br i1 %i.ah, label %.lr.ph54.us, label %._crit_edge.us, !llvm.loop !38

bb.c:                                             ; preds = %.preheader48.us, %bb.c
  %indvars.iv73 = phi i64 [ 0, %.preheader48.us ], [ %indvars.iv.next74, %bb.c ] ; 2 uses
  %.01649.us = phi i32 [ 0, %.preheader48.us ], [ %i.am, %bb.c ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv73
  %i.aj = load <32 x i32>, ptr %i.ai, align 4, !tbaa !4
  %i.ak = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.aj)
  %reass.mul.us = mul i32 %i.ak, 269850533
  %i.al = add i32 %.01649.us, -2066663680
  %i.am = add i32 %i.al, %reass.mul.us            ; 4 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 32 ; 2 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next74, %i.f
  br i1 %i.an, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !39

..preheader_crit_edge.us:                         ; preds = %bb.c
  br i1 %i.m, label %.lr.ph54.us.preheader, label %._crit_edge.us

.lr.ph54.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check102, label %.lr.ph54.us.preheader118, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph54.us.preheader
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.am, i64 0
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next112, %vector.body106 ] ; 2 uses
  %vec.phi108 = phi <4 x i32> [ %i.ao, %vector.ph103 ], [ %i.au, %vector.body106 ]
  %vec.phi109 = phi <4 x i32> [ zeroinitializer, %vector.ph103 ], [ %i.av, %vector.body106 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index107 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load110 = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load111 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4
  %i.aq = mul <4 x i32> %wide.load110, splat (i32 269850533)
  %i.ar = mul <4 x i32> %wide.load111, splat (i32 269850533)
  %i.as = add <4 x i32> %vec.phi108, splat (i32 -1138325064)
  %i.at = add <4 x i32> %vec.phi109, splat (i32 -1138325064)
  %i.au = add <4 x i32> %i.as, %i.aq              ; 2 uses
  %i.av = add <4 x i32> %i.at, %i.ar              ; 2 uses
  %index.next112 = add nuw i64 %index107, 8       ; 2 uses
  %i.aw = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.aw, label %middle.block113, label %vector.body106, !llvm.loop !40

middle.block113:                                  ; preds = %vector.body106
  %bin.rdx114 = add <4 x i32> %i.av, %i.au
  %i.ax = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx114) ; 2 uses
  br i1 %cmp.n115, label %._crit_edge.us, label %.lr.ph54.us.preheader118

.lr.ph54.us.preheader118:                         ; preds = %.lr.ph54.us.preheader, %middle.block113
  %indvars.iv76.ph = phi i64 [ %i.l, %.lr.ph54.us.preheader ], [ %i.q, %middle.block113 ]
  %.11752.us.ph = phi i32 [ %i.am, %.lr.ph54.us.preheader ], [ %i.ax, %middle.block113 ]
  br label %.lr.ph54.us

.preheader48.lr.ph.split:                         ; preds = %.preheader48.lr.ph
  %i.ay = icmp sgt i32 %1, 0
  br i1 %i.ay, label %.preheader48.us58.preheader, label %.preheader48.preheader

.preheader48.preheader:                           ; preds = %.preheader48.lr.ph.split
  %.pre79 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader48

.preheader48.us58.preheader:                      ; preds = %.preheader48.lr.ph.split
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = icmp eq i64 %n.vec, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = icmp eq i64 %n.vec, 16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader48.us58

.preheader48.us58:                                ; preds = %.preheader48.us58.preheader, %_Z9check_sumIiEvT_.exit.us61
  %i.bg = phi i32 [ %i.ca, %_Z9check_sumIiEvT_.exit.us61 ], [ %i.b, %.preheader48.us58.preheader ]
  %.01256.us59 = phi i32 [ %i.cb, %_Z9check_sumIiEvT_.exit.us61 ], [ 0, %.preheader48.us58.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader48.us58
  %wide.load = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %wide.load100 = load <4 x i32>, ptr %i.az, align 4, !tbaa !4
  %i.bh = mul <4 x i32> %wide.load, splat (i32 269850533) ; 2 uses
  %i.bi = mul <4 x i32> %wide.load100, splat (i32 269850533) ; 2 uses
  %i.bj = add <4 x i32> %i.bh, splat (i32 -1138325064)
  %i.bk = add <4 x i32> %i.bi, splat (i32 -1138325064)
  br i1 %i.ba, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %wide.load.1 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !4
  %wide.load100.1 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !4
  %i.bl = mul <4 x i32> %wide.load.1, splat (i32 269850533)
  %i.bm = mul <4 x i32> %wide.load100.1, splat (i32 269850533)
  %i.bn = add <4 x i32> %i.bh, splat (i32 2018317168)
  %i.bo = add <4 x i32> %i.bi, splat (i32 2018317168)
  %i.bp = add <4 x i32> %i.bn, %i.bl              ; 2 uses
  %i.bq = add <4 x i32> %i.bo, %i.bm              ; 2 uses
  br i1 %i.bd, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %i.be, align 4, !tbaa !4
  %wide.load100.2 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.br = mul <4 x i32> %wide.load.2, splat (i32 269850533)
  %i.bs = mul <4 x i32> %wide.load100.2, splat (i32 269850533)
  %i.bt = add <4 x i32> %i.bp, splat (i32 -1138325064)
  %i.bu = add <4 x i32> %i.bq, splat (i32 -1138325064)
  %i.bv = add <4 x i32> %i.bt, %i.br
  %i.bw = add <4 x i32> %i.bu, %i.bs
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.body
  %.lcssa124 = phi <4 x i32> [ %i.bj, %vector.body ], [ %i.bp, %vector.body.1 ], [ %i.bv, %vector.body.2 ]
  %.lcssa123 = phi <4 x i32> [ %i.bk, %vector.body ], [ %i.bq, %vector.body.1 ], [ %i.bw, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa123, %.lcssa124
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us65, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader48.us58, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader48.us58 ], [ %n.vec, %middle.block ]
  %.11752.us63.ph = phi i32 [ 0, %.preheader48.us58 ], [ %i.bx, %middle.block ]
  br label %scalar.ph

bb.d:                                             ; preds = %._crit_edge.us65
  %i.by = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.by) ; 0 uses
  %.pre81 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us61

_Z9check_sumIiEvT_.exit.us61:                     ; preds = %bb.d, %._crit_edge.us65
  %i.ca = phi i32 [ %.pre81, %bb.d ], [ %i.bg, %._crit_edge.us65 ] ; 2 uses
  %i.cb = add nuw nsw i32 %.01256.us59, 1         ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.ca
  br i1 %i.cc, label %.preheader48.us58, label %._crit_edge57, !llvm.loop !37

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.11752.us63 = phi i32 [ %i.ch, %scalar.ph ], [ %.11752.us63.ph, %scalar.ph.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cf = mul i32 %i.ce, 269850533
  %i.cg = add i32 %.11752.us63, -1138325064
  %i.ch = add i32 %i.cg, %i.cf                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us65, label %scalar.ph, !llvm.loop !41

._crit_edge.us65:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa98 = phi i32 [ %i.bx, %middle.block ], [ %i.ch, %scalar.ph ]
  %i.ci = load double, ptr @init_value, align 8, !tbaa !32
  %i.cj = fptosi double %i.ci to i32
  %i.ck = mul i32 %i.cj, -1564285888
  %i.cl = add i32 %i.ck, -1269844480
  %i.cm = icmp eq i32 %.lcssa98, %i.cl
  br i1 %i.cm, label %_Z9check_sumIiEvT_.exit.us61, label %bb.d

.preheader48:                                     ; preds = %.preheader48.preheader, %_Z9check_sumIiEvT_.exit
  %i.cn = phi i32 [ %i.cu, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader48.preheader ]
  %i.co = phi double [ %i.cv, %_Z9check_sumIiEvT_.exit ], [ %.pre79, %.preheader48.preheader ] ; 2 uses
end_hunk_0
begin_hunk_1_@_Z27test_for_loop_unroll_factorILi17EiEvPKT0_iPKc:bb.a
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %index96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load99 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %wide.load100 = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %i.at = mul <4 x i32> %wide.load99, splat (i32 269850533)
  %i.au = mul <4 x i32> %wide.load100, splat (i32 269850533)
  %i.av = add <4 x i32> %vec.phi97, splat (i32 -1138325064)
  %i.aw = add <4 x i32> %vec.phi98, splat (i32 -1138325064)
  %i.ax = add <4 x i32> %i.av, %i.at              ; 2 uses
  %i.ay = add <4 x i32> %i.aw, %i.au              ; 2 uses
  %index.next101 = add nuw i64 %index96, 8        ; 2 uses
  %i.az = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.az, label %middle.block102, label %vector.body95, !llvm.loop !115

middle.block102:                                  ; preds = %vector.body95
  %bin.rdx103 = add <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx103) ; 2 uses
  br i1 %cmp.n104, label %._crit_edge.us, label %.lr.ph38.us.preheader107

.lr.ph38.us.preheader107:                         ; preds = %.lr.ph38.us.preheader, %middle.block102
  %indvars.iv62.ph = phi i64 [ %indvars.iv60, %.lr.ph38.us.preheader ], [ %i.ao, %middle.block102 ]
  %.11636.us.ph = phi i32 [ %i.ak, %.lr.ph38.us.preheader ], [ %i.ba, %middle.block102 ]
  br label %.lr.ph38.us

.preheader32.lr.ph.split:                         ; preds = %.preheader32.lr.ph
  %i.bb = icmp sgt i32 %1, 0
  br i1 %i.bb, label %.preheader32.us42.preheader, label %.preheader32.preheader

.preheader32.preheader:                           ; preds = %.preheader32.lr.ph.split
  %.pre65 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader32

.preheader32.us42.preheader:                      ; preds = %.preheader32.lr.ph.split
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = icmp eq i64 %n.vec, 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader32.us42

.preheader32.us42:                                ; preds = %.preheader32.us42.preheader, %_Z9check_sumIiEvT_.exit.us45
  %i.bg = phi i32 [ %i.bu, %_Z9check_sumIiEvT_.exit.us45 ], [ %i.b, %.preheader32.us42.preheader ]
  %.01240.us43 = phi i32 [ %i.bv, %_Z9check_sumIiEvT_.exit.us45 ], [ 0, %.preheader32.us42.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader32.us42
  %wide.load = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %wide.load88 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !4
  %i.bh = mul <4 x i32> %wide.load, splat (i32 269850533) ; 2 uses
  %i.bi = mul <4 x i32> %wide.load88, splat (i32 269850533) ; 2 uses
  %i.bj = add <4 x i32> %i.bh, splat (i32 -1138325064)
  %i.bk = add <4 x i32> %i.bi, splat (i32 -1138325064)
  br i1 %i.bd, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %wide.load.1 = load <4 x i32>, ptr %i.be, align 4, !tbaa !4
  %wide.load88.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.bl = mul <4 x i32> %wide.load.1, splat (i32 269850533)
  %i.bm = mul <4 x i32> %wide.load88.1, splat (i32 269850533)
  %i.bn = add <4 x i32> %i.bh, splat (i32 2018317168)
  %i.bo = add <4 x i32> %i.bi, splat (i32 2018317168)
  %i.bp = add <4 x i32> %i.bn, %i.bl
  %i.bq = add <4 x i32> %i.bo, %i.bm
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.body
  %.lcssa113 = phi <4 x i32> [ %i.bj, %vector.body ], [ %i.bp, %vector.body.1 ]
  %.lcssa112 = phi <4 x i32> [ %i.bk, %vector.body ], [ %i.bq, %vector.body.1 ]
  %bin.rdx = add <4 x i32> %.lcssa112, %.lcssa113
  %i.br = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us49, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader32.us42, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader32.us42 ], [ %n.vec, %middle.block ]
  %.11636.us47.ph = phi i32 [ 0, %.preheader32.us42 ], [ %i.br, %middle.block ]
  br label %scalar.ph

bb.d:                                             ; preds = %._crit_edge.us49
  %i.bs = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bs) ; 0 uses
  %.pre67 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us45

_Z9check_sumIiEvT_.exit.us45:                     ; preds = %bb.d, %._crit_edge.us49
  %i.bu = phi i32 [ %.pre67, %bb.d ], [ %i.bg, %._crit_edge.us49 ] ; 2 uses
  %i.bv = add nuw nsw i32 %.01240.us43, 1         ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %i.bu
  br i1 %i.bw, label %.preheader32.us42, label %._crit_edge41, !llvm.loop !112

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.11636.us47 = phi i32 [ %i.cb, %scalar.ph ], [ %.11636.us47.ph, %scalar.ph.preheader ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = mul i32 %i.by, 269850533
  %i.ca = add i32 %.11636.us47, -1138325064
  %i.cb = add i32 %i.ca, %i.bz                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us49, label %scalar.ph, !llvm.loop !116

._crit_edge.us49:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa86 = phi i32 [ %i.br, %middle.block ], [ %i.cb, %scalar.ph ]
  %i.cc = load double, ptr @init_value, align 8, !tbaa !32
  %i.cd = fptosi double %i.cc to i32
  %i.ce = mul i32 %i.cd, -1564285888
  %i.cf = add i32 %i.ce, -1269844480
  %i.cg = icmp eq i32 %.lcssa86, %i.cf
  br i1 %i.cg, label %_Z9check_sumIiEvT_.exit.us45, label %bb.d

.preheader32:                                     ; preds = %.preheader32.preheader, %_Z9check_sumIiEvT_.exit
  %i.ch = phi i32 [ %i.co, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader32.preheader ]
  %i.ci = phi double [ %i.cp, %_Z9check_sumIiEvT_.exit ], [ %.pre65, %.preheader32.preheader ] ; 2 uses
  %.01240 = phi i32 [ %i.cq, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader32.preheader ]
  %i.cj = fptosi double %i.ci to i32
  %i.ck = mul i32 %i.cj, -1564285888
  %i.cl = icmp eq i32 %i.ck, 1269844480
  br i1 %i.cl, label %_Z9check_sumIiEvT_.exit, label %bb.e

bb.e:                                             ; preds = %.preheader32
  %i.cm = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cm) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre66 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader32, %bb.e
  %i.co = phi i32 [ %i.ch, %.preheader32 ], [ %.pre66, %bb.e ] ; 2 uses
  %i.cp = phi double [ %i.ci, %.preheader32 ], [ %.pre, %bb.e ]
  %i.cq = add nuw nsw i32 %.01240, 1              ; 2 uses
  %i.cr = icmp slt i32 %i.cq, %i.co
  br i1 %i.cr, label %.preheader32, label %._crit_edge41, !llvm.loop !112

._crit_edge41:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us45, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cs = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cs, ptr @end_time, align 8, !tbaa !27
  %i.ct = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cu = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cv = icmp ne ptr %i.cu, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cw = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cw, %.pre.i
  %or.cond.i = select i1 %i.cv, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge41
  %i.cx = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cx, ptr @allocated_results, align 4, !tbaa !4
  %i.cy = sext i32 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 4
  %i.da = tail call ptr @realloc(ptr noundef %i.cu, i64 noundef %i.cz) #13 ; 3 uses
  store ptr %i.da, ptr @results, align 8, !tbaa !8
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.g:                                             ; preds = %bb.f
  %i.dc = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.dc) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge41, %._crit_edge.i
  %i.de = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cw, %._crit_edge41 ] ; 2 uses
  %i.df = phi ptr [ %i.da, %._crit_edge.i ], [ %i.cu, %._crit_edge41 ]
  %i.dg = sub nsw i64 %i.cs, %i.ct
  %i.dh = sitofp i64 %i.dg to double
  %i.di = fdiv double %i.dh, 1.000000e+06
  %i.dj = sext i32 %i.de to i64
  %i.dk = getelementptr inbounds [16 x i8], ptr %i.df, i64 %i.dj ; 2 uses
  store double %i.di, ptr %i.dk, align 8, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %2, ptr %i.dl, align 8, !tbaa !15
  %i.dm = add nsw i32 %i.de, 1
  store i32 %i.dm, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z27test_for_loop_unroll_factorILi16EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader31.lr.ph, label %._crit_edge40

.preheader31.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 15
  br i1 %i.d, label %.preheader31.us.preheader, label %.preheader31.lr.ph.split

.preheader31.us.preheader:                        ; preds = %.preheader31.lr.ph
  %i.e = add nsw i32 %1, -15
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -16                      ; 3 uses
  %i.h = and i32 %i.g, -16
  %i.i = and i32 %i.g, -16
  %i.j = add nuw nsw i32 %i.i, 16
  %i.k = add nuw nsw i32 %i.h, 16
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = icmp slt i32 %i.j, %1
  %3 = and i32 %i.g, -16
  %i.n = sub i32 %1, %3
  %4 = add i32 %i.n, -17                          ; 2 uses
  %i.o = zext i32 %4 to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %4, 7
  %n.vec = and i64 %i.p, 8589934584               ; 3 uses
  %i.q = add nuw nsw i64 %n.vec, %i.l
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.l
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.preheader31.us

.preheader31.us:                                  ; preds = %.preheader31.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.r = phi i32 [ %i.z, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader31.us.preheader ]
  %.01239.us = phi i32 [ %i.aa, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader31.us.preheader ]
  br label %bb.c

._crit_edge.us:                                   ; preds = %.lr.ph37.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.an, %..preheader_crit_edge.us ], [ %i.ay, %middle.block ], [ %i.ag, %.lr.ph37.us ]
  %i.s = load double, ptr @init_value, align 8, !tbaa !32
  %i.t = fptosi double %i.s to i32
  %i.u = mul i32 %i.t, -1564285888
  %i.v = add i32 %i.u, -1269844480
  %i.w = icmp eq i32 %.116.lcssa.us, %i.v
  br i1 %i.w, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.x = load i32, ptr @current_test, align 4, !tbaa !4
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.x) ; 0 uses
  %.pre65 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.z = phi i32 [ %.pre65, %bb.b ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.aa = add nuw nsw i32 %.01239.us, 1           ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.z
  br i1 %i.ab, label %.preheader31.us, label %._crit_edge40, !llvm.loop !117

.lr.ph37.us:                                      ; preds = %.lr.ph37.us.preheader86, %.lr.ph37.us
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.lr.ph37.us ], [ %indvars.iv59.ph, %.lr.ph37.us.preheader86 ] ; 2 uses
  %.11635.us = phi i32 [ %i.ag, %.lr.ph37.us ], [ %.11635.us.ph, %.lr.ph37.us.preheader86 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv59
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = mul i32 %i.ad, 269850533
  %i.af = add i32 %.11635.us, -1138325064
  %i.ag = add i32 %i.af, %i.ae                    ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ah = trunc nuw i64 %indvars.iv.next60 to i32
  %i.ai = icmp sgt i32 %1, %i.ah
  br i1 %i.ai, label %.lr.ph37.us, label %._crit_edge.us, !llvm.loop !118

bb.c:                                             ; preds = %.preheader31.us, %bb.c
  %indvars.iv56 = phi i64 [ 0, %.preheader31.us ], [ %indvars.iv.next57, %bb.c ] ; 2 uses
  %.01532.us = phi i32 [ 0, %.preheader31.us ], [ %i.an, %bb.c ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv56
  %i.ak = load <16 x i32>, ptr %i.aj, align 4, !tbaa !4
  %i.al = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ak)
  %reass.mul.us = mul i32 %i.al, 269850533
  %i.am = add i32 %.01532.us, -1033331840
  %i.an = add i32 %i.am, %reass.mul.us            ; 4 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 16 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next57, %i.f
  br i1 %i.ao, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !119

..preheader_crit_edge.us:                         ; preds = %bb.c
  br i1 %i.m, label %.lr.ph37.us.preheader, label %._crit_edge.us

.lr.ph37.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph37.us.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph37.us.preheader
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.an, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi84 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load85 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.ar = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.as = mul <4 x i32> %wide.load85, splat (i32 269850533)
  %i.at = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.au = add <4 x i32> %vec.phi84, splat (i32 -1138325064)
  %i.av = add <4 x i32> %i.at, %i.ar              ; 2 uses
  %i.aw = add <4 x i32> %i.au, %i.as              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %i.ay = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph37.us.preheader86

.lr.ph37.us.preheader86:                          ; preds = %.lr.ph37.us.preheader, %middle.block
  %indvars.iv59.ph = phi i64 [ %i.l, %.lr.ph37.us.preheader ], [ %i.q, %middle.block ]
  %.11635.us.ph = phi i32 [ %i.an, %.lr.ph37.us.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph37.us

.preheader31.lr.ph.split:                         ; preds = %.preheader31.lr.ph
  %i.az = icmp sgt i32 %1, 0
  br i1 %i.az, label %.preheader31.us41.preheader, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %.preheader31.lr.ph.split
  %.pre62 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader31

.preheader31.us41.preheader:                      ; preds = %.preheader31.lr.ph.split
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ba = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod94 = icmp ne i64 %xtraiter, 0
  br label %.preheader31.us41

.preheader31.us41:                                ; preds = %.preheader31.us41.preheader, %_Z9check_sumIiEvT_.exit.us44
  %i.bb = phi i32 [ %i.be, %_Z9check_sumIiEvT_.exit.us44 ], [ %i.b, %.preheader31.us41.preheader ]
  %.01239.us42 = phi i32 [ %i.bf, %_Z9check_sumIiEvT_.exit.us44 ], [ 0, %.preheader31.us41.preheader ]
  br i1 %i.ba, label %.epil.preheader, label %.preheader31.us41.new

bb.d:                                             ; preds = %._crit_edge.us48
  %i.bc = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bc) ; 0 uses
  %.pre64 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us44

_Z9check_sumIiEvT_.exit.us44:                     ; preds = %bb.d, %._crit_edge.us48
  %i.be = phi i32 [ %.pre64, %bb.d ], [ %i.bb, %._crit_edge.us48 ] ; 2 uses
  %i.bf = add nuw nsw i32 %.01239.us42, 1         ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.be
  br i1 %i.bg, label %.preheader31.us41, label %._crit_edge40, !llvm.loop !117

.preheader31.us41.new:                            ; preds = %.preheader31.us41, %.preheader31.us41.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader31.us41.new ], [ 0, %.preheader31.us41 ] ; 5 uses
  %.11635.us46 = phi i32 [ %i.cd, %.preheader31.us41.new ], [ 0, %.preheader31.us41 ]
  %niter = phi i64 [ %niter.next.3, %.preheader31.us41.new ], [ 0, %.preheader31.us41 ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = mul i32 %i.bi, 269850533
  %i.bk = add i32 %.11635.us46, -1138325064
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = mul i32 %i.bo, 269850533
  %i.bq = add i32 %i.bl, -1138325064
  %i.br = add i32 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = mul i32 %i.bu, 269850533
  %i.bw = add i32 %i.br, -1138325064
  %i.bx = add i32 %i.bw, %i.bv
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = mul i32 %i.ca, 269850533
  %i.cc = add i32 %i.bx, -1138325064
  %i.cd = add i32 %i.cc, %i.cb                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us48.unr-lcssa, label %.preheader31.us41.new, !llvm.loop !121

._crit_edge.us48.unr-lcssa:                       ; preds = %.preheader31.us41.new
  br i1 %lcmp.mod.not, label %._crit_edge.us48, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us48.unr-lcssa, %.preheader31.us41
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader31.us41 ], [ %indvars.iv.next.3, %._crit_edge.us48.unr-lcssa ]
  %.11635.us46.epil.init = phi i32 [ 0, %.preheader31.us41 ], [ %i.cd, %._crit_edge.us48.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %.11635.us46.epil = phi i32 [ %.11635.us46.epil.init, %.epil.preheader ], [ %i.ci, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = mul i32 %i.cf, 269850533
  %i.ch = add i32 %.11635.us46.epil, -1138325064
  %i.ci = add i32 %i.ch, %i.cg                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us48, label %bb.e, !llvm.loop !122

._crit_edge.us48:                                 ; preds = %bb.e, %._crit_edge.us48.unr-lcssa
  %.lcssa91 = phi i32 [ %i.cd, %._crit_edge.us48.unr-lcssa ], [ %i.ci, %bb.e ]
  %i.cj = load double, ptr @init_value, align 8, !tbaa !32
  %i.ck = fptosi double %i.cj to i32
  %i.cl = mul i32 %i.ck, -1564285888
  %i.cm = add i32 %i.cl, -1269844480
  %i.cn = icmp eq i32 %.lcssa91, %i.cm
  br i1 %i.cn, label %_Z9check_sumIiEvT_.exit.us44, label %bb.d

.preheader31:                                     ; preds = %.preheader31.preheader, %_Z9check_sumIiEvT_.exit
  %i.co = phi i32 [ %i.cv, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader31.preheader ]
  %i.cp = phi double [ %i.cw, %_Z9check_sumIiEvT_.exit ], [ %.pre62, %.preheader31.preheader ] ; 2 uses
  %.01239 = phi i32 [ %i.cx, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader31.preheader ]
  %i.cq = fptosi double %i.cp to i32
  %i.cr = mul i32 %i.cq, -1564285888
end_hunk_1
begin_hunk_2_@_Z27test_for_loop_unroll_factorILi9EiEvPKT0_iPKc:bb.a
middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph30.us.preheader82

.lr.ph30.us.preheader82:                          ; preds = %.lr.ph30.us.preheader, %middle.block
  %indvars.iv54.ph = phi i64 [ %indvars.iv52, %.lr.ph30.us.preheader ], [ %i.ao, %middle.block ]
  %.11628.us.ph = phi i32 [ %i.ak, %.lr.ph30.us.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph30.us

.preheader24.lr.ph.split:                         ; preds = %.preheader24.lr.ph
  %i.bb = icmp sgt i32 %1, 0
  br i1 %i.bb, label %.preheader24.us34.preheader, label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader24.lr.ph.split
  %.pre57 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader24

.preheader24.us34.preheader:                      ; preds = %.preheader24.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.2 = icmp eq i32 %1, 3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  %exitcond.not.3 = icmp eq i32 %1, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not.4 = icmp eq i32 %1, 5
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %exitcond.not.5 = icmp eq i32 %1, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %exitcond.not.6 = icmp eq i32 %1, 7
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.preheader24.us34

.preheader24.us34:                                ; preds = %.preheader24.us34.preheader, %_Z9check_sumIiEvT_.exit.us37
  %i.bj = phi i32 [ %i.bp, %_Z9check_sumIiEvT_.exit.us37 ], [ %i.b, %.preheader24.us34.preheader ]
  %.01232.us35 = phi i32 [ %i.bq, %_Z9check_sumIiEvT_.exit.us37 ], [ 0, %.preheader24.us34.preheader ]
  %i.bk = load i32, ptr %0, align 4, !tbaa !4
  %i.bl = mul i32 %i.bk, 269850533                ; 2 uses
  %i.bm = add i32 %i.bl, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us41, label %bb.e

bb.d:                                             ; preds = %._crit_edge.us41
  %i.bn = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bn) ; 0 uses
  %.pre59 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us37

_Z9check_sumIiEvT_.exit.us37:                     ; preds = %bb.d, %._crit_edge.us41
  %i.bp = phi i32 [ %.pre59, %bb.d ], [ %i.bj, %._crit_edge.us41 ] ; 2 uses
  %i.bq = add nuw nsw i32 %.01232.us35, 1         ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.bp
  br i1 %i.br, label %.preheader24.us34, label %._crit_edge33, !llvm.loop !159

bb.e:                                             ; preds = %.preheader24.us34
  %i.bs = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bt = mul i32 %i.bs, 269850533
  %i.bu = add i32 %i.bl, 2018317168
  %i.bv = add i32 %i.bu, %i.bt                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bw = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bx = mul i32 %i.bw, 269850533
  %i.by = add i32 %i.bv, -1138325064
  %i.bz = add i32 %i.by, %i.bx                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = load i32, ptr %i.be, align 4, !tbaa !4
  %i.cb = mul i32 %i.ca, 269850533
  %i.cc = add i32 %i.bz, -1138325064
  %i.cd = add i32 %i.cc, %i.cb                    ; 2 uses
  br i1 %exitcond.not.3, label %._crit_edge.us41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.cf = mul i32 %i.ce, 269850533
  %i.cg = add i32 %i.cd, -1138325064
  %i.ch = add i32 %i.cg, %i.cf                    ; 2 uses
  br i1 %exitcond.not.4, label %._crit_edge.us41, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.cj = mul i32 %i.ci, 269850533
  %i.ck = add i32 %i.ch, -1138325064
  %i.cl = add i32 %i.ck, %i.cj                    ; 2 uses
  br i1 %exitcond.not.5, label %._crit_edge.us41, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.cn = mul i32 %i.cm, 269850533
  %i.co = add i32 %i.cl, -1138325064
  %i.cp = add i32 %i.co, %i.cn                    ; 2 uses
  br i1 %exitcond.not.6, label %._crit_edge.us41, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.cr = mul i32 %i.cq, 269850533
  %i.cs = add i32 %i.cp, -1138325064
  %i.ct = add i32 %i.cs, %i.cr
  br label %._crit_edge.us41

._crit_edge.us41:                                 ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.preheader24.us34
  %.lcssa87 = phi i32 [ %i.bm, %.preheader24.us34 ], [ %i.bv, %bb.e ], [ %i.bz, %bb.f ], [ %i.cd, %bb.g ], [ %i.ch, %bb.h ], [ %i.cl, %bb.i ], [ %i.cp, %bb.j ], [ %i.ct, %bb.k ]
  %i.cu = load double, ptr @init_value, align 8, !tbaa !32
  %i.cv = fptosi double %i.cu to i32
  %i.cw = mul i32 %i.cv, -1564285888
  %i.cx = add i32 %i.cw, -1269844480
  %i.cy = icmp eq i32 %.lcssa87, %i.cx
  br i1 %i.cy, label %_Z9check_sumIiEvT_.exit.us37, label %bb.d

.preheader24:                                     ; preds = %.preheader24.preheader, %_Z9check_sumIiEvT_.exit
  %i.cz = phi i32 [ %i.dg, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader24.preheader ]
  %i.da = phi double [ %i.dh, %_Z9check_sumIiEvT_.exit ], [ %.pre57, %.preheader24.preheader ] ; 2 uses
  %.01232 = phi i32 [ %i.di, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader24.preheader ]
  %i.db = fptosi double %i.da to i32
  %i.dc = mul i32 %i.db, -1564285888
  %i.dd = icmp eq i32 %i.dc, 1269844480
  br i1 %i.dd, label %_Z9check_sumIiEvT_.exit, label %bb.l

bb.l:                                             ; preds = %.preheader24
  %i.de = load i32, ptr @current_test, align 4, !tbaa !4
  %i.df = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.de) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre58 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader24, %bb.l
  %i.dg = phi i32 [ %i.cz, %.preheader24 ], [ %.pre58, %bb.l ] ; 2 uses
  %i.dh = phi double [ %i.da, %.preheader24 ], [ %.pre, %bb.l ]
  %i.di = add nuw nsw i32 %.01232, 1              ; 2 uses
  %i.dj = icmp slt i32 %i.di, %i.dg
  br i1 %i.dj, label %.preheader24, label %._crit_edge33, !llvm.loop !159

._crit_edge33:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us37, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.dk = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.dk, ptr @end_time, align 8, !tbaa !27
  %i.dl = load i64, ptr @start_time, align 8, !tbaa !27
  %i.dm = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.dn = icmp ne ptr %i.dm, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.do = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.do, %.pre.i
  %or.cond.i = select i1 %i.dn, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge33
  %i.dp = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.dp, ptr @allocated_results, align 4, !tbaa !4
  %i.dq = sext i32 %i.dp to i64
  %i.dr = shl nsw i64 %i.dq, 4
  %i.ds = tail call ptr @realloc(ptr noundef %i.dm, i64 noundef %i.dr) #13 ; 3 uses
  store ptr %i.ds, ptr @results, align 8, !tbaa !8
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.n:                                             ; preds = %bb.m
  %i.du = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.dv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.du) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge33, %._crit_edge.i
  %i.dw = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.do, %._crit_edge33 ] ; 2 uses
  %i.dx = phi ptr [ %i.ds, %._crit_edge.i ], [ %i.dm, %._crit_edge33 ]
  %i.dy = sub nsw i64 %i.dk, %i.dl
  %i.dz = sitofp i64 %i.dy to double
  %i.ea = fdiv double %i.dz, 1.000000e+06
  %i.eb = sext i32 %i.dw to i64
  %i.ec = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.eb ; 2 uses
  store double %i.ea, ptr %i.ec, align 8, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %2, ptr %i.ed, align 8, !tbaa !15
  %i.ee = add nsw i32 %i.dw, 1
  store i32 %i.ee, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z27test_for_loop_unroll_factorILi8EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader23.lr.ph, label %._crit_edge32

.preheader23.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 7
  br i1 %i.d, label %.preheader23.us.preheader, label %.preheader23.lr.ph.split

.preheader23.us.preheader:                        ; preds = %.preheader23.lr.ph
  %i.e = add nsw i32 %1, -7
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -8                       ; 3 uses
  %i.h = and i32 %i.g, -8
  %i.i = and i32 %i.g, -8
  %i.j = add nuw nsw i32 %i.i, 8
  %i.k = add nuw nsw i32 %i.h, 8
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = icmp slt i32 %i.j, %1
  %3 = and i32 %i.g, -8
  %i.n = sub i32 %1, %3
  %4 = add i32 %i.n, -9                           ; 2 uses
  %i.o = zext i32 %4 to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %4, 7
  %n.vec = and i64 %i.p, 8589934584               ; 3 uses
  %i.q = add nuw nsw i64 %n.vec, %i.l
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.l
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.preheader23.us

.preheader23.us:                                  ; preds = %.preheader23.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.r = phi i32 [ %i.z, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader23.us.preheader ]
  %.01231.us = phi i32 [ %i.aa, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader23.us.preheader ]
  br label %bb.c

._crit_edge.us:                                   ; preds = %.lr.ph29.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.an, %..preheader_crit_edge.us ], [ %i.ay, %middle.block ], [ %i.ag, %.lr.ph29.us ]
  %i.s = load double, ptr @init_value, align 8, !tbaa !32
  %i.t = fptosi double %i.s to i32
  %i.u = mul i32 %i.t, -1564285888
  %i.v = add i32 %i.u, -1269844480
  %i.w = icmp eq i32 %.116.lcssa.us, %i.v
  br i1 %i.w, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.x = load i32, ptr @current_test, align 4, !tbaa !4
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.x) ; 0 uses
  %.pre57 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.z = phi i32 [ %.pre57, %bb.b ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.aa = add nuw nsw i32 %.01231.us, 1           ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.z
  br i1 %i.ab, label %.preheader23.us, label %._crit_edge32, !llvm.loop !163

.lr.ph29.us:                                      ; preds = %.lr.ph29.us.preheader78, %.lr.ph29.us
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph29.us ], [ %indvars.iv51.ph, %.lr.ph29.us.preheader78 ] ; 2 uses
  %.11627.us = phi i32 [ %i.ag, %.lr.ph29.us ], [ %.11627.us.ph, %.lr.ph29.us.preheader78 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv51
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = mul i32 %i.ad, 269850533
  %i.af = add i32 %.11627.us, -1138325064
  %i.ag = add i32 %i.af, %i.ae                    ; 2 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.ah = trunc nuw i64 %indvars.iv.next52 to i32
  %i.ai = icmp sgt i32 %1, %i.ah
  br i1 %i.ai, label %.lr.ph29.us, label %._crit_edge.us, !llvm.loop !164

bb.c:                                             ; preds = %.preheader23.us, %bb.c
  %indvars.iv48 = phi i64 [ 0, %.preheader23.us ], [ %indvars.iv.next49, %bb.c ] ; 2 uses
  %.01524.us = phi i32 [ 0, %.preheader23.us ], [ %i.an, %bb.c ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv48
  %i.ak = load <8 x i32>, ptr %i.aj, align 4, !tbaa !4
  %i.al = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ak)
  %reass.mul.us = mul i32 %i.al, 269850533
  %i.am = add i32 %.01524.us, -516665920
  %i.an = add i32 %i.am, %reass.mul.us            ; 4 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 8 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next49, %i.f
  br i1 %i.ao, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !165

..preheader_crit_edge.us:                         ; preds = %bb.c
  br i1 %i.m, label %.lr.ph29.us.preheader, label %._crit_edge.us

.lr.ph29.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph29.us.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph29.us.preheader
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.an, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi76 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load77 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.ar = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.as = mul <4 x i32> %wide.load77, splat (i32 269850533)
  %i.at = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.au = add <4 x i32> %vec.phi76, splat (i32 -1138325064)
  %i.av = add <4 x i32> %i.at, %i.ar              ; 2 uses
  %i.aw = add <4 x i32> %i.au, %i.as              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %i.ay = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph29.us.preheader78

.lr.ph29.us.preheader78:                          ; preds = %.lr.ph29.us.preheader, %middle.block
  %indvars.iv51.ph = phi i64 [ %i.l, %.lr.ph29.us.preheader ], [ %i.q, %middle.block ]
  %.11627.us.ph = phi i32 [ %i.an, %.lr.ph29.us.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph29.us

.preheader23.lr.ph.split:                         ; preds = %.preheader23.lr.ph
  %i.az = icmp sgt i32 %1, 0
  br i1 %i.az, label %.preheader23.us33.preheader, label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %.preheader23.lr.ph.split
  %.pre54 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader23

.preheader23.us33.preheader:                      ; preds = %.preheader23.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.2 = icmp eq i32 %1, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %exitcond.not.3 = icmp eq i32 %1, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not.4 = icmp eq i32 %1, 5
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20
  %exitcond.not.5 = icmp eq i32 %1, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.preheader23.us33

.preheader23.us33:                                ; preds = %.preheader23.us33.preheader, %_Z9check_sumIiEvT_.exit.us36
  %i.bg = phi i32 [ %i.bm, %_Z9check_sumIiEvT_.exit.us36 ], [ %i.b, %.preheader23.us33.preheader ]
  %.01231.us34 = phi i32 [ %i.bn, %_Z9check_sumIiEvT_.exit.us36 ], [ 0, %.preheader23.us33.preheader ]
  %i.bh = load i32, ptr %0, align 4, !tbaa !4
  %i.bi = mul i32 %i.bh, 269850533                ; 2 uses
  %i.bj = add i32 %i.bi, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us40, label %bb.e

bb.d:                                             ; preds = %._crit_edge.us40
  %i.bk = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bk) ; 0 uses
  %.pre56 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us36

_Z9check_sumIiEvT_.exit.us36:                     ; preds = %bb.d, %._crit_edge.us40
  %i.bm = phi i32 [ %.pre56, %bb.d ], [ %i.bg, %._crit_edge.us40 ] ; 2 uses
  %i.bn = add nuw nsw i32 %.01231.us34, 1         ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.bm
  br i1 %i.bo, label %.preheader23.us33, label %._crit_edge32, !llvm.loop !163

bb.e:                                             ; preds = %.preheader23.us33
  %i.bp = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bq = mul i32 %i.bp, 269850533
  %i.br = add i32 %i.bi, 2018317168
  %i.bs = add i32 %i.br, %i.bq                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bu = mul i32 %i.bt, 269850533
  %i.bv = add i32 %i.bs, -1138325064
  %i.bw = add i32 %i.bv, %i.bu                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us40, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.by = mul i32 %i.bx, 269850533
  %i.bz = add i32 %i.bw, -1138325064
  %i.ca = add i32 %i.bz, %i.by                    ; 2 uses
  br i1 %exitcond.not.3, label %._crit_edge.us40, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.cc = mul i32 %i.cb, 269850533
  %i.cd = add i32 %i.ca, -1138325064
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  br i1 %exitcond.not.4, label %._crit_edge.us40, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.cg = mul i32 %i.cf, 269850533
  %i.ch = add i32 %i.ce, -1138325064
  %i.ci = add i32 %i.ch, %i.cg                    ; 2 uses
  br i1 %exitcond.not.5, label %._crit_edge.us40, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.ck = mul i32 %i.cj, 269850533
  %i.cl = add i32 %i.ci, -1138325064
  %i.cm = add i32 %i.cl, %i.ck
  br label %._crit_edge.us40

._crit_edge.us40:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.preheader23.us33
  %.lcssa83 = phi i32 [ %i.bj, %.preheader23.us33 ], [ %i.bs, %bb.e ], [ %i.bw, %bb.f ], [ %i.ca, %bb.g ], [ %i.ce, %bb.h ], [ %i.ci, %bb.i ], [ %i.cm, %bb.j ]
  %i.cn = load double, ptr @init_value, align 8, !tbaa !32
  %i.co = fptosi double %i.cn to i32
  %i.cp = mul i32 %i.co, -1564285888
  %i.cq = add i32 %i.cp, -1269844480
  %i.cr = icmp eq i32 %.lcssa83, %i.cq
  br i1 %i.cr, label %_Z9check_sumIiEvT_.exit.us36, label %bb.d

.preheader23:                                     ; preds = %.preheader23.preheader, %_Z9check_sumIiEvT_.exit
  %i.cs = phi i32 [ %i.cz, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader23.preheader ]
  %i.ct = phi double [ %i.da, %_Z9check_sumIiEvT_.exit ], [ %.pre54, %.preheader23.preheader ] ; 2 uses
  %.01231 = phi i32 [ %i.db, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader23.preheader ]
  %i.cu = fptosi double %i.ct to i32
  %i.cv = mul i32 %i.cu, -1564285888
  %i.cw = icmp eq i32 %i.cv, 1269844480
  br i1 %i.cw, label %_Z9check_sumIiEvT_.exit, label %bb.k

bb.k:                                             ; preds = %.preheader23
end_hunk_2
begin_hunk_3_@_Z27test_for_loop_unroll_factorILi5EiEvPKT0_iPKc:bb.a
  %i.al = icmp samesign ult i64 %indvars.iv.next46, %i.f
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 5
  br i1 %i.al, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !177

..preheader_crit_edge.us:                         ; preds = %bb.c
  %i.am = trunc nuw nsw i64 %indvars.iv.next46 to i32
  %i.an = icmp sgt i32 %1, %i.am
  br i1 %i.an, label %.lr.ph26.us.preheader, label %._crit_edge.us

.lr.ph26.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph26.us.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.us.preheader
  %i.ao = add i64 %indvars.iv48, %n.vec
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ak, i64 0
  %i.aq = getelementptr [4 x i8], ptr %0, i64 %indvars.iv48
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi76 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %wide.load77 = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %i.at = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.au = mul <4 x i32> %wide.load77, splat (i32 269850533)
  %i.av = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.aw = add <4 x i32> %vec.phi76, splat (i32 -1138325064)
  %i.ax = add <4 x i32> %i.av, %i.at              ; 2 uses
  %i.ay = add <4 x i32> %i.aw, %i.au              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph26.us.preheader78

.lr.ph26.us.preheader78:                          ; preds = %.lr.ph26.us.preheader, %middle.block
  %indvars.iv50.ph = phi i64 [ %indvars.iv48, %.lr.ph26.us.preheader ], [ %i.ao, %middle.block ]
  %.11624.us.ph = phi i32 [ %i.ak, %.lr.ph26.us.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph26.us

.preheader20.lr.ph.split:                         ; preds = %.preheader20.lr.ph
  %i.bb = icmp sgt i32 %1, 0
  br i1 %i.bb, label %.preheader20.us30.preheader, label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader20.lr.ph.split
  %.pre53 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader20

.preheader20.us30.preheader:                      ; preds = %.preheader20.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.2 = icmp eq i32 %1, 3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %.preheader20.us30

.preheader20.us30:                                ; preds = %.preheader20.us30.preheader, %_Z9check_sumIiEvT_.exit.us33
  %i.bf = phi i32 [ %i.bl, %_Z9check_sumIiEvT_.exit.us33 ], [ %i.b, %.preheader20.us30.preheader ]
  %.01228.us31 = phi i32 [ %i.bm, %_Z9check_sumIiEvT_.exit.us33 ], [ 0, %.preheader20.us30.preheader ]
  %i.bg = load i32, ptr %0, align 4, !tbaa !4
  %i.bh = mul i32 %i.bg, 269850533                ; 2 uses
  %i.bi = add i32 %i.bh, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us37, label %bb.e

bb.d:                                             ; preds = %._crit_edge.us37
  %i.bj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bj) ; 0 uses
  %.pre55 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us33

_Z9check_sumIiEvT_.exit.us33:                     ; preds = %bb.d, %._crit_edge.us37
  %i.bl = phi i32 [ %.pre55, %bb.d ], [ %i.bf, %._crit_edge.us37 ] ; 2 uses
  %i.bm = add nuw nsw i32 %.01228.us31, 1         ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %.preheader20.us30, label %._crit_edge29, !llvm.loop !175

bb.e:                                             ; preds = %.preheader20.us30
  %i.bo = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bp = mul i32 %i.bo, 269850533
  %i.bq = add i32 %i.bh, 2018317168
  %i.br = add i32 %i.bq, %i.bp                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bt = mul i32 %i.bs, 269850533
  %i.bu = add i32 %i.br, -1138325064
  %i.bv = add i32 %i.bu, %i.bt                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us37, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bx = mul i32 %i.bw, 269850533
  %i.by = add i32 %i.bv, -1138325064
  %i.bz = add i32 %i.by, %i.bx
  br label %._crit_edge.us37

._crit_edge.us37:                                 ; preds = %bb.g, %bb.f, %bb.e, %.preheader20.us30
  %.lcssa83 = phi i32 [ %i.bi, %.preheader20.us30 ], [ %i.br, %bb.e ], [ %i.bv, %bb.f ], [ %i.bz, %bb.g ]
  %i.ca = load double, ptr @init_value, align 8, !tbaa !32
  %i.cb = fptosi double %i.ca to i32
  %i.cc = mul i32 %i.cb, -1564285888
  %i.cd = add i32 %i.cc, -1269844480
  %i.ce = icmp eq i32 %.lcssa83, %i.cd
  br i1 %i.ce, label %_Z9check_sumIiEvT_.exit.us33, label %bb.d

.preheader20:                                     ; preds = %.preheader20.preheader, %_Z9check_sumIiEvT_.exit
  %i.cf = phi i32 [ %i.cm, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader20.preheader ]
  %i.cg = phi double [ %i.cn, %_Z9check_sumIiEvT_.exit ], [ %.pre53, %.preheader20.preheader ] ; 2 uses
  %.01228 = phi i32 [ %i.co, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader20.preheader ]
  %i.ch = fptosi double %i.cg to i32
  %i.ci = mul i32 %i.ch, -1564285888
  %i.cj = icmp eq i32 %i.ci, 1269844480
  br i1 %i.cj, label %_Z9check_sumIiEvT_.exit, label %bb.h

bb.h:                                             ; preds = %.preheader20
  %i.ck = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ck) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre54 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader20, %bb.h
  %i.cm = phi i32 [ %i.cf, %.preheader20 ], [ %.pre54, %bb.h ] ; 2 uses
  %i.cn = phi double [ %i.cg, %.preheader20 ], [ %.pre, %bb.h ]
  %i.co = add nuw nsw i32 %.01228, 1              ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.cm
  br i1 %i.cp, label %.preheader20, label %._crit_edge29, !llvm.loop !175

._crit_edge29:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us33, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cq = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cq, ptr @end_time, align 8, !tbaa !27
  %i.cr = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cs = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.ct = icmp ne ptr %i.cs, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cu = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cu, %.pre.i
  %or.cond.i = select i1 %i.ct, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge29
  %i.cv = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cv, ptr @allocated_results, align 4, !tbaa !4
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 4
  %i.cy = tail call ptr @realloc(ptr noundef %i.cs, i64 noundef %i.cx) #13 ; 3 uses
  store ptr %i.cy, ptr @results, align 8, !tbaa !8
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.j:                                             ; preds = %bb.i
  %i.da = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.db = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.da) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge29, %._crit_edge.i
  %i.dc = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cu, %._crit_edge29 ] ; 2 uses
  %i.dd = phi ptr [ %i.cy, %._crit_edge.i ], [ %i.cs, %._crit_edge29 ]
  %i.de = sub nsw i64 %i.cq, %i.cr
  %i.df = sitofp i64 %i.de to double
  %i.dg = fdiv double %i.df, 1.000000e+06
  %i.dh = sext i32 %i.dc to i64
  %i.di = getelementptr inbounds [16 x i8], ptr %i.dd, i64 %i.dh ; 2 uses
  store double %i.dg, ptr %i.di, align 8, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %2, ptr %i.dj, align 8, !tbaa !15
  %i.dk = add nsw i32 %i.dc, 1
  store i32 %i.dk, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z27test_for_loop_unroll_factorILi4EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader19.lr.ph, label %._crit_edge28

.preheader19.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 3
  br i1 %i.d, label %.preheader19.us.preheader, label %.preheader19.lr.ph.split

.preheader19.us.preheader:                        ; preds = %.preheader19.lr.ph
  %i.e = add nsw i32 %1, -3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -4                       ; 3 uses
  %i.h = and i32 %i.g, -4
  %i.i = and i32 %i.g, -4
  %i.j = add nuw nsw i32 %i.i, 4
  %i.k = add nuw nsw i32 %i.h, 4
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = icmp slt i32 %i.j, %1
  %3 = and i32 %i.g, -4
  %i.n = sub i32 %1, %3
  %4 = add i32 %i.n, -5                           ; 2 uses
  %i.o = zext i32 %4 to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %4, 7
  %n.vec = and i64 %i.p, 8589934584               ; 3 uses
  %i.q = add nuw nsw i64 %n.vec, %i.l
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.l
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.preheader19.us

.preheader19.us:                                  ; preds = %.preheader19.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.r = phi i32 [ %i.z, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader19.us.preheader ]
  %.01227.us = phi i32 [ %i.aa, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader19.us.preheader ]
  br label %bb.c

._crit_edge.us:                                   ; preds = %.lr.ph25.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.an, %..preheader_crit_edge.us ], [ %i.ay, %middle.block ], [ %i.ag, %.lr.ph25.us ]
  %i.s = load double, ptr @init_value, align 8, !tbaa !32
  %i.t = fptosi double %i.s to i32
  %i.u = mul i32 %i.t, -1564285888
  %i.v = add i32 %i.u, -1269844480
  %i.w = icmp eq i32 %.116.lcssa.us, %i.v
  br i1 %i.w, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.x = load i32, ptr @current_test, align 4, !tbaa !4
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.x) ; 0 uses
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.z = phi i32 [ %.pre53, %bb.b ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.aa = add nuw nsw i32 %.01227.us, 1           ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.z
  br i1 %i.ab, label %.preheader19.us, label %._crit_edge28, !llvm.loop !179

.lr.ph25.us:                                      ; preds = %.lr.ph25.us.preheader74, %.lr.ph25.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.lr.ph25.us ], [ %indvars.iv47.ph, %.lr.ph25.us.preheader74 ] ; 2 uses
  %.11623.us = phi i32 [ %i.ag, %.lr.ph25.us ], [ %.11623.us.ph, %.lr.ph25.us.preheader74 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv47
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = mul i32 %i.ad, 269850533
  %i.af = add i32 %.11623.us, -1138325064
  %i.ag = add i32 %i.af, %i.ae                    ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.ah = trunc nuw i64 %indvars.iv.next48 to i32
  %i.ai = icmp sgt i32 %1, %i.ah
  br i1 %i.ai, label %.lr.ph25.us, label %._crit_edge.us, !llvm.loop !180

bb.c:                                             ; preds = %.preheader19.us, %bb.c
  %indvars.iv44 = phi i64 [ 0, %.preheader19.us ], [ %indvars.iv.next45, %bb.c ] ; 2 uses
  %.01520.us = phi i32 [ 0, %.preheader19.us ], [ %i.an, %bb.c ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44
  %i.ak = load <4 x i32>, ptr %i.aj, align 4, !tbaa !4
  %i.al = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ak)
  %reass.mul.us = mul i32 %i.al, 269850533
  %i.am = add i32 %.01520.us, -258332960
  %i.an = add i32 %i.am, %reass.mul.us            ; 4 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next45, %i.f
  br i1 %i.ao, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !181

..preheader_crit_edge.us:                         ; preds = %bb.c
  br i1 %i.m, label %.lr.ph25.us.preheader, label %._crit_edge.us

.lr.ph25.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph25.us.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph25.us.preheader
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.an, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi72 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load73 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.ar = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.as = mul <4 x i32> %wide.load73, splat (i32 269850533)
  %i.at = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.au = add <4 x i32> %vec.phi72, splat (i32 -1138325064)
  %i.av = add <4 x i32> %i.at, %i.ar              ; 2 uses
  %i.aw = add <4 x i32> %i.au, %i.as              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %i.ay = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph25.us.preheader74

.lr.ph25.us.preheader74:                          ; preds = %.lr.ph25.us.preheader, %middle.block
  %indvars.iv47.ph = phi i64 [ %i.l, %.lr.ph25.us.preheader ], [ %i.q, %middle.block ]
  %.11623.us.ph = phi i32 [ %i.an, %.lr.ph25.us.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph25.us

.preheader19.lr.ph.split:                         ; preds = %.preheader19.lr.ph
  %i.az = icmp sgt i32 %1, 0
  br i1 %i.az, label %.preheader19.us29.preheader, label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %.preheader19.lr.ph.split
  %.pre50 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader19

.preheader19.us29.preheader:                      ; preds = %.preheader19.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader19.us29

.preheader19.us29:                                ; preds = %.preheader19.us29.preheader, %_Z9check_sumIiEvT_.exit.us32
  %i.bc = phi i32 [ %i.bi, %_Z9check_sumIiEvT_.exit.us32 ], [ %i.b, %.preheader19.us29.preheader ]
  %.01227.us30 = phi i32 [ %i.bj, %_Z9check_sumIiEvT_.exit.us32 ], [ 0, %.preheader19.us29.preheader ]
  %i.bd = load i32, ptr %0, align 4, !tbaa !4
  %i.be = mul i32 %i.bd, 269850533                ; 2 uses
  %i.bf = add i32 %i.be, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us36, label %bb.e

bb.d:                                             ; preds = %._crit_edge.us36
  %i.bg = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bg) ; 0 uses
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us32

_Z9check_sumIiEvT_.exit.us32:                     ; preds = %bb.d, %._crit_edge.us36
  %i.bi = phi i32 [ %.pre52, %bb.d ], [ %i.bc, %._crit_edge.us36 ] ; 2 uses
  %i.bj = add nuw nsw i32 %.01227.us30, 1         ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.bi
  br i1 %i.bk, label %.preheader19.us29, label %._crit_edge28, !llvm.loop !179

bb.e:                                             ; preds = %.preheader19.us29
  %i.bl = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bm = mul i32 %i.bl, 269850533
  %i.bn = add i32 %i.be, 2018317168
  %i.bo = add i32 %i.bn, %i.bm                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us36, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bq = mul i32 %i.bp, 269850533
  %i.br = add i32 %i.bo, -1138325064
  %i.bs = add i32 %i.br, %i.bq
  br label %._crit_edge.us36

._crit_edge.us36:                                 ; preds = %bb.f, %bb.e, %.preheader19.us29
  %.lcssa79 = phi i32 [ %i.bf, %.preheader19.us29 ], [ %i.bo, %bb.e ], [ %i.bs, %bb.f ]
  %i.bt = load double, ptr @init_value, align 8, !tbaa !32
  %i.bu = fptosi double %i.bt to i32
  %i.bv = mul i32 %i.bu, -1564285888
  %i.bw = add i32 %i.bv, -1269844480
  %i.bx = icmp eq i32 %.lcssa79, %i.bw
  br i1 %i.bx, label %_Z9check_sumIiEvT_.exit.us32, label %bb.d

.preheader19:                                     ; preds = %.preheader19.preheader, %_Z9check_sumIiEvT_.exit
  %i.by = phi i32 [ %i.cf, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader19.preheader ]
  %i.bz = phi double [ %i.cg, %_Z9check_sumIiEvT_.exit ], [ %.pre50, %.preheader19.preheader ] ; 2 uses
  %.01227 = phi i32 [ %i.ch, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader19.preheader ]
  %i.ca = fptosi double %i.bz to i32
  %i.cb = mul i32 %i.ca, -1564285888
  %i.cc = icmp eq i32 %i.cb, 1269844480
  br i1 %i.cc, label %_Z9check_sumIiEvT_.exit, label %bb.g

bb.g:                                             ; preds = %.preheader19
  %i.cd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cd) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre51 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader19, %bb.g
  %i.cf = phi i32 [ %i.by, %.preheader19 ], [ %.pre51, %bb.g ] ; 2 uses
  %i.cg = phi double [ %i.bz, %.preheader19 ], [ %.pre, %bb.g ]
  %i.ch = add nuw nsw i32 %.01227, 1              ; 2 uses
  %i.ci = icmp slt i32 %i.ch, %i.cf
  br i1 %i.ci, label %.preheader19, label %._crit_edge28, !llvm.loop !179

._crit_edge28:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us32, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cj = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cj, ptr @end_time, align 8, !tbaa !27
  %i.ck = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cl = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cm = icmp ne ptr %i.cl, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cn = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cn, %.pre.i
  %or.cond.i = select i1 %i.cm, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge28
  %i.co = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.co, ptr @allocated_results, align 4, !tbaa !4
  %i.cp = sext i32 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 4
  %i.cr = tail call ptr @realloc(ptr noundef %i.cl, i64 noundef %i.cq) #13 ; 3 uses
  store ptr %i.cr, ptr @results, align 8, !tbaa !8
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
end_hunk_3
begin_hunk_4_@_Z27test_for_loop_unroll_factorILi3EiEvPKT0_iPKc:bb.a
  br i1 %i.ad, label %.lr.ph24.us, label %._crit_edge.us, !llvm.loop !184

bb.c:                                             ; preds = %.preheader18.us, %bb.c
  %indvars.iv46 = phi i64 [ 3, %.preheader18.us ], [ %indvars.iv.next47, %bb.c ] ; 4 uses
  %indvars.iv43 = phi i64 [ 0, %.preheader18.us ], [ %indvars.iv.next44, %bb.c ] ; 2 uses
  %.01519.us = phi i32 [ 0, %.preheader18.us ], [ %i.al, %bb.c ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv43 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr i8, ptr %i.ae, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %reass.add.us = add i32 %i.ah, %i.af
  %reass.add17.us = add i32 %reass.add.us, %i.aj
  %reass.mul.us = mul i32 %reass.add17.us, 269850533
  %i.ak = add i32 %.01519.us, 879992104
  %i.al = add i32 %i.ak, %reass.mul.us            ; 4 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 3 ; 3 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next44, %i.f
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 3
  br i1 %i.am, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !185

..preheader_crit_edge.us:                         ; preds = %bb.c
  %i.an = trunc nuw nsw i64 %indvars.iv.next44 to i32
  %i.ao = icmp sgt i32 %1, %i.an
  br i1 %i.ao, label %.lr.ph24.us.preheader, label %._crit_edge.us

.lr.ph24.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph24.us.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph24.us.preheader
  %i.ap = add i64 %indvars.iv46, %n.vec
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.al, i64 0
  %i.ar = getelementptr [4 x i8], ptr %0, i64 %indvars.iv46
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aq, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %wide.load75 = load <4 x i32>, ptr %i.at, align 4, !tbaa !4
  %i.au = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.av = mul <4 x i32> %wide.load75, splat (i32 269850533)
  %i.aw = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.ax = add <4 x i32> %vec.phi74, splat (i32 -1138325064)
  %i.ay = add <4 x i32> %i.aw, %i.au              ; 2 uses
  %i.az = add <4 x i32> %i.ax, %i.av              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.az, %i.ay
  %i.bb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph24.us.preheader76

.lr.ph24.us.preheader76:                          ; preds = %.lr.ph24.us.preheader, %middle.block
  %indvars.iv48.ph = phi i64 [ %indvars.iv46, %.lr.ph24.us.preheader ], [ %i.ap, %middle.block ]
  %.11622.us.ph = phi i32 [ %i.al, %.lr.ph24.us.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph24.us

.preheader18.lr.ph.split:                         ; preds = %.preheader18.lr.ph
  %i.bc = icmp sgt i32 %1, 0
  br i1 %i.bc, label %.preheader18.us28.preheader, label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader18.lr.ph.split
  %.pre51 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader18

.preheader18.us28.preheader:                      ; preds = %.preheader18.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader18.us28

.preheader18.us28:                                ; preds = %.preheader18.us28.preheader, %_Z9check_sumIiEvT_.exit.us31
  %i.be = phi i32 [ %i.bk, %_Z9check_sumIiEvT_.exit.us31 ], [ %i.b, %.preheader18.us28.preheader ]
  %.01226.us29 = phi i32 [ %i.bl, %_Z9check_sumIiEvT_.exit.us31 ], [ 0, %.preheader18.us28.preheader ]
  %i.bf = load i32, ptr %0, align 4, !tbaa !4
  %i.bg = mul i32 %i.bf, 269850533                ; 2 uses
  %i.bh = add i32 %i.bg, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us35, label %bb.e

bb.d:                                             ; preds = %._crit_edge.us35
  %i.bi = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bi) ; 0 uses
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us31

_Z9check_sumIiEvT_.exit.us31:                     ; preds = %bb.d, %._crit_edge.us35
  %i.bk = phi i32 [ %.pre53, %bb.d ], [ %i.be, %._crit_edge.us35 ] ; 2 uses
  %i.bl = add nuw nsw i32 %.01226.us29, 1         ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.bk
  br i1 %i.bm, label %.preheader18.us28, label %._crit_edge27, !llvm.loop !183

bb.e:                                             ; preds = %.preheader18.us28
  %i.bn = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bo = mul i32 %i.bn, 269850533
  %i.bp = add i32 %i.bg, 2018317168
  %i.bq = add i32 %i.bp, %i.bo
  br label %._crit_edge.us35

._crit_edge.us35:                                 ; preds = %bb.e, %.preheader18.us28
  %.lcssa81 = phi i32 [ %i.bh, %.preheader18.us28 ], [ %i.bq, %bb.e ]
  %i.br = load double, ptr @init_value, align 8, !tbaa !32
  %i.bs = fptosi double %i.br to i32
  %i.bt = mul i32 %i.bs, -1564285888
  %i.bu = add i32 %i.bt, -1269844480
  %i.bv = icmp eq i32 %.lcssa81, %i.bu
  br i1 %i.bv, label %_Z9check_sumIiEvT_.exit.us31, label %bb.d

.preheader18:                                     ; preds = %.preheader18.preheader, %_Z9check_sumIiEvT_.exit
  %i.bw = phi i32 [ %i.cd, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader18.preheader ]
  %i.bx = phi double [ %i.ce, %_Z9check_sumIiEvT_.exit ], [ %.pre51, %.preheader18.preheader ] ; 2 uses
  %.01226 = phi i32 [ %i.cf, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader18.preheader ]
  %i.by = fptosi double %i.bx to i32
  %i.bz = mul i32 %i.by, -1564285888
  %i.ca = icmp eq i32 %i.bz, 1269844480
  br i1 %i.ca, label %_Z9check_sumIiEvT_.exit, label %bb.f

bb.f:                                             ; preds = %.preheader18
  %i.cb = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cb) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader18, %bb.f
  %i.cd = phi i32 [ %i.bw, %.preheader18 ], [ %.pre52, %bb.f ] ; 2 uses
  %i.ce = phi double [ %i.bx, %.preheader18 ], [ %.pre, %bb.f ]
  %i.cf = add nuw nsw i32 %.01226, 1              ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %i.cd
  br i1 %i.cg, label %.preheader18, label %._crit_edge27, !llvm.loop !183

._crit_edge27:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us31, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ch = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ch, ptr @end_time, align 8, !tbaa !27
  %i.ci = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cj = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.ck = icmp ne ptr %i.cj, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cl = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cl, %.pre.i
  %or.cond.i = select i1 %i.ck, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge27
  %i.cm = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cm, ptr @allocated_results, align 4, !tbaa !4
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 4
  %i.cp = tail call ptr @realloc(ptr noundef %i.cj, i64 noundef %i.co) #13 ; 3 uses
  store ptr %i.cp, ptr @results, align 8, !tbaa !8
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.h:                                             ; preds = %bb.g
  %i.cr = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.cr) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge27, %._crit_edge.i
  %i.ct = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cl, %._crit_edge27 ] ; 2 uses
  %i.cu = phi ptr [ %i.cp, %._crit_edge.i ], [ %i.cj, %._crit_edge27 ]
  %i.cv = sub nsw i64 %i.ch, %i.ci
  %i.cw = sitofp i64 %i.cv to double
  %i.cx = fdiv double %i.cw, 1.000000e+06
  %i.cy = sext i32 %i.ct to i64
  %i.cz = getelementptr inbounds [16 x i8], ptr %i.cu, i64 %i.cy ; 2 uses
  store double %i.cx, ptr %i.cz, align 8, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %2, ptr %i.da, align 8, !tbaa !15
  %i.db = add nsw i32 %i.ct, 1
  store i32 %i.db, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z27test_for_loop_unroll_factorILi2EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader17.lr.ph, label %._crit_edge26

.preheader17.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.preheader17.us.preheader, label %.preheader17.lr.ph.split

.preheader17.us.preheader:                        ; preds = %.preheader17.lr.ph
  %i.e = add nsw i32 %1, -1
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = add nsw i32 %1, -2                       ; 3 uses
  %i.h = and i32 %i.g, -2
  %i.i = and i32 %i.g, -2
  %i.j = add nuw nsw i32 %i.i, 2
  %i.k = add nuw nsw i32 %i.h, 2
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = icmp slt i32 %i.j, %1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %3 = add nsw i64 %umax, -1
  %4 = lshr i64 %3, 1
  %i.n = add nuw nsw i64 %4, 1                    ; 2 uses
  %min.iters.check70 = icmp ult i32 %1, 16
  %n.vec73 = and i64 %i.n, 9223372036854775800    ; 3 uses
  %5 = shl nuw i64 %n.vec73, 1
  %cmp.n85 = icmp eq i64 %i.n, %n.vec73
  %6 = and i32 %i.g, -2
  %7 = sub i32 %1, %6
  %8 = add i32 %7, -3                             ; 2 uses
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1                     ; 2 uses
  %min.iters.check = icmp ult i32 %8, 7
  %n.vec = and i64 %10, 8589934584                ; 3 uses
  %i.o = add nuw nsw i64 %n.vec, %i.l
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.l
  %cmp.n = icmp eq i64 %10, %n.vec
  br label %.preheader17.us

.preheader17.us:                                  ; preds = %.preheader17.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.p = phi i32 [ %i.al, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader17.us.preheader ]
  %.01225.us = phi i32 [ %i.am, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader17.us.preheader ]
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.body74

vector.body74:                                    ; preds = %.preheader17.us, %vector.body74
  %index75 = phi i64 [ %index.next82, %vector.body74 ], [ 0, %.preheader17.us ] ; 2 uses
  %vec.phi76 = phi <4 x i32> [ %i.aa, %vector.body74 ], [ zeroinitializer, %.preheader17.us ]
  %vec.phi77 = phi <4 x i32> [ %i.ab, %vector.body74 ], [ zeroinitializer, %.preheader17.us ]
  %i.q = shl i64 %index75, 1                      ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %wide.vec = load <8 x i32>, ptr %i.r, align 4, !tbaa !4 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec78 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec79 = load <8 x i32>, ptr %i.t, align 4, !tbaa !4 ; 2 uses
  %strided.vec80 = shufflevector <8 x i32> %wide.vec79, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec81 = shufflevector <8 x i32> %wide.vec79, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.u = add <4 x i32> %strided.vec78, %strided.vec
  %i.v = add <4 x i32> %strided.vec81, %strided.vec80
  %i.w = mul <4 x i32> %i.u, splat (i32 269850533)
  %i.x = mul <4 x i32> %i.v, splat (i32 269850533)
  %i.y = add <4 x i32> %vec.phi76, splat (i32 2018317168)
  %i.z = add <4 x i32> %vec.phi77, splat (i32 2018317168)
  %i.aa = add <4 x i32> %i.y, %i.w                ; 2 uses
  %i.ab = add <4 x i32> %i.z, %i.x                ; 2 uses
  %index.next82 = add nuw i64 %index75, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next82, %n.vec73
  br i1 %i.ac, label %middle.block83, label %vector.body74, !llvm.loop !187

middle.block83:                                   ; preds = %vector.body74
  %bin.rdx84 = add <4 x i32> %i.ab, %i.aa
  %i.ad = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  br i1 %cmp.n85, label %..preheader_crit_edge.us, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %.preheader17.us, %middle.block83
  %indvars.iv.ph = phi i64 [ 0, %.preheader17.us ], [ %5, %middle.block83 ]
  %.01518.us.ph = phi i32 [ 0, %.preheader17.us ], [ %i.ad, %middle.block83 ]
  br label %scalar.ph69

._crit_edge.us:                                   ; preds = %.lr.ph23.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %.lcssa, %..preheader_crit_edge.us ], [ %i.bl, %middle.block ], [ %i.as, %.lr.ph23.us ]
  %i.ae = load double, ptr @init_value, align 8, !tbaa !32
  %i.af = fptosi double %i.ae to i32
  %i.ag = mul i32 %i.af, -1564285888
  %i.ah = add i32 %i.ag, -1269844480
  %i.ai = icmp eq i32 %.116.lcssa.us, %i.ah
  br i1 %i.ai, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.aj) ; 0 uses
  %.pre50 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.al = phi i32 [ %.pre50, %bb.b ], [ %i.p, %._crit_edge.us ] ; 2 uses
  %i.am = add nuw nsw i32 %.01225.us, 1           ; 2 uses
  %i.an = icmp slt i32 %i.am, %i.al
  br i1 %i.an, label %.preheader17.us, label %._crit_edge26, !llvm.loop !188

.lr.ph23.us:                                      ; preds = %.lr.ph23.us.preheader88, %.lr.ph23.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %.lr.ph23.us ], [ %indvars.iv43.ph, %.lr.ph23.us.preheader88 ] ; 2 uses
  %.11621.us = phi i32 [ %i.as, %.lr.ph23.us ], [ %.11621.us.ph, %.lr.ph23.us.preheader88 ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv43
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = mul i32 %i.ap, 269850533
  %i.ar = add i32 %.11621.us, -1138325064
  %i.as = add i32 %i.ar, %i.aq                    ; 2 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.at = trunc nuw i64 %indvars.iv.next44 to i32
  %i.au = icmp sgt i32 %1, %i.at
  br i1 %i.au, label %.lr.ph23.us, label %._crit_edge.us, !llvm.loop !189

scalar.ph69:                                      ; preds = %scalar.ph69.preheader, %scalar.ph69
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph69 ], [ %indvars.iv.ph, %scalar.ph69.preheader ] ; 2 uses
  %.01518.us = phi i32 [ %i.ba, %scalar.ph69 ], [ %.01518.us.ph, %scalar.ph69.preheader ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = getelementptr i8, ptr %i.av, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %reass.add.us = add i32 %i.ay, %i.aw
  %reass.mul.us = mul i32 %reass.add.us, 269850533
  %i.az = add i32 %.01518.us, 2018317168
  %i.ba = add i32 %i.az, %reass.mul.us            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.bb, label %scalar.ph69, label %..preheader_crit_edge.us, !llvm.loop !190

..preheader_crit_edge.us:                         ; preds = %scalar.ph69, %middle.block83
  %.lcssa = phi i32 [ %i.ad, %middle.block83 ], [ %i.ba, %scalar.ph69 ] ; 3 uses
  br i1 %i.m, label %.lr.ph23.us.preheader, label %._crit_edge.us

.lr.ph23.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph23.us.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.us.preheader
  %i.bc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bc, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load68 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !4
  %i.be = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.bf = mul <4 x i32> %wide.load68, splat (i32 269850533)
  %i.bg = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.bh = add <4 x i32> %vec.phi67, splat (i32 -1138325064)
  %i.bi = add <4 x i32> %i.bg, %i.be              ; 2 uses
  %i.bj = add <4 x i32> %i.bh, %i.bf              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bj, %i.bi
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph23.us.preheader88

.lr.ph23.us.preheader88:                          ; preds = %.lr.ph23.us.preheader, %middle.block
  %indvars.iv43.ph = phi i64 [ %i.l, %.lr.ph23.us.preheader ], [ %i.o, %middle.block ]
  %.11621.us.ph = phi i32 [ %.lcssa, %.lr.ph23.us.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph23.us

.preheader17.lr.ph.split:                         ; preds = %.preheader17.lr.ph
  %i.bm = icmp eq i32 %1, 1
  br i1 %i.bm, label %._crit_edge.us34, label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %.preheader17.lr.ph.split
  %.pre46 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader17

bb.c:                                             ; preds = %._crit_edge.us34
  %i.bn = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bn) ; 0 uses
  %.pre49 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us30

_Z9check_sumIiEvT_.exit.us30:                     ; preds = %bb.c, %._crit_edge.us34
  %i.bp = phi i32 [ %.pre49, %bb.c ], [ %i.bs, %._crit_edge.us34 ] ; 2 uses
  %i.bq = add nuw nsw i32 %.01225.us28, 1         ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.bp
  br i1 %i.br, label %._crit_edge.us34, label %._crit_edge26, !llvm.loop !188

._crit_edge.us34:                                 ; preds = %.preheader17.lr.ph.split, %_Z9check_sumIiEvT_.exit.us30
  %i.bs = phi i32 [ %i.bp, %_Z9check_sumIiEvT_.exit.us30 ], [ %i.b, %.preheader17.lr.ph.split ]
  %.01225.us28 = phi i32 [ %i.bq, %_Z9check_sumIiEvT_.exit.us30 ], [ 0, %.preheader17.lr.ph.split ]
  %.pre48 = load i32, ptr %0, align 4, !tbaa !4
  %i.bt = mul i32 %.pre48, 269850533
  %i.bu = load double, ptr @init_value, align 8, !tbaa !32
  %i.bv = fptosi double %i.bu to i32
  %i.bw = mul i32 %i.bv, -1564285888
  %i.bx = add i32 %i.bw, -131519416
  %i.by = icmp eq i32 %i.bt, %i.bx
  br i1 %i.by, label %_Z9check_sumIiEvT_.exit.us30, label %bb.c

.preheader17:                                     ; preds = %.preheader17.preheader, %_Z9check_sumIiEvT_.exit
  %i.bz = phi i32 [ %i.cg, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader17.preheader ]
  %i.ca = phi double [ %i.ch, %_Z9check_sumIiEvT_.exit ], [ %.pre46, %.preheader17.preheader ] ; 2 uses
  %.01225 = phi i32 [ %i.ci, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader17.preheader ]
  %i.cb = fptosi double %i.ca to i32
  %i.cc = mul i32 %i.cb, -1564285888
  %i.cd = icmp eq i32 %i.cc, 1269844480
  br i1 %i.cd, label %_Z9check_sumIiEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader17
  %i.ce = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ce) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre47 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader17, %bb.d
  %i.cg = phi i32 [ %i.bz, %.preheader17 ], [ %.pre47, %bb.d ] ; 2 uses
  %i.ch = phi double [ %i.ca, %.preheader17 ], [ %.pre, %bb.d ]
  %i.ci = add nuw nsw i32 %.01225, 1              ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.cg
  br i1 %i.cj, label %.preheader17, label %._crit_edge26, !llvm.loop !188

._crit_edge26:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us30, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ck = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ck, ptr @end_time, align 8, !tbaa !27
  %i.cl = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cm = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cn = icmp ne ptr %i.cm, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.co = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.co, %.pre.i
  %or.cond.i = select i1 %i.cn, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge26
  %i.cp = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cp, ptr @allocated_results, align 4, !tbaa !4
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 4
  %i.cs = tail call ptr @realloc(ptr noundef %i.cm, i64 noundef %i.cr) #13 ; 3 uses
  store ptr %i.cs, ptr @results, align 8, !tbaa !8
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.cu = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.cu) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge26, %._crit_edge.i
  %i.cw = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.co, %._crit_edge26 ] ; 2 uses
  %i.cx = phi ptr [ %i.cs, %._crit_edge.i ], [ %i.cm, %._crit_edge26 ]
  %i.cy = sub nsw i64 %i.ck, %i.cl
  %i.cz = sitofp i64 %i.cy to double
  %i.da = fdiv double %i.cz, 1.000000e+06
  %i.db = sext i32 %i.cw to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.db ; 2 uses
  store double %i.da, ptr %i.dc, align 8, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %2, ptr %i.dd, align 8, !tbaa !15
  %i.de = add nsw i32 %i.cw, 1
  store i32 %i.de, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z27test_for_loop_unroll_factorILi1EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader17.lr.ph, label %._crit_edge26

.preheader17.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader17.us.preheader, label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %.preheader17.lr.ph
  %.pre38 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader17

.preheader17.us.preheader:                        ; preds = %.preheader17.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader17.us

.preheader17.us:                                  ; preds = %.preheader17.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.e = phi i32 [ %i.w, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader17.us.preheader ]
  %.01225.us = phi i32 [ %i.x, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader17.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader17.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader17.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.l, %vector.body ], [ zeroinitializer, %.preheader17.us ]
  %vec.phi51 = phi <4 x i32> [ %i.m, %vector.body ], [ zeroinitializer, %.preheader17.us ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !4
  %wide.load52 = load <4 x i32>, ptr %i.g, align 4, !tbaa !4
  %i.h = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.i = mul <4 x i32> %wide.load52, splat (i32 269850533)
  %i.j = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.k = add <4 x i32> %vec.phi51, splat (i32 -1138325064)
  %i.l = add <4 x i32> %i.j, %i.h                 ; 2 uses
  %i.m = add <4 x i32> %i.k, %i.i                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.m, %i.l
  %i.o = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader17.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader17.us ], [ %n.vec, %middle.block ]
  %.01518.us.ph = phi i32 [ 0, %.preheader17.us ], [ %i.o, %middle.block ]
  br label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.o, %middle.block ], [ %i.ad, %scalar.ph ]
  %i.p = load double, ptr @init_value, align 8, !tbaa !32
  %i.q = fptosi double %i.p to i32
  %i.r = mul i32 %i.q, -1564285888
  %i.s = add i32 %i.r, -1269844480
  %i.t = icmp eq i32 %.lcssa, %i.s
  br i1 %i.t, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.u = load i32, ptr @current_test, align 4, !tbaa !4
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.u) ; 0 uses
  %.pre40 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.w = phi i32 [ %.pre40, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.x = add nuw nsw i32 %.01225.us, 1            ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.w
  br i1 %i.y, label %.preheader17.us, label %._crit_edge26, !llvm.loop !193

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01518.us = phi i32 [ %i.ad, %scalar.ph ], [ %.01518.us.ph, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = mul i32 %i.aa, 269850533
  %i.ac = add i32 %.01518.us, -1138325064
  %i.ad = add i32 %i.ac, %i.ab                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !194

.preheader17:                                     ; preds = %.preheader17.preheader, %_Z9check_sumIiEvT_.exit
  %i.ae = phi i32 [ %i.al, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader17.preheader ]
  %i.af = phi double [ %i.am, %_Z9check_sumIiEvT_.exit ], [ %.pre38, %.preheader17.preheader ] ; 2 uses
  %.01225 = phi i32 [ %i.an, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader17.preheader ]
  %i.ag = fptosi double %i.af to i32
  %i.ah = mul i32 %i.ag, -1564285888
  %i.ai = icmp eq i32 %i.ah, 1269844480
  br i1 %i.ai, label %_Z9check_sumIiEvT_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader17
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.aj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre39 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader17, %bb.c
  %i.al = phi i32 [ %i.ae, %.preheader17 ], [ %.pre39, %bb.c ] ; 2 uses
  %i.am = phi double [ %i.af, %.preheader17 ], [ %.pre, %bb.c ]
  %i.an = add nuw nsw i32 %.01225, 1              ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %.preheader17, label %._crit_edge26, !llvm.loop !193

._crit_edge26:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ap = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ap, ptr @end_time, align 8, !tbaa !27
  %i.aq = load i64, ptr @start_time, align 8, !tbaa !27
  %i.ar = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.at = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.at, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge26
  %i.au = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.au, ptr @allocated_results, align 4, !tbaa !4
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 4
  %i.ax = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.aw) #13 ; 3 uses
  store ptr %i.ax, ptr @results, align 8, !tbaa !8
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.az) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge26, %._crit_edge.i
  %i.bb = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.at, %._crit_edge26 ] ; 2 uses
  %i.bc = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.ar, %._crit_edge26 ]
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
define linkonce_odr dso_local void @_Z29test_while_loop_unroll_factorILi32EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 31
  br i1 %i.d, label %.preheader48.us.preheader, label %.preheader48.lr.ph.split

.preheader48.us.preheader:                        ; preds = %.preheader48.lr.ph
  %i.e = add nsw i32 %1, -31
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -32                      ; 3 uses
  %i.h = and i32 %i.g, -32
  %i.i = and i32 %i.g, -32
  %i.j = add nuw nsw i32 %i.i, 32
  %i.k = add nuw nsw i32 %i.h, 32
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = icmp slt i32 %i.j, %1
  %3 = and i32 %i.g, -32
  %i.n = sub i32 %1, %3
  %4 = add i32 %i.n, -33                          ; 2 uses
  %i.o = zext i32 %4 to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check102 = icmp ult i32 %4, 7
  %n.vec105 = and i64 %i.p, 8589934584            ; 3 uses
  %i.q = add nuw nsw i64 %n.vec105, %i.l
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.l
  %cmp.n115 = icmp eq i64 %i.p, %n.vec105
  br label %.preheader48.us

.preheader48.us:                                  ; preds = %.preheader48.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %.01256.us = phi i32 [ %i.y, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader48.us.preheader ]
  br label %bb.c

._crit_edge.us:                                   ; preds = %.lr.ph54.us, %middle.block113, %..preheader_crit_edge.us
  %.117.lcssa.us = phi i32 [ %i.am, %..preheader_crit_edge.us ], [ %i.ax, %middle.block113 ], [ %i.af, %.lr.ph54.us ]
  %i.r = load double, ptr @init_value, align 8, !tbaa !32
  %i.s = fptosi double %i.r to i32
  %i.t = mul i32 %i.s, -1564285888
  %i.u = add i32 %i.t, -1269844480
  %i.v = icmp eq i32 %.117.lcssa.us, %i.u
  br i1 %i.v, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.w = load i32, ptr @current_test, align 4, !tbaa !4
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.w) ; 0 uses
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.y = add nuw nsw i32 %.01256.us, 1            ; 2 uses
  %i.z = load i32, ptr @iterations, align 4, !tbaa !4
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %.preheader48.us, label %._crit_edge57, !llvm.loop !195

.lr.ph54.us:                                      ; preds = %.lr.ph54.us.preheader118, %.lr.ph54.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %.lr.ph54.us ], [ %indvars.iv76.ph, %.lr.ph54.us.preheader118 ] ; 2 uses
  %.11752.us = phi i32 [ %i.af, %.lr.ph54.us ], [ %.11752.us.ph, %.lr.ph54.us.preheader118 ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = mul i32 %i.ac, 269850533
  %i.ae = add i32 %.11752.us, -1138325064
  %i.af = add i32 %i.ae, %i.ad                    ; 2 uses
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.ag = trunc nuw i64 %indvars.iv.next77 to i32
  %i.ah = icmp sgt i32 %1, %i.ag
  br i1 %i.ah, label %.lr.ph54.us, label %._crit_edge.us, !llvm.loop !196

bb.c:                                             ; preds = %.preheader48.us, %bb.c
  %indvars.iv73 = phi i64 [ 0, %.preheader48.us ], [ %indvars.iv.next74, %bb.c ] ; 2 uses
  %.01649.us = phi i32 [ 0, %.preheader48.us ], [ %i.am, %bb.c ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv73
  %i.aj = load <32 x i32>, ptr %i.ai, align 4, !tbaa !4
  %i.ak = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.aj)
  %reass.mul.us = mul i32 %i.ak, 269850533
  %i.al = add i32 %.01649.us, -2066663680
  %i.am = add i32 %i.al, %reass.mul.us            ; 4 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 32 ; 2 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next74, %i.f
  br i1 %i.an, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !197

..preheader_crit_edge.us:                         ; preds = %bb.c
  br i1 %i.m, label %.lr.ph54.us.preheader, label %._crit_edge.us

.lr.ph54.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check102, label %.lr.ph54.us.preheader118, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph54.us.preheader
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.am, i64 0
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next112, %vector.body106 ] ; 2 uses
  %vec.phi108 = phi <4 x i32> [ %i.ao, %vector.ph103 ], [ %i.au, %vector.body106 ]
  %vec.phi109 = phi <4 x i32> [ zeroinitializer, %vector.ph103 ], [ %i.av, %vector.body106 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index107 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load110 = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load111 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4
  %i.aq = mul <4 x i32> %wide.load110, splat (i32 269850533)
  %i.ar = mul <4 x i32> %wide.load111, splat (i32 269850533)
  %i.as = add <4 x i32> %vec.phi108, splat (i32 -1138325064)
  %i.at = add <4 x i32> %vec.phi109, splat (i32 -1138325064)
  %i.au = add <4 x i32> %i.as, %i.aq              ; 2 uses
  %i.av = add <4 x i32> %i.at, %i.ar              ; 2 uses
  %index.next112 = add nuw i64 %index107, 8       ; 2 uses
  %i.aw = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.aw, label %middle.block113, label %vector.body106, !llvm.loop !198

middle.block113:                                  ; preds = %vector.body106
  %bin.rdx114 = add <4 x i32> %i.av, %i.au
  %i.ax = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx114) ; 2 uses
  br i1 %cmp.n115, label %._crit_edge.us, label %.lr.ph54.us.preheader118

.lr.ph54.us.preheader118:                         ; preds = %.lr.ph54.us.preheader, %middle.block113
  %indvars.iv76.ph = phi i64 [ %i.l, %.lr.ph54.us.preheader ], [ %i.q, %middle.block113 ]
  %.11752.us.ph = phi i32 [ %i.am, %.lr.ph54.us.preheader ], [ %i.ax, %middle.block113 ]
  br label %.lr.ph54.us

.preheader48.lr.ph.split:                         ; preds = %.preheader48.lr.ph
  %i.ay = icmp sgt i32 %1, 0
  br i1 %i.ay, label %.preheader48.us58.preheader, label %.preheader48.preheader

.preheader48.preheader:                           ; preds = %.preheader48.lr.ph.split
  %.pre79 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader48

.preheader48.us58.preheader:                      ; preds = %.preheader48.lr.ph.split
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = icmp eq i64 %n.vec, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = icmp eq i64 %n.vec, 16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader48.us58

.preheader48.us58:                                ; preds = %.preheader48.us58.preheader, %_Z9check_sumIiEvT_.exit.us61
  %i.bg = phi i32 [ %i.ca, %_Z9check_sumIiEvT_.exit.us61 ], [ %i.b, %.preheader48.us58.preheader ]
  %.01256.us59 = phi i32 [ %i.cb, %_Z9check_sumIiEvT_.exit.us61 ], [ 0, %.preheader48.us58.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader48.us58
  %wide.load = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %wide.load100 = load <4 x i32>, ptr %i.az, align 4, !tbaa !4
  %i.bh = mul <4 x i32> %wide.load, splat (i32 269850533) ; 2 uses
  %i.bi = mul <4 x i32> %wide.load100, splat (i32 269850533) ; 2 uses
  %i.bj = add <4 x i32> %i.bh, splat (i32 -1138325064)
  %i.bk = add <4 x i32> %i.bi, splat (i32 -1138325064)
  br i1 %i.ba, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %wide.load.1 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !4
  %wide.load100.1 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !4
  %i.bl = mul <4 x i32> %wide.load.1, splat (i32 269850533)
  %i.bm = mul <4 x i32> %wide.load100.1, splat (i32 269850533)
  %i.bn = add <4 x i32> %i.bh, splat (i32 2018317168)
  %i.bo = add <4 x i32> %i.bi, splat (i32 2018317168)
  %i.bp = add <4 x i32> %i.bn, %i.bl              ; 2 uses
  %i.bq = add <4 x i32> %i.bo, %i.bm              ; 2 uses
  br i1 %i.bd, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %i.be, align 4, !tbaa !4
  %wide.load100.2 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.br = mul <4 x i32> %wide.load.2, splat (i32 269850533)
  %i.bs = mul <4 x i32> %wide.load100.2, splat (i32 269850533)
  %i.bt = add <4 x i32> %i.bp, splat (i32 -1138325064)
  %i.bu = add <4 x i32> %i.bq, splat (i32 -1138325064)
  %i.bv = add <4 x i32> %i.bt, %i.br
  %i.bw = add <4 x i32> %i.bu, %i.bs
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.body
  %.lcssa124 = phi <4 x i32> [ %i.bj, %vector.body ], [ %i.bp, %vector.body.1 ], [ %i.bv, %vector.body.2 ]
  %.lcssa123 = phi <4 x i32> [ %i.bk, %vector.body ], [ %i.bq, %vector.body.1 ], [ %i.bw, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa123, %.lcssa124
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us65, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader48.us58, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader48.us58 ], [ %n.vec, %middle.block ]
  %.11752.us63.ph = phi i32 [ 0, %.preheader48.us58 ], [ %i.bx, %middle.block ]
  br label %scalar.ph

bb.d:                                             ; preds = %._crit_edge.us65
  %i.by = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.by) ; 0 uses
  %.pre81 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us61

_Z9check_sumIiEvT_.exit.us61:                     ; preds = %bb.d, %._crit_edge.us65
  %i.ca = phi i32 [ %.pre81, %bb.d ], [ %i.bg, %._crit_edge.us65 ] ; 2 uses
  %i.cb = add nuw nsw i32 %.01256.us59, 1         ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.ca
  br i1 %i.cc, label %.preheader48.us58, label %._crit_edge57, !llvm.loop !195

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.11752.us63 = phi i32 [ %i.ch, %scalar.ph ], [ %.11752.us63.ph, %scalar.ph.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cf = mul i32 %i.ce, 269850533
  %i.cg = add i32 %.11752.us63, -1138325064
  %i.ch = add i32 %i.cg, %i.cf                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us65, label %scalar.ph, !llvm.loop !199

._crit_edge.us65:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa98 = phi i32 [ %i.bx, %middle.block ], [ %i.ch, %scalar.ph ]
  %i.ci = load double, ptr @init_value, align 8, !tbaa !32
  %i.cj = fptosi double %i.ci to i32
  %i.ck = mul i32 %i.cj, -1564285888
  %i.cl = add i32 %i.ck, -1269844480
  %i.cm = icmp eq i32 %.lcssa98, %i.cl
  br i1 %i.cm, label %_Z9check_sumIiEvT_.exit.us61, label %bb.d

.preheader48:                                     ; preds = %.preheader48.preheader, %_Z9check_sumIiEvT_.exit
  %i.cn = phi i32 [ %i.cu, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader48.preheader ]
  %i.co = phi double [ %i.cv, %_Z9check_sumIiEvT_.exit ], [ %.pre79, %.preheader48.preheader ] ; 2 uses
end_hunk_4
begin_hunk_5_@_Z29test_while_loop_unroll_factorILi17EiEvPKT0_iPKc:bb.a
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %index96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load99 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %wide.load100 = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %i.at = mul <4 x i32> %wide.load99, splat (i32 269850533)
  %i.au = mul <4 x i32> %wide.load100, splat (i32 269850533)
  %i.av = add <4 x i32> %vec.phi97, splat (i32 -1138325064)
  %i.aw = add <4 x i32> %vec.phi98, splat (i32 -1138325064)
  %i.ax = add <4 x i32> %i.av, %i.at              ; 2 uses
  %i.ay = add <4 x i32> %i.aw, %i.au              ; 2 uses
  %index.next101 = add nuw i64 %index96, 8        ; 2 uses
  %i.az = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.az, label %middle.block102, label %vector.body95, !llvm.loop !273

middle.block102:                                  ; preds = %vector.body95
  %bin.rdx103 = add <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx103) ; 2 uses
  br i1 %cmp.n104, label %._crit_edge.us, label %.lr.ph38.us.preheader107

.lr.ph38.us.preheader107:                         ; preds = %.lr.ph38.us.preheader, %middle.block102
  %indvars.iv62.ph = phi i64 [ %indvars.iv60, %.lr.ph38.us.preheader ], [ %i.ao, %middle.block102 ]
  %.11636.us.ph = phi i32 [ %i.ak, %.lr.ph38.us.preheader ], [ %i.ba, %middle.block102 ]
  br label %.lr.ph38.us

.preheader32.lr.ph.split:                         ; preds = %.preheader32.lr.ph
  %i.bb = icmp sgt i32 %1, 0
  br i1 %i.bb, label %.preheader32.us42.preheader, label %.preheader32.preheader

.preheader32.preheader:                           ; preds = %.preheader32.lr.ph.split
  %.pre65 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader32

.preheader32.us42.preheader:                      ; preds = %.preheader32.lr.ph.split
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = icmp eq i64 %n.vec, 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader32.us42

.preheader32.us42:                                ; preds = %.preheader32.us42.preheader, %_Z9check_sumIiEvT_.exit.us45
  %i.bg = phi i32 [ %i.bu, %_Z9check_sumIiEvT_.exit.us45 ], [ %i.b, %.preheader32.us42.preheader ]
  %.01240.us43 = phi i32 [ %i.bv, %_Z9check_sumIiEvT_.exit.us45 ], [ 0, %.preheader32.us42.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader32.us42
  %wide.load = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %wide.load88 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !4
  %i.bh = mul <4 x i32> %wide.load, splat (i32 269850533) ; 2 uses
  %i.bi = mul <4 x i32> %wide.load88, splat (i32 269850533) ; 2 uses
  %i.bj = add <4 x i32> %i.bh, splat (i32 -1138325064)
  %i.bk = add <4 x i32> %i.bi, splat (i32 -1138325064)
  br i1 %i.bd, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %wide.load.1 = load <4 x i32>, ptr %i.be, align 4, !tbaa !4
  %wide.load88.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.bl = mul <4 x i32> %wide.load.1, splat (i32 269850533)
  %i.bm = mul <4 x i32> %wide.load88.1, splat (i32 269850533)
  %i.bn = add <4 x i32> %i.bh, splat (i32 2018317168)
  %i.bo = add <4 x i32> %i.bi, splat (i32 2018317168)
  %i.bp = add <4 x i32> %i.bn, %i.bl
  %i.bq = add <4 x i32> %i.bo, %i.bm
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.body
  %.lcssa113 = phi <4 x i32> [ %i.bj, %vector.body ], [ %i.bp, %vector.body.1 ]
  %.lcssa112 = phi <4 x i32> [ %i.bk, %vector.body ], [ %i.bq, %vector.body.1 ]
  %bin.rdx = add <4 x i32> %.lcssa112, %.lcssa113
  %i.br = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us49, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader32.us42, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader32.us42 ], [ %n.vec, %middle.block ]
  %.11636.us47.ph = phi i32 [ 0, %.preheader32.us42 ], [ %i.br, %middle.block ]
  br label %scalar.ph

bb.d:                                             ; preds = %._crit_edge.us49
  %i.bs = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bs) ; 0 uses
  %.pre67 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us45

_Z9check_sumIiEvT_.exit.us45:                     ; preds = %bb.d, %._crit_edge.us49
  %i.bu = phi i32 [ %.pre67, %bb.d ], [ %i.bg, %._crit_edge.us49 ] ; 2 uses
  %i.bv = add nuw nsw i32 %.01240.us43, 1         ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %i.bu
  br i1 %i.bw, label %.preheader32.us42, label %._crit_edge41, !llvm.loop !270

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.11636.us47 = phi i32 [ %i.cb, %scalar.ph ], [ %.11636.us47.ph, %scalar.ph.preheader ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = mul i32 %i.by, 269850533
  %i.ca = add i32 %.11636.us47, -1138325064
  %i.cb = add i32 %i.ca, %i.bz                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us49, label %scalar.ph, !llvm.loop !274

._crit_edge.us49:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa86 = phi i32 [ %i.br, %middle.block ], [ %i.cb, %scalar.ph ]
  %i.cc = load double, ptr @init_value, align 8, !tbaa !32
  %i.cd = fptosi double %i.cc to i32
  %i.ce = mul i32 %i.cd, -1564285888
  %i.cf = add i32 %i.ce, -1269844480
  %i.cg = icmp eq i32 %.lcssa86, %i.cf
  br i1 %i.cg, label %_Z9check_sumIiEvT_.exit.us45, label %bb.d

.preheader32:                                     ; preds = %.preheader32.preheader, %_Z9check_sumIiEvT_.exit
  %i.ch = phi i32 [ %i.co, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader32.preheader ]
  %i.ci = phi double [ %i.cp, %_Z9check_sumIiEvT_.exit ], [ %.pre65, %.preheader32.preheader ] ; 2 uses
  %.01240 = phi i32 [ %i.cq, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader32.preheader ]
  %i.cj = fptosi double %i.ci to i32
  %i.ck = mul i32 %i.cj, -1564285888
  %i.cl = icmp eq i32 %i.ck, 1269844480
  br i1 %i.cl, label %_Z9check_sumIiEvT_.exit, label %bb.e

bb.e:                                             ; preds = %.preheader32
  %i.cm = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cm) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre66 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader32, %bb.e
  %i.co = phi i32 [ %i.ch, %.preheader32 ], [ %.pre66, %bb.e ] ; 2 uses
  %i.cp = phi double [ %i.ci, %.preheader32 ], [ %.pre, %bb.e ]
  %i.cq = add nuw nsw i32 %.01240, 1              ; 2 uses
  %i.cr = icmp slt i32 %i.cq, %i.co
  br i1 %i.cr, label %.preheader32, label %._crit_edge41, !llvm.loop !270

._crit_edge41:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us45, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cs = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cs, ptr @end_time, align 8, !tbaa !27
  %i.ct = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cu = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cv = icmp ne ptr %i.cu, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cw = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cw, %.pre.i
  %or.cond.i = select i1 %i.cv, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge41
  %i.cx = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cx, ptr @allocated_results, align 4, !tbaa !4
  %i.cy = sext i32 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 4
  %i.da = tail call ptr @realloc(ptr noundef %i.cu, i64 noundef %i.cz) #13 ; 3 uses
  store ptr %i.da, ptr @results, align 8, !tbaa !8
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.g:                                             ; preds = %bb.f
  %i.dc = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.dc) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge41, %._crit_edge.i
  %i.de = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cw, %._crit_edge41 ] ; 2 uses
  %i.df = phi ptr [ %i.da, %._crit_edge.i ], [ %i.cu, %._crit_edge41 ]
  %i.dg = sub nsw i64 %i.cs, %i.ct
  %i.dh = sitofp i64 %i.dg to double
  %i.di = fdiv double %i.dh, 1.000000e+06
  %i.dj = sext i32 %i.de to i64
  %i.dk = getelementptr inbounds [16 x i8], ptr %i.df, i64 %i.dj ; 2 uses
  store double %i.di, ptr %i.dk, align 8, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %2, ptr %i.dl, align 8, !tbaa !15
  %i.dm = add nsw i32 %i.de, 1
  store i32 %i.dm, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z29test_while_loop_unroll_factorILi16EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader31.lr.ph, label %._crit_edge40

.preheader31.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 15
  br i1 %i.d, label %.preheader31.us.preheader, label %.preheader31.lr.ph.split

.preheader31.us.preheader:                        ; preds = %.preheader31.lr.ph
  %i.e = add nsw i32 %1, -15
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -16                      ; 3 uses
  %i.h = and i32 %i.g, -16
  %i.i = and i32 %i.g, -16
  %i.j = add nuw nsw i32 %i.i, 16
  %i.k = add nuw nsw i32 %i.h, 16
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = icmp slt i32 %i.j, %1
  %3 = and i32 %i.g, -16
  %i.n = sub i32 %1, %3
  %4 = add i32 %i.n, -17                          ; 2 uses
  %i.o = zext i32 %4 to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %4, 7
  %n.vec = and i64 %i.p, 8589934584               ; 3 uses
  %i.q = add nuw nsw i64 %n.vec, %i.l
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.l
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.preheader31.us

.preheader31.us:                                  ; preds = %.preheader31.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.r = phi i32 [ %i.z, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader31.us.preheader ]
  %.01239.us = phi i32 [ %i.aa, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader31.us.preheader ]
  br label %bb.c

._crit_edge.us:                                   ; preds = %.lr.ph37.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.an, %..preheader_crit_edge.us ], [ %i.ay, %middle.block ], [ %i.ag, %.lr.ph37.us ]
  %i.s = load double, ptr @init_value, align 8, !tbaa !32
  %i.t = fptosi double %i.s to i32
  %i.u = mul i32 %i.t, -1564285888
  %i.v = add i32 %i.u, -1269844480
  %i.w = icmp eq i32 %.116.lcssa.us, %i.v
  br i1 %i.w, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.x = load i32, ptr @current_test, align 4, !tbaa !4
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.x) ; 0 uses
  %.pre65 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.z = phi i32 [ %.pre65, %bb.b ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.aa = add nuw nsw i32 %.01239.us, 1           ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.z
  br i1 %i.ab, label %.preheader31.us, label %._crit_edge40, !llvm.loop !275

.lr.ph37.us:                                      ; preds = %.lr.ph37.us.preheader86, %.lr.ph37.us
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.lr.ph37.us ], [ %indvars.iv59.ph, %.lr.ph37.us.preheader86 ] ; 2 uses
  %.11635.us = phi i32 [ %i.ag, %.lr.ph37.us ], [ %.11635.us.ph, %.lr.ph37.us.preheader86 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv59
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = mul i32 %i.ad, 269850533
  %i.af = add i32 %.11635.us, -1138325064
  %i.ag = add i32 %i.af, %i.ae                    ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ah = trunc nuw i64 %indvars.iv.next60 to i32
  %i.ai = icmp sgt i32 %1, %i.ah
  br i1 %i.ai, label %.lr.ph37.us, label %._crit_edge.us, !llvm.loop !276

bb.c:                                             ; preds = %.preheader31.us, %bb.c
  %indvars.iv56 = phi i64 [ 0, %.preheader31.us ], [ %indvars.iv.next57, %bb.c ] ; 2 uses
  %.01532.us = phi i32 [ 0, %.preheader31.us ], [ %i.an, %bb.c ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv56
  %i.ak = load <16 x i32>, ptr %i.aj, align 4, !tbaa !4
  %i.al = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ak)
  %reass.mul.us = mul i32 %i.al, 269850533
  %i.am = add i32 %.01532.us, -1033331840
  %i.an = add i32 %i.am, %reass.mul.us            ; 4 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 16 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next57, %i.f
  br i1 %i.ao, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !277

..preheader_crit_edge.us:                         ; preds = %bb.c
  br i1 %i.m, label %.lr.ph37.us.preheader, label %._crit_edge.us

.lr.ph37.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph37.us.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph37.us.preheader
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.an, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi84 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load85 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.ar = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.as = mul <4 x i32> %wide.load85, splat (i32 269850533)
  %i.at = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.au = add <4 x i32> %vec.phi84, splat (i32 -1138325064)
  %i.av = add <4 x i32> %i.at, %i.ar              ; 2 uses
  %i.aw = add <4 x i32> %i.au, %i.as              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %i.ay = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph37.us.preheader86

.lr.ph37.us.preheader86:                          ; preds = %.lr.ph37.us.preheader, %middle.block
  %indvars.iv59.ph = phi i64 [ %i.l, %.lr.ph37.us.preheader ], [ %i.q, %middle.block ]
  %.11635.us.ph = phi i32 [ %i.an, %.lr.ph37.us.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph37.us

.preheader31.lr.ph.split:                         ; preds = %.preheader31.lr.ph
  %i.az = icmp sgt i32 %1, 0
  br i1 %i.az, label %.preheader31.us41.preheader, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %.preheader31.lr.ph.split
  %.pre62 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader31

.preheader31.us41.preheader:                      ; preds = %.preheader31.lr.ph.split
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ba = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod94 = icmp ne i64 %xtraiter, 0
  br label %.preheader31.us41

.preheader31.us41:                                ; preds = %.preheader31.us41.preheader, %_Z9check_sumIiEvT_.exit.us44
  %i.bb = phi i32 [ %i.be, %_Z9check_sumIiEvT_.exit.us44 ], [ %i.b, %.preheader31.us41.preheader ]
  %.01239.us42 = phi i32 [ %i.bf, %_Z9check_sumIiEvT_.exit.us44 ], [ 0, %.preheader31.us41.preheader ]
  br i1 %i.ba, label %.epil.preheader, label %.preheader31.us41.new

bb.d:                                             ; preds = %._crit_edge.us48
  %i.bc = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bc) ; 0 uses
  %.pre64 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us44

_Z9check_sumIiEvT_.exit.us44:                     ; preds = %bb.d, %._crit_edge.us48
  %i.be = phi i32 [ %.pre64, %bb.d ], [ %i.bb, %._crit_edge.us48 ] ; 2 uses
  %i.bf = add nuw nsw i32 %.01239.us42, 1         ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.be
  br i1 %i.bg, label %.preheader31.us41, label %._crit_edge40, !llvm.loop !275

.preheader31.us41.new:                            ; preds = %.preheader31.us41, %.preheader31.us41.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader31.us41.new ], [ 0, %.preheader31.us41 ] ; 5 uses
  %.11635.us46 = phi i32 [ %i.cd, %.preheader31.us41.new ], [ 0, %.preheader31.us41 ]
  %niter = phi i64 [ %niter.next.3, %.preheader31.us41.new ], [ 0, %.preheader31.us41 ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = mul i32 %i.bi, 269850533
  %i.bk = add i32 %.11635.us46, -1138325064
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = mul i32 %i.bo, 269850533
  %i.bq = add i32 %i.bl, -1138325064
  %i.br = add i32 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = mul i32 %i.bu, 269850533
  %i.bw = add i32 %i.br, -1138325064
  %i.bx = add i32 %i.bw, %i.bv
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = mul i32 %i.ca, 269850533
  %i.cc = add i32 %i.bx, -1138325064
  %i.cd = add i32 %i.cc, %i.cb                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us48.unr-lcssa, label %.preheader31.us41.new, !llvm.loop !279

._crit_edge.us48.unr-lcssa:                       ; preds = %.preheader31.us41.new
  br i1 %lcmp.mod.not, label %._crit_edge.us48, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us48.unr-lcssa, %.preheader31.us41
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader31.us41 ], [ %indvars.iv.next.3, %._crit_edge.us48.unr-lcssa ]
  %.11635.us46.epil.init = phi i32 [ 0, %.preheader31.us41 ], [ %i.cd, %._crit_edge.us48.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %.11635.us46.epil = phi i32 [ %.11635.us46.epil.init, %.epil.preheader ], [ %i.ci, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = mul i32 %i.cf, 269850533
  %i.ch = add i32 %.11635.us46.epil, -1138325064
  %i.ci = add i32 %i.ch, %i.cg                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us48, label %bb.e, !llvm.loop !280

._crit_edge.us48:                                 ; preds = %bb.e, %._crit_edge.us48.unr-lcssa
  %.lcssa91 = phi i32 [ %i.cd, %._crit_edge.us48.unr-lcssa ], [ %i.ci, %bb.e ]
  %i.cj = load double, ptr @init_value, align 8, !tbaa !32
  %i.ck = fptosi double %i.cj to i32
  %i.cl = mul i32 %i.ck, -1564285888
  %i.cm = add i32 %i.cl, -1269844480
  %i.cn = icmp eq i32 %.lcssa91, %i.cm
  br i1 %i.cn, label %_Z9check_sumIiEvT_.exit.us44, label %bb.d

.preheader31:                                     ; preds = %.preheader31.preheader, %_Z9check_sumIiEvT_.exit
  %i.co = phi i32 [ %i.cv, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader31.preheader ]
  %i.cp = phi double [ %i.cw, %_Z9check_sumIiEvT_.exit ], [ %.pre62, %.preheader31.preheader ] ; 2 uses
  %.01239 = phi i32 [ %i.cx, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader31.preheader ]
  %i.cq = fptosi double %i.cp to i32
  %i.cr = mul i32 %i.cq, -1564285888
end_hunk_5
begin_hunk_6_@_Z29test_while_loop_unroll_factorILi9EiEvPKT0_iPKc:bb.a
middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph30.us.preheader82

.lr.ph30.us.preheader82:                          ; preds = %.lr.ph30.us.preheader, %middle.block
  %indvars.iv54.ph = phi i64 [ %indvars.iv52, %.lr.ph30.us.preheader ], [ %i.ao, %middle.block ]
  %.11628.us.ph = phi i32 [ %i.ak, %.lr.ph30.us.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph30.us

.preheader24.lr.ph.split:                         ; preds = %.preheader24.lr.ph
  %i.bb = icmp sgt i32 %1, 0
  br i1 %i.bb, label %.preheader24.us34.preheader, label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader24.lr.ph.split
  %.pre57 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader24

.preheader24.us34.preheader:                      ; preds = %.preheader24.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.2 = icmp eq i32 %1, 3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  %exitcond.not.3 = icmp eq i32 %1, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not.4 = icmp eq i32 %1, 5
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %exitcond.not.5 = icmp eq i32 %1, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %exitcond.not.6 = icmp eq i32 %1, 7
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.preheader24.us34

.preheader24.us34:                                ; preds = %.preheader24.us34.preheader, %_Z9check_sumIiEvT_.exit.us37
  %i.bj = phi i32 [ %i.bp, %_Z9check_sumIiEvT_.exit.us37 ], [ %i.b, %.preheader24.us34.preheader ]
  %.01232.us35 = phi i32 [ %i.bq, %_Z9check_sumIiEvT_.exit.us37 ], [ 0, %.preheader24.us34.preheader ]
  %i.bk = load i32, ptr %0, align 4, !tbaa !4
  %i.bl = mul i32 %i.bk, 269850533                ; 2 uses
  %i.bm = add i32 %i.bl, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us41, label %bb.e

bb.d:                                             ; preds = %._crit_edge.us41
  %i.bn = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bn) ; 0 uses
  %.pre59 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us37

_Z9check_sumIiEvT_.exit.us37:                     ; preds = %bb.d, %._crit_edge.us41
  %i.bp = phi i32 [ %.pre59, %bb.d ], [ %i.bj, %._crit_edge.us41 ] ; 2 uses
  %i.bq = add nuw nsw i32 %.01232.us35, 1         ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.bp
  br i1 %i.br, label %.preheader24.us34, label %._crit_edge33, !llvm.loop !317

bb.e:                                             ; preds = %.preheader24.us34
  %i.bs = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bt = mul i32 %i.bs, 269850533
  %i.bu = add i32 %i.bl, 2018317168
  %i.bv = add i32 %i.bu, %i.bt                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bw = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bx = mul i32 %i.bw, 269850533
  %i.by = add i32 %i.bv, -1138325064
  %i.bz = add i32 %i.by, %i.bx                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = load i32, ptr %i.be, align 4, !tbaa !4
  %i.cb = mul i32 %i.ca, 269850533
  %i.cc = add i32 %i.bz, -1138325064
  %i.cd = add i32 %i.cc, %i.cb                    ; 2 uses
  br i1 %exitcond.not.3, label %._crit_edge.us41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.cf = mul i32 %i.ce, 269850533
  %i.cg = add i32 %i.cd, -1138325064
  %i.ch = add i32 %i.cg, %i.cf                    ; 2 uses
  br i1 %exitcond.not.4, label %._crit_edge.us41, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.cj = mul i32 %i.ci, 269850533
  %i.ck = add i32 %i.ch, -1138325064
  %i.cl = add i32 %i.ck, %i.cj                    ; 2 uses
  br i1 %exitcond.not.5, label %._crit_edge.us41, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.cn = mul i32 %i.cm, 269850533
  %i.co = add i32 %i.cl, -1138325064
  %i.cp = add i32 %i.co, %i.cn                    ; 2 uses
  br i1 %exitcond.not.6, label %._crit_edge.us41, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.cr = mul i32 %i.cq, 269850533
  %i.cs = add i32 %i.cp, -1138325064
  %i.ct = add i32 %i.cs, %i.cr
  br label %._crit_edge.us41

._crit_edge.us41:                                 ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.preheader24.us34
  %.lcssa87 = phi i32 [ %i.bm, %.preheader24.us34 ], [ %i.bv, %bb.e ], [ %i.bz, %bb.f ], [ %i.cd, %bb.g ], [ %i.ch, %bb.h ], [ %i.cl, %bb.i ], [ %i.cp, %bb.j ], [ %i.ct, %bb.k ]
  %i.cu = load double, ptr @init_value, align 8, !tbaa !32
  %i.cv = fptosi double %i.cu to i32
  %i.cw = mul i32 %i.cv, -1564285888
  %i.cx = add i32 %i.cw, -1269844480
  %i.cy = icmp eq i32 %.lcssa87, %i.cx
  br i1 %i.cy, label %_Z9check_sumIiEvT_.exit.us37, label %bb.d

.preheader24:                                     ; preds = %.preheader24.preheader, %_Z9check_sumIiEvT_.exit
  %i.cz = phi i32 [ %i.dg, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader24.preheader ]
  %i.da = phi double [ %i.dh, %_Z9check_sumIiEvT_.exit ], [ %.pre57, %.preheader24.preheader ] ; 2 uses
  %.01232 = phi i32 [ %i.di, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader24.preheader ]
  %i.db = fptosi double %i.da to i32
  %i.dc = mul i32 %i.db, -1564285888
  %i.dd = icmp eq i32 %i.dc, 1269844480
  br i1 %i.dd, label %_Z9check_sumIiEvT_.exit, label %bb.l

bb.l:                                             ; preds = %.preheader24
  %i.de = load i32, ptr @current_test, align 4, !tbaa !4
  %i.df = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.de) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre58 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader24, %bb.l
  %i.dg = phi i32 [ %i.cz, %.preheader24 ], [ %.pre58, %bb.l ] ; 2 uses
  %i.dh = phi double [ %i.da, %.preheader24 ], [ %.pre, %bb.l ]
  %i.di = add nuw nsw i32 %.01232, 1              ; 2 uses
  %i.dj = icmp slt i32 %i.di, %i.dg
  br i1 %i.dj, label %.preheader24, label %._crit_edge33, !llvm.loop !317

._crit_edge33:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us37, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.dk = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.dk, ptr @end_time, align 8, !tbaa !27
  %i.dl = load i64, ptr @start_time, align 8, !tbaa !27
  %i.dm = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.dn = icmp ne ptr %i.dm, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.do = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.do, %.pre.i
  %or.cond.i = select i1 %i.dn, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge33
  %i.dp = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.dp, ptr @allocated_results, align 4, !tbaa !4
  %i.dq = sext i32 %i.dp to i64
  %i.dr = shl nsw i64 %i.dq, 4
  %i.ds = tail call ptr @realloc(ptr noundef %i.dm, i64 noundef %i.dr) #13 ; 3 uses
  store ptr %i.ds, ptr @results, align 8, !tbaa !8
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.n:                                             ; preds = %bb.m
  %i.du = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.dv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.du) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge33, %._crit_edge.i
  %i.dw = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.do, %._crit_edge33 ] ; 2 uses
  %i.dx = phi ptr [ %i.ds, %._crit_edge.i ], [ %i.dm, %._crit_edge33 ]
  %i.dy = sub nsw i64 %i.dk, %i.dl
  %i.dz = sitofp i64 %i.dy to double
  %i.ea = fdiv double %i.dz, 1.000000e+06
  %i.eb = sext i32 %i.dw to i64
  %i.ec = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.eb ; 2 uses
  store double %i.ea, ptr %i.ec, align 8, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %2, ptr %i.ed, align 8, !tbaa !15
  %i.ee = add nsw i32 %i.dw, 1
  store i32 %i.ee, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z29test_while_loop_unroll_factorILi8EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader23.lr.ph, label %._crit_edge32

.preheader23.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 7
  br i1 %i.d, label %.preheader23.us.preheader, label %.preheader23.lr.ph.split

.preheader23.us.preheader:                        ; preds = %.preheader23.lr.ph
  %i.e = add nsw i32 %1, -7
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -8                       ; 3 uses
  %i.h = and i32 %i.g, -8
  %i.i = and i32 %i.g, -8
  %i.j = add nuw nsw i32 %i.i, 8
  %i.k = add nuw nsw i32 %i.h, 8
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = icmp slt i32 %i.j, %1
  %3 = and i32 %i.g, -8
  %i.n = sub i32 %1, %3
  %4 = add i32 %i.n, -9                           ; 2 uses
  %i.o = zext i32 %4 to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %4, 7
  %n.vec = and i64 %i.p, 8589934584               ; 3 uses
  %i.q = add nuw nsw i64 %n.vec, %i.l
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.l
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.preheader23.us

.preheader23.us:                                  ; preds = %.preheader23.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.r = phi i32 [ %i.z, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader23.us.preheader ]
  %.01231.us = phi i32 [ %i.aa, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader23.us.preheader ]
  br label %bb.c

._crit_edge.us:                                   ; preds = %.lr.ph29.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.an, %..preheader_crit_edge.us ], [ %i.ay, %middle.block ], [ %i.ag, %.lr.ph29.us ]
  %i.s = load double, ptr @init_value, align 8, !tbaa !32
  %i.t = fptosi double %i.s to i32
  %i.u = mul i32 %i.t, -1564285888
  %i.v = add i32 %i.u, -1269844480
  %i.w = icmp eq i32 %.116.lcssa.us, %i.v
  br i1 %i.w, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.x = load i32, ptr @current_test, align 4, !tbaa !4
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.x) ; 0 uses
  %.pre57 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.z = phi i32 [ %.pre57, %bb.b ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.aa = add nuw nsw i32 %.01231.us, 1           ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.z
  br i1 %i.ab, label %.preheader23.us, label %._crit_edge32, !llvm.loop !321

.lr.ph29.us:                                      ; preds = %.lr.ph29.us.preheader78, %.lr.ph29.us
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph29.us ], [ %indvars.iv51.ph, %.lr.ph29.us.preheader78 ] ; 2 uses
  %.11627.us = phi i32 [ %i.ag, %.lr.ph29.us ], [ %.11627.us.ph, %.lr.ph29.us.preheader78 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv51
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = mul i32 %i.ad, 269850533
  %i.af = add i32 %.11627.us, -1138325064
  %i.ag = add i32 %i.af, %i.ae                    ; 2 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.ah = trunc nuw i64 %indvars.iv.next52 to i32
  %i.ai = icmp sgt i32 %1, %i.ah
  br i1 %i.ai, label %.lr.ph29.us, label %._crit_edge.us, !llvm.loop !322

bb.c:                                             ; preds = %.preheader23.us, %bb.c
  %indvars.iv48 = phi i64 [ 0, %.preheader23.us ], [ %indvars.iv.next49, %bb.c ] ; 2 uses
  %.01524.us = phi i32 [ 0, %.preheader23.us ], [ %i.an, %bb.c ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv48
  %i.ak = load <8 x i32>, ptr %i.aj, align 4, !tbaa !4
  %i.al = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ak)
  %reass.mul.us = mul i32 %i.al, 269850533
  %i.am = add i32 %.01524.us, -516665920
  %i.an = add i32 %i.am, %reass.mul.us            ; 4 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 8 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next49, %i.f
  br i1 %i.ao, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !323

..preheader_crit_edge.us:                         ; preds = %bb.c
  br i1 %i.m, label %.lr.ph29.us.preheader, label %._crit_edge.us

.lr.ph29.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph29.us.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph29.us.preheader
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.an, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi76 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load77 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.ar = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.as = mul <4 x i32> %wide.load77, splat (i32 269850533)
  %i.at = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.au = add <4 x i32> %vec.phi76, splat (i32 -1138325064)
  %i.av = add <4 x i32> %i.at, %i.ar              ; 2 uses
  %i.aw = add <4 x i32> %i.au, %i.as              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !324

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %i.ay = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph29.us.preheader78

.lr.ph29.us.preheader78:                          ; preds = %.lr.ph29.us.preheader, %middle.block
  %indvars.iv51.ph = phi i64 [ %i.l, %.lr.ph29.us.preheader ], [ %i.q, %middle.block ]
  %.11627.us.ph = phi i32 [ %i.an, %.lr.ph29.us.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph29.us

.preheader23.lr.ph.split:                         ; preds = %.preheader23.lr.ph
  %i.az = icmp sgt i32 %1, 0
  br i1 %i.az, label %.preheader23.us33.preheader, label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %.preheader23.lr.ph.split
  %.pre54 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader23

.preheader23.us33.preheader:                      ; preds = %.preheader23.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.2 = icmp eq i32 %1, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %exitcond.not.3 = icmp eq i32 %1, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not.4 = icmp eq i32 %1, 5
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20
  %exitcond.not.5 = icmp eq i32 %1, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.preheader23.us33

.preheader23.us33:                                ; preds = %.preheader23.us33.preheader, %_Z9check_sumIiEvT_.exit.us36
  %i.bg = phi i32 [ %i.bm, %_Z9check_sumIiEvT_.exit.us36 ], [ %i.b, %.preheader23.us33.preheader ]
  %.01231.us34 = phi i32 [ %i.bn, %_Z9check_sumIiEvT_.exit.us36 ], [ 0, %.preheader23.us33.preheader ]
  %i.bh = load i32, ptr %0, align 4, !tbaa !4
  %i.bi = mul i32 %i.bh, 269850533                ; 2 uses
  %i.bj = add i32 %i.bi, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us40, label %bb.e

bb.d:                                             ; preds = %._crit_edge.us40
  %i.bk = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bk) ; 0 uses
  %.pre56 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us36

_Z9check_sumIiEvT_.exit.us36:                     ; preds = %bb.d, %._crit_edge.us40
  %i.bm = phi i32 [ %.pre56, %bb.d ], [ %i.bg, %._crit_edge.us40 ] ; 2 uses
  %i.bn = add nuw nsw i32 %.01231.us34, 1         ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.bm
  br i1 %i.bo, label %.preheader23.us33, label %._crit_edge32, !llvm.loop !321

bb.e:                                             ; preds = %.preheader23.us33
  %i.bp = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bq = mul i32 %i.bp, 269850533
  %i.br = add i32 %i.bi, 2018317168
  %i.bs = add i32 %i.br, %i.bq                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bu = mul i32 %i.bt, 269850533
  %i.bv = add i32 %i.bs, -1138325064
  %i.bw = add i32 %i.bv, %i.bu                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us40, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.by = mul i32 %i.bx, 269850533
  %i.bz = add i32 %i.bw, -1138325064
  %i.ca = add i32 %i.bz, %i.by                    ; 2 uses
  br i1 %exitcond.not.3, label %._crit_edge.us40, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.cc = mul i32 %i.cb, 269850533
  %i.cd = add i32 %i.ca, -1138325064
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  br i1 %exitcond.not.4, label %._crit_edge.us40, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.cg = mul i32 %i.cf, 269850533
  %i.ch = add i32 %i.ce, -1138325064
  %i.ci = add i32 %i.ch, %i.cg                    ; 2 uses
  br i1 %exitcond.not.5, label %._crit_edge.us40, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.ck = mul i32 %i.cj, 269850533
  %i.cl = add i32 %i.ci, -1138325064
  %i.cm = add i32 %i.cl, %i.ck
  br label %._crit_edge.us40

._crit_edge.us40:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.preheader23.us33
  %.lcssa83 = phi i32 [ %i.bj, %.preheader23.us33 ], [ %i.bs, %bb.e ], [ %i.bw, %bb.f ], [ %i.ca, %bb.g ], [ %i.ce, %bb.h ], [ %i.ci, %bb.i ], [ %i.cm, %bb.j ]
  %i.cn = load double, ptr @init_value, align 8, !tbaa !32
  %i.co = fptosi double %i.cn to i32
  %i.cp = mul i32 %i.co, -1564285888
  %i.cq = add i32 %i.cp, -1269844480
  %i.cr = icmp eq i32 %.lcssa83, %i.cq
  br i1 %i.cr, label %_Z9check_sumIiEvT_.exit.us36, label %bb.d

.preheader23:                                     ; preds = %.preheader23.preheader, %_Z9check_sumIiEvT_.exit
  %i.cs = phi i32 [ %i.cz, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader23.preheader ]
  %i.ct = phi double [ %i.da, %_Z9check_sumIiEvT_.exit ], [ %.pre54, %.preheader23.preheader ] ; 2 uses
  %.01231 = phi i32 [ %i.db, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader23.preheader ]
  %i.cu = fptosi double %i.ct to i32
  %i.cv = mul i32 %i.cu, -1564285888
  %i.cw = icmp eq i32 %i.cv, 1269844480
  br i1 %i.cw, label %_Z9check_sumIiEvT_.exit, label %bb.k

bb.k:                                             ; preds = %.preheader23
end_hunk_6
begin_hunk_7_@_Z29test_while_loop_unroll_factorILi5EiEvPKT0_iPKc:bb.a
  %i.al = icmp samesign ult i64 %indvars.iv.next46, %i.f
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 5
  br i1 %i.al, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !335

..preheader_crit_edge.us:                         ; preds = %bb.c
  %i.am = trunc nuw nsw i64 %indvars.iv.next46 to i32
  %i.an = icmp sgt i32 %1, %i.am
  br i1 %i.an, label %.lr.ph26.us.preheader, label %._crit_edge.us

.lr.ph26.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph26.us.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.us.preheader
  %i.ao = add i64 %indvars.iv48, %n.vec
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ak, i64 0
  %i.aq = getelementptr [4 x i8], ptr %0, i64 %indvars.iv48
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi76 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %wide.load77 = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %i.at = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.au = mul <4 x i32> %wide.load77, splat (i32 269850533)
  %i.av = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.aw = add <4 x i32> %vec.phi76, splat (i32 -1138325064)
  %i.ax = add <4 x i32> %i.av, %i.at              ; 2 uses
  %i.ay = add <4 x i32> %i.aw, %i.au              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !336

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph26.us.preheader78

.lr.ph26.us.preheader78:                          ; preds = %.lr.ph26.us.preheader, %middle.block
  %indvars.iv50.ph = phi i64 [ %indvars.iv48, %.lr.ph26.us.preheader ], [ %i.ao, %middle.block ]
  %.11624.us.ph = phi i32 [ %i.ak, %.lr.ph26.us.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph26.us

.preheader20.lr.ph.split:                         ; preds = %.preheader20.lr.ph
  %i.bb = icmp sgt i32 %1, 0
  br i1 %i.bb, label %.preheader20.us30.preheader, label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader20.lr.ph.split
  %.pre53 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader20

.preheader20.us30.preheader:                      ; preds = %.preheader20.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.2 = icmp eq i32 %1, 3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %.preheader20.us30

.preheader20.us30:                                ; preds = %.preheader20.us30.preheader, %_Z9check_sumIiEvT_.exit.us33
  %i.bf = phi i32 [ %i.bl, %_Z9check_sumIiEvT_.exit.us33 ], [ %i.b, %.preheader20.us30.preheader ]
  %.01228.us31 = phi i32 [ %i.bm, %_Z9check_sumIiEvT_.exit.us33 ], [ 0, %.preheader20.us30.preheader ]
  %i.bg = load i32, ptr %0, align 4, !tbaa !4
  %i.bh = mul i32 %i.bg, 269850533                ; 2 uses
  %i.bi = add i32 %i.bh, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us37, label %bb.e

bb.d:                                             ; preds = %._crit_edge.us37
  %i.bj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bj) ; 0 uses
  %.pre55 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us33

_Z9check_sumIiEvT_.exit.us33:                     ; preds = %bb.d, %._crit_edge.us37
  %i.bl = phi i32 [ %.pre55, %bb.d ], [ %i.bf, %._crit_edge.us37 ] ; 2 uses
  %i.bm = add nuw nsw i32 %.01228.us31, 1         ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %.preheader20.us30, label %._crit_edge29, !llvm.loop !333

bb.e:                                             ; preds = %.preheader20.us30
  %i.bo = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bp = mul i32 %i.bo, 269850533
  %i.bq = add i32 %i.bh, 2018317168
  %i.br = add i32 %i.bq, %i.bp                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bt = mul i32 %i.bs, 269850533
  %i.bu = add i32 %i.br, -1138325064
  %i.bv = add i32 %i.bu, %i.bt                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us37, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bx = mul i32 %i.bw, 269850533
  %i.by = add i32 %i.bv, -1138325064
  %i.bz = add i32 %i.by, %i.bx
  br label %._crit_edge.us37

._crit_edge.us37:                                 ; preds = %bb.g, %bb.f, %bb.e, %.preheader20.us30
  %.lcssa83 = phi i32 [ %i.bi, %.preheader20.us30 ], [ %i.br, %bb.e ], [ %i.bv, %bb.f ], [ %i.bz, %bb.g ]
  %i.ca = load double, ptr @init_value, align 8, !tbaa !32
  %i.cb = fptosi double %i.ca to i32
  %i.cc = mul i32 %i.cb, -1564285888
  %i.cd = add i32 %i.cc, -1269844480
  %i.ce = icmp eq i32 %.lcssa83, %i.cd
  br i1 %i.ce, label %_Z9check_sumIiEvT_.exit.us33, label %bb.d

.preheader20:                                     ; preds = %.preheader20.preheader, %_Z9check_sumIiEvT_.exit
  %i.cf = phi i32 [ %i.cm, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader20.preheader ]
  %i.cg = phi double [ %i.cn, %_Z9check_sumIiEvT_.exit ], [ %.pre53, %.preheader20.preheader ] ; 2 uses
  %.01228 = phi i32 [ %i.co, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader20.preheader ]
  %i.ch = fptosi double %i.cg to i32
  %i.ci = mul i32 %i.ch, -1564285888
  %i.cj = icmp eq i32 %i.ci, 1269844480
  br i1 %i.cj, label %_Z9check_sumIiEvT_.exit, label %bb.h

bb.h:                                             ; preds = %.preheader20
  %i.ck = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ck) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre54 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader20, %bb.h
  %i.cm = phi i32 [ %i.cf, %.preheader20 ], [ %.pre54, %bb.h ] ; 2 uses
  %i.cn = phi double [ %i.cg, %.preheader20 ], [ %.pre, %bb.h ]
  %i.co = add nuw nsw i32 %.01228, 1              ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.cm
  br i1 %i.cp, label %.preheader20, label %._crit_edge29, !llvm.loop !333

._crit_edge29:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us33, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cq = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cq, ptr @end_time, align 8, !tbaa !27
  %i.cr = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cs = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.ct = icmp ne ptr %i.cs, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cu = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cu, %.pre.i
  %or.cond.i = select i1 %i.ct, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge29
  %i.cv = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cv, ptr @allocated_results, align 4, !tbaa !4
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 4
  %i.cy = tail call ptr @realloc(ptr noundef %i.cs, i64 noundef %i.cx) #13 ; 3 uses
  store ptr %i.cy, ptr @results, align 8, !tbaa !8
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.j:                                             ; preds = %bb.i
  %i.da = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.db = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.da) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge29, %._crit_edge.i
  %i.dc = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cu, %._crit_edge29 ] ; 2 uses
  %i.dd = phi ptr [ %i.cy, %._crit_edge.i ], [ %i.cs, %._crit_edge29 ]
  %i.de = sub nsw i64 %i.cq, %i.cr
  %i.df = sitofp i64 %i.de to double
  %i.dg = fdiv double %i.df, 1.000000e+06
  %i.dh = sext i32 %i.dc to i64
  %i.di = getelementptr inbounds [16 x i8], ptr %i.dd, i64 %i.dh ; 2 uses
  store double %i.dg, ptr %i.di, align 8, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %2, ptr %i.dj, align 8, !tbaa !15
  %i.dk = add nsw i32 %i.dc, 1
  store i32 %i.dk, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z29test_while_loop_unroll_factorILi4EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader19.lr.ph, label %._crit_edge28

.preheader19.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 3
  br i1 %i.d, label %.preheader19.us.preheader, label %.preheader19.lr.ph.split

.preheader19.us.preheader:                        ; preds = %.preheader19.lr.ph
  %i.e = add nsw i32 %1, -3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -4                       ; 3 uses
  %i.h = and i32 %i.g, -4
  %i.i = and i32 %i.g, -4
  %i.j = add nuw nsw i32 %i.i, 4
  %i.k = add nuw nsw i32 %i.h, 4
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = icmp slt i32 %i.j, %1
  %3 = and i32 %i.g, -4
  %i.n = sub i32 %1, %3
  %4 = add i32 %i.n, -5                           ; 2 uses
  %i.o = zext i32 %4 to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %4, 7
  %n.vec = and i64 %i.p, 8589934584               ; 3 uses
  %i.q = add nuw nsw i64 %n.vec, %i.l
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.l
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.preheader19.us

.preheader19.us:                                  ; preds = %.preheader19.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.r = phi i32 [ %i.z, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader19.us.preheader ]
  %.01227.us = phi i32 [ %i.aa, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader19.us.preheader ]
  br label %bb.c

._crit_edge.us:                                   ; preds = %.lr.ph25.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.an, %..preheader_crit_edge.us ], [ %i.ay, %middle.block ], [ %i.ag, %.lr.ph25.us ]
  %i.s = load double, ptr @init_value, align 8, !tbaa !32
  %i.t = fptosi double %i.s to i32
  %i.u = mul i32 %i.t, -1564285888
  %i.v = add i32 %i.u, -1269844480
  %i.w = icmp eq i32 %.116.lcssa.us, %i.v
  br i1 %i.w, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.x = load i32, ptr @current_test, align 4, !tbaa !4
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.x) ; 0 uses
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.z = phi i32 [ %.pre53, %bb.b ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.aa = add nuw nsw i32 %.01227.us, 1           ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.z
  br i1 %i.ab, label %.preheader19.us, label %._crit_edge28, !llvm.loop !337

.lr.ph25.us:                                      ; preds = %.lr.ph25.us.preheader74, %.lr.ph25.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.lr.ph25.us ], [ %indvars.iv47.ph, %.lr.ph25.us.preheader74 ] ; 2 uses
  %.11623.us = phi i32 [ %i.ag, %.lr.ph25.us ], [ %.11623.us.ph, %.lr.ph25.us.preheader74 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv47
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = mul i32 %i.ad, 269850533
  %i.af = add i32 %.11623.us, -1138325064
  %i.ag = add i32 %i.af, %i.ae                    ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.ah = trunc nuw i64 %indvars.iv.next48 to i32
  %i.ai = icmp sgt i32 %1, %i.ah
  br i1 %i.ai, label %.lr.ph25.us, label %._crit_edge.us, !llvm.loop !338

bb.c:                                             ; preds = %.preheader19.us, %bb.c
  %indvars.iv44 = phi i64 [ 0, %.preheader19.us ], [ %indvars.iv.next45, %bb.c ] ; 2 uses
  %.01520.us = phi i32 [ 0, %.preheader19.us ], [ %i.an, %bb.c ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44
  %i.ak = load <4 x i32>, ptr %i.aj, align 4, !tbaa !4
  %i.al = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ak)
  %reass.mul.us = mul i32 %i.al, 269850533
  %i.am = add i32 %.01520.us, -258332960
  %i.an = add i32 %i.am, %reass.mul.us            ; 4 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next45, %i.f
  br i1 %i.ao, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !339

..preheader_crit_edge.us:                         ; preds = %bb.c
  br i1 %i.m, label %.lr.ph25.us.preheader, label %._crit_edge.us

.lr.ph25.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph25.us.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph25.us.preheader
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.an, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi72 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load73 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.ar = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.as = mul <4 x i32> %wide.load73, splat (i32 269850533)
  %i.at = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.au = add <4 x i32> %vec.phi72, splat (i32 -1138325064)
  %i.av = add <4 x i32> %i.at, %i.ar              ; 2 uses
  %i.aw = add <4 x i32> %i.au, %i.as              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !340

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %i.ay = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph25.us.preheader74

.lr.ph25.us.preheader74:                          ; preds = %.lr.ph25.us.preheader, %middle.block
  %indvars.iv47.ph = phi i64 [ %i.l, %.lr.ph25.us.preheader ], [ %i.q, %middle.block ]
  %.11623.us.ph = phi i32 [ %i.an, %.lr.ph25.us.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph25.us

.preheader19.lr.ph.split:                         ; preds = %.preheader19.lr.ph
  %i.az = icmp sgt i32 %1, 0
  br i1 %i.az, label %.preheader19.us29.preheader, label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %.preheader19.lr.ph.split
  %.pre50 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader19

.preheader19.us29.preheader:                      ; preds = %.preheader19.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader19.us29

.preheader19.us29:                                ; preds = %.preheader19.us29.preheader, %_Z9check_sumIiEvT_.exit.us32
  %i.bc = phi i32 [ %i.bi, %_Z9check_sumIiEvT_.exit.us32 ], [ %i.b, %.preheader19.us29.preheader ]
  %.01227.us30 = phi i32 [ %i.bj, %_Z9check_sumIiEvT_.exit.us32 ], [ 0, %.preheader19.us29.preheader ]
  %i.bd = load i32, ptr %0, align 4, !tbaa !4
  %i.be = mul i32 %i.bd, 269850533                ; 2 uses
  %i.bf = add i32 %i.be, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us36, label %bb.e

bb.d:                                             ; preds = %._crit_edge.us36
  %i.bg = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bg) ; 0 uses
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us32

_Z9check_sumIiEvT_.exit.us32:                     ; preds = %bb.d, %._crit_edge.us36
  %i.bi = phi i32 [ %.pre52, %bb.d ], [ %i.bc, %._crit_edge.us36 ] ; 2 uses
  %i.bj = add nuw nsw i32 %.01227.us30, 1         ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.bi
  br i1 %i.bk, label %.preheader19.us29, label %._crit_edge28, !llvm.loop !337

bb.e:                                             ; preds = %.preheader19.us29
  %i.bl = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bm = mul i32 %i.bl, 269850533
  %i.bn = add i32 %i.be, 2018317168
  %i.bo = add i32 %i.bn, %i.bm                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us36, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bq = mul i32 %i.bp, 269850533
  %i.br = add i32 %i.bo, -1138325064
  %i.bs = add i32 %i.br, %i.bq
  br label %._crit_edge.us36

._crit_edge.us36:                                 ; preds = %bb.f, %bb.e, %.preheader19.us29
  %.lcssa79 = phi i32 [ %i.bf, %.preheader19.us29 ], [ %i.bo, %bb.e ], [ %i.bs, %bb.f ]
  %i.bt = load double, ptr @init_value, align 8, !tbaa !32
  %i.bu = fptosi double %i.bt to i32
  %i.bv = mul i32 %i.bu, -1564285888
  %i.bw = add i32 %i.bv, -1269844480
  %i.bx = icmp eq i32 %.lcssa79, %i.bw
  br i1 %i.bx, label %_Z9check_sumIiEvT_.exit.us32, label %bb.d

.preheader19:                                     ; preds = %.preheader19.preheader, %_Z9check_sumIiEvT_.exit
  %i.by = phi i32 [ %i.cf, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader19.preheader ]
  %i.bz = phi double [ %i.cg, %_Z9check_sumIiEvT_.exit ], [ %.pre50, %.preheader19.preheader ] ; 2 uses
  %.01227 = phi i32 [ %i.ch, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader19.preheader ]
  %i.ca = fptosi double %i.bz to i32
  %i.cb = mul i32 %i.ca, -1564285888
  %i.cc = icmp eq i32 %i.cb, 1269844480
  br i1 %i.cc, label %_Z9check_sumIiEvT_.exit, label %bb.g

bb.g:                                             ; preds = %.preheader19
  %i.cd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cd) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre51 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader19, %bb.g
  %i.cf = phi i32 [ %i.by, %.preheader19 ], [ %.pre51, %bb.g ] ; 2 uses
  %i.cg = phi double [ %i.bz, %.preheader19 ], [ %.pre, %bb.g ]
  %i.ch = add nuw nsw i32 %.01227, 1              ; 2 uses
  %i.ci = icmp slt i32 %i.ch, %i.cf
  br i1 %i.ci, label %.preheader19, label %._crit_edge28, !llvm.loop !337

._crit_edge28:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us32, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cj = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cj, ptr @end_time, align 8, !tbaa !27
  %i.ck = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cl = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cm = icmp ne ptr %i.cl, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cn = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cn, %.pre.i
  %or.cond.i = select i1 %i.cm, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge28
  %i.co = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.co, ptr @allocated_results, align 4, !tbaa !4
  %i.cp = sext i32 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 4
  %i.cr = tail call ptr @realloc(ptr noundef %i.cl, i64 noundef %i.cq) #13 ; 3 uses
  store ptr %i.cr, ptr @results, align 8, !tbaa !8
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
end_hunk_7
begin_hunk_8_@_Z29test_while_loop_unroll_factorILi3EiEvPKT0_iPKc:bb.a
  br i1 %i.ad, label %.lr.ph24.us, label %._crit_edge.us, !llvm.loop !342

bb.c:                                             ; preds = %.preheader18.us, %bb.c
  %indvars.iv46 = phi i64 [ 3, %.preheader18.us ], [ %indvars.iv.next47, %bb.c ] ; 4 uses
  %indvars.iv43 = phi i64 [ 0, %.preheader18.us ], [ %indvars.iv.next44, %bb.c ] ; 2 uses
  %.01519.us = phi i32 [ 0, %.preheader18.us ], [ %i.al, %bb.c ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv43 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr i8, ptr %i.ae, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %reass.add.us = add i32 %i.ah, %i.af
  %reass.add17.us = add i32 %reass.add.us, %i.aj
  %reass.mul.us = mul i32 %reass.add17.us, 269850533
  %i.ak = add i32 %.01519.us, 879992104
  %i.al = add i32 %i.ak, %reass.mul.us            ; 4 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 3 ; 3 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next44, %i.f
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 3
  br i1 %i.am, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !343

..preheader_crit_edge.us:                         ; preds = %bb.c
  %i.an = trunc nuw nsw i64 %indvars.iv.next44 to i32
  %i.ao = icmp sgt i32 %1, %i.an
  br i1 %i.ao, label %.lr.ph24.us.preheader, label %._crit_edge.us

.lr.ph24.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph24.us.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph24.us.preheader
  %i.ap = add i64 %indvars.iv46, %n.vec
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.al, i64 0
  %i.ar = getelementptr [4 x i8], ptr %0, i64 %indvars.iv46
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aq, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %wide.load75 = load <4 x i32>, ptr %i.at, align 4, !tbaa !4
  %i.au = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.av = mul <4 x i32> %wide.load75, splat (i32 269850533)
  %i.aw = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.ax = add <4 x i32> %vec.phi74, splat (i32 -1138325064)
  %i.ay = add <4 x i32> %i.aw, %i.au              ; 2 uses
  %i.az = add <4 x i32> %i.ax, %i.av              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !344

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.az, %i.ay
  %i.bb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph24.us.preheader76

.lr.ph24.us.preheader76:                          ; preds = %.lr.ph24.us.preheader, %middle.block
  %indvars.iv48.ph = phi i64 [ %indvars.iv46, %.lr.ph24.us.preheader ], [ %i.ap, %middle.block ]
  %.11622.us.ph = phi i32 [ %i.al, %.lr.ph24.us.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph24.us

.preheader18.lr.ph.split:                         ; preds = %.preheader18.lr.ph
  %i.bc = icmp sgt i32 %1, 0
  br i1 %i.bc, label %.preheader18.us28.preheader, label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader18.lr.ph.split
  %.pre51 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader18

.preheader18.us28.preheader:                      ; preds = %.preheader18.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader18.us28

.preheader18.us28:                                ; preds = %.preheader18.us28.preheader, %_Z9check_sumIiEvT_.exit.us31
  %i.be = phi i32 [ %i.bk, %_Z9check_sumIiEvT_.exit.us31 ], [ %i.b, %.preheader18.us28.preheader ]
  %.01226.us29 = phi i32 [ %i.bl, %_Z9check_sumIiEvT_.exit.us31 ], [ 0, %.preheader18.us28.preheader ]
  %i.bf = load i32, ptr %0, align 4, !tbaa !4
  %i.bg = mul i32 %i.bf, 269850533                ; 2 uses
  %i.bh = add i32 %i.bg, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us35, label %bb.e

bb.d:                                             ; preds = %._crit_edge.us35
  %i.bi = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bi) ; 0 uses
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us31

_Z9check_sumIiEvT_.exit.us31:                     ; preds = %bb.d, %._crit_edge.us35
  %i.bk = phi i32 [ %.pre53, %bb.d ], [ %i.be, %._crit_edge.us35 ] ; 2 uses
  %i.bl = add nuw nsw i32 %.01226.us29, 1         ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.bk
  br i1 %i.bm, label %.preheader18.us28, label %._crit_edge27, !llvm.loop !341

bb.e:                                             ; preds = %.preheader18.us28
  %i.bn = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bo = mul i32 %i.bn, 269850533
  %i.bp = add i32 %i.bg, 2018317168
  %i.bq = add i32 %i.bp, %i.bo
  br label %._crit_edge.us35

._crit_edge.us35:                                 ; preds = %bb.e, %.preheader18.us28
  %.lcssa81 = phi i32 [ %i.bh, %.preheader18.us28 ], [ %i.bq, %bb.e ]
  %i.br = load double, ptr @init_value, align 8, !tbaa !32
  %i.bs = fptosi double %i.br to i32
  %i.bt = mul i32 %i.bs, -1564285888
  %i.bu = add i32 %i.bt, -1269844480
  %i.bv = icmp eq i32 %.lcssa81, %i.bu
  br i1 %i.bv, label %_Z9check_sumIiEvT_.exit.us31, label %bb.d

.preheader18:                                     ; preds = %.preheader18.preheader, %_Z9check_sumIiEvT_.exit
  %i.bw = phi i32 [ %i.cd, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader18.preheader ]
  %i.bx = phi double [ %i.ce, %_Z9check_sumIiEvT_.exit ], [ %.pre51, %.preheader18.preheader ] ; 2 uses
  %.01226 = phi i32 [ %i.cf, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader18.preheader ]
  %i.by = fptosi double %i.bx to i32
  %i.bz = mul i32 %i.by, -1564285888
  %i.ca = icmp eq i32 %i.bz, 1269844480
  br i1 %i.ca, label %_Z9check_sumIiEvT_.exit, label %bb.f

bb.f:                                             ; preds = %.preheader18
  %i.cb = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cb) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader18, %bb.f
  %i.cd = phi i32 [ %i.bw, %.preheader18 ], [ %.pre52, %bb.f ] ; 2 uses
  %i.ce = phi double [ %i.bx, %.preheader18 ], [ %.pre, %bb.f ]
  %i.cf = add nuw nsw i32 %.01226, 1              ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %i.cd
  br i1 %i.cg, label %.preheader18, label %._crit_edge27, !llvm.loop !341

._crit_edge27:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us31, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ch = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ch, ptr @end_time, align 8, !tbaa !27
  %i.ci = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cj = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.ck = icmp ne ptr %i.cj, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cl = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cl, %.pre.i
  %or.cond.i = select i1 %i.ck, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge27
  %i.cm = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cm, ptr @allocated_results, align 4, !tbaa !4
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 4
  %i.cp = tail call ptr @realloc(ptr noundef %i.cj, i64 noundef %i.co) #13 ; 3 uses
  store ptr %i.cp, ptr @results, align 8, !tbaa !8
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.h:                                             ; preds = %bb.g
  %i.cr = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.cr) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge27, %._crit_edge.i
  %i.ct = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cl, %._crit_edge27 ] ; 2 uses
  %i.cu = phi ptr [ %i.cp, %._crit_edge.i ], [ %i.cj, %._crit_edge27 ]
  %i.cv = sub nsw i64 %i.ch, %i.ci
  %i.cw = sitofp i64 %i.cv to double
  %i.cx = fdiv double %i.cw, 1.000000e+06
  %i.cy = sext i32 %i.ct to i64
  %i.cz = getelementptr inbounds [16 x i8], ptr %i.cu, i64 %i.cy ; 2 uses
  store double %i.cx, ptr %i.cz, align 8, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %2, ptr %i.da, align 8, !tbaa !15
  %i.db = add nsw i32 %i.ct, 1
  store i32 %i.db, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z29test_while_loop_unroll_factorILi2EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader17.lr.ph, label %._crit_edge26

.preheader17.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.preheader17.us.preheader, label %.preheader17.lr.ph.split

.preheader17.us.preheader:                        ; preds = %.preheader17.lr.ph
  %i.e = add nsw i32 %1, -1
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = add nsw i32 %1, -2                       ; 3 uses
  %i.h = and i32 %i.g, -2
  %i.i = and i32 %i.g, -2
  %i.j = add nuw nsw i32 %i.i, 2
  %i.k = add nuw nsw i32 %i.h, 2
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = icmp slt i32 %i.j, %1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %3 = add nsw i64 %umax, -1
  %4 = lshr i64 %3, 1
  %i.n = add nuw nsw i64 %4, 1                    ; 2 uses
  %min.iters.check70 = icmp ult i32 %1, 16
  %n.vec73 = and i64 %i.n, 9223372036854775800    ; 3 uses
  %5 = shl nuw i64 %n.vec73, 1
  %cmp.n85 = icmp eq i64 %i.n, %n.vec73
  %6 = and i32 %i.g, -2
  %7 = sub i32 %1, %6
  %8 = add i32 %7, -3                             ; 2 uses
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1                     ; 2 uses
  %min.iters.check = icmp ult i32 %8, 7
  %n.vec = and i64 %10, 8589934584                ; 3 uses
  %i.o = add nuw nsw i64 %n.vec, %i.l
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.l
  %cmp.n = icmp eq i64 %10, %n.vec
  br label %.preheader17.us

.preheader17.us:                                  ; preds = %.preheader17.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.p = phi i32 [ %i.al, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader17.us.preheader ]
  %.01225.us = phi i32 [ %i.am, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader17.us.preheader ]
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.body74

vector.body74:                                    ; preds = %.preheader17.us, %vector.body74
  %index75 = phi i64 [ %index.next82, %vector.body74 ], [ 0, %.preheader17.us ] ; 2 uses
  %vec.phi76 = phi <4 x i32> [ %i.aa, %vector.body74 ], [ zeroinitializer, %.preheader17.us ]
  %vec.phi77 = phi <4 x i32> [ %i.ab, %vector.body74 ], [ zeroinitializer, %.preheader17.us ]
  %i.q = shl i64 %index75, 1                      ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %wide.vec = load <8 x i32>, ptr %i.r, align 4, !tbaa !4 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec78 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec79 = load <8 x i32>, ptr %i.t, align 4, !tbaa !4 ; 2 uses
  %strided.vec80 = shufflevector <8 x i32> %wide.vec79, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec81 = shufflevector <8 x i32> %wide.vec79, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.u = add <4 x i32> %strided.vec78, %strided.vec
  %i.v = add <4 x i32> %strided.vec81, %strided.vec80
  %i.w = mul <4 x i32> %i.u, splat (i32 269850533)
  %i.x = mul <4 x i32> %i.v, splat (i32 269850533)
  %i.y = add <4 x i32> %vec.phi76, splat (i32 2018317168)
  %i.z = add <4 x i32> %vec.phi77, splat (i32 2018317168)
  %i.aa = add <4 x i32> %i.y, %i.w                ; 2 uses
  %i.ab = add <4 x i32> %i.z, %i.x                ; 2 uses
  %index.next82 = add nuw i64 %index75, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next82, %n.vec73
  br i1 %i.ac, label %middle.block83, label %vector.body74, !llvm.loop !345

middle.block83:                                   ; preds = %vector.body74
  %bin.rdx84 = add <4 x i32> %i.ab, %i.aa
  %i.ad = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  br i1 %cmp.n85, label %..preheader_crit_edge.us, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %.preheader17.us, %middle.block83
  %indvars.iv.ph = phi i64 [ 0, %.preheader17.us ], [ %5, %middle.block83 ]
  %.01518.us.ph = phi i32 [ 0, %.preheader17.us ], [ %i.ad, %middle.block83 ]
  br label %scalar.ph69

._crit_edge.us:                                   ; preds = %.lr.ph23.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %.lcssa, %..preheader_crit_edge.us ], [ %i.bl, %middle.block ], [ %i.as, %.lr.ph23.us ]
  %i.ae = load double, ptr @init_value, align 8, !tbaa !32
  %i.af = fptosi double %i.ae to i32
  %i.ag = mul i32 %i.af, -1564285888
  %i.ah = add i32 %i.ag, -1269844480
  %i.ai = icmp eq i32 %.116.lcssa.us, %i.ah
  br i1 %i.ai, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.aj) ; 0 uses
  %.pre50 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.al = phi i32 [ %.pre50, %bb.b ], [ %i.p, %._crit_edge.us ] ; 2 uses
  %i.am = add nuw nsw i32 %.01225.us, 1           ; 2 uses
  %i.an = icmp slt i32 %i.am, %i.al
  br i1 %i.an, label %.preheader17.us, label %._crit_edge26, !llvm.loop !346

.lr.ph23.us:                                      ; preds = %.lr.ph23.us.preheader88, %.lr.ph23.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %.lr.ph23.us ], [ %indvars.iv43.ph, %.lr.ph23.us.preheader88 ] ; 2 uses
  %.11621.us = phi i32 [ %i.as, %.lr.ph23.us ], [ %.11621.us.ph, %.lr.ph23.us.preheader88 ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv43
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = mul i32 %i.ap, 269850533
  %i.ar = add i32 %.11621.us, -1138325064
  %i.as = add i32 %i.ar, %i.aq                    ; 2 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.at = trunc nuw i64 %indvars.iv.next44 to i32
  %i.au = icmp sgt i32 %1, %i.at
  br i1 %i.au, label %.lr.ph23.us, label %._crit_edge.us, !llvm.loop !347

scalar.ph69:                                      ; preds = %scalar.ph69.preheader, %scalar.ph69
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph69 ], [ %indvars.iv.ph, %scalar.ph69.preheader ] ; 2 uses
  %.01518.us = phi i32 [ %i.ba, %scalar.ph69 ], [ %.01518.us.ph, %scalar.ph69.preheader ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = getelementptr i8, ptr %i.av, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %reass.add.us = add i32 %i.ay, %i.aw
  %reass.mul.us = mul i32 %reass.add.us, 269850533
  %i.az = add i32 %.01518.us, 2018317168
  %i.ba = add i32 %i.az, %reass.mul.us            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.bb, label %scalar.ph69, label %..preheader_crit_edge.us, !llvm.loop !348

..preheader_crit_edge.us:                         ; preds = %scalar.ph69, %middle.block83
  %.lcssa = phi i32 [ %i.ad, %middle.block83 ], [ %i.ba, %scalar.ph69 ] ; 3 uses
  br i1 %i.m, label %.lr.ph23.us.preheader, label %._crit_edge.us

.lr.ph23.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph23.us.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.us.preheader
  %i.bc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bc, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load68 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !4
  %i.be = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.bf = mul <4 x i32> %wide.load68, splat (i32 269850533)
  %i.bg = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.bh = add <4 x i32> %vec.phi67, splat (i32 -1138325064)
  %i.bi = add <4 x i32> %i.bg, %i.be              ; 2 uses
  %i.bj = add <4 x i32> %i.bh, %i.bf              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !349

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bj, %i.bi
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph23.us.preheader88

.lr.ph23.us.preheader88:                          ; preds = %.lr.ph23.us.preheader, %middle.block
  %indvars.iv43.ph = phi i64 [ %i.l, %.lr.ph23.us.preheader ], [ %i.o, %middle.block ]
  %.11621.us.ph = phi i32 [ %.lcssa, %.lr.ph23.us.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph23.us

.preheader17.lr.ph.split:                         ; preds = %.preheader17.lr.ph
  %i.bm = icmp eq i32 %1, 1
  br i1 %i.bm, label %._crit_edge.us34, label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %.preheader17.lr.ph.split
  %.pre46 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader17

bb.c:                                             ; preds = %._crit_edge.us34
  %i.bn = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bn) ; 0 uses
  %.pre49 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us30

_Z9check_sumIiEvT_.exit.us30:                     ; preds = %bb.c, %._crit_edge.us34
  %i.bp = phi i32 [ %.pre49, %bb.c ], [ %i.bs, %._crit_edge.us34 ] ; 2 uses
  %i.bq = add nuw nsw i32 %.01225.us28, 1         ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.bp
  br i1 %i.br, label %._crit_edge.us34, label %._crit_edge26, !llvm.loop !346

._crit_edge.us34:                                 ; preds = %.preheader17.lr.ph.split, %_Z9check_sumIiEvT_.exit.us30
  %i.bs = phi i32 [ %i.bp, %_Z9check_sumIiEvT_.exit.us30 ], [ %i.b, %.preheader17.lr.ph.split ]
  %.01225.us28 = phi i32 [ %i.bq, %_Z9check_sumIiEvT_.exit.us30 ], [ 0, %.preheader17.lr.ph.split ]
  %.pre48 = load i32, ptr %0, align 4, !tbaa !4
  %i.bt = mul i32 %.pre48, 269850533
  %i.bu = load double, ptr @init_value, align 8, !tbaa !32
  %i.bv = fptosi double %i.bu to i32
  %i.bw = mul i32 %i.bv, -1564285888
  %i.bx = add i32 %i.bw, -131519416
  %i.by = icmp eq i32 %i.bt, %i.bx
  br i1 %i.by, label %_Z9check_sumIiEvT_.exit.us30, label %bb.c

.preheader17:                                     ; preds = %.preheader17.preheader, %_Z9check_sumIiEvT_.exit
  %i.bz = phi i32 [ %i.cg, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader17.preheader ]
  %i.ca = phi double [ %i.ch, %_Z9check_sumIiEvT_.exit ], [ %.pre46, %.preheader17.preheader ] ; 2 uses
  %.01225 = phi i32 [ %i.ci, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader17.preheader ]
  %i.cb = fptosi double %i.ca to i32
  %i.cc = mul i32 %i.cb, -1564285888
  %i.cd = icmp eq i32 %i.cc, 1269844480
  br i1 %i.cd, label %_Z9check_sumIiEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader17
  %i.ce = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ce) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre47 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader17, %bb.d
  %i.cg = phi i32 [ %i.bz, %.preheader17 ], [ %.pre47, %bb.d ] ; 2 uses
  %i.ch = phi double [ %i.ca, %.preheader17 ], [ %.pre, %bb.d ]
  %i.ci = add nuw nsw i32 %.01225, 1              ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.cg
  br i1 %i.cj, label %.preheader17, label %._crit_edge26, !llvm.loop !346

._crit_edge26:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us30, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ck = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ck, ptr @end_time, align 8, !tbaa !27
  %i.cl = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cm = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cn = icmp ne ptr %i.cm, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.co = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.co, %.pre.i
  %or.cond.i = select i1 %i.cn, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge26
  %i.cp = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cp, ptr @allocated_results, align 4, !tbaa !4
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 4
  %i.cs = tail call ptr @realloc(ptr noundef %i.cm, i64 noundef %i.cr) #13 ; 3 uses
  store ptr %i.cs, ptr @results, align 8, !tbaa !8
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.cu = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.cu) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge26, %._crit_edge.i
  %i.cw = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.co, %._crit_edge26 ] ; 2 uses
  %i.cx = phi ptr [ %i.cs, %._crit_edge.i ], [ %i.cm, %._crit_edge26 ]
  %i.cy = sub nsw i64 %i.ck, %i.cl
  %i.cz = sitofp i64 %i.cy to double
  %i.da = fdiv double %i.cz, 1.000000e+06
  %i.db = sext i32 %i.cw to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.db ; 2 uses
  store double %i.da, ptr %i.dc, align 8, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %2, ptr %i.dd, align 8, !tbaa !15
  %i.de = add nsw i32 %i.cw, 1
  store i32 %i.de, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z29test_while_loop_unroll_factorILi1EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
end_hunk_8
