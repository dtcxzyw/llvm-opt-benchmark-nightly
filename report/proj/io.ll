Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE:bb.a
  store i8 %i.n, ptr %.0.i.i11.i, align 8, !tbaa !625, !alias.scope !2545, !noalias !2546
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i11.i, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i10.i, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !166, !alias.scope !2546, !noalias !2545
  store i64 %i.q, ptr %i.o, align 8, !tbaa !166, !alias.scope !2545, !noalias !2546
  store i8 0, ptr %.09.i.i10.i, align 8, !tbaa !625, !alias.scope !2546, !noalias !2545
  store ptr null, ptr %i.p, align 8, !tbaa !166, !alias.scope !2546, !noalias !2545
  tail call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i8 noundef zeroext 0) #41, !noalias !2545, !inline_history !2522
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i10.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i11.i, i64 16
  %.not.i.i.i197 = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i.i197, label %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i, label %.lr.ph.i, !llvm.loop !131

_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i: ; preds = %.lr.ph.i, %.noexc198
  %.not.i8.i = icmp eq ptr %i.l, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE7reserveEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !635
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.w) #44, !inline_history !2518
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE7reserveEm.exit

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE7reserveEm.exit: ; preds = %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i, %bb.d
  store ptr %i.k, ptr %2, align 8, !tbaa !633
  store ptr %i.k, ptr %i.j, align 8, !tbaa !632
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  store ptr %i.x, ptr %i.i, align 8, !tbaa !635
  %.pre220 = load ptr, ptr %0, align 8, !tbaa !166 ; 2 uses
  %.pre221 = load ptr, ptr %.pre220, align 8, !tbaa !634 ; 2 uses
  %.phi.trans.insert222 = getelementptr inbounds nuw i8, ptr %.pre220, i64 8
  %.pre223 = load ptr, ptr %.phi.trans.insert222, align 8, !tbaa !634
  %.pre224.a = ptrtoint ptr %.pre223 to i64
  %.pre225 = ptrtoint ptr %.pre221 to i64
  %.pre227 = sub i64 %.pre224.a, %.pre225
  %i.y = ashr exact i64 %.pre227, 4               ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph108, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit

.lr.ph108:                                        ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE7reserveEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph108, %.noexc33
  %.0.i.i32107 = phi i64 [ %i.y, %.lr.ph108 ], [ %i.ak, %.noexc33 ] ; 2 uses
  %.05.i.i106 = phi ptr [ %.pre221, %.lr.ph108 ], [ %i.aj, %.noexc33 ] ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !632 ; 4 uses
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !635
  %.not.i44 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %.05.i.i106, align 1, !tbaa !660
  store i8 %i.ad, ptr %i.ab, align 8, !tbaa !625
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i106, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !166
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !166
  store i8 0, ptr %.05.i.i106, align 8, !tbaa !625
  store ptr null, ptr %i.af, align 8, !tbaa !166
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !632
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !632
  br label %.noexc33

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i106)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !2523

.noexc33:                                         ; preds = %bb.f, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i106, i64 16
  %i.ak = add nsw i64 %.0.i.i32107, -1
  %i.al = icmp sgt i64 %.0.i.i32107, 1
  br i1 %i.al, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit, !llvm.loop !2524

bb.h:                                             ; preds = %bb.a
  %i.am = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !547 ; 4 uses
  %i.ap = icmp ugt i64 %i.ao, 576460752303423487
  br i1 %i.ap, label %.invoke277, label %bb.i

.invoke277:                                       ; preds = %bb.w, %bb.r, %bb.h, %bb.b
  %i.aq = phi ptr [ @.str.911, %bb.b ], [ @.str.911, %bb.h ], [ @.str.692, %bb.r ], [ @.str.692, %bb.w ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.aq) #42
          to label %.cont278 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2518

.cont278:                                         ; preds = %.invoke277
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.not271 = icmp eq i64 %i.ao, 0
  br i1 %.not271, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE7reserveEm.exit212, label %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i199

_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i199: ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.at = shl nuw nsw i64 %i.ao, 4
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #43
          to label %.noexc211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2518 ; 4 uses

.noexc211:                                        ; preds = %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i199
  %i.av = load ptr, ptr %2, align 8, !tbaa !633   ; 5 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !632 ; 2 uses
  %.not.i.i9.i200 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i9.i200, label %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i207, label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %.noexc211, %.lr.ph.i201
  %.0.i.i11.i202 = phi ptr [ %i.bc, %.lr.ph.i201 ], [ %i.au, %.noexc211 ] ; 3 uses
  %.09.i.i10.i203 = phi ptr [ %i.bb, %.lr.ph.i201 ], [ %i.av, %.noexc211 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %i.ax = load i8, ptr %.09.i.i10.i203, align 1, !tbaa !660, !alias.scope !2548, !noalias !2547
  store i8 %i.ax, ptr %.0.i.i11.i202, align 8, !tbaa !625, !alias.scope !2547, !noalias !2548
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i11.i202, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.09.i.i10.i203, i64 8 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !166, !alias.scope !2548, !noalias !2547
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !166, !alias.scope !2547, !noalias !2548
  store i8 0, ptr %.09.i.i10.i203, align 8, !tbaa !625, !alias.scope !2548, !noalias !2547
  store ptr null, ptr %i.az, align 8, !tbaa !166, !alias.scope !2548, !noalias !2547
  tail call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i8 noundef zeroext 0) #41, !noalias !2547, !inline_history !2522
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i.i10.i203, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i11.i202, i64 16
  %.not.i.i.i204 = icmp eq ptr %i.bb, %i.aw
  br i1 %.not.i.i.i204, label %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i207, label %.lr.ph.i201, !llvm.loop !131

_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i207: ; preds = %.lr.ph.i201, %.noexc211
  %.not.i8.i208 = icmp eq ptr %i.av, null
  br i1 %.not.i8.i208, label %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit.i209, label %bb.j

bb.j:                                             ; preds = %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i207
  %i.bd = load ptr, ptr %i.ar, align 8, !tbaa !635
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.av to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bg) #44, !inline_history !2518
  br label %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit.i209

_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit.i209: ; preds = %bb.j, %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i207
  store ptr %i.au, ptr %2, align 8, !tbaa !633
  store ptr %i.au, ptr %i.as, align 8, !tbaa !632
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.ao
  store ptr %i.bh, ptr %i.ar, align 8, !tbaa !635
  %.pre219 = load ptr, ptr %0, align 8, !tbaa !166
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE7reserveEm.exit212

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE7reserveEm.exit212: ; preds = %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit.i209, %bb.i
  %i.bi = phi ptr [ %.pre219, %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit.i209 ], [ %i.am, %bb.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !545 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %.not104 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not104, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE7reserveEm.exit212
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.074.0105 = phi ptr [ %i.bk, %.lr.ph ], [ %i.bw, %bb.n ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.074.0105, i64 64 ; 3 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !632 ; 4 uses
  %i.bp = load ptr, ptr %i.ar, align 8, !tbaa !635
  %.not.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !660
  store i8 %i.bq, ptr %i.bo, align 8, !tbaa !625
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.074.0105, i64 72 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !166
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !166
  store i8 0, ptr %i.bn, align 8, !tbaa !625
  store ptr null, ptr %i.bs, align 8, !tbaa !166
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !632
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bv, ptr %i.bm, align 8, !tbaa !632
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !2528

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bw = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.074.0105) #45 ; 2 uses
  %.not = icmp eq ptr %i.bw, %i.bl
  br i1 %.not, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit, label %bb.k

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit: ; preds = %bb.n, %.noexc33, %bb.c, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE7reserveEm.exit212, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE7reserveEm.exit, %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 13 uses
  %i.by = load ptr, ptr %2, align 8, !tbaa !634
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !634 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %._crit_edge139, label %.lr.ph138

.lr.ph138:                                        ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph138, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE15_M_erase_at_endEPSC_.exit
  %i.cd = phi ptr [ %i.bz, %.lr.ph138 ], [ %i.go, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE15_M_erase_at_endEPSC_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -16 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !660
  store i8 %i.cf, ptr %3, align 8, !tbaa !625
  %i.cg = getelementptr inbounds i8, ptr %i.cd, i64 -8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !166
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !166
  store i8 0, ptr %i.ce, align 8, !tbaa !625
  store ptr null, ptr %i.cg, align 8, !tbaa !166
  %i.ci = load ptr, ptr %i.bx, align 8, !tbaa !632 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -16 ; 2 uses
  store ptr %i.cj, ptr %i.bx, align 8, !tbaa !632
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.cl = load i8, ptr %i.cj, align 8, !tbaa !625
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i8 noundef zeroext %i.cl) #41, !inline_history !2529
  %i.cm = load i8, ptr %3, align 8, !tbaa !625
  switch i8 %i.cm, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE15_M_erase_at_endEPSC_.exit [
    i8 2, label %bb.p
    i8 1, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %i.cn = load ptr, ptr %i.cb, align 8, !tbaa !166 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !634 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !634 ; 2 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 4                 ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, 0
  br i1 %i.cv, label %.lr.ph136.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit16

.lr.ph136.preheader:                              ; preds = %bb.p
  %.pre152.a = load ptr, ptr %i.bx, align 8, !tbaa !632
  %.pre156 = load ptr, ptr %i.cc, align 8, !tbaa !635
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %.noexc37
  %i.cw = phi ptr [ %5, %.noexc37 ], [ %.pre156, %.lr.ph136.preheader ] ; 4 uses
  %4 = phi ptr [ %i.ee, %.noexc37 ], [ %.pre152.a, %.lr.ph136.preheader ] ; 3 uses
  %.0.i.i35134 = phi i64 [ %i.eg, %.noexc37 ], [ %i.cu, %.lr.ph136.preheader ] ; 2 uses
  %.05.i.i34133 = phi ptr [ %i.ef, %.noexc37 ], [ %i.co, %.lr.ph136.preheader ] ; 7 uses
  %.not.i47 = icmp eq ptr %4, %i.cw
  br i1 %.not.i47, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph136
  %i.cx = load i8, ptr %.05.i.i34133, align 1, !tbaa !660
  store i8 %i.cx, ptr %4, align 8, !tbaa !625
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i34133, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !166
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !166
  store i8 0, ptr %.05.i.i34133, align 8, !tbaa !625
  store ptr null, ptr %i.cz, align 8, !tbaa !166
  %i.db = load ptr, ptr %i.bx, align 8, !tbaa !632
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  store ptr %i.dc, ptr %i.bx, align 8, !tbaa !632
  %.pre155 = load ptr, ptr %i.cc, align 8, !tbaa !635
  br label %.noexc37

bb.r:                                             ; preds = %.lr.ph136
  %i.dd = load ptr, ptr %2, align 8, !tbaa !633   ; 5 uses
  %i.de = ptrtoint ptr %i.cw to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775792
  br i1 %i.dh, label %.invoke277, label %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit.i50

_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit.i50: ; preds = %bb.r
  %i.di = ashr exact i64 %i.dg, 4                 ; 3 uses
  %.sroa.speculated.i.i51 = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i51, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 576460752303423487)
  %i.dm = select i1 %i.dk, i64 576460752303423487, i64 %i.dl ; 3 uses
  %.not.i.i52 = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i52)
  %i.dn = shl nuw nsw i64 %i.dm, 4
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #43
          to label %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i53 unwind label %.loopexit, !inline_history !2530 ; 5 uses

_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i53: ; preds = %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit.i50
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg ; 2 uses
  %i.dq = load i8, ptr %.05.i.i34133, align 1, !tbaa !660
  store i8 %i.dq, ptr %i.dp, align 8, !tbaa !625
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.05.i.i34133, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !166
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !166
  store i8 0, ptr %.05.i.i34133, align 8, !tbaa !625
  store ptr null, ptr %i.ds, align 8, !tbaa !166
  %.not.i.i.i56122 = icmp eq ptr %i.dd, %i.cw
  br i1 %.not.i.i.i56122, label %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i57.preheader, label %.lr.ph125

_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i57.preheader: ; preds = %.lr.ph125, %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i53
  %.0.i.i.i55.lcssa = phi ptr [ %i.do, %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i53 ], [ %i.dz, %.lr.ph125 ]
  %.0.i.i18.i59127 = getelementptr inbounds nuw i8, ptr %.0.i.i.i55.lcssa, i64 16 ; 2 uses
  %.not.i16.i62 = icmp eq ptr %i.dd, null
  br i1 %.not.i16.i62, label %.noexc48, label %bb.s

.lr.ph125:                                        ; preds = %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i53, %.lr.ph125
  %.0.i.i.i55124 = phi ptr [ %i.dz, %.lr.ph125 ], [ %i.do, %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i53 ] ; 3 uses
  %.09.i.i.i54123 = phi ptr [ %i.dy, %.lr.ph125 ], [ %i.dd, %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i53 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  call void @llvm.experimental.noalias.scope.decl(metadata !2550)
  %i.du = load i8, ptr %.09.i.i.i54123, align 1, !tbaa !660, !alias.scope !2550, !noalias !2549
  store i8 %i.du, ptr %.0.i.i.i55124, align 8, !tbaa !625, !alias.scope !2549, !noalias !2550
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i.i55124, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.09.i.i.i54123, i64 8 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !166, !alias.scope !2550, !noalias !2549
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !166, !alias.scope !2549, !noalias !2550
  store i8 0, ptr %.09.i.i.i54123, align 8, !tbaa !625, !alias.scope !2550, !noalias !2549
  store ptr null, ptr %i.dw, align 8, !tbaa !166, !alias.scope !2550, !noalias !2549
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, i8 noundef zeroext 0) #41, !noalias !2549, !inline_history !2534
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.i.i.i54123, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i55124, i64 16 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.dy, %i.cw
  br i1 %.not.i.i.i56, label %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i57.preheader, label %.lr.ph125, !llvm.loop !131

bb.s:                                             ; preds = %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i57.preheader
  %i.ea = load ptr, ptr %i.cc, align 8, !tbaa !635
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = sub i64 %i.eb, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.ec) #44, !inline_history !2530
  br label %.noexc48

.noexc48:                                         ; preds = %bb.s, %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i57.preheader
  store ptr %i.do, ptr %2, align 8, !tbaa !633
  store ptr %.0.i.i18.i59127, ptr %i.bx, align 8, !tbaa !632
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dm ; 2 uses
  store ptr %i.ed, ptr %i.cc, align 8, !tbaa !635
  br label %.noexc37

.noexc37:                                         ; preds = %.noexc48, %bb.q
  %5 = phi ptr [ %i.ed, %.noexc48 ], [ %.pre155, %bb.q ]
  %i.ee = phi ptr [ %.0.i.i18.i59127, %.noexc48 ], [ %i.dc, %bb.q ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.05.i.i34133, i64 16
  %i.eg = add nsw i64 %.0.i.i35134, -1
  %i.eh = icmp sgt i64 %.0.i.i35134, 1
  br i1 %i.eh, label %.lr.ph136, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit16.loopexit, !llvm.loop !2524

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit16.loopexit: ; preds = %.noexc37
  %.pre153.a = load ptr, ptr %i.cb, align 8, !tbaa !166 ; 3 uses
  %.pre154 = load ptr, ptr %.pre153.a, align 8, !tbaa !633
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre153.a, i64 8
  %.pre155.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !632
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit16

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit16: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit16.loopexit, %bb.p
  %i.ei = phi ptr [ %.pre155.a, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit16.loopexit ], [ %i.cq, %bb.p ] ; 2 uses
  %i.ej = phi ptr [ %.pre154, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit16.loopexit ], [ %i.co, %bb.p ] ; 3 uses
  %i.ek = phi ptr [ %.pre153.a, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit16.loopexit ], [ %i.cn, %bb.p ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.not.i22 = icmp eq ptr %i.ei, %i.ej
  br i1 %.not.i22, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE15_M_erase_at_endEPSC_.exit, label %.preheader

.preheader:                                       ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit16, %.preheader
  %.0.i137 = phi ptr [ %i.eo, %.preheader ], [ %i.ej, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit16 ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i137, i64 8
  %i.en = load i8, ptr %.0.i137, align 8, !tbaa !625
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.em, i8 noundef zeroext %i.en) #41, !inline_history !2535
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i137, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.eo, %i.ei
  br i1 %.not.i39, label %_ZSt8_DestroyIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvT_SF_.exit.i, label %.preheader, !llvm.loop !113

_ZSt8_DestroyIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvT_SF_.exit.i: ; preds = %.preheader
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !632
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE15_M_erase_at_endEPSC_.exit

bb.t:                                             ; preds = %bb.o
  %i.ep = load ptr, ptr %i.cb, align 8, !tbaa !166 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !545 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %.not89119 = icmp eq ptr %i.er, %i.es
  br i1 %.not89119, label %._crit_edge, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %bb.t
  %.pre = load ptr, ptr %i.bx, align 8, !tbaa !632
  %.pre152 = load ptr, ptr %i.cc, align 8, !tbaa !635
  br label %.lr.ph121

._crit_edge.loopexit:                             ; preds = %bb.y
  %.pre151.a = load ptr, ptr %i.cb, align 8, !tbaa !166
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.t
  %i.et = phi ptr [ %.pre151.a, %._crit_edge.loopexit ], [ %i.ep, %bb.t ] ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !534
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %i.et, ptr noundef %i.ev)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE5clearEv.exit unwind label %bb.u, !inline_history !2536

bb.u:                                             ; preds = %._crit_edge
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #40, !inline_history !2536
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE5clearEv.exit: ; preds = %._crit_edge
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  store ptr null, ptr %i.eu, align 8, !tbaa !534
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !545
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !546
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store i64 0, ptr %i.fb, align 8, !tbaa !547
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE15_M_erase_at_endEPSC_.exit

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %bb.y
  %i.fc = phi ptr [ %7, %bb.y ], [ %.pre152, %.lr.ph121.preheader ] ; 4 uses
  %.sroa.070.0120.a = phi ptr [ %i.gk, %bb.y ], [ %.pre, %.lr.ph121.preheader ] ; 3 uses
  %.sroa.070.0120 = phi ptr [ %i.gl, %bb.y ], [ %i.er, %.lr.ph121.preheader ] ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.070.0120, i64 64 ; 4 uses
  %.not.i23 = icmp eq ptr %.sroa.070.0120.a, %i.fc
  br i1 %.not.i23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph121
  %i.fd = load i8, ptr %6, align 1, !tbaa !660
  store i8 %i.fd, ptr %.sroa.070.0120.a, align 8, !tbaa !625
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.070.0120.a, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.070.0120, i64 72 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !166
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !166
  store i8 0, ptr %6, align 8, !tbaa !625
  store ptr null, ptr %i.ff, align 8, !tbaa !166
  %i.fh = load ptr, ptr %i.bx, align 8, !tbaa !632
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  store ptr %i.fi, ptr %i.bx, align 8, !tbaa !632
  %.pre151 = load ptr, ptr %i.cc, align 8, !tbaa !635
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph121
  %i.fj = load ptr, ptr %2, align 8, !tbaa !633   ; 5 uses
  %i.fk = ptrtoint ptr %i.fc to i64
  %i.fl = ptrtoint ptr %i.fj to i64               ; 2 uses
  %i.fm = sub i64 %i.fk, %i.fl                    ; 3 uses
  %i.fn = icmp eq i64 %i.fm, 9223372036854775792
  br i1 %i.fn, label %.invoke277, label %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.w
  %i.fo = ashr exact i64 %i.fm, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fo, i64 1)
  %i.fp = add nsw i64 %.sroa.speculated.i.i, %i.fo ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.fo
  %i.fr = call i64 @llvm.umin.i64(i64 %i.fp, i64 576460752303423487)
  %i.fs = select i1 %i.fq, i64 576460752303423487, i64 %i.fr ; 3 uses
  %.not.i.i40 = icmp ne i64 %i.fs, 0
  call void @llvm.assume(i1 %.not.i.i40)
  %i.ft = shl nuw nsw i64 %i.fs, 4
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #43
          to label %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i unwind label %.loopexit.split-lp.loopexit, !inline_history !2537 ; 5 uses

_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i: ; preds = %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fm ; 2 uses
  %i.fw = load i8, ptr %6, align 1, !tbaa !660
  store i8 %i.fw, ptr %i.fv, align 8, !tbaa !625
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.070.0120, i64 72 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !166
  store i64 %i.fz, ptr %i.fx, align 8, !tbaa !166
  store i8 0, ptr %6, align 8, !tbaa !625
  store ptr null, ptr %i.fy, align 8, !tbaa !166
  %.not.i.i.i41109 = icmp eq ptr %i.fj, %i.fc
  br i1 %.not.i.i.i41109, label %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i.preheader, label %.lr.ph112

_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i.preheader: ; preds = %.lr.ph112, %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i
  %.0.i.i.i.lcssa = phi ptr [ %i.fu, %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i ], [ %i.gf, %.lr.ph112 ]
  %.0.i.i18.i113 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.lcssa, i64 16 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.fj, null
  br i1 %.not.i16.i, label %.noexc24, label %bb.x

.lr.ph112:                                        ; preds = %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i, %.lr.ph112
  %.0.i.i.i111 = phi ptr [ %i.gf, %.lr.ph112 ], [ %i.fu, %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.09.i.i.i110 = phi ptr [ %i.ge, %.lr.ph112 ], [ %i.fj, %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  call void @llvm.experimental.noalias.scope.decl(metadata !2552)
  %i.ga = load i8, ptr %.09.i.i.i110, align 1, !tbaa !660, !alias.scope !2552, !noalias !2551
  store i8 %i.ga, ptr %.0.i.i.i111, align 8, !tbaa !625, !alias.scope !2551, !noalias !2552
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.i.i111, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.09.i.i.i110, i64 8 ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !166, !alias.scope !2552, !noalias !2551
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !166, !alias.scope !2551, !noalias !2552
  store i8 0, ptr %.09.i.i.i110, align 8, !tbaa !625, !alias.scope !2552, !noalias !2551
  store ptr null, ptr %i.gc, align 8, !tbaa !166, !alias.scope !2552, !noalias !2551
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, i8 noundef zeroext 0) #41, !noalias !2551, !inline_history !2541
  %i.ge = getelementptr inbounds nuw i8, ptr %.09.i.i.i110, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i.i.i111, i64 16 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.ge, %i.fc
  br i1 %.not.i.i.i41, label %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i.preheader, label %.lr.ph112, !llvm.loop !131

bb.x:                                             ; preds = %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i.preheader
  %i.gg = load ptr, ptr %i.cc, align 8, !tbaa !635
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.gh, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.gi) #44, !inline_history !2537
  br label %.noexc24

.noexc24:                                         ; preds = %bb.x, %_ZSt12__relocate_aIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.i.preheader
  store ptr %i.fu, ptr %2, align 8, !tbaa !633
  store ptr %.0.i.i18.i113, ptr %i.bx, align 8, !tbaa !632
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %i.fs ; 2 uses
  store ptr %i.gj, ptr %i.cc, align 8, !tbaa !635
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %.noexc24
  %7 = phi ptr [ %.pre151, %bb.v ], [ %i.gj, %.noexc24 ]
  %i.gk = phi ptr [ %i.fi, %bb.v ], [ %.0.i.i18.i113, %.noexc24 ]
  %i.gl = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.070.0120) #45 ; 2 uses
  %.not89 = icmp eq ptr %i.gl, %i.es
  br i1 %.not89, label %._crit_edge.loopexit, label %.lr.ph121

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE15_M_erase_at_endEPSC_.exit: ; preds = %bb.o, %_ZSt8_DestroyIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvT_SF_.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit16, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE5clearEv.exit
  %i.gm = load i8, ptr %3, align 8, !tbaa !625
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i8 noundef zeroext %i.gm) #41, !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.gn = load ptr, ptr %2, align 8, !tbaa !634
  %i.go = load ptr, ptr %i.bx, align 8, !tbaa !634 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %._crit_edge139, label %bb.o, !llvm.loop !2542

._crit_edge139:                                   ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE15_M_erase_at_endEPSC_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESt20back_insert_iteratorISI_EET0_T_SN_SM_.exit
  switch i8 %1, label %bb.aj [
    i8 1, label %bb.z
    i8 2, label %bb.ac
    i8 3, label %bb.af
    i8 8, label %bb.ag
  ]

bb.z:                                             ; preds = %._crit_edge139
  %i.gq = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !534
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %i.gq, ptr noundef %i.gs)
          to label %bb.ab unwind label %bb.aa, !inline_history !2543

bb.aa:                                            ; preds = %bb.z
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #40, !inline_history !2543
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.gv = load ptr, ptr %0, align 8, !tbaa !166
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef 48) #44
  br label %bb.aj

bb.ac:                                            ; preds = %._crit_edge139
  %i.gw = load ptr, ptr %0, align 8, !tbaa !166   ; 4 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !633 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !632 ; 2 uses
  %.not.i.i26141 = icmp eq ptr %i.gx, %i.gz
  br i1 %.not.i.i26141, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit, label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.ac, %.lr.ph144
  %.0.i.i142 = phi ptr [ %i.hc, %.lr.ph144 ], [ %i.gx, %bb.ac ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.i.i142, i64 8
  %i.hb = load i8, ptr %.0.i.i142, align 8, !tbaa !625
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, i8 noundef zeroext %i.hb) #41, !inline_history !2544
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i.i142, i64 16 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.hc, %i.gz
  br i1 %.not.i.i26, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit.loopexit, label %.lr.ph144, !llvm.loop !113

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit.loopexit: ; preds = %.lr.ph144
  %.pre158 = load ptr, ptr %i.gw, align 8, !tbaa !633
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit.loopexit, %bb.ac
  %i.hd = phi ptr [ %.pre158, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit.loopexit ], [ %i.gx, %bb.ac ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !635
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.hd to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hi) #44
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit
  %i.hj = load ptr, ptr %0, align 8, !tbaa !166
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef 24) #44
  br label %bb.aj

bb.af:                                            ; preds = %._crit_edge139
  %i.hk = load ptr, ptr %0, align 8, !tbaa !166   ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !163 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !166
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #44
  %.pre157 = load ptr, ptr %0, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.hq = phi ptr [ %.pre157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.hk, %bb.af ]
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef 32) #44
  br label %bb.aj

bb.ag:                                            ; preds = %._crit_edge139
  %i.hr = load ptr, ptr %0, align 8, !tbaa !166   ; 3 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !637 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !638
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.hs to i64
  %i.hx = sub i64 %i.hv, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.hx) #44
  %.pre156.a = load ptr, ptr %0, align 8, !tbaa !166
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hy = phi ptr [ %.pre156.a, %bb.ah ], [ %i.hr, %bb.ag ]
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef 32) #44
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge139, %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.ae, %bb.ab
  %i.hz = load ptr, ptr %2, align 8, !tbaa !633   ; 3 uses
  %i.ia = load ptr, ptr %i.bx, align 8, !tbaa !632 ; 2 uses
  %.not.i.i30145 = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i.i30145, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit18, label %.lr.ph148

.lr.ph148:                                        ; preds = %bb.aj, %.lr.ph148
  %.0.i.i29146 = phi ptr [ %i.id, %.lr.ph148 ], [ %i.hz, %bb.aj ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i.i29146, i64 8
  %i.ic = load i8, ptr %.0.i.i29146, align 8, !tbaa !625
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, i8 noundef zeroext %i.ic) #41, !inline_history !2544
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i.i29146, i64 16 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.id, %i.ia
  br i1 %.not.i.i30, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit18.loopexit, label %.lr.ph148, !llvm.loop !113

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit18.loopexit: ; preds = %.lr.ph148
  %.pre159 = load ptr, ptr %2, align 8, !tbaa !633
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit18

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit18: ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit18.loopexit, %bb.aj
  %i.ie = phi ptr [ %.pre159, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit18.loopexit ], [ %i.hz, %bb.aj ] ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i27, label %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit28, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit18
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !635
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.ie to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ij) #44
  br label %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit28

_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit28: ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit18, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit.i50
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit90 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.g
  %lpad.loopexit93 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.m
  %lpad.loopexit96 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke277, %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i199, %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i196
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit90, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit93, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit96, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp97, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ik = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ik) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.07 = phi ptr [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !629
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
end_hunk_0
