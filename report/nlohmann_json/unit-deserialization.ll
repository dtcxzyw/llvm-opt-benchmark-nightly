Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-deserialization?download=true
inline.NumInlined: 24803
inline.NumDeleted: 2361
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i29.i, ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i28.i, i64 16, i1 false), !tbaa.struct !74, !alias.scope !1206
  store i8 0, ptr %.09.i.i28.i, align 8, !tbaa !45, !alias.scope !1207, !noalias !1205
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i28.i, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !46, !alias.scope !1207, !noalias !1205
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i28.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i29.i, i64 16 ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i.i.i150, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i, label %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i149, !llvm.loop !7

_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i: ; preds = %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i149, %.noexc153
  %.0.i.i.lcssa.i = phi ptr [ %i.ao, %.noexc153 ], [ %i.at, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i149 ]
  %.0.i.i1830.i = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa.i, i64 16 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.z, null
  br i1 %.not.i16.i, label %.noexc125, label %bb.j

bb.j:                                             ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !225
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.aw) #33, !inline_history !1182
  br label %.noexc125

.noexc125:                                        ; preds = %bb.j, %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i
  store ptr %i.ao, ptr %2, align 8, !tbaa !224
  store ptr %.0.i.i1830.i, ptr %i.y, align 8, !tbaa !320
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am ; 2 uses
  store ptr %i.ax, ptr %i.r, align 8, !tbaa !225
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i: ; preds = %.noexc125, %bb.h
  %i.ay = phi ptr [ %i.ao, %.noexc125 ], [ %i.z, %bb.h ] ; 2 uses
  %i.az = phi ptr [ %i.ax, %.noexc125 ], [ %i.aa, %bb.h ]
  %i.ba = phi ptr [ %.0.i.i1830.i, %.noexc125 ], [ %i.ad, %bb.h ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 16
  %i.bc = add nsw i64 %.0.i12.i, -1
  %i.bd = icmp sgt i64 %.0.i12.i, 1
  br i1 %i.bd, label %bb.g, label %.loopexit, !llvm.loop !1186

.loopexit232:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit234 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp233:                            ; preds = %.invoke, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i127
  %lpad.loopexit.split-lp235 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.k:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !222 ; 4 uses
  %i.bg = icmp ugt i64 %i.bf, 576460752303423487
  br i1 %i.bg, label %.invoke, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.not = icmp eq i64 %i.bf, 0
  br i1 %.not, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit141, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i127

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i127: ; preds = %bb.l
  %i.bi = shl nuw nsw i64 %i.bf, 4
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #32
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i138 unwind label %.loopexit.split-lp233, !inline_history !1181 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i138: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i127
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bj, ptr %2, align 8, !tbaa !224
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !320
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bf ; 2 uses
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !225
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit141

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit141: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i138, %bb.l
  %i.bm = phi ptr [ %i.bl, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i138 ], [ null, %bb.l ]
  %i.bn = phi ptr [ %i.bj, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i138 ], [ null, %bb.l ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !220 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit141
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.r
  %i.bt = phi ptr [ %i.bn, %.lr.ph ], [ %i.ct, %bb.r ] ; 6 uses
  %i.bu = phi ptr [ %i.bm, %.lr.ph ], [ %i.cu, %bb.r ] ; 5 uses
  %i.bv = phi ptr [ %i.bn, %.lr.ph ], [ %i.cv, %bb.r ] ; 3 uses
  %.sroa.057.078 = phi ptr [ %i.bp, %.lr.ph ], [ %i.cw, %bb.r ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.057.078, i64 64 ; 4 uses
  %.not.i = icmp eq ptr %i.bv, %i.bu
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !74
  store i8 0, ptr %i.bw, align 8, !tbaa !45
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.057.078, i64 72
  store ptr null, ptr %i.bx, align 8, !tbaa !46
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  store ptr %i.by, ptr %i.bs, align 8, !tbaa !320
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775792
  br i1 %i.cc, label %bb.p, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i154

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.221) #35
          to label %.noexc175 unwind label %.loopexit.split-lp238, !inline_history !1187

.noexc175:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i154: ; preds = %bb.o
  %i.cd = ashr exact i64 %i.cb, 4                 ; 3 uses
  %.sroa.speculated.i.i155 = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i155, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 576460752303423487)
  %i.ch = select i1 %i.cf, i64 576460752303423487, i64 %i.cg ; 3 uses
  %.not.i.i156 = icmp ne i64 %i.ch, 0
  tail call void @llvm.assume(i1 %.not.i.i156)
  %i.ci = shl nuw nsw i64 %i.ch, 4
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #32
          to label %.noexc176 unwind label %.loopexit237, !inline_history !1187 ; 6 uses

.noexc176:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i154
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !74
  store i8 0, ptr %i.bw, align 8, !tbaa !45
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.057.078, i64 72
  store ptr null, ptr %i.cl, align 8, !tbaa !46
  %.not.i.i27.i157 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i.i27.i157, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i171, label %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i158

_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i158: ; preds = %.noexc176, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i158
  %.0.i.i29.i159 = phi ptr [ %i.co, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i158 ], [ %i.cj, %.noexc176 ] ; 2 uses
  %.09.i.i28.i160 = phi ptr [ %i.cn, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i158 ], [ %i.bt, %.noexc176 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i29.i159, ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i28.i160, i64 16, i1 false), !tbaa.struct !74, !alias.scope !1209
  store i8 0, ptr %.09.i.i28.i160, align 8, !tbaa !45, !alias.scope !1210, !noalias !1208
  %i.cm = getelementptr inbounds nuw i8, ptr %.09.i.i28.i160, i64 8
  store ptr null, ptr %i.cm, align 8, !tbaa !46, !alias.scope !1210, !noalias !1208
  %i.cn = getelementptr inbounds nuw i8, ptr %.09.i.i28.i160, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i29.i159, i64 16 ; 2 uses
  %.not.i.i.i161 = icmp eq ptr %i.cn, %i.bu
  br i1 %.not.i.i.i161, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i171, label %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i158, !llvm.loop !7

_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i171: ; preds = %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i158, %.noexc176
  %.0.i.i.lcssa.i163 = phi ptr [ %i.cj, %.noexc176 ], [ %i.co, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i158 ]
  %.0.i.i1830.i164 = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa.i163, i64 16 ; 2 uses
  %.not.i16.i173 = icmp eq ptr %i.bt, null
  br i1 %.not.i16.i173, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit177, label %bb.q

bb.q:                                             ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i171
  %i.cp = load ptr, ptr %i.bh, align 8, !tbaa !225
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.cr) #33, !inline_history !1187
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit177

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit177: ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i171, %bb.q
  store ptr %i.cj, ptr %2, align 8, !tbaa !224
  store ptr %.0.i.i1830.i164, ptr %i.bs, align 8, !tbaa !320
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ch ; 2 uses
  store ptr %i.cs, ptr %i.bh, align 8, !tbaa !225
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit177, %bb.n
  %i.ct = phi ptr [ %i.cj, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit177 ], [ %i.bt, %bb.n ] ; 2 uses
  %i.cu = phi ptr [ %i.cs, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit177 ], [ %i.bu, %bb.n ]
  %i.cv = phi ptr [ %.0.i.i1830.i164, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit177 ], [ %i.by, %bb.n ] ; 2 uses
  %i.cw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.057.078) #37 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.bq
  br i1 %i.cx, label %.loopexit, label %bb.m

.loopexit237:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i154
  %lpad.loopexit239 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp238:                            ; preds = %bb.p
  %lpad.loopexit.split-lp240 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit:                                        ; preds = %bb.r, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i
  %i.cy = phi ptr [ %i.ba, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ], [ %i.cv, %bb.r ] ; 2 uses
  %i.cz = phi ptr [ %i.ay, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ], [ %i.ct, %bb.r ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.db = icmp eq ptr %i.cz, %i.cy
  br i1 %i.db, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph87

.lr.ph87:                                         ; preds = %.loopexit
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph87, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.de = phi ptr [ %i.cy, %.lr.ph87 ], [ %i.gv, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !74
  store i8 0, ptr %i.df, align 8, !tbaa !45
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -8
  store ptr null, ptr %i.dg, align 8, !tbaa !46
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !320 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -16 ; 7 uses
  store ptr %i.di, ptr %i.da, align 8, !tbaa !320
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.dk = load i8, ptr %i.di, align 8, !tbaa !50
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, i8 noundef zeroext %i.dk)
          to label %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit unwind label %bb.t, !inline_history !1191

bb.t:                                             ; preds = %bb.s
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #30, !inline_history !1191
  unreachable

_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit: ; preds = %bb.s
  %i.dn = load i8, ptr %3, align 8, !tbaa !45
  switch i8 %i.dn, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit [
    i8 2, label %bb.u
    i8 1, label %bb.aa
  ]

bb.u:                                             ; preds = %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit
  %i.do = load ptr, ptr %i.dc, align 8, !tbaa !46 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !120 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !120 ; 2 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 4                 ; 2 uses
  %i.dw = icmp sgt i64 %i.dv, 0
  br i1 %i.dw, label %.lr.ph84, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit

.lr.ph84:                                         ; preds = %bb.u, %.noexc44
  %i.dx = phi ptr [ %i.et, %.noexc44 ], [ %i.di, %bb.u ] ; 5 uses
  %.0.i.i4382 = phi i64 [ %i.ev, %.noexc44 ], [ %i.dv, %bb.u ] ; 2 uses
  %.05.i.i81 = phi ptr [ %i.eu, %.noexc44 ], [ %i.dp, %bb.u ] ; 7 uses
  %4 = load ptr, ptr %i.dd, align 8, !tbaa !225
  %.not.i46 = icmp eq ptr %i.dx, %4
  br i1 %.not.i46, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i81, i64 16, i1 false), !tbaa.struct !74
  store i8 0, ptr %.05.i.i81, align 8, !tbaa !45
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i81, i64 8
  store ptr null, ptr %i.dy, align 8, !tbaa !46
  %i.dz = load ptr, ptr %i.da, align 8, !tbaa !320
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  store ptr %i.ea, ptr %i.da, align 8, !tbaa !320
  br label %.noexc44

bb.w:                                             ; preds = %.lr.ph84
  %i.eb = load ptr, ptr %2, align 8, !tbaa !224   ; 5 uses
  %i.ec = ptrtoint ptr %i.dx to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed                    ; 4 uses
  %i.ef = icmp eq i64 %i.ee, 9223372036854775792
  br i1 %i.ef, label %bb.x, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i178

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.221) #35
          to label %.noexc199 unwind label %.loopexit.split-lp, !inline_history !1192

.noexc199:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i178: ; preds = %bb.w
  %i.eg = ashr exact i64 %i.ee, 4                 ; 3 uses
  %.sroa.speculated.i.i179 = call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.eh = add nsw i64 %.sroa.speculated.i.i179, %i.eg ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.eg
  %i.ej = call i64 @llvm.umin.i64(i64 %i.eh, i64 576460752303423487)
  %i.ek = select i1 %i.ei, i64 576460752303423487, i64 %i.ej ; 3 uses
  %.not.i.i180 = icmp ne i64 %i.ek, 0
  call void @llvm.assume(i1 %.not.i.i180)
  %i.el = shl nuw nsw i64 %i.ek, 4
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #32
          to label %.noexc200 unwind label %.loopexit226, !inline_history !1192 ; 5 uses

.noexc200:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i178
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i81, i64 16, i1 false), !tbaa.struct !74
  store i8 0, ptr %.05.i.i81, align 8, !tbaa !45
  %i.eo = getelementptr inbounds nuw i8, ptr %.05.i.i81, i64 8
  store ptr null, ptr %i.eo, align 8, !tbaa !46
  %.not.i.i27.i181 = icmp eq ptr %i.eb, %i.dx
  br i1 %.not.i.i27.i181, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i195, label %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i182

_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i182: ; preds = %.noexc200, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i182
  %.0.i.i29.i183 = phi ptr [ %i.er, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i182 ], [ %i.em, %.noexc200 ] ; 2 uses
  %.09.i.i28.i184 = phi ptr [ %i.eq, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i182 ], [ %i.eb, %.noexc200 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i29.i183, ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i28.i184, i64 16, i1 false), !tbaa.struct !74, !alias.scope !1212
  store i8 0, ptr %.09.i.i28.i184, align 8, !tbaa !45, !alias.scope !1213, !noalias !1211
  %i.ep = getelementptr inbounds nuw i8, ptr %.09.i.i28.i184, i64 8
  store ptr null, ptr %i.ep, align 8, !tbaa !46, !alias.scope !1213, !noalias !1211
  %i.eq = getelementptr inbounds nuw i8, ptr %.09.i.i28.i184, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i29.i183, i64 16 ; 2 uses
  %.not.i.i.i185 = icmp eq ptr %i.eq, %i.dx
  br i1 %.not.i.i.i185, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i195, label %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i182, !llvm.loop !7

_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i195: ; preds = %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i182, %.noexc200
  %.0.i.i.lcssa.i187 = phi ptr [ %i.em, %.noexc200 ], [ %i.er, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i182 ]
  %.0.i.i1830.i188 = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa.i187, i64 16 ; 2 uses
  %.not.i16.i197 = icmp eq ptr %i.eb, null
  br i1 %.not.i16.i197, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit201, label %bb.y

bb.y:                                             ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i195
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ee) #33, !inline_history !1192
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit201

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit201: ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i195, %bb.y
  store ptr %i.em, ptr %2, align 8, !tbaa !224
  store ptr %.0.i.i1830.i188, ptr %i.da, align 8, !tbaa !320
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.ek
  store ptr %i.es, ptr %i.dd, align 8, !tbaa !225
  br label %.noexc44

.noexc44:                                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit201, %bb.v
  %i.et = phi ptr [ %.0.i.i1830.i188, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit201 ], [ %i.ea, %bb.v ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.05.i.i81, i64 16
  %i.ev = add nsw i64 %.0.i.i4382, -1
  %i.ew = icmp sgt i64 %.0.i.i4382, 1
  br i1 %i.ew, label %.lr.ph84, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit, !llvm.loop !1186

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit: ; preds = %.noexc44
  %.pre94 = load ptr, ptr %i.dc, align 8, !tbaa !46 ; 3 uses
  %.pre95 = load ptr, ptr %.pre94, align 8, !tbaa !224
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre94, i64 8
  %.pre96 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !320
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit, %bb.u
  %i.ex = phi ptr [ %i.et, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.di, %bb.u ] ; 2 uses
  %i.ey = phi ptr [ %.pre96, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.dr, %bb.u ] ; 2 uses
  %i.ez = phi ptr [ %.pre95, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.dp, %bb.u ] ; 3 uses
  %i.fa = phi ptr [ %.pre94, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.do, %bb.u ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.not.i38 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not.i38, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit, label %.preheader64

.preheader64:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit, %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i
  %.0.i85 = phi ptr [ %i.fg, %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i ], [ %i.ez, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i85, i64 8
  %i.fd = load i8, ptr %.0.i85, align 8, !tbaa !50
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, i8 noundef zeroext %i.fd)
          to label %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i unwind label %bb.z, !inline_history !1196

bb.z:                                             ; preds = %.preheader64
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #30, !inline_history !1196
  unreachable

_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i: ; preds = %.preheader64
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i85, i64 16 ; 2 uses
  %.not.i45 = icmp eq ptr %i.fg, %i.ey
  br i1 %.not.i45, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i, label %.preheader64, !llvm.loop !14

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i: ; preds = %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i
  store ptr %i.ez, ptr %i.fb, align 8, !tbaa !320
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit

.loopexit226:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i178
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.aa:                                            ; preds = %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit
  %i.fh = load ptr, ptr %i.dc, align 8, !tbaa !46 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !220 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %._crit_edge, label %.lr.ph80

._crit_edge.loopexit:                             ; preds = %bb.ag
  %.pre = load ptr, ptr %i.dc, align 8, !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.aa
  %i.fm = phi ptr [ %i.gs, %._crit_edge.loopexit ], [ %i.di, %bb.aa ]
  %i.fn = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.fh, %bb.aa ] ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !322
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fn, ptr noundef %i.fp)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE5clearEv.exit unwind label %bb.ab, !inline_history !1197

bb.ab:                                            ; preds = %._crit_edge
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #30, !inline_history !1197
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE5clearEv.exit: ; preds = %._crit_edge
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  store ptr null, ptr %i.fo, align 8, !tbaa !322
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !220
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  store ptr %i.fs, ptr %i.fu, align 8, !tbaa !221
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  store i64 0, ptr %i.fv, align 8, !tbaa !222
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit

.lr.ph80:                                         ; preds = %bb.aa, %bb.ag
  %i.fw = phi ptr [ %i.gs, %bb.ag ], [ %i.di, %bb.aa ] ; 5 uses
  %.sroa.053.079.a = phi ptr [ %i.gt, %bb.ag ], [ %i.fj, %bb.aa ] ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.053.079.a, i64 64 ; 4 uses
  %6 = load ptr, ptr %i.dd, align 8, !tbaa !225
  %.not.i39 = icmp eq ptr %i.fw, %6
  br i1 %.not.i39, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !74
  store i8 0, ptr %5, align 8, !tbaa !45
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.053.079.a, i64 72
  store ptr null, ptr %i.fx, align 8, !tbaa !46
  %i.fy = load ptr, ptr %i.da, align 8, !tbaa !320
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  store ptr %i.fz, ptr %i.da, align 8, !tbaa !320
  br label %bb.ag

bb.ad:                                            ; preds = %.lr.ph80
  %i.ga = load ptr, ptr %2, align 8, !tbaa !224   ; 5 uses
  %i.gb = ptrtoint ptr %i.fw to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 4 uses
  %i.ge = icmp eq i64 %i.gd, 9223372036854775792
  br i1 %i.ge, label %bb.ae, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i202

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.221) #35
          to label %.noexc223 unwind label %.loopexit.split-lp228, !inline_history !1187

.noexc223:                                        ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i202: ; preds = %bb.ad
  %i.gf = ashr exact i64 %i.gd, 4                 ; 3 uses
  %.sroa.speculated.i.i203 = call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.gg = add nsw i64 %.sroa.speculated.i.i203, %i.gf ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.gf
  %i.gi = call i64 @llvm.umin.i64(i64 %i.gg, i64 576460752303423487)
  %i.gj = select i1 %i.gh, i64 576460752303423487, i64 %i.gi ; 3 uses
  %.not.i.i204 = icmp ne i64 %i.gj, 0
  call void @llvm.assume(i1 %.not.i.i204)
  %i.gk = shl nuw nsw i64 %i.gj, 4
  %i.gl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #32
          to label %.noexc224 unwind label %.loopexit227, !inline_history !1187 ; 5 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i202
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !74
  store i8 0, ptr %5, align 8, !tbaa !45
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.053.079.a, i64 72
  store ptr null, ptr %i.gn, align 8, !tbaa !46
  %.not.i.i27.i205 = icmp eq ptr %i.ga, %i.fw
  br i1 %.not.i.i27.i205, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i219, label %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i206

_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i206: ; preds = %.noexc224, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i206
  %.0.i.i29.i207 = phi ptr [ %i.gq, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i206 ], [ %i.gl, %.noexc224 ] ; 2 uses
  %.09.i.i28.i208 = phi ptr [ %i.gp, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i206 ], [ %i.ga, %.noexc224 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i29.i207, ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i28.i208, i64 16, i1 false), !tbaa.struct !74, !alias.scope !1215
  store i8 0, ptr %.09.i.i28.i208, align 8, !tbaa !45, !alias.scope !1216, !noalias !1214
  %i.go = getelementptr inbounds nuw i8, ptr %.09.i.i28.i208, i64 8
  store ptr null, ptr %i.go, align 8, !tbaa !46, !alias.scope !1216, !noalias !1214
  %i.gp = getelementptr inbounds nuw i8, ptr %.09.i.i28.i208, i64 16 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.i.i29.i207, i64 16 ; 2 uses
  %.not.i.i.i209 = icmp eq ptr %i.gp, %i.fw
  br i1 %.not.i.i.i209, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i219, label %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i206, !llvm.loop !7

_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i219: ; preds = %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i206, %.noexc224
  %.0.i.i.lcssa.i211 = phi ptr [ %i.gl, %.noexc224 ], [ %i.gq, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i206 ]
  %.0.i.i1830.i212 = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa.i211, i64 16 ; 2 uses
  %.not.i16.i221 = icmp eq ptr %i.ga, null
  br i1 %.not.i16.i221, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit225, label %bb.af

bb.af:                                            ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i219
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gd) #33, !inline_history !1187
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit225

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit225: ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i219, %bb.af
  store ptr %i.gl, ptr %2, align 8, !tbaa !224
  store ptr %.0.i.i1830.i212, ptr %i.da, align 8, !tbaa !320
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.gj
  store ptr %i.gr, ptr %i.dd, align 8, !tbaa !225
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit225, %bb.ac
  %i.gs = phi ptr [ %.0.i.i1830.i212, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit225 ], [ %i.fz, %bb.ac ] ; 2 uses
  %i.gt = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.053.079.a) #37 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.fk
  br i1 %i.gu, label %._crit_edge.loopexit, label %.lr.ph80

.loopexit227:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i202
  %lpad.loopexit229 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp228:                            ; preds = %bb.ae
  %lpad.loopexit.split-lp230 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit: ; preds = %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE5clearEv.exit
  %i.gv = phi ptr [ %i.di, %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit ], [ %i.ex, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i ], [ %i.ex, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit ], [ %i.fm, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE5clearEv.exit ] ; 2 uses
  %i.gw = load i8, ptr %3, align 8, !tbaa !50
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i8 noundef zeroext %i.gw)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.ah, !inline_history !51

bb.ah:                                            ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #30, !inline_history !51
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.gz = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gv
  br i1 %i.ha, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %bb.s, !llvm.loop !1201

bb.ai:                                            ; preds = %.loopexit227, %.loopexit.split-lp228, %.loopexit226, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit226 ], [ %lpad.loopexit229, %.loopexit227 ], [ %lpad.loopexit.split-lp230, %.loopexit.split-lp228 ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ak

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit141, %.loopexit
  %i.hb = phi ptr [ %i.cz, %.loopexit ], [ %i.bn, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit141 ], [ %i.w, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit ], [ %i.gz, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !225
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = ptrtoint ptr %i.hb to i64
  %i.hg = sub i64 %i.he, %i.hf
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.hg) #33
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.al

bb.ak:                                            ; preds = %.loopexit237, %.loopexit.split-lp238, %.loopexit232, %.loopexit.split-lp233, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ai ], [ %lpad.loopexit.split-lp235, %.loopexit.split-lp233 ], [ %lpad.loopexit234, %.loopexit232 ], [ %lpad.loopexit239, %.loopexit237 ], [ %lpad.loopexit.split-lp240, %.loopexit.split-lp238 ]
  call void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn.pn

bb.al:                                            ; preds = %bb.c, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit
  switch i8 %1, label %bb.au [
    i8 1, label %bb.am
    i8 2, label %bb.ao
    i8 3, label %bb.ar
    i8 8, label %bb.as
  ]

bb.am:                                            ; preds = %bb.al
  %i.hh = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !322
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.hh, ptr noundef %i.hj)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS5_SD_EEED2Ev.exit unwind label %bb.an, !inline_history !1202

bb.an:                                            ; preds = %bb.am
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  %i.hl = extractvalue { ptr, i32 } %i.hk, 0
  call void @__clang_call_terminate(ptr %i.hl) #30, !inline_history !1202
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS5_SD_EEED2Ev.exit: ; preds = %bb.am
  %i.hm = load ptr, ptr %0, align 8, !tbaa !46
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef 48) #33
  br label %bb.au

bb.ao:                                            ; preds = %bb.al
  %i.hn = load ptr, ptr %0, align 8, !tbaa !46    ; 4 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !224 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !320 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.ho, %i.hq
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.ao, %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i143
  %.0.i2.i = phi ptr [ %i.hv, %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i143 ], [ %i.ho, %bb.ao ] ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 8
  %i.hs = load i8, ptr %.0.i2.i, align 8, !tbaa !50
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, i8 noundef zeroext %i.hs)
          to label %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i143 unwind label %bb.ap, !inline_history !1203

bb.ap:                                            ; preds = %.lr.ph.i142
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #30, !inline_history !1203
  unreachable

_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i143: ; preds = %.lr.ph.i142
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 16 ; 2 uses
  %.not.i.i144 = icmp eq ptr %i.hv, %i.hq
  br i1 %.not.i.i144, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i142, !llvm.loop !14

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i: ; preds = %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i143
  %.pre.i145 = load ptr, ptr %i.hn, align 8, !tbaa !224
  br label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i, %bb.ao
  %i.hw = phi ptr [ %.pre.i145, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i ], [ %i.ho, %bb.ao ] ; 3 uses
  %.not.i.i.i146 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i146, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit147, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !225
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hw to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.ib) #33, !inline_history !1204
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit147

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit147: ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i, %bb.aq
  %i.ic = load ptr, ptr %0, align 8, !tbaa !46
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef 24) #33
  br label %bb.au

bb.ar:                                            ; preds = %bb.al
  %i.id = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !65 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ar
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !46
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ii) #33
  %.pre98 = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ij = phi ptr [ %.pre98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.id, %bb.ar ]
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef 32) #33
  br label %bb.au

bb.as:                                            ; preds = %bb.al
  %i.ik = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i.i, label %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_027byte_container_with_subtypeISt6vectorIhSaIhEEEEEvPT_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !88
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.il to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.iq) #33
  %.pre97 = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_027byte_container_with_subtypeISt6vectorIhSaIhEEEEEvPT_.exit

_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_027byte_container_with_subtypeISt6vectorIhSaIhEEEEEvPT_.exit: ; preds = %bb.as, %bb.at
  %i.ir = phi ptr [ %i.ik, %bb.as ], [ %.pre97, %bb.at ]
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef 40) #33
  br label %bb.au

bb.au:                                            ; preds = %bb.b, %bb.a, %bb.al, %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_027byte_container_with_subtypeISt6vectorIhSaIhEEEEEvPT_.exit, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit147, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS5_SD_EEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !224    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !320  ; 2 uses
  %.not.i1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i1, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit
  %.0.i2 = phi ptr [ %i.h, %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i2, i64 8
  %i.e = load i8, ptr %.0.i2, align 8, !tbaa !50
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext %i.e)
          to label %_ZSt10destroy_atIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit unwind label %bb.b, !inline_history !1217

bb.b:                                             ; preds = %.lr.ph
end_hunk_0
