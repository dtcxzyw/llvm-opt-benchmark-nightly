Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/core_3_timeouts?download=true
inline.NumInlined: 26958
inline.NumDeleted: 9825
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_ED2Ev:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2733
  tail call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.af) #41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast4http12basic_fieldsISaIcEE14realloc_stringERNS_4core17basic_string_viewIcEES7_.exit.i.i

_ZN5boost5beast4http12basic_fieldsISaIcEE14realloc_stringERNS_4core17basic_string_viewIcEES7_.exit.i.i: ; preds = %bb.f, %_ZN5boost5beast4http12basic_fieldsISaIcEE11delete_listEv.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !2732 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost5beast4http12basic_fieldsISaIcEE14realloc_stringERNS_4core17basic_string_viewIcEES7_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2733
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ak) #41
  br label %_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit

_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit: ; preds = %_ZN5boost5beast4http12basic_fieldsISaIcEE14realloc_stringERNS_4core17basic_string_viewIcEES7_.exit.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http12basic_parserILb0EEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !434 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZN5boost5beast4http12basic_parserILb0EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ap) #41, !inline_history !9951
  br label %_ZN5boost5beast4http12basic_parserILb0EED2Ev.exit

_ZN5boost5beast4http12basic_parserILb0EED2Ev.exit: ; preds = %_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_ED0Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_ED2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 280) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E15on_request_implENS1_4verbENS_4core17basic_string_viewIcEESC_iRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E16on_response_implEiNS_4core17basic_string_viewIcEEiRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr %2, i64 %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E16on_response_implEiNS_4core17basic_string_viewIcEEiRNS_6system10error_codeESt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr %2, i64 %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E13on_field_implENS1_5fieldENS_4core17basic_string_viewIcEESC_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 noundef zeroext %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.b = tail call noundef ptr @_ZN5boost5beast4http12basic_fieldsISaIcEE22try_create_new_elementENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i16 noundef zeroext %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_code6failedEv.exit.thread12.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.d, 1
  br i1 %i.f, label %_ZNK5boost6system10error_code6failedEv.exit.i, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

_ZNK5boost6system10error_code6failedEv.exit.i:    ; preds = %bb.b
  %i.g = load i32, ptr %6, align 8, !tbaa !869
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZNK5boost6system10error_code6failedEv.exit.thread12.i, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

_ZNK5boost6system10error_code6failedEv.exit.thread12.i: ; preds = %_ZNK5boost6system10error_code6failedEv.exit.i, %bb.a
  tail call void @_ZN5boost5beast4http12basic_fieldsISaIcEE14insert_elementERNS4_7elementE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(54) %i.b)
  br label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit: ; preds = %bb.b, %_ZNK5boost6system10error_code6failedEv.exit.i, %_ZNK5boost6system10error_code6failedEv.exit.thread12.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E21on_trailer_field_implENS1_5fieldENS_4core17basic_string_viewIcEESC_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 noundef zeroext %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.boost::intrusive::detail::key_nodeptr_comp", align 8 ; 4 uses
  %8 = alloca %"class.boost::core::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.boost::core::basic_string_view", align 8 ; 4 uses
  %10 = alloca %"class.boost::beast::http::token_list", align 8 ; 5 uses
  store ptr %2, ptr %9, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %3, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.c = tail call { ptr, i64 } @_ZN5boost5beast4http9to_stringENS1_5fieldE(i16 noundef zeroext 107), !noalias !9952 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !9952
  store ptr %i.d, ptr %8, align 8, !noalias !9955
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.e, ptr %i.f, align 8, !noalias !9955
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !9955
  store ptr %i.b, ptr %7, align 8, !tbaa !3879, !alias.scope !9958, !noalias !9961
  %i.g = call noundef ptr @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE4findINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dead_on_return %7), !noalias !9961 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !9955
  %i.h = icmp eq ptr %i.g, %i.b
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !9952
  %i.k = icmp eq ptr %i.i, %i.j
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %_ZNK5boost5beast4http12basic_fieldsISaIcEEixENS1_5fieldE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.o = load i16, ptr %i.m, align 2, !tbaa !2760
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %i.s = load i16, ptr %i.r, align 2, !tbaa !2764
  %i.t = zext i16 %i.s to i64
  br label %_ZNK5boost5beast4http12basic_fieldsISaIcEEixENS1_5fieldE.exit

_ZNK5boost5beast4http12basic_fieldsISaIcEEixENS1_5fieldE.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %.sroa.03.0.i = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ]
  store ptr %.sroa.03.0.i, ptr %10, align 8, !tbaa !434
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.sroa.3.0.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  %i.u = call noundef zeroext i1 @_ZN5boost5beast4http10token_list6existsERKNS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br i1 %i.u, label %bb.c, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

bb.c:                                             ; preds = %_ZNK5boost5beast4http12basic_fieldsISaIcEEixENS1_5fieldE.exit
  switch i16 %1, label %bb.d [
    i16 25, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 73, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 109, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 108, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 31, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 107, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 53, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 44, label %bb.e
    i16 26, label %bb.e
    i16 80, label %bb.e
    i16 100, label %bb.e
    i16 101, label %bb.e
    i16 94, label %bb.e
    i16 47, label %bb.e
    i16 62, label %bb.e
    i16 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 210
  %i.w = load i8, ptr %i.v, align 2, !tbaa !9938, !range !68, !noundef !69
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %.sroa.01.0.copyload = load ptr, ptr %9, align 8, !tbaa !434
  %.sroa.22.0.copyload = load i64, ptr %i.a, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.y = call noundef ptr @_ZN5boost5beast4http12basic_fieldsISaIcEE22try_create_new_elementENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i16 noundef zeroext %1, ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.ab = and i64 %i.aa, 1
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_code6failedEv.exit.thread12.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %_ZNK5boost6system10error_code6failedEv.exit.i, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

_ZNK5boost6system10error_code6failedEv.exit.i:    ; preds = %bb.f
  %i.ad = load i32, ptr %6, align 8, !tbaa !869
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %_ZNK5boost6system10error_code6failedEv.exit.thread12.i, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

_ZNK5boost6system10error_code6failedEv.exit.thread12.i: ; preds = %_ZNK5boost6system10error_code6failedEv.exit.i, %bb.e
  call void @_ZN5boost5beast4http12basic_fieldsISaIcEE14insert_elementERNS4_7elementE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(54) %i.y)
  br label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit: ; preds = %_ZNK5boost6system10error_code6failedEv.exit.thread12.i, %_ZNK5boost6system10error_code6failedEv.exit.i, %bb.f, %bb.d, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %_ZNK5boost5beast4http12basic_fieldsISaIcEEixENS1_5fieldE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E14on_header_implERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E17on_body_init_implERKNS_8optionalImEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %.sroa.0.i = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i8, ptr %1, align 8, !tbaa !9964, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %3, i32 noundef 7)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #39
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !807
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %switch.i.i.i = icmp ult i64 %.sroa.5.0.copyload.i, 2
  %i.i = and i64 %.sroa.5.0.copyload.i, 1
  %i.j = or disjoint i64 %i.i, ptrtoint (ptr @_ZZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader4initERKNS_8optionalImEERNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.5.0.copyload.i, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader4initERKNS_8optionalImEERNS_6system10error_codeE.exit

bb.e:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !9965, !nonnull !69, !align !81
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %_ZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader4initERKNS_8optionalImEERNS_6system10error_codeE.exit

_ZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader4initERKNS_8optionalImEERNS_6system10error_codeE.exit: ; preds = %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.l, align 8, !tbaa !9936
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E12on_body_implENS_4core17basic_string_viewIcEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %.sroa.024.i = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9965, !nonnull !69, !align !81 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.024.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 7)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #39
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !807
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %switch.i.i.i = icmp ult i64 %.sroa.5.0.copyload.i, 2
  %i.i = and i64 %.sroa.5.0.copyload.i, 1
  %i.j = or disjoint i64 %i.i, ptrtoint (ptr @_ZZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.5.0.copyload.i, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024.i)
  br label %_ZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit

bb.d:                                             ; preds = %bb.a
  %i.k = add i64 %i.d, %2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.k, i8 noundef signext 0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %_ZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !9965, !nonnull !69, !align !81
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit

_ZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit: ; preds = %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i, %bb.d, %bb.e
  %.0.i = phi i64 [ 0, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i ], [ 0, %bb.d ], [ %2, %bb.e ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E20on_chunk_header_implEmNS_4core17basic_string_viewIcEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #5 comdat align 2 {
bb.a:
  %5 = alloca %"class.boost::core::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt8functionIFvmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit

_ZNKSt8functionIFvmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %i.e, align 8
  store i64 %1, ptr %i.a, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9966
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %4), !inline_history !9967
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt8functionIFvmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E18on_chunk_body_implEmNS_4core17basic_string_viewIcEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %.sroa.024.i = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %6 = alloca %"class.boost::core::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt8functionIFmmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit

_ZNKSt8functionIFmmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %i.e, align 8
  store i64 %1, ptr %i.a, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9968
  %i.h = call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4), !inline_history !9969
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9965, !nonnull !69, !align !81 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20   ; 3 uses
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ugt i64 %3, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.024.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %5, i32 noundef 7)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #39
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.i, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !807
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %switch.i.i.i = icmp ult i64 %.sroa.5.0.copyload.i, 2
  %i.q = and i64 %.sroa.5.0.copyload.i, 1
  %i.r = or disjoint i64 %i.q, ptrtoint (ptr @_ZZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.5.0.copyload.i, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024.i)
  br label %_ZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit

bb.e:                                             ; preds = %bb.b
  %i.s = add i64 %i.l, %3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.s, i8 noundef signext 0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.t = icmp eq i64 %3, 0
  br i1 %i.t, label %_ZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !9965, !nonnull !69, !align !81
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %2, i64 %3, i1 false)
  br label %_ZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit

_ZN5boost5beast4http17basic_string_bodyIcSt11char_traitsIcESaIcEE6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit: ; preds = %bb.f, %bb.e, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i, %_ZNKSt8functionIFmmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit
  %.0 = phi i64 [ %i.h, %_ZNKSt8functionIFmmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i ], [ 0, %bb.e ], [ %3, %bb.f ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E14on_finish_implERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http12basic_parserILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http12basic_parserILb0EEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !434  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #41
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http12basic_parserILb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http12basic_fieldsISaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.a, align 8, !tbaa !2704
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !2708
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvNS7_11key_compareEmLb0EvEC2EOSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !3554
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !3554
  store ptr null, ptr %1, align 8, !tbaa !3550
  store ptr %0, ptr %i.d, align 8, !tbaa !2704
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2708
  store ptr %i.g, ptr %i.b, align 8, !tbaa !2708
  store ptr %0, ptr %i.f, align 8, !tbaa !2708
  %i.h = load ptr, ptr %0, align 8, !tbaa !3550   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b
  store ptr %0, ptr %i.a, align 8, !tbaa !2704
  store ptr %0, ptr %i.b, align 8, !tbaa !2708
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.h, align 8, !tbaa !3550
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !3550 ; 2 uses
  %.not36.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not36.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %.pre.i.i.i.i, align 8, !tbaa !3550
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.thread.i.i
  store ptr %1, ptr %i.d, align 8, !tbaa !2704
  store ptr %1, ptr %i.f, align 8, !tbaa !2708
  br label %bb.f

_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvNS7_11key_compareEmLb0EvEC2EOSG_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.i, ptr %i.i, align 8, !tbaa !2709
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.j, align 8, !tbaa !2712
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEC2EOSF_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  store ptr %i.k, ptr %i.k, align 8, !tbaa !2709
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8, !tbaa !2712
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !2709 ; 3 uses
  %.not.i24.i.i.i = icmp eq ptr %i.n, null        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i24.i.i.i, label %bb.g, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f
  %.pre26.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !2712 ; 2 uses
  %.phi.trans.insert27.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre28.i.i.i = load ptr, ptr %.phi.trans.insert27.i.i.i, align 8, !tbaa !2712
  %.pre29.i.i.i = load ptr, ptr %.pre26.i.i.i, align 8, !tbaa !2709
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.l, ptr %i.l, align 8, !tbaa !2709
  store ptr %i.l, ptr %i.o, align 8, !tbaa !2712
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2709 ; 2 uses
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !2712 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %.pre3.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2712
  %.pre4.i = load ptr, ptr %.pre.i, align 8, !tbaa !2709
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %i.p = phi ptr [ %.pre4.i, %bb.g ], [ %i.k, %._crit_edge.i.i.i ]
  %i.q = phi ptr [ %.pre3.i, %bb.g ], [ %i.k, %._crit_edge.i.i.i ]
  %i.r = phi ptr [ %.pre.i, %bb.g ], [ %i.k, %._crit_edge.i.i.i ]
  %i.s = phi ptr [ %i.l, %bb.g ], [ %.pre29.i.i.i, %._crit_edge.i.i.i ]
  %i.t = phi ptr [ %i.l, %bb.g ], [ %.pre28.i.i.i, %._crit_edge.i.i.i ]
  %i.u = phi ptr [ %i.l, %bb.g ], [ %.pre26.i.i.i, %._crit_edge.i.i.i ]
  %i.v = phi ptr [ %i.l, %bb.g ], [ %i.n, %._crit_edge.i.i.i ]
  %i.w = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.k, %._crit_edge.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.t, ptr %i.x, align 8, !tbaa !2712
  store ptr %i.q, ptr %i.y, align 8, !tbaa !2712
  store ptr %i.s, ptr %i.r, align 8, !tbaa !2709
  store ptr %i.p, ptr %i.u, align 8, !tbaa !2709
  %i.z = load <2 x ptr>, ptr %i.l, align 8, !tbaa !9970
  %i.aa = load <2 x ptr>, ptr %i.k, align 8, !tbaa !9970
  store <2 x ptr> %i.z, ptr %i.k, align 8, !tbaa !9970
  store <2 x ptr> %i.aa, ptr %i.l, align 8, !tbaa !9970
  br i1 %.not.i24.i.i.i, label %bb.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEC2EOSF_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEC2EOSF_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEC2EOSF_.exit: ; preds = %_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvNS7_11key_compareEmLb0EvEC2EOSG_.exit, %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8, !tbaa !434
  %.sroa.2.0..0.1.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..0.1.sroa_idx.i, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store ptr %.sroa.0.0.copyload.i, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.2.0.copyload.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i6 = load ptr, ptr %i.af, align 8, !tbaa !434
  %.sroa.2.0..0.1.sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload.i8 = load i64, ptr %.sroa.2.0..0.1.sroa_idx.i7, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %.sroa.0.0.copyload.i6, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.2.0.copyload.i8, ptr %i.ag, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E16on_response_implEiNS_4core17basic_string_viewIcEEiRNS_6system10error_codeESt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr %2, i64 %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::invalid_argument", align 8 ; 5 uses
  %7 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %8 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %.sroa.0 = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 209 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !9937, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %8, i32 noundef 25)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
