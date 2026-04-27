inline.NumInlined: 1045
inline.NumDeleted: 503
begin_hunk_0_@_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsE:bb.a
  %4 = alloca [21 x %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call"], align 8 ; 75 uses
  %5 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 17 uses
  %6 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 17 uses
  %7 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 17 uses
  %8 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 17 uses
  %9 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 10 uses
  %10 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 17 uses
  %11 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsE:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr @.str.83, ptr %i.aj, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i8 0, ptr %i.am, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  store i8 0, ptr %i.ak, align 8, !noalias !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.af, ptr noundef nonnull align 8 dereferenceable(89) %7, i64 64, i1 false)
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 256
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false), !noalias !59
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 280
  store i8 0, ptr %i.ao, align 8, !tbaa !39, !alias.scope !59
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsE:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i8 0, ptr %i.aw, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsE:bb.a
  store ptr @.str.4, ptr %i.at, align 8, !noalias !62
  store i8 1, ptr %i.au, align 8, !noalias !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.ap, ptr noundef nonnull align 8 dereferenceable(89) %8, i64 64, i1 false)
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 352
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !noalias !62
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 376
  store i8 0, ptr %i.ay, align 8, !tbaa !39, !alias.scope !62
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsE:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i8 0, ptr %i.bg, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsE:bb.a
  store ptr @.str.7, ptr %i.bd, align 8, !noalias !65
  store i8 1, ptr %i.be, align 8, !noalias !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %9, ptr noundef nonnull align 8 dereferenceable(89) %10, i64 64, i1 false)
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false), !noalias !65
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i8 0, ptr %i.bk, align 8, !tbaa !39, !alias.scope !65
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsE:bb.a
  br i1 %i.dp, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit61, label %bb.q

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit61: ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit
  %.pre = load ptr, ptr %16, align 8, !tbaa !72   ; 3 uses
  %.pre266 = load ptr, ptr %17, align 8, !tbaa !73 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %.not4.i.i.i.i62 = icmp eq ptr %.pre, %.pre266
  br i1 %.not4.i.i.i.i62, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i70, label %.lr.ph.i.i.i.i63

.lr.ph.i.i.i.i63:                                 ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit61, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i66
  %.05.i.i.i.i64 = phi ptr [ %i.dv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i66 ], [ %.pre, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit61 ] ; 3 uses
  %i.dq = load ptr, ptr %.05.i.i.i.i64, align 8, !tbaa !74 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i64, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsE:bb.a

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i66: ; preds = %.lr.ph.i.i.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i65
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i64, i64 32 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.dv, %.pre266
  br i1 %.not.i.i.i.i67, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i68, label %.lr.ph.i.i.i.i63, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i68: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i66
  %.pr.i.i69 = load ptr, ptr %16, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i70

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i70: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i68, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit61
  %18 = phi ptr [ %.pr.i.i69, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i68 ], [ %.pre, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit61 ] ; 3 uses
  %.not.i.i1.i.i71 = icmp eq ptr %18, null
  br i1 %.not.i.i1.i.i71, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit85, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit73

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit73: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i70
  %19 = load ptr, ptr %i.bi, align 8, !tbaa !79
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %18 to i64
  %22 = sub i64 %20, %21
  call void @_ZdlPvm(ptr noundef nonnull %18, i64 noundef %22) #22
  %.pre267 = load ptr, ptr %i.bf, align 8, !tbaa !72 ; 5 uses
  %.pre268 = load ptr, ptr %i.bh, align 8, !tbaa !73 ; 2 uses
  %.not4.i.i.i.i74 = icmp eq ptr %.pre267, %.pre268
  br i1 %.not4.i.i.i.i74, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit73, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i78
  %.05.i.i.i.i76 = phi ptr [ %27, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i78 ], [ %.pre267, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit73 ] ; 3 uses
  %23 = load ptr, ptr %.05.i.i.i.i76, align 8, !tbaa !74 ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i76, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %23, %24
  br i1 %i.dw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i77: ; preds = %.lr.ph.i.i.i.i75
  %25 = load i64, ptr %24, align 8, !tbaa !26
  %26 = add i64 %25, 1
  call void @_ZdlPvm(ptr noundef %23, i64 noundef %26) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i78

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i78: ; preds = %.lr.ph.i.i.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i77
  %27 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i76, i64 32 ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %27, %.pre268
  br i1 %.not.i.i.i.i79, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i82, label %.lr.ph.i.i.i.i75, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i82: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i78, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit73
  %.not.i.i1.i.i83 = icmp eq ptr %.pre267, null
  br i1 %.not.i.i1.i.i83, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit85, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i82
  %i.dx = load ptr, ptr %i.bj, align 8, !tbaa !79
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %.pre267 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %.pre267, i64 noundef %i.ea) #22
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit85

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit85: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i70, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i82, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.eb = load ptr, ptr %i.av, align 8, !tbaa !72 ; 5 uses
  %i.ec = load ptr, ptr %15, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i.i86 = icmp eq ptr %i.eb, %i.ec
  br i1 %.not4.i.i.i.i86, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i94, label %.lr.ph.i.i.i.i87

.lr.ph.i.i.i.i87:                                 ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit85, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i90
  %.05.i.i.i.i88 = phi ptr [ %33, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i90 ], [ %i.eb, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit85 ] ; 3 uses
  %28 = load ptr, ptr %.05.i.i.i.i88, align 8, !tbaa !74 ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i88, i64 16 ; 2 uses
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i89: ; preds = %.lr.ph.i.i.i.i87
  %31 = load i64, ptr %29, align 8, !tbaa !26
  %32 = add i64 %31, 1
  call void @_ZdlPvm(ptr noundef %28, i64 noundef %32) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i90

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i90: ; preds = %.lr.ph.i.i.i.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i89
  %33 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i88, i64 32 ; 2 uses
  %.not.i.i.i.i91 = icmp eq ptr %33, %i.ec
  br i1 %.not.i.i.i.i91, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i94, label %.lr.ph.i.i.i.i87, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i94: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i90, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit85
  %.not.i.i1.i.i95 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i1.i.i95, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit97, label %34

34:                                               ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i94
  %35 = load ptr, ptr %i.ax, align 8, !tbaa !79
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %i.eb to i64
  %38 = sub i64 %36, %37
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %38) #22
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit97

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit97: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i94, %34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %39 = load ptr, ptr %i.al, align 8, !tbaa !72   ; 5 uses
  %40 = load ptr, ptr %13, align 8, !tbaa !73     ; 2 uses
  %.not4.i.i.i.i98 = icmp eq ptr %39, %40
  br i1 %.not4.i.i.i.i98, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit97, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i102
  %.05.i.i.i.i100 = phi ptr [ %46, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i102 ], [ %39, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit97 ] ; 3 uses
  %41 = load ptr, ptr %.05.i.i.i.i100, align 8, !tbaa !74 ; 2 uses
  %42 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i100, i64 16 ; 2 uses
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i101: ; preds = %.lr.ph.i.i.i.i99
  %44 = load i64, ptr %42, align 8, !tbaa !26
  %45 = add i64 %44, 1
  call void @_ZdlPvm(ptr noundef %41, i64 noundef %45) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i102

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i102: ; preds = %.lr.ph.i.i.i.i99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i101
  %46 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i100, i64 32 ; 2 uses
  %.not.i.i.i.i103 = icmp eq ptr %46, %40
  br i1 %.not.i.i.i.i103, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i106, label %.lr.ph.i.i.i.i99, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i106: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i102, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit97
  %.not.i.i1.i.i107 = icmp eq ptr %39, null
  br i1 %.not.i.i1.i.i107, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit109, label %47

47:                                               ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i106
  %48 = load ptr, ptr %i.an, align 8, !tbaa !79
  %49 = ptrtoint ptr %48 to i64
  %50 = ptrtoint ptr %39 to i64
  %51 = sub i64 %49, %50
  call void @_ZdlPvm(ptr noundef nonnull %39, i64 noundef %51) #22
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit109

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit109: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i106, %47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %52 = load ptr, ptr %i.z, align 8, !tbaa !72    ; 5 uses
  %53 = load ptr, ptr %i.ac, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i.i110 = icmp eq ptr %52, %53
  br i1 %.not4.i.i.i.i110, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i118, label %.lr.ph.i.i.i.i111

.lr.ph.i.i.i.i111:                                ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit109, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i114
  %.05.i.i.i.i112 = phi ptr [ %i.ei, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i114 ], [ %52, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit109 ] ; 3 uses
  %i.ed = load ptr, ptr %.05.i.i.i.i112, align 8, !tbaa !74 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i112, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsE:bb.a

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i114: ; preds = %.lr.ph.i.i.i.i111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i113
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i112, i64 32 ; 2 uses
  %.not.i.i.i.i115 = icmp eq ptr %i.ei, %53
  br i1 %.not.i.i.i.i115, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i118, label %.lr.ph.i.i.i.i111, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i118: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i114, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit109
  %.not.i.i1.i.i119 = icmp eq ptr %52, null
  br i1 %.not.i.i1.i.i119, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit121, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i118
  %i.ej = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %52 to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %52, i64 noundef %i.em) #22
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit121

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit121: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i118, %bb.t
end_hunk_8
