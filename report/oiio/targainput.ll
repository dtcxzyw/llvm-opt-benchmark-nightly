begin_hunk_0
inline.NumInlined: 3090
inline.NumDeleted: 897
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18TGAInput13get_thumbnailERNS0_8ImageBufEi(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 26 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.b = alloca [4 x i8], align 1                 ; 5 uses
  %i.c = alloca [4 x i8], align 1                 ; 5 uses
end_hunk_1
begin_hunk_2
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.al, label %bb.q, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit68

bb.p:                                             ; preds = %bb.s, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit, %bb.q, %bb.n
  %.sroa.0.0 = phi ptr [ %i.as, %bb.s ], [ %i.as, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit ], [ null, %bb.q ], [ null, %bb.n ]
end_hunk_2
begin_hunk_3
  %i.aq = mul nuw nsw i32 %i.ap, %i.af
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #32
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit unwind label %bb.p ; 5 uses

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit: ; preds = %bb.q
  %i.at = zext nneg i8 %narrow104 to i64
end_hunk_3
begin_hunk_4
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit
  br i1 %i.av, label %bb.s, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i67

bb.s:                                             ; preds = %bb.r
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !115
end_hunk_4
begin_hunk_5
          to label %bb.t unwind label %bb.p

bb.t:                                             ; preds = %bb.s
  br i1 %i.ay, label %bb.u, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i67

bb.u:                                             ; preds = %bb.t, %bb.l
  %.sroa.0.1 = phi ptr [ %i.as, %bb.t ], [ null, %bb.l ] ; 4 uses
end_hunk_5
begin_hunk_6
  br label %bb.ag

.thread:                                          ; preds = %._crit_edge, %bb.x, %bb.aa, %bb.u
  %i.bx = phi i1 [ true, %bb.u ], [ false, %bb.x ], [ false, %bb.aa ], [ true, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #30
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !91 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 144
end_hunk_6
begin_hunk_7

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %i.bx, label %bb.ah, label %bb.aj

bb.ag:                                            ; preds = %bb.ac, %bb.p
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.ac ], [ %.sroa.0.0, %bb.p ] ; 2 uses
end_hunk_7
begin_hunk_8
  %.238. = and i1 %or.cond, %i.dg
  br label %bb.aj

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i67: ; preds = %bb.t, %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.as) #30
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit68

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit68: ; preds = %bb.o, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i67
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %6 = load ptr, ptr %5, align 8, !tbaa !91       ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %8 = load ptr, ptr %7, align 8, !tbaa !92       ; 2 uses
  %.not4.i.i.i.i69 = icmp eq ptr %6, %8
  br i1 %.not4.i.i.i.i69, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i75, label %.lr.ph.i.i.i.i70

.lr.ph.i.i.i.i70:                                 ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit68, %.lr.ph.i.i.i.i70
  %.05.i.i.i.i71 = phi ptr [ %9, %.lr.ph.i.i.i.i70 ], [ %6, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit68 ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i71) #31
  %9 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i71, i64 40 ; 2 uses
  %.not.i.i.i.i72 = icmp eq ptr %9, %8
  br i1 %.not.i.i.i.i72, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i73, label %.lr.ph.i.i.i.i70, !llvm.loop !95

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i73: ; preds = %.lr.ph.i.i.i.i70
  %.pr.i.i74 = load ptr, ptr %5, align 8, !tbaa !91
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i75

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i75: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i73, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit68
  %10 = phi ptr [ %.pr.i.i74, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i73 ], [ %6, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit68 ] ; 3 uses
  %.not.i.i1.i.i76 = icmp eq ptr %10, null
  br i1 %.not.i.i1.i.i76, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77, label %11

11:                                               ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i75
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = ptrtoint ptr %13 to i64
  %15 = ptrtoint ptr %10 to i64
  %16 = sub i64 %14, %15
  call void @_ZdlPvm(ptr noundef nonnull %10, i64 noundef %16) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77: ; preds = %11, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i75
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %18 = load ptr, ptr %17, align 8, !tbaa !85     ; 3 uses
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %20 = load ptr, ptr %19, align 8, !tbaa !86     ; 2 uses
  %.not4.i.i.i1.i78 = icmp eq ptr %18, %20
  br i1 %.not4.i.i.i1.i78, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i86, label %.lr.ph.i.i.i2.i79

.lr.ph.i.i.i2.i79:                                ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i82
  %.05.i.i.i3.i80 = phi ptr [ %26, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i82 ], [ %18, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77 ] ; 3 uses
  %21 = load ptr, ptr %.05.i.i.i3.i80, align 8, !tbaa !60 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i80, i64 16 ; 2 uses
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i81: ; preds = %.lr.ph.i.i.i2.i79
  %24 = load i64, ptr %22, align 8, !tbaa !16
  %25 = add i64 %24, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %25) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i82

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i82: ; preds = %.lr.ph.i.i.i2.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i81
  %26 = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i80, i64 32 ; 2 uses
  %.not.i.i.i4.i83 = icmp eq ptr %26, %20
  br i1 %.not.i.i.i4.i83, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i84, label %.lr.ph.i.i.i2.i79, !llvm.loop !89

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i84: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i82
  %.pr.i5.i85 = load ptr, ptr %17, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i86

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i86: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i84, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77
  %27 = phi ptr [ %.pr.i5.i85, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i84 ], [ %18, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77 ] ; 3 uses
  %.not.i.i1.i6.i87 = icmp eq ptr %27, null
  br i1 %.not.i.i1.i6.i87, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i88, label %28

28:                                               ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i86
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %30 = load ptr, ptr %29, align 8, !tbaa !87
  %31 = ptrtoint ptr %30 to i64
  %32 = ptrtoint ptr %27 to i64
  %33 = sub i64 %31, %32
  call void @_ZdlPvm(ptr noundef nonnull %27, i64 noundef %33) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i88

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i88: ; preds = %28, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i86
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %35 = load ptr, ptr %34, align 8, !tbaa !82     ; 3 uses
  %.not.i.i.i7.i89 = icmp eq ptr %35, null
  br i1 %.not.i.i.i7.i89, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit91, label %36

36:                                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i88
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %38 = load ptr, ptr %37, align 8, !tbaa !83
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %35 to i64
  %41 = sub i64 %39, %40
  call void @_ZdlPvm(ptr noundef nonnull %35, i64 noundef %41) #30
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit91

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit91:       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i88, %36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit91, %bb.g, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit
  %.4 = phi i1 [ false, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit91 ], [ %.238., %bb.ai ], [ false, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.al

end_hunk_8
