Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-class_parser?download=true
inline.NumInlined: 16246
inline.NumDeleted: 2216
loop-unroll.NumCompletelyUnrolled: 81
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !43
  %.not.i1728.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i1728.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i155

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i155: ; preds = %.noexc158, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i155
  %.0.i30.i = phi ptr [ %i.at, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i155 ], [ %i.ao, %.noexc158 ] ; 2 uses
  %.09.i29.i = phi ptr [ %i.as, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i155 ], [ %i.z, %.noexc158 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i, i64 16, i1 false), !tbaa.struct !49
  store i8 0, ptr %.09.i29.i, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 16 ; 2 uses
  %.not.i17.i = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i17.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i155, !llvm.loop !6

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i155, %.noexc158
  %.0.i.lcssa.i = phi ptr [ %i.ao, %.noexc158 ], [ %i.at, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i155 ]
  %.0.i1931.i = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 16 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.z, null
  br i1 %.not.i16.i, label %.noexc131, label %bb.j

bb.j:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #38, !inline_history !1431
  br label %.noexc131

.noexc131:                                        ; preds = %bb.j, %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i
  store ptr %i.ao, ptr %2, align 8, !tbaa !119
  store ptr %.0.i1931.i, ptr %i.y, align 8, !tbaa !118
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.r, align 8, !tbaa !278
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i: ; preds = %.noexc131, %bb.h
  %i.av = phi ptr [ %i.ao, %.noexc131 ], [ %i.z, %bb.h ] ; 2 uses
  %i.aw = phi ptr [ %i.au, %.noexc131 ], [ %i.aa, %bb.h ]
  %i.ax = phi ptr [ %.0.i1931.i, %.noexc131 ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 16
  %i.az = add nsw i64 %.0.i12.i130, -1
  %i.ba = icmp sgt i64 %.0.i12.i130, 1
  br i1 %i.ba, label %bb.g, label %.loopexit, !llvm.loop !1432

.loopexit237:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit239 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp238:                            ; preds = %.invoke, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i133
  %lpad.loopexit.split-lp240 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.k:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !65 ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, 576460752303423487
  br i1 %i.bd, label %.invoke, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not301 = icmp eq i64 %i.bc, 0
  br i1 %.not301, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit147, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i133

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i133: ; preds = %bb.l
  %i.bf = shl nuw nsw i64 %i.bc, 4
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #39
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i144 unwind label %.loopexit.split-lp238, !inline_history !1430 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i144: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i133
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bg, ptr %2, align 8, !tbaa !119
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !118
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bc ; 2 uses
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !278
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit147

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit147: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i144, %bb.l
  %i.bj = phi ptr [ %i.bi, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i144 ], [ null, %bb.l ]
  %i.bk = phi ptr [ %i.bg, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i144 ], [ null, %bb.l ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !63 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not83 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not83, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit147
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit
  %i.bp = phi ptr [ %i.bk, %.lr.ph ], [ %i.cm, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 6 uses
  %i.bq = phi ptr [ %i.bj, %.lr.ph ], [ %i.cn, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  %i.br = phi ptr [ %i.bk, %.lr.ph ], [ %i.co, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 3 uses
  %.sroa.061.084 = phi ptr [ %i.bm, %.lr.ph ], [ %i.cp, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 64 ; 4 uses
  %.not.i = icmp eq ptr %i.br, %i.bq
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !49
  store i8 0, ptr %i.bs, align 8, !tbaa !52
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 72
  store ptr null, ptr %i.bt, align 8, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !118
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit

bb.o:                                             ; preds = %bb.m
  %i.bv = ptrtoint ptr %i.bq to i64
  %i.bw = ptrtoint ptr %i.bp to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775792
  br i1 %i.by, label %bb.p, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i159

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.891) #40
          to label %.noexc180 unwind label %.loopexit.split-lp243, !inline_history !1433

.noexc180:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i159: ; preds = %bb.o
  %i.bz = ashr exact i64 %i.bx, 4                 ; 3 uses
  %.sroa.speculated.i.i160 = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i160, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 576460752303423487)
  %i.cd = select i1 %i.cb, i64 576460752303423487, i64 %i.cc ; 3 uses
  %.not.i.i161 = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i161)
  %i.ce = shl nuw nsw i64 %i.cd, 4
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #39
          to label %.noexc181 unwind label %.loopexit242, !inline_history !1433 ; 6 uses

.noexc181:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i159
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !49
  store i8 0, ptr %i.bs, align 8, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 72
  store ptr null, ptr %i.ch, align 8, !tbaa !43
  %.not.i1728.i162 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i1728.i162, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i176, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i163

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i163: ; preds = %.noexc181, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i163
  %.0.i30.i164 = phi ptr [ %i.ck, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i163 ], [ %i.cf, %.noexc181 ] ; 2 uses
  %.09.i29.i165 = phi ptr [ %i.cj, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i163 ], [ %i.bp, %.noexc181 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i164, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i165, i64 16, i1 false), !tbaa.struct !49
  store i8 0, ptr %.09.i29.i165, align 8, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i29.i165, i64 8
  store ptr null, ptr %i.ci, align 8, !tbaa !43
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i29.i165, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i30.i164, i64 16 ; 2 uses
  %.not.i17.i166 = icmp eq ptr %i.cj, %i.bq
  br i1 %.not.i17.i166, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i176, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i163, !llvm.loop !6

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i176: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i163, %.noexc181
  %.0.i.lcssa.i168 = phi ptr [ %i.cf, %.noexc181 ], [ %i.ck, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i163 ]
  %.0.i1931.i169 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i168, i64 16 ; 2 uses
  %.not.i16.i178 = icmp eq ptr %i.bp, null
  br i1 %.not.i16.i178, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit182, label %bb.q

bb.q:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i176
  tail call void @_ZdlPv(ptr noundef nonnull %i.bp) #38, !inline_history !1433
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit182

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit182: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i176, %bb.q
  store ptr %i.cf, ptr %2, align 8, !tbaa !119
  store ptr %.0.i1931.i169, ptr %i.bo, align 8, !tbaa !118
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cd ; 2 uses
  store ptr %i.cl, ptr %i.be, align 8, !tbaa !278
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit182, %bb.n
  %i.cm = phi ptr [ %i.cf, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit182 ], [ %i.bp, %bb.n ] ; 2 uses
  %i.cn = phi ptr [ %i.cl, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit182 ], [ %i.bq, %bb.n ]
  %i.co = phi ptr [ %.0.i1931.i169, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit182 ], [ %i.bu, %bb.n ] ; 2 uses
  %i.cp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.061.084) #42 ; 2 uses
  %.not = icmp eq ptr %i.cp, %i.bn
  br i1 %.not, label %.loopexit, label %bb.m

.loopexit242:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i159
  %lpad.loopexit244 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp243:                            ; preds = %bb.p
  %lpad.loopexit.split-lp245 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit:                                        ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i
  %i.cq = phi ptr [ %i.ax, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ], [ %i.co, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %i.cr = phi ptr [ %i.av, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ], [ %i.cm, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.ct = icmp eq ptr %i.cr, %i.cq
  br i1 %i.ct, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph94

.lr.ph94:                                         ; preds = %.loopexit
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph94, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.cw = phi ptr [ %i.cq, %.lr.ph94 ], [ %i.gl, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !49
  store i8 0, ptr %i.cx, align 8, !tbaa !52
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -8
  store ptr null, ptr %i.cy, align 8, !tbaa !43
  %i.cz = load ptr, ptr %i.cs, align 8, !tbaa !118 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -16 ; 7 uses
  store ptr %i.da, ptr %i.cs, align 8, !tbaa !118
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %i.dc = load i8, ptr %i.da, align 8, !tbaa !55
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.db, i8 noundef zeroext %i.dc)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit39 unwind label %bb.s, !inline_history !1434

bb.s:                                             ; preds = %bb.r
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #37, !inline_history !1434
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit39: ; preds = %bb.r
  %i.df = load i8, ptr %3, align 8, !tbaa !52
  switch i8 %i.df, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit [
    i8 2, label %bb.t
    i8 1, label %bb.z
  ]

bb.t:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit39
  %i.dg = load ptr, ptr %i.cu, align 8, !tbaa !43 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !126 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !126 ; 2 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 4                 ; 2 uses
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %.lr.ph91, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit

.lr.ph91:                                         ; preds = %bb.t, %.noexc47
  %i.dp = phi ptr [ %i.el, %.noexc47 ], [ %i.da, %bb.t ] ; 5 uses
  %.0.i.i4689 = phi i64 [ %i.en, %.noexc47 ], [ %i.dn, %bb.t ] ; 2 uses
  %.05.i.i88 = phi ptr [ %i.em, %.noexc47 ], [ %i.dh, %bb.t ] ; 7 uses
  %4 = load ptr, ptr %i.cv, align 8, !tbaa !278
  %.not.i50 = icmp eq ptr %i.dp, %4
  br i1 %.not.i50, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i88, i64 16, i1 false), !tbaa.struct !49
  store i8 0, ptr %.05.i.i88, align 8, !tbaa !52
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i88, i64 8
  store ptr null, ptr %i.dq, align 8, !tbaa !43
  %i.dr = load ptr, ptr %i.cs, align 8, !tbaa !118
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  store ptr %i.ds, ptr %i.cs, align 8, !tbaa !118
  br label %.noexc47

bb.v:                                             ; preds = %.lr.ph91
  %i.dt = load ptr, ptr %2, align 8, !tbaa !119   ; 5 uses
  %i.du = ptrtoint ptr %i.dp to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775792
  br i1 %i.dx, label %bb.w, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i183

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.891) #40
          to label %.noexc204 unwind label %.loopexit.split-lp, !inline_history !1435

.noexc204:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i183: ; preds = %bb.v
  %i.dy = ashr exact i64 %i.dw, 4                 ; 3 uses
  %.sroa.speculated.i.i184 = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i184, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 576460752303423487)
  %i.ec = select i1 %i.ea, i64 576460752303423487, i64 %i.eb ; 3 uses
  %.not.i.i185 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i185)
  %i.ed = shl nuw nsw i64 %i.ec, 4
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #39
          to label %.noexc205 unwind label %.loopexit231, !inline_history !1435 ; 5 uses

.noexc205:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i183
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i88, i64 16, i1 false), !tbaa.struct !49
  store i8 0, ptr %.05.i.i88, align 8, !tbaa !52
  %i.eg = getelementptr inbounds nuw i8, ptr %.05.i.i88, i64 8
  store ptr null, ptr %i.eg, align 8, !tbaa !43
  %.not.i1728.i186 = icmp eq ptr %i.dt, %i.dp
  br i1 %.not.i1728.i186, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i200, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i187

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i187: ; preds = %.noexc205, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i187
  %.0.i30.i188 = phi ptr [ %i.ej, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i187 ], [ %i.ee, %.noexc205 ] ; 2 uses
  %.09.i29.i189 = phi ptr [ %i.ei, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i187 ], [ %i.dt, %.noexc205 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i188, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i189, i64 16, i1 false), !tbaa.struct !49
  store i8 0, ptr %.09.i29.i189, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %.09.i29.i189, i64 8
  store ptr null, ptr %i.eh, align 8, !tbaa !43
  %i.ei = getelementptr inbounds nuw i8, ptr %.09.i29.i189, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i30.i188, i64 16 ; 2 uses
  %.not.i17.i190 = icmp eq ptr %i.ei, %i.dp
  br i1 %.not.i17.i190, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i200, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i187, !llvm.loop !6

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i200: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i187, %.noexc205
  %.0.i.lcssa.i192 = phi ptr [ %i.ee, %.noexc205 ], [ %i.ej, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i187 ]
  %.0.i1931.i193 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i192, i64 16 ; 2 uses
  %.not.i16.i202 = icmp eq ptr %i.dt, null
  br i1 %.not.i16.i202, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit206, label %bb.x

bb.x:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i200
  call void @_ZdlPv(ptr noundef nonnull %i.dt) #38, !inline_history !1435
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit206

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit206: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i200, %bb.x
  store ptr %i.ee, ptr %2, align 8, !tbaa !119
  store ptr %.0.i1931.i193, ptr %i.cs, align 8, !tbaa !118
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.ek, ptr %i.cv, align 8, !tbaa !278
  br label %.noexc47

.noexc47:                                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit206, %bb.u
  %i.el = phi ptr [ %.0.i1931.i193, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit206 ], [ %i.ds, %bb.u ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i88, i64 16
  %i.en = add nsw i64 %.0.i.i4689, -1
  %i.eo = icmp sgt i64 %.0.i.i4689, 1
  br i1 %i.eo, label %.lr.ph91, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit, !llvm.loop !1432

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit: ; preds = %.noexc47
  %.pre101 = load ptr, ptr %i.cu, align 8, !tbaa !43 ; 3 uses
  %.pre102 = load ptr, ptr %.pre101, align 8, !tbaa !119
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre101, i64 8
  %.pre103 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !118
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit, %bb.t
  %i.ep = phi ptr [ %i.el, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.da, %bb.t ] ; 2 uses
  %i.eq = phi ptr [ %.pre103, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.dj, %bb.t ] ; 2 uses
  %i.er = phi ptr [ %.pre102, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.dh, %bb.t ] ; 3 uses
  %i.es = phi ptr [ %.pre101, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.dg, %bb.t ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.not.i41 = icmp eq ptr %i.eq, %i.er
  br i1 %.not.i41, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit, label %.preheader69

.preheader69:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i
  %.0.i92 = phi ptr [ %i.ey, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i ], [ %i.er, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i92, i64 8
  %i.ev = load i8, ptr %.0.i92, align 8, !tbaa !55
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, i8 noundef zeroext %i.ev)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i unwind label %bb.y, !inline_history !1436

bb.y:                                             ; preds = %.preheader69
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #37, !inline_history !1436
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i: ; preds = %.preheader69
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i92, i64 16 ; 2 uses
  %.not.i48 = icmp eq ptr %i.ey, %i.eq
  br i1 %.not.i48, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i, label %.preheader69, !llvm.loop !13

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i
  store ptr %i.er, ptr %i.et, align 8, !tbaa !118
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit

.loopexit231:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i183
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.z:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit39
  %i.ez = load ptr, ptr %i.cu, align 8, !tbaa !43 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !63 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %.not6885 = icmp eq ptr %i.fb, %i.fc
  br i1 %.not6885, label %._crit_edge, label %.lr.ph87

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38
  %.pre = load ptr, ptr %i.cu, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.z
  %i.fd = phi ptr [ %i.gj, %._crit_edge.loopexit ], [ %i.da, %bb.z ]
  %i.fe = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ez, %bb.z ] ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !279
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fe, ptr noundef %i.fg)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE5clearEv.exit unwind label %bb.aa, !inline_history !1437

bb.aa:                                            ; preds = %._crit_edge
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #37, !inline_history !1437
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE5clearEv.exit: ; preds = %._crit_edge
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  store ptr null, ptr %i.ff, align 8, !tbaa !279
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !63
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store i64 0, ptr %i.fm, align 8, !tbaa !65
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit

.lr.ph87:                                         ; preds = %bb.z, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38
  %i.fn = phi ptr [ %i.gj, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38 ], [ %i.da, %bb.z ] ; 5 uses
  %.sroa.057.086.a = phi ptr [ %i.gk, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38 ], [ %i.fb, %bb.z ] ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.057.086.a, i64 64 ; 4 uses
  %6 = load ptr, ptr %i.cv, align 8, !tbaa !278
  %.not.i42 = icmp eq ptr %i.fn, %6
  br i1 %.not.i42, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !49
  store i8 0, ptr %5, align 8, !tbaa !52
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.057.086.a, i64 72
  store ptr null, ptr %i.fo, align 8, !tbaa !43
  %i.fp = load ptr, ptr %i.cs, align 8, !tbaa !118
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  store ptr %i.fq, ptr %i.cs, align 8, !tbaa !118
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38

bb.ac:                                            ; preds = %.lr.ph87
  %i.fr = load ptr, ptr %2, align 8, !tbaa !119   ; 5 uses
  %i.fs = ptrtoint ptr %i.fn to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775792
  br i1 %i.fv, label %bb.ad, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i207

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.891) #40
          to label %.noexc228 unwind label %.loopexit.split-lp233, !inline_history !1433

.noexc228:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i207: ; preds = %bb.ac
  %i.fw = ashr exact i64 %i.fu, 4                 ; 3 uses
  %.sroa.speculated.i.i208 = call i64 @llvm.umax.i64(i64 %i.fw, i64 1)
  %i.fx = add nsw i64 %.sroa.speculated.i.i208, %i.fw ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.fw
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fx, i64 576460752303423487)
  %i.ga = select i1 %i.fy, i64 576460752303423487, i64 %i.fz ; 3 uses
  %.not.i.i209 = icmp ne i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i.i209)
  %i.gb = shl nuw nsw i64 %i.ga, 4
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #39
          to label %.noexc229 unwind label %.loopexit232, !inline_history !1433 ; 5 uses

.noexc229:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i207
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !49
  store i8 0, ptr %5, align 8, !tbaa !52
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.057.086.a, i64 72
  store ptr null, ptr %i.ge, align 8, !tbaa !43
  %.not.i1728.i210 = icmp eq ptr %i.fr, %i.fn
  br i1 %.not.i1728.i210, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i224, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i211

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i211: ; preds = %.noexc229, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i211
  %.0.i30.i212 = phi ptr [ %i.gh, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i211 ], [ %i.gc, %.noexc229 ] ; 2 uses
  %.09.i29.i213 = phi ptr [ %i.gg, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i211 ], [ %i.fr, %.noexc229 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i212, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i213, i64 16, i1 false), !tbaa.struct !49
  store i8 0, ptr %.09.i29.i213, align 8, !tbaa !52
  %i.gf = getelementptr inbounds nuw i8, ptr %.09.i29.i213, i64 8
  store ptr null, ptr %i.gf, align 8, !tbaa !43
  %i.gg = getelementptr inbounds nuw i8, ptr %.09.i29.i213, i64 16 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i30.i212, i64 16 ; 2 uses
  %.not.i17.i214 = icmp eq ptr %i.gg, %i.fn
  br i1 %.not.i17.i214, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i224, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i211, !llvm.loop !6

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i224: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i211, %.noexc229
  %.0.i.lcssa.i216 = phi ptr [ %i.gc, %.noexc229 ], [ %i.gh, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i211 ]
  %.0.i1931.i217 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i216, i64 16 ; 2 uses
  %.not.i16.i226 = icmp eq ptr %i.fr, null
  br i1 %.not.i16.i226, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit230, label %bb.ae

bb.ae:                                            ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i224
  call void @_ZdlPv(ptr noundef nonnull %i.fr) #38, !inline_history !1433
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit230

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit230: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i224, %bb.ae
  store ptr %i.gc, ptr %2, align 8, !tbaa !119
  store ptr %.0.i1931.i217, ptr %i.cs, align 8, !tbaa !118
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.ga
  store ptr %i.gi, ptr %i.cv, align 8, !tbaa !278
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit230, %bb.ab
  %i.gj = phi ptr [ %.0.i1931.i217, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit230 ], [ %i.fq, %bb.ab ] ; 2 uses
  %i.gk = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.057.086.a) #42 ; 2 uses
  %.not68 = icmp eq ptr %i.gk, %i.fc
  br i1 %.not68, label %._crit_edge.loopexit, label %.lr.ph87

.loopexit232:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i207
  %lpad.loopexit234 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp233:                            ; preds = %bb.ad
  %lpad.loopexit.split-lp235 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit39, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE5clearEv.exit
  %i.gl = phi ptr [ %i.da, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit39 ], [ %i.ep, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i ], [ %i.ep, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit ], [ %i.fd, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE5clearEv.exit ] ; 2 uses
  %i.gm = load i8, ptr %3, align 8, !tbaa !55
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, i8 noundef zeroext %i.gm)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.af, !inline_history !56

bb.af:                                            ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #37, !inline_history !56
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.gp = load ptr, ptr %2, align 8, !tbaa !126   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.gl
  br i1 %i.gq, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %bb.r, !llvm.loop !1438

bb.ag:                                            ; preds = %.loopexit232, %.loopexit.split-lp233, %.loopexit231, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit231 ], [ %lpad.loopexit234, %.loopexit232 ], [ %lpad.loopexit.split-lp235, %.loopexit.split-lp233 ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.ai

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit147, %.loopexit
  %i.gr = phi ptr [ %i.cr, %.loopexit ], [ %i.bk, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit147 ], [ %i.w, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit ], [ %i.gp, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.gr) #38
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.aj

bb.ai:                                            ; preds = %.loopexit242, %.loopexit.split-lp243, %.loopexit237, %.loopexit.split-lp238, %bb.ag
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ag ], [ %lpad.loopexit.split-lp240, %.loopexit.split-lp238 ], [ %lpad.loopexit239, %.loopexit237 ], [ %lpad.loopexit244, %.loopexit242 ], [ %lpad.loopexit.split-lp245, %.loopexit.split-lp243 ]
  call void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %.pn.pn

bb.aj:                                            ; preds = %bb.c, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit
  switch i8 %1, label %bb.aq [
    i8 1, label %bb.ak
    i8 2, label %bb.am
    i8 3, label %bb.ao
    i8 8, label %bb.ap
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.gs = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !279
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.gs, ptr noundef %i.gu)
          to label %.sink.split.sink.split unwind label %bb.al, !inline_history !1439

bb.al:                                            ; preds = %bb.ak
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #37, !inline_history !1439
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.gx = load ptr, ptr %0, align 8, !tbaa !43    ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !119 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !118 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.gy, %i.ha
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %bb.am, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i149
  %.0.i2.i = phi ptr [ %i.hf, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i149 ], [ %i.gy, %bb.am ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 8
  %i.hc = load i8, ptr %.0.i2.i, align 8, !tbaa !55
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.hb, i8 noundef zeroext %i.hc)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i149 unwind label %bb.an, !inline_history !1440

bb.an:                                            ; preds = %.lr.ph.i148
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #37, !inline_history !1440
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i149: ; preds = %.lr.ph.i148
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 16 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.hf, %i.ha
  br i1 %.not.i.i150, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i148, !llvm.loop !13

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i149
  %.pre.i151 = load ptr, ptr %i.gx, align 8, !tbaa !119
  br label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i, %bb.am
  %i.hg = phi ptr [ %.pre.i151, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i ], [ %i.gy, %bb.am ] ; 2 uses
  %.not.i.i.i152 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i152, label %.sink.split.sink.split, label %.sink.split.sink.split.sink.split

bb.ao:                                            ; preds = %bb.aj
  %i.hh = load ptr, ptr %0, align 8, !tbaa !43    ; 3 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !57 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %.sink.split, label %.sink.split.sink.split.sink.split

bb.ap:                                            ; preds = %bb.aj
  %i.hl = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i, label %.sink.split, label %.sink.split.sink.split.sink.split

.sink.split.sink.split.sink.split:                ; preds = %bb.ap, %bb.ao, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i
  %.sink327 = phi ptr [ %i.hi, %bb.ao ], [ %i.hg, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i ], [ %i.hm, %bb.ap ]
  call void @_ZdlPv(ptr noundef %.sink327) #38
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i, %bb.ak
  %.pre104 = load ptr, ptr %0, align 8, !tbaa !43
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.ao, %bb.ap
  %.sink = phi ptr [ %i.hl, %bb.ap ], [ %i.hh, %bb.ao ], [ %.pre104, %.sink.split.sink.split ]
  call void @_ZdlPv(ptr noundef %.sink) #38
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %bb.b, %bb.a, %bb.aj
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !119    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %.not.i1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i1, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.0.i2 = phi ptr [ %i.h, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i2, i64 8
  %i.e = load i8, ptr %.0.i2, align 8, !tbaa !55
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext %i.e)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.b, !inline_history !1441

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #37, !inline_history !1441
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i2, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit, label %.lr.ph, !llvm.loop !13

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !119
  br label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #38
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !270    ; 3 uses
end_hunk_0
