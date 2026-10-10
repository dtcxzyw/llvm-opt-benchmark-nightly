Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/global?download=true
inline.NumInlined: 823
inline.NumDeleted: 465
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3fmt3v116detail16get_dynamic_specINS1_17precision_checkerENS0_16basic_format_argINS0_7contextEEEEEiT0_:bb.a
bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 16, !tbaa !33
  %i.g = zext i32 %i.f to i64
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 16, !tbaa !33    ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.110) #18
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 16, !tbaa !33
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit

bb.h:                                             ; preds = %bb.a
  %i.k = load i128, ptr %0, align 16, !tbaa !33   ; 2 uses
  %i.l = icmp slt i128 %i.k, 0
  br i1 %i.l, label %bb.i, label %_ZN3fmt3v116detail17precision_checkerclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS5_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.110) #18
  unreachable

_ZN3fmt3v116detail17precision_checkerclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS5_.exit: ; preds = %bb.h
  %i.m = trunc i128 %i.k to i64
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit

bb.j:                                             ; preds = %bb.a
  %i.n = load i128, ptr %0, align 16, !tbaa !33
  %i.o = trunc i128 %i.n to i64
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #18
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #18
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #18
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #18
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #18
  unreachable

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #18
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #18
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #18
  unreachable

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #18
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #18
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.e, %bb.d, %bb.g, %_ZN3fmt3v116detail17precision_checkerclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS5_.exit, %bb.j
  %.0.i = phi i64 [ %i.j, %bb.g ], [ %i.m, %_ZN3fmt3v116detail17precision_checkerclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS5_.exit ], [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.o, %bb.j ] ; 2 uses
  %i.p = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.p, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit.thread9, label %bb.u

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit.thread9: ; preds = %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.8) #18
  unreachable

bb.u:                                             ; preds = %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit.thread, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit
  %.0.i8 = phi i64 [ %i.e, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit.thread ], [ %.0.i, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit ]
  %i.q = trunc nuw nsw i64 %.0.i8 to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !24     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !227
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !28
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !23
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #18
  unreachable

_ZNKSt6vectorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !28
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !28
  br label %_ZSt27__uninitialized_default_n_aIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit

_ZNSt6vectorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE13_M_deallocateEPSE_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #20
  br label %_ZNSt12_Vector_baseIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE13_M_deallocateEPSE_m.exit36

_ZNSt12_Vector_baseIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE13_M_deallocateEPSE_m.exit36: ; preds = %_ZNSt6vectorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !227
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEmSE_ET_SG_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE13_M_deallocateEPSE_m.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge7Runtime8Instance14ModuleInstance17unsafeAddInstanceINS1_14GlobalInstanceEJRKNS_3AST10GlobalTypeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEENSt9enable_ifIX11IsInstanceVIT_EEvE4typeERSt6vectorISt10unique_ptrISO_St14default_deleteISO_EESaISV_EERSR_IPSO_SaISZ_EEDpOT0_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(9) %3, ptr noundef nonnull align 16 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21, !noalias !238 ; 6 uses
  %.sroa.0.0.copyload.i = load i128, ptr %4, align 16, !tbaa !33, !noalias !238 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i128 %.sroa.0.0.copyload.i to i64
  %.sroa.2.0.extract.shift.i.i = lshr i128 %.sroa.0.0.copyload.i, 64 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i128 %.sroa.2.0.extract.shift.i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !241, !noalias !238
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0.0.extract.trunc.i.i, ptr %i.b, align 16, !noalias !238
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !33, !noalias !238
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.d = load i8, ptr %i.c, align 2, !tbaa !33, !noalias !238
  switch i8 %i.d, label %bb.b [
    i8 127, label %_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14GlobalInstanceEJRKNS0_3AST10GlobalTypeERNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
    i8 126, label %_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14GlobalInstanceEJRKNS0_3AST10GlobalTypeERNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
    i8 125, label %_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14GlobalInstanceEJRKNS0_3AST10GlobalTypeERNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
    i8 124, label %_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14GlobalInstanceEJRKNS0_3AST10GlobalTypeERNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
    i8 123, label %_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14GlobalInstanceEJRKNS0_3AST10GlobalTypeERNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
    i8 99, label %_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14GlobalInstanceEJRKNS0_3AST10GlobalTypeERNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne i128 %.sroa.2.0.extract.shift.i.i, 0
  tail call void @llvm.assume(i1 %i.e)
  br label %_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14GlobalInstanceEJRKNS0_3AST10GlobalTypeERNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14GlobalInstanceEJRKNS0_3AST10GlobalTypeERNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !244  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14GlobalInstanceEJRKNS0_3AST10GlobalTypeERNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.j = ptrtoint ptr %i.a to i64
  store i64 %i.j, ptr %i.g, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !244
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS3_EED2Ev.exit

bb.d:                                             ; preds = %_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14GlobalInstanceEJRKNS0_3AST10GlobalTypeERNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.l = load ptr, ptr %1, align 8, !tbaa !246    ; 10 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #18
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS3_EED2Ev.exit9

.noexc12:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i, %i.q  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i10 = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i10)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #21
          to label %.noexc13 unwind label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS3_EED2Ev.exit9 ; 10 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %i.a to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !26
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc13
  %i.z = add i64 %i.m, -8
  %i.aa = sub i64 %i.z, %i.n                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %5 = and i64 %i.aa, -8
  %6 = add i64 %5, 8                              ; 2 uses
  %7 = getelementptr i8, ptr %i.w, i64 %6
  %8 = getelementptr i8, ptr %i.l, i64 %6
  %bound0 = icmp ult ptr %i.w, %8
  %bound1 = icmp ult ptr %i.l, %7
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.l, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.ah = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !26, !alias.scope !249, !noalias !247
  %wide.load25 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !26, !alias.scope !249, !noalias !247
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !26, !alias.scope !250, !noalias !249
  store <2 x i64> %wide.load25, ptr %i.ai, align 8, !tbaa !26, !alias.scope !250, !noalias !249
  %i.aj = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !26, !alias.scope !249, !noalias !247
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !26, !alias.scope !249, !noalias !247
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !236

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader27

.lr.ph.i.i.i.i.preheader27:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader27, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader27 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader27 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.al = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !26, !alias.scope !248, !noalias !247
  store i64 %i.al, ptr %.012.i.i.i.i, align 8, !tbaa !26, !alias.scope !247, !noalias !248
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !26, !alias.scope !248, !noalias !247
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !237

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %.noexc13 ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i, label %.noexc, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #20
  br label %.noexc

.noexc:                                           ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  store ptr %i.w, ptr %1, align 8, !tbaa !246
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !244
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !245
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %.noexc
  %i.aq = phi ptr [ %i.g, %bb.c ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !251
  %.not.i.i6 = icmp eq ptr %i.at, %i.av
  br i1 %.not.i.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS3_EED2Ev.exit
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !19
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE9push_backEOS4_.exit

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS3_EED2Ev.exit
  %i.ax = load ptr, ptr %2, align 8, !tbaa !20    ; 4 uses
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 6 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.i, label %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #18
  unreachable

_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bc = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #21 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.ba ; 2 uses
  store ptr %i.ar, ptr %i.bj, align 8, !tbaa !26
  %i.bk = icmp sgt i64 %i.ba, 0
  br i1 %i.bk, label %bb.j, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #20
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.bi, ptr %2, align 8, !tbaa !20
  store ptr %i.bl, ptr %i.as, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bm, ptr %i.au, align 8, !tbaa !251
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.g, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  ret void

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS3_EED2Ev.exit9: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #20
  resume { ptr, i32 } %i.bn
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = distinct !{!2, !29}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{null, null, null}
!6 = !{i32 1, !"long-double-type", !"x86_fp80"}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"any p2 pointer", !15, i64 0}
!17 = !{!"p2 _ZTSN8WasmEdge7Runtime8Instance14GlobalInstanceE", !16, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!18, !17, i64 0}
!21 = !{!"p2 _ZTSN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE", !16, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISE_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!22, !21, i64 8}
!24 = !{!22, !21, i64 0}
!25 = !{!"p1 _ZTSN8WasmEdge7Runtime8Instance14GlobalInstanceE", !15, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTSN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE", !15, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"bool", !11, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!11, !11, i64 0}
!34 = !{!"_ZTSN8WasmEdge11ASTNodeAttrE", !11, i64 0}
!35 = !{!"p1 omnipotent char", !15, i64 0}
!36 = !{!"long", !11, i64 0}
!37 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !35, i64 0, !36, i64 8, !36, i64 16, !15, i64 24}
!38 = !{!37, !15, i64 24}
!39 = !{!37, !35, i64 0}
!40 = !{!37, !36, i64 16}
!41 = !{!37, !36, i64 8}
!42 = !{!"branch_weights", !"expected", i32 1430940, i32 2146052708}
!43 = !{!"_ZTSN3fmt3v1117presentation_typeE", !11, i64 0}
!44 = !{!"_ZTSN3fmt3v115align4typeE", !11, i64 0}
!45 = !{!"_ZTSN3fmt3v114sign4typeE", !11, i64 0}
!46 = !{!"_ZTSN3fmt3v116detail6fill_tE", !11, i64 0, !11, i64 4}
!47 = !{!"_ZTSN3fmt3v1112format_specsE", !12, i64 0, !12, i64 4, !43, i64 8, !44, i64 9, !45, i64 9, !30, i64 9, !30, i64 10, !30, i64 10, !46, i64 11}
!48 = !{!47, !12, i64 4}
!49 = !{!46, !11, i64 4}
!50 = !{!"_ZTSN3fmt3v1117basic_string_viewIcEE", !35, i64 0, !36, i64 8}
!51 = !{!50, !35, i64 0}
!52 = !{!50, !36, i64 8}
!53 = !{!47, !43, i64 8}
!54 = !{!12, !12, i64 0}
!55 = !{!"p1 _ZTSN3fmt3v1126basic_format_parse_contextIcEE", !15, i64 0}
!56 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !15, i64 0}
!57 = !{!"_ZTSN3fmt3v1126basic_format_parse_contextIcEE", !50, i64 0, !12, i64 16}
!58 = !{!57, !12, i64 16}
!59 = !{!"_ZTSN3fmt3v116detail11arg_id_kindE", !11, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"long long", !11, i64 0}
!62 = !{!"_ZTSN3fmt3v1117basic_format_argsINS0_7contextEEE", !61, i64 0, !11, i64 8}
!63 = !{!62, !61, i64 0}
!64 = !{!"_ZTSN3fmt3v116detail5valueINS0_7contextEEE", !11, i64 0}
!65 = !{!"_ZTSN3fmt3v116detail4typeE", !11, i64 0}
!66 = !{!"_ZTSN3fmt3v1116basic_format_argINS0_7contextEEE", !64, i64 0, !65, i64 16}
!67 = !{!66, !65, i64 16}
!68 = !{i64 0, i64 16, !33}
!69 = !{!65, !65, i64 0}
!70 = !{i64 0, i64 16, !33, i64 16, i64 4, !69}
!71 = !{!36, !36, i64 0}
!72 = !{!35, !35, i64 0}
!73 = !{!"p1 long", !15, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"_ZTSN3fmt3v116detail18find_escape_resultIcEE", !35, i64 0, !35, i64 8, !12, i64 16}
!76 = !{!75, !35, i64 0}
!77 = !{!75, !35, i64 8}
!78 = !{!75, !12, i64 16}
!79 = !{!47, !12, i64 0}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!"branch_weights", i32 8, i32 24}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!"_ZTSZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS4_E_", !30, i64 0, !50, i64 8, !35, i64 24, !36, i64 32}
!85 = !{!84, !30, i64 0}
!86 = !{!84, !35, i64 24}
!87 = !{!84, !36, i64 32}
!88 = !{!"branch_weights", i32 4, i32 28}
!89 = distinct !{!89, i1 false, !"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance9getGlobalEj"}
!90 = distinct !{!90, !89, !"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance9getGlobalEj: argument 0"}
!91 = distinct !{!91, !29}
!92 = distinct !{!92, i1 false, !"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance9getGlobalEj"}
!93 = distinct !{!93, !92, !"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance9getGlobalEj: argument 0"}
!94 = distinct !{!94, i1 false, !"_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor11instantiateERNS1_7Runtime12StackManagerERNS7_8Instance14ModuleInstanceERKNS1_3AST13GlobalSectionEE3$_0EEDaOT_"}
!95 = distinct !{!95, !94, !"_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor11instantiateERNS1_7Runtime12StackManagerERNS7_8Instance14ModuleInstanceERKNS1_3AST13GlobalSectionEE3$_0EEDaOT_: argument 0"}
!96 = distinct !{!96, i1 false, !"_ZN5cxx206detail23expected_map_error_implINS_8expectedIvN8WasmEdge7ErrCodeEEEZNS3_8Executor8Executor11instantiateERNS3_7Runtime12StackManagerERNS8_8Instance14ModuleInstanceERKNS3_3AST13GlobalSectionEE3$_0vTnPNSt9enable_ifIX9is_void_vIT1_EEvE4typeELPv0ES4_TnPNSJ_IXnt9is_void_vIT3_EEvE4typeELSO_0ES5_EET5_OT_OT0_"}
!97 = distinct !{!97, !96, !"_ZN5cxx206detail23expected_map_error_implINS_8expectedIvN8WasmEdge7ErrCodeEEEZNS3_8Executor8Executor11instantiateERNS3_7Runtime12StackManagerERNS8_8Instance14ModuleInstanceERKNS3_3AST13GlobalSectionEE3$_0vTnPNSt9enable_ifIX9is_void_vIT1_EEvE4typeELPv0ES4_TnPNSJ_IXnt9is_void_vIT3_EEvE4typeELSO_0ES5_EET5_OT_OT0_: argument 0"}
!98 = distinct !{!98, i1 false, !"_ZSt6invokeIZN8WasmEdge8Executor8Executor11instantiateERNS0_7Runtime12StackManagerERNS3_8Instance14ModuleInstanceERKNS0_3AST13GlobalSectionEE3$_0JNS0_7ErrCodeEEENSt13invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_"}
!99 = distinct !{!99, !98, !"_ZSt6invokeIZN8WasmEdge8Executor8Executor11instantiateERNS0_7Runtime12StackManagerERNS3_8Instance14ModuleInstanceERKNS0_3AST13GlobalSectionEE3$_0JNS0_7ErrCodeEEENSt13invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_: argument 0"}
!100 = distinct !{!100, i1 false, !"_ZSt8__invokeIZN8WasmEdge8Executor8Executor11instantiateERNS0_7Runtime12StackManagerERNS3_8Instance14ModuleInstanceERKNS0_3AST13GlobalSectionEE3$_0JNS0_7ErrCodeEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_"}
!101 = distinct !{!101, !100, !"_ZSt8__invokeIZN8WasmEdge8Executor8Executor11instantiateERNS0_7Runtime12StackManagerERNS3_8Instance14ModuleInstanceERKNS0_3AST13GlobalSectionEE3$_0JNS0_7ErrCodeEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_: argument 0"}
!102 = distinct !{!102, i1 false, !"_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_8Executor8Executor11instantiateERNS0_7Runtime12StackManagerERNS4_8Instance14ModuleInstanceERKNS0_3AST13GlobalSectionEE3$_0JS1_EET_St14__invoke_otherOT0_DpOT1_"}
!103 = distinct !{!103, !102, !"_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_8Executor8Executor11instantiateERNS0_7Runtime12StackManagerERNS4_8Instance14ModuleInstanceERKNS0_3AST13GlobalSectionEE3$_0JS1_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!104 = distinct !{!104, i1 false, !"_ZZN8WasmEdge8Executor8Executor11instantiateERNS_7Runtime12StackManagerERNS2_8Instance14ModuleInstanceERKNS_3AST13GlobalSectionEENK3$_0clINS_7ErrCodeEEEDaT_"}
!105 = distinct !{!105, !104, !"_ZZN8WasmEdge8Executor8Executor11instantiateERNS_7Runtime12StackManagerERNS2_8Instance14ModuleInstanceERKNS_3AST13GlobalSectionEENK3$_0clINS_7ErrCodeEEEDaT_: argument 0"}
!106 = !{!"p1 _ZTSN8WasmEdge3AST13GlobalSegmentE", !15, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST13GlobalSegmentESaIS2_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!107, !106, i64 0}
!109 = !{!107, !106, i64 8}
!110 = !{!90}
!111 = !{!"p1 _ZTSN8WasmEdge3AST11InstructionE", !15, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!112, !111, i64 8}
!115 = !{!"_ZTSN5cxx206detail21expected_storage_baseIvN8WasmEdge7ErrCodeELb0ELb1EEE", !30, i64 0, !11, i64 4}
!116 = !{!115, !30, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!118 = !{!117, !27, i64 8}
!119 = !{!93}
!120 = !{!105, !103, !101, !99, !97, !95}
!121 = !{!"_ZTSN8WasmEdge7ErrInfo7InfoASTE", !34, i64 0}
!122 = !{!121, !34, i64 0}
!123 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!124 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !123, i64 0, !36, i64 8, !11, i64 16}
!125 = !{!124, !35, i64 0}
!126 = !{!124, !36, i64 8}
!127 = distinct !{!127, !29}
!128 = !{!55, !55, i64 0}
!129 = !{!56, !56, i64 0}
!130 = distinct !{!130, !29}
!131 = !{!"_ZTSN3fmt3v116detail23dynamic_spec_id_handlerIcEE", !55, i64 0, !56, i64 8}
!132 = !{!131, !56, i64 8}
!133 = !{i64 8}
!134 = !{!131, !55, i64 0}
!135 = distinct !{!135, i1 false, !"_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_"}
!136 = distinct !{!136, !135, !"_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_: argument 0"}
!137 = distinct !{!137, i1 false, !"_ZNK3fmt3v117context3argEi"}
!138 = distinct !{!138, !137, !"_ZNK3fmt3v117context3argEi: argument 0"}
!139 = distinct !{!139, i1 false, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!140 = distinct !{!140, !139, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!141 = distinct !{!141, i1 false, !"_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_"}
!142 = distinct !{!142, !141, !"_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_: argument 0"}
!143 = distinct !{!143, i1 false, !"_ZNK3fmt3v117context3argEi"}
!144 = distinct !{!144, !143, !"_ZNK3fmt3v117context3argEi: argument 0"}
!145 = distinct !{!145, i1 false, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!146 = distinct !{!146, !145, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!147 = !{!"_ZTSN3fmt3v116detail7arg_refIcEE", !59, i64 0, !11, i64 8}
!148 = !{!"_ZTSN3fmt3v116detail20dynamic_format_specsIcEE", !47, i64 0, !147, i64 16, !147, i64 40}
!149 = !{!"_ZTSN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EEE", !148, i64 0}
!150 = !{!149, !59, i64 16}
!151 = !{!"p1 _ZTSN3fmt3v116detail6bufferIcEE", !15, i64 0}
!152 = !{!151, !151, i64 0}
!153 = !{!136}
!154 = !{!138}
!155 = !{!140}
!156 = !{!140, !138, !136}
!157 = !{!142}
!158 = !{!144}
!159 = !{!146}
!160 = !{!146, !144, !142}
!161 = !{!34, !34, i64 0}
!162 = distinct !{!162, i1 false, !"_ZN3fmt3v116detail11find_escapeEPKcS3_"}
!163 = distinct !{!163, !162, !"_ZN3fmt3v116detail11find_escapeEPKcS3_: argument 0"}
!164 = distinct !{!164, !29}
!165 = distinct !{!165, !29}
!166 = distinct !{!166, !29, !80, !81}
!167 = distinct !{!167, !29, !80, !81}
!168 = distinct !{!168, !83}
!169 = distinct !{!169, !29, !80}
!170 = distinct !{!170, !29}
!171 = !{!"_ZTSZN3fmt3v116detail16code_point_indexENS0_17basic_string_viewIcEEmEUljS3_E_", !35, i64 0, !73, i64 8, !73, i64 16}
!172 = !{!171, !35, i64 0}
!173 = !{!163}
!174 = distinct !{null, null}
!175 = distinct !{null, null, null, null}
!176 = distinct !{!176, !29, !80, !81}
!177 = distinct !{!177, !29, !80, !81}
!178 = distinct !{!178, !83}
!179 = distinct !{!179, !29, !80}
!180 = distinct !{!180, !29}
!181 = distinct !{!181, !29, !80, !81}
!182 = distinct !{!182, !29, !80, !81}
!183 = distinct !{!183, !83}
!184 = distinct !{!184, !29, !80}
!185 = distinct !{!185, !29}
!186 = distinct !{!186, !29}
!187 = distinct !{!187, !29, !80, !81}
!188 = distinct !{!188, !29, !80, !81}
!189 = distinct !{!189, !83}
!190 = distinct !{!190, !29, !80}
!191 = distinct !{!191, !29}
!192 = !{!"_ZTSZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEE17count_code_points", !73, i64 0}
!193 = !{!192, !73, i64 0}
!194 = distinct !{null, null, null, null}
!195 = distinct !{!195, !29}
!196 = distinct !{!196, !29, !80, !81}
!197 = distinct !{!197, !29, !80, !81}
!198 = distinct !{!198, !83}
!199 = distinct !{!199, !29, !80}
!200 = distinct !{!200, !29}
!201 = distinct !{!201, i1 false, !"_ZN3fmt3v116detail11find_escapeEPKcS3_"}
!202 = distinct !{!202, !201, !"_ZN3fmt3v116detail11find_escapeEPKcS3_: argument 0"}
!203 = distinct !{!203, !29, !80, !81}
!204 = distinct !{!204, !29, !80, !81}
!205 = distinct !{!205, !83}
!206 = distinct !{!206, !29, !80}
!207 = distinct !{!207, !29}
!208 = !{!202}
!209 = distinct !{!209, i1 false, !"_ZN3fmt3v117context3argENS0_17basic_string_viewIcEE"}
!210 = distinct !{!210, !209, !"_ZN3fmt3v117context3argENS0_17basic_string_viewIcEE: argument 0"}
!211 = distinct !{!211, i1 false, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!212 = distinct !{!212, !211, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!213 = distinct !{!213, !29}
!214 = distinct !{!214, i1 false, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!215 = distinct !{!215, !214, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!216 = !{!210}
!217 = !{!212}
!218 = !{!212, !210}
!219 = !{!"p1 _ZTSN3fmt3v116detail14named_arg_infoIcEE", !15, i64 0}
!220 = !{!"_ZTSN3fmt3v116detail15named_arg_valueIcEE", !219, i64 0, !36, i64 8}
!221 = !{!220, !36, i64 8}
!222 = !{!220, !219, i64 0}
!223 = !{!"_ZTSN3fmt3v116detail14named_arg_infoIcEE", !35, i64 0, !12, i64 8}
!224 = !{!223, !35, i64 0}
!225 = !{!223, !12, i64 8}
!226 = !{!215, !212, !210}
!227 = !{!22, !21, i64 16}
!228 = distinct !{!228, i1 false, !"_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14GlobalInstanceEJRKNS0_3AST10GlobalTypeERNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!229 = distinct !{!229, !228, !"_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14GlobalInstanceEJRKNS0_3AST10GlobalTypeERNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!230 = distinct !{!230, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!231 = distinct !{!231, !230, !"_ZSt19__relocate_object_aISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!232 = distinct !{!232, !230, !"_ZSt19__relocate_object_aISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!233 = distinct !{!233, i1 false, !"LVerDomain"}
!234 = distinct !{!234, !233}
!235 = distinct !{!235, !233}
!236 = distinct !{!236, !29, !80, !81}
!237 = distinct !{!237, !29, !80}
!238 = !{!229}
!239 = !{!"_ZTSN8WasmEdge6ValMutE", !11, i64 0}
!240 = !{!239, !239, i64 0}
!241 = !{i64 0, i64 8, !33, i64 8, i64 1, !240}
!242 = !{!"p1 _ZTSSt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS3_EE", !15, i64 0}
!243 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance14GlobalInstanceESt14default_deleteIS4_EESaIS7_EE17_Vector_impl_dataE", !242, i64 0, !242, i64 8, !242, i64 16}
!244 = !{!243, !242, i64 8}
!245 = !{!243, !242, i64 16}
!246 = !{!243, !242, i64 0}
!247 = !{!231}
!248 = !{!232}
!249 = !{!232, !234}
!250 = !{!231, !235}
!251 = !{!18, !17, i64 16}
end_hunk_0
