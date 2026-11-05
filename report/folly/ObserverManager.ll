Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ObserverManager?download=true
inline.NumInlined: 5076
inline.NumDeleted: 2581
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3fmt2v96detail16get_dynamic_specINS1_13width_checkerENS0_16basic_format_argINS0_20basic_format_contextINS0_8appenderEcEEEENS1_13error_handlerEEEiT0_T1_:bb.a
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.57) #40
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.57) #40
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.57) #40
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.57) #40
  unreachable

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.57) #40
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.57) #40
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.57) #40
  unreachable

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.57) #40
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.57) #40
  unreachable

_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.e, %bb.d, %bb.g, %_ZN3fmt2v96detail13width_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit, %bb.j
  %.0.i = phi i64 [ %i.j, %bb.g ], [ %i.m, %_ZN3fmt2v96detail13width_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit ], [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.o, %bb.j ] ; 2 uses
  %i.p = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.p, label %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread9, label %bb.u

_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread9: ; preds = %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.49) #40
  unreachable

bb.u:                                             ; preds = %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread, %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %.0.i8 = phi i64 [ %i.e, %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread ], [ %.0.i, %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit ]
  %i.q = trunc nuw nsw i64 %.0.i8 to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt2v96detail16get_dynamic_specINS1_17precision_checkerENS0_16basic_format_argINS0_20basic_format_contextINS0_8appenderEcEEEENS1_13error_handlerEEEiT0_T1_(ptr noundef byval(%"class.fmt::v9::basic_format_arg") align 16 %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !750
  switch i32 %i.b, label %bb.t [
    i32 15, label %bb.s
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 16, !tbaa !626   ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.58) #40
  unreachable

_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread: ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 16, !tbaa !626
  %i.g = zext i32 %i.f to i64
  br label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 16, !tbaa !626   ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.58) #40
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 16, !tbaa !626
  br label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.h:                                             ; preds = %bb.a
  %i.k = load i128, ptr %0, align 16, !tbaa !626  ; 2 uses
  %i.l = icmp slt i128 %i.k, 0
  br i1 %i.l, label %bb.i, label %_ZN3fmt2v96detail17precision_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.58) #40
  unreachable

_ZN3fmt2v96detail17precision_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit: ; preds = %bb.h
  %i.m = trunc i128 %i.k to i64
  br label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.j:                                             ; preds = %bb.a
  %i.n = load i128, ptr %0, align 16, !tbaa !626
  %i.o = trunc i128 %i.n to i64
  br label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.59) #40
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.59) #40
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.59) #40
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.59) #40
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.59) #40
  unreachable

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.59) #40
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.59) #40
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.59) #40
  unreachable

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.59) #40
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.59) #40
  unreachable

_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.e, %bb.d, %bb.g, %_ZN3fmt2v96detail17precision_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit, %bb.j
  %.0.i = phi i64 [ %i.j, %bb.g ], [ %i.m, %_ZN3fmt2v96detail17precision_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit ], [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.o, %bb.j ] ; 2 uses
  %i.p = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.p, label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread9, label %bb.u

_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread9: ; preds = %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.49) #40
  unreachable

bb.u:                                             ; preds = %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread, %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %.0.i8 = phi i64 [ %i.e, %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread ], [ %.0.i, %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit ]
  %i.q = trunc nuw nsw i64 %.0.i8 to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIS6_EE(ptr %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #1 comdat {
bb.a:
  %4 = alloca %class.anon.94, align 8             ; 5 uses
  %i.a = alloca [7 x i8], align 1                 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.fmt::v9::detail::find_escape_result", align 8 ; 9 uses
  %6 = alloca %class.anon.91, align 8             ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !722  ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %.lr.ph.i, label %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.0918.i = phi i64 [ %i.k, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %.01017.i = phi i64 [ %.1.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.0918.i
  %i.i = load i8, ptr %i.h, align 1, !tbaa !626
  %.not14.i = icmp slt i8 %i.i, -64
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = add i64 %.01017.i, 1                     ; 2 uses
  %7 = icmp ugt i64 %i.j, %i.f
  br i1 %7, label %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.1.i = phi i64 [ %i.j, %bb.c ], [ %.01017.i, %.lr.ph.i ]
  %i.k = add nuw i64 %.0918.i, 1                  ; 2 uses
  %.not.i = icmp eq i64 %i.k, %2
  br i1 %.not.i, label %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit, label %.lr.ph.i, !llvm.loop !3348

_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ %2, %bb.a ], [ %2, %bb.b ], [ %2, %bb.d ], [ %.0918.i, %bb.c ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i8, ptr %i.l, align 4, !tbaa !736
  %i.n = icmp eq i8 %i.m, 18                      ; 2 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !739
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.p, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = ptrtoint ptr %i.p to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.019.0.i = phi i64 [ 1, %bb.f ], [ %i.aa, %bb.h ] ; 2 uses
  %.0.i = phi ptr [ %1, %bb.f ], [ %i.z, %bb.h ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.p, ptr %5, align 8, !tbaa !765, !alias.scope !3354
  store ptr null, ptr %i.q, align 8, !tbaa !766, !alias.scope !3354
  store i32 0, ptr %i.r, align 8, !tbaa !767, !alias.scope !3354
  %i.t = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  call void @_ZN3fmt2v96detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0.i, i64 %i.u, ptr nonnull align 8 %5)
  %i.v = load ptr, ptr %5, align 8, !tbaa !765    ; 2 uses
  %.not6.i.i = icmp eq ptr %.0.i, %i.v
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = sub i64 %.sroa.019.0.i, %i.t
  %i.y = add i64 %i.x, %i.w
  %.sroa.04.0.lcssa.i.i = select i1 %.not6.i.i, i64 %.sroa.019.0.i, i64 %i.y ; 2 uses
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !766  ; 3 uses
  %.not.i22 = icmp eq ptr %i.z, null
  br i1 %.not.i22, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN3fmt2v96detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = call i64 @_ZN3fmt2v96detail16write_escaped_cpINS1_17counting_iteratorEcEET_S4_RKNS1_18find_escape_resultIT0_EE(i64 %.sroa.04.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.not12.i = icmp eq ptr %i.z, %i.p
  br i1 %.not12.i, label %_ZN3fmt2v96detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit, label %bb.g, !llvm.loop !3351

_ZN3fmt2v96detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit: ; preds = %bb.h, %.thread.i
  %.sroa.019.127.i = phi i64 [ %.sroa.04.0.lcssa.i.i, %.thread.i ], [ %i.aa, %bb.h ]
  %i.ab = add i64 %.sroa.019.127.i, 1
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.b, ptr %4, align 8, !tbaa !669
  %i.ac = icmp ugt i64 %.0, 3
  br i1 %i.ac, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -3
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.028.i.i = phi ptr [ %1, %bb.j ], [ %i.af, %bb.l ] ; 4 uses
  %.not36.i.i = icmp ult ptr %.028.i.i, %i.ae
  br i1 %.not36.i.i, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %bb.k
  %i.af = call noundef ptr @_ZZN3fmt2v96detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.028.i.i, ptr noundef %.028.i.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %bb.k, !llvm.loop !3352

.loopexit.i.i:                                    ; preds = %bb.k, %bb.i
  %.230.i.i = phi ptr [ %1, %bb.i ], [ %.028.i.i, %bb.k ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.0 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %.230.i.i to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %.not37.i.i = icmp eq ptr %i.ag, %.230.i.i
  br i1 %.not37.i.i, label %_ZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, i8 0, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %.230.i.i, i64 %i.aj, i1 false)
  %i.ak = ptrtoint ptr %i.a to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.331.i.i = phi ptr [ %.230.i.i, %bb.m ], [ %i.ap, %bb.o ] ; 2 uses
  %.0.i.i = phi ptr [ %i.a, %bb.m ], [ %i.al, %bb.o ] ; 2 uses
  %i.al = call noundef ptr @_ZZN3fmt2v96detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.0.i.i, ptr noundef %.331.i.i) ; 3 uses
  %.not38.not.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not38.not.not.i.i, label %.thread.sink.split.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = ptrtoint ptr %.0.i.i to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds i8, ptr %.331.i.i, i64 %i.ao
  %i.aq = sub i64 %i.am, %i.ak
  %i.ar = icmp slt i64 %i.aq, %i.aj
  br i1 %i.ar, label %bb.n, label %.thread.sink.split.i.i, !llvm.loop !3353

.thread.sink.split.i.i:                           ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEE.exit

_ZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEE.exit: ; preds = %bb.l, %.loopexit.i.i, %.thread.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.as = load i64, ptr %i.b, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt2v96detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit, %_ZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEE.exit, %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit
  %.019 = phi i64 [ %i.ab, %_ZN3fmt2v96detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit ], [ %i.as, %_ZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEE.exit ], [ 0, %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit ]
  %i.at = zext i1 %i.n to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i8 %i.at, ptr %6, align 8, !tbaa !769
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.au, align 8, !tbaa !664
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !161
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %i.av, align 8, !tbaa !770
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %.0, ptr %i.aw, align 8, !tbaa !771
  %i.ax = call ptr @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE1ENS0_8appenderEcZNS1_5writeIcS5_EET0_S7_NS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIS9_EEEUlS5_E_EES7_S7_RKNSB_IT1_EEmmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %.0, i64 noundef %.019, ptr noundef nonnull align 8 dereferenceable(40) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret ptr %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE1ENS0_8appenderEcZNS1_5writeIcS5_EET0_S7_NS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIS9_EEEUlS5_E_EES7_S7_RKNSB_IT1_EEmmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !739
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %3) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 15
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str.62, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !626
  %i.j = sext i8 %i.i to i64
  %i.k = and i64 %i.j, 4294967295
  %i.l = lshr i64 %i.c, %i.k                      ; 4 uses
  %i.m = sub nuw nsw i64 %i.c, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @_ZN3fmt2v96detail4fillINS0_8appenderEcEET_S4_mRKNS1_6fill_tIT0_EE(ptr %0, i64 noundef %i.l, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.08.0 = phi ptr [ %i.o, %bb.b ], [ %0, %bb.a ] ; 8 uses
  %i.p = load i8, ptr %4, align 8, !tbaa !769, !range !625, !noundef !317
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.r, align 8, !tbaa !664
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !161
  %i.s = tail call ptr @_ZN3fmt2v96detail20write_escaped_stringIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewIT_EE(ptr %.sroa.08.0, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  br label %_ZZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIS6_EEENKUlS3_E_clES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !770  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !771  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 2 uses
  %.not18.i.i.i = icmp samesign eq i64 %i.w, 0
  br i1 %.not18.i.i.i, label %_ZZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIS6_EEENKUlS3_E_clES3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %.pre.i.i.i = load i64, ptr %i.z, align 8, !tbaa !773
  br label %bb.f

bb.f:                                             ; preds = %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i.i, %.lr.ph.i.i.i
end_hunk_0
