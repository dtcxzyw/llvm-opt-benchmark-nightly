Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/json?download=true
inline.NumInlined: 1782
inline.NumDeleted: 944
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4LIEF3DEX11JsonVisitor5visitERKNS0_9PrototypeE:bb.a
  %i.bm = phi i8 [ 2, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EEC2EmRKSF_.exit.i.i.i.i.i.i.i.thread ], [ %.pre46, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit.loopexit ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EEC2EmRKSF_.exit.i.i.i.i.i.i.i.thread ], [ %i.bl, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit.loopexit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.bo, align 8, !tbaa !47
  %i.bp = ptrtoint ptr %i.ba to i64
  %i.bq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull @.str.30) ; 3 uses
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !37  ; 2 uses
  store i8 %i.bm, ptr %i.bq, align 8, !tbaa !37
  store i8 %i.br, ptr %9, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i12 = load ptr, ptr %i.bs, align 8, !tbaa !38
  store i64 %i.bp, ptr %i.bs, align 8, !tbaa !38
  store ptr %.sroa.0.0.copyload.i.i12, ptr %i.bn, align 8, !tbaa !38
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i8 noundef zeroext %i.br), !inline_history !2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %.sroa.0.0.lcssa, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 8
  %i.bu = load i8, ptr %.0.i2.i, align 8, !tbaa !31
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i8 noundef zeroext %i.bu), !inline_history !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, %.sroa.9.0.lcssa
  br i1 %.not.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i, label %.lr.ph.i, !llvm.loop !8

_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i: ; preds = %.lr.ph.i, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i
  %i.bw = sub i64 %.sroa.18.0.lcssa, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.bw) #20, !inline_history !9
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 1280) (i8, ptr @_ZTVN4LIEF11JsonVisitorE, i64 16), ptr %2, align 8, !tbaa !28
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.by = load i8, ptr %i.as, align 8, !tbaa !31
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i8 noundef zeroext %i.by), !inline_history !1
  call void @_ZN4LIEF7VisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(72) %2) #17, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit
  %i.bz = phi ptr [ %.pre, %.lr.ph ], [ %i.cw, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit ]
  %.sroa.18.036 = phi ptr [ null, %.lr.ph ], [ %.sroa.18.1, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit ] ; 5 uses
  %.sroa.9.035 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.1, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit ] ; 3 uses
  %.sroa.0.034 = phi ptr [ null, %.lr.ph ], [ %.sroa.0.1, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit ] ; 6 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN4LIEF11JsonVisitorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #17, !inline_history !0
  store ptr getelementptr inbounds nuw inrange(-16, 1280) (i8, ptr @_ZTVN4LIEF3DEX11JsonVisitorE, i64 16), ptr %6, align 8, !tbaa !28
  call void @_ZN4LIEF7Visitor8dispatchINS_3DEX4TypeEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ca)
  %i.cb = load ptr, ptr %6, align 8, !tbaa !28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(56) %6) #17, !inline_history !12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.x)
  %.not.i = icmp eq ptr %.sroa.9.035, %.sroa.18.036
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.035, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %7, align 8, !tbaa !40
  store ptr null, ptr %i.y, align 8, !tbaa !38
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  %i.ce = ptrtoint ptr %.sroa.18.036 to i64
  %i.cf = ptrtoint ptr %.sroa.0.034 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 4 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775792
  br i1 %i.ch, label %bb.m, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #19, !inline_history !10
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.ci = ashr exact i64 %i.cg, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 576460752303423487)
  %i.cm = select i1 %i.ck, i64 576460752303423487, i64 %i.cl ; 3 uses
  %.not.i.i14 = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i14)
  %i.cn = shl nuw nsw i64 %i.cm, 4
  %i.co = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #18, !inline_history !10 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %7, align 8, !tbaa !40
  store ptr null, ptr %i.y, align 8, !tbaa !38
  %.not.i.i24.i = icmp eq ptr %.sroa.0.034, %.sroa.18.036
  br i1 %.not.i.i24.i, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i15
  %.0.i.i26.i = phi ptr [ %i.cs, %.lr.ph.i15 ], [ %i.co, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.09.i.i25.i = phi ptr [ %i.cr, %.lr.ph.i15 ], [ %.sroa.0.034, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i26.i, ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i25.i, i64 16, i1 false), !tbaa.struct !48, !alias.scope !188
  store i8 0, ptr %.09.i.i25.i, align 8, !tbaa !40, !alias.scope !189, !noalias !187
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i.i25.i, i64 8
  store ptr null, ptr %i.cq, align 8, !tbaa !38, !alias.scope !189, !noalias !187
  %i.cr = getelementptr inbounds nuw i8, ptr %.09.i.i25.i, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i26.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.cr, %.sroa.18.036
  br i1 %.not.i.i.i16, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i, label %.lr.ph.i15, !llvm.loop !11

_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i: ; preds = %.lr.ph.i15, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %.0.i.i.lcssa.i = phi ptr [ %i.co, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i ], [ %i.cs, %.lr.ph.i15 ]
  %.not.i16.i = icmp eq ptr %.sroa.0.034, null
  br i1 %.not.i16.i, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.034, i64 noundef %i.cg) #20, !inline_history !10
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit: ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i, %bb.n
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cm
  %.pre44 = load i8, ptr %7, align 8, !tbaa !31
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit: ; preds = %bb.k, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit
  %i.cu = phi i8 [ %.pre44, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit ], [ 0, %bb.k ]
  %.sroa.0.1 = phi ptr [ %i.co, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit ], [ %.sroa.0.034, %bb.k ] ; 2 uses
  %.0.i.i.lcssa.i.pn = phi ptr [ %.0.i.i.lcssa.i, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit ], [ %.sroa.9.035, %bb.k ]
  %.sroa.18.1 = phi ptr [ %i.ct, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit ], [ %.sroa.18.036, %bb.k ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa.i.pn, i64 16 ; 2 uses
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i8 noundef zeroext %i.cu), !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  store ptr getelementptr inbounds nuw inrange(-16, 1280) (i8, ptr @_ZTVN4LIEF11JsonVisitorE, i64 16), ptr %6, align 8, !tbaa !28
  %i.cv = load i8, ptr %i.x, align 8, !tbaa !31
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef zeroext %i.cv), !inline_history !1
  call void @_ZN4LIEF7VisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(72) %6) #17, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  store ptr %i.cw, ptr %i.w, align 8, !tbaa !83
  %i.cx = load i64, ptr %i.g, align 8, !tbaa !88
  %i.cy = add nsw i64 %i.cx, 1                    ; 2 uses
  store i64 %i.cy, ptr %i.g, align 8, !tbaa !88
  %i.cz = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.da = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.df = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = icmp ne i64 %i.dd, %i.di
  %i.dk = load i64, ptr %i.h, align 8
  %i.dl = icmp ne i64 %i.cy, %i.dk
  %.not3.i = select i1 %i.dj, i1 true, i1 %i.dl
  br i1 %.not3.i, label %bb.j, label %._crit_edge.loopexit
}

declare noundef ptr @_ZNK4LIEF3DEX9Prototype11return_typeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZNK4LIEF3DEX9Prototype15parameters_typeEv(ptr dead_on_unwind writable sret(%"class.LIEF::ref_iterator.155") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator.155") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !78     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.c, label %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i, !prof !45

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !83    ; 3 uses
  %.pre5 = load ptr, ptr %i.a, align 8, !tbaa !83 ; 2 uses
  %.pre6 = ptrtoint ptr %.pre5 to i64
  %.pre7 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre5, %.pre
  br label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi8 = phi i64 [ %.pre7, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre6, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi8            ; 10 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !63

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit.thread, label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit

_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.f

_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit.thread: ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !82
  store ptr %i.o, ptr %i.k, align 8, !tbaa !82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i

.thread:                                          ; preds = %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit.thread, %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !80
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i, !prof !89

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit.thread, %bb.f
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #18 ; 7 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !80
  %2 = icmp samesign ugt i64 %i.l, 8
  br i1 %2, label %bb.h, label %bb.i, !prof !90

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.k, i64 %i.l, i1 false)
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i
  %i.x = icmp eq i64 %i.l, 8
  br i1 %i.x, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread: ; preds = %bb.i
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !82
  store ptr %i.y, ptr %i.t, align 8, !tbaa !82
  store ptr %i.v, ptr %i.u, align 8, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.aa, align 8, !tbaa !88
  br label %bb.j

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit: ; preds = %.thread, %bb.h, %bb.i
  %i.ab = phi ptr [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ %i.q, %.thread ]
  %i.ac = phi ptr [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ %i.p, %.thread ]
  %i.ad = phi ptr [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ null, %.thread ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.af, align 8, !tbaa !88
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #20
  br label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit:  ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE3endEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator.155") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !78     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.c, label %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i, !prof !45

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !83    ; 3 uses
  %.pre6 = load ptr, ptr %i.a, align 8, !tbaa !83 ; 2 uses
  %.pre7 = ptrtoint ptr %.pre6 to i64
  %.pre8 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre6, %.pre
  br label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi9 = phi i64 [ %.pre8, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre7, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi9            ; 10 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !63

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit.thread, label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit

_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.f

_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit.thread: ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !82
  store ptr %i.o, ptr %i.k, align 8, !tbaa !82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i

.thread:                                          ; preds = %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit.thread, %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !80
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i, !prof !89

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit.thread, %bb.f
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #18 ; 8 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !80
  %2 = icmp samesign ugt i64 %i.l, 8
  br i1 %2, label %bb.h, label %bb.i, !prof !90

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.k, i64 %i.l, i1 false)
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i
  %i.x = icmp eq i64 %i.l, 8
  br i1 %i.x, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread: ; preds = %bb.i
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !82
  store ptr %i.y, ptr %i.t, align 8, !tbaa !82
  store ptr %i.v, ptr %i.u, align 8, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !88
  br label %bb.j

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit: ; preds = %.thread, %bb.h, %bb.i
  %i.ab = phi ptr [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ %i.q, %.thread ] ; 3 uses
  %i.ac = phi ptr [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ %i.p, %.thread ]
  %i.ad = phi ptr [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ null, %.thread ] ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !88
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit
  %i.ag = phi ptr [ %i.aa, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread ], [ %i.af, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ]
  %i.ah = phi ptr [ %i.z, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread ], [ %i.ae, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ]
  %i.ai = phi ptr [ %i.t, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread ], [ %i.ad, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ]
  %i.aj = phi ptr [ %i.v, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread ], [ %i.ab, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #20
  br label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit:  ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit, %bb.j
  %i.ak = phi ptr [ %i.af, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ], [ %i.ag, %bb.j ]
  %i.al = phi ptr [ %i.ae, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ], [ %i.ah, %bb.j ]
  %i.am = phi ptr [ %i.ad, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.ab, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ], [ %i.aj, %bb.j ] ; 2 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !83
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  store i64 %i.ar, ptr %i.ak, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3DEX11JsonVisitor5visitERKNS0_7MapItemE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 3 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 3 uses
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef i32 @_ZNK4LIEF3DEX7MapItem6offsetEv(ptr noundef nonnull align 8 dereferenceable(20) %1) #17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %2, align 8
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.31) ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !37    ; 2 uses
  store i8 6, ptr %i.f, align 8, !tbaa !37
  store i8 %i.g, ptr %2, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  store i64 %i.d, ptr %i.h, align 8, !tbaa !38
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.c, align 8, !tbaa !38
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext %i.g), !inline_history !2
  %i.i = call noundef i32 @_ZNK4LIEF3DEX7MapItem4sizeEv(ptr noundef nonnull align 8 dereferenceable(20) %1) #17
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %3, align 8
  %i.k = zext i32 %i.i to i64
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.32) ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !37    ; 2 uses
  store i8 6, ptr %i.l, align 8, !tbaa !37
  store i8 %i.m, ptr %3, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i4 = load ptr, ptr %i.n, align 8, !tbaa !38
  store i64 %i.k, ptr %i.n, align 8, !tbaa !38
  store ptr %.sroa.0.0.copyload.i.i4, ptr %i.j, align 8, !tbaa !38
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef zeroext %i.m), !inline_history !2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.o = call noundef zeroext i16 @_ZNK4LIEF3DEX7MapItem4typeEv(ptr noundef nonnull align 8 dereferenceable(20) %1) #17
  %i.p = call noundef ptr @_ZN4LIEF3DEX9to_stringENS0_7MapItem5TYPESE(i16 noundef zeroext %i.o) #17
  store ptr %i.p, ptr %i.a, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEPKcTnNSt9enable_ifIXntsr3std7is_sameIT0_NT_8string_tEEE5valueEiE4typeELi0EEEvRSN_RKSM_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.23) ; 3 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !37    ; 2 uses
  %i.s = load i8, ptr %4, align 8, !tbaa !37
  store i8 %i.s, ptr %i.q, align 8, !tbaa !37
  store i8 %i.r, ptr %4, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i5 = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38
  store i64 %i.v, ptr %i.t, align 8, !tbaa !38
  store ptr %.sroa.0.0.copyload.i.i5, ptr %i.u, align 8, !tbaa !38
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef zeroext %i.r), !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare noundef i32 @_ZNK4LIEF3DEX7MapItem6offsetEv(ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #3

declare noundef i32 @_ZNK4LIEF3DEX7MapItem4sizeEv(ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #3

declare noundef ptr @_ZN4LIEF3DEX9to_stringENS0_7MapItem5TYPESE(i16 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i16 @_ZNK4LIEF3DEX7MapItem4typeEv(ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3DEX11JsonVisitor5visitERKNS0_7MapListE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.LIEF::ref_iterator.157", align 8 ; 7 uses
  %3 = alloca %"class.LIEF::ref_iterator.157", align 8 ; 10 uses
  %4 = alloca %"class.LIEF::ref_iterator.157", align 8 ; 8 uses
  %5 = alloca %"class.LIEF::DEX::JsonVisitor", align 8 ; 11 uses
  %6 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %7 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNK4LIEF3DEX7MapList5itemsEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator.157") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNK4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator.157") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZNK4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE3endEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator.157") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.f = load ptr, ptr %3, align 8, !tbaa !94     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.k = load ptr, ptr %4, align 8, !tbaa !94     ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ne i64 %i.i, %i.n
  %i.p = load i64, ptr %i.c, align 8
  %i.q = load i64, ptr %i.d, align 8
  %i.r = icmp ne i64 %i.p, %i.q
  %.not3.i29 = select i1 %i.o, i1 true, i1 %i.r
  br i1 %.not3.i29, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !194
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit
  %i.w = ptrtoint ptr %.sroa.18.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.x = phi ptr [ %i.f, %bb.a ], [ %i.cn, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.9.1, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.18.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.w, %._crit_edge.loopexit ]
  %.lcssa24 = phi ptr [ %i.k, %bb.a ], [ %i.cs, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa22 = phi i64 [ %i.m, %bb.a ], [ %i.cu, %._crit_edge.loopexit ]
  %.not.i.i.i.i = icmp eq ptr %.lcssa24, null
  br i1 %.not.i.i.i.i, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !96
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %.lcssa22
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa24, i64 noundef %i.ab) #20
  %.pre41 = load ptr, ptr %3, align 8, !tbaa !94
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEED2Ev.exit

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEED2Ev.exit: ; preds = %._crit_edge, %bb.b
  %i.ac = phi ptr [ %i.x, %._crit_edge ], [ %.pre41, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.not.i.i.i.i5 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i5, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEED2Ev.exit6, label %bb.c

bb.c:                                             ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #20
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEED2Ev.exit6

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEED2Ev.exit6: ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEED2Ev.exit, %bb.c
end_hunk_0
begin_hunk_1_@_ZN4LIEF3DEX11JsonVisitor5visitERKNS0_7MapListE:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !6

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre42 = load i8, ptr %7, align 8, !tbaa !37
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit.loopexit, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EEC2EmRKSF_.exit.i.i.i.i.i.i.i.thread
  %i.ba = phi i8 [ 2, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EEC2EmRKSF_.exit.i.i.i.i.i.i.i.thread ], [ %.pre42, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit.loopexit ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EEC2EmRKSF_.exit.i.i.i.i.i.i.i.thread ], [ %i.az, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit.loopexit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.bc, align 8, !tbaa !47
  %i.bd = ptrtoint ptr %i.ao to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull @.str.33) ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !37  ; 2 uses
  store i8 %i.ba, ptr %i.bf, align 8, !tbaa !37
  store i8 %i.bg, ptr %7, align 8, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bh, align 8, !tbaa !38
  store i64 %i.bd, ptr %i.bh, align 8, !tbaa !38
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bb, align 8, !tbaa !38
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i8 noundef zeroext %i.bg), !inline_history !2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.sroa.0.0.lcssa, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 8
  %i.bj = load i8, ptr %.0.i2.i, align 8, !tbaa !31
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i8 noundef zeroext %i.bj), !inline_history !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, %.sroa.9.0.lcssa
  br i1 %.not.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i, label %.lr.ph.i, !llvm.loop !8

_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i: ; preds = %.lr.ph.i, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS3_ISD_SaISD_EESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SJ_EE5valueEiE4typeELi0EEEOT_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i
  %i.bl = sub i64 %.sroa.18.0.lcssa, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.bl) #20, !inline_history !9
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit.i, %bb.g
  ret void

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit
  %i.bm = phi ptr [ %.pre, %.lr.ph ], [ %i.cj, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit ]
  %.sroa.18.032 = phi ptr [ null, %.lr.ph ], [ %.sroa.18.1, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit ] ; 5 uses
  %.sroa.9.031 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.1, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit ] ; 3 uses
  %.sroa.0.030 = phi ptr [ null, %.lr.ph ], [ %.sroa.0.1, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit ] ; 6 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN4LIEF11JsonVisitorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #17, !inline_history !0
  store ptr getelementptr inbounds nuw inrange(-16, 1280) (i8, ptr @_ZTVN4LIEF3DEX11JsonVisitorE, i64 16), ptr %5, align 8, !tbaa !28
  call void @_ZN4LIEF7Visitor8dispatchINS_3DEX7MapItemEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(20) %i.bn)
  %i.bo = load ptr, ptr %5, align 8, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(56) %5) #17, !inline_history !190
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
  %.not.i = icmp eq ptr %.sroa.9.031, %.sroa.18.032
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.031, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %6, align 8, !tbaa !40
  store ptr null, ptr %i.u, align 8, !tbaa !38
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.br = ptrtoint ptr %.sroa.18.032 to i64
  %i.bs = ptrtoint ptr %.sroa.0.030 to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 4 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775792
  br i1 %i.bu, label %bb.k, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #19, !inline_history !10
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.j
  %i.bv = ashr exact i64 %i.bt, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 576460752303423487)
  %i.bz = select i1 %i.bx, i64 576460752303423487, i64 %i.by ; 3 uses
  %.not.i.i10 = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i10)
  %i.ca = shl nuw nsw i64 %i.bz, 4
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #18, !inline_history !10 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %6, align 8, !tbaa !40
  store ptr null, ptr %i.u, align 8, !tbaa !38
  %.not.i.i24.i = icmp eq ptr %.sroa.0.030, %.sroa.18.032
  br i1 %.not.i.i24.i, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i11
  %.0.i.i26.i = phi ptr [ %i.cf, %.lr.ph.i11 ], [ %i.cb, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.09.i.i25.i = phi ptr [ %i.ce, %.lr.ph.i11 ], [ %.sroa.0.030, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i26.i, ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i25.i, i64 16, i1 false), !tbaa.struct !48, !alias.scope !196
  store i8 0, ptr %.09.i.i25.i, align 8, !tbaa !40, !alias.scope !197, !noalias !195
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i.i25.i, i64 8
  store ptr null, ptr %i.cd, align 8, !tbaa !38, !alias.scope !197, !noalias !195
  %i.ce = getelementptr inbounds nuw i8, ptr %.09.i.i25.i, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i26.i, i64 16 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ce, %.sroa.18.032
  br i1 %.not.i.i.i12, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i, label %.lr.ph.i11, !llvm.loop !11

_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i: ; preds = %.lr.ph.i11, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %.0.i.i.lcssa.i = phi ptr [ %i.cb, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i ], [ %i.cf, %.lr.ph.i11 ]
  %.not.i16.i = icmp eq ptr %.sroa.0.030, null
  br i1 %.not.i16.i, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.030, i64 noundef %i.bt) #20, !inline_history !10
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit: ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i, %bb.l
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.bz
  %.pre40 = load i8, ptr %6, align 8, !tbaa !31
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12emplace_backIJSD_EEERSD_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit
  %i.ch = phi i8 [ %.pre40, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit ], [ 0, %bb.i ]
  %.sroa.0.1 = phi ptr [ %i.cb, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit ], [ %.sroa.0.030, %bb.i ] ; 2 uses
  %.0.i.i.lcssa.i.pn = phi ptr [ %.0.i.i.lcssa.i, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit ], [ %.sroa.9.031, %bb.i ]
  %.sroa.18.1 = phi ptr [ %i.cg, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit ], [ %.sroa.18.032, %bb.i ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa.i.pn, i64 16 ; 2 uses
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef zeroext %i.ch), !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  store ptr getelementptr inbounds nuw inrange(-16, 1280) (i8, ptr @_ZTVN4LIEF11JsonVisitorE, i64 16), ptr %5, align 8, !tbaa !28
  %i.ci = load i8, ptr %i.t, align 8, !tbaa !31
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef zeroext %i.ci), !inline_history !1
  call void @_ZN4LIEF7VisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(72) %5) #17, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.sroa.0.0.copyload.i = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.s, align 8, !tbaa !99
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !104
  %i.cl = add nsw i64 %i.ck, 1                    ; 2 uses
  store i64 %i.cl, ptr %i.c, align 8, !tbaa !104
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.cn = load ptr, ptr %3, align 8, !tbaa !94    ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.cs = load ptr, ptr %4, align 8, !tbaa !94    ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = icmp ne i64 %i.cq, %i.cv
  %i.cx = load i64, ptr %i.d, align 8
  %i.cy = icmp ne i64 %i.cl, %i.cx
  %.not3.i = select i1 %i.cw, i1 true, i1 %i.cy
  br i1 %.not3.i, label %bb.h, label %._crit_edge.loopexit
}

declare void @_ZNK4LIEF3DEX7MapList5itemsEv(ptr dead_on_unwind writable sret(%"class.LIEF::ref_iterator.157") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator.157") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.c, label %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i, !prof !45

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !99    ; 3 uses
  %.pre5 = load ptr, ptr %i.a, align 8, !tbaa !99 ; 2 uses
  %.pre6 = ptrtoint ptr %.pre5 to i64
  %.pre7 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre5, %.pre
  br label %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi8 = phi i64 [ %.pre7, %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre6, %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi8            ; 10 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !63

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit.thread, label %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit

_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.f

_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit.thread: ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !98
  store ptr %i.o, ptr %i.k, align 8, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i.i

.thread:                                          ; preds = %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit.thread, %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !96
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i.i, !prof !89

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit.thread, %bb.f
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #18 ; 7 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !96
  %2 = icmp samesign ugt i64 %i.l, 8
  br i1 %2, label %bb.h, label %bb.i, !prof !90

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.k, i64 %i.l, i1 false)
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i.i
  %i.x = icmp eq i64 %i.l, 8
  br i1 %i.x, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread: ; preds = %bb.i
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !98
  store ptr %i.y, ptr %i.t, align 8, !tbaa !98
  store ptr %i.v, ptr %i.u, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.aa, align 8, !tbaa !104
  br label %bb.j

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit: ; preds = %.thread, %bb.h, %bb.i
  %i.ab = phi ptr [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ %i.q, %.thread ]
  %i.ac = phi ptr [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ %i.p, %.thread ]
  %i.ad = phi ptr [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ null, %.thread ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.af, align 8, !tbaa !104
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #20
  br label %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EED2Ev.exit: ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE3endEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator.157") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.c, label %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i, !prof !45

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !99    ; 3 uses
  %.pre6 = load ptr, ptr %i.a, align 8, !tbaa !99 ; 2 uses
  %.pre7 = ptrtoint ptr %.pre6 to i64
  %.pre8 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre6, %.pre
  br label %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi9 = phi i64 [ %.pre8, %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre7, %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIPN4LIEF3DEX7MapItemEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi9            ; 10 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !63

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit.thread, label %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit

_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.f

_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit.thread: ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !98
  store ptr %i.o, ptr %i.k, align 8, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i.i

.thread:                                          ; preds = %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit.thread, %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !96
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i.i, !prof !89

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EEC2ERKS5_.exit.thread, %bb.f
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #18 ; 8 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !96
  %2 = icmp samesign ugt i64 %i.l, 8
  br i1 %2, label %bb.h, label %bb.i, !prof !90

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.k, i64 %i.l, i1 false)
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX7MapItemESaIS3_EEC2EmRKS4_.exit.i.i
  %i.x = icmp eq i64 %i.l, 8
  br i1 %i.x, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread: ; preds = %bb.i
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !98
  store ptr %i.y, ptr %i.t, align 8, !tbaa !98
  store ptr %i.v, ptr %i.u, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !104
  br label %bb.j

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit: ; preds = %.thread, %bb.h, %bb.i
  %i.ab = phi ptr [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ %i.q, %.thread ] ; 3 uses
  %i.ac = phi ptr [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ %i.p, %.thread ]
  %i.ad = phi ptr [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ null, %.thread ] ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !104
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit
  %i.ag = phi ptr [ %i.aa, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread ], [ %i.af, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ]
  %i.ah = phi ptr [ %i.z, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread ], [ %i.ae, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ]
  %i.ai = phi ptr [ %i.t, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread ], [ %i.ad, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ]
  %i.aj = phi ptr [ %i.v, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread ], [ %i.ab, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #20
  br label %_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4LIEF3DEX7MapItemESaIS3_EED2Ev.exit: ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit, %bb.j
  %i.ak = phi ptr [ %i.af, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ], [ %i.ag, %bb.j ]
  %i.al = phi ptr [ %i.ae, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ], [ %i.ah, %bb.j ]
  %i.am = phi ptr [ %i.ad, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.ab, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX7MapItemESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit ], [ %i.aj, %bb.j ] ; 2 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !99
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  store i64 %i.ar, ptr %i.ak, align 8, !tbaa !104
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF3DEX11JsonVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 1280) (i8, ptr @_ZTVN4LIEF11JsonVisitorE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.a, align 8, !tbaa !31
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %i.c), !inline_history !1
  tail call void @_ZN4LIEF7VisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(72) %0) #17, !inline_history !32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #20
  ret void
}

declare void @_ZN4LIEF7VisitorclEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

declare void @_ZN4LIEF7Visitor5visitERKNS_6ObjectE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_6BinaryE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_7SectionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_6SymbolE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_10RelocationE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF6BinaryE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF6HeaderE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF7SectionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF7SegmentE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF12DynamicEntryE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF17DynamicEntryArrayE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF19DynamicEntryLibraryE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF19DynamicSharedObjectE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF21DynamicEntryAuxiliaryE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF18DynamicEntryFilterE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF19DynamicEntryRunPathE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF17DynamicEntryRpathE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF17DynamicEntryFlagsE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF6SymbolE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF10RelocationE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Visitor5visitERKNS_3ELF13SymbolVersionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
end_hunk_1
