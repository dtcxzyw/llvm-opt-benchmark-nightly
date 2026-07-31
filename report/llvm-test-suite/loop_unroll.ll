inline.NumInlined: 2075
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 252
begin_hunk_0_@fprintf
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
  %i.k = shl nuw nsw i64 %index, 2
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
  %i.ad = shl nuw nsw i64 %index9, 3
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
  %i.h = and i32 %i.g, 2147483616
  %narrow = add nuw nsw i32 %i.h, 32
  %3 = and i32 %i.g, -32                          ; 2 uses
  %i.i = add nuw nsw i32 %3, 32
  %i.j = zext nneg i32 %i.i to i64                ; 3 uses
  %i.k = icmp slt i32 %narrow, %1
  %4 = add i32 %3, 33
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 %4)
  %i.l = and i32 %i.g, -32
  %i.m = sub i32 %5, %i.l
  %i.n = add i32 %i.m, -33                        ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check102 = icmp ult i32 %i.n, 7
  %n.vec105 = and i64 %i.p, 8589934584            ; 3 uses
  %i.q = add nuw nsw i64 %n.vec105, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n115 = icmp eq i64 %i.p, %n.vec105
  br label %.preheader48.us

.preheader48.us:                                  ; preds = %.preheader48.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %.01256.us = phi i32 [ %i.al, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader48.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader48.us, %bb.b
  %indvars.iv73 = phi i64 [ 0, %.preheader48.us ], [ %indvars.iv.next74, %bb.b ] ; 2 uses
  %.01649.us = phi i32 [ 0, %.preheader48.us ], [ %i.v, %bb.b ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv73
  %i.s = load <32 x i32>, ptr %i.r, align 4, !tbaa !4
  %i.t = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.s)
  %reass.mul.us = mul i32 %i.t, 269850533
  %i.u = add i32 %.01649.us, -2066663680
  %i.v = add i32 %i.u, %reass.mul.us              ; 4 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 32 ; 2 uses
  %i.w = icmp samesign ult i64 %indvars.iv.next74, %i.f
  br i1 %i.w, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !37

.lr.ph54.us:                                      ; preds = %.lr.ph54.us.preheader118, %.lr.ph54.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %.lr.ph54.us ], [ %indvars.iv76.ph, %.lr.ph54.us.preheader118 ] ; 2 uses
  %.11752.us = phi i32 [ %i.ab, %.lr.ph54.us ], [ %.11752.us.ph, %.lr.ph54.us.preheader118 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv76
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = mul i32 %i.y, 269850533
  %i.aa = add i32 %.11752.us, -1138325064
  %i.ab = add i32 %i.aa, %i.z                     ; 2 uses
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.ac = trunc nuw i64 %indvars.iv.next77 to i32
  %i.ad = icmp sgt i32 %1, %i.ac
  br i1 %i.ad, label %.lr.ph54.us, label %._crit_edge.us, !llvm.loop !38

._crit_edge.us:                                   ; preds = %.lr.ph54.us, %middle.block113, %..preheader_crit_edge.us
  %.117.lcssa.us = phi i32 [ %i.v, %..preheader_crit_edge.us ], [ %i.ax, %middle.block113 ], [ %i.ab, %.lr.ph54.us ]
  %i.ae = load double, ptr @init_value, align 8, !tbaa !32
  %i.af = fptosi double %i.ae to i32
  %i.ag = mul i32 %i.af, -1564285888
  %i.ah = add i32 %i.ag, -1269844480
  %i.ai = icmp eq i32 %.117.lcssa.us, %i.ah
  br i1 %i.ai, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.aj) ; 0 uses
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %._crit_edge.us
  %i.al = add nuw nsw i32 %.01256.us, 1           ; 2 uses
  %i.am = load i32, ptr @iterations, align 4, !tbaa !4
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %.preheader48.us, label %._crit_edge57, !llvm.loop !39

..preheader_crit_edge.us:                         ; preds = %bb.b
  br i1 %i.k, label %.lr.ph54.us.preheader, label %._crit_edge.us

.lr.ph54.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check102, label %.lr.ph54.us.preheader118, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph54.us.preheader
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.v, i64 0
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
  %indvars.iv76.ph = phi i64 [ %i.j, %.lr.ph54.us.preheader ], [ %i.q, %middle.block113 ]
  %.11752.us.ph = phi i32 [ %i.v, %.lr.ph54.us.preheader ], [ %i.ax, %middle.block113 ]
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

.preheader48.us58:                                ; preds = %.preheader48.us58.preheader, %_Z9check_sumIiEvT_.exit.us63
  %i.bg = phi i32 [ %i.cf, %_Z9check_sumIiEvT_.exit.us63 ], [ %i.b, %.preheader48.us58.preheader ]
  %.01256.us59 = phi i32 [ %i.cg, %_Z9check_sumIiEvT_.exit.us63 ], [ 0, %.preheader48.us58.preheader ]
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
  %.11752.us61.ph = phi i32 [ 0, %.preheader48.us58 ], [ %i.bx, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.11752.us61 = phi i32 [ %i.cc, %scalar.ph ], [ %.11752.us61.ph, %scalar.ph.preheader ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = mul i32 %i.bz, 269850533
  %i.cb = add i32 %.11752.us61, -1138325064
  %i.cc = add i32 %i.cb, %i.ca                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us65, label %scalar.ph, !llvm.loop !41

bb.d:                                             ; preds = %._crit_edge.us65
  %i.cd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cd) ; 0 uses
  %.pre81 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us63

_Z9check_sumIiEvT_.exit.us63:                     ; preds = %bb.d, %._crit_edge.us65
  %i.cf = phi i32 [ %.pre81, %bb.d ], [ %i.bg, %._crit_edge.us65 ] ; 2 uses
  %i.cg = add nuw nsw i32 %.01256.us59, 1         ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %i.cf
  br i1 %i.ch, label %.preheader48.us58, label %._crit_edge57, !llvm.loop !39

._crit_edge.us65:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa98 = phi i32 [ %i.bx, %middle.block ], [ %i.cc, %scalar.ph ]
  %i.ci = load double, ptr @init_value, align 8, !tbaa !32
  %i.cj = fptosi double %i.ci to i32
  %i.ck = mul i32 %i.cj, -1564285888
  %i.cl = add i32 %i.ck, -1269844480
  %i.cm = icmp eq i32 %.lcssa98, %i.cl
  br i1 %i.cm, label %_Z9check_sumIiEvT_.exit.us63, label %bb.d
end_hunk_0
begin_hunk_1_@_Z27test_for_loop_unroll_factorILi17EiEvPKT0_iPKc:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load98 = load <4 x i32>, ptr %i.au, align 4, !tbaa !4
  %wide.load99 = load <4 x i32>, ptr %i.av, align 4, !tbaa !4
  %i.aw = mul <4 x i32> %wide.load98, splat (i32 269850533)
  %i.ax = mul <4 x i32> %wide.load99, splat (i32 269850533)
  %i.ay = add <4 x i32> %vec.phi96, splat (i32 -1138325064)
  %i.az = add <4 x i32> %vec.phi97, splat (i32 -1138325064)
  %i.ba = add <4 x i32> %i.ay, %i.aw              ; 2 uses
  %i.bb = add <4 x i32> %i.az, %i.ax              ; 2 uses
  %index.next100 = add nuw i64 %index95, 8        ; 2 uses
  %i.bc = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.bc, label %middle.block101, label %vector.body94, !llvm.loop !115

middle.block101:                                  ; preds = %vector.body94
  %bin.rdx102 = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx102) ; 2 uses
  br i1 %cmp.n103, label %._crit_edge.us, label %.lr.ph38.us.preheader106

.lr.ph38.us.preheader106:                         ; preds = %.lr.ph38.us.preheader, %middle.block101
  %indvars.iv62.ph = phi i64 [ %indvars.iv60, %.lr.ph38.us.preheader ], [ %i.ar, %middle.block101 ]
  %.11636.us.ph = phi i32 [ %i.x, %.lr.ph38.us.preheader ], [ %i.bd, %middle.block101 ]
  br label %.lr.ph38.us

.preheader32.lr.ph.split:                         ; preds = %.preheader32.lr.ph
  %i.be = icmp sgt i32 %1, 0
  br i1 %i.be, label %.preheader32.us42.preheader, label %.preheader32.preheader

.preheader32.preheader:                           ; preds = %.preheader32.lr.ph.split
  %.pre65 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader32

.preheader32.us42.preheader:                      ; preds = %.preheader32.lr.ph.split
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = icmp eq i64 %n.vec, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader32.us42

.preheader32.us42:                                ; preds = %.preheader32.us42.preheader, %_Z9check_sumIiEvT_.exit.us47
  %i.bj = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit.us47 ], [ %i.b, %.preheader32.us42.preheader ]
  %.01240.us43 = phi i32 [ %i.cd, %_Z9check_sumIiEvT_.exit.us47 ], [ 0, %.preheader32.us42.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader32.us42
  %wide.load = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %wide.load88 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.bk = mul <4 x i32> %wide.load, splat (i32 269850533) ; 2 uses
  %i.bl = mul <4 x i32> %wide.load88, splat (i32 269850533) ; 2 uses
  %i.bm = add <4 x i32> %i.bk, splat (i32 -1138325064)
  %i.bn = add <4 x i32> %i.bl, splat (i32 -1138325064)
  br i1 %i.bg, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %wide.load.1 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !4
  %wide.load88.1 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !4
  %i.bo = mul <4 x i32> %wide.load.1, splat (i32 269850533)
  %i.bp = mul <4 x i32> %wide.load88.1, splat (i32 269850533)
  %i.bq = add <4 x i32> %i.bk, splat (i32 2018317168)
  %i.br = add <4 x i32> %i.bl, splat (i32 2018317168)
  %i.bs = add <4 x i32> %i.bq, %i.bo
  %i.bt = add <4 x i32> %i.br, %i.bp
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.body
  %.lcssa112 = phi <4 x i32> [ %i.bm, %vector.body ], [ %i.bs, %vector.body.1 ]
  %.lcssa111 = phi <4 x i32> [ %i.bn, %vector.body ], [ %i.bt, %vector.body.1 ]
  %bin.rdx = add <4 x i32> %.lcssa111, %.lcssa112
  %i.bu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us49, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader32.us42, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader32.us42 ], [ %n.vec, %middle.block ]
  %.11636.us45.ph = phi i32 [ 0, %.preheader32.us42 ], [ %i.bu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.11636.us45 = phi i32 [ %i.bz, %scalar.ph ], [ %.11636.us45.ph, %scalar.ph.preheader ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = mul i32 %i.bw, 269850533
  %i.by = add i32 %.11636.us45, -1138325064
  %i.bz = add i32 %i.by, %i.bx                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us49, label %scalar.ph, !llvm.loop !116

bb.d:                                             ; preds = %._crit_edge.us49
  %i.ca = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ca) ; 0 uses
  %.pre67 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us47

_Z9check_sumIiEvT_.exit.us47:                     ; preds = %bb.d, %._crit_edge.us49
  %i.cc = phi i32 [ %.pre67, %bb.d ], [ %i.bj, %._crit_edge.us49 ] ; 2 uses
  %i.cd = add nuw nsw i32 %.01240.us43, 1         ; 2 uses
  %i.ce = icmp slt i32 %i.cd, %i.cc
  br i1 %i.ce, label %.preheader32.us42, label %._crit_edge41, !llvm.loop !114

._crit_edge.us49:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa86 = phi i32 [ %i.bu, %middle.block ], [ %i.bz, %scalar.ph ]
  %i.cf = load double, ptr @init_value, align 8, !tbaa !32
  %i.cg = fptosi double %i.cf to i32
  %i.ch = mul i32 %i.cg, -1564285888
  %i.ci = add i32 %i.ch, -1269844480
  %i.cj = icmp eq i32 %.lcssa86, %i.ci
  br i1 %i.cj, label %_Z9check_sumIiEvT_.exit.us47, label %bb.d

.preheader32:                                     ; preds = %.preheader32.preheader, %_Z9check_sumIiEvT_.exit
  %i.ck = phi i32 [ %i.cr, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader32.preheader ]
  %i.cl = phi double [ %i.cs, %_Z9check_sumIiEvT_.exit ], [ %.pre65, %.preheader32.preheader ] ; 2 uses
  %.01240 = phi i32 [ %i.ct, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader32.preheader ]
  %i.cm = fptosi double %i.cl to i32
  %i.cn = mul i32 %i.cm, -1564285888
  %i.co = icmp eq i32 %i.cn, 1269844480
  br i1 %i.co, label %_Z9check_sumIiEvT_.exit, label %bb.e

bb.e:                                             ; preds = %.preheader32
  %i.cp = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cp) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre66 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader32, %bb.e
  %i.cr = phi i32 [ %i.ck, %.preheader32 ], [ %.pre66, %bb.e ] ; 2 uses
  %i.cs = phi double [ %i.cl, %.preheader32 ], [ %.pre, %bb.e ]
  %i.ct = add nuw nsw i32 %.01240, 1              ; 2 uses
  %i.cu = icmp slt i32 %i.ct, %i.cr
  br i1 %i.cu, label %.preheader32, label %._crit_edge41, !llvm.loop !114

._crit_edge41:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us47, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cv = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cv, ptr @end_time, align 8, !tbaa !27
  %i.cw = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cx = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cy = icmp ne ptr %i.cx, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cz = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cz, %.pre.i
  %or.cond.i = select i1 %i.cy, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge41
  %i.da = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.da, ptr @allocated_results, align 4, !tbaa !4
  %i.db = sext i32 %i.da to i64
  %i.dc = shl nsw i64 %i.db, 4
  %i.dd = tail call ptr @realloc(ptr noundef %i.cx, i64 noundef %i.dc) #13 ; 3 uses
  store ptr %i.dd, ptr @results, align 8, !tbaa !8
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.g:                                             ; preds = %bb.f
  %i.df = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.dg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.df) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge41, %._crit_edge.i
  %i.dh = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cz, %._crit_edge41 ] ; 2 uses
  %i.di = phi ptr [ %i.dd, %._crit_edge.i ], [ %i.cx, %._crit_edge41 ]
  %i.dj = sub nsw i64 %i.cv, %i.cw
  %i.dk = sitofp i64 %i.dj to double
  %i.dl = fdiv double %i.dk, 1.000000e+06
  %i.dm = sext i32 %i.dh to i64
  %i.dn = getelementptr inbounds [16 x i8], ptr %i.di, i64 %i.dm ; 2 uses
  store double %i.dl, ptr %i.dn, align 8, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %2, ptr %i.do, align 8, !tbaa !15
  %i.dp = add nsw i32 %i.dh, 1
  store i32 %i.dp, ptr @current_test, align 4, !tbaa !4
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
  %i.h = and i32 %i.g, 2147483632
  %narrow = add nuw nsw i32 %i.h, 16
  %3 = and i32 %i.g, -16                          ; 2 uses
  %i.i = add nuw nsw i32 %3, 16
  %i.j = zext nneg i32 %i.i to i64                ; 3 uses
  %i.k = icmp slt i32 %narrow, %1
  %4 = add i32 %3, 17
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 %4)
  %i.l = and i32 %i.g, -16
  %i.m = sub i32 %5, %i.l
  %i.n = add i32 %i.m, -17                        ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.n, 7
  %n.vec = and i64 %i.p, 8589934584               ; 3 uses
  %i.q = add nuw nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.preheader31.us

.preheader31.us:                                  ; preds = %.preheader31.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.r = phi i32 [ %i.am, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader31.us.preheader ]
  %.01239.us = phi i32 [ %i.an, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader31.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader31.us, %bb.b
  %indvars.iv56 = phi i64 [ 0, %.preheader31.us ], [ %indvars.iv.next57, %bb.b ] ; 2 uses
  %.01532.us = phi i32 [ 0, %.preheader31.us ], [ %i.w, %bb.b ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv56
  %i.t = load <16 x i32>, ptr %i.s, align 4, !tbaa !4
  %i.u = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.t)
  %reass.mul.us = mul i32 %i.u, 269850533
  %i.v = add i32 %.01532.us, -1033331840
  %i.w = add i32 %i.v, %reass.mul.us              ; 4 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 16 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next57, %i.f
  br i1 %i.x, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !117

.lr.ph37.us:                                      ; preds = %.lr.ph37.us.preheader86, %.lr.ph37.us
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.lr.ph37.us ], [ %indvars.iv59.ph, %.lr.ph37.us.preheader86 ] ; 2 uses
  %.11635.us = phi i32 [ %i.ac, %.lr.ph37.us ], [ %.11635.us.ph, %.lr.ph37.us.preheader86 ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv59
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = mul i32 %i.z, 269850533
  %i.ab = add i32 %.11635.us, -1138325064
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ad = trunc nuw i64 %indvars.iv.next60 to i32
  %i.ae = icmp sgt i32 %1, %i.ad
  br i1 %i.ae, label %.lr.ph37.us, label %._crit_edge.us, !llvm.loop !118

._crit_edge.us:                                   ; preds = %.lr.ph37.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.w, %..preheader_crit_edge.us ], [ %i.ay, %middle.block ], [ %i.ac, %.lr.ph37.us ]
  %i.af = load double, ptr @init_value, align 8, !tbaa !32
  %i.ag = fptosi double %i.af to i32
  %i.ah = mul i32 %i.ag, -1564285888
  %i.ai = add i32 %i.ah, -1269844480
  %i.aj = icmp eq i32 %.116.lcssa.us, %i.ai
  br i1 %i.aj, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  %i.ak = load i32, ptr @current_test, align 4, !tbaa !4
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ak) ; 0 uses
  %.pre65 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %._crit_edge.us
  %i.am = phi i32 [ %.pre65, %bb.c ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.an = add nuw nsw i32 %.01239.us, 1           ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.am
  br i1 %i.ao, label %.preheader31.us, label %._crit_edge40, !llvm.loop !119

..preheader_crit_edge.us:                         ; preds = %bb.b
  br i1 %i.k, label %.lr.ph37.us.preheader, label %._crit_edge.us

.lr.ph37.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph37.us.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph37.us.preheader
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.w, i64 0
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
  %indvars.iv59.ph = phi i64 [ %i.j, %.lr.ph37.us.preheader ], [ %i.q, %middle.block ]
  %.11635.us.ph = phi i32 [ %i.w, %.lr.ph37.us.preheader ], [ %i.ay, %middle.block ]
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

.preheader31.us41:                                ; preds = %.preheader31.us41.preheader, %_Z9check_sumIiEvT_.exit.us46
  %i.bb = phi i32 [ %i.cb, %_Z9check_sumIiEvT_.exit.us46 ], [ %i.b, %.preheader31.us41.preheader ]
  %.01239.us42 = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit.us46 ], [ 0, %.preheader31.us41.preheader ]
  br i1 %i.ba, label %.epil.preheader, label %.preheader31.us41.new

.preheader31.us41.new:                            ; preds = %.preheader31.us41, %.preheader31.us41.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader31.us41.new ], [ 0, %.preheader31.us41 ] ; 5 uses
  %.11635.us44 = phi i32 [ %i.by, %.preheader31.us41.new ], [ 0, %.preheader31.us41 ]
  %niter = phi i64 [ %niter.next.3, %.preheader31.us41.new ], [ 0, %.preheader31.us41 ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = mul i32 %i.bd, 269850533
  %i.bf = add i32 %.11635.us44, -1138325064
  %i.bg = add i32 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = mul i32 %i.bj, 269850533
  %i.bl = add i32 %i.bg, -1138325064
  %i.bm = add i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = mul i32 %i.bp, 269850533
  %i.br = add i32 %i.bm, -1138325064
  %i.bs = add i32 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = mul i32 %i.bv, 269850533
  %i.bx = add i32 %i.bs, -1138325064
  %i.by = add i32 %i.bx, %i.bw                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us48.unr-lcssa, label %.preheader31.us41.new, !llvm.loop !121

bb.d:                                             ; preds = %._crit_edge.us48
  %i.bz = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bz) ; 0 uses
  %.pre64 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us46

_Z9check_sumIiEvT_.exit.us46:                     ; preds = %bb.d, %._crit_edge.us48
  %i.cb = phi i32 [ %.pre64, %bb.d ], [ %i.bb, %._crit_edge.us48 ] ; 2 uses
  %i.cc = add nuw nsw i32 %.01239.us42, 1         ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.cb
  br i1 %i.cd, label %.preheader31.us41, label %._crit_edge40, !llvm.loop !119

._crit_edge.us48.unr-lcssa:                       ; preds = %.preheader31.us41.new
  br i1 %lcmp.mod.not, label %._crit_edge.us48, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us48.unr-lcssa, %.preheader31.us41
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader31.us41 ], [ %indvars.iv.next.3, %._crit_edge.us48.unr-lcssa ]
  %.11635.us44.epil.init = phi i32 [ 0, %.preheader31.us41 ], [ %i.by, %._crit_edge.us48.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %.11635.us44.epil = phi i32 [ %.11635.us44.epil.init, %.epil.preheader ], [ %i.ci, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = mul i32 %i.cf, 269850533
  %i.ch = add i32 %.11635.us44.epil, -1138325064
  %i.ci = add i32 %i.ch, %i.cg                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us48, label %bb.e, !llvm.loop !122

._crit_edge.us48:                                 ; preds = %bb.e, %._crit_edge.us48.unr-lcssa
  %.lcssa91 = phi i32 [ %i.by, %._crit_edge.us48.unr-lcssa ], [ %i.ci, %bb.e ]
  %i.cj = load double, ptr @init_value, align 8, !tbaa !32
  %i.ck = fptosi double %i.cj to i32
  %i.cl = mul i32 %i.ck, -1564285888
  %i.cm = add i32 %i.cl, -1269844480
  %i.cn = icmp eq i32 %.lcssa91, %i.cm
  br i1 %i.cn, label %_Z9check_sumIiEvT_.exit.us46, label %bb.d

.preheader31:                                     ; preds = %.preheader31.preheader, %_Z9check_sumIiEvT_.exit
  %i.co = phi i32 [ %i.cv, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader31.preheader ]
end_hunk_1
begin_hunk_2_@_Z27test_for_loop_unroll_factorILi9EiEvPKT0_iPKc:bb.a
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph30.us.preheader81

.lr.ph30.us.preheader81:                          ; preds = %.lr.ph30.us.preheader, %middle.block
  %indvars.iv54.ph = phi i64 [ %indvars.iv52, %.lr.ph30.us.preheader ], [ %i.ar, %middle.block ]
  %.11628.us.ph = phi i32 [ %i.x, %.lr.ph30.us.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph30.us

.preheader24.lr.ph.split:                         ; preds = %.preheader24.lr.ph
  %i.be = icmp sgt i32 %1, 0
  br i1 %i.be, label %.preheader24.us34.preheader, label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader24.lr.ph.split
  %.pre57 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader24

.preheader24.us34.preheader:                      ; preds = %.preheader24.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.2 = icmp eq i32 %1, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %exitcond.not.3 = icmp eq i32 %1, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not.4 = icmp eq i32 %1, 5
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %exitcond.not.5 = icmp eq i32 %1, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %exitcond.not.6 = icmp eq i32 %1, 7
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.preheader24.us34

.preheader24.us34:                                ; preds = %.preheader24.us34.preheader, %_Z9check_sumIiEvT_.exit.us39
  %i.bm = phi i32 [ %i.cu, %_Z9check_sumIiEvT_.exit.us39 ], [ %i.b, %.preheader24.us34.preheader ]
  %.01232.us35 = phi i32 [ %i.cv, %_Z9check_sumIiEvT_.exit.us39 ], [ 0, %.preheader24.us34.preheader ]
  %i.bn = load i32, ptr %0, align 4, !tbaa !4
  %i.bo = mul i32 %i.bn, 269850533                ; 2 uses
  %i.bp = add i32 %i.bo, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us41, label %bb.d

bb.d:                                             ; preds = %.preheader24.us34
  %i.bq = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.br = mul i32 %i.bq, 269850533
  %i.bs = add i32 %i.bo, 2018317168
  %i.bt = add i32 %i.bs, %i.br                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us41, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bv = mul i32 %i.bu, 269850533
  %i.bw = add i32 %i.bt, -1138325064
  %i.bx = add i32 %i.bw, %i.bv                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bz = mul i32 %i.by, 269850533
  %i.ca = add i32 %i.bx, -1138325064
  %i.cb = add i32 %i.ca, %i.bz                    ; 2 uses
  br i1 %exitcond.not.3, label %._crit_edge.us41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.cd = mul i32 %i.cc, 269850533
  %i.ce = add i32 %i.cb, -1138325064
  %i.cf = add i32 %i.ce, %i.cd                    ; 2 uses
  br i1 %exitcond.not.4, label %._crit_edge.us41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.ch = mul i32 %i.cg, 269850533
  %i.ci = add i32 %i.cf, -1138325064
  %i.cj = add i32 %i.ci, %i.ch                    ; 2 uses
  br i1 %exitcond.not.5, label %._crit_edge.us41, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.cl = mul i32 %i.ck, 269850533
  %i.cm = add i32 %i.cj, -1138325064
  %i.cn = add i32 %i.cm, %i.cl                    ; 2 uses
  br i1 %exitcond.not.6, label %._crit_edge.us41, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.cp = mul i32 %i.co, 269850533
  %i.cq = add i32 %i.cn, -1138325064
  %i.cr = add i32 %i.cq, %i.cp
  br label %._crit_edge.us41

bb.k:                                             ; preds = %._crit_edge.us41
  %i.cs = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cs) ; 0 uses
  %.pre59 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us39

_Z9check_sumIiEvT_.exit.us39:                     ; preds = %bb.k, %._crit_edge.us41
  %i.cu = phi i32 [ %.pre59, %bb.k ], [ %i.bm, %._crit_edge.us41 ] ; 2 uses
  %i.cv = add nuw nsw i32 %.01232.us35, 1         ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.cu
  br i1 %i.cw, label %.preheader24.us34, label %._crit_edge33, !llvm.loop !161

._crit_edge.us41:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.preheader24.us34
  %.lcssa86 = phi i32 [ %i.bp, %.preheader24.us34 ], [ %i.bt, %bb.d ], [ %i.bx, %bb.e ], [ %i.cb, %bb.f ], [ %i.cf, %bb.g ], [ %i.cj, %bb.h ], [ %i.cn, %bb.i ], [ %i.cr, %bb.j ]
  %i.cx = load double, ptr @init_value, align 8, !tbaa !32
  %i.cy = fptosi double %i.cx to i32
  %i.cz = mul i32 %i.cy, -1564285888
  %i.da = add i32 %i.cz, -1269844480
  %i.db = icmp eq i32 %.lcssa86, %i.da
  br i1 %i.db, label %_Z9check_sumIiEvT_.exit.us39, label %bb.k

.preheader24:                                     ; preds = %.preheader24.preheader, %_Z9check_sumIiEvT_.exit
  %i.dc = phi i32 [ %i.dj, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader24.preheader ]
  %i.dd = phi double [ %i.dk, %_Z9check_sumIiEvT_.exit ], [ %.pre57, %.preheader24.preheader ] ; 2 uses
  %.01232 = phi i32 [ %i.dl, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader24.preheader ]
  %i.de = fptosi double %i.dd to i32
  %i.df = mul i32 %i.de, -1564285888
  %i.dg = icmp eq i32 %i.df, 1269844480
  br i1 %i.dg, label %_Z9check_sumIiEvT_.exit, label %bb.l

bb.l:                                             ; preds = %.preheader24
  %i.dh = load i32, ptr @current_test, align 4, !tbaa !4
  %i.di = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.dh) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre58 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader24, %bb.l
  %i.dj = phi i32 [ %i.dc, %.preheader24 ], [ %.pre58, %bb.l ] ; 2 uses
  %i.dk = phi double [ %i.dd, %.preheader24 ], [ %.pre, %bb.l ]
  %i.dl = add nuw nsw i32 %.01232, 1              ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.dj
  br i1 %i.dm, label %.preheader24, label %._crit_edge33, !llvm.loop !161

._crit_edge33:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us39, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.dn = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.dn, ptr @end_time, align 8, !tbaa !27
  %i.do = load i64, ptr @start_time, align 8, !tbaa !27
  %i.dp = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.dq = icmp ne ptr %i.dp, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.dr = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.dr, %.pre.i
  %or.cond.i = select i1 %i.dq, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge33
  %i.ds = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ds, ptr @allocated_results, align 4, !tbaa !4
  %i.dt = sext i32 %i.ds to i64
  %i.du = shl nsw i64 %i.dt, 4
  %i.dv = tail call ptr @realloc(ptr noundef %i.dp, i64 noundef %i.du) #13 ; 3 uses
  store ptr %i.dv, ptr @results, align 8, !tbaa !8
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.n:                                             ; preds = %bb.m
  %i.dx = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.dy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.dx) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge33, %._crit_edge.i
  %i.dz = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.dr, %._crit_edge33 ] ; 2 uses
  %i.ea = phi ptr [ %i.dv, %._crit_edge.i ], [ %i.dp, %._crit_edge33 ]
  %i.eb = sub nsw i64 %i.dn, %i.do
  %i.ec = sitofp i64 %i.eb to double
  %i.ed = fdiv double %i.ec, 1.000000e+06
  %i.ee = sext i32 %i.dz to i64
  %i.ef = getelementptr inbounds [16 x i8], ptr %i.ea, i64 %i.ee ; 2 uses
  store double %i.ed, ptr %i.ef, align 8, !tbaa !11
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %2, ptr %i.eg, align 8, !tbaa !15
  %i.eh = add nsw i32 %i.dz, 1
  store i32 %i.eh, ptr @current_test, align 4, !tbaa !4
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
  %i.h = and i32 %i.g, 2147483640
  %narrow = add nuw nsw i32 %i.h, 8
  %3 = and i32 %i.g, -8                           ; 2 uses
  %i.i = add nuw nsw i32 %3, 8
  %i.j = zext nneg i32 %i.i to i64                ; 3 uses
  %i.k = icmp slt i32 %narrow, %1
  %4 = add i32 %3, 9
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 %4)
  %i.l = and i32 %i.g, -8
  %i.m = sub i32 %5, %i.l
  %i.n = add i32 %i.m, -9                         ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.n, 7
  %n.vec = and i64 %i.p, 8589934584               ; 3 uses
  %i.q = add nuw nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.preheader23.us

.preheader23.us:                                  ; preds = %.preheader23.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.r = phi i32 [ %i.am, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader23.us.preheader ]
  %.01231.us = phi i32 [ %i.an, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader23.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader23.us, %bb.b
  %indvars.iv48 = phi i64 [ 0, %.preheader23.us ], [ %indvars.iv.next49, %bb.b ] ; 2 uses
  %.01524.us = phi i32 [ 0, %.preheader23.us ], [ %i.w, %bb.b ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv48
  %i.t = load <8 x i32>, ptr %i.s, align 4, !tbaa !4
  %i.u = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.t)
  %reass.mul.us = mul i32 %i.u, 269850533
  %i.v = add i32 %.01524.us, -516665920
  %i.w = add i32 %i.v, %reass.mul.us              ; 4 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 8 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next49, %i.f
  br i1 %i.x, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !163

.lr.ph29.us:                                      ; preds = %.lr.ph29.us.preheader78, %.lr.ph29.us
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph29.us ], [ %indvars.iv51.ph, %.lr.ph29.us.preheader78 ] ; 2 uses
  %.11627.us = phi i32 [ %i.ac, %.lr.ph29.us ], [ %.11627.us.ph, %.lr.ph29.us.preheader78 ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv51
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = mul i32 %i.z, 269850533
  %i.ab = add i32 %.11627.us, -1138325064
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.ad = trunc nuw i64 %indvars.iv.next52 to i32
  %i.ae = icmp sgt i32 %1, %i.ad
  br i1 %i.ae, label %.lr.ph29.us, label %._crit_edge.us, !llvm.loop !164

._crit_edge.us:                                   ; preds = %.lr.ph29.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.w, %..preheader_crit_edge.us ], [ %i.ay, %middle.block ], [ %i.ac, %.lr.ph29.us ]
  %i.af = load double, ptr @init_value, align 8, !tbaa !32
  %i.ag = fptosi double %i.af to i32
  %i.ah = mul i32 %i.ag, -1564285888
  %i.ai = add i32 %i.ah, -1269844480
  %i.aj = icmp eq i32 %.116.lcssa.us, %i.ai
  br i1 %i.aj, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  %i.ak = load i32, ptr @current_test, align 4, !tbaa !4
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ak) ; 0 uses
  %.pre57 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %._crit_edge.us
  %i.am = phi i32 [ %.pre57, %bb.c ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.an = add nuw nsw i32 %.01231.us, 1           ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.am
  br i1 %i.ao, label %.preheader23.us, label %._crit_edge32, !llvm.loop !165

..preheader_crit_edge.us:                         ; preds = %bb.b
  br i1 %i.k, label %.lr.ph29.us.preheader, label %._crit_edge.us

.lr.ph29.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph29.us.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph29.us.preheader
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.w, i64 0
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
  %indvars.iv51.ph = phi i64 [ %i.j, %.lr.ph29.us.preheader ], [ %i.q, %middle.block ]
  %.11627.us.ph = phi i32 [ %i.w, %.lr.ph29.us.preheader ], [ %i.ay, %middle.block ]
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

.preheader23.us33:                                ; preds = %.preheader23.us33.preheader, %_Z9check_sumIiEvT_.exit.us38
  %i.bg = phi i32 [ %i.ck, %_Z9check_sumIiEvT_.exit.us38 ], [ %i.b, %.preheader23.us33.preheader ]
  %.01231.us34 = phi i32 [ %i.cl, %_Z9check_sumIiEvT_.exit.us38 ], [ 0, %.preheader23.us33.preheader ]
  %i.bh = load i32, ptr %0, align 4, !tbaa !4
  %i.bi = mul i32 %i.bh, 269850533                ; 2 uses
  %i.bj = add i32 %i.bi, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us40, label %bb.d

bb.d:                                             ; preds = %.preheader23.us33
  %i.bk = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bl = mul i32 %i.bk, 269850533
  %i.bm = add i32 %i.bi, 2018317168
  %i.bn = add i32 %i.bm, %i.bl                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us40, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bp = mul i32 %i.bo, 269850533
  %i.bq = add i32 %i.bn, -1138325064
  %i.br = add i32 %i.bq, %i.bp                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bt = mul i32 %i.bs, 269850533
  %i.bu = add i32 %i.br, -1138325064
  %i.bv = add i32 %i.bu, %i.bt                    ; 2 uses
  br i1 %exitcond.not.3, label %._crit_edge.us40, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bx = mul i32 %i.bw, 269850533
  %i.by = add i32 %i.bv, -1138325064
  %i.bz = add i32 %i.by, %i.bx                    ; 2 uses
  br i1 %exitcond.not.4, label %._crit_edge.us40, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ca = load i32, ptr %i.be, align 4, !tbaa !4
  %i.cb = mul i32 %i.ca, 269850533
  %i.cc = add i32 %i.bz, -1138325064
  %i.cd = add i32 %i.cc, %i.cb                    ; 2 uses
  br i1 %exitcond.not.5, label %._crit_edge.us40, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.cf = mul i32 %i.ce, 269850533
  %i.cg = add i32 %i.cd, -1138325064
  %i.ch = add i32 %i.cg, %i.cf
  br label %._crit_edge.us40

bb.j:                                             ; preds = %._crit_edge.us40
  %i.ci = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ci) ; 0 uses
  %.pre56 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us38

_Z9check_sumIiEvT_.exit.us38:                     ; preds = %bb.j, %._crit_edge.us40
  %i.ck = phi i32 [ %.pre56, %bb.j ], [ %i.bg, %._crit_edge.us40 ] ; 2 uses
  %i.cl = add nuw nsw i32 %.01231.us34, 1         ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %i.ck
  br i1 %i.cm, label %.preheader23.us33, label %._crit_edge32, !llvm.loop !165

._crit_edge.us40:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.preheader23.us33
  %.lcssa83 = phi i32 [ %i.bj, %.preheader23.us33 ], [ %i.bn, %bb.d ], [ %i.br, %bb.e ], [ %i.bv, %bb.f ], [ %i.bz, %bb.g ], [ %i.cd, %bb.h ], [ %i.ch, %bb.i ]
  %i.cn = load double, ptr @init_value, align 8, !tbaa !32
  %i.co = fptosi double %i.cn to i32
  %i.cp = mul i32 %i.co, -1564285888
  %i.cq = add i32 %i.cp, -1269844480
  %i.cr = icmp eq i32 %.lcssa83, %i.cq
  br i1 %i.cr, label %_Z9check_sumIiEvT_.exit.us38, label %bb.j

.preheader23:                                     ; preds = %.preheader23.preheader, %_Z9check_sumIiEvT_.exit
  %i.cs = phi i32 [ %i.cz, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader23.preheader ]
  %i.ct = phi double [ %i.da, %_Z9check_sumIiEvT_.exit ], [ %.pre54, %.preheader23.preheader ] ; 2 uses
  %.01231 = phi i32 [ %i.db, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader23.preheader ]
  %i.cu = fptosi double %i.ct to i32
  %i.cv = mul i32 %i.cu, -1564285888
end_hunk_2
begin_hunk_3_@_Z27test_for_loop_unroll_factorILi5EiEvPKT0_iPKc:bb.a
  %i.ao = icmp slt i32 %i.an, %i.am
  br i1 %i.ao, label %.preheader20.us, label %._crit_edge29, !llvm.loop !177

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.ap = trunc nuw nsw i64 %indvars.iv.next46 to i32
  %i.aq = icmp sgt i32 %1, %i.ap
  br i1 %i.aq, label %.lr.ph26.us.preheader, label %._crit_edge.us

.lr.ph26.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph26.us.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.us.preheader
  %i.ar = add i64 %indvars.iv48, %n.vec
  %i.as = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.x, i64 0
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv48
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.as, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi75 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <4 x i32>, ptr %i.au, align 4, !tbaa !4
  %wide.load76 = load <4 x i32>, ptr %i.av, align 4, !tbaa !4
  %i.aw = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.ax = mul <4 x i32> %wide.load76, splat (i32 269850533)
  %i.ay = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.az = add <4 x i32> %vec.phi75, splat (i32 -1138325064)
  %i.ba = add <4 x i32> %i.ay, %i.aw              ; 2 uses
  %i.bb = add <4 x i32> %i.az, %i.ax              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph26.us.preheader77

.lr.ph26.us.preheader77:                          ; preds = %.lr.ph26.us.preheader, %middle.block
  %indvars.iv50.ph = phi i64 [ %indvars.iv48, %.lr.ph26.us.preheader ], [ %i.ar, %middle.block ]
  %.11624.us.ph = phi i32 [ %i.x, %.lr.ph26.us.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph26.us

.preheader20.lr.ph.split:                         ; preds = %.preheader20.lr.ph
  %i.be = icmp sgt i32 %1, 0
  br i1 %i.be, label %.preheader20.us30.preheader, label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader20.lr.ph.split
  %.pre53 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader20

.preheader20.us30.preheader:                      ; preds = %.preheader20.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.2 = icmp eq i32 %1, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %.preheader20.us30

.preheader20.us30:                                ; preds = %.preheader20.us30.preheader, %_Z9check_sumIiEvT_.exit.us35
  %i.bi = phi i32 [ %i.ca, %_Z9check_sumIiEvT_.exit.us35 ], [ %i.b, %.preheader20.us30.preheader ]
  %.01228.us31 = phi i32 [ %i.cb, %_Z9check_sumIiEvT_.exit.us35 ], [ 0, %.preheader20.us30.preheader ]
  %i.bj = load i32, ptr %0, align 4, !tbaa !4
  %i.bk = mul i32 %i.bj, 269850533                ; 2 uses
  %i.bl = add i32 %i.bk, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us37, label %bb.d

bb.d:                                             ; preds = %.preheader20.us30
  %i.bm = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bn = mul i32 %i.bm, 269850533
  %i.bo = add i32 %i.bk, 2018317168
  %i.bp = add i32 %i.bo, %i.bn                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us37, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.br = mul i32 %i.bq, 269850533
  %i.bs = add i32 %i.bp, -1138325064
  %i.bt = add i32 %i.bs, %i.br                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bv = mul i32 %i.bu, 269850533
  %i.bw = add i32 %i.bt, -1138325064
  %i.bx = add i32 %i.bw, %i.bv
  br label %._crit_edge.us37

bb.g:                                             ; preds = %._crit_edge.us37
  %i.by = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.by) ; 0 uses
  %.pre55 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us35

_Z9check_sumIiEvT_.exit.us35:                     ; preds = %bb.g, %._crit_edge.us37
  %i.ca = phi i32 [ %.pre55, %bb.g ], [ %i.bi, %._crit_edge.us37 ] ; 2 uses
  %i.cb = add nuw nsw i32 %.01228.us31, 1         ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.ca
  br i1 %i.cc, label %.preheader20.us30, label %._crit_edge29, !llvm.loop !177

._crit_edge.us37:                                 ; preds = %bb.f, %bb.e, %bb.d, %.preheader20.us30
  %.lcssa82 = phi i32 [ %i.bl, %.preheader20.us30 ], [ %i.bp, %bb.d ], [ %i.bt, %bb.e ], [ %i.bx, %bb.f ]
  %i.cd = load double, ptr @init_value, align 8, !tbaa !32
  %i.ce = fptosi double %i.cd to i32
  %i.cf = mul i32 %i.ce, -1564285888
  %i.cg = add i32 %i.cf, -1269844480
  %i.ch = icmp eq i32 %.lcssa82, %i.cg
  br i1 %i.ch, label %_Z9check_sumIiEvT_.exit.us35, label %bb.g

.preheader20:                                     ; preds = %.preheader20.preheader, %_Z9check_sumIiEvT_.exit
  %i.ci = phi i32 [ %i.cp, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader20.preheader ]
  %i.cj = phi double [ %i.cq, %_Z9check_sumIiEvT_.exit ], [ %.pre53, %.preheader20.preheader ] ; 2 uses
  %.01228 = phi i32 [ %i.cr, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader20.preheader ]
  %i.ck = fptosi double %i.cj to i32
  %i.cl = mul i32 %i.ck, -1564285888
  %i.cm = icmp eq i32 %i.cl, 1269844480
  br i1 %i.cm, label %_Z9check_sumIiEvT_.exit, label %bb.h

bb.h:                                             ; preds = %.preheader20
  %i.cn = load i32, ptr @current_test, align 4, !tbaa !4
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cn) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre54 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader20, %bb.h
  %i.cp = phi i32 [ %i.ci, %.preheader20 ], [ %.pre54, %bb.h ] ; 2 uses
  %i.cq = phi double [ %i.cj, %.preheader20 ], [ %.pre, %bb.h ]
  %i.cr = add nuw nsw i32 %.01228, 1              ; 2 uses
  %i.cs = icmp slt i32 %i.cr, %i.cp
  br i1 %i.cs, label %.preheader20, label %._crit_edge29, !llvm.loop !177

._crit_edge29:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us35, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ct = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ct, ptr @end_time, align 8, !tbaa !27
  %i.cu = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cv = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cw = icmp ne ptr %i.cv, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cx = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cx, %.pre.i
  %or.cond.i = select i1 %i.cw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge29
  %i.cy = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cy, ptr @allocated_results, align 4, !tbaa !4
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 4
  %i.db = tail call ptr @realloc(ptr noundef %i.cv, i64 noundef %i.da) #13 ; 3 uses
  store ptr %i.db, ptr @results, align 8, !tbaa !8
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.j:                                             ; preds = %bb.i
  %i.dd = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.de = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.dd) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge29, %._crit_edge.i
  %i.df = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cx, %._crit_edge29 ] ; 2 uses
  %i.dg = phi ptr [ %i.db, %._crit_edge.i ], [ %i.cv, %._crit_edge29 ]
  %i.dh = sub nsw i64 %i.ct, %i.cu
  %i.di = sitofp i64 %i.dh to double
  %i.dj = fdiv double %i.di, 1.000000e+06
  %i.dk = sext i32 %i.df to i64
  %i.dl = getelementptr inbounds [16 x i8], ptr %i.dg, i64 %i.dk ; 2 uses
  store double %i.dj, ptr %i.dl, align 8, !tbaa !11
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %2, ptr %i.dm, align 8, !tbaa !15
  %i.dn = add nsw i32 %i.df, 1
  store i32 %i.dn, ptr @current_test, align 4, !tbaa !4
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
  %i.h = and i32 %i.g, 2147483644
  %narrow = add nuw nsw i32 %i.h, 4
  %3 = and i32 %i.g, -4                           ; 2 uses
  %i.i = add nuw nsw i32 %3, 4
  %i.j = zext nneg i32 %i.i to i64                ; 3 uses
  %i.k = icmp slt i32 %narrow, %1
  %4 = add i32 %3, 5
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 %4)
  %i.l = and i32 %i.g, -4
  %i.m = sub i32 %5, %i.l
  %i.n = add i32 %i.m, -5                         ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.n, 7
  %n.vec = and i64 %i.p, 8589934584               ; 3 uses
  %i.q = add nuw nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.preheader19.us

.preheader19.us:                                  ; preds = %.preheader19.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.r = phi i32 [ %i.am, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader19.us.preheader ]
  %.01227.us = phi i32 [ %i.an, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader19.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader19.us, %bb.b
  %indvars.iv44 = phi i64 [ 0, %.preheader19.us ], [ %indvars.iv.next45, %bb.b ] ; 2 uses
  %.01520.us = phi i32 [ 0, %.preheader19.us ], [ %i.w, %bb.b ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44
  %i.t = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %i.u = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.t)
  %reass.mul.us = mul i32 %i.u, 269850533
  %i.v = add i32 %.01520.us, -258332960
  %i.w = add i32 %i.v, %reass.mul.us              ; 4 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next45, %i.f
  br i1 %i.x, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !179

.lr.ph25.us:                                      ; preds = %.lr.ph25.us.preheader74, %.lr.ph25.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.lr.ph25.us ], [ %indvars.iv47.ph, %.lr.ph25.us.preheader74 ] ; 2 uses
  %.11623.us = phi i32 [ %i.ac, %.lr.ph25.us ], [ %.11623.us.ph, %.lr.ph25.us.preheader74 ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv47
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = mul i32 %i.z, 269850533
  %i.ab = add i32 %.11623.us, -1138325064
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.ad = trunc nuw i64 %indvars.iv.next48 to i32
  %i.ae = icmp sgt i32 %1, %i.ad
  br i1 %i.ae, label %.lr.ph25.us, label %._crit_edge.us, !llvm.loop !180

._crit_edge.us:                                   ; preds = %.lr.ph25.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.w, %..preheader_crit_edge.us ], [ %i.ay, %middle.block ], [ %i.ac, %.lr.ph25.us ]
  %i.af = load double, ptr @init_value, align 8, !tbaa !32
  %i.ag = fptosi double %i.af to i32
  %i.ah = mul i32 %i.ag, -1564285888
  %i.ai = add i32 %i.ah, -1269844480
  %i.aj = icmp eq i32 %.116.lcssa.us, %i.ai
  br i1 %i.aj, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  %i.ak = load i32, ptr @current_test, align 4, !tbaa !4
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ak) ; 0 uses
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %._crit_edge.us
  %i.am = phi i32 [ %.pre53, %bb.c ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.an = add nuw nsw i32 %.01227.us, 1           ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.am
  br i1 %i.ao, label %.preheader19.us, label %._crit_edge28, !llvm.loop !181

..preheader_crit_edge.us:                         ; preds = %bb.b
  br i1 %i.k, label %.lr.ph25.us.preheader, label %._crit_edge.us

.lr.ph25.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph25.us.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph25.us.preheader
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.w, i64 0
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
  %indvars.iv47.ph = phi i64 [ %i.j, %.lr.ph25.us.preheader ], [ %i.q, %middle.block ]
  %.11623.us.ph = phi i32 [ %i.w, %.lr.ph25.us.preheader ], [ %i.ay, %middle.block ]
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

.preheader19.us29:                                ; preds = %.preheader19.us29.preheader, %_Z9check_sumIiEvT_.exit.us34
  %i.bc = phi i32 [ %i.bq, %_Z9check_sumIiEvT_.exit.us34 ], [ %i.b, %.preheader19.us29.preheader ]
  %.01227.us30 = phi i32 [ %i.br, %_Z9check_sumIiEvT_.exit.us34 ], [ 0, %.preheader19.us29.preheader ]
  %i.bd = load i32, ptr %0, align 4, !tbaa !4
  %i.be = mul i32 %i.bd, 269850533                ; 2 uses
  %i.bf = add i32 %i.be, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us36, label %bb.d

bb.d:                                             ; preds = %.preheader19.us29
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bh = mul i32 %i.bg, 269850533
  %i.bi = add i32 %i.be, 2018317168
  %i.bj = add i32 %i.bi, %i.bh                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us36, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bl = mul i32 %i.bk, 269850533
  %i.bm = add i32 %i.bj, -1138325064
  %i.bn = add i32 %i.bm, %i.bl
  br label %._crit_edge.us36

bb.f:                                             ; preds = %._crit_edge.us36
  %i.bo = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bo) ; 0 uses
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us34

_Z9check_sumIiEvT_.exit.us34:                     ; preds = %bb.f, %._crit_edge.us36
  %i.bq = phi i32 [ %.pre52, %bb.f ], [ %i.bc, %._crit_edge.us36 ] ; 2 uses
  %i.br = add nuw nsw i32 %.01227.us30, 1         ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.bq
  br i1 %i.bs, label %.preheader19.us29, label %._crit_edge28, !llvm.loop !181

._crit_edge.us36:                                 ; preds = %bb.e, %bb.d, %.preheader19.us29
  %.lcssa79 = phi i32 [ %i.bf, %.preheader19.us29 ], [ %i.bj, %bb.d ], [ %i.bn, %bb.e ]
  %i.bt = load double, ptr @init_value, align 8, !tbaa !32
  %i.bu = fptosi double %i.bt to i32
  %i.bv = mul i32 %i.bu, -1564285888
  %i.bw = add i32 %i.bv, -1269844480
  %i.bx = icmp eq i32 %.lcssa79, %i.bw
  br i1 %i.bx, label %_Z9check_sumIiEvT_.exit.us34, label %bb.f

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
  br i1 %i.ci, label %.preheader19, label %._crit_edge28, !llvm.loop !181

._crit_edge28:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us34, %_Z9check_sumIiEvT_.exit.us, %bb.a
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
end_hunk_3
begin_hunk_4_@_Z27test_for_loop_unroll_factorILi3EiEvPKT0_iPKc:bb.a
._crit_edge.us:                                   ; preds = %.lr.ph24.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.y, %..preheader_crit_edge.us ], [ %i.be, %middle.block ], [ %i.ae, %.lr.ph24.us ]
  %i.ag = load double, ptr @init_value, align 8, !tbaa !32
  %i.ah = fptosi double %i.ag to i32
  %i.ai = mul i32 %i.ah, -1564285888
  %i.aj = add i32 %i.ai, -1269844480
  %i.ak = icmp eq i32 %.116.lcssa.us, %i.aj
  br i1 %i.ak, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  %i.al = load i32, ptr @current_test, align 4, !tbaa !4
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.al) ; 0 uses
  %.pre54 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %._crit_edge.us
  %i.an = phi i32 [ %.pre54, %bb.c ], [ %i.q, %._crit_edge.us ] ; 2 uses
  %i.ao = add nuw nsw i32 %.01226.us, 1           ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.an
  br i1 %i.ap, label %.preheader18.us, label %._crit_edge27, !llvm.loop !185

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.aq = trunc nuw nsw i64 %indvars.iv.next44 to i32
  %i.ar = icmp sgt i32 %1, %i.aq
  br i1 %i.ar, label %.lr.ph24.us.preheader, label %._crit_edge.us

.lr.ph24.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph24.us.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph24.us.preheader
  %i.as = add i64 %indvars.iv46, %n.vec
  %i.at = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.y, i64 0
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv46
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.at, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi73 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !4
  %wide.load74 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !4
  %i.ax = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.ay = mul <4 x i32> %wide.load74, splat (i32 269850533)
  %i.az = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.ba = add <4 x i32> %vec.phi73, splat (i32 -1138325064)
  %i.bb = add <4 x i32> %i.az, %i.ax              ; 2 uses
  %i.bc = add <4 x i32> %i.ba, %i.ay              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph24.us.preheader75

.lr.ph24.us.preheader75:                          ; preds = %.lr.ph24.us.preheader, %middle.block
  %indvars.iv48.ph = phi i64 [ %indvars.iv46, %.lr.ph24.us.preheader ], [ %i.as, %middle.block ]
  %.11622.us.ph = phi i32 [ %i.y, %.lr.ph24.us.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph24.us

.preheader18.lr.ph.split:                         ; preds = %.preheader18.lr.ph
  %i.bf = icmp sgt i32 %1, 0
  br i1 %i.bf, label %.preheader18.us28.preheader, label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader18.lr.ph.split
  %.pre51 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader18

.preheader18.us28.preheader:                      ; preds = %.preheader18.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader18.us28

.preheader18.us28:                                ; preds = %.preheader18.us28.preheader, %_Z9check_sumIiEvT_.exit.us33
  %i.bh = phi i32 [ %i.br, %_Z9check_sumIiEvT_.exit.us33 ], [ %i.b, %.preheader18.us28.preheader ]
  %.01226.us29 = phi i32 [ %i.bs, %_Z9check_sumIiEvT_.exit.us33 ], [ 0, %.preheader18.us28.preheader ]
  %i.bi = load i32, ptr %0, align 4, !tbaa !4
  %i.bj = mul i32 %i.bi, 269850533                ; 2 uses
  %i.bk = add i32 %i.bj, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us35, label %bb.d

bb.d:                                             ; preds = %.preheader18.us28
  %i.bl = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bm = mul i32 %i.bl, 269850533
  %i.bn = add i32 %i.bj, 2018317168
  %i.bo = add i32 %i.bn, %i.bm
  br label %._crit_edge.us35

bb.e:                                             ; preds = %._crit_edge.us35
  %i.bp = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bp) ; 0 uses
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us33

_Z9check_sumIiEvT_.exit.us33:                     ; preds = %bb.e, %._crit_edge.us35
  %i.br = phi i32 [ %.pre53, %bb.e ], [ %i.bh, %._crit_edge.us35 ] ; 2 uses
  %i.bs = add nuw nsw i32 %.01226.us29, 1         ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %i.br
  br i1 %i.bt, label %.preheader18.us28, label %._crit_edge27, !llvm.loop !185

._crit_edge.us35:                                 ; preds = %bb.d, %.preheader18.us28
  %.lcssa80 = phi i32 [ %i.bk, %.preheader18.us28 ], [ %i.bo, %bb.d ]
  %i.bu = load double, ptr @init_value, align 8, !tbaa !32
  %i.bv = fptosi double %i.bu to i32
  %i.bw = mul i32 %i.bv, -1564285888
  %i.bx = add i32 %i.bw, -1269844480
  %i.by = icmp eq i32 %.lcssa80, %i.bx
  br i1 %i.by, label %_Z9check_sumIiEvT_.exit.us33, label %bb.e

.preheader18:                                     ; preds = %.preheader18.preheader, %_Z9check_sumIiEvT_.exit
  %i.bz = phi i32 [ %i.cg, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader18.preheader ]
  %i.ca = phi double [ %i.ch, %_Z9check_sumIiEvT_.exit ], [ %.pre51, %.preheader18.preheader ] ; 2 uses
  %.01226 = phi i32 [ %i.ci, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader18.preheader ]
  %i.cb = fptosi double %i.ca to i32
  %i.cc = mul i32 %i.cb, -1564285888
  %i.cd = icmp eq i32 %i.cc, 1269844480
  br i1 %i.cd, label %_Z9check_sumIiEvT_.exit, label %bb.f

bb.f:                                             ; preds = %.preheader18
  %i.ce = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ce) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader18, %bb.f
  %i.cg = phi i32 [ %i.bz, %.preheader18 ], [ %.pre52, %bb.f ] ; 2 uses
  %i.ch = phi double [ %i.ca, %.preheader18 ], [ %.pre, %bb.f ]
  %i.ci = add nuw nsw i32 %.01226, 1              ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.cg
  br i1 %i.cj, label %.preheader18, label %._crit_edge27, !llvm.loop !185

._crit_edge27:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us33, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ck = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ck, ptr @end_time, align 8, !tbaa !27
  %i.cl = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cm = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cn = icmp ne ptr %i.cm, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.co = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.co, %.pre.i
  %or.cond.i = select i1 %i.cn, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge27
  %i.cp = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cp, ptr @allocated_results, align 4, !tbaa !4
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 4
  %i.cs = tail call ptr @realloc(ptr noundef %i.cm, i64 noundef %i.cr) #13 ; 3 uses
  store ptr %i.cs, ptr @results, align 8, !tbaa !8
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.h:                                             ; preds = %bb.g
  %i.cu = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.cu) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge27, %._crit_edge.i
  %i.cw = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.co, %._crit_edge27 ] ; 2 uses
  %i.cx = phi ptr [ %i.cs, %._crit_edge.i ], [ %i.cm, %._crit_edge27 ]
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
  %i.h = and i32 %i.g, 2147483646
  %narrow = add nuw nsw i32 %i.h, 2
  %3 = and i32 %i.g, -2                           ; 2 uses
  %i.i = add nuw nsw i32 %3, 2
  %i.j = zext nneg i32 %i.i to i64                ; 3 uses
  %i.k = icmp slt i32 %narrow, %1
  %i.l = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %i.m = add nsw i64 %i.l, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check70 = icmp ult i32 %1, 16
  %n.vec73 = and i64 %i.o, 9223372036854775800    ; 3 uses
  %i.p = shl nuw i64 %n.vec73, 1
  %cmp.n85 = icmp eq i64 %i.o, %n.vec73
  %4 = add i32 %3, 3
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 %4)
  %i.q = and i32 %i.g, -2
  %i.r = sub i32 %5, %i.q
  %i.s = add i32 %i.r, -3                         ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 7
  %n.vec = and i64 %i.u, 8589934584               ; 3 uses
  %i.v = add nuw nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br label %.preheader17.us

.preheader17.us:                                  ; preds = %.preheader17.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.w = phi i32 [ %i.bg, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader17.us.preheader ]
  %.01225.us = phi i32 [ %i.bh, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader17.us.preheader ]
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.body74

vector.body74:                                    ; preds = %.preheader17.us, %vector.body74
  %index75 = phi i64 [ %index.next82, %vector.body74 ], [ 0, %.preheader17.us ] ; 2 uses
  %vec.phi76 = phi <4 x i32> [ %i.ah, %vector.body74 ], [ zeroinitializer, %.preheader17.us ]
  %vec.phi77 = phi <4 x i32> [ %i.ai, %vector.body74 ], [ zeroinitializer, %.preheader17.us ]
  %i.x = shl nuw i64 %index75, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %wide.vec = load <8 x i32>, ptr %i.y, align 4, !tbaa !4 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec78 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec79 = load <8 x i32>, ptr %i.aa, align 4, !tbaa !4 ; 2 uses
  %strided.vec80 = shufflevector <8 x i32> %wide.vec79, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec81 = shufflevector <8 x i32> %wide.vec79, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ab = add <4 x i32> %strided.vec78, %strided.vec
  %i.ac = add <4 x i32> %strided.vec81, %strided.vec80
  %i.ad = mul <4 x i32> %i.ab, splat (i32 269850533)
  %i.ae = mul <4 x i32> %i.ac, splat (i32 269850533)
  %i.af = add <4 x i32> %vec.phi76, splat (i32 2018317168)
  %i.ag = add <4 x i32> %vec.phi77, splat (i32 2018317168)
  %i.ah = add <4 x i32> %i.af, %i.ad              ; 2 uses
  %i.ai = add <4 x i32> %i.ag, %i.ae              ; 2 uses
  %index.next82 = add nuw i64 %index75, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next82, %n.vec73
  br i1 %i.aj, label %middle.block83, label %vector.body74, !llvm.loop !187

middle.block83:                                   ; preds = %vector.body74
  %bin.rdx84 = add <4 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  br i1 %cmp.n85, label %..preheader_crit_edge.us, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %.preheader17.us, %middle.block83
  %indvars.iv.ph = phi i64 [ 0, %.preheader17.us ], [ %i.p, %middle.block83 ]
  %.01518.us.ph = phi i32 [ 0, %.preheader17.us ], [ %i.ak, %middle.block83 ]
  br label %scalar.ph69

scalar.ph69:                                      ; preds = %scalar.ph69.preheader, %scalar.ph69
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph69 ], [ %indvars.iv.ph, %scalar.ph69.preheader ] ; 2 uses
  %.01518.us = phi i32 [ %i.aq, %scalar.ph69 ], [ %.01518.us.ph, %scalar.ph69.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr i8, ptr %i.al, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %reass.add.us = add i32 %i.ao, %i.am
  %reass.mul.us = mul i32 %reass.add.us, 269850533
  %i.ap = add i32 %.01518.us, 2018317168
  %i.aq = add i32 %i.ap, %reass.mul.us            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ar = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.ar, label %scalar.ph69, label %..preheader_crit_edge.us, !llvm.loop !188

.lr.ph23.us:                                      ; preds = %.lr.ph23.us.preheader88, %.lr.ph23.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %.lr.ph23.us ], [ %indvars.iv43.ph, %.lr.ph23.us.preheader88 ] ; 2 uses
  %.11621.us = phi i32 [ %i.aw, %.lr.ph23.us ], [ %.11621.us.ph, %.lr.ph23.us.preheader88 ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv43
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = mul i32 %i.at, 269850533
  %i.av = add i32 %.11621.us, -1138325064
  %i.aw = add i32 %i.av, %i.au                    ; 2 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.ax = trunc nuw i64 %indvars.iv.next44 to i32
  %i.ay = icmp sgt i32 %1, %i.ax
  br i1 %i.ay, label %.lr.ph23.us, label %._crit_edge.us, !llvm.loop !189

._crit_edge.us:                                   ; preds = %.lr.ph23.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %.lcssa, %..preheader_crit_edge.us ], [ %i.bs, %middle.block ], [ %i.aw, %.lr.ph23.us ]
  %i.az = load double, ptr @init_value, align 8, !tbaa !32
  %i.ba = fptosi double %i.az to i32
  %i.bb = mul i32 %i.ba, -1564285888
  %i.bc = add i32 %i.bb, -1269844480
  %i.bd = icmp eq i32 %.116.lcssa.us, %i.bc
  br i1 %i.bd, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.be = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.be) ; 0 uses
  %.pre50 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.bg = phi i32 [ %.pre50, %bb.b ], [ %i.w, %._crit_edge.us ] ; 2 uses
  %i.bh = add nuw nsw i32 %.01225.us, 1           ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.bg
  br i1 %i.bi, label %.preheader17.us, label %._crit_edge26, !llvm.loop !190

..preheader_crit_edge.us:                         ; preds = %scalar.ph69, %middle.block83
  %.lcssa = phi i32 [ %i.ak, %middle.block83 ], [ %i.aq, %scalar.ph69 ] ; 3 uses
  br i1 %i.k, label %.lr.ph23.us.preheader, label %._crit_edge.us

.lr.ph23.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph23.us.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.us.preheader
  %i.bj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bj, %vector.ph ], [ %i.bp, %vector.body ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bq, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load68 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !4
  %i.bl = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.bm = mul <4 x i32> %wide.load68, splat (i32 269850533)
  %i.bn = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.bo = add <4 x i32> %vec.phi67, splat (i32 -1138325064)
  %i.bp = add <4 x i32> %i.bn, %i.bl              ; 2 uses
  %i.bq = add <4 x i32> %i.bo, %i.bm              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bq, %i.bp
  %i.bs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph23.us.preheader88

.lr.ph23.us.preheader88:                          ; preds = %.lr.ph23.us.preheader, %middle.block
  %indvars.iv43.ph = phi i64 [ %i.j, %.lr.ph23.us.preheader ], [ %i.v, %middle.block ]
  %.11621.us.ph = phi i32 [ %.lcssa, %.lr.ph23.us.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph23.us

.preheader17.lr.ph.split:                         ; preds = %.preheader17.lr.ph
  %i.bt = icmp eq i32 %1, 1
  br i1 %i.bt, label %._crit_edge.us34, label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %.preheader17.lr.ph.split
  %.pre46 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader17

bb.c:                                             ; preds = %._crit_edge.us34
  %i.bu = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bu) ; 0 uses
  %.pre49 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us32

_Z9check_sumIiEvT_.exit.us32:                     ; preds = %bb.c, %._crit_edge.us34
  %i.bw = phi i32 [ %.pre49, %bb.c ], [ %i.bz, %._crit_edge.us34 ] ; 2 uses
  %i.bx = add nuw nsw i32 %.01225.us28, 1         ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.bw
  br i1 %i.by, label %._crit_edge.us34, label %._crit_edge26, !llvm.loop !190

._crit_edge.us34:                                 ; preds = %.preheader17.lr.ph.split, %_Z9check_sumIiEvT_.exit.us32
  %i.bz = phi i32 [ %i.bw, %_Z9check_sumIiEvT_.exit.us32 ], [ %i.b, %.preheader17.lr.ph.split ]
  %.01225.us28 = phi i32 [ %i.bx, %_Z9check_sumIiEvT_.exit.us32 ], [ 0, %.preheader17.lr.ph.split ]
  %.pre48 = load i32, ptr %0, align 4, !tbaa !4
  %i.ca = mul i32 %.pre48, 269850533
  %i.cb = load double, ptr @init_value, align 8, !tbaa !32
  %i.cc = fptosi double %i.cb to i32
  %i.cd = mul i32 %i.cc, -1564285888
  %i.ce = add i32 %i.cd, -131519416
  %i.cf = icmp eq i32 %i.ca, %i.ce
  br i1 %i.cf, label %_Z9check_sumIiEvT_.exit.us32, label %bb.c

.preheader17:                                     ; preds = %.preheader17.preheader, %_Z9check_sumIiEvT_.exit
  %i.cg = phi i32 [ %i.cn, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader17.preheader ]
  %i.ch = phi double [ %i.co, %_Z9check_sumIiEvT_.exit ], [ %.pre46, %.preheader17.preheader ] ; 2 uses
  %.01225 = phi i32 [ %i.cp, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader17.preheader ]
  %i.ci = fptosi double %i.ch to i32
  %i.cj = mul i32 %i.ci, -1564285888
  %i.ck = icmp eq i32 %i.cj, 1269844480
  br i1 %i.ck, label %_Z9check_sumIiEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader17
  %i.cl = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cl) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre47 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader17, %bb.d
  %i.cn = phi i32 [ %i.cg, %.preheader17 ], [ %.pre47, %bb.d ] ; 2 uses
  %i.co = phi double [ %i.ch, %.preheader17 ], [ %.pre, %bb.d ]
  %i.cp = add nuw nsw i32 %.01225, 1              ; 2 uses
  %i.cq = icmp slt i32 %i.cp, %i.cn
  br i1 %i.cq, label %.preheader17, label %._crit_edge26, !llvm.loop !190

._crit_edge26:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us32, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cr = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cr, ptr @end_time, align 8, !tbaa !27
  %i.cs = load i64, ptr @start_time, align 8, !tbaa !27
  %i.ct = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cu = icmp ne ptr %i.ct, null
end_hunk_4
begin_hunk_5_@_Z27test_for_loop_unroll_factorILi2EiEvPKT0_iPKc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.db = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.dc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.db) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge26, %._crit_edge.i
  %i.dd = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cv, %._crit_edge26 ] ; 2 uses
  %i.de = phi ptr [ %i.cz, %._crit_edge.i ], [ %i.ct, %._crit_edge26 ]
  %i.df = sub nsw i64 %i.cr, %i.cs
  %i.dg = sitofp i64 %i.df to double
  %i.dh = fdiv double %i.dg, 1.000000e+06
  %i.di = sext i32 %i.dd to i64
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  store double %i.dh, ptr %i.dj, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %2, ptr %i.dk, align 8, !tbaa !15
  %i.dl = add nsw i32 %i.dd, 1
  store i32 %i.dl, ptr @current_test, align 4, !tbaa !4
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
  %i.e = phi i32 [ %i.ab, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader17.us.preheader ]
  %.01225.us = phi i32 [ %i.ac, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader17.us.preheader ]
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

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01518.us = phi i32 [ %i.t, %scalar.ph ], [ %.01518.us.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = mul i32 %i.q, 269850533
  %i.s = add i32 %.01518.us, -1138325064
  %i.t = add i32 %i.s, %i.r                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !193

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.o, %middle.block ], [ %i.t, %scalar.ph ]
  %i.u = load double, ptr @init_value, align 8, !tbaa !32
  %i.v = fptosi double %i.u to i32
  %i.w = mul i32 %i.v, -1564285888
  %i.x = add i32 %i.w, -1269844480
  %i.y = icmp eq i32 %.lcssa, %i.x
  br i1 %i.y, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.z = load i32, ptr @current_test, align 4, !tbaa !4
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.z) ; 0 uses
  %.pre40 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.ab = phi i32 [ %.pre40, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.ac = add nuw nsw i32 %.01225.us, 1           ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  br i1 %i.ad, label %.preheader17.us, label %._crit_edge26, !llvm.loop !194

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
  br i1 %i.ao, label %.preheader17, label %._crit_edge26, !llvm.loop !194

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
  %i.h = and i32 %i.g, 2147483616
  %narrow = add nuw nsw i32 %i.h, 32
  %3 = and i32 %i.g, -32                          ; 2 uses
  %i.i = add nuw nsw i32 %3, 32
  %i.j = zext nneg i32 %i.i to i64                ; 3 uses
  %i.k = icmp slt i32 %narrow, %1
  %4 = add i32 %3, 33
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 %4)
  %i.l = and i32 %i.g, -32
  %i.m = sub i32 %5, %i.l
  %i.n = add i32 %i.m, -33                        ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check102 = icmp ult i32 %i.n, 7
  %n.vec105 = and i64 %i.p, 8589934584            ; 3 uses
  %i.q = add nuw nsw i64 %n.vec105, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n115 = icmp eq i64 %i.p, %n.vec105
  br label %.preheader48.us

.preheader48.us:                                  ; preds = %.preheader48.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %.01256.us = phi i32 [ %i.al, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader48.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader48.us, %bb.b
  %indvars.iv73 = phi i64 [ 0, %.preheader48.us ], [ %indvars.iv.next74, %bb.b ] ; 2 uses
  %.01649.us = phi i32 [ 0, %.preheader48.us ], [ %i.v, %bb.b ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv73
  %i.s = load <32 x i32>, ptr %i.r, align 4, !tbaa !4
  %i.t = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.s)
  %reass.mul.us = mul i32 %i.t, 269850533
  %i.u = add i32 %.01649.us, -2066663680
  %i.v = add i32 %i.u, %reass.mul.us              ; 4 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 32 ; 2 uses
  %i.w = icmp samesign ult i64 %indvars.iv.next74, %i.f
  br i1 %i.w, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !195

.lr.ph54.us:                                      ; preds = %.lr.ph54.us.preheader118, %.lr.ph54.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %.lr.ph54.us ], [ %indvars.iv76.ph, %.lr.ph54.us.preheader118 ] ; 2 uses
  %.11752.us = phi i32 [ %i.ab, %.lr.ph54.us ], [ %.11752.us.ph, %.lr.ph54.us.preheader118 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv76
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = mul i32 %i.y, 269850533
  %i.aa = add i32 %.11752.us, -1138325064
  %i.ab = add i32 %i.aa, %i.z                     ; 2 uses
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.ac = trunc nuw i64 %indvars.iv.next77 to i32
  %i.ad = icmp sgt i32 %1, %i.ac
  br i1 %i.ad, label %.lr.ph54.us, label %._crit_edge.us, !llvm.loop !196

._crit_edge.us:                                   ; preds = %.lr.ph54.us, %middle.block113, %..preheader_crit_edge.us
  %.117.lcssa.us = phi i32 [ %i.v, %..preheader_crit_edge.us ], [ %i.ax, %middle.block113 ], [ %i.ab, %.lr.ph54.us ]
  %i.ae = load double, ptr @init_value, align 8, !tbaa !32
  %i.af = fptosi double %i.ae to i32
  %i.ag = mul i32 %i.af, -1564285888
  %i.ah = add i32 %i.ag, -1269844480
  %i.ai = icmp eq i32 %.117.lcssa.us, %i.ah
  br i1 %i.ai, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.aj) ; 0 uses
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %._crit_edge.us
  %i.al = add nuw nsw i32 %.01256.us, 1           ; 2 uses
  %i.am = load i32, ptr @iterations, align 4, !tbaa !4
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %.preheader48.us, label %._crit_edge57, !llvm.loop !197

..preheader_crit_edge.us:                         ; preds = %bb.b
  br i1 %i.k, label %.lr.ph54.us.preheader, label %._crit_edge.us

.lr.ph54.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check102, label %.lr.ph54.us.preheader118, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph54.us.preheader
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.v, i64 0
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
  %indvars.iv76.ph = phi i64 [ %i.j, %.lr.ph54.us.preheader ], [ %i.q, %middle.block113 ]
  %.11752.us.ph = phi i32 [ %i.v, %.lr.ph54.us.preheader ], [ %i.ax, %middle.block113 ]
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

.preheader48.us58:                                ; preds = %.preheader48.us58.preheader, %_Z9check_sumIiEvT_.exit.us63
  %i.bg = phi i32 [ %i.cf, %_Z9check_sumIiEvT_.exit.us63 ], [ %i.b, %.preheader48.us58.preheader ]
  %.01256.us59 = phi i32 [ %i.cg, %_Z9check_sumIiEvT_.exit.us63 ], [ 0, %.preheader48.us58.preheader ]
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
  %.11752.us61.ph = phi i32 [ 0, %.preheader48.us58 ], [ %i.bx, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.11752.us61 = phi i32 [ %i.cc, %scalar.ph ], [ %.11752.us61.ph, %scalar.ph.preheader ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = mul i32 %i.bz, 269850533
  %i.cb = add i32 %.11752.us61, -1138325064
  %i.cc = add i32 %i.cb, %i.ca                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us65, label %scalar.ph, !llvm.loop !199

bb.d:                                             ; preds = %._crit_edge.us65
  %i.cd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cd) ; 0 uses
  %.pre81 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us63

_Z9check_sumIiEvT_.exit.us63:                     ; preds = %bb.d, %._crit_edge.us65
  %i.cf = phi i32 [ %.pre81, %bb.d ], [ %i.bg, %._crit_edge.us65 ] ; 2 uses
  %i.cg = add nuw nsw i32 %.01256.us59, 1         ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %i.cf
  br i1 %i.ch, label %.preheader48.us58, label %._crit_edge57, !llvm.loop !197

._crit_edge.us65:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa98 = phi i32 [ %i.bx, %middle.block ], [ %i.cc, %scalar.ph ]
  %i.ci = load double, ptr @init_value, align 8, !tbaa !32
  %i.cj = fptosi double %i.ci to i32
  %i.ck = mul i32 %i.cj, -1564285888
  %i.cl = add i32 %i.ck, -1269844480
  %i.cm = icmp eq i32 %.lcssa98, %i.cl
  br i1 %i.cm, label %_Z9check_sumIiEvT_.exit.us63, label %bb.d
end_hunk_5
begin_hunk_6_@_Z29test_while_loop_unroll_factorILi17EiEvPKT0_iPKc:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load98 = load <4 x i32>, ptr %i.au, align 4, !tbaa !4
  %wide.load99 = load <4 x i32>, ptr %i.av, align 4, !tbaa !4
  %i.aw = mul <4 x i32> %wide.load98, splat (i32 269850533)
  %i.ax = mul <4 x i32> %wide.load99, splat (i32 269850533)
  %i.ay = add <4 x i32> %vec.phi96, splat (i32 -1138325064)
  %i.az = add <4 x i32> %vec.phi97, splat (i32 -1138325064)
  %i.ba = add <4 x i32> %i.ay, %i.aw              ; 2 uses
  %i.bb = add <4 x i32> %i.az, %i.ax              ; 2 uses
  %index.next100 = add nuw i64 %index95, 8        ; 2 uses
  %i.bc = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.bc, label %middle.block101, label %vector.body94, !llvm.loop !273

middle.block101:                                  ; preds = %vector.body94
  %bin.rdx102 = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx102) ; 2 uses
  br i1 %cmp.n103, label %._crit_edge.us, label %.lr.ph38.us.preheader106

.lr.ph38.us.preheader106:                         ; preds = %.lr.ph38.us.preheader, %middle.block101
  %indvars.iv62.ph = phi i64 [ %indvars.iv60, %.lr.ph38.us.preheader ], [ %i.ar, %middle.block101 ]
  %.11636.us.ph = phi i32 [ %i.x, %.lr.ph38.us.preheader ], [ %i.bd, %middle.block101 ]
  br label %.lr.ph38.us

.preheader32.lr.ph.split:                         ; preds = %.preheader32.lr.ph
  %i.be = icmp sgt i32 %1, 0
  br i1 %i.be, label %.preheader32.us42.preheader, label %.preheader32.preheader

.preheader32.preheader:                           ; preds = %.preheader32.lr.ph.split
  %.pre65 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader32

.preheader32.us42.preheader:                      ; preds = %.preheader32.lr.ph.split
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = icmp eq i64 %n.vec, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader32.us42

.preheader32.us42:                                ; preds = %.preheader32.us42.preheader, %_Z9check_sumIiEvT_.exit.us47
  %i.bj = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit.us47 ], [ %i.b, %.preheader32.us42.preheader ]
  %.01240.us43 = phi i32 [ %i.cd, %_Z9check_sumIiEvT_.exit.us47 ], [ 0, %.preheader32.us42.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader32.us42
  %wide.load = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %wide.load88 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.bk = mul <4 x i32> %wide.load, splat (i32 269850533) ; 2 uses
  %i.bl = mul <4 x i32> %wide.load88, splat (i32 269850533) ; 2 uses
  %i.bm = add <4 x i32> %i.bk, splat (i32 -1138325064)
  %i.bn = add <4 x i32> %i.bl, splat (i32 -1138325064)
  br i1 %i.bg, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %wide.load.1 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !4
  %wide.load88.1 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !4
  %i.bo = mul <4 x i32> %wide.load.1, splat (i32 269850533)
  %i.bp = mul <4 x i32> %wide.load88.1, splat (i32 269850533)
  %i.bq = add <4 x i32> %i.bk, splat (i32 2018317168)
  %i.br = add <4 x i32> %i.bl, splat (i32 2018317168)
  %i.bs = add <4 x i32> %i.bq, %i.bo
  %i.bt = add <4 x i32> %i.br, %i.bp
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.body
  %.lcssa112 = phi <4 x i32> [ %i.bm, %vector.body ], [ %i.bs, %vector.body.1 ]
  %.lcssa111 = phi <4 x i32> [ %i.bn, %vector.body ], [ %i.bt, %vector.body.1 ]
  %bin.rdx = add <4 x i32> %.lcssa111, %.lcssa112
  %i.bu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us49, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader32.us42, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader32.us42 ], [ %n.vec, %middle.block ]
  %.11636.us45.ph = phi i32 [ 0, %.preheader32.us42 ], [ %i.bu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.11636.us45 = phi i32 [ %i.bz, %scalar.ph ], [ %.11636.us45.ph, %scalar.ph.preheader ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = mul i32 %i.bw, 269850533
  %i.by = add i32 %.11636.us45, -1138325064
  %i.bz = add i32 %i.by, %i.bx                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us49, label %scalar.ph, !llvm.loop !274

bb.d:                                             ; preds = %._crit_edge.us49
  %i.ca = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ca) ; 0 uses
  %.pre67 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us47

_Z9check_sumIiEvT_.exit.us47:                     ; preds = %bb.d, %._crit_edge.us49
  %i.cc = phi i32 [ %.pre67, %bb.d ], [ %i.bj, %._crit_edge.us49 ] ; 2 uses
  %i.cd = add nuw nsw i32 %.01240.us43, 1         ; 2 uses
  %i.ce = icmp slt i32 %i.cd, %i.cc
  br i1 %i.ce, label %.preheader32.us42, label %._crit_edge41, !llvm.loop !272

._crit_edge.us49:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa86 = phi i32 [ %i.bu, %middle.block ], [ %i.bz, %scalar.ph ]
  %i.cf = load double, ptr @init_value, align 8, !tbaa !32
  %i.cg = fptosi double %i.cf to i32
  %i.ch = mul i32 %i.cg, -1564285888
  %i.ci = add i32 %i.ch, -1269844480
  %i.cj = icmp eq i32 %.lcssa86, %i.ci
  br i1 %i.cj, label %_Z9check_sumIiEvT_.exit.us47, label %bb.d

.preheader32:                                     ; preds = %.preheader32.preheader, %_Z9check_sumIiEvT_.exit
  %i.ck = phi i32 [ %i.cr, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader32.preheader ]
  %i.cl = phi double [ %i.cs, %_Z9check_sumIiEvT_.exit ], [ %.pre65, %.preheader32.preheader ] ; 2 uses
  %.01240 = phi i32 [ %i.ct, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader32.preheader ]
  %i.cm = fptosi double %i.cl to i32
  %i.cn = mul i32 %i.cm, -1564285888
  %i.co = icmp eq i32 %i.cn, 1269844480
  br i1 %i.co, label %_Z9check_sumIiEvT_.exit, label %bb.e

bb.e:                                             ; preds = %.preheader32
  %i.cp = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cp) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre66 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader32, %bb.e
  %i.cr = phi i32 [ %i.ck, %.preheader32 ], [ %.pre66, %bb.e ] ; 2 uses
  %i.cs = phi double [ %i.cl, %.preheader32 ], [ %.pre, %bb.e ]
  %i.ct = add nuw nsw i32 %.01240, 1              ; 2 uses
  %i.cu = icmp slt i32 %i.ct, %i.cr
  br i1 %i.cu, label %.preheader32, label %._crit_edge41, !llvm.loop !272

._crit_edge41:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us47, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cv = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cv, ptr @end_time, align 8, !tbaa !27
  %i.cw = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cx = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cy = icmp ne ptr %i.cx, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cz = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cz, %.pre.i
  %or.cond.i = select i1 %i.cy, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge41
  %i.da = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.da, ptr @allocated_results, align 4, !tbaa !4
  %i.db = sext i32 %i.da to i64
  %i.dc = shl nsw i64 %i.db, 4
  %i.dd = tail call ptr @realloc(ptr noundef %i.cx, i64 noundef %i.dc) #13 ; 3 uses
  store ptr %i.dd, ptr @results, align 8, !tbaa !8
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.g:                                             ; preds = %bb.f
  %i.df = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.dg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.df) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge41, %._crit_edge.i
  %i.dh = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cz, %._crit_edge41 ] ; 2 uses
  %i.di = phi ptr [ %i.dd, %._crit_edge.i ], [ %i.cx, %._crit_edge41 ]
  %i.dj = sub nsw i64 %i.cv, %i.cw
  %i.dk = sitofp i64 %i.dj to double
  %i.dl = fdiv double %i.dk, 1.000000e+06
  %i.dm = sext i32 %i.dh to i64
  %i.dn = getelementptr inbounds [16 x i8], ptr %i.di, i64 %i.dm ; 2 uses
  store double %i.dl, ptr %i.dn, align 8, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %2, ptr %i.do, align 8, !tbaa !15
  %i.dp = add nsw i32 %i.dh, 1
  store i32 %i.dp, ptr @current_test, align 4, !tbaa !4
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
  %i.h = and i32 %i.g, 2147483632
  %narrow = add nuw nsw i32 %i.h, 16
  %3 = and i32 %i.g, -16                          ; 2 uses
  %i.i = add nuw nsw i32 %3, 16
  %i.j = zext nneg i32 %i.i to i64                ; 3 uses
  %i.k = icmp slt i32 %narrow, %1
  %4 = add i32 %3, 17
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 %4)
  %i.l = and i32 %i.g, -16
  %i.m = sub i32 %5, %i.l
  %i.n = add i32 %i.m, -17                        ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.n, 7
  %n.vec = and i64 %i.p, 8589934584               ; 3 uses
  %i.q = add nuw nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.preheader31.us

.preheader31.us:                                  ; preds = %.preheader31.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.r = phi i32 [ %i.am, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader31.us.preheader ]
  %.01239.us = phi i32 [ %i.an, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader31.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader31.us, %bb.b
  %indvars.iv56 = phi i64 [ 0, %.preheader31.us ], [ %indvars.iv.next57, %bb.b ] ; 2 uses
  %.01532.us = phi i32 [ 0, %.preheader31.us ], [ %i.w, %bb.b ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv56
  %i.t = load <16 x i32>, ptr %i.s, align 4, !tbaa !4
  %i.u = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.t)
  %reass.mul.us = mul i32 %i.u, 269850533
  %i.v = add i32 %.01532.us, -1033331840
  %i.w = add i32 %i.v, %reass.mul.us              ; 4 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 16 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next57, %i.f
  br i1 %i.x, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !275

.lr.ph37.us:                                      ; preds = %.lr.ph37.us.preheader86, %.lr.ph37.us
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.lr.ph37.us ], [ %indvars.iv59.ph, %.lr.ph37.us.preheader86 ] ; 2 uses
  %.11635.us = phi i32 [ %i.ac, %.lr.ph37.us ], [ %.11635.us.ph, %.lr.ph37.us.preheader86 ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv59
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = mul i32 %i.z, 269850533
  %i.ab = add i32 %.11635.us, -1138325064
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ad = trunc nuw i64 %indvars.iv.next60 to i32
  %i.ae = icmp sgt i32 %1, %i.ad
  br i1 %i.ae, label %.lr.ph37.us, label %._crit_edge.us, !llvm.loop !276

._crit_edge.us:                                   ; preds = %.lr.ph37.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.w, %..preheader_crit_edge.us ], [ %i.ay, %middle.block ], [ %i.ac, %.lr.ph37.us ]
  %i.af = load double, ptr @init_value, align 8, !tbaa !32
  %i.ag = fptosi double %i.af to i32
  %i.ah = mul i32 %i.ag, -1564285888
  %i.ai = add i32 %i.ah, -1269844480
  %i.aj = icmp eq i32 %.116.lcssa.us, %i.ai
  br i1 %i.aj, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  %i.ak = load i32, ptr @current_test, align 4, !tbaa !4
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ak) ; 0 uses
  %.pre65 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %._crit_edge.us
  %i.am = phi i32 [ %.pre65, %bb.c ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.an = add nuw nsw i32 %.01239.us, 1           ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.am
  br i1 %i.ao, label %.preheader31.us, label %._crit_edge40, !llvm.loop !277

..preheader_crit_edge.us:                         ; preds = %bb.b
  br i1 %i.k, label %.lr.ph37.us.preheader, label %._crit_edge.us

.lr.ph37.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph37.us.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph37.us.preheader
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.w, i64 0
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
  %indvars.iv59.ph = phi i64 [ %i.j, %.lr.ph37.us.preheader ], [ %i.q, %middle.block ]
  %.11635.us.ph = phi i32 [ %i.w, %.lr.ph37.us.preheader ], [ %i.ay, %middle.block ]
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

.preheader31.us41:                                ; preds = %.preheader31.us41.preheader, %_Z9check_sumIiEvT_.exit.us46
  %i.bb = phi i32 [ %i.cb, %_Z9check_sumIiEvT_.exit.us46 ], [ %i.b, %.preheader31.us41.preheader ]
  %.01239.us42 = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit.us46 ], [ 0, %.preheader31.us41.preheader ]
  br i1 %i.ba, label %.epil.preheader, label %.preheader31.us41.new

.preheader31.us41.new:                            ; preds = %.preheader31.us41, %.preheader31.us41.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader31.us41.new ], [ 0, %.preheader31.us41 ] ; 5 uses
  %.11635.us44 = phi i32 [ %i.by, %.preheader31.us41.new ], [ 0, %.preheader31.us41 ]
  %niter = phi i64 [ %niter.next.3, %.preheader31.us41.new ], [ 0, %.preheader31.us41 ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = mul i32 %i.bd, 269850533
  %i.bf = add i32 %.11635.us44, -1138325064
  %i.bg = add i32 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = mul i32 %i.bj, 269850533
  %i.bl = add i32 %i.bg, -1138325064
  %i.bm = add i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = mul i32 %i.bp, 269850533
  %i.br = add i32 %i.bm, -1138325064
  %i.bs = add i32 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = mul i32 %i.bv, 269850533
  %i.bx = add i32 %i.bs, -1138325064
  %i.by = add i32 %i.bx, %i.bw                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us48.unr-lcssa, label %.preheader31.us41.new, !llvm.loop !279

bb.d:                                             ; preds = %._crit_edge.us48
  %i.bz = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bz) ; 0 uses
  %.pre64 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us46

_Z9check_sumIiEvT_.exit.us46:                     ; preds = %bb.d, %._crit_edge.us48
  %i.cb = phi i32 [ %.pre64, %bb.d ], [ %i.bb, %._crit_edge.us48 ] ; 2 uses
  %i.cc = add nuw nsw i32 %.01239.us42, 1         ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.cb
  br i1 %i.cd, label %.preheader31.us41, label %._crit_edge40, !llvm.loop !277

._crit_edge.us48.unr-lcssa:                       ; preds = %.preheader31.us41.new
  br i1 %lcmp.mod.not, label %._crit_edge.us48, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us48.unr-lcssa, %.preheader31.us41
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader31.us41 ], [ %indvars.iv.next.3, %._crit_edge.us48.unr-lcssa ]
  %.11635.us44.epil.init = phi i32 [ 0, %.preheader31.us41 ], [ %i.by, %._crit_edge.us48.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %.11635.us44.epil = phi i32 [ %.11635.us44.epil.init, %.epil.preheader ], [ %i.ci, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = mul i32 %i.cf, 269850533
  %i.ch = add i32 %.11635.us44.epil, -1138325064
  %i.ci = add i32 %i.ch, %i.cg                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us48, label %bb.e, !llvm.loop !280

._crit_edge.us48:                                 ; preds = %bb.e, %._crit_edge.us48.unr-lcssa
  %.lcssa91 = phi i32 [ %i.by, %._crit_edge.us48.unr-lcssa ], [ %i.ci, %bb.e ]
  %i.cj = load double, ptr @init_value, align 8, !tbaa !32
  %i.ck = fptosi double %i.cj to i32
  %i.cl = mul i32 %i.ck, -1564285888
  %i.cm = add i32 %i.cl, -1269844480
  %i.cn = icmp eq i32 %.lcssa91, %i.cm
  br i1 %i.cn, label %_Z9check_sumIiEvT_.exit.us46, label %bb.d

.preheader31:                                     ; preds = %.preheader31.preheader, %_Z9check_sumIiEvT_.exit
  %i.co = phi i32 [ %i.cv, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader31.preheader ]
end_hunk_6
begin_hunk_7_@_Z29test_while_loop_unroll_factorILi9EiEvPKT0_iPKc:bb.a
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph30.us.preheader81

.lr.ph30.us.preheader81:                          ; preds = %.lr.ph30.us.preheader, %middle.block
  %indvars.iv54.ph = phi i64 [ %indvars.iv52, %.lr.ph30.us.preheader ], [ %i.ar, %middle.block ]
  %.11628.us.ph = phi i32 [ %i.x, %.lr.ph30.us.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph30.us

.preheader24.lr.ph.split:                         ; preds = %.preheader24.lr.ph
  %i.be = icmp sgt i32 %1, 0
  br i1 %i.be, label %.preheader24.us34.preheader, label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader24.lr.ph.split
  %.pre57 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader24

.preheader24.us34.preheader:                      ; preds = %.preheader24.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.2 = icmp eq i32 %1, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %exitcond.not.3 = icmp eq i32 %1, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not.4 = icmp eq i32 %1, 5
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %exitcond.not.5 = icmp eq i32 %1, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %exitcond.not.6 = icmp eq i32 %1, 7
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.preheader24.us34

.preheader24.us34:                                ; preds = %.preheader24.us34.preheader, %_Z9check_sumIiEvT_.exit.us39
  %i.bm = phi i32 [ %i.cu, %_Z9check_sumIiEvT_.exit.us39 ], [ %i.b, %.preheader24.us34.preheader ]
  %.01232.us35 = phi i32 [ %i.cv, %_Z9check_sumIiEvT_.exit.us39 ], [ 0, %.preheader24.us34.preheader ]
  %i.bn = load i32, ptr %0, align 4, !tbaa !4
  %i.bo = mul i32 %i.bn, 269850533                ; 2 uses
  %i.bp = add i32 %i.bo, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us41, label %bb.d

bb.d:                                             ; preds = %.preheader24.us34
  %i.bq = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.br = mul i32 %i.bq, 269850533
  %i.bs = add i32 %i.bo, 2018317168
  %i.bt = add i32 %i.bs, %i.br                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us41, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bv = mul i32 %i.bu, 269850533
  %i.bw = add i32 %i.bt, -1138325064
  %i.bx = add i32 %i.bw, %i.bv                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bz = mul i32 %i.by, 269850533
  %i.ca = add i32 %i.bx, -1138325064
  %i.cb = add i32 %i.ca, %i.bz                    ; 2 uses
  br i1 %exitcond.not.3, label %._crit_edge.us41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.cd = mul i32 %i.cc, 269850533
  %i.ce = add i32 %i.cb, -1138325064
  %i.cf = add i32 %i.ce, %i.cd                    ; 2 uses
  br i1 %exitcond.not.4, label %._crit_edge.us41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.ch = mul i32 %i.cg, 269850533
  %i.ci = add i32 %i.cf, -1138325064
  %i.cj = add i32 %i.ci, %i.ch                    ; 2 uses
  br i1 %exitcond.not.5, label %._crit_edge.us41, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.cl = mul i32 %i.ck, 269850533
  %i.cm = add i32 %i.cj, -1138325064
  %i.cn = add i32 %i.cm, %i.cl                    ; 2 uses
  br i1 %exitcond.not.6, label %._crit_edge.us41, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.cp = mul i32 %i.co, 269850533
  %i.cq = add i32 %i.cn, -1138325064
  %i.cr = add i32 %i.cq, %i.cp
  br label %._crit_edge.us41

bb.k:                                             ; preds = %._crit_edge.us41
  %i.cs = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cs) ; 0 uses
  %.pre59 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us39

_Z9check_sumIiEvT_.exit.us39:                     ; preds = %bb.k, %._crit_edge.us41
  %i.cu = phi i32 [ %.pre59, %bb.k ], [ %i.bm, %._crit_edge.us41 ] ; 2 uses
  %i.cv = add nuw nsw i32 %.01232.us35, 1         ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.cu
  br i1 %i.cw, label %.preheader24.us34, label %._crit_edge33, !llvm.loop !319

._crit_edge.us41:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.preheader24.us34
  %.lcssa86 = phi i32 [ %i.bp, %.preheader24.us34 ], [ %i.bt, %bb.d ], [ %i.bx, %bb.e ], [ %i.cb, %bb.f ], [ %i.cf, %bb.g ], [ %i.cj, %bb.h ], [ %i.cn, %bb.i ], [ %i.cr, %bb.j ]
  %i.cx = load double, ptr @init_value, align 8, !tbaa !32
  %i.cy = fptosi double %i.cx to i32
  %i.cz = mul i32 %i.cy, -1564285888
  %i.da = add i32 %i.cz, -1269844480
  %i.db = icmp eq i32 %.lcssa86, %i.da
  br i1 %i.db, label %_Z9check_sumIiEvT_.exit.us39, label %bb.k

.preheader24:                                     ; preds = %.preheader24.preheader, %_Z9check_sumIiEvT_.exit
  %i.dc = phi i32 [ %i.dj, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader24.preheader ]
  %i.dd = phi double [ %i.dk, %_Z9check_sumIiEvT_.exit ], [ %.pre57, %.preheader24.preheader ] ; 2 uses
  %.01232 = phi i32 [ %i.dl, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader24.preheader ]
  %i.de = fptosi double %i.dd to i32
  %i.df = mul i32 %i.de, -1564285888
  %i.dg = icmp eq i32 %i.df, 1269844480
  br i1 %i.dg, label %_Z9check_sumIiEvT_.exit, label %bb.l

bb.l:                                             ; preds = %.preheader24
  %i.dh = load i32, ptr @current_test, align 4, !tbaa !4
  %i.di = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.dh) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre58 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader24, %bb.l
  %i.dj = phi i32 [ %i.dc, %.preheader24 ], [ %.pre58, %bb.l ] ; 2 uses
  %i.dk = phi double [ %i.dd, %.preheader24 ], [ %.pre, %bb.l ]
  %i.dl = add nuw nsw i32 %.01232, 1              ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.dj
  br i1 %i.dm, label %.preheader24, label %._crit_edge33, !llvm.loop !319

._crit_edge33:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us39, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.dn = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.dn, ptr @end_time, align 8, !tbaa !27
  %i.do = load i64, ptr @start_time, align 8, !tbaa !27
  %i.dp = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.dq = icmp ne ptr %i.dp, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.dr = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.dr, %.pre.i
  %or.cond.i = select i1 %i.dq, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge33
  %i.ds = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.ds, ptr @allocated_results, align 4, !tbaa !4
  %i.dt = sext i32 %i.ds to i64
  %i.du = shl nsw i64 %i.dt, 4
  %i.dv = tail call ptr @realloc(ptr noundef %i.dp, i64 noundef %i.du) #13 ; 3 uses
  store ptr %i.dv, ptr @results, align 8, !tbaa !8
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.n:                                             ; preds = %bb.m
  %i.dx = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.dy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.dx) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge33, %._crit_edge.i
  %i.dz = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.dr, %._crit_edge33 ] ; 2 uses
  %i.ea = phi ptr [ %i.dv, %._crit_edge.i ], [ %i.dp, %._crit_edge33 ]
  %i.eb = sub nsw i64 %i.dn, %i.do
  %i.ec = sitofp i64 %i.eb to double
  %i.ed = fdiv double %i.ec, 1.000000e+06
  %i.ee = sext i32 %i.dz to i64
  %i.ef = getelementptr inbounds [16 x i8], ptr %i.ea, i64 %i.ee ; 2 uses
  store double %i.ed, ptr %i.ef, align 8, !tbaa !11
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %2, ptr %i.eg, align 8, !tbaa !15
  %i.eh = add nsw i32 %i.dz, 1
  store i32 %i.eh, ptr @current_test, align 4, !tbaa !4
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
  %i.h = and i32 %i.g, 2147483640
  %narrow = add nuw nsw i32 %i.h, 8
  %3 = and i32 %i.g, -8                           ; 2 uses
  %i.i = add nuw nsw i32 %3, 8
  %i.j = zext nneg i32 %i.i to i64                ; 3 uses
  %i.k = icmp slt i32 %narrow, %1
  %4 = add i32 %3, 9
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 %4)
  %i.l = and i32 %i.g, -8
  %i.m = sub i32 %5, %i.l
  %i.n = add i32 %i.m, -9                         ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.n, 7
  %n.vec = and i64 %i.p, 8589934584               ; 3 uses
  %i.q = add nuw nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.preheader23.us

.preheader23.us:                                  ; preds = %.preheader23.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.r = phi i32 [ %i.am, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader23.us.preheader ]
  %.01231.us = phi i32 [ %i.an, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader23.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader23.us, %bb.b
  %indvars.iv48 = phi i64 [ 0, %.preheader23.us ], [ %indvars.iv.next49, %bb.b ] ; 2 uses
  %.01524.us = phi i32 [ 0, %.preheader23.us ], [ %i.w, %bb.b ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv48
  %i.t = load <8 x i32>, ptr %i.s, align 4, !tbaa !4
  %i.u = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.t)
  %reass.mul.us = mul i32 %i.u, 269850533
  %i.v = add i32 %.01524.us, -516665920
  %i.w = add i32 %i.v, %reass.mul.us              ; 4 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 8 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next49, %i.f
  br i1 %i.x, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !321

.lr.ph29.us:                                      ; preds = %.lr.ph29.us.preheader78, %.lr.ph29.us
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph29.us ], [ %indvars.iv51.ph, %.lr.ph29.us.preheader78 ] ; 2 uses
  %.11627.us = phi i32 [ %i.ac, %.lr.ph29.us ], [ %.11627.us.ph, %.lr.ph29.us.preheader78 ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv51
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = mul i32 %i.z, 269850533
  %i.ab = add i32 %.11627.us, -1138325064
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.ad = trunc nuw i64 %indvars.iv.next52 to i32
  %i.ae = icmp sgt i32 %1, %i.ad
  br i1 %i.ae, label %.lr.ph29.us, label %._crit_edge.us, !llvm.loop !322

._crit_edge.us:                                   ; preds = %.lr.ph29.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.w, %..preheader_crit_edge.us ], [ %i.ay, %middle.block ], [ %i.ac, %.lr.ph29.us ]
  %i.af = load double, ptr @init_value, align 8, !tbaa !32
  %i.ag = fptosi double %i.af to i32
  %i.ah = mul i32 %i.ag, -1564285888
  %i.ai = add i32 %i.ah, -1269844480
  %i.aj = icmp eq i32 %.116.lcssa.us, %i.ai
  br i1 %i.aj, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  %i.ak = load i32, ptr @current_test, align 4, !tbaa !4
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ak) ; 0 uses
  %.pre57 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %._crit_edge.us
  %i.am = phi i32 [ %.pre57, %bb.c ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.an = add nuw nsw i32 %.01231.us, 1           ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.am
  br i1 %i.ao, label %.preheader23.us, label %._crit_edge32, !llvm.loop !323

..preheader_crit_edge.us:                         ; preds = %bb.b
  br i1 %i.k, label %.lr.ph29.us.preheader, label %._crit_edge.us

.lr.ph29.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph29.us.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph29.us.preheader
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.w, i64 0
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
  %indvars.iv51.ph = phi i64 [ %i.j, %.lr.ph29.us.preheader ], [ %i.q, %middle.block ]
  %.11627.us.ph = phi i32 [ %i.w, %.lr.ph29.us.preheader ], [ %i.ay, %middle.block ]
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

.preheader23.us33:                                ; preds = %.preheader23.us33.preheader, %_Z9check_sumIiEvT_.exit.us38
  %i.bg = phi i32 [ %i.ck, %_Z9check_sumIiEvT_.exit.us38 ], [ %i.b, %.preheader23.us33.preheader ]
  %.01231.us34 = phi i32 [ %i.cl, %_Z9check_sumIiEvT_.exit.us38 ], [ 0, %.preheader23.us33.preheader ]
  %i.bh = load i32, ptr %0, align 4, !tbaa !4
  %i.bi = mul i32 %i.bh, 269850533                ; 2 uses
  %i.bj = add i32 %i.bi, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us40, label %bb.d

bb.d:                                             ; preds = %.preheader23.us33
  %i.bk = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bl = mul i32 %i.bk, 269850533
  %i.bm = add i32 %i.bi, 2018317168
  %i.bn = add i32 %i.bm, %i.bl                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us40, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bp = mul i32 %i.bo, 269850533
  %i.bq = add i32 %i.bn, -1138325064
  %i.br = add i32 %i.bq, %i.bp                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bt = mul i32 %i.bs, 269850533
  %i.bu = add i32 %i.br, -1138325064
  %i.bv = add i32 %i.bu, %i.bt                    ; 2 uses
  br i1 %exitcond.not.3, label %._crit_edge.us40, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bx = mul i32 %i.bw, 269850533
  %i.by = add i32 %i.bv, -1138325064
  %i.bz = add i32 %i.by, %i.bx                    ; 2 uses
  br i1 %exitcond.not.4, label %._crit_edge.us40, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ca = load i32, ptr %i.be, align 4, !tbaa !4
  %i.cb = mul i32 %i.ca, 269850533
  %i.cc = add i32 %i.bz, -1138325064
  %i.cd = add i32 %i.cc, %i.cb                    ; 2 uses
  br i1 %exitcond.not.5, label %._crit_edge.us40, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.cf = mul i32 %i.ce, 269850533
  %i.cg = add i32 %i.cd, -1138325064
  %i.ch = add i32 %i.cg, %i.cf
  br label %._crit_edge.us40

bb.j:                                             ; preds = %._crit_edge.us40
  %i.ci = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ci) ; 0 uses
  %.pre56 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us38

_Z9check_sumIiEvT_.exit.us38:                     ; preds = %bb.j, %._crit_edge.us40
  %i.ck = phi i32 [ %.pre56, %bb.j ], [ %i.bg, %._crit_edge.us40 ] ; 2 uses
  %i.cl = add nuw nsw i32 %.01231.us34, 1         ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %i.ck
  br i1 %i.cm, label %.preheader23.us33, label %._crit_edge32, !llvm.loop !323

._crit_edge.us40:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.preheader23.us33
  %.lcssa83 = phi i32 [ %i.bj, %.preheader23.us33 ], [ %i.bn, %bb.d ], [ %i.br, %bb.e ], [ %i.bv, %bb.f ], [ %i.bz, %bb.g ], [ %i.cd, %bb.h ], [ %i.ch, %bb.i ]
  %i.cn = load double, ptr @init_value, align 8, !tbaa !32
  %i.co = fptosi double %i.cn to i32
  %i.cp = mul i32 %i.co, -1564285888
  %i.cq = add i32 %i.cp, -1269844480
  %i.cr = icmp eq i32 %.lcssa83, %i.cq
  br i1 %i.cr, label %_Z9check_sumIiEvT_.exit.us38, label %bb.j

.preheader23:                                     ; preds = %.preheader23.preheader, %_Z9check_sumIiEvT_.exit
  %i.cs = phi i32 [ %i.cz, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader23.preheader ]
  %i.ct = phi double [ %i.da, %_Z9check_sumIiEvT_.exit ], [ %.pre54, %.preheader23.preheader ] ; 2 uses
  %.01231 = phi i32 [ %i.db, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader23.preheader ]
  %i.cu = fptosi double %i.ct to i32
  %i.cv = mul i32 %i.cu, -1564285888
end_hunk_7
begin_hunk_8_@_Z29test_while_loop_unroll_factorILi5EiEvPKT0_iPKc:bb.a
  %i.ao = icmp slt i32 %i.an, %i.am
  br i1 %i.ao, label %.preheader20.us, label %._crit_edge29, !llvm.loop !335

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.ap = trunc nuw nsw i64 %indvars.iv.next46 to i32
  %i.aq = icmp sgt i32 %1, %i.ap
  br i1 %i.aq, label %.lr.ph26.us.preheader, label %._crit_edge.us

.lr.ph26.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph26.us.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.us.preheader
  %i.ar = add i64 %indvars.iv48, %n.vec
  %i.as = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.x, i64 0
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv48
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.as, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi75 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <4 x i32>, ptr %i.au, align 4, !tbaa !4
  %wide.load76 = load <4 x i32>, ptr %i.av, align 4, !tbaa !4
  %i.aw = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.ax = mul <4 x i32> %wide.load76, splat (i32 269850533)
  %i.ay = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.az = add <4 x i32> %vec.phi75, splat (i32 -1138325064)
  %i.ba = add <4 x i32> %i.ay, %i.aw              ; 2 uses
  %i.bb = add <4 x i32> %i.az, %i.ax              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !336

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph26.us.preheader77

.lr.ph26.us.preheader77:                          ; preds = %.lr.ph26.us.preheader, %middle.block
  %indvars.iv50.ph = phi i64 [ %indvars.iv48, %.lr.ph26.us.preheader ], [ %i.ar, %middle.block ]
  %.11624.us.ph = phi i32 [ %i.x, %.lr.ph26.us.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph26.us

.preheader20.lr.ph.split:                         ; preds = %.preheader20.lr.ph
  %i.be = icmp sgt i32 %1, 0
  br i1 %i.be, label %.preheader20.us30.preheader, label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader20.lr.ph.split
  %.pre53 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader20

.preheader20.us30.preheader:                      ; preds = %.preheader20.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.2 = icmp eq i32 %1, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %.preheader20.us30

.preheader20.us30:                                ; preds = %.preheader20.us30.preheader, %_Z9check_sumIiEvT_.exit.us35
  %i.bi = phi i32 [ %i.ca, %_Z9check_sumIiEvT_.exit.us35 ], [ %i.b, %.preheader20.us30.preheader ]
  %.01228.us31 = phi i32 [ %i.cb, %_Z9check_sumIiEvT_.exit.us35 ], [ 0, %.preheader20.us30.preheader ]
  %i.bj = load i32, ptr %0, align 4, !tbaa !4
  %i.bk = mul i32 %i.bj, 269850533                ; 2 uses
  %i.bl = add i32 %i.bk, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us37, label %bb.d

bb.d:                                             ; preds = %.preheader20.us30
  %i.bm = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bn = mul i32 %i.bm, 269850533
  %i.bo = add i32 %i.bk, 2018317168
  %i.bp = add i32 %i.bo, %i.bn                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us37, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.br = mul i32 %i.bq, 269850533
  %i.bs = add i32 %i.bp, -1138325064
  %i.bt = add i32 %i.bs, %i.br                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bv = mul i32 %i.bu, 269850533
  %i.bw = add i32 %i.bt, -1138325064
  %i.bx = add i32 %i.bw, %i.bv
  br label %._crit_edge.us37

bb.g:                                             ; preds = %._crit_edge.us37
  %i.by = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.by) ; 0 uses
  %.pre55 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us35

_Z9check_sumIiEvT_.exit.us35:                     ; preds = %bb.g, %._crit_edge.us37
  %i.ca = phi i32 [ %.pre55, %bb.g ], [ %i.bi, %._crit_edge.us37 ] ; 2 uses
  %i.cb = add nuw nsw i32 %.01228.us31, 1         ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.ca
  br i1 %i.cc, label %.preheader20.us30, label %._crit_edge29, !llvm.loop !335

._crit_edge.us37:                                 ; preds = %bb.f, %bb.e, %bb.d, %.preheader20.us30
  %.lcssa82 = phi i32 [ %i.bl, %.preheader20.us30 ], [ %i.bp, %bb.d ], [ %i.bt, %bb.e ], [ %i.bx, %bb.f ]
  %i.cd = load double, ptr @init_value, align 8, !tbaa !32
  %i.ce = fptosi double %i.cd to i32
  %i.cf = mul i32 %i.ce, -1564285888
  %i.cg = add i32 %i.cf, -1269844480
  %i.ch = icmp eq i32 %.lcssa82, %i.cg
  br i1 %i.ch, label %_Z9check_sumIiEvT_.exit.us35, label %bb.g

.preheader20:                                     ; preds = %.preheader20.preheader, %_Z9check_sumIiEvT_.exit
  %i.ci = phi i32 [ %i.cp, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader20.preheader ]
  %i.cj = phi double [ %i.cq, %_Z9check_sumIiEvT_.exit ], [ %.pre53, %.preheader20.preheader ] ; 2 uses
  %.01228 = phi i32 [ %i.cr, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader20.preheader ]
  %i.ck = fptosi double %i.cj to i32
  %i.cl = mul i32 %i.ck, -1564285888
  %i.cm = icmp eq i32 %i.cl, 1269844480
  br i1 %i.cm, label %_Z9check_sumIiEvT_.exit, label %bb.h

bb.h:                                             ; preds = %.preheader20
  %i.cn = load i32, ptr @current_test, align 4, !tbaa !4
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cn) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre54 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader20, %bb.h
  %i.cp = phi i32 [ %i.ci, %.preheader20 ], [ %.pre54, %bb.h ] ; 2 uses
  %i.cq = phi double [ %i.cj, %.preheader20 ], [ %.pre, %bb.h ]
  %i.cr = add nuw nsw i32 %.01228, 1              ; 2 uses
  %i.cs = icmp slt i32 %i.cr, %i.cp
  br i1 %i.cs, label %.preheader20, label %._crit_edge29, !llvm.loop !335

._crit_edge29:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us35, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ct = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ct, ptr @end_time, align 8, !tbaa !27
  %i.cu = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cv = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cw = icmp ne ptr %i.cv, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cx = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cx, %.pre.i
  %or.cond.i = select i1 %i.cw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge29
  %i.cy = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cy, ptr @allocated_results, align 4, !tbaa !4
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 4
  %i.db = tail call ptr @realloc(ptr noundef %i.cv, i64 noundef %i.da) #13 ; 3 uses
  store ptr %i.db, ptr @results, align 8, !tbaa !8
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.j:                                             ; preds = %bb.i
  %i.dd = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.de = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.dd) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge29, %._crit_edge.i
  %i.df = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cx, %._crit_edge29 ] ; 2 uses
  %i.dg = phi ptr [ %i.db, %._crit_edge.i ], [ %i.cv, %._crit_edge29 ]
  %i.dh = sub nsw i64 %i.ct, %i.cu
  %i.di = sitofp i64 %i.dh to double
  %i.dj = fdiv double %i.di, 1.000000e+06
  %i.dk = sext i32 %i.df to i64
  %i.dl = getelementptr inbounds [16 x i8], ptr %i.dg, i64 %i.dk ; 2 uses
  store double %i.dj, ptr %i.dl, align 8, !tbaa !11
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %2, ptr %i.dm, align 8, !tbaa !15
  %i.dn = add nsw i32 %i.df, 1
  store i32 %i.dn, ptr @current_test, align 4, !tbaa !4
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
  %i.h = and i32 %i.g, 2147483644
  %narrow = add nuw nsw i32 %i.h, 4
  %3 = and i32 %i.g, -4                           ; 2 uses
  %i.i = add nuw nsw i32 %3, 4
  %i.j = zext nneg i32 %i.i to i64                ; 3 uses
  %i.k = icmp slt i32 %narrow, %1
  %4 = add i32 %3, 5
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 %4)
  %i.l = and i32 %i.g, -4
  %i.m = sub i32 %5, %i.l
  %i.n = add i32 %i.m, -5                         ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.n, 7
  %n.vec = and i64 %i.p, 8589934584               ; 3 uses
  %i.q = add nuw nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.preheader19.us

.preheader19.us:                                  ; preds = %.preheader19.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.r = phi i32 [ %i.am, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader19.us.preheader ]
  %.01227.us = phi i32 [ %i.an, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader19.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader19.us, %bb.b
  %indvars.iv44 = phi i64 [ 0, %.preheader19.us ], [ %indvars.iv.next45, %bb.b ] ; 2 uses
  %.01520.us = phi i32 [ 0, %.preheader19.us ], [ %i.w, %bb.b ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44
  %i.t = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %i.u = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.t)
  %reass.mul.us = mul i32 %i.u, 269850533
  %i.v = add i32 %.01520.us, -258332960
  %i.w = add i32 %i.v, %reass.mul.us              ; 4 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next45, %i.f
  br i1 %i.x, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !337

.lr.ph25.us:                                      ; preds = %.lr.ph25.us.preheader74, %.lr.ph25.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.lr.ph25.us ], [ %indvars.iv47.ph, %.lr.ph25.us.preheader74 ] ; 2 uses
  %.11623.us = phi i32 [ %i.ac, %.lr.ph25.us ], [ %.11623.us.ph, %.lr.ph25.us.preheader74 ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv47
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = mul i32 %i.z, 269850533
  %i.ab = add i32 %.11623.us, -1138325064
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.ad = trunc nuw i64 %indvars.iv.next48 to i32
  %i.ae = icmp sgt i32 %1, %i.ad
  br i1 %i.ae, label %.lr.ph25.us, label %._crit_edge.us, !llvm.loop !338

._crit_edge.us:                                   ; preds = %.lr.ph25.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.w, %..preheader_crit_edge.us ], [ %i.ay, %middle.block ], [ %i.ac, %.lr.ph25.us ]
  %i.af = load double, ptr @init_value, align 8, !tbaa !32
  %i.ag = fptosi double %i.af to i32
  %i.ah = mul i32 %i.ag, -1564285888
  %i.ai = add i32 %i.ah, -1269844480
  %i.aj = icmp eq i32 %.116.lcssa.us, %i.ai
  br i1 %i.aj, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  %i.ak = load i32, ptr @current_test, align 4, !tbaa !4
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ak) ; 0 uses
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %._crit_edge.us
  %i.am = phi i32 [ %.pre53, %bb.c ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.an = add nuw nsw i32 %.01227.us, 1           ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.am
  br i1 %i.ao, label %.preheader19.us, label %._crit_edge28, !llvm.loop !339

..preheader_crit_edge.us:                         ; preds = %bb.b
  br i1 %i.k, label %.lr.ph25.us.preheader, label %._crit_edge.us

.lr.ph25.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph25.us.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph25.us.preheader
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.w, i64 0
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
  %indvars.iv47.ph = phi i64 [ %i.j, %.lr.ph25.us.preheader ], [ %i.q, %middle.block ]
  %.11623.us.ph = phi i32 [ %i.w, %.lr.ph25.us.preheader ], [ %i.ay, %middle.block ]
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

.preheader19.us29:                                ; preds = %.preheader19.us29.preheader, %_Z9check_sumIiEvT_.exit.us34
  %i.bc = phi i32 [ %i.bq, %_Z9check_sumIiEvT_.exit.us34 ], [ %i.b, %.preheader19.us29.preheader ]
  %.01227.us30 = phi i32 [ %i.br, %_Z9check_sumIiEvT_.exit.us34 ], [ 0, %.preheader19.us29.preheader ]
  %i.bd = load i32, ptr %0, align 4, !tbaa !4
  %i.be = mul i32 %i.bd, 269850533                ; 2 uses
  %i.bf = add i32 %i.be, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us36, label %bb.d

bb.d:                                             ; preds = %.preheader19.us29
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bh = mul i32 %i.bg, 269850533
  %i.bi = add i32 %i.be, 2018317168
  %i.bj = add i32 %i.bi, %i.bh                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us36, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bl = mul i32 %i.bk, 269850533
  %i.bm = add i32 %i.bj, -1138325064
  %i.bn = add i32 %i.bm, %i.bl
  br label %._crit_edge.us36

bb.f:                                             ; preds = %._crit_edge.us36
  %i.bo = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bo) ; 0 uses
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us34

_Z9check_sumIiEvT_.exit.us34:                     ; preds = %bb.f, %._crit_edge.us36
  %i.bq = phi i32 [ %.pre52, %bb.f ], [ %i.bc, %._crit_edge.us36 ] ; 2 uses
  %i.br = add nuw nsw i32 %.01227.us30, 1         ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.bq
  br i1 %i.bs, label %.preheader19.us29, label %._crit_edge28, !llvm.loop !339

._crit_edge.us36:                                 ; preds = %bb.e, %bb.d, %.preheader19.us29
  %.lcssa79 = phi i32 [ %i.bf, %.preheader19.us29 ], [ %i.bj, %bb.d ], [ %i.bn, %bb.e ]
  %i.bt = load double, ptr @init_value, align 8, !tbaa !32
  %i.bu = fptosi double %i.bt to i32
  %i.bv = mul i32 %i.bu, -1564285888
  %i.bw = add i32 %i.bv, -1269844480
  %i.bx = icmp eq i32 %.lcssa79, %i.bw
  br i1 %i.bx, label %_Z9check_sumIiEvT_.exit.us34, label %bb.f

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
  br i1 %i.ci, label %.preheader19, label %._crit_edge28, !llvm.loop !339

._crit_edge28:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us34, %_Z9check_sumIiEvT_.exit.us, %bb.a
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
end_hunk_8
begin_hunk_9_@_Z29test_while_loop_unroll_factorILi3EiEvPKT0_iPKc:bb.a
._crit_edge.us:                                   ; preds = %.lr.ph24.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %i.y, %..preheader_crit_edge.us ], [ %i.be, %middle.block ], [ %i.ae, %.lr.ph24.us ]
  %i.ag = load double, ptr @init_value, align 8, !tbaa !32
  %i.ah = fptosi double %i.ag to i32
  %i.ai = mul i32 %i.ah, -1564285888
  %i.aj = add i32 %i.ai, -1269844480
  %i.ak = icmp eq i32 %.116.lcssa.us, %i.aj
  br i1 %i.ak, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  %i.al = load i32, ptr @current_test, align 4, !tbaa !4
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.al) ; 0 uses
  %.pre54 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %._crit_edge.us
  %i.an = phi i32 [ %.pre54, %bb.c ], [ %i.q, %._crit_edge.us ] ; 2 uses
  %i.ao = add nuw nsw i32 %.01226.us, 1           ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.an
  br i1 %i.ap, label %.preheader18.us, label %._crit_edge27, !llvm.loop !343

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.aq = trunc nuw nsw i64 %indvars.iv.next44 to i32
  %i.ar = icmp sgt i32 %1, %i.aq
  br i1 %i.ar, label %.lr.ph24.us.preheader, label %._crit_edge.us

.lr.ph24.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph24.us.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph24.us.preheader
  %i.as = add i64 %indvars.iv46, %n.vec
  %i.at = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.y, i64 0
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv46
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.at, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi73 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !4
  %wide.load74 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !4
  %i.ax = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.ay = mul <4 x i32> %wide.load74, splat (i32 269850533)
  %i.az = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.ba = add <4 x i32> %vec.phi73, splat (i32 -1138325064)
  %i.bb = add <4 x i32> %i.az, %i.ax              ; 2 uses
  %i.bc = add <4 x i32> %i.ba, %i.ay              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !344

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph24.us.preheader75

.lr.ph24.us.preheader75:                          ; preds = %.lr.ph24.us.preheader, %middle.block
  %indvars.iv48.ph = phi i64 [ %indvars.iv46, %.lr.ph24.us.preheader ], [ %i.as, %middle.block ]
  %.11622.us.ph = phi i32 [ %i.y, %.lr.ph24.us.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph24.us

.preheader18.lr.ph.split:                         ; preds = %.preheader18.lr.ph
  %i.bf = icmp sgt i32 %1, 0
  br i1 %i.bf, label %.preheader18.us28.preheader, label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader18.lr.ph.split
  %.pre51 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader18

.preheader18.us28.preheader:                      ; preds = %.preheader18.lr.ph.split
  %exitcond.not = icmp eq i32 %1, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader18.us28

.preheader18.us28:                                ; preds = %.preheader18.us28.preheader, %_Z9check_sumIiEvT_.exit.us33
  %i.bh = phi i32 [ %i.br, %_Z9check_sumIiEvT_.exit.us33 ], [ %i.b, %.preheader18.us28.preheader ]
  %.01226.us29 = phi i32 [ %i.bs, %_Z9check_sumIiEvT_.exit.us33 ], [ 0, %.preheader18.us28.preheader ]
  %i.bi = load i32, ptr %0, align 4, !tbaa !4
  %i.bj = mul i32 %i.bi, 269850533                ; 2 uses
  %i.bk = add i32 %i.bj, -1138325064
  br i1 %exitcond.not, label %._crit_edge.us35, label %bb.d

bb.d:                                             ; preds = %.preheader18.us28
  %i.bl = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bm = mul i32 %i.bl, 269850533
  %i.bn = add i32 %i.bj, 2018317168
  %i.bo = add i32 %i.bn, %i.bm
  br label %._crit_edge.us35

bb.e:                                             ; preds = %._crit_edge.us35
  %i.bp = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bp) ; 0 uses
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us33

_Z9check_sumIiEvT_.exit.us33:                     ; preds = %bb.e, %._crit_edge.us35
  %i.br = phi i32 [ %.pre53, %bb.e ], [ %i.bh, %._crit_edge.us35 ] ; 2 uses
  %i.bs = add nuw nsw i32 %.01226.us29, 1         ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %i.br
  br i1 %i.bt, label %.preheader18.us28, label %._crit_edge27, !llvm.loop !343

._crit_edge.us35:                                 ; preds = %bb.d, %.preheader18.us28
  %.lcssa80 = phi i32 [ %i.bk, %.preheader18.us28 ], [ %i.bo, %bb.d ]
  %i.bu = load double, ptr @init_value, align 8, !tbaa !32
  %i.bv = fptosi double %i.bu to i32
  %i.bw = mul i32 %i.bv, -1564285888
  %i.bx = add i32 %i.bw, -1269844480
  %i.by = icmp eq i32 %.lcssa80, %i.bx
  br i1 %i.by, label %_Z9check_sumIiEvT_.exit.us33, label %bb.e

.preheader18:                                     ; preds = %.preheader18.preheader, %_Z9check_sumIiEvT_.exit
  %i.bz = phi i32 [ %i.cg, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader18.preheader ]
  %i.ca = phi double [ %i.ch, %_Z9check_sumIiEvT_.exit ], [ %.pre51, %.preheader18.preheader ] ; 2 uses
  %.01226 = phi i32 [ %i.ci, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader18.preheader ]
  %i.cb = fptosi double %i.ca to i32
  %i.cc = mul i32 %i.cb, -1564285888
  %i.cd = icmp eq i32 %i.cc, 1269844480
  br i1 %i.cd, label %_Z9check_sumIiEvT_.exit, label %bb.f

bb.f:                                             ; preds = %.preheader18
  %i.ce = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ce) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader18, %bb.f
  %i.cg = phi i32 [ %i.bz, %.preheader18 ], [ %.pre52, %bb.f ] ; 2 uses
  %i.ch = phi double [ %i.ca, %.preheader18 ], [ %.pre, %bb.f ]
  %i.ci = add nuw nsw i32 %.01226, 1              ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.cg
  br i1 %i.cj, label %.preheader18, label %._crit_edge27, !llvm.loop !343

._crit_edge27:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us33, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ck = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ck, ptr @end_time, align 8, !tbaa !27
  %i.cl = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cm = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cn = icmp ne ptr %i.cm, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.co = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.co, %.pre.i
  %or.cond.i = select i1 %i.cn, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge27
  %i.cp = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cp, ptr @allocated_results, align 4, !tbaa !4
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 4
  %i.cs = tail call ptr @realloc(ptr noundef %i.cm, i64 noundef %i.cr) #13 ; 3 uses
  store ptr %i.cs, ptr @results, align 8, !tbaa !8
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.h:                                             ; preds = %bb.g
  %i.cu = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.cu) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge27, %._crit_edge.i
  %i.cw = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.co, %._crit_edge27 ] ; 2 uses
  %i.cx = phi ptr [ %i.cs, %._crit_edge.i ], [ %i.cm, %._crit_edge27 ]
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
  %i.h = and i32 %i.g, 2147483646
  %narrow = add nuw nsw i32 %i.h, 2
  %3 = and i32 %i.g, -2                           ; 2 uses
  %i.i = add nuw nsw i32 %3, 2
  %i.j = zext nneg i32 %i.i to i64                ; 3 uses
  %i.k = icmp slt i32 %narrow, %1
  %i.l = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %i.m = add nsw i64 %i.l, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check70 = icmp ult i32 %1, 16
  %n.vec73 = and i64 %i.o, 9223372036854775800    ; 3 uses
  %i.p = shl nuw i64 %n.vec73, 1
  %cmp.n85 = icmp eq i64 %i.o, %n.vec73
  %4 = add i32 %3, 3
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 %4)
  %i.q = and i32 %i.g, -2
  %i.r = sub i32 %5, %i.q
  %i.s = add i32 %i.r, -3                         ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 7
  %n.vec = and i64 %i.u, 8589934584               ; 3 uses
  %i.v = add nuw nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br label %.preheader17.us

.preheader17.us:                                  ; preds = %.preheader17.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.w = phi i32 [ %i.bg, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader17.us.preheader ]
  %.01225.us = phi i32 [ %i.bh, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader17.us.preheader ]
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.body74

vector.body74:                                    ; preds = %.preheader17.us, %vector.body74
  %index75 = phi i64 [ %index.next82, %vector.body74 ], [ 0, %.preheader17.us ] ; 2 uses
  %vec.phi76 = phi <4 x i32> [ %i.ah, %vector.body74 ], [ zeroinitializer, %.preheader17.us ]
  %vec.phi77 = phi <4 x i32> [ %i.ai, %vector.body74 ], [ zeroinitializer, %.preheader17.us ]
  %i.x = shl nuw i64 %index75, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %wide.vec = load <8 x i32>, ptr %i.y, align 4, !tbaa !4 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec78 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec79 = load <8 x i32>, ptr %i.aa, align 4, !tbaa !4 ; 2 uses
  %strided.vec80 = shufflevector <8 x i32> %wide.vec79, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec81 = shufflevector <8 x i32> %wide.vec79, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ab = add <4 x i32> %strided.vec78, %strided.vec
  %i.ac = add <4 x i32> %strided.vec81, %strided.vec80
  %i.ad = mul <4 x i32> %i.ab, splat (i32 269850533)
  %i.ae = mul <4 x i32> %i.ac, splat (i32 269850533)
  %i.af = add <4 x i32> %vec.phi76, splat (i32 2018317168)
  %i.ag = add <4 x i32> %vec.phi77, splat (i32 2018317168)
  %i.ah = add <4 x i32> %i.af, %i.ad              ; 2 uses
  %i.ai = add <4 x i32> %i.ag, %i.ae              ; 2 uses
  %index.next82 = add nuw i64 %index75, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next82, %n.vec73
  br i1 %i.aj, label %middle.block83, label %vector.body74, !llvm.loop !345

middle.block83:                                   ; preds = %vector.body74
  %bin.rdx84 = add <4 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  br i1 %cmp.n85, label %..preheader_crit_edge.us, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %.preheader17.us, %middle.block83
  %indvars.iv.ph = phi i64 [ 0, %.preheader17.us ], [ %i.p, %middle.block83 ]
  %.01518.us.ph = phi i32 [ 0, %.preheader17.us ], [ %i.ak, %middle.block83 ]
  br label %scalar.ph69

scalar.ph69:                                      ; preds = %scalar.ph69.preheader, %scalar.ph69
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph69 ], [ %indvars.iv.ph, %scalar.ph69.preheader ] ; 2 uses
  %.01518.us = phi i32 [ %i.aq, %scalar.ph69 ], [ %.01518.us.ph, %scalar.ph69.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr i8, ptr %i.al, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %reass.add.us = add i32 %i.ao, %i.am
  %reass.mul.us = mul i32 %reass.add.us, 269850533
  %i.ap = add i32 %.01518.us, 2018317168
  %i.aq = add i32 %i.ap, %reass.mul.us            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ar = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.ar, label %scalar.ph69, label %..preheader_crit_edge.us, !llvm.loop !346

.lr.ph23.us:                                      ; preds = %.lr.ph23.us.preheader88, %.lr.ph23.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %.lr.ph23.us ], [ %indvars.iv43.ph, %.lr.ph23.us.preheader88 ] ; 2 uses
  %.11621.us = phi i32 [ %i.aw, %.lr.ph23.us ], [ %.11621.us.ph, %.lr.ph23.us.preheader88 ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv43
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = mul i32 %i.at, 269850533
  %i.av = add i32 %.11621.us, -1138325064
  %i.aw = add i32 %i.av, %i.au                    ; 2 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.ax = trunc nuw i64 %indvars.iv.next44 to i32
  %i.ay = icmp sgt i32 %1, %i.ax
  br i1 %i.ay, label %.lr.ph23.us, label %._crit_edge.us, !llvm.loop !347

._crit_edge.us:                                   ; preds = %.lr.ph23.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %.lcssa, %..preheader_crit_edge.us ], [ %i.bs, %middle.block ], [ %i.aw, %.lr.ph23.us ]
  %i.az = load double, ptr @init_value, align 8, !tbaa !32
  %i.ba = fptosi double %i.az to i32
  %i.bb = mul i32 %i.ba, -1564285888
  %i.bc = add i32 %i.bb, -1269844480
  %i.bd = icmp eq i32 %.116.lcssa.us, %i.bc
  br i1 %i.bd, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.be = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.be) ; 0 uses
  %.pre50 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.bg = phi i32 [ %.pre50, %bb.b ], [ %i.w, %._crit_edge.us ] ; 2 uses
  %i.bh = add nuw nsw i32 %.01225.us, 1           ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.bg
  br i1 %i.bi, label %.preheader17.us, label %._crit_edge26, !llvm.loop !348

..preheader_crit_edge.us:                         ; preds = %scalar.ph69, %middle.block83
  %.lcssa = phi i32 [ %i.ak, %middle.block83 ], [ %i.aq, %scalar.ph69 ] ; 3 uses
  br i1 %i.k, label %.lr.ph23.us.preheader, label %._crit_edge.us

.lr.ph23.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph23.us.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.us.preheader
  %i.bj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bj, %vector.ph ], [ %i.bp, %vector.body ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bq, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load68 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !4
  %i.bl = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.bm = mul <4 x i32> %wide.load68, splat (i32 269850533)
  %i.bn = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.bo = add <4 x i32> %vec.phi67, splat (i32 -1138325064)
  %i.bp = add <4 x i32> %i.bn, %i.bl              ; 2 uses
  %i.bq = add <4 x i32> %i.bo, %i.bm              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !349

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bq, %i.bp
  %i.bs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph23.us.preheader88

.lr.ph23.us.preheader88:                          ; preds = %.lr.ph23.us.preheader, %middle.block
  %indvars.iv43.ph = phi i64 [ %i.j, %.lr.ph23.us.preheader ], [ %i.v, %middle.block ]
  %.11621.us.ph = phi i32 [ %.lcssa, %.lr.ph23.us.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph23.us

.preheader17.lr.ph.split:                         ; preds = %.preheader17.lr.ph
  %i.bt = icmp eq i32 %1, 1
  br i1 %i.bt, label %._crit_edge.us34, label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %.preheader17.lr.ph.split
  %.pre46 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.preheader17

bb.c:                                             ; preds = %._crit_edge.us34
  %i.bu = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bu) ; 0 uses
  %.pre49 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us32

_Z9check_sumIiEvT_.exit.us32:                     ; preds = %bb.c, %._crit_edge.us34
  %i.bw = phi i32 [ %.pre49, %bb.c ], [ %i.bz, %._crit_edge.us34 ] ; 2 uses
  %i.bx = add nuw nsw i32 %.01225.us28, 1         ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.bw
  br i1 %i.by, label %._crit_edge.us34, label %._crit_edge26, !llvm.loop !348

._crit_edge.us34:                                 ; preds = %.preheader17.lr.ph.split, %_Z9check_sumIiEvT_.exit.us32
  %i.bz = phi i32 [ %i.bw, %_Z9check_sumIiEvT_.exit.us32 ], [ %i.b, %.preheader17.lr.ph.split ]
  %.01225.us28 = phi i32 [ %i.bx, %_Z9check_sumIiEvT_.exit.us32 ], [ 0, %.preheader17.lr.ph.split ]
  %.pre48 = load i32, ptr %0, align 4, !tbaa !4
  %i.ca = mul i32 %.pre48, 269850533
  %i.cb = load double, ptr @init_value, align 8, !tbaa !32
  %i.cc = fptosi double %i.cb to i32
  %i.cd = mul i32 %i.cc, -1564285888
  %i.ce = add i32 %i.cd, -131519416
  %i.cf = icmp eq i32 %i.ca, %i.ce
  br i1 %i.cf, label %_Z9check_sumIiEvT_.exit.us32, label %bb.c

.preheader17:                                     ; preds = %.preheader17.preheader, %_Z9check_sumIiEvT_.exit
  %i.cg = phi i32 [ %i.cn, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader17.preheader ]
  %i.ch = phi double [ %i.co, %_Z9check_sumIiEvT_.exit ], [ %.pre46, %.preheader17.preheader ] ; 2 uses
  %.01225 = phi i32 [ %i.cp, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader17.preheader ]
  %i.ci = fptosi double %i.ch to i32
  %i.cj = mul i32 %i.ci, -1564285888
  %i.ck = icmp eq i32 %i.cj, 1269844480
  br i1 %i.ck, label %_Z9check_sumIiEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader17
  %i.cl = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cl) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre47 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader17, %bb.d
  %i.cn = phi i32 [ %i.cg, %.preheader17 ], [ %.pre47, %bb.d ] ; 2 uses
  %i.co = phi double [ %i.ch, %.preheader17 ], [ %.pre, %bb.d ]
  %i.cp = add nuw nsw i32 %.01225, 1              ; 2 uses
  %i.cq = icmp slt i32 %i.cp, %i.cn
  br i1 %i.cq, label %.preheader17, label %._crit_edge26, !llvm.loop !348

._crit_edge26:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us32, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cr = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cr, ptr @end_time, align 8, !tbaa !27
  %i.cs = load i64, ptr @start_time, align 8, !tbaa !27
  %i.ct = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cu = icmp ne ptr %i.ct, null
end_hunk_9
begin_hunk_10_@_Z29test_while_loop_unroll_factorILi2EiEvPKT0_iPKc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.db = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.dc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.db) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge26, %._crit_edge.i
  %i.dd = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cv, %._crit_edge26 ] ; 2 uses
  %i.de = phi ptr [ %i.cz, %._crit_edge.i ], [ %i.ct, %._crit_edge26 ]
  %i.df = sub nsw i64 %i.cr, %i.cs
  %i.dg = sitofp i64 %i.df to double
  %i.dh = fdiv double %i.dg, 1.000000e+06
  %i.di = sext i32 %i.dd to i64
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  store double %i.dh, ptr %i.dj, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %2, ptr %i.dk, align 8, !tbaa !15
  %i.dl = add nsw i32 %i.dd, 1
  store i32 %i.dl, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z29test_while_loop_unroll_factorILi1EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
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
  %i.e = phi i32 [ %i.ab, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader17.us.preheader ]
  %.01225.us = phi i32 [ %i.ac, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader17.us.preheader ]
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
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.m, %i.l
  %i.o = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader17.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader17.us ], [ %n.vec, %middle.block ]
  %.01518.us.ph = phi i32 [ 0, %.preheader17.us ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01518.us = phi i32 [ %i.t, %scalar.ph ], [ %.01518.us.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = mul i32 %i.q, 269850533
  %i.s = add i32 %.01518.us, -1138325064
  %i.t = add i32 %i.s, %i.r                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !351

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.o, %middle.block ], [ %i.t, %scalar.ph ]
  %i.u = load double, ptr @init_value, align 8, !tbaa !32
  %i.v = fptosi double %i.u to i32
  %i.w = mul i32 %i.v, -1564285888
  %i.x = add i32 %i.w, -1269844480
  %i.y = icmp eq i32 %.lcssa, %i.x
  br i1 %i.y, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.z = load i32, ptr @current_test, align 4, !tbaa !4
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.z) ; 0 uses
  %.pre40 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.ab = phi i32 [ %.pre40, %bb.b ], [ %i.e, %._crit_edge.us ] ; 2 uses
  %i.ac = add nuw nsw i32 %.01225.us, 1           ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  br i1 %i.ad, label %.preheader17.us, label %._crit_edge26, !llvm.loop !352

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
  br i1 %i.ao, label %.preheader17, label %._crit_edge26, !llvm.loop !352

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
define linkonce_odr dso_local void @_Z26test_do_loop_unroll_factorILi32EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 31
  br i1 %i.d, label %.preheader54.us.preheader, label %.lr.ph.split

.preheader54.us.preheader:                        ; preds = %.lr.ph
  %i.e = add nsw i32 %1, -31
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -32                      ; 2 uses
  %i.h = and i32 %i.g, 2147483616
  %narrow = add nuw nsw i32 %i.h, 32
  %3 = and i32 %i.g, -32
  %i.i = add i32 %3, 32
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = zext nneg i32 %1 to i64                  ; 3 uses
  %i.l = icmp slt i32 %narrow, %1
  %i.m = sub nsw i64 %i.k, %i.j                   ; 2 uses
  %min.iters.check103 = icmp ult i64 %i.m, 8
  %n.mod.vf105 = and i64 %i.k, 7                  ; 2 uses
  %n.vec106 = sub nuw nsw i64 %i.m, %n.mod.vf105  ; 2 uses
  %i.n = add nsw i64 %n.vec106, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n116 = icmp eq i64 %n.mod.vf105, 0
  br label %.preheader54.us

.preheader54.us:                                  ; preds = %.preheader54.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %.01658.us = phi i32 [ %i.ag, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader54.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader54.us, %bb.b
  %indvars.iv74 = phi i64 [ 0, %.preheader54.us ], [ %indvars.iv.next75, %bb.b ] ; 2 uses
  %.021.us = phi i32 [ 0, %.preheader54.us ], [ %i.s, %bb.b ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv74
  %i.p = load <32 x i32>, ptr %i.o, align 4, !tbaa !4
  %i.q = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.p)
  %reass.mul.us = mul i32 %i.q, 269850533
  %i.r = add i32 %.021.us, -2066663680
  %i.s = add i32 %i.r, %reass.mul.us              ; 4 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 32 ; 2 uses
  %i.t = icmp samesign ult i64 %indvars.iv.next75, %i.f
  br i1 %i.t, label %bb.b, label %.loopexit55.us, !llvm.loop !353

.preheader.us:                                    ; preds = %.preheader.us.preheader119, %.preheader.us
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.preheader.us ], [ %indvars.iv77.ph, %.preheader.us.preheader119 ] ; 2 uses
  %.223.us = phi i32 [ %i.y, %.preheader.us ], [ %.223.us.ph, %.preheader.us.preheader119 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv77
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = mul i32 %i.v, 269850533
  %i.x = add i32 %.223.us, -1138325064
  %i.y = add i32 %i.x, %i.w                       ; 2 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next78, %i.k
  br i1 %.not.us, label %.loopexit.us, label %.preheader.us, !llvm.loop !354

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block114, %.loopexit55.us
  %.3.us = phi i32 [ %i.s, %.loopexit55.us ], [ %i.as, %middle.block114 ], [ %i.y, %.preheader.us ]
  %i.z = load double, ptr @init_value, align 8, !tbaa !32
  %i.aa = fptosi double %i.z to i32
  %i.ab = mul i32 %i.aa, -1564285888
  %i.ac = add i32 %i.ab, -1269844480
  %i.ad = icmp eq i32 %.3.us, %i.ac
  br i1 %i.ad, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.ae = load i32, ptr @current_test, align 4, !tbaa !4
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ae) ; 0 uses
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %.loopexit.us
  %i.ag = add nuw nsw i32 %.01658.us, 1           ; 2 uses
  %i.ah = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.preheader54.us, label %._crit_edge, !llvm.loop !355

.loopexit55.us:                                   ; preds = %bb.b
  br i1 %i.l, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit55.us
  br i1 %min.iters.check103, label %.preheader.us.preheader119, label %vector.ph104

vector.ph104:                                     ; preds = %.preheader.us.preheader
  %i.aj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.s, i64 0
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph104
  %index108 = phi i64 [ 0, %vector.ph104 ], [ %index.next113, %vector.body107 ] ; 2 uses
  %vec.phi109 = phi <4 x i32> [ %i.aj, %vector.ph104 ], [ %i.ap, %vector.body107 ]
  %vec.phi110 = phi <4 x i32> [ zeroinitializer, %vector.ph104 ], [ %i.aq, %vector.body107 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index108 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load111 = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load112 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !4
  %i.al = mul <4 x i32> %wide.load111, splat (i32 269850533)
  %i.am = mul <4 x i32> %wide.load112, splat (i32 269850533)
  %i.an = add <4 x i32> %vec.phi109, splat (i32 -1138325064)
  %i.ao = add <4 x i32> %vec.phi110, splat (i32 -1138325064)
  %i.ap = add <4 x i32> %i.an, %i.al              ; 2 uses
  %i.aq = add <4 x i32> %i.ao, %i.am              ; 2 uses
  %index.next113 = add nuw i64 %index108, 8       ; 2 uses
  %i.ar = icmp eq i64 %index.next113, %n.vec106
  br i1 %i.ar, label %middle.block114, label %vector.body107, !llvm.loop !356

middle.block114:                                  ; preds = %vector.body107
  %bin.rdx115 = add <4 x i32> %i.aq, %i.ap
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx115) ; 2 uses
  br i1 %cmp.n116, label %.loopexit.us, label %.preheader.us.preheader119

.preheader.us.preheader119:                       ; preds = %.preheader.us.preheader, %middle.block114
  %indvars.iv77.ph = phi i64 [ %i.j, %.preheader.us.preheader ], [ %i.n, %middle.block114 ]
  %.223.us.ph = phi i32 [ %i.s, %.preheader.us.preheader ], [ %i.as, %middle.block114 ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.at = icmp sgt i32 %1, 0
  br i1 %i.at, label %.preheader.us65.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre80 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us65.preheader:                        ; preds = %.lr.ph.split
  %i.au = zext nneg i32 %1 to i64                 ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %i.au, 2147483640              ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = icmp eq i64 %n.vec, 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = icmp eq i64 %n.vec, 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %cmp.n = icmp eq i64 %n.vec, %i.au
  br label %.preheader.us65

.preheader.us65:                                  ; preds = %.preheader.us65.preheader, %_Z9check_sumIiEvT_.exit.us64
  %i.bc = phi i32 [ %i.cb, %_Z9check_sumIiEvT_.exit.us64 ], [ %i.b, %.preheader.us65.preheader ]
  %.01658.us59 = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit.us64 ], [ 0, %.preheader.us65.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us65
  %wide.load = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %wide.load101 = load <4 x i32>, ptr %i.av, align 4, !tbaa !4
  %i.bd = mul <4 x i32> %wide.load, splat (i32 269850533) ; 2 uses
  %i.be = mul <4 x i32> %wide.load101, splat (i32 269850533) ; 2 uses
  %i.bf = add <4 x i32> %i.bd, splat (i32 -1138325064)
  %i.bg = add <4 x i32> %i.be, splat (i32 -1138325064)
  br i1 %i.aw, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %wide.load.1 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !4
  %wide.load101.1 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !4
  %i.bh = mul <4 x i32> %wide.load.1, splat (i32 269850533)
  %i.bi = mul <4 x i32> %wide.load101.1, splat (i32 269850533)
  %i.bj = add <4 x i32> %i.bd, splat (i32 2018317168)
  %i.bk = add <4 x i32> %i.be, splat (i32 2018317168)
  %i.bl = add <4 x i32> %i.bj, %i.bh              ; 2 uses
  %i.bm = add <4 x i32> %i.bk, %i.bi              ; 2 uses
  br i1 %i.az, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !4
  %wide.load101.2 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !4
  %i.bn = mul <4 x i32> %wide.load.2, splat (i32 269850533)
  %i.bo = mul <4 x i32> %wide.load101.2, splat (i32 269850533)
  %i.bp = add <4 x i32> %i.bl, splat (i32 -1138325064)
  %i.bq = add <4 x i32> %i.bm, splat (i32 -1138325064)
  %i.br = add <4 x i32> %i.bp, %i.bn
  %i.bs = add <4 x i32> %i.bq, %i.bo
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.body
  %.lcssa125 = phi <4 x i32> [ %i.bf, %vector.body ], [ %i.bl, %vector.body.1 ], [ %i.br, %vector.body.2 ]
  %.lcssa124 = phi <4 x i32> [ %i.bg, %vector.body ], [ %i.bm, %vector.body.1 ], [ %i.bs, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa124, %.lcssa125
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us66, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us65, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us65 ], [ %n.vec, %middle.block ]
  %.223.us60.ph = phi i32 [ 0, %.preheader.us65 ], [ %i.bt, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.223.us60 = phi i32 [ %i.by, %scalar.ph ], [ %.223.us60.ph, %scalar.ph.preheader ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = mul i32 %i.bv, 269850533
  %i.bx = add i32 %.223.us60, -1138325064
  %i.by = add i32 %i.bx, %i.bw                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.us62 = icmp eq i64 %indvars.iv.next, %i.au
  br i1 %.not.us62, label %.loopexit.us66, label %scalar.ph, !llvm.loop !357

bb.d:                                             ; preds = %.loopexit.us66
  %i.bz = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bz) ; 0 uses
  %.pre82 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us64

_Z9check_sumIiEvT_.exit.us64:                     ; preds = %bb.d, %.loopexit.us66
  %i.cb = phi i32 [ %.pre82, %bb.d ], [ %i.bc, %.loopexit.us66 ] ; 2 uses
  %i.cc = add nuw nsw i32 %.01658.us59, 1         ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.cb
  br i1 %i.cd, label %.preheader.us65, label %._crit_edge, !llvm.loop !355

.loopexit.us66:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa99 = phi i32 [ %i.bt, %middle.block ], [ %i.by, %scalar.ph ]
  %i.ce = load double, ptr @init_value, align 8, !tbaa !32
  %i.cf = fptosi double %i.ce to i32
  %i.cg = mul i32 %i.cf, -1564285888
  %i.ch = add i32 %i.cg, -1269844480
  %i.ci = icmp eq i32 %.lcssa99, %i.ch
  br i1 %i.ci, label %_Z9check_sumIiEvT_.exit.us64, label %bb.d

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
end_hunk_10
begin_hunk_11_@_Z26test_do_loop_unroll_factorILi17EiEvPKT0_iPKc:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load99 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %wide.load100 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %i.as = mul <4 x i32> %wide.load99, splat (i32 269850533)
  %i.at = mul <4 x i32> %wide.load100, splat (i32 269850533)
  %i.au = add <4 x i32> %vec.phi97, splat (i32 -1138325064)
  %i.av = add <4 x i32> %vec.phi98, splat (i32 -1138325064)
  %i.aw = add <4 x i32> %i.au, %i.as              ; 2 uses
  %i.ax = add <4 x i32> %i.av, %i.at              ; 2 uses
  %index.next101 = add nuw i64 %index96, 8        ; 2 uses
  %i.ay = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.ay, label %middle.block102, label %vector.body95, !llvm.loop !431

middle.block102:                                  ; preds = %vector.body95
  %bin.rdx103 = add <4 x i32> %i.ax, %i.aw
  %i.az = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx103) ; 2 uses
  br i1 %cmp.n104, label %.loopexit.us, label %.preheader.us.preheader107

.preheader.us.preheader107:                       ; preds = %.preheader.us.preheader, %middle.block102
  %indvars.iv63.ph = phi i64 [ %indvars.iv61, %.preheader.us.preheader ], [ %i.an, %middle.block102 ]
  %.222.us.ph = phi i32 [ %i.u, %.preheader.us.preheader ], [ %i.az, %middle.block102 ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ba = icmp sgt i32 %1, 0
  br i1 %i.ba, label %.preheader.us49.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre66 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us49.preheader:                        ; preds = %.lr.ph.split
  %i.bb = zext nneg i32 %1 to i64                 ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %i.bb, 2147483640              ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = icmp eq i64 %n.vec, 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  br label %.preheader.us49

.preheader.us49:                                  ; preds = %.preheader.us49.preheader, %_Z9check_sumIiEvT_.exit.us48
  %i.bg = phi i32 [ %i.bz, %_Z9check_sumIiEvT_.exit.us48 ], [ %i.b, %.preheader.us49.preheader ]
  %.01642.us43 = phi i32 [ %i.ca, %_Z9check_sumIiEvT_.exit.us48 ], [ 0, %.preheader.us49.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us49
  %wide.load = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %wide.load89 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !4
  %i.bh = mul <4 x i32> %wide.load, splat (i32 269850533) ; 2 uses
  %i.bi = mul <4 x i32> %wide.load89, splat (i32 269850533) ; 2 uses
  %i.bj = add <4 x i32> %i.bh, splat (i32 -1138325064)
  %i.bk = add <4 x i32> %i.bi, splat (i32 -1138325064)
  br i1 %i.bd, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %wide.load.1 = load <4 x i32>, ptr %i.be, align 4, !tbaa !4
  %wide.load89.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.bl = mul <4 x i32> %wide.load.1, splat (i32 269850533)
  %i.bm = mul <4 x i32> %wide.load89.1, splat (i32 269850533)
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
  br i1 %cmp.n, label %.loopexit.us50, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us49, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us49 ], [ %n.vec, %middle.block ]
  %.222.us44.ph = phi i32 [ 0, %.preheader.us49 ], [ %i.br, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.222.us44 = phi i32 [ %i.bw, %scalar.ph ], [ %.222.us44.ph, %scalar.ph.preheader ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = mul i32 %i.bt, 269850533
  %i.bv = add i32 %.222.us44, -1138325064
  %i.bw = add i32 %i.bv, %i.bu                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.us46 = icmp eq i64 %indvars.iv.next, %i.bb
  br i1 %.not.us46, label %.loopexit.us50, label %scalar.ph, !llvm.loop !432

bb.d:                                             ; preds = %.loopexit.us50
  %i.bx = load i32, ptr @current_test, align 4, !tbaa !4
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bx) ; 0 uses
  %.pre68 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us48

_Z9check_sumIiEvT_.exit.us48:                     ; preds = %bb.d, %.loopexit.us50
  %i.bz = phi i32 [ %.pre68, %bb.d ], [ %i.bg, %.loopexit.us50 ] ; 2 uses
  %i.ca = add nuw nsw i32 %.01642.us43, 1         ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %i.bz
  br i1 %i.cb, label %.preheader.us49, label %._crit_edge, !llvm.loop !430

.loopexit.us50:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa87 = phi i32 [ %i.br, %middle.block ], [ %i.bw, %scalar.ph ]
  %i.cc = load double, ptr @init_value, align 8, !tbaa !32
  %i.cd = fptosi double %i.cc to i32
  %i.ce = mul i32 %i.cd, -1564285888
  %i.cf = add i32 %i.ce, -1269844480
  %i.cg = icmp eq i32 %.lcssa87, %i.cf
  br i1 %i.cg, label %_Z9check_sumIiEvT_.exit.us48, label %bb.d

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.ch = phi i32 [ %i.co, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.ci = phi double [ %i.cp, %_Z9check_sumIiEvT_.exit ], [ %.pre66, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01642 = phi i32 [ %i.cq, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.cj = fptosi double %i.ci to i32
  %i.ck = mul i32 %i.cj, -1564285888
  %i.cl = icmp eq i32 %i.ck, 1269844480
  br i1 %i.cl, label %_Z9check_sumIiEvT_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split
  %i.cm = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cm) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre67 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.e
  %i.co = phi i32 [ %i.ch, %.lr.ph.split.split ], [ %.pre67, %bb.e ] ; 2 uses
  %i.cp = phi double [ %i.ci, %.lr.ph.split.split ], [ %.pre, %bb.e ]
  %i.cq = add nuw nsw i32 %.01642, 1              ; 2 uses
  %i.cr = icmp slt i32 %i.cq, %i.co
  br i1 %i.cr, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !430

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us48, %_Z9check_sumIiEvT_.exit.us, %bb.a
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

bb.f:                                             ; preds = %._crit_edge
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

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.de = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cw, %._crit_edge ] ; 2 uses
  %i.df = phi ptr [ %i.da, %._crit_edge.i ], [ %i.cu, %._crit_edge ]
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
define linkonce_odr dso_local void @_Z26test_do_loop_unroll_factorILi16EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 15
  br i1 %i.d, label %.preheader37.us.preheader, label %.lr.ph.split

.preheader37.us.preheader:                        ; preds = %.lr.ph
  %i.e = add nsw i32 %1, -15
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -16                      ; 2 uses
  %i.h = and i32 %i.g, 2147483632
  %narrow = add nuw nsw i32 %i.h, 16
  %3 = and i32 %i.g, -16
  %i.i = add i32 %3, 16
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = zext nneg i32 %1 to i64                  ; 3 uses
  %i.l = icmp slt i32 %narrow, %1
  %i.m = sub nsw i64 %i.k, %i.j                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  %n.mod.vf = and i64 %i.k, 7                     ; 2 uses
  %n.vec = sub nuw nsw i64 %i.m, %n.mod.vf        ; 2 uses
  %i.n = add nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br label %.preheader37.us

.preheader37.us:                                  ; preds = %.preheader37.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.o = phi i32 [ %i.ah, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader37.us.preheader ]
  %.01641.us = phi i32 [ %i.ai, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader37.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader37.us, %bb.b
  %indvars.iv57 = phi i64 [ 0, %.preheader37.us ], [ %indvars.iv.next58, %bb.b ] ; 2 uses
  %.020.us = phi i32 [ 0, %.preheader37.us ], [ %i.t, %bb.b ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv57
  %i.q = load <16 x i32>, ptr %i.p, align 4, !tbaa !4
  %i.r = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.q)
  %reass.mul.us = mul i32 %i.r, 269850533
  %i.s = add i32 %.020.us, -1033331840
  %i.t = add i32 %i.s, %reass.mul.us              ; 4 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 16 ; 2 uses
  %i.u = icmp samesign ult i64 %indvars.iv.next58, %i.f
  br i1 %i.u, label %bb.b, label %.loopexit38.us, !llvm.loop !433

.preheader.us:                                    ; preds = %.preheader.us.preheader87, %.preheader.us
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %.preheader.us ], [ %indvars.iv60.ph, %.preheader.us.preheader87 ] ; 2 uses
  %.222.us = phi i32 [ %i.z, %.preheader.us ], [ %.222.us.ph, %.preheader.us.preheader87 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = mul i32 %i.w, 269850533
  %i.y = add i32 %.222.us, -1138325064
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next61, %i.k
  br i1 %.not.us, label %.loopexit.us, label %.preheader.us, !llvm.loop !434

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.loopexit38.us
  %.3.us = phi i32 [ %i.t, %.loopexit38.us ], [ %i.at, %middle.block ], [ %i.z, %.preheader.us ]
  %i.aa = load double, ptr @init_value, align 8, !tbaa !32
  %i.ab = fptosi double %i.aa to i32
  %i.ac = mul i32 %i.ab, -1564285888
  %i.ad = add i32 %i.ac, -1269844480
  %i.ae = icmp eq i32 %.3.us, %i.ad
  br i1 %i.ae, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.af) ; 0 uses
  %.pre66 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %.loopexit.us
  %i.ah = phi i32 [ %.pre66, %bb.c ], [ %i.o, %.loopexit.us ] ; 2 uses
  %i.ai = add nuw nsw i32 %.01641.us, 1           ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.preheader37.us, label %._crit_edge, !llvm.loop !435

.loopexit38.us:                                   ; preds = %bb.b
  br i1 %i.l, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit38.us
  br i1 %min.iters.check, label %.preheader.us.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.t, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ak, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi85 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load86 = load <4 x i32>, ptr %i.al, align 4, !tbaa !4
  %i.am = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.an = mul <4 x i32> %wide.load86, splat (i32 269850533)
  %i.ao = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.ap = add <4 x i32> %vec.phi85, splat (i32 -1138325064)
  %i.aq = add <4 x i32> %i.ao, %i.am              ; 2 uses
  %i.ar = add <4 x i32> %i.ap, %i.an              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader87

.preheader.us.preheader87:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv60.ph = phi i64 [ %i.j, %.preheader.us.preheader ], [ %i.n, %middle.block ]
  %.222.us.ph = phi i32 [ %i.t, %.preheader.us.preheader ], [ %i.at, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.au = icmp sgt i32 %1, 0
  br i1 %i.au, label %.preheader.us48.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre63 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us48.preheader:                        ; preds = %.lr.ph.split
  %i.av = zext nneg i32 %1 to i64                 ; 2 uses
  %xtraiter = and i64 %i.av, 3                    ; 3 uses
  %i.aw = icmp ult i32 %1, 4
  %unroll_iter = and i64 %i.av, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us48

.preheader.us48:                                  ; preds = %.preheader.us48.preheader, %_Z9check_sumIiEvT_.exit.us47
  %i.ax = phi i32 [ %i.bx, %_Z9check_sumIiEvT_.exit.us47 ], [ %i.b, %.preheader.us48.preheader ]
  %.01641.us42 = phi i32 [ %i.by, %_Z9check_sumIiEvT_.exit.us47 ], [ 0, %.preheader.us48.preheader ]
  br i1 %i.aw, label %.epil.preheader, label %.preheader.us48.new

.preheader.us48.new:                              ; preds = %.preheader.us48, %.preheader.us48.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us48.new ], [ 0, %.preheader.us48 ] ; 5 uses
  %.222.us43 = phi i32 [ %i.bu, %.preheader.us48.new ], [ 0, %.preheader.us48 ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us48.new ], [ 0, %.preheader.us48 ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = mul i32 %i.az, 269850533
  %i.bb = add i32 %.222.us43, -1138325064
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = mul i32 %i.bf, 269850533
  %i.bh = add i32 %i.bc, -1138325064
  %i.bi = add i32 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = mul i32 %i.bl, 269850533
  %i.bn = add i32 %i.bi, -1138325064
  %i.bo = add i32 %i.bn, %i.bm
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = mul i32 %i.br, 269850533
  %i.bt = add i32 %i.bo, -1138325064
  %i.bu = add i32 %i.bt, %i.bs                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.us49.unr-lcssa, label %.preheader.us48.new, !llvm.loop !437

bb.d:                                             ; preds = %.loopexit.us49
  %i.bv = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bv) ; 0 uses
  %.pre65 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us47

_Z9check_sumIiEvT_.exit.us47:                     ; preds = %bb.d, %.loopexit.us49
  %i.bx = phi i32 [ %.pre65, %bb.d ], [ %i.ax, %.loopexit.us49 ] ; 2 uses
  %i.by = add nuw nsw i32 %.01641.us42, 1         ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bx
  br i1 %i.bz, label %.preheader.us48, label %._crit_edge, !llvm.loop !435

.loopexit.us49.unr-lcssa:                         ; preds = %.preheader.us48.new
  br i1 %lcmp.mod.not, label %.loopexit.us49, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.us49.unr-lcssa, %.preheader.us48
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us48 ], [ %indvars.iv.next.3, %.loopexit.us49.unr-lcssa ]
  %.222.us43.epil.init = phi i32 [ 0, %.preheader.us48 ], [ %i.bu, %.loopexit.us49.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %.222.us43.epil = phi i32 [ %.222.us43.epil.init, %.epil.preheader ], [ %i.ce, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = mul i32 %i.cb, 269850533
  %i.cd = add i32 %.222.us43.epil, -1138325064
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.us49, label %bb.e, !llvm.loop !438

.loopexit.us49:                                   ; preds = %bb.e, %.loopexit.us49.unr-lcssa
  %.lcssa92 = phi i32 [ %i.bu, %.loopexit.us49.unr-lcssa ], [ %i.ce, %bb.e ]
  %i.cf = load double, ptr @init_value, align 8, !tbaa !32
  %i.cg = fptosi double %i.cf to i32
  %i.ch = mul i32 %i.cg, -1564285888
  %i.ci = add i32 %i.ch, -1269844480
  %i.cj = icmp eq i32 %.lcssa92, %i.ci
  br i1 %i.cj, label %_Z9check_sumIiEvT_.exit.us47, label %bb.d

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.ck = phi i32 [ %i.cr, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.cl = phi double [ %i.cs, %_Z9check_sumIiEvT_.exit ], [ %.pre63, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01641 = phi i32 [ %i.ct, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
end_hunk_11
begin_hunk_12_@_Z26test_do_loop_unroll_factorILi9EiEvPKT0_iPKc:bb.a
  %bin.rdx = add <4 x i32> %i.ax, %i.aw
  %i.az = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader82

.preheader.us.preheader82:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv55.ph = phi i64 [ %indvars.iv53, %.preheader.us.preheader ], [ %i.an, %middle.block ]
  %.222.us.ph = phi i32 [ %i.u, %.preheader.us.preheader ], [ %i.az, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ba = icmp sgt i32 %1, 0
  br i1 %i.ba, label %.preheader.us41.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre58 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us41.preheader:                        ; preds = %.lr.ph.split
  %.not.us38 = icmp eq i32 %1, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not.us38.1 = icmp eq i32 %1, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.us38.2 = icmp eq i32 %1, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.us38.3 = icmp eq i32 %1, 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.us38.4 = icmp eq i32 %1, 5
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.not.us38.5 = icmp eq i32 %1, 6
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not.us38.6 = icmp eq i32 %1, 7
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.preheader.us41

.preheader.us41:                                  ; preds = %.preheader.us41.preheader, %_Z9check_sumIiEvT_.exit.us40
  %i.bi = phi i32 [ %i.cq, %_Z9check_sumIiEvT_.exit.us40 ], [ %i.b, %.preheader.us41.preheader ]
  %.01634.us35 = phi i32 [ %i.cr, %_Z9check_sumIiEvT_.exit.us40 ], [ 0, %.preheader.us41.preheader ]
  %i.bj = load i32, ptr %0, align 4, !tbaa !4
  %i.bk = mul i32 %i.bj, 269850533                ; 2 uses
  %i.bl = add i32 %i.bk, -1138325064
  br i1 %.not.us38, label %.loopexit.us42, label %bb.d

bb.d:                                             ; preds = %.preheader.us41
  %i.bm = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bn = mul i32 %i.bm, 269850533
  %i.bo = add i32 %i.bk, 2018317168
  %i.bp = add i32 %i.bo, %i.bn                    ; 2 uses
  br i1 %.not.us38.1, label %.loopexit.us42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.br = mul i32 %i.bq, 269850533
  %i.bs = add i32 %i.bp, -1138325064
  %i.bt = add i32 %i.bs, %i.br                    ; 2 uses
  br i1 %.not.us38.2, label %.loopexit.us42, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bv = mul i32 %i.bu, 269850533
  %i.bw = add i32 %i.bt, -1138325064
  %i.bx = add i32 %i.bw, %i.bv                    ; 2 uses
  br i1 %.not.us38.3, label %.loopexit.us42, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bz = mul i32 %i.by, 269850533
  %i.ca = add i32 %i.bx, -1138325064
  %i.cb = add i32 %i.ca, %i.bz                    ; 2 uses
  br i1 %.not.us38.4, label %.loopexit.us42, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.cd = mul i32 %i.cc, 269850533
  %i.ce = add i32 %i.cb, -1138325064
  %i.cf = add i32 %i.ce, %i.cd                    ; 2 uses
  br i1 %.not.us38.5, label %.loopexit.us42, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.ch = mul i32 %i.cg, 269850533
  %i.ci = add i32 %i.cf, -1138325064
  %i.cj = add i32 %i.ci, %i.ch                    ; 2 uses
  br i1 %.not.us38.6, label %.loopexit.us42, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.cl = mul i32 %i.ck, 269850533
  %i.cm = add i32 %i.cj, -1138325064
  %i.cn = add i32 %i.cm, %i.cl
  br label %.loopexit.us42

bb.k:                                             ; preds = %.loopexit.us42
  %i.co = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.co) ; 0 uses
  %.pre60 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us40

_Z9check_sumIiEvT_.exit.us40:                     ; preds = %bb.k, %.loopexit.us42
  %i.cq = phi i32 [ %.pre60, %bb.k ], [ %i.bi, %.loopexit.us42 ] ; 2 uses
  %i.cr = add nuw nsw i32 %.01634.us35, 1         ; 2 uses
  %i.cs = icmp slt i32 %i.cr, %i.cq
  br i1 %i.cs, label %.preheader.us41, label %._crit_edge, !llvm.loop !477

.loopexit.us42:                                   ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.preheader.us41
  %.lcssa87 = phi i32 [ %i.bl, %.preheader.us41 ], [ %i.bp, %bb.d ], [ %i.bt, %bb.e ], [ %i.bx, %bb.f ], [ %i.cb, %bb.g ], [ %i.cf, %bb.h ], [ %i.cj, %bb.i ], [ %i.cn, %bb.j ]
  %i.ct = load double, ptr @init_value, align 8, !tbaa !32
  %i.cu = fptosi double %i.ct to i32
  %i.cv = mul i32 %i.cu, -1564285888
  %i.cw = add i32 %i.cv, -1269844480
  %i.cx = icmp eq i32 %.lcssa87, %i.cw
  br i1 %i.cx, label %_Z9check_sumIiEvT_.exit.us40, label %bb.k

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.cy = phi i32 [ %i.df, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.cz = phi double [ %i.dg, %_Z9check_sumIiEvT_.exit ], [ %.pre58, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01634 = phi i32 [ %i.dh, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.da = fptosi double %i.cz to i32
  %i.db = mul i32 %i.da, -1564285888
  %i.dc = icmp eq i32 %i.db, 1269844480
  br i1 %i.dc, label %_Z9check_sumIiEvT_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split
  %i.dd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.de = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.dd) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre59 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.l
  %i.df = phi i32 [ %i.cy, %.lr.ph.split.split ], [ %.pre59, %bb.l ] ; 2 uses
  %i.dg = phi double [ %i.cz, %.lr.ph.split.split ], [ %.pre, %bb.l ]
  %i.dh = add nuw nsw i32 %.01634, 1              ; 2 uses
  %i.di = icmp slt i32 %i.dh, %i.df
  br i1 %i.di, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !477

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us40, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.dj = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.dj, ptr @end_time, align 8, !tbaa !27
  %i.dk = load i64, ptr @start_time, align 8, !tbaa !27
  %i.dl = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.dm = icmp ne ptr %i.dl, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.dn = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.dn, %.pre.i
  %or.cond.i = select i1 %i.dm, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.do = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.do, ptr @allocated_results, align 4, !tbaa !4
  %i.dp = sext i32 %i.do to i64
  %i.dq = shl nsw i64 %i.dp, 4
  %i.dr = tail call ptr @realloc(ptr noundef %i.dl, i64 noundef %i.dq) #13 ; 3 uses
  store ptr %i.dr, ptr @results, align 8, !tbaa !8
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.n:                                             ; preds = %bb.m
  %i.dt = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.du = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.dt) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.dv = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.dn, %._crit_edge ] ; 2 uses
  %i.dw = phi ptr [ %i.dr, %._crit_edge.i ], [ %i.dl, %._crit_edge ]
  %i.dx = sub nsw i64 %i.dj, %i.dk
  %i.dy = sitofp i64 %i.dx to double
  %i.dz = fdiv double %i.dy, 1.000000e+06
  %i.ea = sext i32 %i.dv to i64
  %i.eb = getelementptr inbounds [16 x i8], ptr %i.dw, i64 %i.ea ; 2 uses
  store double %i.dz, ptr %i.eb, align 8, !tbaa !11
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %2, ptr %i.ec, align 8, !tbaa !15
  %i.ed = add nsw i32 %i.dv, 1
  store i32 %i.ed, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z26test_do_loop_unroll_factorILi8EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 7
  br i1 %i.d, label %.preheader29.us.preheader, label %.lr.ph.split

.preheader29.us.preheader:                        ; preds = %.lr.ph
  %i.e = add nsw i32 %1, -7
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -8                       ; 2 uses
  %i.h = and i32 %i.g, 2147483640
  %narrow = add nuw nsw i32 %i.h, 8
  %3 = and i32 %i.g, -8
  %i.i = add i32 %3, 8
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = zext nneg i32 %1 to i64                  ; 3 uses
  %i.l = icmp slt i32 %narrow, %1
  %i.m = sub nsw i64 %i.k, %i.j                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  %n.mod.vf = and i64 %i.k, 7                     ; 2 uses
  %n.vec = sub nuw nsw i64 %i.m, %n.mod.vf        ; 2 uses
  %i.n = add nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br label %.preheader29.us

.preheader29.us:                                  ; preds = %.preheader29.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.o = phi i32 [ %i.ah, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader29.us.preheader ]
  %.01633.us = phi i32 [ %i.ai, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader29.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader29.us, %bb.b
  %indvars.iv49 = phi i64 [ 0, %.preheader29.us ], [ %indvars.iv.next50, %bb.b ] ; 2 uses
  %.020.us = phi i32 [ 0, %.preheader29.us ], [ %i.t, %bb.b ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv49
  %i.q = load <8 x i32>, ptr %i.p, align 4, !tbaa !4
  %i.r = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.q)
  %reass.mul.us = mul i32 %i.r, 269850533
  %i.s = add i32 %.020.us, -516665920
  %i.t = add i32 %i.s, %reass.mul.us              ; 4 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 8 ; 2 uses
  %i.u = icmp samesign ult i64 %indvars.iv.next50, %i.f
  br i1 %i.u, label %bb.b, label %.loopexit30.us, !llvm.loop !479

.preheader.us:                                    ; preds = %.preheader.us.preheader79, %.preheader.us
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %.preheader.us ], [ %indvars.iv52.ph, %.preheader.us.preheader79 ] ; 2 uses
  %.222.us = phi i32 [ %i.z, %.preheader.us ], [ %.222.us.ph, %.preheader.us.preheader79 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv52
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = mul i32 %i.w, 269850533
  %i.y = add i32 %.222.us, -1138325064
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next53, %i.k
  br i1 %.not.us, label %.loopexit.us, label %.preheader.us, !llvm.loop !480

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.loopexit30.us
  %.3.us = phi i32 [ %i.t, %.loopexit30.us ], [ %i.at, %middle.block ], [ %i.z, %.preheader.us ]
  %i.aa = load double, ptr @init_value, align 8, !tbaa !32
  %i.ab = fptosi double %i.aa to i32
  %i.ac = mul i32 %i.ab, -1564285888
  %i.ad = add i32 %i.ac, -1269844480
  %i.ae = icmp eq i32 %.3.us, %i.ad
  br i1 %i.ae, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.af) ; 0 uses
  %.pre58 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %.loopexit.us
  %i.ah = phi i32 [ %.pre58, %bb.c ], [ %i.o, %.loopexit.us ] ; 2 uses
  %i.ai = add nuw nsw i32 %.01633.us, 1           ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.preheader29.us, label %._crit_edge, !llvm.loop !481

.loopexit30.us:                                   ; preds = %bb.b
  br i1 %i.l, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit30.us
  br i1 %min.iters.check, label %.preheader.us.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.t, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ak, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi77 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load78 = load <4 x i32>, ptr %i.al, align 4, !tbaa !4
  %i.am = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.an = mul <4 x i32> %wide.load78, splat (i32 269850533)
  %i.ao = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.ap = add <4 x i32> %vec.phi77, splat (i32 -1138325064)
  %i.aq = add <4 x i32> %i.ao, %i.am              ; 2 uses
  %i.ar = add <4 x i32> %i.ap, %i.an              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !482

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader79

.preheader.us.preheader79:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv52.ph = phi i64 [ %i.j, %.preheader.us.preheader ], [ %i.n, %middle.block ]
  %.222.us.ph = phi i32 [ %i.t, %.preheader.us.preheader ], [ %i.at, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.au = icmp sgt i32 %1, 0
  br i1 %i.au, label %.preheader.us40.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre55 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us40.preheader:                        ; preds = %.lr.ph.split
  %.not.us37 = icmp eq i32 %1, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not.us37.1 = icmp eq i32 %1, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.us37.2 = icmp eq i32 %1, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.us37.3 = icmp eq i32 %1, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.us37.4 = icmp eq i32 %1, 5
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.not.us37.5 = icmp eq i32 %1, 6
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.preheader.us40

.preheader.us40:                                  ; preds = %.preheader.us40.preheader, %_Z9check_sumIiEvT_.exit.us39
  %i.bb = phi i32 [ %i.cf, %_Z9check_sumIiEvT_.exit.us39 ], [ %i.b, %.preheader.us40.preheader ]
  %.01633.us34 = phi i32 [ %i.cg, %_Z9check_sumIiEvT_.exit.us39 ], [ 0, %.preheader.us40.preheader ]
  %i.bc = load i32, ptr %0, align 4, !tbaa !4
  %i.bd = mul i32 %i.bc, 269850533                ; 2 uses
  %i.be = add i32 %i.bd, -1138325064
  br i1 %.not.us37, label %.loopexit.us41, label %bb.d

bb.d:                                             ; preds = %.preheader.us40
  %i.bf = load i32, ptr %i.av, align 4, !tbaa !4
  %i.bg = mul i32 %i.bf, 269850533
  %i.bh = add i32 %i.bd, 2018317168
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  br i1 %.not.us37.1, label %.loopexit.us41, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.bk = mul i32 %i.bj, 269850533
  %i.bl = add i32 %i.bi, -1138325064
  %i.bm = add i32 %i.bl, %i.bk                    ; 2 uses
  br i1 %.not.us37.2, label %.loopexit.us41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.bo = mul i32 %i.bn, 269850533
  %i.bp = add i32 %i.bm, -1138325064
  %i.bq = add i32 %i.bp, %i.bo                    ; 2 uses
  br i1 %.not.us37.3, label %.loopexit.us41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.bs = mul i32 %i.br, 269850533
  %i.bt = add i32 %i.bq, -1138325064
  %i.bu = add i32 %i.bt, %i.bs                    ; 2 uses
  br i1 %.not.us37.4, label %.loopexit.us41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bw = mul i32 %i.bv, 269850533
  %i.bx = add i32 %i.bu, -1138325064
  %i.by = add i32 %i.bx, %i.bw                    ; 2 uses
  br i1 %.not.us37.5, label %.loopexit.us41, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.ca = mul i32 %i.bz, 269850533
  %i.cb = add i32 %i.by, -1138325064
  %i.cc = add i32 %i.cb, %i.ca
  br label %.loopexit.us41

bb.j:                                             ; preds = %.loopexit.us41
  %i.cd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cd) ; 0 uses
  %.pre57 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us39

_Z9check_sumIiEvT_.exit.us39:                     ; preds = %bb.j, %.loopexit.us41
  %i.cf = phi i32 [ %.pre57, %bb.j ], [ %i.bb, %.loopexit.us41 ] ; 2 uses
  %i.cg = add nuw nsw i32 %.01633.us34, 1         ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %i.cf
  br i1 %i.ch, label %.preheader.us40, label %._crit_edge, !llvm.loop !481

.loopexit.us41:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.preheader.us40
  %.lcssa84 = phi i32 [ %i.be, %.preheader.us40 ], [ %i.bi, %bb.d ], [ %i.bm, %bb.e ], [ %i.bq, %bb.f ], [ %i.bu, %bb.g ], [ %i.by, %bb.h ], [ %i.cc, %bb.i ]
  %i.ci = load double, ptr @init_value, align 8, !tbaa !32
  %i.cj = fptosi double %i.ci to i32
  %i.ck = mul i32 %i.cj, -1564285888
  %i.cl = add i32 %i.ck, -1269844480
  %i.cm = icmp eq i32 %.lcssa84, %i.cl
  br i1 %i.cm, label %_Z9check_sumIiEvT_.exit.us39, label %bb.j

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.cn = phi i32 [ %i.cu, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.co = phi double [ %i.cv, %_Z9check_sumIiEvT_.exit ], [ %.pre55, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01633 = phi i32 [ %i.cw, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.cp = fptosi double %i.co to i32
  %i.cq = mul i32 %i.cp, -1564285888
  %i.cr = icmp eq i32 %i.cq, 1269844480
  br i1 %i.cr, label %_Z9check_sumIiEvT_.exit, label %bb.k
end_hunk_12
begin_hunk_13_@_Z26test_do_loop_unroll_factorILi5EiEvPKT0_iPKc:bb.a
  %i.ak = icmp slt i32 %i.aj, %i.ai
  br i1 %i.ak, label %.preheader26.us, label %._crit_edge, !llvm.loop !493

.loopexit27.us:                                   ; preds = %bb.b
  %i.al = trunc nuw nsw i64 %indvars.iv.next47 to i32
  %i.am = icmp sgt i32 %1, %i.al
  br i1 %i.am, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit27.us
  br i1 %min.iters.check, label %.preheader.us.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.an = add i64 %indvars.iv49, %n.vec
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.u, i64 0
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv49
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ao, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi76 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %wide.load77 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %i.as = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.at = mul <4 x i32> %wide.load77, splat (i32 269850533)
  %i.au = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.av = add <4 x i32> %vec.phi76, splat (i32 -1138325064)
  %i.aw = add <4 x i32> %i.au, %i.as              ; 2 uses
  %i.ax = add <4 x i32> %i.av, %i.at              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !494

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ax, %i.aw
  %i.az = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader78

.preheader.us.preheader78:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv51.ph = phi i64 [ %indvars.iv49, %.preheader.us.preheader ], [ %i.an, %middle.block ]
  %.222.us.ph = phi i32 [ %i.u, %.preheader.us.preheader ], [ %i.az, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ba = icmp sgt i32 %1, 0
  br i1 %i.ba, label %.preheader.us37.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre54 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us37.preheader:                        ; preds = %.lr.ph.split
  %.not.us34 = icmp eq i32 %1, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not.us34.1 = icmp eq i32 %1, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.us34.2 = icmp eq i32 %1, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %.preheader.us37

.preheader.us37:                                  ; preds = %.preheader.us37.preheader, %_Z9check_sumIiEvT_.exit.us36
  %i.be = phi i32 [ %i.bw, %_Z9check_sumIiEvT_.exit.us36 ], [ %i.b, %.preheader.us37.preheader ]
  %.01630.us31 = phi i32 [ %i.bx, %_Z9check_sumIiEvT_.exit.us36 ], [ 0, %.preheader.us37.preheader ]
  %i.bf = load i32, ptr %0, align 4, !tbaa !4
  %i.bg = mul i32 %i.bf, 269850533                ; 2 uses
  %i.bh = add i32 %i.bg, -1138325064
  br i1 %.not.us34, label %.loopexit.us38, label %bb.d

bb.d:                                             ; preds = %.preheader.us37
  %i.bi = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bj = mul i32 %i.bi, 269850533
  %i.bk = add i32 %i.bg, 2018317168
  %i.bl = add i32 %i.bk, %i.bj                    ; 2 uses
  br i1 %.not.us34.1, label %.loopexit.us38, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bn = mul i32 %i.bm, 269850533
  %i.bo = add i32 %i.bl, -1138325064
  %i.bp = add i32 %i.bo, %i.bn                    ; 2 uses
  br i1 %.not.us34.2, label %.loopexit.us38, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.br = mul i32 %i.bq, 269850533
  %i.bs = add i32 %i.bp, -1138325064
  %i.bt = add i32 %i.bs, %i.br
  br label %.loopexit.us38

bb.g:                                             ; preds = %.loopexit.us38
  %i.bu = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bu) ; 0 uses
  %.pre56 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us36

_Z9check_sumIiEvT_.exit.us36:                     ; preds = %bb.g, %.loopexit.us38
  %i.bw = phi i32 [ %.pre56, %bb.g ], [ %i.be, %.loopexit.us38 ] ; 2 uses
  %i.bx = add nuw nsw i32 %.01630.us31, 1         ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.bw
  br i1 %i.by, label %.preheader.us37, label %._crit_edge, !llvm.loop !493

.loopexit.us38:                                   ; preds = %bb.f, %bb.e, %bb.d, %.preheader.us37
  %.lcssa83 = phi i32 [ %i.bh, %.preheader.us37 ], [ %i.bl, %bb.d ], [ %i.bp, %bb.e ], [ %i.bt, %bb.f ]
  %i.bz = load double, ptr @init_value, align 8, !tbaa !32
  %i.ca = fptosi double %i.bz to i32
  %i.cb = mul i32 %i.ca, -1564285888
  %i.cc = add i32 %i.cb, -1269844480
  %i.cd = icmp eq i32 %.lcssa83, %i.cc
  br i1 %i.cd, label %_Z9check_sumIiEvT_.exit.us36, label %bb.g

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.ce = phi i32 [ %i.cl, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.cf = phi double [ %i.cm, %_Z9check_sumIiEvT_.exit ], [ %.pre54, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01630 = phi i32 [ %i.cn, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.cg = fptosi double %i.cf to i32
  %i.ch = mul i32 %i.cg, -1564285888
  %i.ci = icmp eq i32 %i.ch, 1269844480
  br i1 %i.ci, label %_Z9check_sumIiEvT_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split
  %i.cj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre55 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.h
  %i.cl = phi i32 [ %i.ce, %.lr.ph.split.split ], [ %.pre55, %bb.h ] ; 2 uses
  %i.cm = phi double [ %i.cf, %.lr.ph.split.split ], [ %.pre, %bb.h ]
  %i.cn = add nuw nsw i32 %.01630, 1              ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.cl
  br i1 %i.co, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !493

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us36, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cp = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cp, ptr @end_time, align 8, !tbaa !27
  %i.cq = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cr = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cs = icmp ne ptr %i.cr, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.ct = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ct, %.pre.i
  %or.cond.i = select i1 %i.cs, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.cu = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cu, ptr @allocated_results, align 4, !tbaa !4
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 4
  %i.cx = tail call ptr @realloc(ptr noundef %i.cr, i64 noundef %i.cw) #13 ; 3 uses
  store ptr %i.cx, ptr @results, align 8, !tbaa !8
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.j:                                             ; preds = %bb.i
  %i.cz = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.da = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.cz) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.db = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ct, %._crit_edge ] ; 2 uses
  %i.dc = phi ptr [ %i.cx, %._crit_edge.i ], [ %i.cr, %._crit_edge ]
  %i.dd = sub nsw i64 %i.cp, %i.cq
  %i.de = sitofp i64 %i.dd to double
  %i.df = fdiv double %i.de, 1.000000e+06
  %i.dg = sext i32 %i.db to i64
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.dc, i64 %i.dg ; 2 uses
  store double %i.df, ptr %i.dh, align 8, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %2, ptr %i.di, align 8, !tbaa !15
  %i.dj = add nsw i32 %i.db, 1
  store i32 %i.dj, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z26test_do_loop_unroll_factorILi4EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 3
  br i1 %i.d, label %.preheader25.us.preheader, label %.lr.ph.split

.preheader25.us.preheader:                        ; preds = %.lr.ph
  %i.e = add nsw i32 %1, -3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -4                       ; 2 uses
  %i.h = and i32 %i.g, 2147483644
  %narrow = add nuw nsw i32 %i.h, 4
  %3 = and i32 %i.g, -4
  %i.i = add i32 %3, 4
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  %i.l = icmp slt i32 %narrow, %1
  %i.m = sub nsw i64 %i.k, %i.j                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  %n.vec = and i64 %i.m, -8                       ; 3 uses
  %i.n = add nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br label %.preheader25.us

.preheader25.us:                                  ; preds = %.preheader25.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.o = phi i32 [ %i.ah, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader25.us.preheader ]
  %.01629.us = phi i32 [ %i.ai, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader25.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader25.us, %bb.b
  %indvars.iv45 = phi i64 [ 0, %.preheader25.us ], [ %indvars.iv.next46, %bb.b ] ; 2 uses
  %.020.us = phi i32 [ 0, %.preheader25.us ], [ %i.t, %bb.b ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv45
  %i.q = load <4 x i32>, ptr %i.p, align 4, !tbaa !4
  %i.r = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.q)
  %reass.mul.us = mul i32 %i.r, 269850533
  %i.s = add i32 %.020.us, -258332960
  %i.t = add i32 %i.s, %reass.mul.us              ; 4 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 4 ; 2 uses
  %i.u = icmp samesign ult i64 %indvars.iv.next46, %i.f
  br i1 %i.u, label %bb.b, label %.loopexit26.us, !llvm.loop !495

.preheader.us:                                    ; preds = %.preheader.us.preheader75, %.preheader.us
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.preheader.us ], [ %indvars.iv48.ph, %.preheader.us.preheader75 ] ; 2 uses
  %.222.us = phi i32 [ %i.z, %.preheader.us ], [ %.222.us.ph, %.preheader.us.preheader75 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv48
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = mul i32 %i.w, 269850533
  %i.y = add i32 %.222.us, -1138325064
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next49, %i.k
  br i1 %.not.us, label %.loopexit.us, label %.preheader.us, !llvm.loop !496

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.loopexit26.us
  %.3.us = phi i32 [ %i.t, %.loopexit26.us ], [ %i.at, %middle.block ], [ %i.z, %.preheader.us ]
  %i.aa = load double, ptr @init_value, align 8, !tbaa !32
  %i.ab = fptosi double %i.aa to i32
  %i.ac = mul i32 %i.ab, -1564285888
  %i.ad = add i32 %i.ac, -1269844480
  %i.ae = icmp eq i32 %.3.us, %i.ad
  br i1 %i.ae, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.af) ; 0 uses
  %.pre54 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %.loopexit.us
  %i.ah = phi i32 [ %.pre54, %bb.c ], [ %i.o, %.loopexit.us ] ; 2 uses
  %i.ai = add nuw nsw i32 %.01629.us, 1           ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.preheader25.us, label %._crit_edge, !llvm.loop !497

.loopexit26.us:                                   ; preds = %bb.b
  br i1 %i.l, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit26.us
  br i1 %min.iters.check, label %.preheader.us.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.t, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ak, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi73 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load74 = load <4 x i32>, ptr %i.al, align 4, !tbaa !4
  %i.am = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.an = mul <4 x i32> %wide.load74, splat (i32 269850533)
  %i.ao = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.ap = add <4 x i32> %vec.phi73, splat (i32 -1138325064)
  %i.aq = add <4 x i32> %i.ao, %i.am              ; 2 uses
  %i.ar = add <4 x i32> %i.ap, %i.an              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !498

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader75

.preheader.us.preheader75:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv48.ph = phi i64 [ %i.j, %.preheader.us.preheader ], [ %i.n, %middle.block ]
  %.222.us.ph = phi i32 [ %i.t, %.preheader.us.preheader ], [ %i.at, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.au = icmp sgt i32 %1, 0
  br i1 %i.au, label %.preheader.us36.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre51 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us36.preheader:                        ; preds = %.lr.ph.split
  %.not.us33 = icmp eq i32 %1, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not.us33.1 = icmp eq i32 %1, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader.us36

.preheader.us36:                                  ; preds = %.preheader.us36.preheader, %_Z9check_sumIiEvT_.exit.us35
  %i.ax = phi i32 [ %i.bl, %_Z9check_sumIiEvT_.exit.us35 ], [ %i.b, %.preheader.us36.preheader ]
  %.01629.us30 = phi i32 [ %i.bm, %_Z9check_sumIiEvT_.exit.us35 ], [ 0, %.preheader.us36.preheader ]
  %i.ay = load i32, ptr %0, align 4, !tbaa !4
  %i.az = mul i32 %i.ay, 269850533                ; 2 uses
  %i.ba = add i32 %i.az, -1138325064
  br i1 %.not.us33, label %.loopexit.us37, label %bb.d

bb.d:                                             ; preds = %.preheader.us36
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !4
  %i.bc = mul i32 %i.bb, 269850533
  %i.bd = add i32 %i.az, 2018317168
  %i.be = add i32 %i.bd, %i.bc                    ; 2 uses
  br i1 %.not.us33.1, label %.loopexit.us37, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.bg = mul i32 %i.bf, 269850533
  %i.bh = add i32 %i.be, -1138325064
  %i.bi = add i32 %i.bh, %i.bg
  br label %.loopexit.us37

bb.f:                                             ; preds = %.loopexit.us37
  %i.bj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bj) ; 0 uses
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us35

_Z9check_sumIiEvT_.exit.us35:                     ; preds = %bb.f, %.loopexit.us37
  %i.bl = phi i32 [ %.pre53, %bb.f ], [ %i.ax, %.loopexit.us37 ] ; 2 uses
  %i.bm = add nuw nsw i32 %.01629.us30, 1         ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %.preheader.us36, label %._crit_edge, !llvm.loop !497

.loopexit.us37:                                   ; preds = %bb.e, %bb.d, %.preheader.us36
  %.lcssa80 = phi i32 [ %i.ba, %.preheader.us36 ], [ %i.be, %bb.d ], [ %i.bi, %bb.e ]
  %i.bo = load double, ptr @init_value, align 8, !tbaa !32
  %i.bp = fptosi double %i.bo to i32
  %i.bq = mul i32 %i.bp, -1564285888
  %i.br = add i32 %i.bq, -1269844480
  %i.bs = icmp eq i32 %.lcssa80, %i.br
  br i1 %i.bs, label %_Z9check_sumIiEvT_.exit.us35, label %bb.f

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.bt = phi i32 [ %i.ca, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.bu = phi double [ %i.cb, %_Z9check_sumIiEvT_.exit ], [ %.pre51, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01629 = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.bv = fptosi double %i.bu to i32
  %i.bw = mul i32 %i.bv, -1564285888
  %i.bx = icmp eq i32 %i.bw, 1269844480
  br i1 %i.bx, label %_Z9check_sumIiEvT_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split
  %i.by = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.by) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.g
  %i.ca = phi i32 [ %i.bt, %.lr.ph.split.split ], [ %.pre52, %bb.g ] ; 2 uses
  %i.cb = phi double [ %i.bu, %.lr.ph.split.split ], [ %.pre, %bb.g ]
  %i.cc = add nuw nsw i32 %.01629, 1              ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.ca
  br i1 %i.cd, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !497

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us35, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ce = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ce, ptr @end_time, align 8, !tbaa !27
  %i.cf = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cg = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.ch = icmp ne ptr %i.cg, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.ci = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ci, %.pre.i
  %or.cond.i = select i1 %i.ch, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.cj = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cj, ptr @allocated_results, align 4, !tbaa !4
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 4
  %i.cm = tail call ptr @realloc(ptr noundef %i.cg, i64 noundef %i.cl) #13 ; 3 uses
  store ptr %i.cm, ptr @results, align 8, !tbaa !8
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.i, label %._crit_edge.i

end_hunk_13
begin_hunk_14_@_Z26test_do_loop_unroll_factorILi3EiEvPKT0_iPKc:bb.a
.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.loopexit25.us
  %.3.us = phi i32 [ %i.v, %.loopexit25.us ], [ %i.ba, %middle.block ], [ %i.ab, %.preheader.us ]
  %i.ac = load double, ptr @init_value, align 8, !tbaa !32
  %i.ad = fptosi double %i.ac to i32
  %i.ae = mul i32 %i.ad, -1564285888
  %i.af = add i32 %i.ae, -1269844480
  %i.ag = icmp eq i32 %.3.us, %i.af
  br i1 %i.ag, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.ah = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ah) ; 0 uses
  %.pre55 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %.loopexit.us
  %i.aj = phi i32 [ %.pre55, %bb.c ], [ %i.n, %.loopexit.us ] ; 2 uses
  %i.ak = add nuw nsw i32 %.01628.us, 1           ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.aj
  br i1 %i.al, label %.preheader24.us, label %._crit_edge, !llvm.loop !501

.loopexit25.us:                                   ; preds = %bb.b
  %i.am = trunc nuw nsw i64 %indvars.iv.next45 to i32
  %i.an = icmp sgt i32 %1, %i.am
  br i1 %i.an, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit25.us
  br i1 %min.iters.check, label %.preheader.us.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.ao = add i64 %indvars.iv47, %n.vec
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.v, i64 0
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv47
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %wide.load75 = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %i.at = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.au = mul <4 x i32> %wide.load75, splat (i32 269850533)
  %i.av = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.aw = add <4 x i32> %vec.phi74, splat (i32 -1138325064)
  %i.ax = add <4 x i32> %i.av, %i.at              ; 2 uses
  %i.ay = add <4 x i32> %i.aw, %i.au              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !502

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader76

.preheader.us.preheader76:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv49.ph = phi i64 [ %indvars.iv47, %.preheader.us.preheader ], [ %i.ao, %middle.block ]
  %.222.us.ph = phi i32 [ %i.v, %.preheader.us.preheader ], [ %i.ba, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bb = icmp sgt i32 %1, 0
  br i1 %i.bb, label %.preheader.us35.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre52 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us35.preheader:                        ; preds = %.lr.ph.split
  %.not.us32 = icmp eq i32 %1, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader.us35

.preheader.us35:                                  ; preds = %.preheader.us35.preheader, %_Z9check_sumIiEvT_.exit.us34
  %i.bd = phi i32 [ %i.bn, %_Z9check_sumIiEvT_.exit.us34 ], [ %i.b, %.preheader.us35.preheader ]
  %.01628.us29 = phi i32 [ %i.bo, %_Z9check_sumIiEvT_.exit.us34 ], [ 0, %.preheader.us35.preheader ]
  %i.be = load i32, ptr %0, align 4, !tbaa !4
  %i.bf = mul i32 %i.be, 269850533                ; 2 uses
  %i.bg = add i32 %i.bf, -1138325064
  br i1 %.not.us32, label %.loopexit.us36, label %bb.d

bb.d:                                             ; preds = %.preheader.us35
  %i.bh = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bi = mul i32 %i.bh, 269850533
  %i.bj = add i32 %i.bf, 2018317168
  %i.bk = add i32 %i.bj, %i.bi
  br label %.loopexit.us36

bb.e:                                             ; preds = %.loopexit.us36
  %i.bl = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bl) ; 0 uses
  %.pre54 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us34

_Z9check_sumIiEvT_.exit.us34:                     ; preds = %bb.e, %.loopexit.us36
  %i.bn = phi i32 [ %.pre54, %bb.e ], [ %i.bd, %.loopexit.us36 ] ; 2 uses
  %i.bo = add nuw nsw i32 %.01628.us29, 1         ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %i.bn
  br i1 %i.bp, label %.preheader.us35, label %._crit_edge, !llvm.loop !501

.loopexit.us36:                                   ; preds = %bb.d, %.preheader.us35
  %.lcssa81 = phi i32 [ %i.bg, %.preheader.us35 ], [ %i.bk, %bb.d ]
  %i.bq = load double, ptr @init_value, align 8, !tbaa !32
  %i.br = fptosi double %i.bq to i32
  %i.bs = mul i32 %i.br, -1564285888
  %i.bt = add i32 %i.bs, -1269844480
  %i.bu = icmp eq i32 %.lcssa81, %i.bt
  br i1 %i.bu, label %_Z9check_sumIiEvT_.exit.us34, label %bb.e

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.bv = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.bw = phi double [ %i.cd, %_Z9check_sumIiEvT_.exit ], [ %.pre52, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01628 = phi i32 [ %i.ce, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.bx = fptosi double %i.bw to i32
  %i.by = mul i32 %i.bx, -1564285888
  %i.bz = icmp eq i32 %i.by, 1269844480
  br i1 %i.bz, label %_Z9check_sumIiEvT_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split
  %i.ca = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ca) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.f
  %i.cc = phi i32 [ %i.bv, %.lr.ph.split.split ], [ %.pre53, %bb.f ] ; 2 uses
  %i.cd = phi double [ %i.bw, %.lr.ph.split.split ], [ %.pre, %bb.f ]
  %i.ce = add nuw nsw i32 %.01628, 1              ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %i.cc
  br i1 %i.cf, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !501

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us34, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cg = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cg, ptr @end_time, align 8, !tbaa !27
  %i.ch = load i64, ptr @start_time, align 8, !tbaa !27
  %i.ci = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cj = icmp ne ptr %i.ci, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.ck = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ck, %.pre.i
  %or.cond.i = select i1 %i.cj, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.cl = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cl, ptr @allocated_results, align 4, !tbaa !4
  %i.cm = sext i32 %i.cl to i64
  %i.cn = shl nsw i64 %i.cm, 4
  %i.co = tail call ptr @realloc(ptr noundef %i.ci, i64 noundef %i.cn) #13 ; 3 uses
  store ptr %i.co, ptr @results, align 8, !tbaa !8
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.h:                                             ; preds = %bb.g
  %i.cq = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.cr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.cq) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.cs = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ck, %._crit_edge ] ; 2 uses
  %i.ct = phi ptr [ %i.co, %._crit_edge.i ], [ %i.ci, %._crit_edge ]
  %i.cu = sub nsw i64 %i.cg, %i.ch
  %i.cv = sitofp i64 %i.cu to double
  %i.cw = fdiv double %i.cv, 1.000000e+06
  %i.cx = sext i32 %i.cs to i64
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.ct, i64 %i.cx ; 2 uses
  store double %i.cw, ptr %i.cy, align 8, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %2, ptr %i.cz, align 8, !tbaa !15
  %i.da = add nsw i32 %i.cs, 1
  store i32 %i.da, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z26test_do_loop_unroll_factorILi2EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.preheader23.us.preheader, label %.lr.ph.split

.preheader23.us.preheader:                        ; preds = %.lr.ph
  %i.e = add nsw i32 %1, -1
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = add nsw i32 %1, -2                       ; 2 uses
  %i.h = and i32 %i.g, 2147483646
  %narrow = add nuw nsw i32 %i.h, 2
  %3 = and i32 %i.g, -2
  %i.i = add i32 %3, 2
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  %i.l = icmp slt i32 %narrow, %1
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check72 = icmp ult i32 %1, 16
  %n.vec75 = and i64 %i.p, 9223372036854775800    ; 3 uses
  %i.q = shl nuw i64 %n.vec75, 1
  %cmp.n87 = icmp eq i64 %i.p, %n.vec75
  %i.r = sub nsw i64 %i.k, %i.j                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br label %.preheader23.us

.preheader23.us:                                  ; preds = %.preheader23.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.t = phi i32 [ %i.bb, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader23.us.preheader ]
  %.01627.us = phi i32 [ %i.bc, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader23.us.preheader ]
  br i1 %min.iters.check72, label %scalar.ph71.preheader, label %vector.body76

vector.body76:                                    ; preds = %.preheader23.us, %vector.body76
  %index77 = phi i64 [ %index.next84, %vector.body76 ], [ 0, %.preheader23.us ] ; 2 uses
  %vec.phi78 = phi <4 x i32> [ %i.ae, %vector.body76 ], [ zeroinitializer, %.preheader23.us ]
  %vec.phi79 = phi <4 x i32> [ %i.af, %vector.body76 ], [ zeroinitializer, %.preheader23.us ]
  %i.u = shl nuw i64 %index77, 1                  ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %wide.vec = load <8 x i32>, ptr %i.v, align 4, !tbaa !4 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec80 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec81 = load <8 x i32>, ptr %i.x, align 4, !tbaa !4 ; 2 uses
  %strided.vec82 = shufflevector <8 x i32> %wide.vec81, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec83 = shufflevector <8 x i32> %wide.vec81, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.y = add <4 x i32> %strided.vec80, %strided.vec
  %i.z = add <4 x i32> %strided.vec83, %strided.vec82
  %i.aa = mul <4 x i32> %i.y, splat (i32 269850533)
  %i.ab = mul <4 x i32> %i.z, splat (i32 269850533)
  %i.ac = add <4 x i32> %vec.phi78, splat (i32 2018317168)
  %i.ad = add <4 x i32> %vec.phi79, splat (i32 2018317168)
  %i.ae = add <4 x i32> %i.ac, %i.aa              ; 2 uses
  %i.af = add <4 x i32> %i.ad, %i.ab              ; 2 uses
  %index.next84 = add nuw i64 %index77, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next84, %n.vec75
  br i1 %i.ag, label %middle.block85, label %vector.body76, !llvm.loop !503

middle.block85:                                   ; preds = %vector.body76
  %bin.rdx86 = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  br i1 %cmp.n87, label %.loopexit24.us, label %scalar.ph71.preheader

scalar.ph71.preheader:                            ; preds = %.preheader23.us, %middle.block85
  %indvars.iv.ph = phi i64 [ 0, %.preheader23.us ], [ %i.q, %middle.block85 ]
  %.020.us.ph = phi i32 [ 0, %.preheader23.us ], [ %i.ah, %middle.block85 ]
  br label %scalar.ph71

scalar.ph71:                                      ; preds = %scalar.ph71.preheader, %scalar.ph71
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph71 ], [ %indvars.iv.ph, %scalar.ph71.preheader ] ; 2 uses
  %.020.us = phi i32 [ %i.an, %scalar.ph71 ], [ %.020.us.ph, %scalar.ph71.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr i8, ptr %i.ai, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %reass.add.us = add i32 %i.al, %i.aj
  %reass.mul.us = mul i32 %reass.add.us, 269850533
  %i.am = add i32 %.020.us, 2018317168
  %i.an = add i32 %i.am, %reass.mul.us            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.ao, label %scalar.ph71, label %.loopexit24.us, !llvm.loop !504

.preheader.us:                                    ; preds = %.preheader.us.preheader90, %.preheader.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.preheader.us ], [ %indvars.iv44.ph, %.preheader.us.preheader90 ] ; 2 uses
  %.222.us = phi i32 [ %i.at, %.preheader.us ], [ %.222.us.ph, %.preheader.us.preheader90 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = mul i32 %i.aq, 269850533
  %i.as = add i32 %.222.us, -1138325064
  %i.at = add i32 %i.as, %i.ar                    ; 2 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next45, %i.k
  br i1 %.not.us, label %.loopexit.us, label %.preheader.us, !llvm.loop !505

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.loopexit24.us
  %.3.us = phi i32 [ %.lcssa, %.loopexit24.us ], [ %i.bn, %middle.block ], [ %i.at, %.preheader.us ]
  %i.au = load double, ptr @init_value, align 8, !tbaa !32
  %i.av = fptosi double %i.au to i32
  %i.aw = mul i32 %i.av, -1564285888
  %i.ax = add i32 %i.aw, -1269844480
  %i.ay = icmp eq i32 %.3.us, %i.ax
  br i1 %i.ay, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %.loopexit.us
  %i.az = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.az) ; 0 uses
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %.loopexit.us
  %i.bb = phi i32 [ %.pre52, %bb.b ], [ %i.t, %.loopexit.us ] ; 2 uses
  %i.bc = add nuw nsw i32 %.01627.us, 1           ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.bb
  br i1 %i.bd, label %.preheader23.us, label %._crit_edge, !llvm.loop !506

.loopexit24.us:                                   ; preds = %scalar.ph71, %middle.block85
  %.lcssa = phi i32 [ %i.ah, %middle.block85 ], [ %i.an, %scalar.ph71 ] ; 3 uses
  br i1 %i.l, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit24.us
  br i1 %min.iters.check, label %.preheader.us.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.be = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.be, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load70 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.bg = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.bh = mul <4 x i32> %wide.load70, splat (i32 269850533)
  %i.bi = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.bj = add <4 x i32> %vec.phi69, splat (i32 -1138325064)
  %i.bk = add <4 x i32> %i.bi, %i.bg              ; 2 uses
  %i.bl = add <4 x i32> %i.bj, %i.bh              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !507

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bl, %i.bk
  %i.bn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader90

.preheader.us.preheader90:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv44.ph = phi i64 [ %i.j, %.preheader.us.preheader ], [ %i.s, %middle.block ]
  %.222.us.ph = phi i32 [ %.lcssa, %.preheader.us.preheader ], [ %i.bn, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bo = icmp eq i32 %1, 1
  %.pre50 = load double, ptr @init_value, align 8, !tbaa !32 ; 2 uses
  br i1 %i.bo, label %.preheader.us34, label %.lr.ph.split.split

.preheader.us34:                                  ; preds = %.lr.ph.split, %_Z9check_sumIiEvT_.exit.us33
  %i.bp = phi i32 [ %i.bz, %_Z9check_sumIiEvT_.exit.us33 ], [ %i.b, %.lr.ph.split ]
  %i.bq = phi double [ %i.ca, %_Z9check_sumIiEvT_.exit.us33 ], [ %.pre50, %.lr.ph.split ] ; 2 uses
  %.01627.us28 = phi i32 [ %i.cb, %_Z9check_sumIiEvT_.exit.us33 ], [ 0, %.lr.ph.split ]
  %i.br = load i32, ptr %0, align 4, !tbaa !4
  %i.bs = mul i32 %i.br, 269850533
  %i.bt = fptosi double %i.bq to i32
  %i.bu = mul i32 %i.bt, -1564285888
  %i.bv = add i32 %i.bu, -131519416
  %i.bw = icmp eq i32 %i.bs, %i.bv
  br i1 %i.bw, label %_Z9check_sumIiEvT_.exit.us33, label %bb.c

bb.c:                                             ; preds = %.preheader.us34
  %i.bx = load i32, ptr @current_test, align 4, !tbaa !4
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bx) ; 0 uses
  %.pre49 = load double, ptr @init_value, align 8, !tbaa !32
  %.pre51 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us33

_Z9check_sumIiEvT_.exit.us33:                     ; preds = %bb.c, %.preheader.us34
  %i.bz = phi i32 [ %.pre51, %bb.c ], [ %i.bp, %.preheader.us34 ] ; 2 uses
  %i.ca = phi double [ %.pre49, %bb.c ], [ %i.bq, %.preheader.us34 ]
  %i.cb = add nuw nsw i32 %.01627.us28, 1         ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.bz
  br i1 %i.cc, label %.preheader.us34, label %._crit_edge, !llvm.loop !506

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_Z9check_sumIiEvT_.exit
  %i.cd = phi i32 [ %i.ck, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split ]
  %i.ce = phi double [ %i.cl, %_Z9check_sumIiEvT_.exit ], [ %.pre50, %.lr.ph.split ] ; 2 uses
  %.01627 = phi i32 [ %i.cm, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split ]
  %i.cf = fptosi double %i.ce to i32
  %i.cg = mul i32 %i.cf, -1564285888
  %i.ch = icmp eq i32 %i.cg, 1269844480
  br i1 %i.ch, label %_Z9check_sumIiEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split
  %i.ci = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ci) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre48 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.d
  %i.ck = phi i32 [ %i.cd, %.lr.ph.split.split ], [ %.pre48, %bb.d ] ; 2 uses
  %i.cl = phi double [ %i.ce, %.lr.ph.split.split ], [ %.pre, %bb.d ]
  %i.cm = add nuw nsw i32 %.01627, 1              ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.ck
  br i1 %i.cn, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !506

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us33, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.co = tail call i64 @clock() #16              ; 2 uses
end_hunk_14
begin_hunk_15_@_Z26test_do_loop_unroll_factorILi2EiEvPKT0_iPKc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.cy = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.cz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.cy) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.da = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cs, %._crit_edge ] ; 2 uses
  %i.db = phi ptr [ %i.cw, %._crit_edge.i ], [ %i.cq, %._crit_edge ]
  %i.dc = sub nsw i64 %i.co, %i.cp
  %i.dd = sitofp i64 %i.dc to double
  %i.de = fdiv double %i.dd, 1.000000e+06
  %i.df = sext i32 %i.da to i64
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.db, i64 %i.df ; 2 uses
  store double %i.de, ptr %i.dg, align 8, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %2, ptr %i.dh, align 8, !tbaa !15
  %i.di = add nsw i32 %i.da, 1
  store i32 %i.di, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z26test_do_loop_unroll_factorILi1EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader23.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph
  %.pre39 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader23.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader23.us

.preheader23.us:                                  ; preds = %.preheader23.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.e = phi i32 [ %i.ab, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader23.us.preheader ]
  %.01627.us = phi i32 [ %i.ac, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader23.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader23.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader23.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.l, %vector.body ], [ zeroinitializer, %.preheader23.us ]
  %vec.phi52 = phi <4 x i32> [ %i.m, %vector.body ], [ zeroinitializer, %.preheader23.us ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !4
  %wide.load53 = load <4 x i32>, ptr %i.g, align 4, !tbaa !4
  %i.h = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.i = mul <4 x i32> %wide.load53, splat (i32 269850533)
  %i.j = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.k = add <4 x i32> %vec.phi52, splat (i32 -1138325064)
  %i.l = add <4 x i32> %i.j, %i.h                 ; 2 uses
  %i.m = add <4 x i32> %i.k, %i.i                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !508

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.m, %i.l
  %i.o = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader23.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader23.us ], [ %n.vec, %middle.block ]
  %.020.us.ph = phi i32 [ 0, %.preheader23.us ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.020.us = phi i32 [ %i.t, %scalar.ph ], [ %.020.us.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = mul i32 %i.q, 269850533
  %i.s = add i32 %.020.us, -1138325064
  %i.t = add i32 %i.s, %i.r                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %scalar.ph, !llvm.loop !509

.loopexit.us:                                     ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.o, %middle.block ], [ %i.t, %scalar.ph ]
  %i.u = load double, ptr @init_value, align 8, !tbaa !32
  %i.v = fptosi double %i.u to i32
  %i.w = mul i32 %i.v, -1564285888
  %i.x = add i32 %i.w, -1269844480
  %i.y = icmp eq i32 %.lcssa, %i.x
  br i1 %i.y, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %.loopexit.us
  %i.z = load i32, ptr @current_test, align 4, !tbaa !4
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.z) ; 0 uses
  %.pre41 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %.loopexit.us
  %i.ab = phi i32 [ %.pre41, %bb.b ], [ %i.e, %.loopexit.us ] ; 2 uses
  %i.ac = add nuw nsw i32 %.01627.us, 1           ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  br i1 %i.ad, label %.preheader23.us, label %._crit_edge, !llvm.loop !510

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.ae = phi i32 [ %i.al, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.af = phi double [ %i.am, %_Z9check_sumIiEvT_.exit ], [ %.pre39, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01627 = phi i32 [ %i.an, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.ag = fptosi double %i.af to i32
  %i.ah = mul i32 %i.ag, -1564285888
  %i.ai = icmp eq i32 %i.ah, 1269844480
  br i1 %i.ai, label %_Z9check_sumIiEvT_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.split
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.aj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre40 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.c
  %i.al = phi i32 [ %i.ae, %.lr.ph.split.split ], [ %.pre40, %bb.c ] ; 2 uses
  %i.am = phi double [ %i.af, %.lr.ph.split.split ], [ %.pre, %bb.c ]
  %i.an = add nuw nsw i32 %.01627, 1              ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !510

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us, %bb.a
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

bb.d:                                             ; preds = %._crit_edge
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

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.bb = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.at, %._crit_edge ] ; 2 uses
  %i.bc = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.ar, %._crit_edge ]
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
define linkonce_odr dso_local void @_Z28test_goto_loop_unroll_factorILi32EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 31
  br i1 %i.d, label %.preheader54.us.preheader, label %.lr.ph.split

.preheader54.us.preheader:                        ; preds = %.lr.ph
  %i.e = add nsw i32 %1, -31
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -32                      ; 2 uses
  %i.h = and i32 %i.g, 2147483616
  %narrow = add nuw nsw i32 %i.h, 32
  %3 = and i32 %i.g, -32
  %i.i = add i32 %3, 32
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = zext nneg i32 %1 to i64                  ; 3 uses
  %i.l = icmp slt i32 %narrow, %1
  %i.m = sub nsw i64 %i.k, %i.j                   ; 2 uses
  %min.iters.check103 = icmp ult i64 %i.m, 8
  %n.mod.vf105 = and i64 %i.k, 7                  ; 2 uses
  %n.vec106 = sub nuw nsw i64 %i.m, %n.mod.vf105  ; 2 uses
  %i.n = add nsw i64 %n.vec106, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n116 = icmp eq i64 %n.mod.vf105, 0
  br label %.preheader54.us

.preheader54.us:                                  ; preds = %.preheader54.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %.01658.us = phi i32 [ %i.ag, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader54.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader54.us, %bb.b
  %indvars.iv74 = phi i64 [ 0, %.preheader54.us ], [ %indvars.iv.next75, %bb.b ] ; 2 uses
  %.021.us = phi i32 [ 0, %.preheader54.us ], [ %i.s, %bb.b ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv74
  %i.p = load <32 x i32>, ptr %i.o, align 4, !tbaa !4
  %i.q = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.p)
  %reass.mul.us = mul i32 %i.q, 269850533
  %i.r = add i32 %.021.us, -2066663680
  %i.s = add i32 %i.r, %reass.mul.us              ; 4 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 32 ; 2 uses
  %i.t = icmp samesign ult i64 %indvars.iv.next75, %i.f
  br i1 %i.t, label %bb.b, label %.loopexit55.us

.preheader.us:                                    ; preds = %.preheader.us.preheader119, %.preheader.us
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.preheader.us ], [ %indvars.iv77.ph, %.preheader.us.preheader119 ] ; 2 uses
  %.223.us = phi i32 [ %i.y, %.preheader.us ], [ %.223.us.ph, %.preheader.us.preheader119 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv77
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = mul i32 %i.v, 269850533
  %i.x = add i32 %.223.us, -1138325064
  %i.y = add i32 %i.x, %i.w                       ; 2 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next78, %i.k
  br i1 %.not.us, label %.loopexit.us, label %.preheader.us, !llvm.loop !511

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block114, %.loopexit55.us
  %.3.us = phi i32 [ %i.s, %.loopexit55.us ], [ %i.as, %middle.block114 ], [ %i.y, %.preheader.us ]
  %i.z = load double, ptr @init_value, align 8, !tbaa !32
  %i.aa = fptosi double %i.z to i32
  %i.ab = mul i32 %i.aa, -1564285888
  %i.ac = add i32 %i.ab, -1269844480
  %i.ad = icmp eq i32 %.3.us, %i.ac
  br i1 %i.ad, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.ae = load i32, ptr @current_test, align 4, !tbaa !4
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ae) ; 0 uses
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %.loopexit.us
  %i.ag = add nuw nsw i32 %.01658.us, 1           ; 2 uses
  %i.ah = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.preheader54.us, label %._crit_edge, !llvm.loop !512

.loopexit55.us:                                   ; preds = %bb.b
  br i1 %i.l, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit55.us
  br i1 %min.iters.check103, label %.preheader.us.preheader119, label %vector.ph104

vector.ph104:                                     ; preds = %.preheader.us.preheader
  %i.aj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.s, i64 0
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph104
  %index108 = phi i64 [ 0, %vector.ph104 ], [ %index.next113, %vector.body107 ] ; 2 uses
  %vec.phi109 = phi <4 x i32> [ %i.aj, %vector.ph104 ], [ %i.ap, %vector.body107 ]
  %vec.phi110 = phi <4 x i32> [ zeroinitializer, %vector.ph104 ], [ %i.aq, %vector.body107 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index108 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load111 = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load112 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !4
  %i.al = mul <4 x i32> %wide.load111, splat (i32 269850533)
  %i.am = mul <4 x i32> %wide.load112, splat (i32 269850533)
  %i.an = add <4 x i32> %vec.phi109, splat (i32 -1138325064)
  %i.ao = add <4 x i32> %vec.phi110, splat (i32 -1138325064)
  %i.ap = add <4 x i32> %i.an, %i.al              ; 2 uses
  %i.aq = add <4 x i32> %i.ao, %i.am              ; 2 uses
  %index.next113 = add nuw i64 %index108, 8       ; 2 uses
  %i.ar = icmp eq i64 %index.next113, %n.vec106
  br i1 %i.ar, label %middle.block114, label %vector.body107, !llvm.loop !513

middle.block114:                                  ; preds = %vector.body107
  %bin.rdx115 = add <4 x i32> %i.aq, %i.ap
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx115) ; 2 uses
  br i1 %cmp.n116, label %.loopexit.us, label %.preheader.us.preheader119

.preheader.us.preheader119:                       ; preds = %.preheader.us.preheader, %middle.block114
  %indvars.iv77.ph = phi i64 [ %i.j, %.preheader.us.preheader ], [ %i.n, %middle.block114 ]
  %.223.us.ph = phi i32 [ %i.s, %.preheader.us.preheader ], [ %i.as, %middle.block114 ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.at = icmp sgt i32 %1, 0
  br i1 %i.at, label %.preheader.us65.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre80 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us65.preheader:                        ; preds = %.lr.ph.split
  %i.au = zext nneg i32 %1 to i64                 ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %i.au, 2147483640              ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = icmp eq i64 %n.vec, 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = icmp eq i64 %n.vec, 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %cmp.n = icmp eq i64 %n.vec, %i.au
  br label %.preheader.us65

.preheader.us65:                                  ; preds = %.preheader.us65.preheader, %_Z9check_sumIiEvT_.exit.us64
  %i.bc = phi i32 [ %i.cb, %_Z9check_sumIiEvT_.exit.us64 ], [ %i.b, %.preheader.us65.preheader ]
  %.01658.us59 = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit.us64 ], [ 0, %.preheader.us65.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us65
  %wide.load = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %wide.load101 = load <4 x i32>, ptr %i.av, align 4, !tbaa !4
  %i.bd = mul <4 x i32> %wide.load, splat (i32 269850533) ; 2 uses
  %i.be = mul <4 x i32> %wide.load101, splat (i32 269850533) ; 2 uses
  %i.bf = add <4 x i32> %i.bd, splat (i32 -1138325064)
  %i.bg = add <4 x i32> %i.be, splat (i32 -1138325064)
  br i1 %i.aw, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %wide.load.1 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !4
  %wide.load101.1 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !4
  %i.bh = mul <4 x i32> %wide.load.1, splat (i32 269850533)
  %i.bi = mul <4 x i32> %wide.load101.1, splat (i32 269850533)
  %i.bj = add <4 x i32> %i.bd, splat (i32 2018317168)
  %i.bk = add <4 x i32> %i.be, splat (i32 2018317168)
  %i.bl = add <4 x i32> %i.bj, %i.bh              ; 2 uses
  %i.bm = add <4 x i32> %i.bk, %i.bi              ; 2 uses
  br i1 %i.az, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !4
  %wide.load101.2 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !4
  %i.bn = mul <4 x i32> %wide.load.2, splat (i32 269850533)
  %i.bo = mul <4 x i32> %wide.load101.2, splat (i32 269850533)
  %i.bp = add <4 x i32> %i.bl, splat (i32 -1138325064)
  %i.bq = add <4 x i32> %i.bm, splat (i32 -1138325064)
  %i.br = add <4 x i32> %i.bp, %i.bn
  %i.bs = add <4 x i32> %i.bq, %i.bo
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.body
  %.lcssa125 = phi <4 x i32> [ %i.bf, %vector.body ], [ %i.bl, %vector.body.1 ], [ %i.br, %vector.body.2 ]
  %.lcssa124 = phi <4 x i32> [ %i.bg, %vector.body ], [ %i.bm, %vector.body.1 ], [ %i.bs, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa124, %.lcssa125
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us66, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us65, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us65 ], [ %n.vec, %middle.block ]
  %.223.us60.ph = phi i32 [ 0, %.preheader.us65 ], [ %i.bt, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.223.us60 = phi i32 [ %i.by, %scalar.ph ], [ %.223.us60.ph, %scalar.ph.preheader ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = mul i32 %i.bv, 269850533
  %i.bx = add i32 %.223.us60, -1138325064
  %i.by = add i32 %i.bx, %i.bw                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.us62 = icmp eq i64 %indvars.iv.next, %i.au
  br i1 %.not.us62, label %.loopexit.us66, label %scalar.ph, !llvm.loop !514

bb.d:                                             ; preds = %.loopexit.us66
  %i.bz = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bz) ; 0 uses
  %.pre82 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us64

_Z9check_sumIiEvT_.exit.us64:                     ; preds = %bb.d, %.loopexit.us66
  %i.cb = phi i32 [ %.pre82, %bb.d ], [ %i.bc, %.loopexit.us66 ] ; 2 uses
  %i.cc = add nuw nsw i32 %.01658.us59, 1         ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.cb
  br i1 %i.cd, label %.preheader.us65, label %._crit_edge, !llvm.loop !512

.loopexit.us66:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa99 = phi i32 [ %i.bt, %middle.block ], [ %i.by, %scalar.ph ]
  %i.ce = load double, ptr @init_value, align 8, !tbaa !32
  %i.cf = fptosi double %i.ce to i32
  %i.cg = mul i32 %i.cf, -1564285888
  %i.ch = add i32 %i.cg, -1269844480
  %i.ci = icmp eq i32 %.lcssa99, %i.ch
  br i1 %i.ci, label %_Z9check_sumIiEvT_.exit.us64, label %bb.d

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
end_hunk_15
begin_hunk_16_@_Z28test_goto_loop_unroll_factorILi17EiEvPKT0_iPKc:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load99 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %wide.load100 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %i.as = mul <4 x i32> %wide.load99, splat (i32 269850533)
  %i.at = mul <4 x i32> %wide.load100, splat (i32 269850533)
  %i.au = add <4 x i32> %vec.phi97, splat (i32 -1138325064)
  %i.av = add <4 x i32> %vec.phi98, splat (i32 -1138325064)
  %i.aw = add <4 x i32> %i.au, %i.as              ; 2 uses
  %i.ax = add <4 x i32> %i.av, %i.at              ; 2 uses
  %index.next101 = add nuw i64 %index96, 8        ; 2 uses
  %i.ay = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.ay, label %middle.block102, label %vector.body95, !llvm.loop !573

middle.block102:                                  ; preds = %vector.body95
  %bin.rdx103 = add <4 x i32> %i.ax, %i.aw
  %i.az = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx103) ; 2 uses
  br i1 %cmp.n104, label %.loopexit.us, label %.preheader.us.preheader107

.preheader.us.preheader107:                       ; preds = %.preheader.us.preheader, %middle.block102
  %indvars.iv63.ph = phi i64 [ %indvars.iv61, %.preheader.us.preheader ], [ %i.an, %middle.block102 ]
  %.222.us.ph = phi i32 [ %i.u, %.preheader.us.preheader ], [ %i.az, %middle.block102 ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ba = icmp sgt i32 %1, 0
  br i1 %i.ba, label %.preheader.us49.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre66 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us49.preheader:                        ; preds = %.lr.ph.split
  %i.bb = zext nneg i32 %1 to i64                 ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %i.bb, 2147483640              ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = icmp eq i64 %n.vec, 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  br label %.preheader.us49

.preheader.us49:                                  ; preds = %.preheader.us49.preheader, %_Z9check_sumIiEvT_.exit.us48
  %i.bg = phi i32 [ %i.bz, %_Z9check_sumIiEvT_.exit.us48 ], [ %i.b, %.preheader.us49.preheader ]
  %.01642.us43 = phi i32 [ %i.ca, %_Z9check_sumIiEvT_.exit.us48 ], [ 0, %.preheader.us49.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us49
  %wide.load = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %wide.load89 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !4
  %i.bh = mul <4 x i32> %wide.load, splat (i32 269850533) ; 2 uses
  %i.bi = mul <4 x i32> %wide.load89, splat (i32 269850533) ; 2 uses
  %i.bj = add <4 x i32> %i.bh, splat (i32 -1138325064)
  %i.bk = add <4 x i32> %i.bi, splat (i32 -1138325064)
  br i1 %i.bd, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %wide.load.1 = load <4 x i32>, ptr %i.be, align 4, !tbaa !4
  %wide.load89.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.bl = mul <4 x i32> %wide.load.1, splat (i32 269850533)
  %i.bm = mul <4 x i32> %wide.load89.1, splat (i32 269850533)
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
  br i1 %cmp.n, label %.loopexit.us50, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us49, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us49 ], [ %n.vec, %middle.block ]
  %.222.us44.ph = phi i32 [ 0, %.preheader.us49 ], [ %i.br, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.222.us44 = phi i32 [ %i.bw, %scalar.ph ], [ %.222.us44.ph, %scalar.ph.preheader ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = mul i32 %i.bt, 269850533
  %i.bv = add i32 %.222.us44, -1138325064
  %i.bw = add i32 %i.bv, %i.bu                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.us46 = icmp eq i64 %indvars.iv.next, %i.bb
  br i1 %.not.us46, label %.loopexit.us50, label %scalar.ph, !llvm.loop !574

bb.d:                                             ; preds = %.loopexit.us50
  %i.bx = load i32, ptr @current_test, align 4, !tbaa !4
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bx) ; 0 uses
  %.pre68 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us48

_Z9check_sumIiEvT_.exit.us48:                     ; preds = %bb.d, %.loopexit.us50
  %i.bz = phi i32 [ %.pre68, %bb.d ], [ %i.bg, %.loopexit.us50 ] ; 2 uses
  %i.ca = add nuw nsw i32 %.01642.us43, 1         ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %i.bz
  br i1 %i.cb, label %.preheader.us49, label %._crit_edge, !llvm.loop !572

.loopexit.us50:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa87 = phi i32 [ %i.br, %middle.block ], [ %i.bw, %scalar.ph ]
  %i.cc = load double, ptr @init_value, align 8, !tbaa !32
  %i.cd = fptosi double %i.cc to i32
  %i.ce = mul i32 %i.cd, -1564285888
  %i.cf = add i32 %i.ce, -1269844480
  %i.cg = icmp eq i32 %.lcssa87, %i.cf
  br i1 %i.cg, label %_Z9check_sumIiEvT_.exit.us48, label %bb.d

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.ch = phi i32 [ %i.co, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.ci = phi double [ %i.cp, %_Z9check_sumIiEvT_.exit ], [ %.pre66, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01642 = phi i32 [ %i.cq, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.cj = fptosi double %i.ci to i32
  %i.ck = mul i32 %i.cj, -1564285888
  %i.cl = icmp eq i32 %i.ck, 1269844480
  br i1 %i.cl, label %_Z9check_sumIiEvT_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split
  %i.cm = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cm) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre67 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.e
  %i.co = phi i32 [ %i.ch, %.lr.ph.split.split ], [ %.pre67, %bb.e ] ; 2 uses
  %i.cp = phi double [ %i.ci, %.lr.ph.split.split ], [ %.pre, %bb.e ]
  %i.cq = add nuw nsw i32 %.01642, 1              ; 2 uses
  %i.cr = icmp slt i32 %i.cq, %i.co
  br i1 %i.cr, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !572

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us48, %_Z9check_sumIiEvT_.exit.us, %bb.a
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

bb.f:                                             ; preds = %._crit_edge
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

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.de = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cw, %._crit_edge ] ; 2 uses
  %i.df = phi ptr [ %i.da, %._crit_edge.i ], [ %i.cu, %._crit_edge ]
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
define linkonce_odr dso_local void @_Z28test_goto_loop_unroll_factorILi16EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 15
  br i1 %i.d, label %.preheader37.us.preheader, label %.lr.ph.split

.preheader37.us.preheader:                        ; preds = %.lr.ph
  %i.e = add nsw i32 %1, -15
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -16                      ; 2 uses
  %i.h = and i32 %i.g, 2147483632
  %narrow = add nuw nsw i32 %i.h, 16
  %3 = and i32 %i.g, -16
  %i.i = add i32 %3, 16
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = zext nneg i32 %1 to i64                  ; 3 uses
  %i.l = icmp slt i32 %narrow, %1
  %i.m = sub nsw i64 %i.k, %i.j                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  %n.mod.vf = and i64 %i.k, 7                     ; 2 uses
  %n.vec = sub nuw nsw i64 %i.m, %n.mod.vf        ; 2 uses
  %i.n = add nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br label %.preheader37.us

.preheader37.us:                                  ; preds = %.preheader37.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.o = phi i32 [ %i.ah, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader37.us.preheader ]
  %.01641.us = phi i32 [ %i.ai, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader37.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader37.us, %bb.b
  %indvars.iv57 = phi i64 [ 0, %.preheader37.us ], [ %indvars.iv.next58, %bb.b ] ; 2 uses
  %.020.us = phi i32 [ 0, %.preheader37.us ], [ %i.t, %bb.b ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv57
  %i.q = load <16 x i32>, ptr %i.p, align 4, !tbaa !4
  %i.r = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.q)
  %reass.mul.us = mul i32 %i.r, 269850533
  %i.s = add i32 %.020.us, -1033331840
  %i.t = add i32 %i.s, %reass.mul.us              ; 4 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 16 ; 2 uses
  %i.u = icmp samesign ult i64 %indvars.iv.next58, %i.f
  br i1 %i.u, label %bb.b, label %.loopexit38.us

.preheader.us:                                    ; preds = %.preheader.us.preheader87, %.preheader.us
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %.preheader.us ], [ %indvars.iv60.ph, %.preheader.us.preheader87 ] ; 2 uses
  %.222.us = phi i32 [ %i.z, %.preheader.us ], [ %.222.us.ph, %.preheader.us.preheader87 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = mul i32 %i.w, 269850533
  %i.y = add i32 %.222.us, -1138325064
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next61, %i.k
  br i1 %.not.us, label %.loopexit.us, label %.preheader.us, !llvm.loop !575

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.loopexit38.us
  %.3.us = phi i32 [ %i.t, %.loopexit38.us ], [ %i.at, %middle.block ], [ %i.z, %.preheader.us ]
  %i.aa = load double, ptr @init_value, align 8, !tbaa !32
  %i.ab = fptosi double %i.aa to i32
  %i.ac = mul i32 %i.ab, -1564285888
  %i.ad = add i32 %i.ac, -1269844480
  %i.ae = icmp eq i32 %.3.us, %i.ad
  br i1 %i.ae, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.af) ; 0 uses
  %.pre66 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %.loopexit.us
  %i.ah = phi i32 [ %.pre66, %bb.c ], [ %i.o, %.loopexit.us ] ; 2 uses
  %i.ai = add nuw nsw i32 %.01641.us, 1           ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.preheader37.us, label %._crit_edge, !llvm.loop !576

.loopexit38.us:                                   ; preds = %bb.b
  br i1 %i.l, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit38.us
  br i1 %min.iters.check, label %.preheader.us.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.t, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ak, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi85 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load86 = load <4 x i32>, ptr %i.al, align 4, !tbaa !4
  %i.am = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.an = mul <4 x i32> %wide.load86, splat (i32 269850533)
  %i.ao = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.ap = add <4 x i32> %vec.phi85, splat (i32 -1138325064)
  %i.aq = add <4 x i32> %i.ao, %i.am              ; 2 uses
  %i.ar = add <4 x i32> %i.ap, %i.an              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !577

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader87

.preheader.us.preheader87:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv60.ph = phi i64 [ %i.j, %.preheader.us.preheader ], [ %i.n, %middle.block ]
  %.222.us.ph = phi i32 [ %i.t, %.preheader.us.preheader ], [ %i.at, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.au = icmp sgt i32 %1, 0
  br i1 %i.au, label %.preheader.us48.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre63 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us48.preheader:                        ; preds = %.lr.ph.split
  %i.av = zext nneg i32 %1 to i64                 ; 2 uses
  %xtraiter = and i64 %i.av, 3                    ; 3 uses
  %i.aw = icmp ult i32 %1, 4
  %unroll_iter = and i64 %i.av, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us48

.preheader.us48:                                  ; preds = %.preheader.us48.preheader, %_Z9check_sumIiEvT_.exit.us47
  %i.ax = phi i32 [ %i.bx, %_Z9check_sumIiEvT_.exit.us47 ], [ %i.b, %.preheader.us48.preheader ]
  %.01641.us42 = phi i32 [ %i.by, %_Z9check_sumIiEvT_.exit.us47 ], [ 0, %.preheader.us48.preheader ]
  br i1 %i.aw, label %.epil.preheader, label %.preheader.us48.new

.preheader.us48.new:                              ; preds = %.preheader.us48, %.preheader.us48.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us48.new ], [ 0, %.preheader.us48 ] ; 5 uses
  %.222.us43 = phi i32 [ %i.bu, %.preheader.us48.new ], [ 0, %.preheader.us48 ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us48.new ], [ 0, %.preheader.us48 ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = mul i32 %i.az, 269850533
  %i.bb = add i32 %.222.us43, -1138325064
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = mul i32 %i.bf, 269850533
  %i.bh = add i32 %i.bc, -1138325064
  %i.bi = add i32 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = mul i32 %i.bl, 269850533
  %i.bn = add i32 %i.bi, -1138325064
  %i.bo = add i32 %i.bn, %i.bm
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = mul i32 %i.br, 269850533
  %i.bt = add i32 %i.bo, -1138325064
  %i.bu = add i32 %i.bt, %i.bs                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.us49.unr-lcssa, label %.preheader.us48.new

bb.d:                                             ; preds = %.loopexit.us49
  %i.bv = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bv) ; 0 uses
  %.pre65 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us47

_Z9check_sumIiEvT_.exit.us47:                     ; preds = %bb.d, %.loopexit.us49
  %i.bx = phi i32 [ %.pre65, %bb.d ], [ %i.ax, %.loopexit.us49 ] ; 2 uses
  %i.by = add nuw nsw i32 %.01641.us42, 1         ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bx
  br i1 %i.bz, label %.preheader.us48, label %._crit_edge, !llvm.loop !576

.loopexit.us49.unr-lcssa:                         ; preds = %.preheader.us48.new
  br i1 %lcmp.mod.not, label %.loopexit.us49, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.us49.unr-lcssa, %.preheader.us48
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us48 ], [ %indvars.iv.next.3, %.loopexit.us49.unr-lcssa ]
  %.222.us43.epil.init = phi i32 [ 0, %.preheader.us48 ], [ %i.bu, %.loopexit.us49.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %.222.us43.epil = phi i32 [ %.222.us43.epil.init, %.epil.preheader ], [ %i.ce, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = mul i32 %i.cb, 269850533
  %i.cd = add i32 %.222.us43.epil, -1138325064
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.us49, label %bb.e, !llvm.loop !578

.loopexit.us49:                                   ; preds = %bb.e, %.loopexit.us49.unr-lcssa
  %.lcssa92 = phi i32 [ %i.bu, %.loopexit.us49.unr-lcssa ], [ %i.ce, %bb.e ]
  %i.cf = load double, ptr @init_value, align 8, !tbaa !32
  %i.cg = fptosi double %i.cf to i32
  %i.ch = mul i32 %i.cg, -1564285888
  %i.ci = add i32 %i.ch, -1269844480
  %i.cj = icmp eq i32 %.lcssa92, %i.ci
  br i1 %i.cj, label %_Z9check_sumIiEvT_.exit.us47, label %bb.d

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.ck = phi i32 [ %i.cr, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.cl = phi double [ %i.cs, %_Z9check_sumIiEvT_.exit ], [ %.pre63, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01641 = phi i32 [ %i.ct, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
end_hunk_16
begin_hunk_17_@_Z28test_goto_loop_unroll_factorILi9EiEvPKT0_iPKc:bb.a
  %bin.rdx = add <4 x i32> %i.ax, %i.aw
  %i.az = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader82

.preheader.us.preheader82:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv55.ph = phi i64 [ %indvars.iv53, %.preheader.us.preheader ], [ %i.an, %middle.block ]
  %.222.us.ph = phi i32 [ %i.u, %.preheader.us.preheader ], [ %i.az, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ba = icmp sgt i32 %1, 0
  br i1 %i.ba, label %.preheader.us41.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre58 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us41.preheader:                        ; preds = %.lr.ph.split
  %.not.us38 = icmp eq i32 %1, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not.us38.1 = icmp eq i32 %1, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.us38.2 = icmp eq i32 %1, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.us38.3 = icmp eq i32 %1, 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.us38.4 = icmp eq i32 %1, 5
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.not.us38.5 = icmp eq i32 %1, 6
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not.us38.6 = icmp eq i32 %1, 7
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.preheader.us41

.preheader.us41:                                  ; preds = %.preheader.us41.preheader, %_Z9check_sumIiEvT_.exit.us40
  %i.bi = phi i32 [ %i.cq, %_Z9check_sumIiEvT_.exit.us40 ], [ %i.b, %.preheader.us41.preheader ]
  %.01634.us35 = phi i32 [ %i.cr, %_Z9check_sumIiEvT_.exit.us40 ], [ 0, %.preheader.us41.preheader ]
  %i.bj = load i32, ptr %0, align 4, !tbaa !4
  %i.bk = mul i32 %i.bj, 269850533                ; 2 uses
  %i.bl = add i32 %i.bk, -1138325064
  br i1 %.not.us38, label %.loopexit.us42, label %bb.d

bb.d:                                             ; preds = %.preheader.us41
  %i.bm = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bn = mul i32 %i.bm, 269850533
  %i.bo = add i32 %i.bk, 2018317168
  %i.bp = add i32 %i.bo, %i.bn                    ; 2 uses
  br i1 %.not.us38.1, label %.loopexit.us42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.br = mul i32 %i.bq, 269850533
  %i.bs = add i32 %i.bp, -1138325064
  %i.bt = add i32 %i.bs, %i.br                    ; 2 uses
  br i1 %.not.us38.2, label %.loopexit.us42, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bv = mul i32 %i.bu, 269850533
  %i.bw = add i32 %i.bt, -1138325064
  %i.bx = add i32 %i.bw, %i.bv                    ; 2 uses
  br i1 %.not.us38.3, label %.loopexit.us42, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bz = mul i32 %i.by, 269850533
  %i.ca = add i32 %i.bx, -1138325064
  %i.cb = add i32 %i.ca, %i.bz                    ; 2 uses
  br i1 %.not.us38.4, label %.loopexit.us42, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.cd = mul i32 %i.cc, 269850533
  %i.ce = add i32 %i.cb, -1138325064
  %i.cf = add i32 %i.ce, %i.cd                    ; 2 uses
  br i1 %.not.us38.5, label %.loopexit.us42, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.ch = mul i32 %i.cg, 269850533
  %i.ci = add i32 %i.cf, -1138325064
  %i.cj = add i32 %i.ci, %i.ch                    ; 2 uses
  br i1 %.not.us38.6, label %.loopexit.us42, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.cl = mul i32 %i.ck, 269850533
  %i.cm = add i32 %i.cj, -1138325064
  %i.cn = add i32 %i.cm, %i.cl
  br label %.loopexit.us42

bb.k:                                             ; preds = %.loopexit.us42
  %i.co = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.co) ; 0 uses
  %.pre60 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us40

_Z9check_sumIiEvT_.exit.us40:                     ; preds = %bb.k, %.loopexit.us42
  %i.cq = phi i32 [ %.pre60, %bb.k ], [ %i.bi, %.loopexit.us42 ] ; 2 uses
  %i.cr = add nuw nsw i32 %.01634.us35, 1         ; 2 uses
  %i.cs = icmp slt i32 %i.cr, %i.cq
  br i1 %i.cs, label %.preheader.us41, label %._crit_edge, !llvm.loop !604

.loopexit.us42:                                   ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.preheader.us41
  %.lcssa87 = phi i32 [ %i.bl, %.preheader.us41 ], [ %i.bp, %bb.d ], [ %i.bt, %bb.e ], [ %i.bx, %bb.f ], [ %i.cb, %bb.g ], [ %i.cf, %bb.h ], [ %i.cj, %bb.i ], [ %i.cn, %bb.j ]
  %i.ct = load double, ptr @init_value, align 8, !tbaa !32
  %i.cu = fptosi double %i.ct to i32
  %i.cv = mul i32 %i.cu, -1564285888
  %i.cw = add i32 %i.cv, -1269844480
  %i.cx = icmp eq i32 %.lcssa87, %i.cw
  br i1 %i.cx, label %_Z9check_sumIiEvT_.exit.us40, label %bb.k

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.cy = phi i32 [ %i.df, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.cz = phi double [ %i.dg, %_Z9check_sumIiEvT_.exit ], [ %.pre58, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01634 = phi i32 [ %i.dh, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.da = fptosi double %i.cz to i32
  %i.db = mul i32 %i.da, -1564285888
  %i.dc = icmp eq i32 %i.db, 1269844480
  br i1 %i.dc, label %_Z9check_sumIiEvT_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split
  %i.dd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.de = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.dd) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre59 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.l
  %i.df = phi i32 [ %i.cy, %.lr.ph.split.split ], [ %.pre59, %bb.l ] ; 2 uses
  %i.dg = phi double [ %i.cz, %.lr.ph.split.split ], [ %.pre, %bb.l ]
  %i.dh = add nuw nsw i32 %.01634, 1              ; 2 uses
  %i.di = icmp slt i32 %i.dh, %i.df
  br i1 %i.di, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !604

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us40, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.dj = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.dj, ptr @end_time, align 8, !tbaa !27
  %i.dk = load i64, ptr @start_time, align 8, !tbaa !27
  %i.dl = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.dm = icmp ne ptr %i.dl, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.dn = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.dn, %.pre.i
  %or.cond.i = select i1 %i.dm, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.do = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.do, ptr @allocated_results, align 4, !tbaa !4
  %i.dp = sext i32 %i.do to i64
  %i.dq = shl nsw i64 %i.dp, 4
  %i.dr = tail call ptr @realloc(ptr noundef %i.dl, i64 noundef %i.dq) #13 ; 3 uses
  store ptr %i.dr, ptr @results, align 8, !tbaa !8
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.n:                                             ; preds = %bb.m
  %i.dt = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.du = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.dt) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.dv = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.dn, %._crit_edge ] ; 2 uses
  %i.dw = phi ptr [ %i.dr, %._crit_edge.i ], [ %i.dl, %._crit_edge ]
  %i.dx = sub nsw i64 %i.dj, %i.dk
  %i.dy = sitofp i64 %i.dx to double
  %i.dz = fdiv double %i.dy, 1.000000e+06
  %i.ea = sext i32 %i.dv to i64
  %i.eb = getelementptr inbounds [16 x i8], ptr %i.dw, i64 %i.ea ; 2 uses
  store double %i.dz, ptr %i.eb, align 8, !tbaa !11
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %2, ptr %i.ec, align 8, !tbaa !15
  %i.ed = add nsw i32 %i.dv, 1
  store i32 %i.ed, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z28test_goto_loop_unroll_factorILi8EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 7
  br i1 %i.d, label %.preheader29.us.preheader, label %.lr.ph.split

.preheader29.us.preheader:                        ; preds = %.lr.ph
  %i.e = add nsw i32 %1, -7
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -8                       ; 2 uses
  %i.h = and i32 %i.g, 2147483640
  %narrow = add nuw nsw i32 %i.h, 8
  %3 = and i32 %i.g, -8
  %i.i = add i32 %3, 8
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = zext nneg i32 %1 to i64                  ; 3 uses
  %i.l = icmp slt i32 %narrow, %1
  %i.m = sub nsw i64 %i.k, %i.j                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  %n.mod.vf = and i64 %i.k, 7                     ; 2 uses
  %n.vec = sub nuw nsw i64 %i.m, %n.mod.vf        ; 2 uses
  %i.n = add nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br label %.preheader29.us

.preheader29.us:                                  ; preds = %.preheader29.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.o = phi i32 [ %i.ah, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader29.us.preheader ]
  %.01633.us = phi i32 [ %i.ai, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader29.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader29.us, %bb.b
  %indvars.iv49 = phi i64 [ 0, %.preheader29.us ], [ %indvars.iv.next50, %bb.b ] ; 2 uses
  %.020.us = phi i32 [ 0, %.preheader29.us ], [ %i.t, %bb.b ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv49
  %i.q = load <8 x i32>, ptr %i.p, align 4, !tbaa !4
  %i.r = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.q)
  %reass.mul.us = mul i32 %i.r, 269850533
  %i.s = add i32 %.020.us, -516665920
  %i.t = add i32 %i.s, %reass.mul.us              ; 4 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 8 ; 2 uses
  %i.u = icmp samesign ult i64 %indvars.iv.next50, %i.f
  br i1 %i.u, label %bb.b, label %.loopexit30.us

.preheader.us:                                    ; preds = %.preheader.us.preheader79, %.preheader.us
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %.preheader.us ], [ %indvars.iv52.ph, %.preheader.us.preheader79 ] ; 2 uses
  %.222.us = phi i32 [ %i.z, %.preheader.us ], [ %.222.us.ph, %.preheader.us.preheader79 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv52
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = mul i32 %i.w, 269850533
  %i.y = add i32 %.222.us, -1138325064
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next53, %i.k
  br i1 %.not.us, label %.loopexit.us, label %.preheader.us, !llvm.loop !606

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.loopexit30.us
  %.3.us = phi i32 [ %i.t, %.loopexit30.us ], [ %i.at, %middle.block ], [ %i.z, %.preheader.us ]
  %i.aa = load double, ptr @init_value, align 8, !tbaa !32
  %i.ab = fptosi double %i.aa to i32
  %i.ac = mul i32 %i.ab, -1564285888
  %i.ad = add i32 %i.ac, -1269844480
  %i.ae = icmp eq i32 %.3.us, %i.ad
  br i1 %i.ae, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.af) ; 0 uses
  %.pre58 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %.loopexit.us
  %i.ah = phi i32 [ %.pre58, %bb.c ], [ %i.o, %.loopexit.us ] ; 2 uses
  %i.ai = add nuw nsw i32 %.01633.us, 1           ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.preheader29.us, label %._crit_edge, !llvm.loop !607

.loopexit30.us:                                   ; preds = %bb.b
  br i1 %i.l, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit30.us
  br i1 %min.iters.check, label %.preheader.us.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.t, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ak, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi77 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load78 = load <4 x i32>, ptr %i.al, align 4, !tbaa !4
  %i.am = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.an = mul <4 x i32> %wide.load78, splat (i32 269850533)
  %i.ao = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.ap = add <4 x i32> %vec.phi77, splat (i32 -1138325064)
  %i.aq = add <4 x i32> %i.ao, %i.am              ; 2 uses
  %i.ar = add <4 x i32> %i.ap, %i.an              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !608

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader79

.preheader.us.preheader79:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv52.ph = phi i64 [ %i.j, %.preheader.us.preheader ], [ %i.n, %middle.block ]
  %.222.us.ph = phi i32 [ %i.t, %.preheader.us.preheader ], [ %i.at, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.au = icmp sgt i32 %1, 0
  br i1 %i.au, label %.preheader.us40.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre55 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us40.preheader:                        ; preds = %.lr.ph.split
  %.not.us37 = icmp eq i32 %1, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not.us37.1 = icmp eq i32 %1, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.us37.2 = icmp eq i32 %1, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.us37.3 = icmp eq i32 %1, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.us37.4 = icmp eq i32 %1, 5
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.not.us37.5 = icmp eq i32 %1, 6
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.preheader.us40

.preheader.us40:                                  ; preds = %.preheader.us40.preheader, %_Z9check_sumIiEvT_.exit.us39
  %i.bb = phi i32 [ %i.cf, %_Z9check_sumIiEvT_.exit.us39 ], [ %i.b, %.preheader.us40.preheader ]
  %.01633.us34 = phi i32 [ %i.cg, %_Z9check_sumIiEvT_.exit.us39 ], [ 0, %.preheader.us40.preheader ]
  %i.bc = load i32, ptr %0, align 4, !tbaa !4
  %i.bd = mul i32 %i.bc, 269850533                ; 2 uses
  %i.be = add i32 %i.bd, -1138325064
  br i1 %.not.us37, label %.loopexit.us41, label %bb.d

bb.d:                                             ; preds = %.preheader.us40
  %i.bf = load i32, ptr %i.av, align 4, !tbaa !4
  %i.bg = mul i32 %i.bf, 269850533
  %i.bh = add i32 %i.bd, 2018317168
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  br i1 %.not.us37.1, label %.loopexit.us41, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.bk = mul i32 %i.bj, 269850533
  %i.bl = add i32 %i.bi, -1138325064
  %i.bm = add i32 %i.bl, %i.bk                    ; 2 uses
  br i1 %.not.us37.2, label %.loopexit.us41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.bo = mul i32 %i.bn, 269850533
  %i.bp = add i32 %i.bm, -1138325064
  %i.bq = add i32 %i.bp, %i.bo                    ; 2 uses
  br i1 %.not.us37.3, label %.loopexit.us41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.bs = mul i32 %i.br, 269850533
  %i.bt = add i32 %i.bq, -1138325064
  %i.bu = add i32 %i.bt, %i.bs                    ; 2 uses
  br i1 %.not.us37.4, label %.loopexit.us41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bw = mul i32 %i.bv, 269850533
  %i.bx = add i32 %i.bu, -1138325064
  %i.by = add i32 %i.bx, %i.bw                    ; 2 uses
  br i1 %.not.us37.5, label %.loopexit.us41, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.ca = mul i32 %i.bz, 269850533
  %i.cb = add i32 %i.by, -1138325064
  %i.cc = add i32 %i.cb, %i.ca
  br label %.loopexit.us41

bb.j:                                             ; preds = %.loopexit.us41
  %i.cd = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cd) ; 0 uses
  %.pre57 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us39

_Z9check_sumIiEvT_.exit.us39:                     ; preds = %bb.j, %.loopexit.us41
  %i.cf = phi i32 [ %.pre57, %bb.j ], [ %i.bb, %.loopexit.us41 ] ; 2 uses
  %i.cg = add nuw nsw i32 %.01633.us34, 1         ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %i.cf
  br i1 %i.ch, label %.preheader.us40, label %._crit_edge, !llvm.loop !607

.loopexit.us41:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.preheader.us40
  %.lcssa84 = phi i32 [ %i.be, %.preheader.us40 ], [ %i.bi, %bb.d ], [ %i.bm, %bb.e ], [ %i.bq, %bb.f ], [ %i.bu, %bb.g ], [ %i.by, %bb.h ], [ %i.cc, %bb.i ]
  %i.ci = load double, ptr @init_value, align 8, !tbaa !32
  %i.cj = fptosi double %i.ci to i32
  %i.ck = mul i32 %i.cj, -1564285888
  %i.cl = add i32 %i.ck, -1269844480
  %i.cm = icmp eq i32 %.lcssa84, %i.cl
  br i1 %i.cm, label %_Z9check_sumIiEvT_.exit.us39, label %bb.j

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.cn = phi i32 [ %i.cu, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.co = phi double [ %i.cv, %_Z9check_sumIiEvT_.exit ], [ %.pre55, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01633 = phi i32 [ %i.cw, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.cp = fptosi double %i.co to i32
  %i.cq = mul i32 %i.cp, -1564285888
  %i.cr = icmp eq i32 %i.cq, 1269844480
  br i1 %i.cr, label %_Z9check_sumIiEvT_.exit, label %bb.k
end_hunk_17
begin_hunk_18_@_Z28test_goto_loop_unroll_factorILi5EiEvPKT0_iPKc:bb.a
  %i.ak = icmp slt i32 %i.aj, %i.ai
  br i1 %i.ak, label %.preheader26.us, label %._crit_edge, !llvm.loop !616

.loopexit27.us:                                   ; preds = %bb.b
  %i.al = trunc nuw nsw i64 %indvars.iv.next47 to i32
  %i.am = icmp sgt i32 %1, %i.al
  br i1 %i.am, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit27.us
  br i1 %min.iters.check, label %.preheader.us.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.an = add i64 %indvars.iv49, %n.vec
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.u, i64 0
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv49
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ao, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi76 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %wide.load77 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %i.as = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.at = mul <4 x i32> %wide.load77, splat (i32 269850533)
  %i.au = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.av = add <4 x i32> %vec.phi76, splat (i32 -1138325064)
  %i.aw = add <4 x i32> %i.au, %i.as              ; 2 uses
  %i.ax = add <4 x i32> %i.av, %i.at              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !617

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ax, %i.aw
  %i.az = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader78

.preheader.us.preheader78:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv51.ph = phi i64 [ %indvars.iv49, %.preheader.us.preheader ], [ %i.an, %middle.block ]
  %.222.us.ph = phi i32 [ %i.u, %.preheader.us.preheader ], [ %i.az, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ba = icmp sgt i32 %1, 0
  br i1 %i.ba, label %.preheader.us37.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre54 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us37.preheader:                        ; preds = %.lr.ph.split
  %.not.us34 = icmp eq i32 %1, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not.us34.1 = icmp eq i32 %1, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.us34.2 = icmp eq i32 %1, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %.preheader.us37

.preheader.us37:                                  ; preds = %.preheader.us37.preheader, %_Z9check_sumIiEvT_.exit.us36
  %i.be = phi i32 [ %i.bw, %_Z9check_sumIiEvT_.exit.us36 ], [ %i.b, %.preheader.us37.preheader ]
  %.01630.us31 = phi i32 [ %i.bx, %_Z9check_sumIiEvT_.exit.us36 ], [ 0, %.preheader.us37.preheader ]
  %i.bf = load i32, ptr %0, align 4, !tbaa !4
  %i.bg = mul i32 %i.bf, 269850533                ; 2 uses
  %i.bh = add i32 %i.bg, -1138325064
  br i1 %.not.us34, label %.loopexit.us38, label %bb.d

bb.d:                                             ; preds = %.preheader.us37
  %i.bi = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bj = mul i32 %i.bi, 269850533
  %i.bk = add i32 %i.bg, 2018317168
  %i.bl = add i32 %i.bk, %i.bj                    ; 2 uses
  br i1 %.not.us34.1, label %.loopexit.us38, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bn = mul i32 %i.bm, 269850533
  %i.bo = add i32 %i.bl, -1138325064
  %i.bp = add i32 %i.bo, %i.bn                    ; 2 uses
  br i1 %.not.us34.2, label %.loopexit.us38, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.br = mul i32 %i.bq, 269850533
  %i.bs = add i32 %i.bp, -1138325064
  %i.bt = add i32 %i.bs, %i.br
  br label %.loopexit.us38

bb.g:                                             ; preds = %.loopexit.us38
  %i.bu = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bu) ; 0 uses
  %.pre56 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us36

_Z9check_sumIiEvT_.exit.us36:                     ; preds = %bb.g, %.loopexit.us38
  %i.bw = phi i32 [ %.pre56, %bb.g ], [ %i.be, %.loopexit.us38 ] ; 2 uses
  %i.bx = add nuw nsw i32 %.01630.us31, 1         ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.bw
  br i1 %i.by, label %.preheader.us37, label %._crit_edge, !llvm.loop !616

.loopexit.us38:                                   ; preds = %bb.f, %bb.e, %bb.d, %.preheader.us37
  %.lcssa83 = phi i32 [ %i.bh, %.preheader.us37 ], [ %i.bl, %bb.d ], [ %i.bp, %bb.e ], [ %i.bt, %bb.f ]
  %i.bz = load double, ptr @init_value, align 8, !tbaa !32
  %i.ca = fptosi double %i.bz to i32
  %i.cb = mul i32 %i.ca, -1564285888
  %i.cc = add i32 %i.cb, -1269844480
  %i.cd = icmp eq i32 %.lcssa83, %i.cc
  br i1 %i.cd, label %_Z9check_sumIiEvT_.exit.us36, label %bb.g

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.ce = phi i32 [ %i.cl, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.cf = phi double [ %i.cm, %_Z9check_sumIiEvT_.exit ], [ %.pre54, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01630 = phi i32 [ %i.cn, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.cg = fptosi double %i.cf to i32
  %i.ch = mul i32 %i.cg, -1564285888
  %i.ci = icmp eq i32 %i.ch, 1269844480
  br i1 %i.ci, label %_Z9check_sumIiEvT_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split
  %i.cj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.cj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre55 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.h
  %i.cl = phi i32 [ %i.ce, %.lr.ph.split.split ], [ %.pre55, %bb.h ] ; 2 uses
  %i.cm = phi double [ %i.cf, %.lr.ph.split.split ], [ %.pre, %bb.h ]
  %i.cn = add nuw nsw i32 %.01630, 1              ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.cl
  br i1 %i.co, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !616

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us36, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cp = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cp, ptr @end_time, align 8, !tbaa !27
  %i.cq = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cr = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cs = icmp ne ptr %i.cr, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.ct = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ct, %.pre.i
  %or.cond.i = select i1 %i.cs, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.cu = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cu, ptr @allocated_results, align 4, !tbaa !4
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 4
  %i.cx = tail call ptr @realloc(ptr noundef %i.cr, i64 noundef %i.cw) #13 ; 3 uses
  store ptr %i.cx, ptr @results, align 8, !tbaa !8
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.j:                                             ; preds = %bb.i
  %i.cz = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.da = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.cz) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.db = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ct, %._crit_edge ] ; 2 uses
  %i.dc = phi ptr [ %i.cx, %._crit_edge.i ], [ %i.cr, %._crit_edge ]
  %i.dd = sub nsw i64 %i.cp, %i.cq
  %i.de = sitofp i64 %i.dd to double
  %i.df = fdiv double %i.de, 1.000000e+06
  %i.dg = sext i32 %i.db to i64
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.dc, i64 %i.dg ; 2 uses
  store double %i.df, ptr %i.dh, align 8, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %2, ptr %i.di, align 8, !tbaa !15
  %i.dj = add nsw i32 %i.db, 1
  store i32 %i.dj, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z28test_goto_loop_unroll_factorILi4EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 3
  br i1 %i.d, label %.preheader25.us.preheader, label %.lr.ph.split

.preheader25.us.preheader:                        ; preds = %.lr.ph
  %i.e = add nsw i32 %1, -3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %1, -4                       ; 2 uses
  %i.h = and i32 %i.g, 2147483644
  %narrow = add nuw nsw i32 %i.h, 4
  %3 = and i32 %i.g, -4
  %i.i = add i32 %3, 4
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  %i.l = icmp slt i32 %narrow, %1
  %i.m = sub nsw i64 %i.k, %i.j                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  %n.vec = and i64 %i.m, -8                       ; 3 uses
  %i.n = add nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br label %.preheader25.us

.preheader25.us:                                  ; preds = %.preheader25.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.o = phi i32 [ %i.ah, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader25.us.preheader ]
  %.01629.us = phi i32 [ %i.ai, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader25.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader25.us, %bb.b
  %indvars.iv45 = phi i64 [ 0, %.preheader25.us ], [ %indvars.iv.next46, %bb.b ] ; 2 uses
  %.020.us = phi i32 [ 0, %.preheader25.us ], [ %i.t, %bb.b ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv45
  %i.q = load <4 x i32>, ptr %i.p, align 4, !tbaa !4
  %i.r = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.q)
  %reass.mul.us = mul i32 %i.r, 269850533
  %i.s = add i32 %.020.us, -258332960
  %i.t = add i32 %i.s, %reass.mul.us              ; 4 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 4 ; 2 uses
  %i.u = icmp samesign ult i64 %indvars.iv.next46, %i.f
  br i1 %i.u, label %bb.b, label %.loopexit26.us

.preheader.us:                                    ; preds = %.preheader.us.preheader75, %.preheader.us
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.preheader.us ], [ %indvars.iv48.ph, %.preheader.us.preheader75 ] ; 2 uses
  %.222.us = phi i32 [ %i.z, %.preheader.us ], [ %.222.us.ph, %.preheader.us.preheader75 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv48
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = mul i32 %i.w, 269850533
  %i.y = add i32 %.222.us, -1138325064
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next49, %i.k
  br i1 %.not.us, label %.loopexit.us, label %.preheader.us, !llvm.loop !618

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.loopexit26.us
  %.3.us = phi i32 [ %i.t, %.loopexit26.us ], [ %i.at, %middle.block ], [ %i.z, %.preheader.us ]
  %i.aa = load double, ptr @init_value, align 8, !tbaa !32
  %i.ab = fptosi double %i.aa to i32
  %i.ac = mul i32 %i.ab, -1564285888
  %i.ad = add i32 %i.ac, -1269844480
  %i.ae = icmp eq i32 %.3.us, %i.ad
  br i1 %i.ae, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.af) ; 0 uses
  %.pre54 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %.loopexit.us
  %i.ah = phi i32 [ %.pre54, %bb.c ], [ %i.o, %.loopexit.us ] ; 2 uses
  %i.ai = add nuw nsw i32 %.01629.us, 1           ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.preheader25.us, label %._crit_edge, !llvm.loop !619

.loopexit26.us:                                   ; preds = %bb.b
  br i1 %i.l, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit26.us
  br i1 %min.iters.check, label %.preheader.us.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.t, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ak, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi73 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load74 = load <4 x i32>, ptr %i.al, align 4, !tbaa !4
  %i.am = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.an = mul <4 x i32> %wide.load74, splat (i32 269850533)
  %i.ao = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.ap = add <4 x i32> %vec.phi73, splat (i32 -1138325064)
  %i.aq = add <4 x i32> %i.ao, %i.am              ; 2 uses
  %i.ar = add <4 x i32> %i.ap, %i.an              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !620

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader75

.preheader.us.preheader75:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv48.ph = phi i64 [ %i.j, %.preheader.us.preheader ], [ %i.n, %middle.block ]
  %.222.us.ph = phi i32 [ %i.t, %.preheader.us.preheader ], [ %i.at, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.au = icmp sgt i32 %1, 0
  br i1 %i.au, label %.preheader.us36.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre51 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us36.preheader:                        ; preds = %.lr.ph.split
  %.not.us33 = icmp eq i32 %1, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not.us33.1 = icmp eq i32 %1, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader.us36

.preheader.us36:                                  ; preds = %.preheader.us36.preheader, %_Z9check_sumIiEvT_.exit.us35
  %i.ax = phi i32 [ %i.bl, %_Z9check_sumIiEvT_.exit.us35 ], [ %i.b, %.preheader.us36.preheader ]
  %.01629.us30 = phi i32 [ %i.bm, %_Z9check_sumIiEvT_.exit.us35 ], [ 0, %.preheader.us36.preheader ]
  %i.ay = load i32, ptr %0, align 4, !tbaa !4
  %i.az = mul i32 %i.ay, 269850533                ; 2 uses
  %i.ba = add i32 %i.az, -1138325064
  br i1 %.not.us33, label %.loopexit.us37, label %bb.d

bb.d:                                             ; preds = %.preheader.us36
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !4
  %i.bc = mul i32 %i.bb, 269850533
  %i.bd = add i32 %i.az, 2018317168
  %i.be = add i32 %i.bd, %i.bc                    ; 2 uses
  br i1 %.not.us33.1, label %.loopexit.us37, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.bg = mul i32 %i.bf, 269850533
  %i.bh = add i32 %i.be, -1138325064
  %i.bi = add i32 %i.bh, %i.bg
  br label %.loopexit.us37

bb.f:                                             ; preds = %.loopexit.us37
  %i.bj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bj) ; 0 uses
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us35

_Z9check_sumIiEvT_.exit.us35:                     ; preds = %bb.f, %.loopexit.us37
  %i.bl = phi i32 [ %.pre53, %bb.f ], [ %i.ax, %.loopexit.us37 ] ; 2 uses
  %i.bm = add nuw nsw i32 %.01629.us30, 1         ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %.preheader.us36, label %._crit_edge, !llvm.loop !619

.loopexit.us37:                                   ; preds = %bb.e, %bb.d, %.preheader.us36
  %.lcssa80 = phi i32 [ %i.ba, %.preheader.us36 ], [ %i.be, %bb.d ], [ %i.bi, %bb.e ]
  %i.bo = load double, ptr @init_value, align 8, !tbaa !32
  %i.bp = fptosi double %i.bo to i32
  %i.bq = mul i32 %i.bp, -1564285888
  %i.br = add i32 %i.bq, -1269844480
  %i.bs = icmp eq i32 %.lcssa80, %i.br
  br i1 %i.bs, label %_Z9check_sumIiEvT_.exit.us35, label %bb.f

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.bt = phi i32 [ %i.ca, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.bu = phi double [ %i.cb, %_Z9check_sumIiEvT_.exit ], [ %.pre51, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01629 = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.bv = fptosi double %i.bu to i32
  %i.bw = mul i32 %i.bv, -1564285888
  %i.bx = icmp eq i32 %i.bw, 1269844480
  br i1 %i.bx, label %_Z9check_sumIiEvT_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split
  %i.by = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.by) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.g
  %i.ca = phi i32 [ %i.bt, %.lr.ph.split.split ], [ %.pre52, %bb.g ] ; 2 uses
  %i.cb = phi double [ %i.bu, %.lr.ph.split.split ], [ %.pre, %bb.g ]
  %i.cc = add nuw nsw i32 %.01629, 1              ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.ca
  br i1 %i.cd, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !619

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us35, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ce = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ce, ptr @end_time, align 8, !tbaa !27
  %i.cf = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cg = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.ch = icmp ne ptr %i.cg, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.ci = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ci, %.pre.i
  %or.cond.i = select i1 %i.ch, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.cj = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cj, ptr @allocated_results, align 4, !tbaa !4
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 4
  %i.cm = tail call ptr @realloc(ptr noundef %i.cg, i64 noundef %i.cl) #13 ; 3 uses
  store ptr %i.cm, ptr @results, align 8, !tbaa !8
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.i, label %._crit_edge.i

end_hunk_18
begin_hunk_19_@_Z28test_goto_loop_unroll_factorILi3EiEvPKT0_iPKc:bb.a
.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.loopexit25.us
  %.3.us = phi i32 [ %i.v, %.loopexit25.us ], [ %i.ba, %middle.block ], [ %i.ab, %.preheader.us ]
  %i.ac = load double, ptr @init_value, align 8, !tbaa !32
  %i.ad = fptosi double %i.ac to i32
  %i.ae = mul i32 %i.ad, -1564285888
  %i.af = add i32 %i.ae, -1269844480
  %i.ag = icmp eq i32 %.3.us, %i.af
  br i1 %i.ag, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.ah = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ah) ; 0 uses
  %.pre55 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %.loopexit.us
  %i.aj = phi i32 [ %.pre55, %bb.c ], [ %i.n, %.loopexit.us ] ; 2 uses
  %i.ak = add nuw nsw i32 %.01628.us, 1           ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.aj
  br i1 %i.al, label %.preheader24.us, label %._crit_edge, !llvm.loop !622

.loopexit25.us:                                   ; preds = %bb.b
  %i.am = trunc nuw nsw i64 %indvars.iv.next45 to i32
  %i.an = icmp sgt i32 %1, %i.am
  br i1 %i.an, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit25.us
  br i1 %min.iters.check, label %.preheader.us.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.ao = add i64 %indvars.iv47, %n.vec
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.v, i64 0
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv47
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %wide.load75 = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %i.at = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.au = mul <4 x i32> %wide.load75, splat (i32 269850533)
  %i.av = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.aw = add <4 x i32> %vec.phi74, splat (i32 -1138325064)
  %i.ax = add <4 x i32> %i.av, %i.at              ; 2 uses
  %i.ay = add <4 x i32> %i.aw, %i.au              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !623

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader76

.preheader.us.preheader76:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv49.ph = phi i64 [ %indvars.iv47, %.preheader.us.preheader ], [ %i.ao, %middle.block ]
  %.222.us.ph = phi i32 [ %i.v, %.preheader.us.preheader ], [ %i.ba, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bb = icmp sgt i32 %1, 0
  br i1 %i.bb, label %.preheader.us35.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre52 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us35.preheader:                        ; preds = %.lr.ph.split
  %.not.us32 = icmp eq i32 %1, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader.us35

.preheader.us35:                                  ; preds = %.preheader.us35.preheader, %_Z9check_sumIiEvT_.exit.us34
  %i.bd = phi i32 [ %i.bn, %_Z9check_sumIiEvT_.exit.us34 ], [ %i.b, %.preheader.us35.preheader ]
  %.01628.us29 = phi i32 [ %i.bo, %_Z9check_sumIiEvT_.exit.us34 ], [ 0, %.preheader.us35.preheader ]
  %i.be = load i32, ptr %0, align 4, !tbaa !4
  %i.bf = mul i32 %i.be, 269850533                ; 2 uses
  %i.bg = add i32 %i.bf, -1138325064
  br i1 %.not.us32, label %.loopexit.us36, label %bb.d

bb.d:                                             ; preds = %.preheader.us35
  %i.bh = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bi = mul i32 %i.bh, 269850533
  %i.bj = add i32 %i.bf, 2018317168
  %i.bk = add i32 %i.bj, %i.bi
  br label %.loopexit.us36

bb.e:                                             ; preds = %.loopexit.us36
  %i.bl = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bl) ; 0 uses
  %.pre54 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us34

_Z9check_sumIiEvT_.exit.us34:                     ; preds = %bb.e, %.loopexit.us36
  %i.bn = phi i32 [ %.pre54, %bb.e ], [ %i.bd, %.loopexit.us36 ] ; 2 uses
  %i.bo = add nuw nsw i32 %.01628.us29, 1         ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %i.bn
  br i1 %i.bp, label %.preheader.us35, label %._crit_edge, !llvm.loop !622

.loopexit.us36:                                   ; preds = %bb.d, %.preheader.us35
  %.lcssa81 = phi i32 [ %i.bg, %.preheader.us35 ], [ %i.bk, %bb.d ]
  %i.bq = load double, ptr @init_value, align 8, !tbaa !32
  %i.br = fptosi double %i.bq to i32
  %i.bs = mul i32 %i.br, -1564285888
  %i.bt = add i32 %i.bs, -1269844480
  %i.bu = icmp eq i32 %.lcssa81, %i.bt
  br i1 %i.bu, label %_Z9check_sumIiEvT_.exit.us34, label %bb.e

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.bv = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.bw = phi double [ %i.cd, %_Z9check_sumIiEvT_.exit ], [ %.pre52, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01628 = phi i32 [ %i.ce, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.bx = fptosi double %i.bw to i32
  %i.by = mul i32 %i.bx, -1564285888
  %i.bz = icmp eq i32 %i.by, 1269844480
  br i1 %i.bz, label %_Z9check_sumIiEvT_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split
  %i.ca = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ca) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.f
  %i.cc = phi i32 [ %i.bv, %.lr.ph.split.split ], [ %.pre53, %bb.f ] ; 2 uses
  %i.cd = phi double [ %i.bw, %.lr.ph.split.split ], [ %.pre, %bb.f ]
  %i.ce = add nuw nsw i32 %.01628, 1              ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %i.cc
  br i1 %i.cf, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !622

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us34, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cg = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cg, ptr @end_time, align 8, !tbaa !27
  %i.ch = load i64, ptr @start_time, align 8, !tbaa !27
  %i.ci = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cj = icmp ne ptr %i.ci, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.ck = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ck, %.pre.i
  %or.cond.i = select i1 %i.cj, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.cl = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cl, ptr @allocated_results, align 4, !tbaa !4
  %i.cm = sext i32 %i.cl to i64
  %i.cn = shl nsw i64 %i.cm, 4
  %i.co = tail call ptr @realloc(ptr noundef %i.ci, i64 noundef %i.cn) #13 ; 3 uses
  store ptr %i.co, ptr @results, align 8, !tbaa !8
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.h:                                             ; preds = %bb.g
  %i.cq = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.cr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.cq) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.cs = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ck, %._crit_edge ] ; 2 uses
  %i.ct = phi ptr [ %i.co, %._crit_edge.i ], [ %i.ci, %._crit_edge ]
  %i.cu = sub nsw i64 %i.cg, %i.ch
  %i.cv = sitofp i64 %i.cu to double
  %i.cw = fdiv double %i.cv, 1.000000e+06
  %i.cx = sext i32 %i.cs to i64
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.ct, i64 %i.cx ; 2 uses
  store double %i.cw, ptr %i.cy, align 8, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %2, ptr %i.cz, align 8, !tbaa !15
  %i.da = add nsw i32 %i.cs, 1
  store i32 %i.da, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z28test_goto_loop_unroll_factorILi2EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.preheader23.us.preheader, label %.lr.ph.split

.preheader23.us.preheader:                        ; preds = %.lr.ph
  %i.e = add nsw i32 %1, -1
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = add nsw i32 %1, -2                       ; 2 uses
  %i.h = and i32 %i.g, 2147483646
  %narrow = add nuw nsw i32 %i.h, 2
  %3 = and i32 %i.g, -2
  %i.i = add i32 %3, 2
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  %i.l = icmp slt i32 %narrow, %1
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check72 = icmp ult i32 %1, 16
  %n.vec75 = and i64 %i.p, 9223372036854775800    ; 3 uses
  %i.q = shl nuw i64 %n.vec75, 1
  %cmp.n87 = icmp eq i64 %i.p, %n.vec75
  %i.r = sub nsw i64 %i.k, %i.j                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br label %.preheader23.us

.preheader23.us:                                  ; preds = %.preheader23.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.t = phi i32 [ %i.bb, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader23.us.preheader ]
  %.01627.us = phi i32 [ %i.bc, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader23.us.preheader ]
  br i1 %min.iters.check72, label %scalar.ph71.preheader, label %vector.body76

vector.body76:                                    ; preds = %.preheader23.us, %vector.body76
  %index77 = phi i64 [ %index.next84, %vector.body76 ], [ 0, %.preheader23.us ] ; 2 uses
  %vec.phi78 = phi <4 x i32> [ %i.ae, %vector.body76 ], [ zeroinitializer, %.preheader23.us ]
  %vec.phi79 = phi <4 x i32> [ %i.af, %vector.body76 ], [ zeroinitializer, %.preheader23.us ]
  %i.u = shl nuw i64 %index77, 1                  ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %wide.vec = load <8 x i32>, ptr %i.v, align 4, !tbaa !4 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec80 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec81 = load <8 x i32>, ptr %i.x, align 4, !tbaa !4 ; 2 uses
  %strided.vec82 = shufflevector <8 x i32> %wide.vec81, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec83 = shufflevector <8 x i32> %wide.vec81, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.y = add <4 x i32> %strided.vec80, %strided.vec
  %i.z = add <4 x i32> %strided.vec83, %strided.vec82
  %i.aa = mul <4 x i32> %i.y, splat (i32 269850533)
  %i.ab = mul <4 x i32> %i.z, splat (i32 269850533)
  %i.ac = add <4 x i32> %vec.phi78, splat (i32 2018317168)
  %i.ad = add <4 x i32> %vec.phi79, splat (i32 2018317168)
  %i.ae = add <4 x i32> %i.ac, %i.aa              ; 2 uses
  %i.af = add <4 x i32> %i.ad, %i.ab              ; 2 uses
  %index.next84 = add nuw i64 %index77, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next84, %n.vec75
  br i1 %i.ag, label %middle.block85, label %vector.body76, !llvm.loop !624

middle.block85:                                   ; preds = %vector.body76
  %bin.rdx86 = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  br i1 %cmp.n87, label %.loopexit24.us, label %scalar.ph71.preheader

scalar.ph71.preheader:                            ; preds = %.preheader23.us, %middle.block85
  %indvars.iv.ph = phi i64 [ 0, %.preheader23.us ], [ %i.q, %middle.block85 ]
  %.020.us.ph = phi i32 [ 0, %.preheader23.us ], [ %i.ah, %middle.block85 ]
  br label %scalar.ph71

scalar.ph71:                                      ; preds = %scalar.ph71.preheader, %scalar.ph71
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph71 ], [ %indvars.iv.ph, %scalar.ph71.preheader ] ; 2 uses
  %.020.us = phi i32 [ %i.an, %scalar.ph71 ], [ %.020.us.ph, %scalar.ph71.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr i8, ptr %i.ai, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %reass.add.us = add i32 %i.al, %i.aj
  %reass.mul.us = mul i32 %reass.add.us, 269850533
  %i.am = add i32 %.020.us, 2018317168
  %i.an = add i32 %i.am, %reass.mul.us            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.ao, label %scalar.ph71, label %.loopexit24.us, !llvm.loop !625

.preheader.us:                                    ; preds = %.preheader.us.preheader90, %.preheader.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.preheader.us ], [ %indvars.iv44.ph, %.preheader.us.preheader90 ] ; 2 uses
  %.222.us = phi i32 [ %i.at, %.preheader.us ], [ %.222.us.ph, %.preheader.us.preheader90 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = mul i32 %i.aq, 269850533
  %i.as = add i32 %.222.us, -1138325064
  %i.at = add i32 %i.as, %i.ar                    ; 2 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next45, %i.k
  br i1 %.not.us, label %.loopexit.us, label %.preheader.us, !llvm.loop !626

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.loopexit24.us
  %.3.us = phi i32 [ %.lcssa, %.loopexit24.us ], [ %i.bn, %middle.block ], [ %i.at, %.preheader.us ]
  %i.au = load double, ptr @init_value, align 8, !tbaa !32
  %i.av = fptosi double %i.au to i32
  %i.aw = mul i32 %i.av, -1564285888
  %i.ax = add i32 %i.aw, -1269844480
  %i.ay = icmp eq i32 %.3.us, %i.ax
  br i1 %i.ay, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %.loopexit.us
  %i.az = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.az) ; 0 uses
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %.loopexit.us
  %i.bb = phi i32 [ %.pre52, %bb.b ], [ %i.t, %.loopexit.us ] ; 2 uses
  %i.bc = add nuw nsw i32 %.01627.us, 1           ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.bb
  br i1 %i.bd, label %.preheader23.us, label %._crit_edge, !llvm.loop !627

.loopexit24.us:                                   ; preds = %scalar.ph71, %middle.block85
  %.lcssa = phi i32 [ %i.ah, %middle.block85 ], [ %i.an, %scalar.ph71 ] ; 3 uses
  br i1 %i.l, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit24.us
  br i1 %min.iters.check, label %.preheader.us.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.be = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.be, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load70 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.bg = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.bh = mul <4 x i32> %wide.load70, splat (i32 269850533)
  %i.bi = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.bj = add <4 x i32> %vec.phi69, splat (i32 -1138325064)
  %i.bk = add <4 x i32> %i.bi, %i.bg              ; 2 uses
  %i.bl = add <4 x i32> %i.bj, %i.bh              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !628

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bl, %i.bk
  %i.bn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader90

.preheader.us.preheader90:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv44.ph = phi i64 [ %i.j, %.preheader.us.preheader ], [ %i.s, %middle.block ]
  %.222.us.ph = phi i32 [ %.lcssa, %.preheader.us.preheader ], [ %i.bn, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bo = icmp eq i32 %1, 1
  %.pre50 = load double, ptr @init_value, align 8, !tbaa !32 ; 2 uses
  br i1 %i.bo, label %.preheader.us34, label %.lr.ph.split.split

.preheader.us34:                                  ; preds = %.lr.ph.split, %_Z9check_sumIiEvT_.exit.us33
  %i.bp = phi i32 [ %i.bz, %_Z9check_sumIiEvT_.exit.us33 ], [ %i.b, %.lr.ph.split ]
  %i.bq = phi double [ %i.ca, %_Z9check_sumIiEvT_.exit.us33 ], [ %.pre50, %.lr.ph.split ] ; 2 uses
  %.01627.us28 = phi i32 [ %i.cb, %_Z9check_sumIiEvT_.exit.us33 ], [ 0, %.lr.ph.split ]
  %i.br = load i32, ptr %0, align 4, !tbaa !4
  %i.bs = mul i32 %i.br, 269850533
  %i.bt = fptosi double %i.bq to i32
  %i.bu = mul i32 %i.bt, -1564285888
  %i.bv = add i32 %i.bu, -131519416
  %i.bw = icmp eq i32 %i.bs, %i.bv
  br i1 %i.bw, label %_Z9check_sumIiEvT_.exit.us33, label %bb.c

bb.c:                                             ; preds = %.preheader.us34
  %i.bx = load i32, ptr @current_test, align 4, !tbaa !4
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bx) ; 0 uses
  %.pre49 = load double, ptr @init_value, align 8, !tbaa !32
  %.pre51 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us33

_Z9check_sumIiEvT_.exit.us33:                     ; preds = %bb.c, %.preheader.us34
  %i.bz = phi i32 [ %.pre51, %bb.c ], [ %i.bp, %.preheader.us34 ] ; 2 uses
  %i.ca = phi double [ %.pre49, %bb.c ], [ %i.bq, %.preheader.us34 ]
  %i.cb = add nuw nsw i32 %.01627.us28, 1         ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.bz
  br i1 %i.cc, label %.preheader.us34, label %._crit_edge, !llvm.loop !627

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_Z9check_sumIiEvT_.exit
  %i.cd = phi i32 [ %i.ck, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split ]
  %i.ce = phi double [ %i.cl, %_Z9check_sumIiEvT_.exit ], [ %.pre50, %.lr.ph.split ] ; 2 uses
  %.01627 = phi i32 [ %i.cm, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split ]
  %i.cf = fptosi double %i.ce to i32
  %i.cg = mul i32 %i.cf, -1564285888
  %i.ch = icmp eq i32 %i.cg, 1269844480
  br i1 %i.ch, label %_Z9check_sumIiEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split
  %i.ci = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ci) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre48 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.d
  %i.ck = phi i32 [ %i.cd, %.lr.ph.split.split ], [ %.pre48, %bb.d ] ; 2 uses
  %i.cl = phi double [ %i.ce, %.lr.ph.split.split ], [ %.pre, %bb.d ]
  %i.cm = add nuw nsw i32 %.01627, 1              ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.ck
  br i1 %i.cn, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !627

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us33, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.co = tail call i64 @clock() #16              ; 2 uses
end_hunk_19
