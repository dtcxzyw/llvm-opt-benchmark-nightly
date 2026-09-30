Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/File?download=true
inline.NumInlined: 928
inline.NumDeleted: 402
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3fmt2v96detail16get_dynamic_specINS1_13width_checkerENS0_16basic_format_argINS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEENS1_13error_handlerEEEiT0_T1_:bb.a
bb.k:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.21) #38
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.21) #38
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.21) #38
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.21) #38
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.21) #38
  unreachable

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.21) #38
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.21) #38
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.21) #38
  unreachable

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.21) #38
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.e, %bb.d, %bb.g, %_ZN3fmt2v96detail13width_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit, %bb.j
  %.0.i = phi i64 [ %i.j, %bb.g ], [ %i.m, %_ZN3fmt2v96detail13width_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit ], [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.o, %bb.j ] ; 2 uses
  %i.p = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.p, label %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread9, label %bb.u

_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread9: ; preds = %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.19) #38
  unreachable

bb.u:                                             ; preds = %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread, %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %.0.i8 = phi i64 [ %i.e, %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread ], [ %.0.i, %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit ]
  %i.q = trunc nuw nsw i64 %.0.i8 to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt2v96detail16get_dynamic_specINS1_17precision_checkerENS0_16basic_format_argINS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEENS1_13error_handlerEEEiT0_T1_(ptr noundef byval(%"class.fmt::v9::basic_format_arg") align 16 %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !80
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
  %i.c = load i32, ptr %0, align 16, !tbaa !31    ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.22) #38
  unreachable

_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread: ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 16, !tbaa !31
  %i.g = zext i32 %i.f to i64
  br label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 16, !tbaa !31    ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.22) #38
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 16, !tbaa !31
  br label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.h:                                             ; preds = %bb.a
  %i.k = load i128, ptr %0, align 16, !tbaa !31   ; 2 uses
  %i.l = icmp slt i128 %i.k, 0
  br i1 %i.l, label %bb.i, label %_ZN3fmt2v96detail17precision_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.22) #38
  unreachable

_ZN3fmt2v96detail17precision_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit: ; preds = %bb.h
  %i.m = trunc i128 %i.k to i64
  br label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.j:                                             ; preds = %bb.a
  %i.n = load i128, ptr %0, align 16, !tbaa !31
  %i.o = trunc i128 %i.n to i64
  br label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.23) #38
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.23) #38
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.23) #38
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.23) #38
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.23) #38
  unreachable

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.23) #38
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.23) #38
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.23) #38
  unreachable

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.23) #38
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.23) #38
  unreachable

_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.e, %bb.d, %bb.g, %_ZN3fmt2v96detail17precision_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit, %bb.j
  %.0.i = phi i64 [ %i.j, %bb.g ], [ %i.m, %_ZN3fmt2v96detail17precision_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit ], [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.o, %bb.j ] ; 2 uses
  %i.p = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.p, label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread9, label %bb.u

_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread9: ; preds = %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.19) #38
  unreachable

bb.u:                                             ; preds = %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread, %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %.0.i8 = phi i64 [ %i.e, %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread ], [ %.0.i, %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit ]
  %i.q = trunc nuw nsw i64 %.0.i8 to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail14digit_groupingIcEC2ENS1_10locale_refEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i1 noundef zeroext %2) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v9::detail::thousands_sep_result", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !30
  store i8 0, ptr %i.a, align 8, !tbaa !31
  br i1 %2, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  invoke void @_ZN3fmt2v96detail13thousands_sepIcEENS1_20thousands_sep_resultIT_EENS1_10locale_refE(ptr dead_on_unwind nonnull writable sret(%"struct.fmt::v9::detail::thousands_sep_result") align 8 %3, ptr %1)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !32     ; 6 uses
  %4 = icmp eq ptr %i.c, %i.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !32     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  br i1 %i.f, label %bb.d, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.c
  br i1 %i.f, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  switch i64 %i.h, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.d, align 1, !tbaa !31
  store i8 %i.j, ptr %i.c, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.k = load i64, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !30
  %i.l = load ptr, ptr %0, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 0, ptr %i.m, align 1, !tbaa !31
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !32
  br label %_ZN3fmt2v96detail20thousands_sep_resultIcEaSEOS3_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.d, ptr %0, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load <2 x i64>, ptr %i.n, align 8, !tbaa !31
  store <2 x i64> %i.o, ptr %i.b, align 8, !tbaa !31
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !31
  store ptr %i.d, ptr %0, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load <2 x i64>, ptr %i.q, align 8, !tbaa !31
  store <2 x i64> %i.r, ptr %i.b, align 8, !tbaa !31
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.c, ptr %3, align 8, !tbaa !32
  store i64 %i.p, ptr %i.e, align 8, !tbaa !31
  br label %_ZN3fmt2v96detail20thousands_sep_resultIcEaSEOS3_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.e, ptr %3, align 8, !tbaa !32
  br label %_ZN3fmt2v96detail20thousands_sep_resultIcEaSEOS3_.exit

_ZN3fmt2v96detail20thousands_sep_resultIcEaSEOS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g, %bb.h
  %i.s = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.c, %bb.g ], [ %i.e, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !30
  store i8 0, ptr %i.s, align 1, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = load i8, ptr %i.u, align 8, !tbaa !94
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.v, ptr %i.w, align 8, !tbaa !94
  %i.x = load ptr, ptr %3, align 8, !tbaa !32     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN3fmt2v96detail20thousands_sep_resultIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN3fmt2v96detail20thousands_sep_resultIcEaSEOS3_.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !31
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #37
  br label %_ZN3fmt2v96detail20thousands_sep_resultIcED2Ev.exit

_ZN3fmt2v96detail20thousands_sep_resultIcED2Ev.exit: ; preds = %_ZN3fmt2v96detail20thousands_sep_resultIcEaSEOS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.ad = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZN3fmt2v96detail20thousands_sep_resultIcED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !31
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #37
  br label %_ZN3fmt2v96detail20thousands_sep_resultIcED2Ev.exit6

_ZN3fmt2v96detail20thousands_sep_resultIcED2Ev.exit6: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  resume { ptr, i32 } %i.ac

bb.j:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ah, align 8, !tbaa !96
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN3fmt2v96detail20thousands_sep_resultIcED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail19write_int_localizedISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmcEET_SB_T0_jRKNS0_18basic_format_specsIT1_EERKNS1_14digit_groupingISE_EE(ptr %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [40 x i8], align 16               ; 4 uses
  %5 = alloca %class.anon.32, align 8             ; 7 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.d = or i64 %1, 1
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN3fmt2v96detail15do_count_digitsEmE9bsr2log10.const, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !31    ; 2 uses
  %i.i = zext i8 %i.h to i32
  %i.j = zext i8 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt2v96detail15do_count_digitsEmE20zero_or_powers_of_10.const, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44
  %i.m = icmp ult i64 %1, %i.l
  %.neg.i.i = sext i1 %i.m to i32
  %i.n = add nsw i32 %.neg.i.i, %i.i              ; 4 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o ; 2 uses
  %i.q = icmp ugt i64 %1, 99
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.021.i = phi i64 [ %i.w, %.lr.ph.i ], [ %1, %bb.a ] ; 3 uses
  %.01920.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.p, %bb.a ]
  %i.r = getelementptr inbounds i8, ptr %.01920.i, i64 -2 ; 3 uses
  %i.s = urem i64 %.021.i, 100
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.t
  %i.v = load i16, ptr %i.u, align 1
  store i16 %i.v, ptr %i.r, align 1
  %i.w = udiv i64 %.021.i, 100                    ; 2 uses
  %i.x = icmp ugt i64 %.021.i, 9999
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1068

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.019.lcssa.i = phi ptr [ %i.p, %bb.a ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %1, %bb.a ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %i.y = icmp samesign ult i64 %.0.lcssa.i, 10
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i
  %i.z = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr inbounds i8, ptr %.019.lcssa.i, i64 -1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !31
  br label %_ZN3fmt2v96detail14format_decimalIcmEENS1_21format_decimal_resultIPT_EES5_T0_i.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.ac = getelementptr inbounds i8, ptr %.019.lcssa.i, i64 -2
  %i.ad = shl nuw nsw i64 %.0.lcssa.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 1
  store i16 %i.af, ptr %i.ac, align 1
  br label %_ZN3fmt2v96detail14format_decimalIcmEENS1_21format_decimal_resultIPT_EES5_T0_i.exit

_ZN3fmt2v96detail14format_decimalIcmEENS1_21format_decimal_resultIPT_EES5_T0_i.exit: ; preds = %bb.b, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !96
  %.not.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i, label %_ZNK3fmt2v96detail14digit_groupingIcE16count_separatorsEi.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZN3fmt2v96detail14format_decimalIcmEENS1_21format_decimal_resultIPT_EES5_T0_i.exit
  %i.ai = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i9
  %.08.i = phi i32 [ 0, %.lr.ph.i9 ], [ %i.au, %bb.g ] ; 3 uses
  %.sroa.0.07.i = phi ptr [ %i.ai, %.lr.ph.i9 ], [ %.sroa.0.1.i, %bb.g ] ; 3 uses
  %.sroa.5.06.i = phi i32 [ 0, %.lr.ph.i9 ], [ %i.as, %bb.g ]
  %i.an = icmp eq ptr %.sroa.0.07.i, %i.al
  br i1 %i.an, label %._ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i, label %bb.e

._ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i: ; preds = %bb.d
  %.sink.i.pre.i = load i8, ptr %i.am, align 1, !tbaa !31
  br label %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ao = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !31 ; 2 uses
  %i.ap = add i8 %i.ao, -127
  %or.cond.i.i = icmp ult i8 %i.ap, -126
  br i1 %or.cond.i.i, label %_ZNK3fmt2v96detail14digit_groupingIcE16count_separatorsEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1
  br label %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i: ; preds = %bb.f, %._ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i
  %.sink.i.i = phi i8 [ %i.ao, %bb.f ], [ %.sink.i.pre.i, %._ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %.sroa.0.1.i = phi ptr [ %i.aq, %bb.f ], [ %i.al, %._ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %i.ar = sext i8 %.sink.i.i to i32
  %i.as = add nsw i32 %.sroa.5.06.i, %i.ar        ; 2 uses
  %i.at = icmp sgt i32 %i.n, %i.as
  br i1 %i.at, label %bb.g, label %_ZNK3fmt2v96detail14digit_groupingIcE16count_separatorsEi.exit

bb.g:                                             ; preds = %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i
  %i.au = add nuw nsw i32 %.08.i, 1
  br label %bb.d

_ZNK3fmt2v96detail14digit_groupingIcE16count_separatorsEi.exit: ; preds = %bb.e, %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i, %_ZN3fmt2v96detail14format_decimalIcmEENS1_21format_decimal_resultIPT_EES5_T0_i.exit
  %.0.lcssa.i10 = phi i32 [ 0, %_ZN3fmt2v96detail14format_decimalIcmEENS1_21format_decimal_resultIPT_EES5_T0_i.exit ], [ %.08.i, %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i ], [ %.08.i, %bb.e ]
  %.not = icmp ne i32 %2, 0
  %i.av = zext i1 %.not to i32
  %i.aw = add nsw i32 %i.n, %i.av
  %i.ax = add nsw i32 %i.aw, %.0.lcssa.i10
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.a, ptr %5, align 8, !tbaa !1069
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.az, align 8, !tbaa !1070
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.c, ptr %i.ba, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.b, ptr %i.bb, align 8, !tbaa !1069
  %i.bc = call ptr @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcZNS1_19write_int_localizedISC_mcEET_SE_T0_jRKNS0_18basic_format_specsIT1_EERKNS1_14digit_groupingISH_EEEUlPcE_EESF_SF_SK_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.ay, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
end_hunk_0
